package com.aone.cn.aLiPay.util;


import java.security.SecureRandom;
import java.text.SimpleDateFormat;
import java.util.Date;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;


public class Sid {
	 protected static long epoch = 1288834974657L;
	 protected static long lastMillis = -1L;
	 protected static long sequence = 0L;
	 protected static long workerIdBits = 10L;
	 protected long maxWorkerId = -1L ^ (-1L << workerIdBits);
	 protected static long sidId;
	 protected static long sequenceBits = 11L;
	 protected static long workerIdShift = sequenceBits;
	 protected static long sequenceMask = -1L ^ (-1L << sequenceBits);
	 protected static Logger logger = LoggerFactory.getLogger(Sid.class);
	 protected static long timestampLeftShift = sequenceBits + workerIdBits;
    /**
     * 返回固定16位的字母数字混编的字符串。
     */
    public static String nextShort() {
        long id =nextId();
        String yyMMdd = new SimpleDateFormat("yyMMdd").format(new Date());
        return yyMMdd + padLeft(encode(id), 10, '0');
    }
    public static String encode(long num) {
        return encode(num, defaultRange);
    }
    public static String encode(long num, String symbols) {
        final int B = symbols.length();
        StringBuilder sb = new StringBuilder();
        while (num != 0) {
            sb.append(symbols.charAt((int) (num % B)));
            num /= B;
        }
        return sb.reverse().toString();
    }
    static String defaultRange = "0123456789ABCDFGHKMNPRSTWXYZ";
    public static String padLeft(String str, int size, char padChar) {
        if (str.length() >= size) return str;

        StringBuilder s = new StringBuilder();
        for (int i = size - str.length(); i > 0; --i) {
            s.append(padChar);
        }
        s.append(str);

        return s.toString();
    }
    public synchronized static long nextId() {
        long timestamp = millisGen();

        if (timestamp < lastMillis) {
            logger.error("clock is moving backwards.  Rejecting requests until {}.", lastMillis);
        }
        if (lastMillis == timestamp) {
            sequence = (sequence + 1) & sequenceMask;
            if (sequence == 0)
                timestamp = tilNextMillis(lastMillis);
        } else {
            sequence = 0;
        }

        lastMillis = timestamp;
        long diff = timestamp - getEpoch();
        return (diff << timestampLeftShift) |
                (sidId << workerIdShift) |
                sequence;
    }
    protected static long millisGen() {
        return System.currentTimeMillis();
    }
    protected static long tilNextMillis(long lastMillis) {
        long millis = millisGen();
        while (millis <= lastMillis)
            millis = millisGen();

        return millis;
    }
    public static long getEpoch() {
        return epoch;
    }
    @SuppressWarnings("static-access")
	public Sid(long sidId) {
        this.sidId = checkWorkerId(sidId);
    }
    private long checkWorkerId(long workerId) {
        if (workerId > maxWorkerId || workerId < 0) {
            int rand = new SecureRandom().nextInt((int) maxWorkerId + 1);
            logger.warn("worker Id can't be greater than {} or less than 0, use a random {}", maxWorkerId, rand);
            return rand;
        }
        return workerId;
    }
}
