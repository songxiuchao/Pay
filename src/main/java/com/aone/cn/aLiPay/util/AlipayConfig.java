package com.aone.cn.aLiPay.util;

public class AlipayConfig {
		// 应用ID,您的APPID，收款账号既是您的APPID对应支付宝账号
		public static String app_id = "2016092000553640";

		// 商户私钥，您的PKCS8格式RSA2私钥
		public static String merchant_private_key = "MIIEvQIBADANBgkqhkiG9w0BAQEFAASCBKcwggSjAgEAAoIBAQCIcvxd6C8RvRKkltpNNRi+Yqeyl5sgw9Slo2B3EVTaxGSlJqSGY/quU2q5aESnWcId//DYAJ6XdhR+FN9Ztm3QKhtCd6wHzp/MrGndljEs7z5KuCMK9ArBXd5fuPan/uryhnMz8/5EaTjXLK5IGZJZNVqqzQ2aYd40OpSEdgmj6tH/b9piVZQKVB2FvwS9OROpPrnTaXsF23OpTp18m8zM7NYXzNNRrXmw9nzRpVT6MHlId7tPhj8WSDWOez5C4KjuzHw71TC59fFrYw8VxjQbuG6ndwhVrHDRcLh81pS8S5n5ofz81xk9VepnBmKeWoz2gW82dkrHIDmZ+ZCEtgi/AgMBAAECggEAC84W83DxEZHQGRlMDb34RBB4/cSMEUugDCyUXfjL5Jl1M6yiM1ZXC9n/s8bHmcr0NnA8QBPdpLD8mOPpZvOXkJjz/s4nvg0sWiLYjek+m+qe8wv3TC1M+OnMIW/5NxOg9BaZxPbpGrYXytX8xhQgS0OIcpqHAMJS3SXsT4F+2AWKhyGkB0wr2RcYARjrqj/lAwwTBlEshntzrDhlN6LKPjCa3vbSgCD6stvYmBPAxL+qmjuW4rq0JZsxz8knlt+NvFXBgwEcVgkZeu3ujHG7AMZJXsn4+T9uQf0YBW9F6XDxzlt6/tbxQlGOPAaueovT/Wjp+avrTOqhqMVvh7pp4QKBgQDAXP4ekkGeWsKEwH/8Xu/gW/yua/v7f40lfZEgRI+ohEzeQyIMchkMxBoc5tMfRCFUjrxb3jDGzqcgAJdpJkcQGzQnHeNDLe3JJl8PBSgqHAAvBcBA/SD8ud5jajIqIBfXFbYmf/Nh6Ha7uJQjVhKr30HeZA4DVhmk4aH4f56feQKBgQC1lrKbWlFm9IPpfWqF1QzSuo/hN2EWytgvqhEKt6QIEN8hTDzn+G+LuYvC+sndMdcv1kIMtrPiRx3+wSL68jKgsAo1HdOd8OwYjl2Z6zh6CcZrScqnxrE4nFd01aGliy/pkfYSKV1vk5fpK2E/f3CrqvAhL1Sj3ux1Up1453nD9wKBgQCGpJB6dYTYgk6E/PiYfRsJv1kt/QdzEeSJyUo7e8HSAkiLihHbBEHkXZ6pfCdqSxXJSd8trmgVv6/bBo70WoaDD4eBmbno280Eboc6zDFAyDiYsT3QP11HiBHRJBPYyH3nXpsQd56zeTMiUh/eW/DVvH8uWno0e5+XeRcWCL3OgQKBgGXOim5s8ax+NCLJDNrhuqG+tQH4sXc83H3EpG9UzCM1ilO50X/gmnFE4qW7Q0e/NLz+K+PC3xFi+98jW0BEX7wVVnO3ODiZpVSTJMkxxmUta9Ak+/iafiuWA7ZeO5V7dq5GBibiiB8RKZ8xkgEuqvWkDaMdTR/e0MVqPx1U8cC7AoGAMKZw7I7aGL1sMlT4AzKDiocFcn+xYoyFKuxaRYfiBk+LRMR5GpjEH1F4DkaXuvrKKVMw3/QLvMXAYZldQFtqK9qvkbA5NLqONZ1ntsUTZ2ZnNmXlD0Unxf5+Pbpb6Gbv6oQPGKVXxBWIgdf5Qg7Lo4Og6sF+9Se5PSfJZtEritk=";

		// 支付宝公钥,查看地址：https://openhome.alipay.com/platform/keyManage.htm 对应APPID下的支付宝公钥。
		public static String alipay_public_key = "MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAyWQ0H2dHdTweAp6uQVkowWD8YBzWKcFvVuEe5a57Rw8xSpOBirQ50AOSbbZMLEntXUEh8T6vOGIB78PhqOusY+4wP4J06EqRERfu5+ZZU4VX8SsutuMi6uRaEJl5FpntHa3/DcGKt2FNF5Qb4yZHJMiW6jEPvzQrKVhbsyVD9QxX0KlseD+RibTT9/XbUosPLMUONtxQqdA7NmfmNABrnYGZWtVx+/EoVlsw0s21mQ1xPYSK2sH/KBOeXEREukoibUx6WFeSswkye3EWMS/9kl8MSlHsp6VpDS0eJkCBup1n2PeyEJsRjDY3bIj/8xv8wOfZCbxChSCu3GYeGzD/fwIDAQAB";

		// 服务器异步通知页面路径  需http://格式的完整路径，不能加?id=123这类自定义参数，必须外网可以正常访问
		public static String notify_url = "http://localhost:8080/alipay/alipayNotifyNotice.action";

		// 页面跳转同步通知页面路径 需http://格式的完整路径，不能加?id=123这类自定义参数，必须外网可以正常访问
		public static String return_url = "http://localhost:8080/alipay/alipayReturnNotice.action";

		// 签名方式
		public static String sign_type = "RSA2";

		// 字符编码格式
		public static String charset = "utf-8";

		// 支付宝网关
		public static String gatewayUrl = "https://openapi.alipaydev.com/gateway.do";

		// 支付宝网关
		public static String log_path = "C:\\";
}
