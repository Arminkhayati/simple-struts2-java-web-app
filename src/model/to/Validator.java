package model.to;

public class Validator {

    public boolean isNumeric(String value){
        if(value == null) return false;
        if(value.matches("^\\d+$") )
            return true;
        return false;
    }

    public boolean isPeAlphabetical(String value){
        if(value == null) return false;
        if(value.matches("^[\\u0600-\\u06FF\\s]+$"))
            return true;
        return false;
    }

    public boolean isEnAlphaNumberic(String value){
        if(value == null) return false;
        if(value.matches("^(?=.{8,20}$)(?![_.])(?!.*[_.]{2})[a-zA-Z0-9._]+(?<![_.])$"))
            return true;
        return false;
    }
    public boolean isEmpty(String value){
        if(value == null) return false;
        if(value.matches("") || value.matches("\\s+") || value == null)
            return true;
        return false;
    }
    public boolean isLength(String value, int length){
        if(value == null) return false;
        if(value.length() == length)
            return true;
        return false;
    }

    public boolean sexValidator(String value){
        if(value == null) return false;
        if(value.equals("مرد") || value.equals("زن")) return true;
        return false;
    }
    public boolean prodType(String value){
        if(value == null) return false;
        if(value.equals("میوه") || value.equals("سبزیجات") || value.equals("غلات") || value.equals("خشکبار"))
            return true;
        return false;
    }

    public boolean prodQuality(String value){
        if(value == null) return false;
        if(value.equals("درجه یک") || value.equals("درجه دو") || value.equals("درجه سه")) return true;
        return false;
    }

    public boolean dateValid(String value){
        if(value == null) return false;
        if(value.matches("^([0-2][0-9]|(3)[0-1])(\\/)(((0)[0-9])|((1)[0-2]))(\\/)\\d{4}$"))
            return true;
        return false;
    }
}
