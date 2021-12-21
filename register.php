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
                        <h2>Sign Up | Yuk Join! ^_^</h2>
                    </legend>
                    <form method="POST" action="#">
                        <div class="form-group">
                            <label for="username">Username</label>
                            <input type="text" id="username" name="username" required>
                        </div>
                        <div class="form-group">
                            <label for="namaLengkap">Nama lengkap</label>
                            <input type="text" id="namaLengkap" name="namaLengkap">
                        </div>
                        <div class="form-group">
                            <label for="email">Email</label>
                            <input type="email" id="email" name="email" required>
                        </div>
                        <div class="form-group">
                            <label for="password">Password</label>
                            <input type="password" id="password" name="password" required>
                        </div>
                        <div class="form-group">
                            <button type="submit">Sign Up</button>
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