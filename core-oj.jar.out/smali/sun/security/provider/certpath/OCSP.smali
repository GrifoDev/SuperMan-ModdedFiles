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

    .prologue
    .line 69
    const/16 v0, 0xa

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    invoke-static {v0}, Lsun/security/util/ObjectIdentifier;->newInternal([I)Lsun/security/util/ObjectIdentifier;

    move-result-object v0

    .line 68
    sput-object v0, Lsun/security/provider/certpath/OCSP;->NONCE_EXTENSION_OID:Lsun/security/util/ObjectIdentifier;

    .line 71
    const-string/jumbo v0, "certpath"

    invoke-static {v0}, Lsun/security/util/Debug;->getInstance(Ljava/lang/String;)Lsun/security/util/Debug;

    move-result-object v0

    sput-object v0, Lsun/security/provider/certpath/OCSP;->debug:Lsun/security/util/Debug;

    .line 80
    invoke-static {}, Lsun/security/provider/certpath/OCSP;->initializeTimeout()I

    move-result v0

    sput v0, Lsun/security/provider/certpath/OCSP;->CONNECT_TIMEOUT:I

    .line 66
    return-void

    .line 69
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

    .prologue
    .line 98
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static check(Ljava/security/cert/X509Certificate;Ljava/security/cert/X509Certificate;)Lsun/security/provider/certpath/OCSP$RevocationStatus;
    .locals 10
    .param p0, "cert"    # Ljava/security/cert/X509Certificate;
    .param p1, "issuerCert"    # Ljava/security/cert/X509Certificate;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/security/cert/CertPathValidatorException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 117
    const/4 v6, 0x0

    .line 118
    .local v6, "certId":Lsun/security/provider/certpath/CertId;
    const/4 v1, 0x0

    .line 120
    .local v1, "responderURI":Ljava/net/URI;
    :try_start_0
    invoke-static {p0}, Lsun/security/x509/X509CertImpl;->toImpl(Ljava/security/cert/X509Certificate;)Lsun/security/x509/X509CertImpl;

    move-result-object v7

    .line 121
    .local v7, "certImpl":Lsun/security/x509/X509CertImpl;
    invoke-static {v7}, Lsun/security/provider/certpath/OCSP;->getResponderURI(Lsun/security/x509/X509CertImpl;)Ljava/net/URI;

    move-result-object v1

    .line 122
    .local v1, "responderURI":Ljava/net/URI;
    if-nez v1, :cond_0

    .line 123
    new-instance v0, Ljava/security/cert/CertPathValidatorException;

    .line 124
    const-string/jumbo v2, "No OCSP Responder URI in certificate"

    .line 123
    invoke-direct {v0, v2}, Ljava/security/cert/CertPathValidatorException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/security/cert/CertificateException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 127
    .end local v1    # "responderURI":Ljava/net/URI;
    .end local v6    # "certId":Lsun/security/provider/certpath/CertId;
    .end local v7    # "certImpl":Lsun/security/x509/X509CertImpl;
    :catch_0
    move-exception v8

    .line 128
    .local v8, "e":Ljava/lang/Exception;
    new-instance v0, Ljava/security/cert/CertPathValidatorException;

    .line 129
    const-string/jumbo v2, "Exception while encoding OCSPRequest"

    .line 128
    invoke-direct {v0, v2, v8}, Ljava/security/cert/CertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    .line 126
    .end local v8    # "e":Ljava/lang/Exception;
    .restart local v1    # "responderURI":Ljava/net/URI;
    .restart local v6    # "certId":Lsun/security/provider/certpath/CertId;
    .restart local v7    # "certImpl":Lsun/security/x509/X509CertImpl;
    :cond_0
    :try_start_1
    new-instance v6, Lsun/security/provider/certpath/CertId;

    .end local v6    # "certId":Lsun/security/provider/certpath/CertId;
    invoke-virtual {v7}, Lsun/security/x509/X509CertImpl;->getSerialNumberObject()Lsun/security/x509/SerialNumber;

    move-result-object v0

    invoke-direct {v6, p1, v0}, Lsun/security/provider/certpath/CertId;-><init>(Ljava/security/cert/X509Certificate;Lsun/security/x509/SerialNumber;)V
    :try_end_1
    .catch Ljava/security/cert/CertificateException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 131
    .local v6, "certId":Lsun/security/provider/certpath/CertId;
    invoke-static {v6}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 133
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v5

    move-object v2, p1

    move-object v4, v3

    .line 131
    invoke-static/range {v0 .. v5}, Lsun/security/provider/certpath/OCSP;->check(Ljava/util/List;Ljava/net/URI;Ljava/security/cert/X509Certificate;Ljava/security/cert/X509Certificate;Ljava/util/Date;Ljava/util/List;)Lsun/security/provider/certpath/OCSPResponse;

    move-result-object v9

    .line 134
    .local v9, "ocspResponse":Lsun/security/provider/certpath/OCSPResponse;
    invoke-virtual {v9, v6}, Lsun/security/provider/certpath/OCSPResponse;->getSingleResponse(Lsun/security/provider/certpath/CertId;)Lsun/security/provider/certpath/OCSPResponse$SingleResponse;

    move-result-object v0

    return-object v0
.end method

.method public static check(Ljava/security/cert/X509Certificate;Ljava/security/cert/X509Certificate;Ljava/net/URI;Ljava/security/cert/X509Certificate;Ljava/util/Date;)Lsun/security/provider/certpath/OCSP$RevocationStatus;
    .locals 6
    .param p0, "cert"    # Ljava/security/cert/X509Certificate;
    .param p1, "issuerCert"    # Ljava/security/cert/X509Certificate;
    .param p2, "responderURI"    # Ljava/net/URI;
    .param p3, "responderCert"    # Ljava/security/cert/X509Certificate;
    .param p4, "date"    # Ljava/util/Date;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/security/cert/CertPathValidatorException;
        }
    .end annotation

    .prologue
    .line 160
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v5

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    .line 159
    invoke-static/range {v0 .. v5}, Lsun/security/provider/certpath/OCSP;->check(Ljava/security/cert/X509Certificate;Ljava/security/cert/X509Certificate;Ljava/net/URI;Ljava/security/cert/X509Certificate;Ljava/util/Date;Ljava/util/List;)Lsun/security/provider/certpath/OCSP$RevocationStatus;

    move-result-object v0

    return-object v0
