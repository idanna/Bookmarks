# For redirecting to the welcome index if a user failure to login

class CustomFailure < Devise::FailureApp
  def redirect_url
		root_path
  end

  def respond
    if http_auth?
      http_auth
    else
      redirect
    end
  end
end
