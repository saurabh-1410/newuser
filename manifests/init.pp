class newuser (
  String $username,
  String $password_command,
) {
   $deferred_password = Deferred('generate_password', [$password_command])
  user { $username: 
    ensure   => 'present',
    password => $deferred_password,
  }
}
