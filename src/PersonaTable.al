table 50109 PersonaTable
{
    DataClassification = ToBeClassified;
    fields
    {
        field(1; Id; Integer)
        {
            DataClassification = SystemMetadata;
            AutoIncrement = true;
        }
        field(2; Nombre; Text[100])
        {
            DataClassification = ToBeClassified;
        }
        field(3; Apellido; Text[100])
        {
            DataClassification = ToBeClassified;
        }
        field(4; FechaNacimiento; Date)
        {
            DataClassification = ToBeClassified;

        }
        field(5; Linkedin; Text[100])
        {
            DataClassification = ToBeClassified;
        }
        field(6; Facebook; Text[100])
        {
            DataClassification = ToBeClassified;
        }
        field(7; Instagram; Text[100])
        {
            DataClassification = ToBeClassified;
        }
        field(8; EstadoCivil; Option)
        {
            OptionMembers = Soltero,Casado,Viudo;
            DataClassification = ToBeClassified;
        }
    }
    keys
    {
        key(PK; Id)
        {
            Clustered = true;
        }
    }




}
