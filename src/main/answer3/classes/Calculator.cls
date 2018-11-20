public without sharing class Calculator {
    public static Integer getPriceTaxIncluded(Integer price) {
        // 小数第1位で切り捨てる
        Integer priceTaxIncluded = Integer.valueOf(price * 1.1);
        return priceTaxIncluded;
    }

    public static Decimal getPriceTaxIncluded(Decimal price) {
        // 何もしない
        Decimal priceTaxIncluded = price * 1.1;
        return priceTaxIncluded;
    }
}
