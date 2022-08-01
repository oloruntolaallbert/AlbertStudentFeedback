<?php
extract($_POST);
if (isset($save)) {
    //check user alereay exists or not
    $sql = mysqli_query($conn, "select * from user where email='$email'");

    $r = mysqli_num_rows($sql);

    if ($r == true) {
        $err = "<font color='red'><h3 align='center'>This user already exists</h3></font>";
    } else {
        //dob
        // $dob=$yy."-".$mm."-".$dd;

        //hobbies
        // $hob=implode(",",$hob);

        //image
        // $imageName=$_FILES['img']['name'];


        //encrypt your password
        $pass = md5($password);


        $query = "insert into user values('','$name','$email','$pass','','$program','$semester','','','','',now())";
        mysqli_query($conn, $query);

        //upload image

        // mkdir("images/$e");
        // move_uploaded_file($_FILES['img']['tmp_name'], "images/$e/" . $_FILES['img']['name']);


        $err = "<font color='blue'><h3 align='center'>Registration successfull !!<h3></font>";
    }
}




?>


<div class="row">
    <div class="col-sm-2"></div>
    <div class="col-sm-8">
        <form method="post" enctype="multipart/form-data">
            <table class="table table-bordered" style="margin-bottom:50px">
                <caption>
                    <h2 align="center">Registration Form</h2>
                </caption>
                <Tr>
                    <Td colspan="2"><?php echo @$err; ?></Td>
                </Tr>

                <tr>
                    <td>Enter Your name</td>
                    <Td><input type="text" name="name" class="form-control" required /></td>
                </tr>
                <tr>
                    <td>Enter Your email </td>
                    <Td><input type="email" name="email" class="form-control" required /></td>
                </tr>

                <tr>
                    <td>Enter Your Password </td>
                    <Td><input type="password" name="password" class="form-control" required /></td>
                </tr>

                <!--  <tr>
                    <td>Enter Your Mobile </td>
                    <Td><input type="text" name="mob" class="form-control" required /></td>
                </tr> -->

                <tr>
                    <td>Select Your Programme</td>
                    <Td><select name="program" class="form-control" required>

                            <option>Masters</option>
                            <option>Phd</option>
                            <option>Undergraduate</option>

                        </select>
                    </td>
                </tr>

                <tr>
                    <td>Select Start Year</td>
                    <Td><select name="program" class="form-control" required>

                            <option>2020/2021</option>
                            <option>2021/2022</option>
                            <option>2022/2023</option>

                        </select>
                    </td>
                </tr>


                <tr>
                    <td>Select Your Semester</td>
                    <Td><select name="semester" class="form-control" required>

                            <option>Semester 1 (Autumn) </option>
                            <option>Semester 2 (Winter) </option>
                            <option>Semester 3 (Summer) </option>

                        </select>
                    </td>
                </tr>

                <!--  <tr>
                    <td>Select Your Gender</td>
                    <Td>
                        Male <input type="radio" name="gen" value="m" />
                        Female <input type="radio" name="gen" value="f" />
                    </td>
                </tr>

                <tr>
                    <td>Choose Your hobbies</td>
                    <Td>
                        Reading <input value="reading" type="checkbox" name="hob[]" />
                        Singing <input value="singin" type="checkbox" name="hob[]" />

                        Playing <input value="playing" type="checkbox" name="hob[]" />
                    </td>
                </tr>


                <tr>
                    <td>Upload Your Image </td>
                    <Td><input type="file" name="img" class="form-control" required /></td>
                </tr>

               <tr>
                    <td>Enter Your DOB</td>
                    <Td>
                        <select style="width:100px;float:left" name="yy" class="form-control" required>
                            <option value="">Year</option> -->

                <!--       <?php
                            for ($i = 1980; $i <= 2016; $i++) {
                                echo "<option>" . $i . "</option>";
                            }
                            ?>

                        </select>

                        <select style="width:100px;float:left" name="mm" class="form-control" required>
                            <option value="">Month</option>
                            <?php
                            for ($i = 1; $i <= 12; $i++) {
                                echo "<option>" . $i . "</option>";
                            }
                            ?>

                        </select>


                        <select style="width:100px;float:left" name="dd" class="form-control" required>
                            <option value="">Date</option>
                            <?php
                            for ($i = 1; $i <= 31; $i++) {
                                echo "<option>" . $i . "</option>";
                            }
                            ?>

                        </select>

                    </td>
                </tr>-->

                <tr>


                    <Td colspan="2" align="center">
                        <input type="submit" value="Save" class="btn btn-info" name="save" />
                        <input type="reset" value="Reset" class="btn btn-info" />

                    </td>
                </tr>
            </table>
        </form>
    </div>
    <div class="col-sm-2"></div>
</div>
</body>

</html>