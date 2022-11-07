/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 *
 *
 * @author Ahmad El-Gohary
 */
package lab1;
public class Member extends Passenger {
    private int yearsOfMembership;

    public Member(String name, int age) {
        super(name, age);
    }
    
    public double applyDiscount(double p){

        if(yearsOfMembership>5){
            p=0.5*p;
        } 
        else if(yearsOfMembership>1){
            p=0.9*p;
        }
        return p;
    }
    
    public int getYearsOfMembership() {
        return yearsOfMembership;
    }

    public void setYearsOfMembership(int yearsOfMembership) {
        this.yearsOfMembership = yearsOfMembership;
    }
}
