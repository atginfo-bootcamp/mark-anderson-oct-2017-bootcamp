public with sharing class Day5Maps {
	
	public static void example(String name){

		// For review, this is the syntax of the list
		List<String> namesList = new List<String>(); 

		namesList.add('Betty');
		namesList.add('John');
		namesList.add('Max');
		namesList.add('Susie');

		// keep track if name is found
		Boolean foundName = false; 
		
		for(String currentName: namesList){
			if(currentName == name){
				System.debug('Found name in list: ' + name);
				foundName = true; 
				break; // exits out of the four loop
			}
		}
		// if foundName is false
		if (!foundName){
			System.debug('Found not found in list: ' + name);

		}


		Map<String, String> namesMap = new Map<String, String>();

		namesMap.put('Betty', 'Betty Boop'); 
		namesMap.put('John', 'John Johnson');
		namesMap.put('Max', 'Max Maxon');
		namesMap.put('Susie', 'Susie Susanson');
	
		if(namesMap.containsKey(name)) {
				System.debug('Found name in map: ' + name);
			}else {
				System.debug('Name not found in map: ' + name);
			}
	
	}

	public static void associateContactsToAccounts(){


		List<Account> accountList = [SELECT Id, Name FROM Account];
		Map<Id, Account> accountMap = new Map<Id, Account>(accountList);

		List<Contact> contacts = [
			SELECT Id, FirstName, LastName, Name, AccountId
			FROM Contact
		];

		// loop thru contacts
		// Prting out the name of the contact and the acount name

		for(Contact contact : contacts) {
			if(accountMap.containskey (contact.AccountId)){
				System.debug(' belong to Account ' + accountMap.get(contact.AccountId).Name);
			}
		}
	}

}	