public class TestClass {
    public Integer intGetNumber(String name) {
        if ('test'.equals(name)) {
            return 10;
        } else {
            return 0;
        }
    }

    public TestClass() {}

    public Account getAccountById(Id targetId) {
        return [SELECT Id, Name, Industry FROM Account WHERE Id = :targetId];
    }
}
