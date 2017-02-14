.class public final Lsun/security/provider/certpath/OCSP;
.super Ljava/lang/Object;
.source "OCSP.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lsun/security/provider/certpath/OCSP$RevocationStatus;
    }
.end annotation


# static fields
.field private static final CONNECT_TIMEOUT:I

.field private static final DEFAULT_CONNECT_TIMEOUT:I = 0x3a98

.field static final NONCE_EXTENSION_OID:Lsun/security/util/ObjectIdentifier;

.field private static final debug:Lsun/security/util/Debug;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0xa

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    invoke-static {v0}, Lsun/security/util/ObjectIdentifier;->newInternal([I)Lsun/security/util/ObjectIdentifier;

    move-result-object v0

    sput-object v0, Lsun/security/provider/certpath/OCSP;->NONCE_EXTENSION_OID:Lsun/security/util/ObjectIdentifier;

    const-string/jumbo v0, "certpath"

    invoke-static {v0}, Lsun/security/util/Debug;->getInstance(Ljava/lang/String;)Lsun/security/util/Debug;

    move-result-object v0

    sput-object v0, Lsun/security/provider/certpath/OCSP;->debug:Lsun/security/util/Debug;

    invoke-static {}, Lsun/security/provider/certpath/OCSP;->initializeTimeout()I

    move-result v0

    sput v0, Lsun/security/provider/certpath/OCSP;->CONNECT_TIMEOUT:I

    return-void

    nop

    :array_0
    .array-data 4
        0x1
        0x3
        0x6
        0x1
        0x5
        0x5
        0x7
        0x30
        0x1
        0x2
    .end array-data
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static check(Ljava/security/cert/X509Certificate;Ljava/security/cert/X509Certificate;)Lsun/security/provider/certpath/OCSP$RevocationStatus;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/security/cert/CertPathValidatorException;
        }
    .end annotation

    const/4 v3, 0x0

    const/4 v6, 0x0

    const/4 v1, 0x0

    :try_start_0
    invoke-static {p0}, Lsun/security/x509/X509CertImpl;->toImpl(Ljava/security/cert/X509Certificate;)Lsun/security/x509/X509CertImpl;

    move-result-object v7

    invoke-static {v7}, Lsun/security/provider/certpath/OCSP;->getResponderURI(Lsun/security/x509/X509CertImpl;)Ljava/net/URI;

    move-result-object v1

    if-nez v1, :cond_0

    new-instance v0, Ljava/security/cert/CertPathValidatorException;

    const-string/jumbo v2, "No OCSP Responder URI in certificate"

    invoke-direct {v0, v2}, Ljava/security/cert/CertPathValidatorException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/security/cert/CertificateException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v8

    new-instance v0, Ljava/security/cert/CertPathValidatorException;

    const-string/jumbo v2, "Exception while encoding OCSPRequest"

    invoke-direct {v0, v2, v8}, Ljava/security/cert/CertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :cond_0
    :try_start_1
    new-instance v6, Lsun/security/provider/certpath/CertId;

    invoke-virtual {v7}, Lsun/security/x509/X509CertImpl;->getSerialNumberObject()Lsun/security/x509/SerialNumber;

    move-result-object v0

    invoke-direct {v6, p1, v0}, Lsun/security/provider/certpath/CertId;-><init>(Ljava/security/cert/X509Certificate;Lsun/security/x509/SerialNumber;)V
    :try_end_1
    .catch Ljava/security/cert/CertificateException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    invoke-static {v6}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v5

    move-object v2, p1

    move-object v4, v3

    invoke-static/range {v0 .. v5}, Lsun/security/provider/certpath/OCSP;->check(Ljava/util/List;Ljava/net/URI;Ljava/security/cert/X509Certificate;Ljava/security/cert/X509Certificate;Ljava/util/Date;Ljava/util/List;)Lsun/security/provider/certpath/OCSPResponse;

    move-result-object v9

    invoke-virtual {v9, v6}, Lsun/security/provider/certpath/OCSPResponse;->getSingleResponse(Lsun/security/provider/certpath/CertId;)Lsun/security/provider/certpath/OCSPResponse$SingleResponse;

    move-result-object v0

    return-object v0
.end method

.method public static check(Ljava/security/cert/X509Certificate;Ljava/security/cert/X509Certificate;Ljava/net/URI;Ljava/security/cert/X509Certificate;Ljava/util/Date;)Lsun/security/provider/certpath/OCSP$RevocationStatus;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/security/cert/CertPathValidatorException;
        }
    .end annotation

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v5

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-static/range {v0 .. v5}, Lsun/security/provider/certpath/OCSP;->check(Ljava/security/cert/X509Certificate;Ljava/security/cert/X509Certificate;Ljava/net/URI;Ljava/security/cert/X509Certificate;Ljava/util/Date;Ljava/util/List;)Lsun/security/provider/certpath/OCSP$RevocationStatus;

    move-result-object v0

    return-object v0
