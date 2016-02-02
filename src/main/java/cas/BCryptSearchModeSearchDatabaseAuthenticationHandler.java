package cas;

import java.security.GeneralSecurityException;
import java.util.Map;

import javax.security.auth.login.FailedLoginException;

import org.jasig.cas.adaptors.jdbc.AbstractJdbcUsernamePasswordAuthenticationHandler;
import org.jasig.cas.authentication.HandlerResult;
import org.jasig.cas.authentication.PreventedException;
import org.jasig.cas.authentication.UsernamePasswordCredential;
import org.jasig.cas.authentication.principal.DefaultPrincipalFactory;
import org.springframework.security.crypto.bcrypt.BCrypt;

/**
 * Class that given a table, username field and password field will query a
 * database table to see if the user exists. If the user exists, the
 * encrypted password, from the datbase, will be compared to the plain
 * text password, from the credentials, by using the BCrypt tools.
 */
public class BCryptSearchModeSearchDatabaseAuthenticationHandler extends
AbstractJdbcUsernamePasswordAuthenticationHandler  {

  private String sql;
  
  private String passwordField = "password";

  public HandlerResult authenticateUsernamePasswordInternal(UsernamePasswordCredential credentials) 
		  throws GeneralSecurityException, PreventedException {
    final String username = getPrincipalNameTransformer().transform(credentials.getUsername());
    final String plainTextPassword = credentials.getPassword();

    Map<String, Object> fields = getJdbcTemplate().queryForMap(sql, username);
    final Object encryptedPassword = fields.get(passwordField);

    if(plainTextPassword == null || plainTextPassword.trim().length() == 0 ||
        encryptedPassword == null || !(encryptedPassword instanceof String) || ((String) encryptedPassword).trim().length() == 0) {
    	throw new FailedLoginException("Password does not match value on record.");
    }
    if (!BCrypt.checkpw(plainTextPassword, (String) encryptedPassword)) {
    	throw new FailedLoginException("Password does not match value on record.");
    }
    
    return createHandlerResult(credentials, new DefaultPrincipalFactory().createPrincipal(username, fields), null);
  }

  /**
   * @param sql The name of the sql to check access.
   */
  public final void setSql(final String sql) {
      this.sql = sql;
  }
  
  public final void setPasswordField(final String passwordField) {
	  this.passwordField = passwordField;
  }
}