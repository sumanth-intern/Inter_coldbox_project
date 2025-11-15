component {

  property name="userService" inject="UserService";

  function index(event, rc, prc) {
    event.setView("login/index");
  }

  function submit(event, rc, prc) {
    // Call the login function from your model
    prc.result = userService.login(rc.username, rc.password);

    // If login is successful
    if (arrayLen(prc.result) GT 0) {
      // Regenerate session to prevent fixation
      sessionInvalidate();
      sessionStart();

      // Store user info in session
      session.userID = prc.result[1].id;
      session.username = prc.result[1].username;
    }

    event.setView("login/result");
  }

}
