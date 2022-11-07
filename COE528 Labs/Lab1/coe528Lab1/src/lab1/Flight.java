/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 *
 *
 * @author Ahmad El-Gohary
 */
package lab1;
public class Flight {
    private int capacity;
    private int numberOfSeatsLeft;
    private int flightNumber;
    private String origin, destination, departureTime;
    private double originalPrice;
    
    public Flight(int capacity, int flightNumber, double originalPrice, String origin, String destination, String departureTime){
    this.capacity = capacity;
    this.flightNumber = flightNumber;
    this.originalPrice = originalPrice;
    this.origin = origin;
    this.destination = destination;
    this.departureTime = departureTime;
    this.numberOfSeatsLeft= capacity;
    
if(origin.equalsIgnoreCase(destination))    {
     throw new IllegalArgumentException("Origin of your flight cannot be the same as the your Destination");
}
}
    
    public boolean bookASeat(){
        if(numberOfSeatsLeft>0){
        numberOfSeatsLeft--;
        return true;
        }
        else{
        return false;
        }
    }
    public String toString(){
          return "Flight " + flightNumber + ", "+ origin + " to " + destination + ", " + departureTime + ", original price: " + originalPrice;
    }
    public int getCapacity() {
        return capacity;
    }

    public void setCapacity(int capacity) {
        this.capacity = capacity;
    }

    public int getFlightNumber() {
        return flightNumber;
    }

    public void setFlightNumber(int flightNumber) {
        this.flightNumber = flightNumber;
    }

    public String getOrigin() {
        return origin;
    }

    public void setOrigin(String origin) {
        this.origin = origin;
    }

    public String getDestination() {
        return destination;
    }

    public void setDestination(String destination) {
        this.destination = destination;
    }

    public String getDepartureTime() {
        return departureTime;
    }

    public void setDepartureTime(String departureTime) {
        this.departureTime = departureTime;
    }

    public double getOriginalPrice() {
        return originalPrice;
    }

    public void setOriginalPrice(double originalPrice) {
        this.originalPrice = originalPrice;
    }
}
