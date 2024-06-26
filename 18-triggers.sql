USE metro_cdmx;

-- De esta manera se crean los triggers con el valor NEW actualizamos el campo con la nueva informacion, 
CREATE TRIGGER update_updated_at_field BEFORE
UPDATE ON lineas FOR EACH ROW
SET
  NEW.updated_at = NOW();