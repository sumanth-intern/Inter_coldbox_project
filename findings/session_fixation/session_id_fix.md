


    if (arrayLen(prc.result) GT 0) {
      
      
      sessionInvalidate();
      sessionStart();

      
      session.userID   = prc.result[1].id;
      session.username = prc.result[1].username;
    }

