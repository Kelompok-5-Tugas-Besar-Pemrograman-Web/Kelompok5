<?php
include('header.php');
?>
<!-- Sign In Form-->
<div class="container-fluid">
    <div class="container">
        <div class="panel panel-default">
            <div class="panel-body main">
                <fieldset class="text-center" id="sign">
                    <legend>
                        <h2>Sign In | Log In dulu dong! ^_^</h2>
                    </legend>
                    <form method="POST" action="#">
                        <div class="form-group">
                            <label for="username">Username</label>
                            <input type="text" id="username" name="username" required>
                        </div>
                        <div class="form-group">
                            <label for="password">Password</label>
                            <input type="password" id="password" name="password" required>
                        </div>
                        <div class="form-group">
                            <button type="submit">Sign In</button>
                            <button type="reset">Reset</button>
                        </div>
                    </form>
                </fieldset>
            </div>
        </div>
    </div>
</div>

<?php
include('footer.php');
?>