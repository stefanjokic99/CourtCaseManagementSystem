package model.databaseModel;

public class ColumnModel extends TreeElement {
    private Boolean nullable = false;
    private Boolean primary = false;
    private String name;
    private String type;

    public ColumnModel() {
    }

    public ColumnModel(String name, Boolean nullable, Boolean primary, String type) {
        this.name = name;
        this.nullable = nullable;
        this.primary = primary;
        this.type = type;
    }

    public String getName() {
        return name;
    }

    public String getType() {
        return type;
    }

    public Boolean isNullable() {
        return nullable;
    }

    public void setNullable(Boolean nullable) {
        this.nullable = nullable;
    }

    public Boolean isPrimary() {
        return primary;
    }

    public void setPrimary(Boolean primary) {
        this.primary = primary;
    }

}
