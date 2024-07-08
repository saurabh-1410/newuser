Puppet::Functions.create_function(:generate_password) do
  dispatch :generate_password do
    param 'String', :password_command
  end

  def generate_password(password_command)
    %x(#{password_command}).strip
  end
end
