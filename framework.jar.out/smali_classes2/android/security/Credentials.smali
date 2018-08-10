.class public Landroid/security/Credentials;
.super Ljava/lang/Object;
.source "Credentials.java"


# static fields
.field public static final CA_CERTIFICATE:Ljava/lang/String; = "CACERT_"

.field public static final DELETE_ALL:Ljava/lang/String; = "DELETEALL_"

.field public static final EXTENSION_CER:Ljava/lang/String; = ".cer"

.field public static final EXTENSION_CRT:Ljava/lang/String; = ".crt"

.field public static final EXTENSION_P12:Ljava/lang/String; = ".p12"

.field public static final EXTENSION_PFX:Ljava/lang/String; = ".pfx"

.field public static final EXTRA_CA_CERTIFICATES_DATA:Ljava/lang/String; = "ca_certificates_data"

.field public static final EXTRA_CA_CERTIFICATES_NAME:Ljava/lang/String; = "ca_certificates_name"

.field public static final EXTRA_INSTALL_AS_UID:Ljava/lang/String; = "install_as_uid"

.field public static final EXTRA_PRIVATE_KEY:Ljava/lang/String; = "PKEY"

.field public static final EXTRA_PUBLIC_KEY:Ljava/lang/String; = "KEY"

.field public static final EXTRA_USER_CERTIFICATE_DATA:Ljava/lang/String; = "user_certificate_data"

.field public static final EXTRA_USER_CERTIFICATE_NAME:Ljava/lang/String; = "user_certificate_name"

.field public static final EXTRA_USER_PRIVATE_KEY_DATA:Ljava/lang/String; = "user_private_key_data"

.field public static final EXTRA_USER_PRIVATE_KEY_NAME:Ljava/lang/String; = "user_private_key_name"

.field public static final EXTRA_WAPI_AS_CERTIFICATE_DATA:Ljava/lang/String; = "wapi_as_certificates_data"

.field public static final EXTRA_WAPI_AS_CERTIFICATE_NAME:Ljava/lang/String; = "wapi_as_certificates_name"

.field public static final EXTRA_WAPI_USER_CERTIFICATE_DATA:Ljava/lang/String; = "wapi_user_certificates_data"

.field public static final EXTRA_WAPI_USER_CERTIFICATE_NAME:Ljava/lang/String; = "wapi_user_certificates_name"

.field public static final INSTALL_ACTION:Ljava/lang/String; = "android.credentials.INSTALL"

.field public static final INSTALL_AS_USER_ACTION:Ljava/lang/String; = "android.credentials.INSTALL_AS_USER"

.field public static final LOCKDOWN_VPN:Ljava/lang/String; = "LOCKDOWN_VPN"

.field private static final LOGTAG:Ljava/lang/String; = "Credentials"

.field public static final UNLOCK_ACTION:Ljava/lang/String; = "com.android.credentials.UNLOCK"

.field public static final USER_CERTIFICATE:Ljava/lang/String; = "USRCERT_"

.field public static final USER_CSR:Ljava/lang/String; = "USRCSR_"

.field public static final USER_PRIVATE_KEY:Ljava/lang/String; = "USRPKEY_"

.field public static final USER_SECRET_KEY:Ljava/lang/String; = "USRSKEY_"

.field public static final VPN:Ljava/lang/String; = "VPN_"

.field public static final WAPI_AS_CERTIFICATE:Ljava/lang/String; = "WAPIAS_"

.field public static final WAPI_USER_CERTIFICATE:Ljava/lang/String; = "WAPIUSR_"

.field public static final WIFI:Ljava/lang/String; = "WIFI_"

.field private static singleton:Landroid/security/Credentials;


