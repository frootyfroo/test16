%dw 2.0
output application/json
---
customer:payload.customer map ({
    Name:{
        FullName: [$.lastName,$.firstName,$.middleName] filter (!isEmpty($) )
        joinBy " " 
    },
sex: $.gender,
DoB: $.DoB
})