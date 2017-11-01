public with sharing class Day4CreateAccountsWtihContacts {
	
	public static void createAccountsAndContacts(Integer numAccounts){


		// create accounts with contacts associated to them
		// create accounts first, then contacts
		// Loop numAccounts number of times to create numAccounts number of accounts
		// account name must be "myAccount-"#
		// insert accounts in bulk (initially do not insert in bulk to experience limits)
		// create two contacts for each account
		// insert contacts
		// query accounts and subquery contacts
		// Loop thru accounts and contacts 
		// print out all contacts for each account and the account name

		List<Account> createdAccounts = new List<Account>();
		List<Contact> createdContacts = new List<Contact>();

		for(Integer i = 0; i < numAccounts; i++) {
			System.debug('Creating account '+i);
			Account createdAccount = createAccount(i);
			createdAccounts.add(createdAccount);
			// createdAccounts.add(createAccount(i)); THIS IS IDENTICA AS LINE ABOVE	

		}
		insert createdAccounts;

		for(Account currAccount : createdAccounts) {
		createdContacts.add(createContact(currAccount.Id, 1));
		createdContacts.add(createContact(currAccount.Id, 2));
		}


		insert createdContacts;

	}

	public static Account createAccount(Integer accountNameSuffix){
		String accountName = 'myAccount-' + accountNameSuffix;

		Account myAccount = new Account (Name = accountName);
		System.debug('myAccount: ' +myAccount);

		return myAccount;
	}

	public static Contact createContact(Id accountId, Integer contactNumber) {
		Contact newContact = new Contact(
			FirstName = 'Contact FirstName: ' + contactNumber, 
			LastName = 'Contact Last Name: ' + contactNumber,
			AccountId = accountId
			);
		
		return newContact;
	}

public static void queryAndPrintAccountsAndContacts() {

	List<Account> queriedAccounts = [
		SELECT Id, Name, 
			(SELECT Id, FirstName, LastName, Name FROM Contacts)
		FROM Account
		WHERE Name LIKE 'myAccount%'
	];

	for(Account currAccount : queriedAccounts) {
		System.debug('currAccount: ' + currAccount.Name);
		for(Contact currContact : currAccount.Contacts) {

		}

	}
}



}