.end method

.method public static check(Ljava/security/cert/X509Certificate;Ljava/security/cert/X509Certificate;Ljava/net/URI;Ljava/security/cert/X509Certificate;Ljava/util/Date;Ljava/util/List;)Lsun/security/provider/certpath/OCSP$RevocationStatus;
    .locals 10
    .param p0, "cert"    # Ljava/security/cert/X509Certificate;
    .param p1, "issuerCert"    # Ljava/security/cert/X509Certificate;
    .param p2, "responderURI"    # Ljava/net/URI;
    .param p3, "responderCert"    # Ljava/security/cert/X509Certificate;
    .param p4, "date"    # Ljava/util/Date;
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

    .prologue
    .line 171
    .local p5, "extensions":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/Extension;>;"
    const/4 v6, 0x0

    .line 173
    .local v6, "certId":Lsun/security/provider/certpath/CertId;
    :try_start_0
    invoke-static {p0}, Lsun/security/x509/X509CertImpl;->toImpl(Ljava/security/cert/X509Certificate;)Lsun/security/x509/X509CertImpl;

    move-result-object v7

    .line 174
    .local v7, "certImpl":Lsun/security/x509/X509CertImpl;
    new-instance v6, Lsun/security/provider/certpath/CertId;

    .end local v6    # "certId":Lsun/security/provider/certpath/CertId;
    invoke-virtual {v7}, Lsun/security/x509/X509CertImpl;->getSerialNumberObject()Lsun/security/x509/SerialNumber;

    move-result-object v0

    invoke-direct {v6, p1, v0}, Lsun/security/provider/certpath/CertId;-><init>(Ljava/security/cert/X509Certificate;Lsun/security/x509/SerialNumber;)V
    :try_end_0
    .catch Ljava/security/cert/CertificateException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 179
    .local v6, "certId":Lsun/security/provider/certpath/CertId;
    invoke-static {v6}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    move-object v1, p2

    move-object v2, p1

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-static/range {v0 .. v5}, Lsun/security/provider/certpath/OCSP;->check(Ljava/util/List;Ljava/net/URI;Ljava/security/cert/X509Certificate;Ljava/security/cert/X509Certificate;Ljava/util/Date;Ljava/util/List;)Lsun/security/provider/certpath/OCSPResponse;

    move-result-object v9

    .line 181
    .local v9, "ocspResponse":Lsun/security/provider/certpath/OCSPResponse;
    invoke-virtual {v9, v6}, Lsun/security/provider/certpath/OCSPResponse;->getSingleResponse(Lsun/security/provider/certpath/CertId;)Lsun/security/provider/certpath/OCSPResponse$SingleResponse;

    move-result-object v0

    return-object v0

    .line 175
    .end local v6    # "certId":Lsun/security/provider/certpath/CertId;
    .end local v7    # "certImpl":Lsun/security/x509/X509CertImpl;
    .end local v9    # "ocspResponse":Lsun/security/provider/certpath/OCSPResponse;
    :catch_0
    move-exception v8

    .line 176
    .local v8, "e":Ljava/lang/Exception;
    new-instance v0, Ljava/security/cert/CertPathValidatorException;

    .line 177
    const-string/jumbo v1, "Exception while encoding OCSPRequest"

    .line 176
    invoke-direct {v0, v1, v8}, Ljava/security/cert/CertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method static check(Ljava/util/List;Ljava/net/URI;Ljava/security/cert/X509Certificate;Ljava/security/cert/X509Certificate;Ljava/util/Date;Ljava/util/List;)Lsun/security/provider/certpath/OCSPResponse;
    .locals 23
    .param p1, "responderURI"    # Ljava/net/URI;
    .param p2, "issuerCert"    # Ljava/security/cert/X509Certificate;
    .param p3, "responderCert"    # Ljava/security/cert/X509Certificate;
    .param p4, "date"    # Ljava/util/Date;
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

    .prologue
    .line 205
    .local p0, "certIds":Ljava/util/List;, "Ljava/util/List<Lsun/security/provider/certpath/CertId;>;"
    .local p5, "extensions":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/Extension;>;"
    const/4 v12, 0x0

    .line 206
    .local v12, "bytes":[B
    const/16 v18, 0x0

    .line 208
    .local v18, "request":Lsun/security/provider/certpath/OCSPRequest;
    :try_start_0
    new-instance v19, Lsun/security/provider/certpath/OCSPRequest;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    move-object/from16 v2, p5

    invoke-direct {v0, v1, v2}, Lsun/security/provider/certpath/OCSPRequest;-><init>(Ljava/util/List;Ljava/util/List;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 209
    .local v19, "request":Lsun/security/provider/certpath/OCSPRequest;
    :try_start_1
    invoke-virtual/range {v19 .. v19}, Lsun/security/provider/certpath/OCSPRequest;->encodeBytes()[B
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_7

    .end local v18    # "request":Lsun/security/provider/certpath/OCSPRequest;
    move-result-object v12

    .line 215
    .local v12, "bytes":[B
    const/16 v16, 0x0

    .line 216
    .local v16, "in":Ljava/io/InputStream;
    const/16 v17, 0x0

    .line 217
    .local v17, "out":Ljava/io/OutputStream;
    const/16 v20, 0x0

    .line 219
    .local v20, "response":[B
    :try_start_2
    invoke-virtual/range {p1 .. p1}, Ljava/net/URI;->toURL()Ljava/net/URL;

    move-result-object v22

    .line 220
    .local v22, "url":Ljava/net/URL;
    sget-object v3, Lsun/security/provider/certpath/OCSP;->debug:Lsun/security/util/Debug;

    if-eqz v3, :cond_0

    .line 221
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

    .line 223
    :cond_0
    invoke-virtual/range {v22 .. v22}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v13

    check-cast v13, Ljava/net/HttpURLConnection;

    .line 224
    .local v13, "con":Ljava/net/HttpURLConnection;
    sget v3, Lsun/security/provider/certpath/OCSP;->CONNECT_TIMEOUT:I

    invoke-virtual {v13, v3}, Ljava/net/URLConnection;->setConnectTimeout(I)V

    .line 225
    sget v3, Lsun/security/provider/certpath/OCSP;->CONNECT_TIMEOUT:I

    invoke-virtual {v13, v3}, Ljava/net/URLConnection;->setReadTimeout(I)V

    .line 226
    const/4 v3, 0x1

    invoke-virtual {v13, v3}, Ljava/net/URLConnection;->setDoOutput(Z)V

    .line 227
    const/4 v3, 0x1

    invoke-virtual {v13, v3}, Ljava/net/URLConnection;->setDoInput(Z)V

    .line 228
    const-string/jumbo v3, "POST"

    invoke-virtual {v13, v3}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 230
    const-string/jumbo v3, "Content-type"

    const-string/jumbo v4, "application/ocsp-request"

    .line 229
    invoke-virtual {v13, v3, v4}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 232
    const-string/jumbo v3, "Content-length"

    array-length v4, v12

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    .line 231
    invoke-virtual {v13, v3, v4}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 233
    invoke-virtual {v13}, Ljava/net/URLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v17

    .line 234
    .local v17, "out":Ljava/io/OutputStream;
    move-object/from16 v0, v17

    invoke-virtual {v0, v12}, Ljava/io/OutputStream;->write([B)V

    .line 235
    invoke-virtual/range {v17 .. v17}, Ljava/io/OutputStream;->flush()V

    .line 237
    sget-object v3, Lsun/security/provider/certpath/OCSP;->debug:Lsun/security/util/Debug;

    if-eqz v3, :cond_1

    .line 238
    invoke-virtual {v13}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v3

    const/16 v4, 0xc8

    if-eq v3, v4, :cond_1

    .line 239
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

    .line 240
    const-string/jumbo v7, " - "

    .line 239
    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 240
    invoke-virtual {v13}, Ljava/net/HttpURLConnection;->getResponseMessage()Ljava/lang/String;

    move-result-object v7

    .line 239
    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    .line 242
    :cond_1
    invoke-virtual {v13}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v16

    .line 243
    .local v16, "in":Ljava/io/InputStream;
    invoke-virtual {v13}, Ljava/net/URLConnection;->getContentLength()I

    move-result v14

    .line 244
    .local v14, "contentLength":I
    const/4 v3, -0x1

    if-ne v14, v3, :cond_2

    .line 245
    const v14, 0x7fffffff

    .line 247
    :cond_2
    const/16 v3, 0x800

    if-le v14, v3, :cond_7

    const/16 v3, 0x800

    :goto_0
    new-array v0, v3, [B

    move-object/from16 v20, v0

    .line 248
    .local v20, "response":[B
    const/16 v21, 0x0

    .line 249
    .local v21, "total":I
    :cond_3
    :goto_1
    move/from16 v0, v21

    if-ge v0, v14, :cond_4

    .line 250
    move-object/from16 v0, v20

    array-length v3, v0

    sub-int v3, v3, v21

    move-object/from16 v0, v16

    move-object/from16 v1, v20

    move/from16 v2, v21

    invoke-virtual {v0, v1, v2, v3}, Ljava/io/InputStream;->read([BII)I

    move-result v15

    .line 251
    .local v15, "count":I
    if-gez v15, :cond_8

    .line 259
    .end local v15    # "count":I
    :cond_4
    invoke-static/range {v20 .. v21}, Ljava/util/Arrays;->copyOf([BI)[B
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v20

    .line 265
    if-eqz v16, :cond_5

    .line 267
    :try_start_3
    invoke-virtual/range {v16 .. v16}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    .line 272
    :cond_5
    if-eqz v17, :cond_6

    .line 274
    :try_start_4
    invoke-virtual/range {v17 .. v17}, Ljava/io/OutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    .line 281
    :cond_6
    const/4 v6, 0x0

    .line 283
    .local v6, "ocspResponse":Lsun/security/provider/certpath/OCSPResponse;
    :try_start_5
    new-instance v6, Lsun/security/provider/certpath/OCSPResponse;

    .end local v6    # "ocspResponse":Lsun/security/provider/certpath/OCSPResponse;
    move-object/from16 v0, v20

    invoke-direct {v6, v0}, Lsun/security/provider/certpath/OCSPResponse;-><init>([B)V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_6

    .line 291
    .local v6, "ocspResponse":Lsun/security/provider/certpath/OCSPResponse;
    invoke-virtual/range {v19 .. v19}, Lsun/security/provider/certpath/OCSPRequest;->getNonce()[B

    move-result-object v11

    move-object/from16 v7, p0

    move-object/from16 v8, p2

    move-object/from16 v9, p3

    move-object/from16 v10, p4

    .line 290
    invoke-virtual/range {v6 .. v11}, Lsun/security/provider/certpath/OCSPResponse;->verify(Ljava/util/List;Ljava/security/cert/X509Certificate;Ljava/security/cert/X509Certificate;Ljava/util/Date;[B)V

    .line 293
    return-object v6

    .line 210
    .end local v6    # "ocspResponse":Lsun/security/provider/certpath/OCSPResponse;
    .end local v13    # "con":Ljava/net/HttpURLConnection;
    .end local v14    # "contentLength":I
    .end local v16    # "in":Ljava/io/InputStream;
    .end local v17    # "out":Ljava/io/OutputStream;
    .end local v19    # "request":Lsun/security/provider/certpath/OCSPRequest;
    .end local v20    # "response":[B
    .end local v21    # "total":I
    .end local v22    # "url":Ljava/net/URL;
    .local v12, "bytes":[B
    .restart local v18    # "request":Lsun/security/provider/certpath/OCSPRequest;
    :catch_0
    move-exception v5

    .line 211
    .end local v18    # "request":Lsun/security/provider/certpath/OCSPRequest;
    .local v5, "ioe":Ljava/io/IOException;
    :goto_2
    new-instance v3, Ljava/security/cert/CertPathValidatorException;

    .line 212
    const-string/jumbo v4, "Exception while encoding OCSPRequest"

    .line 211
    invoke-direct {v3, v4, v5}, Ljava/security/cert/CertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    .end local v5    # "ioe":Ljava/io/IOException;
    .local v12, "bytes":[B
    .restart local v13    # "con":Ljava/net/HttpURLConnection;
    .restart local v14    # "contentLength":I
    .restart local v16    # "in":Ljava/io/InputStream;
    .restart local v17    # "out":Ljava/io/OutputStream;
    .restart local v19    # "request":Lsun/security/provider/certpath/OCSPRequest;
    .local v20, "response":[B
    .restart local v22    # "url":Ljava/net/URL;
    :cond_7
    move v3, v14

    .line 247
    goto :goto_0

    .line 254
    .restart local v15    # "count":I
    .local v20, "response":[B
    .restart local v21    # "total":I
    :cond_8
    add-int v21, v21, v15

    .line 255
    :try_start_6
    move-object/from16 v0, v20

    array-length v3, v0

    move/from16 v0, v21

    if-lt v0, v3, :cond_3

    move/from16 v0, v21

    if-ge v0, v14, :cond_3

    .line 256
    mul-int/lit8 v3, v21, 0x2

    move-object/from16 v0, v20

    invoke-static {v0, v3}, Ljava/util/Arrays;->copyOf([BI)[B
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    move-result-object v20

    goto :goto_1

    .line 268
    .end local v15    # "count":I
    :catch_1
    move-exception v5

    .line 269
    .restart local v5    # "ioe":Ljava/io/IOException;
    throw v5

    .line 275
    .end local v5    # "ioe":Ljava/io/IOException;
    :catch_2
    move-exception v5

    .line 276
    .restart local v5    # "ioe":Ljava/io/IOException;
    throw v5

    .line 260
    .end local v5    # "ioe":Ljava/io/IOException;
    .end local v13    # "con":Ljava/net/HttpURLConnection;
    .end local v14    # "contentLength":I
    .end local v16    # "in":Ljava/io/InputStream;
    .end local v17    # "out":Ljava/io/OutputStream;
    .end local v20    # "response":[B
    .end local v21    # "total":I
    .end local v22    # "url":Ljava/net/URL;
    :catch_3
    move-exception v5

    .line 261
    .restart local v5    # "ioe":Ljava/io/IOException;
    :try_start_7
    new-instance v3, Ljava/security/cert/CertPathValidatorException;

    .line 262
    const-string/jumbo v4, "Unable to determine revocation status due to network error"

    .line 263
    sget-object v8, Ljava/security/cert/CertPathValidatorException$BasicReason;->UNDETERMINED_REVOCATION_STATUS:Ljava/security/cert/CertPathValidatorException$BasicReason;

    const/4 v6, 0x0

    const/4 v7, -0x1

    .line 261
    invoke-direct/range {v3 .. v8}, Ljava/security/cert/CertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;ILjava/security/cert/CertPathValidatorException$Reason;)V

    throw v3
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 264
    .end local v5    # "ioe":Ljava/io/IOException;
    :catchall_0
    move-exception v3

    .line 265
    if-eqz v16, :cond_9

    .line 267
    :try_start_8
    invoke-virtual/range {v16 .. v16}, Ljava/io/InputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_4

    .line 272
    :cond_9
    if-eqz v17, :cond_a

    .line 274
    :try_start_9
    invoke-virtual/range {v17 .. v17}, Ljava/io/OutputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_5

    .line 264
    :cond_a
    throw v3

    .line 268
    :catch_4
    move-exception v5

    .line 269
    .restart local v5    # "ioe":Ljava/io/IOException;
    throw v5

    .line 275
    .end local v5    # "ioe":Ljava/io/IOException;
    :catch_5
    move-exception v5

    .line 276
    .restart local v5    # "ioe":Ljava/io/IOException;
    throw v5

    .line 284
    .end local v5    # "ioe":Ljava/io/IOException;
    .restart local v13    # "con":Ljava/net/HttpURLConnection;
    .restart local v14    # "contentLength":I
    .restart local v16    # "in":Ljava/io/InputStream;
    .restart local v17    # "out":Ljava/io/OutputStream;
    .restart local v20    # "response":[B
    .restart local v21    # "total":I
    .restart local v22    # "url":Ljava/net/URL;
    :catch_6
    move-exception v5

    .line 286
    .restart local v5    # "ioe":Ljava/io/IOException;
    new-instance v3, Ljava/security/cert/CertPathValidatorException;

    invoke-direct {v3, v5}, Ljava/security/cert/CertPathValidatorException;-><init>(Ljava/lang/Throwable;)V

    throw v3

    .line 210
    .end local v5    # "ioe":Ljava/io/IOException;
    .end local v13    # "con":Ljava/net/HttpURLConnection;
    .end local v14    # "contentLength":I
    .end local v16    # "in":Ljava/io/InputStream;
    .end local v17    # "out":Ljava/io/OutputStream;
    .end local v20    # "response":[B
    .end local v21    # "total":I
    .end local v22    # "url":Ljava/net/URL;
    .local v12, "bytes":[B
    :catch_7
    move-exception v5

    .restart local v5    # "ioe":Ljava/io/IOException;
    move-object/from16 v18, v19

    .end local v19    # "request":Lsun/security/provider/certpath/OCSPRequest;
    .local v18, "request":Lsun/security/provider/certpath/OCSPRequest;
    goto :goto_2
.end method

.method public static getResponderURI(Ljava/security/cert/X509Certificate;)Ljava/net/URI;
    .locals 2
    .param p0, "cert"    # Ljava/security/cert/X509Certificate;

    .prologue
    .line 307
    :try_start_0
    invoke-static {p0}, Lsun/security/x509/X509CertImpl;->toImpl(Ljava/security/cert/X509Certificate;)Lsun/security/x509/X509CertImpl;

    move-result-object v1

    invoke-static {v1}, Lsun/security/provider/certpath/OCSP;->getResponderURI(Lsun/security/x509/X509CertImpl;)Ljava/net/URI;
    :try_end_0
    .catch Ljava/security/cert/CertificateException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 308
    :catch_0
    move-exception v0

    .line 310
    .local v0, "ce":Ljava/security/cert/CertificateException;
    const/4 v1, 0x0

    return-object v1
.end method

.method static getResponderURI(Lsun/security/x509/X509CertImpl;)Ljava/net/URI;
    .locals 9
    .param p0, "certImpl"    # Lsun/security/x509/X509CertImpl;

    .prologue
    const/4 v8, 0x0

    .line 318
    invoke-virtual {p0}, Lsun/security/x509/X509CertImpl;->getAuthorityInfoAccessExtension()Lsun/security/x509/AuthorityInfoAccessExtension;

    move-result-object v0

    .line 319
    .local v0, "aia":Lsun/security/x509/AuthorityInfoAccessExtension;
    if-nez v0, :cond_0

    .line 320
    return-object v8

    .line 323
    :cond_0
    invoke-virtual {v0}, Lsun/security/x509/AuthorityInfoAccessExtension;->getAccessDescriptions()Ljava/util/List;

    move-result-object v3

    .line 324
    .local v3, "descriptions":Ljava/util/List;, "Ljava/util/List<Lsun/security/x509/AccessDescription;>;"
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "description$iterator":Ljava/util/Iterator;
    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lsun/security/x509/AccessDescription;

    .line 325
    .local v1, "description":Lsun/security/x509/AccessDescription;
    invoke-virtual {v1}, Lsun/security/x509/AccessDescription;->getAccessMethod()Lsun/security/util/ObjectIdentifier;

    move-result-object v6

    .line 326
    sget-object v7, Lsun/security/x509/AccessDescription;->Ad_OCSP_Id:Lsun/security/util/ObjectIdentifier;

    .line 325
    invoke-virtual {v6, v7}, Lsun/security/util/ObjectIdentifier;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 328
    invoke-virtual {v1}, Lsun/security/x509/AccessDescription;->getAccessLocation()Lsun/security/x509/GeneralName;

    move-result-object v4

    .line 329
    .local v4, "generalName":Lsun/security/x509/GeneralName;
    invoke-virtual {v4}, Lsun/security/x509/GeneralName;->getType()I

    move-result v6

    const/4 v7, 0x6

    if-ne v6, v7, :cond_1

    .line 330
    invoke-virtual {v4}, Lsun/security/x509/GeneralName;->getName()Lsun/security/x509/GeneralNameInterface;

    move-result-object v5

    check-cast v5, Lsun/security/x509/URIName;

    .line 331
    .local v5, "uri":Lsun/security/x509/URIName;
    invoke-virtual {v5}, Lsun/security/x509/URIName;->getURI()Ljava/net/URI;

    move-result-object v6

    return-object v6

    .line 335
    .end local v1    # "description":Lsun/security/x509/AccessDescription;
    .end local v4    # "generalName":Lsun/security/x509/GeneralName;
    .end local v5    # "uri":Lsun/security/x509/URIName;
    :cond_2
    return-object v8
.end method

.method private static initializeTimeout()I
    .locals 3

    .prologue
    .line 89
    new-instance v1, Lsun/security/action/GetIntegerAction;

    const-string/jumbo v2, "com.sun.security.ocsp.timeout"

    invoke-direct {v1, v2}, Lsun/security/action/GetIntegerAction;-><init>(Ljava/lang/String;)V

    .line 88
    invoke-static {v1}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 90
    .local v0, "tmp":Ljava/lang/Integer;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-gez v1, :cond_1

    .line 91
    :cond_0
    const/16 v1, 0x3a98

    return v1

    .line 95
    :cond_1
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    mul-int/lit16 v1, v1, 0x3e8

    return v1
.end method
