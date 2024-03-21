#include<stdio.h>
#include<math.h>
int main()
{
	int number,originalnum,result=0,remainder;
	printf("enter the number:");
	scanf("%d",&number);
	originalnum=number;
	while(originalnum!=0){
		remainder=originalnum%10;
		result+= remainder*remainder*remainder;
		originalnum/=10;
	}
	if(result == number)
	printf("%d is a armstorng number",number);
	else
	printf("%d is not a armstrong number",number);
}