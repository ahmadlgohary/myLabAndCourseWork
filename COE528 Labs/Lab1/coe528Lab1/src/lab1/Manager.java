/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 *
 *
 * @author Ahmad El-Gohary
 */
package lab1;
import java.util.ArrayList;
import java.util.Scanner;



public class Manager {
    ArrayList<Flight> flights = new ArrayList<Flight>();
    ArrayList<Ticket> tickets = new ArrayList<Ticket>();
    private static final Scanner user = new Scanner(System.in);
    
public void createFlights(){
    String origin, destination, departureTime, input;
    int flightNumber, capacity;
    double originalPrice;
        int j=1;
        while(j==1){
    
         System.out.println("Input: Flight Origin ");
            origin = user.nextLine().trim();
         System.out.println("Input: The Flight's Destination ");
            destination = user.nextLine().trim();
         System.out.println("Input: Flight's Departure Date and Time ");
            departureTime = user.nextLine().trim();
         System.out.println("Input: Flight Price ");
            originalPrice = Double.parseDouble(user.nextLine().trim());
         System.out.println("Input: Flight Number ID ");
            flightNumber = Integer.parseInt(user.nextLine().trim());
         System.out.println("Input: Flight Capacity ");
            capacity = Integer.parseInt(user.nextLine().trim());
         Flight F = new Flight(capacity,flightNumber,originalPrice, origin, destination, departureTime);
         flights.add(F);
         System.out.println("Type 'Stop' to stop adding flights. Else press enter");
         input = user.nextLine().trim();
         if(input.toLowerCase().equals("stop")){
             j--;
         }

    }
}
        
        
        
        
        
public void displayAvailableFlights(String origin, String destination){
    for(int i=0; i<flights.size(); i++){
        if(origin.equalsIgnoreCase(flights.get(i).getOrigin()) && destination.equalsIgnoreCase(flights.get(i).getDestination())){
                  /*System.out.println("Flight " + flights.get(i).getFlightNumber() 
                          + ", "+ origin + " to " + destination + ", " + 
                          flights.get(i).getDepartureTime() + 
                          ", original price: " + flights.get(i).getOriginalPrice());*/
                System.out.println(flights.get(i).toString());
                }
            }
        }
        
        
        
public Flight getFlight(int flightNumber){
    for(Flight f : flights){
        if(f.getFlightNumber()==flightNumber){
            System.out.println(f);
                return f;
                }
            }             
        return null;
    }
        
        
        
public void bookSeat(int flightNumber, Passenger p){
    if(getFlight(flightNumber).equals(null) || !getFlight(flightNumber).bookASeat()){
        throw new IllegalArgumentException("Flight doesnt exist");
        }
        double x = p.applyDiscount(getFlight(flightNumber).getOriginalPrice());
        Ticket T = new Ticket(p, getFlight(flightNumber), x);   
        tickets.add(T);
        System.out.println(T);
        }
        
        
        
        
public static void main(String[] args){

        Manager M = new Manager();
        
        Member ahmad = new Member("ahmad", 20);
        ahmad.setYearsOfMembership(1);
        
        Member mostafa = new Member("mostafa", 25);
        mostafa.setYearsOfMembership(3);
        
        Member gohary = new Member("gohary", 30);
        gohary.setYearsOfMembership(7);
        
        NonMember malak = new NonMember("malak", 27);
        
        NonMember gedo = new NonMember("gedo", 80);
        
        String input2, input3, input4, passengerName;
        int input5, input6;

        int i=1;
        while(i==1){
            
        System.out.println("Type:");
        System.out.println("    'Create' to Add Flights");
        System.out.println("    'Flights' to See Avalible Flights");
        System.out.println("    'Search' to Lookup flights by Number");
        System.out.println("    'Book' to Book a Seat for a member");
        System.out.println("    'End' to close the program");
            
            input2 = user.nextLine().trim();
            
            if(input2.toLowerCase().equals("end")){
                System.out.println("Program shutting down");
                i--;
            }
            
            switch(input2.toLowerCase()){
                
                case "create":
                    M.createFlights();
                    break;
                
                case "flights":
                    System.out.println("Enter Flight Origin");
                    input3 = user.nextLine().trim();
                    System.out.println("Enter Flight Destination");                    
                    input4 = user.nextLine().trim();
                    M.displayAvailableFlights(input3, input4);
                    break;
                
                case "search":
                    System.out.println("Enter Flight Number");
                    input5 = Integer.parseInt(user.nextLine().trim());
                    M.getFlight(input5);
                    break;
                    
                case "book":
                    System.out.println("Enter Flight Number");
                    input6 = Integer.parseInt(user.nextLine().trim());
                    
                    System.out.println("Enter Passenger Name");
                    passengerName = user.nextLine().trim();
                    
                        switch(passengerName.toLowerCase()){
                            case "ahmad":
                                M.bookSeat(input6, ahmad);
                                break;
                            case "mostafa":
                                M.bookSeat(input6, mostafa);
                                break;
                            case "gohary":
                                M.bookSeat(input6, gohary);
                                break;
                            case "malak":
                                M.bookSeat(input6, malak);
                                break;
                            case "gedo":
                                M.bookSeat(input6, gedo);                                
                                break;
                            default:
                                System.out.println("Passenger does not exist");
                        }
                    break;
            }
        }    
    }
}
