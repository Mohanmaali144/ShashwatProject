/* 
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/JavaScript.js to edit this template
 */


/* 
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/JavaScript.js to edit this template
 */
        function validate() {
            var nameResult = checkName();
            var passwordResult = checkPassword();
            

            var ndisplay = document.getElementById("ndisplay");
            var pdisplay = document.getElementById("pdisplay");

            if (!nameResult ||  !passwordResult ) {
                // Show error messages for all fields
                if (!nameResult) ndisplay.innerHTML = "name required";
                if (!passwordResult) pdisplay.innerHTML = "password required";
                

                return false;
            }

            return true;
        }

        function checkName() {
            var name = document.getElementById("name");
            var ndisplay = document.getElementById("ndisplay");
            if (name.value.trim() == "") {
                ndisplay.innerHTML = "name required";
                ndisplay.style.color = "red";
                return false;
            } else {
                ndisplay.innerHTML = "";
                var nameInput = document.getElementById('name').value;
                var nameValue = nameInput.value;
                var isValid = /^[A-Za-z ]+$/.test(nameInput);
                var nnn = document.getElementById('ndisplay');

                if (!isValid) {
                    nnn.style.display = 'inline-block';
                    nnn.style.color = 'red';
                    nnn.innerHTML = ("Invalid Name");
                    return false;
                } else {
                    nnn.style.display = 'none';

                    nnn.innerHTML = ("");
                    return true;
                }
            }
        }
        function checkPassword() {
            var c = checkName();
            if (c) {
                var password = document.getElementById("code");
                var pdisplay = document.getElementById("pdisplay");
                if (password.value.trim() == "") {
                    pdisplay.innerHTML = "password required";
                    pdisplay.style.color = "red";
                    return false;
                } else if(password.value.length<8)
                {
                    document.getElementById("pdisplay").innerHTML="password must be 8-digit";
                    pdisplay.style.color="red";
                    return false;
                }
                    else
                    {
                    pdisplay.innerHTML = "";
                    return true;
                    
                }
            }
            else {
                var name = document.getElementById("name");
                if (!checkName()) {
                    name.focus();
                }
                return false;
            }
        }
  