# instance fields
.field public mSender:Landroid/app/PendingIntent;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static convertFromPem([B)Ljava/util/List;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B)",
            "Ljava/util/List",
            "<",
            "Ljava/security/cert/X509Certificate;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    new-instance v5, Ljava/io/InputStreamReader;

    sget-object v7, Ljava/nio/charset/StandardCharsets;->US_ASCII:Ljava/nio/charset/Charset;

    invoke-direct {v5, v0, v7}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    new-instance v4, Lcom/android/org/bouncycastle/util/io/pem/PemReader;

    invoke-direct {v4, v5}, Lcom/android/org/bouncycastle/util/io/pem/PemReader;-><init>(Ljava/io/Reader;)V

    :try_start_0
    const-string/jumbo v7, "X509"

    invoke-static {v7}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    move-result-object v2

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    :goto_0
    invoke-virtual {v4}, Lcom/android/org/bouncycastle/util/io/pem/PemReader;->readPemObject()Lcom/android/org/bouncycastle/util/io/pem/PemObject;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-virtual {v3}, Lcom/android/org/bouncycastle/util/io/pem/PemObject;->getType()Ljava/lang/String;

    move-result-object v7

    const-string/jumbo v8, "CERTIFICATE"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    new-instance v7, Ljava/io/ByteArrayInputStream;

    invoke-virtual {v3}, Lcom/android/org/bouncycastle/util/io/pem/PemObject;->getContent()[B

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-virtual {v2, v7}, Ljava/security/cert/CertificateFactory;->generateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;

    move-result-object v1

    check-cast v1, Ljava/security/cert/X509Certificate;

    invoke-interface {v6, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v7

    invoke-virtual {v4}, Lcom/android/org/bouncycastle/util/io/pem/PemReader;->close()V

    throw v7

    :cond_0
    :try_start_1
    new-instance v7, Ljava/lang/IllegalArgumentException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Unknown type "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v3}, Lcom/android/org/bouncycastle/util/io/pem/PemObject;->getType()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_1
    invoke-virtual {v4}, Lcom/android/org/bouncycastle/util/io/pem/PemReader;->close()V

    return-object v6
.end method

.method public static varargs convertToPem([Ljava/security/cert/Certificate;)[B
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/security/cert/CertificateEncodingException;
        }
    .end annotation

    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    new-instance v3, Ljava/io/OutputStreamWriter;

    sget-object v4, Ljava/nio/charset/StandardCharsets;->US_ASCII:Ljava/nio/charset/Charset;

    invoke-direct {v3, v0, v4}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/nio/charset/Charset;)V

    new-instance v2, Lcom/android/org/bouncycastle/util/io/pem/PemWriter;

    invoke-direct {v2, v3}, Lcom/android/org/bouncycastle/util/io/pem/PemWriter;-><init>(Ljava/io/Writer;)V

    const/4 v4, 0x0

    array-length v5, p0

    :goto_0
    if-ge v4, v5, :cond_0

    aget-object v1, p0, v4

    new-instance v6, Lcom/android/org/bouncycastle/util/io/pem/PemObject;

    const-string/jumbo v7, "CERTIFICATE"

    invoke-virtual {v1}, Ljava/security/cert/Certificate;->getEncoded()[B

    move-result-object v8

    invoke-direct {v6, v7, v8}, Lcom/android/org/bouncycastle/util/io/pem/PemObject;-><init>(Ljava/lang/String;[B)V

    invoke-virtual {v2, v6}, Lcom/android/org/bouncycastle/util/io/pem/PemWriter;->writeObject(Lcom/android/org/bouncycastle/util/io/pem/PemObjectGenerator;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v2}, Lcom/android/org/bouncycastle/util/io/pem/PemWriter;->close()V

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v4

    return-object v4
.end method

.method public static deleteAllTypesForAlias(Landroid/security/KeyStore;Ljava/lang/String;)Z
    .locals 1

    const/4 v0, -0x1

    invoke-static {p0, p1, v0}, Landroid/security/Credentials;->deleteAllTypesForAlias(Landroid/security/KeyStore;Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method public static deleteAllTypesForAlias(Landroid/security/KeyStore;Ljava/lang/String;I)Z
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "DELETEALL_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Landroid/security/KeyStore;->delete(Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method public static deleteCSRTypeForAlias(Landroid/security/KeyStore;Ljava/lang/String;)Z
    .locals 1

    const/4 v0, -0x1

    invoke-static {p0, p1, v0}, Landroid/security/Credentials;->deleteCSRTypeForAlias(Landroid/security/KeyStore;Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method public static deleteCSRTypeForAlias(Landroid/security/KeyStore;Ljava/lang/String;I)Z
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "USRCSR_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Landroid/security/KeyStore;->delete(Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method public static deleteCertificateTypesForAlias(Landroid/security/KeyStore;Ljava/lang/String;)Z
    .locals 1

    const/4 v0, -0x1

    invoke-static {p0, p1, v0}, Landroid/security/Credentials;->deleteCertificateTypesForAlias(Landroid/security/KeyStore;Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method public static deleteCertificateTypesForAlias(Landroid/security/KeyStore;Ljava/lang/String;I)Z
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "USRCERT_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Landroid/security/KeyStore;->delete(Ljava/lang/String;I)Z

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "CACERT_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1, p2}, Landroid/security/KeyStore;->delete(Ljava/lang/String;I)Z

    move-result v1

    and-int/2addr v0, v1

    return v0
.end method

.method static deletePrivateKeyTypeForAlias(Landroid/security/KeyStore;Ljava/lang/String;)Z
    .locals 1

    const/4 v0, -0x1

    invoke-static {p0, p1, v0}, Landroid/security/Credentials;->deletePrivateKeyTypeForAlias(Landroid/security/KeyStore;Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method static deletePrivateKeyTypeForAlias(Landroid/security/KeyStore;Ljava/lang/String;I)Z
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "USRPKEY_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Landroid/security/KeyStore;->delete(Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method public static deleteSecretKeyTypeForAlias(Landroid/security/KeyStore;Ljava/lang/String;)Z
    .locals 1

    const/4 v0, -0x1

    invoke-static {p0, p1, v0}, Landroid/security/Credentials;->deleteSecretKeyTypeForAlias(Landroid/security/KeyStore;Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method public static deleteSecretKeyTypeForAlias(Landroid/security/KeyStore;Ljava/lang/String;I)Z
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "USRSKEY_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Landroid/security/KeyStore;->delete(Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method public static getInstance()Landroid/security/Credentials;
    .locals 1

    sget-object v0, Landroid/security/Credentials;->singleton:Landroid/security/Credentials;

    if-nez v0, :cond_0

    new-instance v0, Landroid/security/Credentials;

    invoke-direct {v0}, Landroid/security/Credentials;-><init>()V

    sput-object v0, Landroid/security/Credentials;->singleton:Landroid/security/Credentials;

    :cond_0
    sget-object v0, Landroid/security/Credentials;->singleton:Landroid/security/Credentials;

    return-object v0
.end method

.method public static retrievePrivateKeyEntryFromPem([B)Ljava/security/KeyStore$PrivateKeyEntry;
    .locals 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    new-instance v11, Ljava/io/InputStreamReader;

    sget-object v12, Ljava/nio/charset/StandardCharsets;->US_ASCII:Ljava/nio/charset/Charset;

    invoke-direct {v11, v0, v12}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    new-instance v8, Lcom/android/org/bouncycastle/util/io/pem/PemReader;

    invoke-direct {v8, v11}, Lcom/android/org/bouncycastle/util/io/pem/PemReader;-><init>(Ljava/io/Reader;)V

    const/4 v9, 0x0

    const/4 v5, 0x0

    :try_start_0
    const-string/jumbo v12, "X509"

    invoke-static {v12}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    move-result-object v3

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    :cond_0
    :goto_0
    invoke-virtual {v8}, Lcom/android/org/bouncycastle/util/io/pem/PemReader;->readPemObject()Lcom/android/org/bouncycastle/util/io/pem/PemObject;

    move-result-object v7

    if-eqz v7, :cond_5

    invoke-virtual {v7}, Lcom/android/org/bouncycastle/util/io/pem/PemObject;->getType()Ljava/lang/String;

    move-result-object v12

    const-string/jumbo v13, "RSA PRIVATE KEY"

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_1

    const-string/jumbo v12, "Credentials"

    const-string/jumbo v13, "RSA private key"

    invoke-static {v12, v13}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v12, "RSA"

    invoke-static {v12}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object v6

    new-instance v12, Ljava/security/spec/PKCS8EncodedKeySpec;

    invoke-virtual {v7}, Lcom/android/org/bouncycastle/util/io/pem/PemObject;->getContent()[B

    move-result-object v13

    invoke-direct {v12, v13}, Ljava/security/spec/PKCS8EncodedKeySpec;-><init>([B)V

    invoke-virtual {v6, v12}, Ljava/security/KeyFactory;->generatePrivate(Ljava/security/spec/KeySpec;)Ljava/security/PrivateKey;

    move-result-object v5

    goto :goto_0

    :cond_1
    invoke-virtual {v7}, Lcom/android/org/bouncycastle/util/io/pem/PemObject;->getType()Ljava/lang/String;

    move-result-object v12

    const-string/jumbo v13, "EC PRIVATE KEY"

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_2

    const-string/jumbo v12, "Credentials"

    const-string/jumbo v13, "EC private key"

    invoke-static {v12, v13}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v12, "EC"

    invoke-static {v12}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object v6

    new-instance v12, Ljava/security/spec/PKCS8EncodedKeySpec;

    invoke-virtual {v7}, Lcom/android/org/bouncycastle/util/io/pem/PemObject;->getContent()[B

    move-result-object v13

    invoke-direct {v12, v13}, Ljava/security/spec/PKCS8EncodedKeySpec;-><init>([B)V

    invoke-virtual {v6, v12}, Ljava/security/KeyFactory;->generatePrivate(Ljava/security/spec/KeySpec;)Ljava/security/PrivateKey;

    move-result-object v5

    goto :goto_0

    :cond_2
    invoke-virtual {v7}, Lcom/android/org/bouncycastle/util/io/pem/PemObject;->getType()Ljava/lang/String;

    move-result-object v12

    const-string/jumbo v13, "PRIVATE KEY"

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_3

    const-string/jumbo v12, "Credentials"

    const-string/jumbo v13, " private key attempting EC:"

    invoke-static {v12, v13}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    const-string/jumbo v12, "EC"

    invoke-static {v12}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object v6

    new-instance v12, Ljava/security/spec/PKCS8EncodedKeySpec;

    invoke-virtual {v7}, Lcom/android/org/bouncycastle/util/io/pem/PemObject;->getContent()[B

    move-result-object v13

    invoke-direct {v12, v13}, Ljava/security/spec/PKCS8EncodedKeySpec;-><init>([B)V

    invoke-virtual {v6, v12}, Ljava/security/KeyFactory;->generatePrivate(Ljava/security/spec/KeySpec;)Ljava/security/PrivateKey;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v5

    :goto_1
    if-nez v5, :cond_0

    :try_start_2
    const-string/jumbo v12, "Credentials"

    const-string/jumbo v13, " private key attempting RSA:"

    invoke-static {v12, v13}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v12, "RSA"

    invoke-static {v12}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object v6

    new-instance v12, Ljava/security/spec/PKCS8EncodedKeySpec;

    invoke-virtual {v7}, Lcom/android/org/bouncycastle/util/io/pem/PemObject;->getContent()[B

    move-result-object v13

    invoke-direct {v12, v13}, Ljava/security/spec/PKCS8EncodedKeySpec;-><init>([B)V

    invoke-virtual {v6, v12}, Ljava/security/KeyFactory;->generatePrivate(Ljava/security/spec/KeySpec;)Ljava/security/PrivateKey;

    move-result-object v5

    goto/16 :goto_0

    :catch_0
    move-exception v4

    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v12

    invoke-virtual {v8}, Lcom/android/org/bouncycastle/util/io/pem/PemReader;->close()V

    return-object v9

    :cond_3
    :try_start_3
    invoke-virtual {v7}, Lcom/android/org/bouncycastle/util/io/pem/PemObject;->getType()Ljava/lang/String;

    move-result-object v12

    const-string/jumbo v13, "CERTIFICATE"

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_4

    const-string/jumbo v12, "Credentials"

    const-string/jumbo v13, "certificate"

    invoke-static {v12, v13}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v12, Ljava/io/ByteArrayInputStream;

    invoke-virtual {v7}, Lcom/android/org/bouncycastle/util/io/pem/PemObject;->getContent()[B

    move-result-object v13

    invoke-direct {v12, v13}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-virtual {v3, v12}, Ljava/security/cert/CertificateFactory;->generateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;

    move-result-object v1

    check-cast v1, Ljava/security/cert/X509Certificate;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_4
    new-instance v12, Ljava/lang/IllegalArgumentException;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "Unknown type "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v7}, Lcom/android/org/bouncycastle/util/io/pem/PemObject;->getType()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-direct {v12, v13}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v12

    :cond_5
    if-eqz v5, :cond_6

    new-instance v10, Ljava/security/KeyStore$PrivateKeyEntry;

    const/4 v12, 0x0

    new-array v12, v12, [Ljava/security/cert/Certificate;

    invoke-interface {v2, v12}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v12

    check-cast v12, [Ljava/security/cert/Certificate;

    invoke-direct {v10, v5, v12}, Ljava/security/KeyStore$PrivateKeyEntry;-><init>(Ljava/security/PrivateKey;[Ljava/security/cert/Certificate;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-object v9, v10

    :cond_6
    invoke-virtual {v8}, Lcom/android/org/bouncycastle/util/io/pem/PemReader;->close()V

    return-object v9
.end method


# virtual methods
.method public install(Landroid/content/Context;)V
    .locals 4

    :try_start_0
    invoke-static {}, Landroid/security/KeyChain;->createInstallIntent()Landroid/content/Intent;

    move-result-object v1

    iget-object v2, p0, Landroid/security/Credentials;->mSender:Landroid/app/PendingIntent;

    if-eqz v2, :cond_0

    const-string/jumbo v2, "senderpackagename"

    iget-object v3, p0, Landroid/security/Credentials;->mSender:Landroid/app/PendingIntent;

    invoke-virtual {v3}, Landroid/app/PendingIntent;->getIntentSender()Landroid/content/IntentSender;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/IntentSender;->getCreatorPackage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_0
    invoke-virtual {p1, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v2, "Credentials"

    invoke-virtual {v0}, Landroid/content/ActivityNotFoundException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public install(Landroid/content/Context;Ljava/lang/String;[B)V
    .locals 4

    :try_start_0
    invoke-static {}, Landroid/security/KeyChain;->createInstallIntent()Landroid/content/Intent;

    move-result-object v1

    iget-object v2, p0, Landroid/security/Credentials;->mSender:Landroid/app/PendingIntent;

    if-eqz v2, :cond_0

    const-string/jumbo v2, "senderpackagename"

    iget-object v3, p0, Landroid/security/Credentials;->mSender:Landroid/app/PendingIntent;

    invoke-virtual {v3}, Landroid/app/PendingIntent;->getIntentSender()Landroid/content/IntentSender;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/IntentSender;->getCreatorPackage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_0
    invoke-virtual {v1, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    invoke-virtual {p1, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v2, "Credentials"

    invoke-virtual {v0}, Landroid/content/ActivityNotFoundException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public install(Landroid/content/Context;Ljava/security/KeyPair;)V
    .locals 4

    :try_start_0
    invoke-static {}, Landroid/security/KeyChain;->createInstallIntent()Landroid/content/Intent;

    move-result-object v1

    iget-object v2, p0, Landroid/security/Credentials;->mSender:Landroid/app/PendingIntent;

    if-eqz v2, :cond_0

    const-string/jumbo v2, "senderpackagename"

    iget-object v3, p0, Landroid/security/Credentials;->mSender:Landroid/app/PendingIntent;

    invoke-virtual {v3}, Landroid/app/PendingIntent;->getIntentSender()Landroid/content/IntentSender;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/IntentSender;->getCreatorPackage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_0
    const-string/jumbo v2, "PKEY"

    invoke-virtual {p2}, Ljava/security/KeyPair;->getPrivate()Ljava/security/PrivateKey;

    move-result-object v3

    invoke-interface {v3}, Ljava/security/PrivateKey;->getEncoded()[B

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    const-string/jumbo v2, "KEY"

    invoke-virtual {p2}, Ljava/security/KeyPair;->getPublic()Ljava/security/PublicKey;

    move-result-object v3

    invoke-interface {v3}, Ljava/security/PublicKey;->getEncoded()[B

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    invoke-virtual {p1, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v2, "Credentials"

    invoke-virtual {v0}, Landroid/content/ActivityNotFoundException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public unlock(Landroid/content/Context;)V
    .locals 4

    :try_start_0
    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v2, "com.android.credentials.UNLOCK"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v2, "Credentials"

    invoke-virtual {v0}, Landroid/content/ActivityNotFoundException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
