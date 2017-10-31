// to invoke from dev console: Day3ListsAndLoops.execute();
public with sharing class Day3ListsAndLoops {

	public static void execute() {

		// Create string varaible called myName
		String myName = 'Mark';
		// Create new emply list called names
		// This is the preferred way to initialize
		List<String> names = new List<String>();

		// Create new emply list with default values
		List<String> students = new List<String>{'Student1', 'Student2'};


		// alternate syntax for creating a new array (list) with 20 empty items
		String[] employees = new String [20];

		names.add('Mark1');
		names.add('Mark2');
		names.add('Mark3');
		names.add('Mark4');

		System.debug('names: ' + names);

		names.remove(3); // remove item at index 3, which is Austin4

		System.debug('names after last element removed: ' + names);


		//dynamically remove last element in array
		names.remove(names.size() -1);

		System.debug(': ' + names);


		Set<String> uniqueNames = new Set<String>();

		uniqueNames.add('Marcus');
		uniqueNames.add('Marcus');
		uniqueNames.add('Marcus');
		uniqueNames.add('Marcus');
		uniqueNames.add('Marcus');
		uniqueNames.add('Marcus');

		//store the number of items in our set
		Integer setSize = uniqueNames.size();

		System.debug('uniqueNames: ' + uniqueNames);
		System.debug('setSize: ' + setSize);
	}


	public static void executeLoops() {

		// for loop takes three parameters
		// indexVariable
		// condition
		// counterVariable

		for(Integer i = 0; i <10; i ++) {
			System.debug('i: ' + i);
		}

		List<String> names = new List<String>();

		names.add('mark1');
		names.add('mark2');
		names.add('mark3');
		names.add('mark4');

		for(Integer i = 0; i < names.size(); i++) {
			System.debug(names[i]);
		}

		// Advanced for loop - loop every item in list
		for(String name : names) {
			System.debug(name);

		}

	}

	public static void createNewAccount() {

		Account myAccount = new Account ();
		myAccount.Name = 'atg';
		myAccount.Type = 'Other';
		System.debug('myAccount before insert" ' + myAccount); 

		insert myAccount; 

		System.debug('myAccount after insert" ' + myAccount); 
	}


public static void updateAllAccount() {
	List<Account> queriedAccounts = [
		SELECT Id, Name, Type 
		FROM Account 
		WHERE Name = 'atg' 
		LIMIT 50
	];
	System.debug(queriedAccounts);

	if(queriedAccounts.size() > 0){
		Account myAccount = queriedAccounts[0];
		myAccount.Name = 'Changed Account Name';
		update myAccount;
	}

}

	public static void updateAccountTypeOnEveryAccount() {

		List<Account> queriedAccounts = [
			SELECT Id, Name, Type 
			FROM Account 
		];
	// Query all accounts
	// Printer out all accounts to console
	// Loop thru all accounts
	// Update Type = 'Other'
	// Print out the account to the console
	// Update Accounts (DML)

		
	}
}

