import java.util.Scanner;

public aspect CheckAsurrance {

	pointcut verifyAssurance():execution(void makeAppointment(..));
	
	before(): verifyAssurance(){
		Scanner input = new Scanner(System.in);
		System.out.println("Verifying assurance... \nName of your pet:");
		String NamePet = input.nextLine();
		System.out.println("Welcome "+NamePet+"\nYou are able to use this service!" );
	}
	
	after(): verifyAssurance(){
		System.out.println("Request was executed successfully." );		
	}
	

}
