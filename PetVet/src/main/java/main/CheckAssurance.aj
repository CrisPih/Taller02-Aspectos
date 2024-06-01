package main;
import java.util.Scanner;

public aspect CheckAssurance {
	
	pointcut verifyAssurance():execution(void makeAppointment(..));
	
	before():verifyAssurance(){
		Scanner data = new Scanner(System.in);
		System.out.println("Verifying assurence... \nName of your pet: ");
		String petname = data.nextLine();
		System.out.println("Welcome "+petname+"\nYou are able to use this service!");
	}
	
	after():verifyAssurance(){
		System.out.println("Request was executed succesfully");
	}
}
