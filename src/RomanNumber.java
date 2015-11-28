import java.io.IOException;

import javax.servlet.jsp.JspException;
import javax.servlet.jsp.JspWriter;
import javax.servlet.jsp.PageContext;
import javax.servlet.jsp.tagext.SimpleTagSupport;

/**
 * Tag som skriver et tall på romersk format.
 * 
 * @author Lars-Petter Helland
 * @author Atle Geitung
 */
public class RomanNumber extends SimpleTagSupport {

    private static final String[] ROMAN_NUMBERS = {"???", "I", "II", "III", "IV", "V", "VI", "VII",
            "VIII", "IX", "X" };

    private int decimalNumber = 0;

    /**
     * Setter tag-attributten decimalNumber.
     * 
     * @param decimalNumber tallet
     */
    public final void setDecimalNumber(final int decimalNumber) {
        this.decimalNumber = decimalNumber;
    }

    /**
     * 
     * {@inheritDoc}
     * 
     * @see javax.servlet.jsp.tagext.SimpleTagSupport#doTag()
     */
    @Override
    public final void doTag() throws JspException, IOException {

        PageContext pageContext = (PageContext) getJspContext();
        JspWriter out = pageContext.getOut();

        if (decimalNumber >= ROMAN_NUMBERS.length) {
            setDecimalNumber(0);
        }
        out.println(ROMAN_NUMBERS[decimalNumber]);
    }

}
