//in Debugger code is  Employee david = new Employee (...);

public with sharing class Employee {
	
	private static Integer nextEmployeeIDNumber = 1;

	private final Integer employeeId;
	private String title; 
	private String firstName; 
	private String lastName; 
	private Date hireDate; 
	private String status; 
	private Datetime statusDate;


	public Employee(String title, String firstName, String lastName) {
		employeeId = nextEmployeeIDNumber;
		nextEmployeeIDNumber ++; 
		this.title = title;
		this.firstName = firstName; 
		this.hireDate = Date.today(); 
		this.status = 'Active';
		this.statusDate = Datetime.now();	
	}

	public Integer getEmployeeID(){
		return employeeId;
	}

	public void printEmployeeInfo(){
		System.debug('Employee Id: ' + employeeId);
		System.debug('Employee Title: ' + title);
		System.debug('Employee Firstname: ' + firstName);
		System.debug('Employee Lastname: ' + lastName);
		System.debug('Hire Date: ' + hireDate);
		System.debug('Status: ' + status);
		System.debug('Status Date: ' + statusDate);
	}
	// COME BACK TO THIS LATER
}