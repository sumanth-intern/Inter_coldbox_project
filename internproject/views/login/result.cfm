<cfif arrayLen(prc.result) GT 0>
  <p>Welcome, #prc.result[1].username#</p>
<cfelse>
  <p>Login failed.</p>
</cfif>

<h2>Login Result</h2>

<cfif arrayLen(prc.result) GT 0>
    <p>Welcome, <cfoutput>#EncodeForHTML(session.username)#</cfoutput>!</p>
    <p>Your User ID is: <cfoutput>#session.userID#</cfoutput></p>
    <p>Session ID: <cfoutput>#GetPageContext().GetSession().GetId()#</cfoutput></p>
<cfelse>
    <p>Login failed. Please try again.</p>
</cfif>
