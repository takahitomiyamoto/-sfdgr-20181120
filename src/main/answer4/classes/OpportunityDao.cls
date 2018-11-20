public with sharing class OpportunityDao {
    public void updateExpiredOpportunities() {
        List<Opportunity> expiredOpportunities = new List<Opportunity>();

        for (Opportunity opp : [
            SELECT Id, NextStep
            FROM Opportunity
            WHERE CloseDate < TODAY
            ORDER BY CreatedDate DESC
            LIMIT 200
        ]) {
            opp.NextStep = 'マネージャ確認';
            expiredOpportunities.add(opp);
        }

        if (0 == expiredOpportunities.size()) {
            return;
        }

        Database.SaveResult[] results = Database.update(expiredOpportunities, false);
        for (Database.SaveResult result : results) {
            if (!result.isSuccess()) {
                Database.Error[] errors = result.getErrors();
                for (Database.Error error : errors) {
                    System.debug(System.LoggingLevel.ERROR, error);
                }
            }
        }
    }
}
