/*
TRIGGER DADOS
*/
CREATE OR REPLACE TRIGGER TRG_IUD_DADOS
 AFTER DELETE OR INSERT OR UPDATE  ON DADOS REFERENCING NEW AS NEW OLD AS OLD FOR EACH ROW

BEGIN

    IF INSERTING THEN

         INSERT INTO DADOSHIST(IDHIST, ID, DATA, HORA,ACAO)
        VALUES (SEQ_DADOSHIST.NEXTVAL,:NEW.ID, TO_DATE(SYSDATE,'DD/MM/RRRR'), TO_CHAR(SYSDATE,'HH24:MM'), 'INSERT');

    ELSIF UPDATING THEN

        INSERT INTO DADOSHIST(IDHIST, ID, DATA, HORA,ACAO)
        VALUES (SEQ_DADOSHIST.NEXTVAL,:OLD.ID, TO_DATE (SYSDATE, 'DD/MM/RRRR'),TO_CHAR (SYSDATE, 'HH24:MM'), 'UPDATE');

    ELSIF DELETING THEN

        INSERT INTO DADOSHIST(IDHIST, ID, DATA, HORA,ACAO)
        VALUES (SEQ_DADOSHIST.NEXTVAL,:OLD.ID, TO_DATE (SYSDATE, 'DD/MM/RRRR'),TO_CHAR (SYSDATE, 'HH24:MM'),'DELETE');

    END IF;

END;
/

/*
TRIGGER PESSOA_FISICA
*/
CREATE OR REPLACE TRIGGER TRG_IUD_PESSOA_FISICA
 AFTER DELETE OR INSERT OR UPDATE  ON PESSOA_FISICA REFERENCING NEW AS NEW OLD AS OLD FOR EACH ROW

BEGIN

    IF INSERTING THEN

         INSERT INTO PESSOA_FISICAHIST(IDHIST,ID, NOME_NASCIMENTO, DADOS_ID, DATA, HORA,ACAO)
        VALUES (SEQ_PESSOA_FISICAHIST.NEXTVAL,:NEW.ID, :NEW.NOME_NASCIMENTO, :NEW.DADOS_ID, TO_DATE(SYSDATE,'DD/MM/RRRR'), TO_CHAR(SYSDATE,'HH24:MM'), 'INSERT');

    ELSIF UPDATING THEN

         INSERT INTO PESSOA_FISICAHIST(IDHIST,ID, NOME_NASCIMENTO, DADOS_ID, DATA, HORA,ACAO)
        VALUES (SEQ_PESSOA_FISICAHIST.NEXTVAL,:OLD.ID, :OLD.NOME_NASCIMENTO, :OLD.DADOS_ID, TO_DATE(SYSDATE,'DD/MM/RRRR'), TO_CHAR(SYSDATE,'HH24:MM'), 'UPDATE');

    ELSIF DELETING THEN

         INSERT INTO PESSOA_FISICAHIST(IDHIST,ID, NOME_NASCIMENTO, DADOS_ID, DATA, HORA,ACAO)
        VALUES (SEQ_PESSOA_FISICAHIST.NEXTVAL,:OLD.ID, :OLD.NOME_NASCIMENTO, :OLD.DADOS_ID, TO_DATE(SYSDATE,'DD/MM/RRRR'), TO_CHAR(SYSDATE,'HH24:MM'), 'DELETE');

    END IF;

END;
/

/*
TRIGGER PESSOA_JURIDICA
*/
CREATE OR REPLACE TRIGGER TRG_IUD_PESSOA_JURIDICA
 AFTER DELETE OR INSERT OR UPDATE  ON PESSOA_JURIDICA REFERENCING NEW AS NEW OLD AS OLD FOR EACH ROW

BEGIN

    IF INSERTING THEN

         INSERT INTO PESSOA_JURIDICAHIST(IDHIST,ID, RAZAO_SOCIAL, DADOS_ID, DATA, HORA,ACAO)
        VALUES (SEQ_PESSOA_JURIDICAHIST.NEXTVAL,:NEW.ID, :NEW.RAZAO_SOCIAL, :NEW.DADOS_ID, TO_DATE(SYSDATE,'DD/MM/RRRR'), TO_CHAR(SYSDATE,'HH24:MM'), 'INSERT');

    ELSIF UPDATING THEN

         INSERT INTO PESSOA_JURIDICAHIST(IDHIST,ID, RAZAO_SOCIAL, DADOS_ID, DATA, HORA,ACAO)
        VALUES (SEQ_PESSOA_JURIDICAHIST.NEXTVAL,:OLD.ID, :OLD.RAZAO_SOCIAL, :OLD.DADOS_ID, TO_DATE(SYSDATE,'DD/MM/RRRR'), TO_CHAR(SYSDATE,'HH24:MM'), 'UPDATE');

    ELSIF DELETING THEN

         INSERT INTO PESSOA_JURIDICAHIST(IDHIST,ID, RAZAO_SOCIAL, DADOS_ID, DATA, HORA,ACAO)
        VALUES (SEQ_PESSOA_JURIDICAHIST.NEXTVAL,:OLD.ID, :OLD.RAZAO_SOCIAL, :OLD.DADOS_ID, TO_DATE(SYSDATE,'DD/MM/RRRR'), TO_CHAR(SYSDATE,'HH24:MM'), 'DELETE');

    END IF;

