void mySort(int d[], unsigned int n)
{
  int i, j, k;
  for(j=1; j<n; j++){
    k = d[j];
    i = j-1;  
  	while(i>=0 && d[i]>k){
    	   d[i+1] =d[i];
     	   i=i-1;
    	}
  d[i+1]=k;
  }
}
