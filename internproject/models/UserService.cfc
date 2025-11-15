component {
  function login(username, password) {
    // Vulnerable query (for testing SQLi)
    return queryExecute("SELECT * FROM users WHERE username='#username#' AND password='#password#'");
  }
}
