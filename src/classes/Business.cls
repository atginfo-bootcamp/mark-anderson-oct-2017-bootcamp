public with sharing class Business {
	
	private static String businessName = 'atg'; 
	private String locationName; 
	private String address; 
	private String phoneNumber; 
	private List<Employee> employees;


	public Business() {
		//require all fields are passed in
		// set all field values - except for employees
		this.employees = new List<Employee>(); 
	}

		public void addEmployee (Employee employee) {
			//call other addemployee () method to keep business logic centralized
			addEmployee(new List<Employee>{employee});

		}

		public void addEmployee (List<Employee> employee) {
			//pretend we have a bunch of other business logic here
			this.employees.addAll(employees);

		}

		public void removeEmployee (List<Employee> employee){

		}

		public List<Employee> getEmployees() {
			return null; 

		}

		public Employee getEmployeeById(Integer employeeId) {
			return null; 
		}

		public void printLocationInfo(){
			//print out all the location information

		}


		///Work on this if finished on all other work
		public static Boolean transferEmployee(Business fromLocation, Business toLocation){
			// HINT: use the getEmployeebyId() to find employee from 
			// remove employee from Location
			// add employee 
			return false; 
		}
}


