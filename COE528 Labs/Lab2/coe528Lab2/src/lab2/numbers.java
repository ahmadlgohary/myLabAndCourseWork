/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 *
 *
 * @author Ahmad El-Gohary
 */
package lab2;
import java.util.Scanner;
public class numbers {
    private static final Scanner user = new Scanner(System.in);
    public static int reverseFactorial(int x){
        double n=0;
        int iFact=1;
            if(x<=1){
                n=1;
            }
            else if(n==0){
                n=x;
                for(int i=2; n!=i; i++){
                    n/=i;
                    if(n<2){
                        for(int j=1; j<=i; j++){
                            iFact *= j;
                        }
                        //System.out.println(iFact);
                        if(x>iFact){
                            return i+1;

                        }
                        else{
                            return i;
                        }
                    }                    
                }
            }
        return (int)n;    
    }
    public static void main(String[] args){
        
    System.out.println(numbers.reverseFactorial(121));
        
    System.out.println("Do you want to try your own number? yes/no");
    
    String ans = user.nextLine().trim().toLowerCase();
    
        if(ans.equals("yes")){
            System.out.println("Input your number");
            int x = user.nextInt();
            System.out.println("reverse factorial of "+ x + " is " + numbers.reverseFactorial(x));
        }    
    }
}
