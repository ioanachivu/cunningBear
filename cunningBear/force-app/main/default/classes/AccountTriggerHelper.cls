public class AccountTriggerHelper {
	
	
    //Assigns the Parent Account to the current account based on the selected Code Group in the lookup on Account insert
    // newAccounts - All the accounts that entered the trigger through insert
    
	public static void addParentAccountByCodeGroupOnInsert(List<Account> newAccounts) {

		Map<Id, Id> accountAndCodeGroupsIds = new Map<Id, Id>();
		
		for (Account acc : newAccounts) {
			if(acc.Code_Group__c != null) {
				accountAndCodeGroupsIds.put(acc.Id, acc.Code_Group__c);
			}
		}
		assignParentAccount(newAccounts, accountAndCodeGroupsIds);
	}
	
    // Assigns the Parent Account to the current account based on the selected Code Group in the lookup on Account update
    // @param newAccounts - All the accounts that entered the trigger through update and have changes 
    // @param oldAccounts - All the accounts that entered the trigger through update with their old values
    
	public static void addParentAccountByCodeGroupOnUpdate(List<Account> newAccounts, Map<Id, Account> oldAccounts) {
		Map<Id, Id> accountAndCodeGroupsIds = new Map<Id, Id>();
		Set<Id> codeGroupsIds = new Set<Id>();

		for(Account newAccount : newAccounts) {
			Account oldAccount = oldAccounts.get(newAccount.Id);
			if(newAccount.Code_Group__c != oldAccount.Code_Group__c && newAccount.Code_Group__c != null) {
				accountAndCodeGroupsIds.put(newAccount.Id, newAccount.Code_Group__c);
			}
		}
		assignParentAccount(newAccounts, accountAndCodeGroupsIds);
	}

    // Searches for the Accounts that have a matching name with the Code Groups assigned to them
    // @param newAccounts - All the accounts that entered the trigger through insert or update 
    // @param accountAndCodeGroupsIds - Map containing pairs of Account Id and Code Group Id 

	public static void assignParentAccount(List<Account> newAccounts, Map<Id, Id> accountAndCodeGroupsIds) {

		Set<Id> codeGroupsIds = new Set<Id>();
		Map<Id, String> codeGroupsByIdsMap = new Map<Id, String>();
		Map<String, Id> matchedAccountsByNameMap = new Map<String, Id>();

		for(Id codeGroupId : accountAndCodeGroupsIds.values()) {
			codeGroupsIds.add(codeGroupId);
		}
		if(codeGroupsIds.size() != 0) {
			for(Code_Group__c cg : [SELECT Id, Name FROM Code_Group__c WHERE Id IN : codeGroupsIds]) {
				codeGroupsByIdsMap.put(cg.Id, cg.Name);
			}
			for(Account matchedAccount : [SELECT Id, Name FROM Account WHERE Name IN : codeGroupsByIdsMap.values()]) {
				matchedAccountsByNameMap.put(matchedAccount.Name, matchedAccount.Id);
			}
			for(Account acc : newAccounts) {
				if(codeGroupsByIdsMap.get(acc.Code_Group__c) != null) {
					if(matchedAccountsByNameMap.get(codeGroupsByIdsMap.get(acc.Code_Group__c)) != null) {
						acc.ParentId = matchedAccountsByNameMap.get(codeGroupsByIdsMap.get(acc.Code_Group__c));
					}
				}
			}
		}
	}
}