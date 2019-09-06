package exception;

public class PasswordErrorException extends RuntimeException {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	
	public PasswordErrorException() {
		
	}

	public PasswordErrorException(String msg) {
		super(msg);
	}
}
