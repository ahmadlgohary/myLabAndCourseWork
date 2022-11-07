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
public class matrix {
    private static final Scanner user = new Scanner(System.in);

            public static boolean isMatrixNice(int[][] arr) {
                if(arr.length!=arr[0].length){
                    return false;
                }
                int[] sumOfColumns =new int[arr.length];
                int[] sumOfRows =new int[arr[0].length];
                int diagonalSum=0;
                int revDiagonalSum=0;
                 
                for(int i=0; i<arr.length; i++){
                    for(int j=0; j<arr[i].length; j++){
                        sumOfRows[i]+=arr[i][j];
                        sumOfColumns[j]+=arr[i][j];
                        }                 
                    }
                
                for(int i=0; i<arr.length; i++){
                    diagonalSum+=arr[i][i];
                }
                for(int i=0; i<arr.length; i++){
                    revDiagonalSum+=arr[i][arr.length-1-i];
                }
                
                /*for(int a : sumOfRows )  
                    System.out.println(a);
                for(int b : sumOfColumns )
                    System.out.println(b);*/
                
                for(int i=1; i<sumOfColumns.length;i++){
                    if(sumOfColumns[0]!=sumOfColumns[i]){
                        return false;
                    }
                    if( sumOfRows[0]!= sumOfRows[i]){
                        return false;
                    }
                    if(sumOfRows[0]!= sumOfColumns[0]){
                        return false;
                    }
                }
                
                if(diagonalSum!=revDiagonalSum || diagonalSum!=sumOfRows[0]){
                    return false;
                }
                return true;
            }
        
        public static void main(String[] args){
            int[][] a = new int[][] 
               {{ 2 , 7, 6 },
                { 9, 5, 1 },
                {4 , 3, 8 }};
            for (int i=0; i<3; ++i){
                for (int j=0; j<3; ++j){
                    System.out.print( a[i][j] + " ");
                }
                    System.out.println("");
            }
            System.out.println(isMatrixNice(a)+ " This Matrix is NICE");
        
            int[][] b = new int[][] 
               {{ -3 , 1, 0 },
                { 4, -3, 4 },
                { 7, -9, 0 }};
            
            for (int i=0; i<3; ++i){
                for (int j=0; j<3; ++j){
                    System.out.print( b[i][j] + " ");
                }
                    System.out.println("");
            }
            System.out.println(isMatrixNice(b) + " This Matrix is not NICE\n");
            
            System.out.println("Do you want to test your own matrix? yes/no");
            String ans = user.nextLine().trim().toLowerCase();
            if(ans.equals("yes")){            
            int x,y;
            System.out.println("Input number of Columns of your Matrix");
            x = user.nextInt();
            System.out.println("Input number of Rows of your Matrix");
            y = user.nextInt();
            int [][] c = new int[x][y];
            for (int i=0; i<x; ++i){
                for (int j=0; j<y; ++j){
                    System.out.println("Insert the element at postion "+ (i+1) + " " + (j+1));
                    c[i][j] = user.nextInt();                    
                }
            }
            System.out.println("The Matrix your inputted is ");
            for (int i=0; i<x; ++i){
                for (int j=0; j<y; ++j){
                    System.out.print( c[i][j] + " ");
                }
                    System.out.println("");
            }
         System.out.println(isMatrixNice(c));
            if(isMatrixNice(c)){
            System.out.println("Your matrix is NICE");
            }
            else{
            System.out.println("Your matrix is not NICE");

            }
        }
    }        
}
