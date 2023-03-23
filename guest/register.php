<!-- Register -->
<div class="sign">
    <h2>Register</h2>
    <form class="reg" action="./api/reg_user.php" method="POST">
        <ul>
            <li>Account<span class="require">*</span> </li>
            <li><input class="reg_in" type="text" name="acc" required>
                <p></p>
            </li>
            <li>Password<span class="require">*</span><img class="checkEye" src="./thumbnail/eye-slash-solid.png"></img></li>
            <li><input class="reg_in password" type="password" name="pw" required>
                <p></p>
            </li>
            <li>Confirm password<span class="require">*</span><img class="checkEyeCfm" src="./thumbnail/eye-slash-solid.png"></img></li>
            <li><input class="reg_in cfmPassword" type="password" name="cfm_pw" required>
                <p></p>
            </li>
            <li>Name<span class="require">*</span></li>
            <li><input class="reg_in" type="text" name="name" required>
                <p></p>
            </li>
            <li>Phone</li>
            <li><input class="reg_in" type="text" name="phone">
                <p></p>
            </li>
            <li>Email<span class="require">*</span></li>
            <li><input class="reg_in" type="email" name="email" placeholder="meow@example.com" required>
                <p></p>
            </li>
            <li>Birthday</li>
            <li><input class="reg_in" type="date" name="birthday">
                <p></p>
            </li>
            <li><input class="reg_btn" type="submit" valuSe="Submit"></li>
        </ul>
    </form>
</div>

<script src="//cdnjs.cloudflare.com/ajax/libs/validate.js/0.12.0/validate.min.js"></script>
<script>
    // Check Format
    const reg = document.querySelector(".reg");
    const constraints = {
        acc: {
            presence: true,
            format: {
                pattern: "[a-z0-9]+", // 只能包含數字或英文字
                flags: "i", // 忽略大小寫
                message: "^can only contain a-z and 0-9"
            },
            length: {
                minimum: 4,
                maximum: 16,
                message: "^length can only between 4 to 16"
            }
        },
        pw: {
            presence: true,
            format: {
                pattern: "[a-z0-9]+", // 只能包含數字或英文字
                message: "^can only contain a-z and 0-9"
            },
            length: {
                minimum: 4,
                maximum: 12,
                message: "^length can only between 4 to 12"
            }
        },
        cfm_pw: {
            presence: true,
            equality: {
                attribute: "pw",
                message: "^The passwords does not match"
            }
        },
        name: {
            presence: true,
            length: {
                minimum: 1,
                maximum: 10,
                message: "^length can only between 1 to 10"
            }
        },
        email: {
            presence: true,
            email: {
                message: "^wrong format"
            }
        }
    }

    const regBtn = document.querySelector(".reg_btn");
    regBtn.addEventListener("click", e => {
        e.preventDefault();
        const error = validate(reg, constraints); // validate( form , 參數比較)
        console.log(error);
        const regIn = document.querySelectorAll(".reg_in");
        console.log(regIn);
        if (!error) {
            reg.submit();
        } else {
            regIn.forEach(inText => {
                console.log(inText);
                if (error[inText.name]) { // error 裡面有沒有跟 inText 的 name 一樣的屬性(key)
                    // nextElementSibling => 同層元素的下一個元素
                    // // previousElementSibling => 同層元素的上一個元素
                    inText.nextElementSibling.textContent = error[inText.name];
                }
            });
        }
    })


    // CheckEye
    const checkEye = document.querySelector(".checkEye");
    const password = document.querySelector(".password");
    checkEye.addEventListener("click", function() {
        // console.log(this.getAttribute('src'));
        let eyeSrc = this.getAttribute('src')
        if (eyeSrc == './thumbnail/eye-slash-solid.png') {
            this.setAttribute('src', './thumbnail/eye-solid.png');
            password.setAttribute('type', 'text');
        } else {
            this.setAttribute('src', './thumbnail/eye-slash-solid.png');
            password.setAttribute('type', 'password');
        }

    })

    const checkEyeCfm = document.querySelector(".checkEyeCfm");
    const cfmPassword = document.querySelector(".cfmPassword");
    checkEyeCfm.addEventListener("click", function() {
        // console.log(this.getAttribute('src'));
        let checkEyeCfm = this.getAttribute('src')
        if (checkEyeCfm == './thumbnail/eye-slash-solid.png') {
            this.setAttribute('src', './thumbnail/eye-solid.png');
            cfmPassword.setAttribute('type', 'text');
        } else {
            this.setAttribute('src', './thumbnail/eye-slash-solid.png');
            cfmPassword.setAttribute('type', 'password');
        }

    })
</script>