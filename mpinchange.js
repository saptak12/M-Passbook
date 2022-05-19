$('#ButtonChangePassword_Click').click(function (e) {  

        var password=$('input[id$=TextBoxOldpassword]').val();
        var confirmpassword=$('input[id$=TextBoxNewpassword]').val();
        if(password!=confirmpassword)
        {
          $("#TextBoxNewpassword").rules("add", {
          compare:true,
          messages: {
          }
          });
          }
                                       
    });