END;
/


/*
TRIGGER UNIDADES
*/
CREATE OR REPLACE TRIGGER TRG_IUD_UNIDADES
 AFTER DELETE OR INSERT OR UPDATE  ON UNIDADES REFERENCING NEW AS NEW OLD AS OLD FOR EACH ROW

BEGIN

    IF INSERTING THEN

         INSERT INTO UNIDADESHIST(IDHIST,ID, NOME, DADOS_ID, DATA, HORA,ACAO)
        VALUES (SEQ_UNIDADESHIST.NEXTVAL,:NEW.ID, :NEW.NOME, :NEW.DADOS_ID, TO_DATE(SYSDATE,'DD/MM/RRRR'), TO_CHAR(SYSDATE,'HH24:MM'), 'INSERT');

    ELSIF UPDATING THEN

         INSERT INTO UNIDADESHIST(IDHIST,ID, NOME, DADOS_ID, DATA, HORA,ACAO)
        VALUES (SEQ_UNIDADESHIST.NEXTVAL,:OLD.ID, :OLD.NOME, :OLD.DADOS_ID, TO_DATE(SYSDATE,'DD/MM/RRRR'), TO_CHAR(SYSDATE,'HH24:MM'), 'UPDATE');

    ELSIF DELETING THEN

         INSERT INTO UNIDADESHIST(IDHIST,ID, NOME, DADOS_ID, DATA, HORA,ACAO)
        VALUES (SEQ_UNIDADESHIST.NEXTVAL,:OLD.ID, :OLD.NOME, :OLD.DADOS_ID, TO_DATE(SYSDATE,'DD/MM/RRRR'), TO_CHAR(SYSDATE,'HH24:MM'), 'DELETE');

    END IF;

END;
/

/*
TRIGGER ENDEREÇO
*/
CREATE OR REPLACE TRIGGER TRG_IUD_ENDERECO
 AFTER DELETE OR INSERT OR UPDATE  ON ENDERECO REFERENCING NEW AS NEW OLD AS OLD FOR EACH ROW

BEGIN

    IF INSERTING THEN

         INSERT INTO ENDERECOHIST(IDHIST,ID, LOGRADOURO, DADOS_ID, DATA, HORA,ACAO)
        VALUES (SEQ_ENDERECOHIST.NEXTVAL,:NEW.ID, :NEW.LOGRADOURO, :NEW.DADOS_ID, TO_DATE(SYSDATE,'DD/MM/RRRR'), TO_CHAR(SYSDATE,'HH24:MM'), 'INSERT');

    ELSIF UPDATING THEN

         INSERT INTO ENDERECOHIST(IDHIST,ID, LOGRADOURO, DADOS_ID, DATA, HORA,ACAO)
        VALUES (SEQ_ENDERECOHIST.NEXTVAL,:OLD.ID, :OLD.LOGRADOURO, :OLD.DADOS_ID, TO_DATE(SYSDATE,'DD/MM/RRRR'), TO_CHAR(SYSDATE,'HH24:MM'), 'UPDATE');

    ELSIF DELETING THEN

         INSERT INTO ENDERECOHIST(IDHIST,ID, LOGRADOURO, DADOS_ID, DATA, HORA,ACAO)
        VALUES (SEQ_ENDERECOHIST.NEXTVAL,:OLD.ID, :OLD.LOGRADOURO, :OLD.DADOS_ID, TO_DATE(SYSDATE,'DD/MM/RRRR'), TO_CHAR(SYSDATE,'HH24:MM'), 'DELETE');

    END IF;

END;
/


/*
TRIGGER TELEFONE
*/
CREATE OR REPLACE TRIGGER TRG_IUD_TELEFONE
 AFTER DELETE OR INSERT OR UPDATE  ON TELEFONE REFERENCING NEW AS NEW OLD AS OLD FOR EACH ROW

BEGIN

    IF INSERTING THEN

         INSERT INTO TELEFONEHIST(IDHIST, ID, NUMERO, DADOS_ID, DATA, HORA,ACAO)
        VALUES (SEQ_TELEFONEHIST.NEXTVAL, :NEW.ID, :NEW.NUMERO, :NEW.DADOS_ID, TO_DATE(SYSDATE,'DD/MM/RRRR'), TO_CHAR(SYSDATE,'HH24:MM'), 'INSERT');

    ELSIF UPDATING THEN

         INSERT INTO TELEFONEHIST(IDHIST, ID, NUMERO, DADOS_ID, DATA, HORA,ACAO)
        VALUES (SEQ_TELEFONEHIST.NEXTVAL, :OLD.ID, :OLD.NUMERO, :OLD.DADOS_ID, TO_DATE(SYSDATE,'DD/MM/RRRR'), TO_CHAR(SYSDATE,'HH24:MM'), 'UPDATE');

    ELSIF DELETING THEN

         INSERT INTO TELEFONEHIST(IDHIST, ID, NUMERO, DADOS_ID, DATA, HORA,ACAO)
        VALUES (SEQ_TELEFONEHIST.NEXTVAL, :OLD.ID, :OLD.NUMERO, :OLD.DADOS_ID, TO_DATE(SYSDATE,'DD/MM/RRRR'), TO_CHAR(SYSDATE,'HH24:MM'), 'DELETE');

    END IF;

END;
/
