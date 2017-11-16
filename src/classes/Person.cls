
/** 
 * Person Class
 * A class is made up of the following three elements
 * Class level properties
 * constructor method
 * all other methods
 */

public with sharing class Person {
	//Static variables are shared across ALL instances
	private static Boolean isHuman = true; 

	private String name; 
	private String email;
	private String gender; 
	private Double weight;
	private Integer age;
	private final Boolean IS_DEAD;

	public Person(String defaultName) {
		name = defaultName; 
		// alternate syntax
		// this.name - defaultName;
		IS_DEAD = false;
	}

	public Person(String defaultName, String defaultEmail) {
		name = defaultName;
		email = defaultEmail;

	}


	public Person(String defaultName, String defaultEmail, Boolean defaultIsDead) {
		name = defaultName;
		email = defaultEmail;
		IS_DEAD = defaultIsDead;

	}
	public void print () {
		System.debug('Person name: ' + name);
		System.debug('Person email: ' + email);
		System.debug('Person gender: ' + gender);
		System.debug('Person weight ' + weight);
		System.debug('Person age: ' + age);
		System.debug('Person isDead: ' + IS_DEAD);
		System.debug('Person isHuman: ' + isHuman);

	}

	public String getName(){
		return name; 

	}

	public void setName (String name){
		this.name = name; 

	}

	public String getEmail(){
		return email; 

	}

	public void setEmail (String email){
		this.email = email; 

	}

	public Double getWeight(){
		return weight; 

	}

	public void setWeight (Double weight){
		this.weight = weight; 

	}

	public void setIsHuman (Boolean isHumanVal) {
		isHuman = isHumanVal; 
	}

}