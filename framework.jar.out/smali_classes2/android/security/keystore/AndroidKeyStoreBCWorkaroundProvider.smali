.class Landroid/security/keystore/AndroidKeyStoreBCWorkaroundProvider;
.super Ljava/security/Provider;
.source "AndroidKeyStoreBCWorkaroundProvider.java"


# static fields
.field private static final KEYSTORE_PRIVATE_KEY_CLASS_NAME:Ljava/lang/String; = "android.security.keystore.AndroidKeyStorePrivateKey"

.field private static final KEYSTORE_PUBLIC_KEY_CLASS_NAME:Ljava/lang/String; = "android.security.keystore.AndroidKeyStorePublicKey"

.field private static final KEYSTORE_SECRET_KEY_CLASS_NAME:Ljava/lang/String; = "android.security.keystore.AndroidKeyStoreSecretKey"

.field private static final PACKAGE_NAME:Ljava/lang/String; = "android.security.keystore"


# direct methods
.method constructor <init>()V
    .locals 4

    const-string/jumbo v0, "AndroidKeyStoreBCWorkaround"

    const-string/jumbo v1, "Android KeyStore security provider to work around Bouncy Castle"

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    invoke-direct {p0, v0, v2, v3, v1}, Ljava/security/Provider;-><init>(Ljava/lang/String;DLjava/lang/String;)V

    const-string/jumbo v0, "HmacSHA1"

    const-string/jumbo v1, "android.security.keystore.AndroidKeyStoreHmacSpi$HmacSHA1"

    invoke-direct {p0, v0, v1}, Landroid/security/keystore/AndroidKeyStoreBCWorkaroundProvider;->putMacImpl(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "Alg.Alias.Mac.1.2.840.113549.2.7"

    const-string/jumbo v1, "HmacSHA1"

    invoke-virtual {p0, v0, v1}, Landroid/security/keystore/AndroidKeyStoreBCWorkaroundProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v0, "Alg.Alias.Mac.HMAC-SHA1"

    const-string/jumbo v1, "HmacSHA1"

    invoke-virtual {p0, v0, v1}, Landroid/security/keystore/AndroidKeyStoreBCWorkaroundProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v0, "Alg.Alias.Mac.HMAC/SHA1"

    const-string/jumbo v1, "HmacSHA1"

    invoke-virtual {p0, v0, v1}, Landroid/security/keystore/AndroidKeyStoreBCWorkaroundProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v0, "HmacSHA224"

    const-string/jumbo v1, "android.security.keystore.AndroidKeyStoreHmacSpi$HmacSHA224"

    invoke-direct {p0, v0, v1}, Landroid/security/keystore/AndroidKeyStoreBCWorkaroundProvider;->putMacImpl(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "Alg.Alias.Mac.1.2.840.113549.2.9"

    const-string/jumbo v1, "HmacSHA224"

    invoke-virtual {p0, v0, v1}, Landroid/security/keystore/AndroidKeyStoreBCWorkaroundProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v0, "Alg.Alias.Mac.HMAC-SHA224"

    const-string/jumbo v1, "HmacSHA224"

    invoke-virtual {p0, v0, v1}, Landroid/security/keystore/AndroidKeyStoreBCWorkaroundProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v0, "Alg.Alias.Mac.HMAC/SHA224"

    const-string/jumbo v1, "HmacSHA224"

    invoke-virtual {p0, v0, v1}, Landroid/security/keystore/AndroidKeyStoreBCWorkaroundProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v0, "HmacSHA256"

    const-string/jumbo v1, "android.security.keystore.AndroidKeyStoreHmacSpi$HmacSHA256"

    invoke-direct {p0, v0, v1}, Landroid/security/keystore/AndroidKeyStoreBCWorkaroundProvider;->putMacImpl(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "Alg.Alias.Mac.1.2.840.113549.2.9"

    const-string/jumbo v1, "HmacSHA256"

    invoke-virtual {p0, v0, v1}, Landroid/security/keystore/AndroidKeyStoreBCWorkaroundProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v0, "Alg.Alias.Mac.HMAC-SHA256"

    const-string/jumbo v1, "HmacSHA256"

    invoke-virtual {p0, v0, v1}, Landroid/security/keystore/AndroidKeyStoreBCWorkaroundProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v0, "Alg.Alias.Mac.HMAC/SHA256"

    const-string/jumbo v1, "HmacSHA256"

    invoke-virtual {p0, v0, v1}, Landroid/security/keystore/AndroidKeyStoreBCWorkaroundProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v0, "HmacSHA384"

    const-string/jumbo v1, "android.security.keystore.AndroidKeyStoreHmacSpi$HmacSHA384"

    invoke-direct {p0, v0, v1}, Landroid/security/keystore/AndroidKeyStoreBCWorkaroundProvider;->putMacImpl(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "Alg.Alias.Mac.1.2.840.113549.2.10"

    const-string/jumbo v1, "HmacSHA384"

    invoke-virtual {p0, v0, v1}, Landroid/security/keystore/AndroidKeyStoreBCWorkaroundProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v0, "Alg.Alias.Mac.HMAC-SHA384"

    const-string/jumbo v1, "HmacSHA384"

    invoke-virtual {p0, v0, v1}, Landroid/security/keystore/AndroidKeyStoreBCWorkaroundProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v0, "Alg.Alias.Mac.HMAC/SHA384"

    const-string/jumbo v1, "HmacSHA384"

    invoke-virtual {p0, v0, v1}, Landroid/security/keystore/AndroidKeyStoreBCWorkaroundProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v0, "HmacSHA512"

    const-string/jumbo v1, "android.security.keystore.AndroidKeyStoreHmacSpi$HmacSHA512"

    invoke-direct {p0, v0, v1}, Landroid/security/keystore/AndroidKeyStoreBCWorkaroundProvider;->putMacImpl(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "Alg.Alias.Mac.1.2.840.113549.2.11"

    const-string/jumbo v1, "HmacSHA512"

    invoke-virtual {p0, v0, v1}, Landroid/security/keystore/AndroidKeyStoreBCWorkaroundProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v0, "Alg.Alias.Mac.HMAC-SHA512"

    const-string/jumbo v1, "HmacSHA512"

    invoke-virtual {p0, v0, v1}, Landroid/security/keystore/AndroidKeyStoreBCWorkaroundProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v0, "Alg.Alias.Mac.HMAC/SHA512"

    const-string/jumbo v1, "HmacSHA512"

    invoke-virtual {p0, v0, v1}, Landroid/security/keystore/AndroidKeyStoreBCWorkaroundProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v0, "AES/ECB/NoPadding"

    const-string/jumbo v1, "android.security.keystore.AndroidKeyStoreUnauthenticatedAESCipherSpi$ECB$NoPadding"

    invoke-direct {p0, v0, v1}, Landroid/security/keystore/AndroidKeyStoreBCWorkaroundProvider;->putSymmetricCipherImpl(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "AES/ECB/PKCS7Padding"

    const-string/jumbo v1, "android.security.keystore.AndroidKeyStoreUnauthenticatedAESCipherSpi$ECB$PKCS7Padding"

    invoke-direct {p0, v0, v1}, Landroid/security/keystore/AndroidKeyStoreBCWorkaroundProvider;->putSymmetricCipherImpl(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "AES/CBC/NoPadding"

    const-string/jumbo v1, "android.security.keystore.AndroidKeyStoreUnauthenticatedAESCipherSpi$CBC$NoPadding"

    invoke-direct {p0, v0, v1}, Landroid/security/keystore/AndroidKeyStoreBCWorkaroundProvider;->putSymmetricCipherImpl(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "AES/CBC/PKCS7Padding"

    const-string/jumbo v1, "android.security.keystore.AndroidKeyStoreUnauthenticatedAESCipherSpi$CBC$PKCS7Padding"

    invoke-direct {p0, v0, v1}, Landroid/security/keystore/AndroidKeyStoreBCWorkaroundProvider;->putSymmetricCipherImpl(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "AES/CTR/NoPadding"

    const-string/jumbo v1, "android.security.keystore.AndroidKeyStoreUnauthenticatedAESCipherSpi$CTR$NoPadding"

    invoke-direct {p0, v0, v1}, Landroid/security/keystore/AndroidKeyStoreBCWorkaroundProvider;->putSymmetricCipherImpl(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "AES/GCM/NoPadding"

    const-string/jumbo v1, "android.security.keystore.AndroidKeyStoreAuthenticatedAESCipherSpi$GCM$NoPadding"

    invoke-direct {p0, v0, v1}, Landroid/security/keystore/AndroidKeyStoreBCWorkaroundProvider;->putSymmetricCipherImpl(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "RSA/ECB/NoPadding"

    const-string/jumbo v1, "android.security.keystore.AndroidKeyStoreRSACipherSpi$NoPadding"

    invoke-direct {p0, v0, v1}, Landroid/security/keystore/AndroidKeyStoreBCWorkaroundProvider;->putAsymmetricCipherImpl(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "Alg.Alias.Cipher.RSA/None/NoPadding"

    const-string/jumbo v1, "RSA/ECB/NoPadding"

    invoke-virtual {p0, v0, v1}, Landroid/security/keystore/AndroidKeyStoreBCWorkaroundProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v0, "RSA/ECB/PKCS1Padding"

    const-string/jumbo v1, "android.security.keystore.AndroidKeyStoreRSACipherSpi$PKCS1Padding"

    invoke-direct {p0, v0, v1}, Landroid/security/keystore/AndroidKeyStoreBCWorkaroundProvider;->putAsymmetricCipherImpl(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "Alg.Alias.Cipher.RSA/None/PKCS1Padding"

    const-string/jumbo v1, "RSA/ECB/PKCS1Padding"

    invoke-virtual {p0, v0, v1}, Landroid/security/keystore/AndroidKeyStoreBCWorkaroundProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v0, "RSA/ECB/OAEPPadding"

    const-string/jumbo v1, "android.security.keystore.AndroidKeyStoreRSACipherSpi$OAEPWithSHA1AndMGF1Padding"

    invoke-direct {p0, v0, v1}, Landroid/security/keystore/AndroidKeyStoreBCWorkaroundProvider;->putAsymmetricCipherImpl(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "Alg.Alias.Cipher.RSA/None/OAEPPadding"

    const-string/jumbo v1, "RSA/ECB/OAEPPadding"

    invoke-virtual {p0, v0, v1}, Landroid/security/keystore/AndroidKeyStoreBCWorkaroundProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v0, "RSA/ECB/OAEPWithSHA-1AndMGF1Padding"

    const-string/jumbo v1, "android.security.keystore.AndroidKeyStoreRSACipherSpi$OAEPWithSHA1AndMGF1Padding"

    invoke-direct {p0, v0, v1}, Landroid/security/keystore/AndroidKeyStoreBCWorkaroundProvider;->putAsymmetricCipherImpl(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "Alg.Alias.Cipher.RSA/None/OAEPWithSHA-1AndMGF1Padding"

    const-string/jumbo v1, "RSA/ECB/OAEPWithSHA-1AndMGF1Padding"

    invoke-virtual {p0, v0, v1}, Landroid/security/keystore/AndroidKeyStoreBCWorkaroundProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v0, "RSA/ECB/OAEPWithSHA-224AndMGF1Padding"

    const-string/jumbo v1, "android.security.keystore.AndroidKeyStoreRSACipherSpi$OAEPWithSHA224AndMGF1Padding"

    invoke-direct {p0, v0, v1}, Landroid/security/keystore/AndroidKeyStoreBCWorkaroundProvider;->putAsymmetricCipherImpl(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "Alg.Alias.Cipher.RSA/None/OAEPWithSHA-224AndMGF1Padding"

    const-string/jumbo v1, "RSA/ECB/OAEPWithSHA-256AndMGF1Padding"

    invoke-virtual {p0, v0, v1}, Landroid/security/keystore/AndroidKeyStoreBCWorkaroundProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v0, "RSA/ECB/OAEPWithSHA-256AndMGF1Padding"

    const-string/jumbo v1, "android.security.keystore.AndroidKeyStoreRSACipherSpi$OAEPWithSHA256AndMGF1Padding"

    invoke-direct {p0, v0, v1}, Landroid/security/keystore/AndroidKeyStoreBCWorkaroundProvider;->putAsymmetricCipherImpl(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "Alg.Alias.Cipher.RSA/None/OAEPWithSHA-256AndMGF1Padding"

    const-string/jumbo v1, "RSA/ECB/OAEPWithSHA-256AndMGF1Padding"

    invoke-virtual {p0, v0, v1}, Landroid/security/keystore/AndroidKeyStoreBCWorkaroundProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v0, "RSA/ECB/OAEPWithSHA-384AndMGF1Padding"

    const-string/jumbo v1, "android.security.keystore.AndroidKeyStoreRSACipherSpi$OAEPWithSHA384AndMGF1Padding"

    invoke-direct {p0, v0, v1}, Landroid/security/keystore/AndroidKeyStoreBCWorkaroundProvider;->putAsymmetricCipherImpl(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "Alg.Alias.Cipher.RSA/None/OAEPWithSHA-384AndMGF1Padding"

    const-string/jumbo v1, "RSA/ECB/OAEPWithSHA-384AndMGF1Padding"

    invoke-virtual {p0, v0, v1}, Landroid/security/keystore/AndroidKeyStoreBCWorkaroundProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v0, "RSA/ECB/OAEPWithSHA-512AndMGF1Padding"

    const-string/jumbo v1, "android.security.keystore.AndroidKeyStoreRSACipherSpi$OAEPWithSHA512AndMGF1Padding"

    invoke-direct {p0, v0, v1}, Landroid/security/keystore/AndroidKeyStoreBCWorkaroundProvider;->putAsymmetricCipherImpl(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "Alg.Alias.Cipher.RSA/None/OAEPWithSHA-512AndMGF1Padding"

    const-string/jumbo v1, "RSA/ECB/OAEPWithSHA-512AndMGF1Padding"

    invoke-virtual {p0, v0, v1}, Landroid/security/keystore/AndroidKeyStoreBCWorkaroundProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v0, "NONEwithRSA"

    const-string/jumbo v1, "android.security.keystore.AndroidKeyStoreRSASignatureSpi$NONEWithPKCS1Padding"

    invoke-direct {p0, v0, v1}, Landroid/security/keystore/AndroidKeyStoreBCWorkaroundProvider;->putSignatureImpl(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "MD5withRSA"

    const-string/jumbo v1, "android.security.keystore.AndroidKeyStoreRSASignatureSpi$MD5WithPKCS1Padding"

    invoke-direct {p0, v0, v1}, Landroid/security/keystore/AndroidKeyStoreBCWorkaroundProvider;->putSignatureImpl(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "Alg.Alias.Signature.MD5WithRSAEncryption"

    const-string/jumbo v1, "MD5withRSA"

    invoke-virtual {p0, v0, v1}, Landroid/security/keystore/AndroidKeyStoreBCWorkaroundProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v0, "Alg.Alias.Signature.MD5/RSA"

    const-string/jumbo v1, "MD5withRSA"

    invoke-virtual {p0, v0, v1}, Landroid/security/keystore/AndroidKeyStoreBCWorkaroundProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v0, "Alg.Alias.Signature.1.2.840.113549.1.1.4"

    const-string/jumbo v1, "MD5withRSA"

    invoke-virtual {p0, v0, v1}, Landroid/security/keystore/AndroidKeyStoreBCWorkaroundProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v0, "Alg.Alias.Signature.1.2.840.113549.2.5with1.2.840.113549.1.1.1"

    const-string/jumbo v1, "MD5withRSA"

    invoke-virtual {p0, v0, v1}, Landroid/security/keystore/AndroidKeyStoreBCWorkaroundProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v0, "SHA1withRSA"

    const-string/jumbo v1, "android.security.keystore.AndroidKeyStoreRSASignatureSpi$SHA1WithPKCS1Padding"

    invoke-direct {p0, v0, v1}, Landroid/security/keystore/AndroidKeyStoreBCWorkaroundProvider;->putSignatureImpl(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "Alg.Alias.Signature.SHA1WithRSAEncryption"

    const-string/jumbo v1, "SHA1withRSA"

    invoke-virtual {p0, v0, v1}, Landroid/security/keystore/AndroidKeyStoreBCWorkaroundProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v0, "Alg.Alias.Signature.SHA1/RSA"

    const-string/jumbo v1, "SHA1withRSA"

    invoke-virtual {p0, v0, v1}, Landroid/security/keystore/AndroidKeyStoreBCWorkaroundProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v0, "Alg.Alias.Signature.SHA-1/RSA"

    const-string/jumbo v1, "SHA1withRSA"

    invoke-virtual {p0, v0, v1}, Landroid/security/keystore/AndroidKeyStoreBCWorkaroundProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v0, "Alg.Alias.Signature.1.2.840.113549.1.1.5"

    const-string/jumbo v1, "SHA1withRSA"

    invoke-virtual {p0, v0, v1}, Landroid/security/keystore/AndroidKeyStoreBCWorkaroundProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v0, "Alg.Alias.Signature.1.3.14.3.2.26with1.2.840.113549.1.1.1"

    const-string/jumbo v1, "SHA1withRSA"

    invoke-virtual {p0, v0, v1}, Landroid/security/keystore/AndroidKeyStoreBCWorkaroundProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v0, "Alg.Alias.Signature.1.3.14.3.2.26with1.2.840.113549.1.1.5"

    const-string/jumbo v1, "SHA1withRSA"

    invoke-virtual {p0, v0, v1}, Landroid/security/keystore/AndroidKeyStoreBCWorkaroundProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v0, "Alg.Alias.Signature.1.3.14.3.2.29"

    const-string/jumbo v1, "SHA1withRSA"

    invoke-virtual {p0, v0, v1}, Landroid/security/keystore/AndroidKeyStoreBCWorkaroundProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v0, "SHA224withRSA"

    const-string/jumbo v1, "android.security.keystore.AndroidKeyStoreRSASignatureSpi$SHA224WithPKCS1Padding"

    invoke-direct {p0, v0, v1}, Landroid/security/keystore/AndroidKeyStoreBCWorkaroundProvider;->putSignatureImpl(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "Alg.Alias.Signature.SHA224WithRSAEncryption"

    const-string/jumbo v1, "SHA224withRSA"

    invoke-virtual {p0, v0, v1}, Landroid/security/keystore/AndroidKeyStoreBCWorkaroundProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v0, "Alg.Alias.Signature.1.2.840.113549.1.1.11"

    const-string/jumbo v1, "SHA224withRSA"

    invoke-virtual {p0, v0, v1}, Landroid/security/keystore/AndroidKeyStoreBCWorkaroundProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v0, "Alg.Alias.Signature.2.16.840.1.101.3.4.2.4with1.2.840.113549.1.1.1"

    const-string/jumbo v1, "SHA224withRSA"

    invoke-virtual {p0, v0, v1}, Landroid/security/keystore/AndroidKeyStoreBCWorkaroundProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v0, "Alg.Alias.Signature.2.16.840.1.101.3.4.2.4with1.2.840.113549.1.1.11"

    const-string/jumbo v1, "SHA224withRSA"

    invoke-virtual {p0, v0, v1}, Landroid/security/keystore/AndroidKeyStoreBCWorkaroundProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v0, "SHA256withRSA"

    const-string/jumbo v1, "android.security.keystore.AndroidKeyStoreRSASignatureSpi$SHA256WithPKCS1Padding"

    invoke-direct {p0, v0, v1}, Landroid/security/keystore/AndroidKeyStoreBCWorkaroundProvider;->putSignatureImpl(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "Alg.Alias.Signature.SHA256WithRSAEncryption"

    const-string/jumbo v1, "SHA256withRSA"

    invoke-virtual {p0, v0, v1}, Landroid/security/keystore/AndroidKeyStoreBCWorkaroundProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v0, "Alg.Alias.Signature.1.2.840.113549.1.1.11"

    const-string/jumbo v1, "SHA256withRSA"

    invoke-virtual {p0, v0, v1}, Landroid/security/keystore/AndroidKeyStoreBCWorkaroundProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v0, "Alg.Alias.Signature.2.16.840.1.101.3.4.2.1with1.2.840.113549.1.1.1"

    const-string/jumbo v1, "SHA256withRSA"

    invoke-virtual {p0, v0, v1}, Landroid/security/keystore/AndroidKeyStoreBCWorkaroundProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v0, "Alg.Alias.Signature.2.16.840.1.101.3.4.2.1with1.2.840.113549.1.1.11"

    const-string/jumbo v1, "SHA256withRSA"

    invoke-virtual {p0, v0, v1}, Landroid/security/keystore/AndroidKeyStoreBCWorkaroundProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v0, "SHA384withRSA"

    const-string/jumbo v1, "android.security.keystore.AndroidKeyStoreRSASignatureSpi$SHA384WithPKCS1Padding"

    invoke-direct {p0, v0, v1}, Landroid/security/keystore/AndroidKeyStoreBCWorkaroundProvider;->putSignatureImpl(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "Alg.Alias.Signature.SHA384WithRSAEncryption"

    const-string/jumbo v1, "SHA384withRSA"

    invoke-virtual {p0, v0, v1}, Landroid/security/keystore/AndroidKeyStoreBCWorkaroundProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v0, "Alg.Alias.Signature.1.2.840.113549.1.1.12"

    const-string/jumbo v1, "SHA384withRSA"

    invoke-virtual {p0, v0, v1}, Landroid/security/keystore/AndroidKeyStoreBCWorkaroundProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v0, "Alg.Alias.Signature.2.16.840.1.101.3.4.2.2with1.2.840.113549.1.1.1"

    const-string/jumbo v1, "SHA384withRSA"

    invoke-virtual {p0, v0, v1}, Landroid/security/keystore/AndroidKeyStoreBCWorkaroundProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v0, "SHA512withRSA"

    const-string/jumbo v1, "android.security.keystore.AndroidKeyStoreRSASignatureSpi$SHA512WithPKCS1Padding"

    invoke-direct {p0, v0, v1}, Landroid/security/keystore/AndroidKeyStoreBCWorkaroundProvider;->putSignatureImpl(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "Alg.Alias.Signature.SHA512WithRSAEncryption"

    const-string/jumbo v1, "SHA512withRSA"

    invoke-virtual {p0, v0, v1}, Landroid/security/keystore/AndroidKeyStoreBCWorkaroundProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v0, "Alg.Alias.Signature.1.2.840.113549.1.1.13"

    const-string/jumbo v1, "SHA512withRSA"

    invoke-virtual {p0, v0, v1}, Landroid/security/keystore/AndroidKeyStoreBCWorkaroundProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v0, "Alg.Alias.Signature.2.16.840.1.101.3.4.2.3with1.2.840.113549.1.1.1"

    const-string/jumbo v1, "SHA512withRSA"

    invoke-virtual {p0, v0, v1}, Landroid/security/keystore/AndroidKeyStoreBCWorkaroundProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v0, "SHA1withRSA/PSS"

    const-string/jumbo v1, "android.security.keystore.AndroidKeyStoreRSASignatureSpi$SHA1WithPSSPadding"

    invoke-direct {p0, v0, v1}, Landroid/security/keystore/AndroidKeyStoreBCWorkaroundProvider;->putSignatureImpl(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "SHA224withRSA/PSS"

    const-string/jumbo v1, "android.security.keystore.AndroidKeyStoreRSASignatureSpi$SHA224WithPSSPadding"

    invoke-direct {p0, v0, v1}, Landroid/security/keystore/AndroidKeyStoreBCWorkaroundProvider;->putSignatureImpl(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "SHA256withRSA/PSS"

    const-string/jumbo v1, "android.security.keystore.AndroidKeyStoreRSASignatureSpi$SHA256WithPSSPadding"

    invoke-direct {p0, v0, v1}, Landroid/security/keystore/AndroidKeyStoreBCWorkaroundProvider;->putSignatureImpl(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "SHA384withRSA/PSS"

    const-string/jumbo v1, "android.security.keystore.AndroidKeyStoreRSASignatureSpi$SHA384WithPSSPadding"

    invoke-direct {p0, v0, v1}, Landroid/security/keystore/AndroidKeyStoreBCWorkaroundProvider;->putSignatureImpl(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "SHA512withRSA/PSS"

    const-string/jumbo v1, "android.security.keystore.AndroidKeyStoreRSASignatureSpi$SHA512WithPSSPadding"

    invoke-direct {p0, v0, v1}, Landroid/security/keystore/AndroidKeyStoreBCWorkaroundProvider;->putSignatureImpl(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "NONEwithECDSA"

    const-string/jumbo v1, "android.security.keystore.AndroidKeyStoreECDSASignatureSpi$NONE"

    invoke-direct {p0, v0, v1}, Landroid/security/keystore/AndroidKeyStoreBCWorkaroundProvider;->putSignatureImpl(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "SHA1withECDSA"

    const-string/jumbo v1, "android.security.keystore.AndroidKeyStoreECDSASignatureSpi$SHA1"

    invoke-direct {p0, v0, v1}, Landroid/security/keystore/AndroidKeyStoreBCWorkaroundProvider;->putSignatureImpl(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "Alg.Alias.Signature.ECDSA"

    const-string/jumbo v1, "SHA1withECDSA"

    invoke-virtual {p0, v0, v1}, Landroid/security/keystore/AndroidKeyStoreBCWorkaroundProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v0, "Alg.Alias.Signature.ECDSAwithSHA1"

    const-string/jumbo v1, "SHA1withECDSA"

    invoke-virtual {p0, v0, v1}, Landroid/security/keystore/AndroidKeyStoreBCWorkaroundProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v0, "Alg.Alias.Signature.1.2.840.10045.4.1"

    const-string/jumbo v1, "SHA1withECDSA"

    invoke-virtual {p0, v0, v1}, Landroid/security/keystore/AndroidKeyStoreBCWorkaroundProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v0, "Alg.Alias.Signature.1.3.14.3.2.26with1.2.840.10045.2.1"

    const-string/jumbo v1, "SHA1withECDSA"

    invoke-virtual {p0, v0, v1}, Landroid/security/keystore/AndroidKeyStoreBCWorkaroundProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v0, "SHA224withECDSA"

    const-string/jumbo v1, "android.security.keystore.AndroidKeyStoreECDSASignatureSpi$SHA224"

    invoke-direct {p0, v0, v1}, Landroid/security/keystore/AndroidKeyStoreBCWorkaroundProvider;->putSignatureImpl(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "Alg.Alias.Signature.1.2.840.10045.4.3.1"

    const-string/jumbo v1, "SHA224withECDSA"

    invoke-virtual {p0, v0, v1}, Landroid/security/keystore/AndroidKeyStoreBCWorkaroundProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v0, "Alg.Alias.Signature.2.16.840.1.101.3.4.2.4with1.2.840.10045.2.1"

    const-string/jumbo v1, "SHA224withECDSA"

    invoke-virtual {p0, v0, v1}, Landroid/security/keystore/AndroidKeyStoreBCWorkaroundProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v0, "SHA256withECDSA"

    const-string/jumbo v1, "android.security.keystore.AndroidKeyStoreECDSASignatureSpi$SHA256"

    invoke-direct {p0, v0, v1}, Landroid/security/keystore/AndroidKeyStoreBCWorkaroundProvider;->putSignatureImpl(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "Alg.Alias.Signature.1.2.840.10045.4.3.2"

    const-string/jumbo v1, "SHA256withECDSA"

    invoke-virtual {p0, v0, v1}, Landroid/security/keystore/AndroidKeyStoreBCWorkaroundProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v0, "Alg.Alias.Signature.2.16.840.1.101.3.4.2.1with1.2.840.10045.2.1"

    const-string/jumbo v1, "SHA256withECDSA"

    invoke-virtual {p0, v0, v1}, Landroid/security/keystore/AndroidKeyStoreBCWorkaroundProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v0, "SHA384withECDSA"

    const-string/jumbo v1, "android.security.keystore.AndroidKeyStoreECDSASignatureSpi$SHA384"

    invoke-direct {p0, v0, v1}, Landroid/security/keystore/AndroidKeyStoreBCWorkaroundProvider;->putSignatureImpl(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "Alg.Alias.Signature.1.2.840.10045.4.3.3"

    const-string/jumbo v1, "SHA384withECDSA"

    invoke-virtual {p0, v0, v1}, Landroid/security/keystore/AndroidKeyStoreBCWorkaroundProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v0, "Alg.Alias.Signature.2.16.840.1.101.3.4.2.2with1.2.840.10045.2.1"

    const-string/jumbo v1, "SHA384withECDSA"

    invoke-virtual {p0, v0, v1}, Landroid/security/keystore/AndroidKeyStoreBCWorkaroundProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v0, "SHA512withECDSA"

    const-string/jumbo v1, "android.security.keystore.AndroidKeyStoreECDSASignatureSpi$SHA512"

    invoke-direct {p0, v0, v1}, Landroid/security/keystore/AndroidKeyStoreBCWorkaroundProvider;->putSignatureImpl(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "Alg.Alias.Signature.1.2.840.10045.4.3.4"

    const-string/jumbo v1, "SHA512withECDSA"

    invoke-virtual {p0, v0, v1}, Landroid/security/keystore/AndroidKeyStoreBCWorkaroundProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v0, "Alg.Alias.Signature.2.16.840.1.101.3.4.2.3with1.2.840.10045.2.1"

    const-string/jumbo v1, "SHA512withECDSA"

    invoke-virtual {p0, v0, v1}, Landroid/security/keystore/AndroidKeyStoreBCWorkaroundProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static getSupportedEcdsaSignatureDigests()[Ljava/lang/String;
    .locals 3

    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "NONE"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string/jumbo v1, "SHA-1"

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-string/jumbo v1, "SHA-224"

    const/4 v2, 0x2

    aput-object v1, v0, v2

    const-string/jumbo v1, "SHA-256"

    const/4 v2, 0x3

    aput-object v1, v0, v2

    const-string/jumbo v1, "SHA-384"

    const/4 v2, 0x4

    aput-object v1, v0, v2

    const-string/jumbo v1, "SHA-512"

    const/4 v2, 0x5

    aput-object v1, v0, v2

    return-object v0
.end method

.method public static getSupportedRsaSignatureWithPkcs1PaddingDigests()[Ljava/lang/String;
    .locals 3

    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "NONE"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string/jumbo v1, "MD5"

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-string/jumbo v1, "SHA-1"

    const/4 v2, 0x2

    aput-object v1, v0, v2

    const-string/jumbo v1, "SHA-224"

    const/4 v2, 0x3

    aput-object v1, v0, v2

    const-string/jumbo v1, "SHA-256"

    const/4 v2, 0x4

    aput-object v1, v0, v2

    const-string/jumbo v1, "SHA-384"

    const/4 v2, 0x5

    aput-object v1, v0, v2

    const-string/jumbo v1, "SHA-512"

    const/4 v2, 0x6

    aput-object v1, v0, v2

    return-object v0
.end method

.method private putAsymmetricCipherImpl(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "Cipher."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Landroid/security/keystore/AndroidKeyStoreBCWorkaroundProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "Cipher."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " SupportedKeyClasses"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "android.security.keystore.AndroidKeyStorePrivateKey|android.security.keystore.AndroidKeyStorePublicKey"

    invoke-virtual {p0, v0, v1}, Landroid/security/keystore/AndroidKeyStoreBCWorkaroundProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private putMacImpl(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "Mac."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Landroid/security/keystore/AndroidKeyStoreBCWorkaroundProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "Mac."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " SupportedKeyClasses"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "android.security.keystore.AndroidKeyStoreSecretKey"

    invoke-virtual {p0, v0, v1}, Landroid/security/keystore/AndroidKeyStoreBCWorkaroundProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private putSignatureImpl(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "Signature."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Landroid/security/keystore/AndroidKeyStoreBCWorkaroundProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "Signature."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " SupportedKeyClasses"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "android.security.keystore.AndroidKeyStorePrivateKey|android.security.keystore.AndroidKeyStorePublicKey"

    invoke-virtual {p0, v0, v1}, Landroid/security/keystore/AndroidKeyStoreBCWorkaroundProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private putSymmetricCipherImpl(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "Cipher."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Landroid/security/keystore/AndroidKeyStoreBCWorkaroundProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "Cipher."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " SupportedKeyClasses"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "android.security.keystore.AndroidKeyStoreSecretKey"

    invoke-virtual {p0, v0, v1}, Landroid/security/keystore/AndroidKeyStoreBCWorkaroundProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
