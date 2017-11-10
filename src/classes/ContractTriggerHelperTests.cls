@isTest
private class ContractTriggerHelperTests {
	
	private static void stageData(Integer numAccounts, String accountName){

		//Create new accounts based on NumAccounts parameter
		//Setup accouint fields (i.e. use accountName)
		//Need to insert Account to the database
		// Query our Accounts from DB
		//Loop thru Accounts
		//Create some random Contacts for each Account
		//Insert all contacts to the DB at once

		List<Account> accounts = new List<Account>(); 
		for(Integer i = 0;i<numAccounts;i++){
			Account acct = new Account(); 
			acct.Name = accountName + ' ' + i;
			accounts.add(acct);
		}
	
		insert accounts;

		List<Account> accountsFromDB = [
			SELECT Id
			FROM Account
			WHERE Name LIKE :accountName + '%'
		];

		List<Contact> contactList = new List<Contact>();
		for(Account acct : accountsFromDB){

			Integer numberofContacts = (Integer)(Math.random()*4);

			for(Integer i = 0;i<numberofContacts;i++){
				Contact contact = new Contact();

				contact.LastName = 'Test Mark';
				contact.AccountId = acct.Id;
				contactList.add(contact);
			}
		}

		insert contactList;

	}





	@isTest static void insertTriggerTest() {
		// Implement test code
		stageData(10, 'Seth');

		List<Account> accountList = [
			SELECT Name, Current_Number_of_Contacts__c,
				(SELECT LastName, AccountId FROM Contacts)
			FROM Account
		];

		//System.assert(accountList.size() == 10);
		System.assertEquals(accountList.size(), 10, 'You did not insert 10 Accounts');

		for(Account acct : accountList){
			System.debug('For Account ' + acct.Name + 'there are' + acct.Contacts.size() + ' accounts');

		}

	}
	
	@isTest static void updateTriggerTest() {
		// Implement test code

	}
	
}