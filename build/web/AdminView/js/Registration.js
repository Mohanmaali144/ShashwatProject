/* 
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/JavaScript.js to edit this template
 */
        function validate() {
            var nameResult = checkName();
            var emailResult = checkEmail();
            var mobileResult = checkMobile();
            var addressResult = checkAddress();
            var passwordResult = checkPassword();
            

            var ndisplay = document.getElementById("ndisplay");
            var edisplay = document.getElementById("edisplay");
            var mdisplay = document.getElementById("mdisplay");
            var adisplay = document.getElementById("adisplay");
            var pdisplay = document.getElementById("pdisplay");

            if (!nameResult ||  !emailResult || !mobileResult || !addressResult || !passwordResult ) {
                // Show error messages for all fields
                if (!nameResult) ndisplay.innerHTML = "name required";
                if (!emailResult) edisplay.innerHTML = "email required";
                if (!mobileResult) mdisplay.innerHTML = "mobile number required";
                if (!addressResult) adisplay.innerHTML = "Address required";
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

        
        function checkEmail() {
            var c = checkName();
            if (c) {
                var email = document.getElementById("email");
                var edisplay = document.getElementById("edisplay");
                if (email.value.trim() == "") {
                    edisplay.innerHTML = "email required";
                    edisplay.style.color = "red";
                    return false;
                } else {
                    edisplay.innerHTML = "";
                    var emailInput = document.getElementById('email');
                    var emailValue = emailInput.value;
                    var eee = document.getElementById('edisplay');

                    if (!emailValue.includes('@gmail.com')) {
                        eee.style.display = 'inline-block';
                        eee.style.color = 'red';
                        eee.innerHTML = ("Invalid Email");
                        return false;
                    } else {
                        eee.style.display = 'none';

                        eee.innerHTML = ("");
                    }

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

        function checkMobile() {
            var c = checkEmail();
            if (c) {
                var mobile = document.getElementById("mobile");

                var mdisplay = document.getElementById("mdisplay");
                if (mobile.value.trim() == "") {
                    mdisplay.innerHTML = "mobile number required";
                    mdisplay.style.color = "red";
                    return false;
                } else {
                    mdisplay.innerHTML = "";
                    var mobile = document.getElementById("mobile");
                    var mdisplay = document.getElementById("mdisplay");
                    var mobileRegex = /^[7896]\d{9}$/;

                    if (mobile.value.trim() === "" || !mobileRegex.test(mobile.value.trim())) {
                        mdisplay.innerHTML = "Enter a valid 10-digit mobile number starting with 7, 9, 8, or 6";
                        mdisplay.style.color = "red";
                        return false;
                    } else {
                        mdisplay.innerHTML = "";
                        return true;
                    }
                }
            }
            else {
                var name = document.getElementById("name");
                var email = document.getElementById("email");
                if (!checkName()) {
                    name.focus();
                }
                else if (!checkEmail()) {
                    email.focus();
                }
                return false;
            }
        }

       function checkAddress() {
            var c = checkMobile();
            if (c) {
                var address = document.getElementById("address");
                var adisplay = document.getElementById("adisplay");
                if (address.value.trim() == "") {
                    adisplay.innerHTML = "address required";
                    adisplay.style.color = "red";
                    return false;
                } else {
                    adisplay.innerHTML = "";
                    var addressInput = document.getElementById('address').value;
                    var addressValue = nameInput.value;
                    var isValid = /^[A-Za-z ]+$/.test(addressInput);
                    var nnn = document.getElementById('adisplay');

                    if (!isValid) {
                        nnn.style.display = 'inline-block';
                        nnn.style.color = 'red';
                        nnn.innerHTML = ("Invalid address");
                        return false;
                    } else {
                        nnn.style.display = 'none';
                        nnn.innerHTML = ("");
                        return true;
                    }
                }
            }
            else {
                var name = document.getElementById("name");
                var email = document.getElementById("email");
                var mobile = document.getElementById("mobile");
                if (!checkName()) {
                    name.focus();
                }
                else if (!checkEmail()) {
                    email.focus();
                }
                else if (!checkMobile()) {
                    mobile.focus();
                }
                return false;
            }
        } 


        function checkPassword() {
            var c = checkAddress();
            if (c) {
                var password = document.getElementById("password");
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
                var email = document.getElementById("email");
                var mobile = document.getElementById("mobile");
                var address = document.getElementById("address");
                if (!checkName()) {
                    name.focus();
                }
                else if (!checkEmail()) {
                    email.focus();
                }
                else if (!checkMobile()) {
                    mobile.focus();
                }else if (!checkAddress()) {
                    address.focus();
                }
                return false;
            }
        }
  