.end method

.method public static check(Ljava/security/cert/X509Certificate;Ljava/security/cert/X509Certificate;Ljava/net/URI;Ljava/security/cert/X509Certificate;Ljava/util/Date;Ljava/util/List;)Lsun/security/provider/certpath/OCSP$RevocationStatus;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/security/cert/X509Certificate;",
            "Ljava/security/cert/X509Certificate;",
            "Ljava/net/URI;",
            "Ljava/security/cert/X509Certificate;",
            "Ljava/util/Date;",
            "Ljava/util/List",
            "<",
            "Ljava/security/cert/Extension;",
            ">;)",
            "Lsun/security/provider/certpath/OCSP$RevocationStatus;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/security/cert/CertPathValidatorException;
        }
    .end annotation

    const/4 v6, 0x0

    :try_start_0
    invoke-static {p0}, Lsun/security/x509/X509CertImpl;->toImpl(Ljava/security/cert/X509Certificate;)Lsun/security/x509/X509CertImpl;

    move-result-object v7

    new-instance v6, Lsun/security/provider/certpath/CertId;

    invoke-virtual {v7}, Lsun/security/x509/X509CertImpl;->getSerialNumberObject()Lsun/security/x509/SerialNumber;

    move-result-object v0

    invoke-direct {v6, p1, v0}, Lsun/security/provider/certpath/CertId;-><init>(Ljava/security/cert/X509Certificate;Lsun/security/x509/SerialNumber;)V
    :try_end_0
    .catch Ljava/security/cert/CertificateException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-static {v6}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    move-object v1, p2

    move-object v2, p1

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-static/range {v0 .. v5}, Lsun/security/provider/certpath/OCSP;->check(Ljava/util/List;Ljava/net/URI;Ljava/security/cert/X509Certificate;Ljava/security/cert/X509Certificate;Ljava/util/Date;Ljava/util/List;)Lsun/security/provider/certpath/OCSPResponse;

    move-result-object v9

    invoke-virtual {v9, v6}, Lsun/security/provider/certpath/OCSPResponse;->getSingleResponse(Lsun/security/provider/certpath/CertId;)Lsun/security/provider/certpath/OCSPResponse$SingleResponse;

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v8

    new-instance v0, Ljava/security/cert/CertPathValidatorException;

    const-string/jumbo v1, "Exception while encoding OCSPRequest"

    invoke-direct {v0, v1, v8}, Ljava/security/cert/CertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method static check(Ljava/util/List;Ljava/net/URI;Ljava/security/cert/X509Certificate;Ljava/security/cert/X509Certificate;Ljava/util/Date;Ljava/util/List;)Lsun/security/provider/certpath/OCSPResponse;
    .locals 23
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lsun/security/provider/certpath/CertId;",
            ">;",
            "Ljava/net/URI;",
            "Ljava/security/cert/X509Certificate;",
            "Ljava/security/cert/X509Certificate;",
            "Ljava/util/Date;",
            "Ljava/util/List",
            "<",
            "Ljava/security/cert/Extension;",
            ">;)",
            "Lsun/security/provider/certpath/OCSPResponse;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/security/cert/CertPathValidatorException;
        }
    .end annotation

    const/4 v12, 0x0

    const/16 v18, 0x0

    :try_start_0
    new-instance v19, Lsun/security/provider/certpath/OCSPRequest;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    move-object/from16 v2, p5

    invoke-direct {v0, v1, v2}, Lsun/security/provider/certpath/OCSPRequest;-><init>(Ljava/util/List;Ljava/util/List;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    invoke-virtual/range {v19 .. v19}, Lsun/security/provider/certpath/OCSPRequest;->encodeBytes()[B
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_7

    move-result-object v12

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v20, 0x0

    :try_start_2
    invoke-virtual/range {p1 .. p1}, Ljava/net/URI;->toURL()Ljava/net/URL;

    move-result-object v22

    sget-object v3, Lsun/security/provider/certpath/OCSP;->debug:Lsun/security/util/Debug;

    if-eqz v3, :cond_0

    sget-object v3, Lsun/security/provider/certpath/OCSP;->debug:Lsun/security/util/Debug;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "connecting to OCSP service at: "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v22

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    :cond_0
    invoke-virtual/range {v22 .. v22}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v13

    check-cast v13, Ljava/net/HttpURLConnection;

    sget v3, Lsun/security/provider/certpath/OCSP;->CONNECT_TIMEOUT:I

    invoke-virtual {v13, v3}, Ljava/net/URLConnection;->setConnectTimeout(I)V

    sget v3, Lsun/security/provider/certpath/OCSP;->CONNECT_TIMEOUT:I

    invoke-virtual {v13, v3}, Ljava/net/URLConnection;->setReadTimeout(I)V

    const/4 v3, 0x1

    invoke-virtual {v13, v3}, Ljava/net/URLConnection;->setDoOutput(Z)V

    const/4 v3, 0x1

    invoke-virtual {v13, v3}, Ljava/net/URLConnection;->setDoInput(Z)V

    const-string/jumbo v3, "POST"

    invoke-virtual {v13, v3}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    const-string/jumbo v3, "Content-type"

    const-string/jumbo v4, "application/ocsp-request"

    invoke-virtual {v13, v3, v4}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v3, "Content-length"

    array-length v4, v12

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v13, v3, v4}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v13}, Ljava/net/URLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v12}, Ljava/io/OutputStream;->write([B)V

    invoke-virtual/range {v17 .. v17}, Ljava/io/OutputStream;->flush()V

    sget-object v3, Lsun/security/provider/certpath/OCSP;->debug:Lsun/security/util/Debug;

    if-eqz v3, :cond_1

    invoke-virtual {v13}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v3

    const/16 v4, 0xc8

    if-eq v3, v4, :cond_1

    sget-object v3, Lsun/security/provider/certpath/OCSP;->debug:Lsun/security/util/Debug;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Received HTTP error: "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v13}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v7, " - "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v13}, Ljava/net/HttpURLConnection;->getResponseMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    :cond_1
    invoke-virtual {v13}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v16

    invoke-virtual {v13}, Ljava/net/URLConnection;->getContentLength()I

    move-result v14

    const/4 v3, -0x1

    if-ne v14, v3, :cond_2

    const v14, 0x7fffffff

    :cond_2
    const/16 v3, 0x800

    if-le v14, v3, :cond_7

    const/16 v3, 0x800

    :goto_0
    new-array v0, v3, [B

    move-object/from16 v20, v0

    const/16 v21, 0x0

    :cond_3
    :goto_1
    move/from16 v0, v21

    if-ge v0, v14, :cond_4

    move-object/from16 v0, v20

    array-length v3, v0

    sub-int v3, v3, v21

    move-object/from16 v0, v16

    move-object/from16 v1, v20

    move/from16 v2, v21

    invoke-virtual {v0, v1, v2, v3}, Ljava/io/InputStream;->read([BII)I

    move-result v15

    if-gez v15, :cond_8

    :cond_4
    invoke-static/range {v20 .. v21}, Ljava/util/Arrays;->copyOf([BI)[B
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v20

    if-eqz v16, :cond_5

    :try_start_3
    invoke-virtual/range {v16 .. v16}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    :cond_5
    if-eqz v17, :cond_6

    :try_start_4
    invoke-virtual/range {v17 .. v17}, Ljava/io/OutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    :cond_6
    const/4 v6, 0x0

    :try_start_5
    new-instance v6, Lsun/security/provider/certpath/OCSPResponse;

    move-object/from16 v0, v20

    invoke-direct {v6, v0}, Lsun/security/provider/certpath/OCSPResponse;-><init>([B)V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_6

    invoke-virtual/range {v19 .. v19}, Lsun/security/provider/certpath/OCSPRequest;->getNonce()[B

    move-result-object v11

    move-object/from16 v7, p0

    move-object/from16 v8, p2

    move-object/from16 v9, p3

    move-object/from16 v10, p4

    invoke-virtual/range {v6 .. v11}, Lsun/security/provider/certpath/OCSPResponse;->verify(Ljava/util/List;Ljava/security/cert/X509Certificate;Ljava/security/cert/X509Certificate;Ljava/util/Date;[B)V

    return-object v6

    :catch_0
    move-exception v5

    :goto_2
    new-instance v3, Ljava/security/cert/CertPathValidatorException;

    const-string/jumbo v4, "Exception while encoding OCSPRequest"

    invoke-direct {v3, v4, v5}, Ljava/security/cert/CertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    :cond_7
    move v3, v14

    goto :goto_0

    :cond_8
    add-int v21, v21, v15

    :try_start_6
    move-object/from16 v0, v20

    array-length v3, v0

    move/from16 v0, v21

    if-lt v0, v3, :cond_3

    move/from16 v0, v21

    if-ge v0, v14, :cond_3

    mul-int/lit8 v3, v21, 0x2

    move-object/from16 v0, v20

    invoke-static {v0, v3}, Ljava/util/Arrays;->copyOf([BI)[B
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    move-result-object v20

    goto :goto_1

    :catch_1
    move-exception v5

    throw v5

    :catch_2
    move-exception v5

    throw v5

    :catch_3
    move-exception v5

    :try_start_7
    new-instance v3, Ljava/security/cert/CertPathValidatorException;

    const-string/jumbo v4, "Unable to determine revocation status due to network error"

    sget-object v8, Ljava/security/cert/CertPathValidatorException$BasicReason;->UNDETERMINED_REVOCATION_STATUS:Ljava/security/cert/CertPathValidatorException$BasicReason;

    const/4 v6, 0x0

    const/4 v7, -0x1

    invoke-direct/range {v3 .. v8}, Ljava/security/cert/CertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;ILjava/security/cert/CertPathValidatorException$Reason;)V

    throw v3
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    :catchall_0
    move-exception v3

    if-eqz v16, :cond_9

    :try_start_8
    invoke-virtual/range {v16 .. v16}, Ljava/io/InputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_4

    :cond_9
    if-eqz v17, :cond_a

    :try_start_9
    invoke-virtual/range {v17 .. v17}, Ljava/io/OutputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_5

    :cond_a
    throw v3

    :catch_4
    move-exception v5

    throw v5

    :catch_5
    move-exception v5

    throw v5

    :catch_6
    move-exception v5

    new-instance v3, Ljava/security/cert/CertPathValidatorException;

    invoke-direct {v3, v5}, Ljava/security/cert/CertPathValidatorException;-><init>(Ljava/lang/Throwable;)V

    throw v3

    :catch_7
    move-exception v5

    move-object/from16 v18, v19

    goto :goto_2
.end method

.method public static getResponderURI(Ljava/security/cert/X509Certificate;)Ljava/net/URI;
    .locals 2

    :try_start_0
    invoke-static {p0}, Lsun/security/x509/X509CertImpl;->toImpl(Ljava/security/cert/X509Certificate;)Lsun/security/x509/X509CertImpl;

    move-result-object v1

    invoke-static {v1}, Lsun/security/provider/certpath/OCSP;->getResponderURI(Lsun/security/x509/X509CertImpl;)Ljava/net/URI;
    :try_end_0
    .catch Ljava/security/cert/CertificateException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    :catch_0
    move-exception v0

    const/4 v1, 0x0

    return-object v1
.end method

.method static getResponderURI(Lsun/security/x509/X509CertImpl;)Ljava/net/URI;
    .locals 9

    const/4 v8, 0x0

    invoke-virtual {p0}, Lsun/security/x509/X509CertImpl;->getAuthorityInfoAccessExtension()Lsun/security/x509/AuthorityInfoAccessExtension;

    move-result-object v0

    if-nez v0, :cond_0

    return-object v8

    :cond_0
    invoke-virtual {v0}, Lsun/security/x509/AuthorityInfoAccessExtension;->getAccessDescriptions()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lsun/security/x509/AccessDescription;

    invoke-virtual {v1}, Lsun/security/x509/AccessDescription;->getAccessMethod()Lsun/security/util/ObjectIdentifier;

    move-result-object v6

    sget-object v7, Lsun/security/x509/AccessDescription;->Ad_OCSP_Id:Lsun/security/util/ObjectIdentifier;

    invoke-virtual {v6, v7}, Lsun/security/util/ObjectIdentifier;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-virtual {v1}, Lsun/security/x509/AccessDescription;->getAccessLocation()Lsun/security/x509/GeneralName;

    move-result-object v4

    invoke-virtual {v4}, Lsun/security/x509/GeneralName;->getType()I

    move-result v6

    const/4 v7, 0x6

    if-ne v6, v7, :cond_1

    invoke-virtual {v4}, Lsun/security/x509/GeneralName;->getName()Lsun/security/x509/GeneralNameInterface;

    move-result-object v5

    check-cast v5, Lsun/security/x509/URIName;

    invoke-virtual {v5}, Lsun/security/x509/URIName;->getURI()Ljava/net/URI;

    move-result-object v6

    return-object v6

    :cond_2
    return-object v8
.end method

.method private static initializeTimeout()I
    .locals 3

    new-instance v1, Lsun/security/action/GetIntegerAction;

    const-string/jumbo v2, "com.sun.security.ocsp.timeout"

    invoke-direct {v1, v2}, Lsun/security/action/GetIntegerAction;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-gez v1, :cond_1

    :cond_0
    const/16 v1, 0x3a98

    return v1

    :cond_1
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    mul-int/lit16 v1, v1, 0x3e8

    return v1
.end method
