-- Assign the public key (paste the content of rsa_key.pub, 
-- stripping the -----BEGIN PUBLIC KEY----- header/footer)
ALTER USER DATACLOUD_PRONTO SET RSA_PUBLIC_KEY='paste your key here';
-- DESCRIBE USER DATACLOUD_PRONTO