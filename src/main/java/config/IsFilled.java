package config;

public class IsFilled {
    private Boolean isFilled = null;

    public Boolean isFilled() {
        if (isFilled == null) {
            isFilled = Settings.isAllFilled();
        }
        return isFilled;
    }

    public void setIsFilled(boolean isFilled) {
        this.isFilled = isFilled;
    }
}
