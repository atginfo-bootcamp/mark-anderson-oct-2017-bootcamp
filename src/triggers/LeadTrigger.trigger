trigger LeadTrigger on Lead (before insert, 
							before update, 
							before delete, 
							after insert, 
							after update, 
							after delete, 
							after undelete

) {


	System.debug('Trigger.isInsert: ' + Trigger.isInsert);
	System.debug('Trigger.isUpdate: ' + Trigger.isUpdate);
	System.debug('Trigger.isDelete: ' + Trigger.isDelete);
	System.debug('Trigger.isUndelete: ' + Trigger.isUndelete);


	System.debug('Trigger.isAfter: ' + Trigger.isAfter);
	System.debug('Trigger.isBefore: ' + Trigger.isBefore);
	
	// records in new state being inserted to the DB
	List<Lead> leads = Trigger.new;
	Map<Id, Lead> leadMap = Trigger.newMap;
	
	// records are populated with old values before update
	List<Lead> oldLeads = Trigger.old;
	Map<Id, Lead> oldleadMap = Trigger.oldMap;


	System.debug('Trigger.new: ' + Trigger.new);
	System.debug('Trigger.newMap: ' + Trigger.newMap);
	System.debug('Trigger.old: ' + Trigger.old);
	System.debug('Trigger.oldMap: ' + Trigger.oldMap);




	// common way to choose what code to call and when
	if(Trigger.isBefore && trigger.isInsert) {
		// call your code to do stuff
		// call helper methods

		// Change first lead title to MoFo NO DML NEEDED IN "BEFORE" CONTEXT
		leads[0].Title = 'MoFo';

	} else if (Trigger.isAfter && trigger.isUpdate) {
		// do stuff after update!
		// call helper methods

		leads[0].Title = leads[0].Id;
	}	



}