%dw 2.0
output application/json
/*here i use the map function to map the given payload as of my requirement , map is used to traverse through the array and given the output as an array. so i used map function
*/
---
customer:payload.customer map ({
    Name:{
        //here in used to print the firstname and middle name and lastname but i don't want to print the null values so that i had used the condition  filter (!isEmpty($) for donot display the null values
        FullName: [$.lastName,$.firstName,$.middleName] filter (!isEmpty($) )
        joinBy " " 
    },
sex: $.gender,
DoB: $.DoB
})
