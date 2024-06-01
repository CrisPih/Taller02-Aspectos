import java.util.Scanner;

public aspect CheckAssurance {

	pointcut verifyAssurance():execution(void makeAppointment(..));
	
	before() : verifyAssurance(){
		Scanner sc = new Scanner(System.in);
        System.out.println("Verifying assurance...\nName of your pet: ");
        String petName = sc.nextLine();
        System.out.println("Welcome "+petName+"\n You are able to use this service");
        
		
	}
	
	after() : verifyAssurance(){
		System.out.println("Request was executed successfully");
		
	}
	
}	
	