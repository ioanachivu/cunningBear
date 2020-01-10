trigger AccountTrigger on Account (before insert, before update) {

	/* Before insert
	if(Trigger.isInsert && Trigger.isBefore) {
		AccountTriggerHelper.addParentAccountByCodeGroupOnInsert( (List<Account>) Trigger.New);
	}
    // Before Update 
    else if(Trigger.isUpdate && Trigger.isBefore){
    	AccountTriggerHelper.addParentAccountByCodeGroupOnUpdate( (List<Account>) Trigger.New, (Map<Id, Account>) Trigger.oldMap);	
    }

    */
}