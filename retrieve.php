<?php

if (! empty($_POST["signup-btn"])) {
    require_once './model/Member.php';
    $member = new Member();
    $registrationResponse = $member->registerMember();
  }

$records = mysqli_query($conn,"SELECT * FROM tbl_member where pimage = ?"); // fetch data from database

while($data = mysqli_fetch_array($records))
{
?>
  <tr>
    <td><img src="<?php echo $data['pimage']; ?>"</td>
  </tr>	
<?php
}
?>

</table>

<?php ?>