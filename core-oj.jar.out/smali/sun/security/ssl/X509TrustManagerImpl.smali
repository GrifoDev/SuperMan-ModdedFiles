.class final Lsun/security/ssl/X509TrustManagerImpl;
.super Ljavax/net/ssl/X509ExtendedTrustManager;
.source "X509TrustManagerImpl.java"

# interfaces
.implements Ljavax/net/ssl/X509TrustManager;


# static fields
.field private static final debug:Lsun/security/ssl/Debug;


# instance fields
.field private volatile clientValidator:Lsun/security/validator/Validator;

.field private final pkixParams:Ljava/security/cert/PKIXBuilderParameters;

.field private volatile serverValidator:Lsun/security/validator/Validator;

.field private final trustedCerts:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<",
            "Ljava/security/cert/X509Certificate;",
            ">;"
        }
    .end annotation
.end field

.field private final validatorType:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 71
    const-string/jumbo v0, "ssl"

    invoke-static {v0}, Lsun/security/ssl/Debug;->getInstance(Ljava/lang/String;)Lsun/security/ssl/Debug;

    move-result-object v0

    sput-object v0, Lsun/security/ssl/X509TrustManagerImpl;->debug:Lsun/security/ssl/Debug;

    .line 55
    return-void
.end method

.method constructor <init>(Ljava/lang/String;Ljava/security/KeyStore;)V
    .locals 1
    .param p1, "validatorType"    # Ljava/lang/String;
    .param p2, "ks"    # Ljava/security/KeyStore;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/KeyStoreException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 73
    invoke-direct {p0}, Ljavax/net/ssl/X509ExtendedTrustManager;-><init>()V

    .line 75
    iput-object p1, p0, Lsun/security/ssl/X509TrustManagerImpl;->validatorType:Ljava/lang/String;

    .line 76
    iput-object v0, p0, Lsun/security/ssl/X509TrustManagerImpl;->pkixParams:Ljava/security/cert/PKIXBuilderParameters;

    .line 77
    if-nez p2, :cond_0

    .line 78
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lsun/security/ssl/X509TrustManagerImpl;->trustedCerts:Ljava/util/Collection;

    .line 82
    :goto_0
    invoke-direct {p0}, Lsun/security/ssl/X509TrustManagerImpl;->showTrustedCerts()V

    .line 74
    return-void

    .line 80
    :cond_0
    invoke-static {p2}, Lsun/security/validator/KeyStores;->getTrustedCerts(Ljava/security/KeyStore;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lsun/security/ssl/X509TrustManagerImpl;->trustedCerts:Ljava/util/Collection;

    goto :goto_0
.end method

.method constructor <init>(Ljava/lang/String;Ljava/security/cert/PKIXBuilderParameters;)V
    .locals 2
    .param p1, "validatorType"    # Ljava/lang/String;
    .param p2, "params"    # Ljava/security/cert/PKIXBuilderParameters;

    .prologue
    .line 85
    invoke-direct {p0}, Ljavax/net/ssl/X509ExtendedTrustManager;-><init>()V

    .line 86
    iput-object p1, p0, Lsun/security/ssl/X509TrustManagerImpl;->validatorType:Ljava/lang/String;

    .line 87
    iput-object p2, p0, Lsun/security/ssl/X509TrustManagerImpl;->pkixParams:Ljava/security/cert/PKIXBuilderParameters;

    .line 92
    const-string/jumbo v1, "tls server"

    invoke-direct {p0, v1}, Lsun/security/ssl/X509TrustManagerImpl;->getValidator(Ljava/lang/String;)Lsun/security/validator/Validator;

    move-result-object v0

    .line 93
    .local v0, "v":Lsun/security/validator/Validator;
    invoke-virtual {v0}, Lsun/security/validator/Validator;->getTrustedCertificates()Ljava/util/Collection;

    move-result-object v1

    iput-object v1, p0, Lsun/security/ssl/X509TrustManagerImpl;->trustedCerts:Ljava/util/Collection;

    .line 94
    iput-object v0, p0, Lsun/security/ssl/X509TrustManagerImpl;->serverValidator:Lsun/security/validator/Validator;

    .line 95
    invoke-direct {p0}, Lsun/security/ssl/X509TrustManagerImpl;->showTrustedCerts()V

    .line 85
    return-void
.end method

.method static checkIdentity(Ljava/lang/String;Ljava/security/cert/X509Certificate;Ljava/lang/String;)V
    .locals 3
    .param p0, "hostname"    # Ljava/lang/String;
    .param p1, "cert"    # Ljava/security/cert/X509Certificate;
    .param p2, "algorithm"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    .line 339
    if-eqz p2, :cond_1

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_1

    .line 341
    if-eqz p0, :cond_0

    const-string/jumbo v0, "["

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 342
    const-string/jumbo v0, "]"

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    .line 341
    if-eqz v0, :cond_0

    .line 343
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    .line 346
    :cond_0
    const-string/jumbo v0, "HTTPS"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 347
    invoke-static {v1}, Lsun/security/util/HostnameChecker;->getInstance(B)Lsun/security/util/HostnameChecker;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lsun/security/util/HostnameChecker;->match(Ljava/lang/String;Ljava/security/cert/X509Certificate;)V

    .line 338
    :cond_1
    :goto_0
    return-void

    .line 349
    :cond_2
    const-string/jumbo v0, "LDAP"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 350
    const-string/jumbo v0, "LDAPS"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    .line 349
    if-eqz v0, :cond_4

    .line 351
    :cond_3
    const/4 v0, 0x2

    invoke-static {v0}, Lsun/security/util/HostnameChecker;->getInstance(B)Lsun/security/util/HostnameChecker;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lsun/security/util/HostnameChecker;->match(Ljava/lang/String;Ljava/security/cert/X509Certificate;)V

    goto :goto_0

    .line 354
    :cond_4
    new-instance v0, Ljava/security/cert/CertificateException;

    .line 355
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Unknown identification algorithm: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 354
    invoke-direct {v0, v1}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private checkTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;Ljava/net/Socket;Z)V
    .locals 13
    .param p1, "chain"    # [Ljava/security/cert/X509Certificate;
    .param p2, "authType"    # Ljava/lang/String;
    .param p3, "socket"    # Ljava/net/Socket;
    .param p4, "isClient"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    .prologue
    .line 186
    move/from16 v0, p4

    invoke-direct {p0, p1, p2, v0}, Lsun/security/ssl/X509TrustManagerImpl;->checkTrustedInit([Ljava/security/cert/X509Certificate;Ljava/lang/String;Z)Lsun/security/validator/Validator;

    move-result-object v10

    .line 188
    .local v10, "v":Lsun/security/validator/Validator;
    const/4 v1, 0x0

    .line 189
    .local v1, "constraints":Ljava/security/AlgorithmConstraints;
    if-eqz p3, :cond_2

    invoke-virtual/range {p3 .. p3}, Ljava/net/Socket;->isConnected()Z

    move-result v11

    if-eqz v11, :cond_2

    .line 190
    move-object/from16 v0, p3

    instance-of v11, v0, Ljavax/net/ssl/SSLSocket;

    .line 189
    if-eqz v11, :cond_2

    move-object/from16 v8, p3

    .line 192
    nop

    nop

    .line 193
    .local v8, "sslSocket":Ljavax/net/ssl/SSLSocket;
    invoke-virtual {v8}, Ljavax/net/ssl/SSLSocket;->getHandshakeSession()Ljavax/net/ssl/SSLSession;

    move-result-object v7

    .line 194
    .local v7, "session":Ljavax/net/ssl/SSLSession;
    if-nez v7, :cond_0

    .line 195
    new-instance v11, Ljava/security/cert/CertificateException;

    const-string/jumbo v12, "No handshake session"

    invoke-direct {v11, v12}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/String;)V

    throw v11

    .line 199
    :cond_0
    invoke-virtual {v8}, Ljavax/net/ssl/SSLSocket;->getSSLParameters()Ljavax/net/ssl/SSLParameters;

    move-result-object v11

    invoke-virtual {v11}, Ljavax/net/ssl/SSLParameters;->getEndpointIdentificationAlgorithm()Ljava/lang/String;

    move-result-object v4

    .line 201
    .local v4, "identityAlg":Ljava/lang/String;
    if-eqz v4, :cond_1

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v11

    if-eqz v11, :cond_1

    .line 202
    invoke-interface {v7}, Ljavax/net/ssl/SSLSession;->getPeerHost()Ljava/lang/String;

    move-result-object v3

    .line 203
    .local v3, "hostname":Ljava/lang/String;
    const/4 v11, 0x0

    aget-object v11, p1, v11

    invoke-static {v3, v11, v4}, Lsun/security/ssl/X509TrustManagerImpl;->checkIdentity(Ljava/lang/String;Ljava/security/cert/X509Certificate;Ljava/lang/String;)V

    .line 208
    .end local v3    # "hostname":Ljava/lang/String;
    :cond_1
    invoke-interface {v7}, Ljavax/net/ssl/SSLSession;->getProtocol()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lsun/security/ssl/ProtocolVersion;->valueOf(Ljava/lang/String;)Lsun/security/ssl/ProtocolVersion;

    move-result-object v6

    .line 209
    .local v6, "protocolVersion":Lsun/security/ssl/ProtocolVersion;
    iget v11, v6, Lsun/security/ssl/ProtocolVersion;->v:I

    sget-object v12, Lsun/security/ssl/ProtocolVersion;->TLS12:Lsun/security/ssl/ProtocolVersion;

    iget v12, v12, Lsun/security/ssl/ProtocolVersion;->v:I

    if-lt v11, v12, :cond_5

    .line 210
    instance-of v11, v7, Ljavax/net/ssl/ExtendedSSLSession;

    if-eqz v11, :cond_4

    move-object v2, v7

    .line 212
    nop

    nop

    .line 214
    .local v2, "extSession":Ljavax/net/ssl/ExtendedSSLSession;
    invoke-virtual {v2}, Ljavax/net/ssl/ExtendedSSLSession;->getLocalSupportedSignatureAlgorithms()[Ljava/lang/String;

    move-result-object v5

    .line 216
    .local v5, "localSupportedSignAlgs":[Ljava/lang/String;
    new-instance v1, Lsun/security/ssl/SSLAlgorithmConstraints;

    .line 217
    .end local v1    # "constraints":Ljava/security/AlgorithmConstraints;
    const/4 v11, 0x0

    .line 216
    invoke-direct {v1, v8, v5, v11}, Lsun/security/ssl/SSLAlgorithmConstraints;-><init>(Ljavax/net/ssl/SSLSocket;[Ljava/lang/String;Z)V

    .line 227
    .end local v2    # "extSession":Ljavax/net/ssl/ExtendedSSLSession;
    .end local v4    # "identityAlg":Ljava/lang/String;
    .end local v5    # "localSupportedSignAlgs":[Ljava/lang/String;
    .end local v6    # "protocolVersion":Lsun/security/ssl/ProtocolVersion;
    .end local v7    # "session":Ljavax/net/ssl/SSLSession;
    .end local v8    # "sslSocket":Ljavax/net/ssl/SSLSocket;
    :cond_2
    :goto_0
    const/4 v9, 0x0

    .line 228
    .local v9, "trustedChain":[Ljava/security/cert/X509Certificate;
    if-eqz p4, :cond_6

    .line 229
    const/4 v11, 0x0

    invoke-static {v10, p1, v1, v11}, Lsun/security/ssl/X509TrustManagerImpl;->validate(Lsun/security/validator/Validator;[Ljava/security/cert/X509Certificate;Ljava/security/AlgorithmConstraints;Ljava/lang/String;)[Ljava/security/cert/X509Certificate;

    move-result-object v9

    .line 233
    .local v9, "trustedChain":[Ljava/security/cert/X509Certificate;
    :goto_1
    sget-object v11, Lsun/security/ssl/X509TrustManagerImpl;->debug:Lsun/security/ssl/Debug;

    if-eqz v11, :cond_3

    const-string/jumbo v11, "trustmanager"

    invoke-static {v11}, Lsun/security/ssl/Debug;->isOn(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_3

    .line 234
    sget-object v11, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string/jumbo v12, "Found trusted certificate:"

    invoke-virtual {v11, v12}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 235
    sget-object v11, Ljava/lang/System;->out:Ljava/io/PrintStream;

    array-length v12, v9

    add-int/lit8 v12, v12, -0x1

    aget-object v12, v9, v12

    invoke-virtual {v11, v12}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    .line 185
    :cond_3
    return-void

    .line 220
    .end local v9    # "trustedChain":[Ljava/security/cert/X509Certificate;
    .restart local v1    # "constraints":Ljava/security/AlgorithmConstraints;
    .restart local v4    # "identityAlg":Ljava/lang/String;
    .restart local v6    # "protocolVersion":Lsun/security/ssl/ProtocolVersion;
    .restart local v7    # "session":Ljavax/net/ssl/SSLSession;
    .restart local v8    # "sslSocket":Ljavax/net/ssl/SSLSocket;
    :cond_4
    new-instance v1, Lsun/security/ssl/SSLAlgorithmConstraints;

    .end local v1    # "constraints":Ljava/security/AlgorithmConstraints;
    const/4 v11, 0x0

    invoke-direct {v1, v8, v11}, Lsun/security/ssl/SSLAlgorithmConstraints;-><init>(Ljavax/net/ssl/SSLSocket;Z)V

    .line 219
    .local v1, "constraints":Ljava/security/AlgorithmConstraints;
    goto :goto_0

    .line 223
    .local v1, "constraints":Ljava/security/AlgorithmConstraints;
    :cond_5
    new-instance v1, Lsun/security/ssl/SSLAlgorithmConstraints;

    .end local v1    # "constraints":Ljava/security/AlgorithmConstraints;
    const/4 v11, 0x0

    invoke-direct {v1, v8, v11}, Lsun/security/ssl/SSLAlgorithmConstraints;-><init>(Ljavax/net/ssl/SSLSocket;Z)V

    .local v1, "constraints":Ljava/security/AlgorithmConstraints;
    goto :goto_0

    .line 231
    .end local v1    # "constraints":Ljava/security/AlgorithmConstraints;
    .end local v4    # "identityAlg":Ljava/lang/String;
    .end local v6    # "protocolVersion":Lsun/security/ssl/ProtocolVersion;
    .end local v7    # "session":Ljavax/net/ssl/SSLSession;
    .end local v8    # "sslSocket":Ljavax/net/ssl/SSLSocket;
    .local v9, "trustedChain":[Ljava/security/cert/X509Certificate;
    :cond_6
    invoke-static {v10, p1, v1, p2}, Lsun/security/ssl/X509TrustManagerImpl;->validate(Lsun/security/validator/Validator;[Ljava/security/cert/X509Certificate;Ljava/security/AlgorithmConstraints;Ljava/lang/String;)[Ljava/security/cert/X509Certificate;

    move-result-object v9

    .local v9, "trustedChain":[Ljava/security/cert/X509Certificate;
    goto :goto_1
.end method

.method private checkTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;Ljavax/net/ssl/SSLEngine;Z)V
    .locals 11
    .param p1, "chain"    # [Ljava/security/cert/X509Certificate;
    .param p2, "authType"    # Ljava/lang/String;
    .param p3, "engine"    # Ljavax/net/ssl/SSLEngine;
    .param p4, "isClient"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    .prologue
    .line 241
    invoke-direct {p0, p1, p2, p4}, Lsun/security/ssl/X509TrustManagerImpl;->checkTrustedInit([Ljava/security/cert/X509Certificate;Ljava/lang/String;Z)Lsun/security/validator/Validator;

    move-result-object v8

    .line 243
    .local v8, "v":Lsun/security/validator/Validator;
    const/4 v0, 0x0

    .line 244
    .local v0, "constraints":Ljava/security/AlgorithmConstraints;
    if-eqz p3, :cond_2

    .line 245
    invoke-virtual {p3}, Ljavax/net/ssl/SSLEngine;->getHandshakeSession()Ljavax/net/ssl/SSLSession;

    move-result-object v6

    .line 246
    .local v6, "session":Ljavax/net/ssl/SSLSession;
    if-nez v6, :cond_0

    .line 247
    new-instance v9, Ljava/security/cert/CertificateException;

    const-string/jumbo v10, "No handshake session"

    invoke-direct {v9, v10}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 251
    :cond_0
    invoke-virtual {p3}, Ljavax/net/ssl/SSLEngine;->getSSLParameters()Ljavax/net/ssl/SSLParameters;

    move-result-object v9

    invoke-virtual {v9}, Ljavax/net/ssl/SSLParameters;->getEndpointIdentificationAlgorithm()Ljava/lang/String;

    move-result-object v3

    .line 253
    .local v3, "identityAlg":Ljava/lang/String;
    if-eqz v3, :cond_1

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v9

    if-eqz v9, :cond_1

    .line 254
    invoke-interface {v6}, Ljavax/net/ssl/SSLSession;->getPeerHost()Ljava/lang/String;

    move-result-object v2

    .line 255
    .local v2, "hostname":Ljava/lang/String;
    const/4 v9, 0x0

    aget-object v9, p1, v9

    invoke-static {v2, v9, v3}, Lsun/security/ssl/X509TrustManagerImpl;->checkIdentity(Ljava/lang/String;Ljava/security/cert/X509Certificate;Ljava/lang/String;)V

    .line 260
    .end local v2    # "hostname":Ljava/lang/String;
    :cond_1
    invoke-interface {v6}, Ljavax/net/ssl/SSLSession;->getProtocol()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lsun/security/ssl/ProtocolVersion;->valueOf(Ljava/lang/String;)Lsun/security/ssl/ProtocolVersion;

    move-result-object v5

    .line 261
    .local v5, "protocolVersion":Lsun/security/ssl/ProtocolVersion;
    iget v9, v5, Lsun/security/ssl/ProtocolVersion;->v:I

    sget-object v10, Lsun/security/ssl/ProtocolVersion;->TLS12:Lsun/security/ssl/ProtocolVersion;

    iget v10, v10, Lsun/security/ssl/ProtocolVersion;->v:I

    if-lt v9, v10, :cond_5

    .line 262
    instance-of v9, v6, Ljavax/net/ssl/ExtendedSSLSession;

    if-eqz v9, :cond_4

    move-object v1, v6

    .line 264
    nop

    nop

    .line 266
    .local v1, "extSession":Ljavax/net/ssl/ExtendedSSLSession;
    invoke-virtual {v1}, Ljavax/net/ssl/ExtendedSSLSession;->getLocalSupportedSignatureAlgorithms()[Ljava/lang/String;

    move-result-object v4

    .line 268
    .local v4, "localSupportedSignAlgs":[Ljava/lang/String;
    new-instance v0, Lsun/security/ssl/SSLAlgorithmConstraints;

    .line 269
    .end local v0    # "constraints":Ljava/security/AlgorithmConstraints;
    const/4 v9, 0x0

    .line 268
    invoke-direct {v0, p3, v4, v9}, Lsun/security/ssl/SSLAlgorithmConstraints;-><init>(Ljavax/net/ssl/SSLEngine;[Ljava/lang/String;Z)V

    .line 279
    .end local v1    # "extSession":Ljavax/net/ssl/ExtendedSSLSession;
    .end local v3    # "identityAlg":Ljava/lang/String;
    .end local v4    # "localSupportedSignAlgs":[Ljava/lang/String;
    .end local v5    # "protocolVersion":Lsun/security/ssl/ProtocolVersion;
    .end local v6    # "session":Ljavax/net/ssl/SSLSession;
    :cond_2
    :goto_0
    const/4 v7, 0x0

    .line 280
    .local v7, "trustedChain":[Ljava/security/cert/X509Certificate;
    if-eqz p4, :cond_6

    .line 281
    const/4 v9, 0x0

    invoke-static {v8, p1, v0, v9}, Lsun/security/ssl/X509TrustManagerImpl;->validate(Lsun/security/validator/Validator;[Ljava/security/cert/X509Certificate;Ljava/security/AlgorithmConstraints;Ljava/lang/String;)[Ljava/security/cert/X509Certificate;

    move-result-object v7

    .line 285
    .local v7, "trustedChain":[Ljava/security/cert/X509Certificate;
    :goto_1
    sget-object v9, Lsun/security/ssl/X509TrustManagerImpl;->debug:Lsun/security/ssl/Debug;

    if-eqz v9, :cond_3

    const-string/jumbo v9, "trustmanager"

    invoke-static {v9}, Lsun/security/ssl/Debug;->isOn(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 286
    sget-object v9, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string/jumbo v10, "Found trusted certificate:"

    invoke-virtual {v9, v10}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 287
    sget-object v9, Ljava/lang/System;->out:Ljava/io/PrintStream;

    array-length v10, v7

    add-int/lit8 v10, v10, -0x1

    aget-object v10, v7, v10

    invoke-virtual {v9, v10}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    .line 240
    :cond_3
    return-void

    .line 272
    .end local v7    # "trustedChain":[Ljava/security/cert/X509Certificate;
    .restart local v0    # "constraints":Ljava/security/AlgorithmConstraints;
    .restart local v3    # "identityAlg":Ljava/lang/String;
    .restart local v5    # "protocolVersion":Lsun/security/ssl/ProtocolVersion;
    .restart local v6    # "session":Ljavax/net/ssl/SSLSession;
    :cond_4
    new-instance v0, Lsun/security/ssl/SSLAlgorithmConstraints;

    .end local v0    # "constraints":Ljava/security/AlgorithmConstraints;
    const/4 v9, 0x0

    invoke-direct {v0, p3, v9}, Lsun/security/ssl/SSLAlgorithmConstraints;-><init>(Ljavax/net/ssl/SSLEngine;Z)V

    .line 271
    .local v0, "constraints":Ljava/security/AlgorithmConstraints;
    goto :goto_0

    .line 275
    .local v0, "constraints":Ljava/security/AlgorithmConstraints;
    :cond_5
    new-instance v0, Lsun/security/ssl/SSLAlgorithmConstraints;

    .end local v0    # "constraints":Ljava/security/AlgorithmConstraints;
    const/4 v9, 0x0

    invoke-direct {v0, p3, v9}, Lsun/security/ssl/SSLAlgorithmConstraints;-><init>(Ljavax/net/ssl/SSLEngine;Z)V

    .local v0, "constraints":Ljava/security/AlgorithmConstraints;
    goto :goto_0

    .line 283
    .end local v0    # "constraints":Ljava/security/AlgorithmConstraints;
    .end local v3    # "identityAlg":Ljava/lang/String;
    .end local v5    # "protocolVersion":Lsun/security/ssl/ProtocolVersion;
    .end local v6    # "session":Ljavax/net/ssl/SSLSession;
    .local v7, "trustedChain":[Ljava/security/cert/X509Certificate;
    :cond_6
    invoke-static {v8, p1, v0, p2}, Lsun/security/ssl/X509TrustManagerImpl;->validate(Lsun/security/validator/Validator;[Ljava/security/cert/X509Certificate;Ljava/security/AlgorithmConstraints;Ljava/lang/String;)[Ljava/security/cert/X509Certificate;

    move-result-object v7

    .local v7, "trustedChain":[Ljava/security/cert/X509Certificate;
    goto :goto_1
.end method

.method private checkTrustedInit([Ljava/security/cert/X509Certificate;Ljava/lang/String;Z)Lsun/security/validator/Validator;
    .locals 3
    .param p1, "chain"    # [Ljava/security/cert/X509Certificate;
    .param p2, "authType"    # Ljava/lang/String;
    .param p3, "isClient"    # Z

    .prologue
    .line 143
    if-eqz p1, :cond_0

    array-length v1, p1

    if-nez v1, :cond_1

    .line 144
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    .line 145
    const-string/jumbo v2, "null or zero-length certificate chain"

    .line 144
    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 148
    :cond_1
    if-eqz p2, :cond_2

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_3

    .line 149
    :cond_2
    new-instance v1, Ljava/lang/IllegalArgumentException;

    .line 150
    const-string/jumbo v2, "null or zero-length authentication type"

    .line 149
    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 153
    :cond_3
    const/4 v0, 0x0

    .line 154
    .local v0, "v":Lsun/security/validator/Validator;
    if-eqz p3, :cond_6

    .line 155
    iget-object v0, p0, Lsun/security/ssl/X509TrustManagerImpl;->clientValidator:Lsun/security/validator/Validator;

    .line 156
    .local v0, "v":Lsun/security/validator/Validator;
    if-nez v0, :cond_5

    .line 157
    monitor-enter p0

    .line 158
    :try_start_0
    iget-object v0, p0, Lsun/security/ssl/X509TrustManagerImpl;->clientValidator:Lsun/security/validator/Validator;

    .line 159
    if-nez v0, :cond_4

    .line 160
    const-string/jumbo v1, "tls client"

    invoke-direct {p0, v1}, Lsun/security/ssl/X509TrustManagerImpl;->getValidator(Ljava/lang/String;)Lsun/security/validator/Validator;

    move-result-object v0

    .line 161
    iput-object v0, p0, Lsun/security/ssl/X509TrustManagerImpl;->clientValidator:Lsun/security/validator/Validator;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_4
    :goto_0
    monitor-exit p0

    .line 180
    :cond_5
    return-object v0

    .line 157
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    .line 168
    .local v0, "v":Lsun/security/validator/Validator;
    :cond_6
    iget-object v0, p0, Lsun/security/ssl/X509TrustManagerImpl;->serverValidator:Lsun/security/validator/Validator;

    .line 169
    .local v0, "v":Lsun/security/validator/Validator;
    if-nez v0, :cond_5

    .line 170
    monitor-enter p0

    .line 171
    :try_start_1
    iget-object v0, p0, Lsun/security/ssl/X509TrustManagerImpl;->serverValidator:Lsun/security/validator/Validator;

    .line 172
    if-nez v0, :cond_4

    .line 173
    const-string/jumbo v1, "tls server"

    invoke-direct {p0, v1}, Lsun/security/ssl/X509TrustManagerImpl;->getValidator(Ljava/lang/String;)Lsun/security/validator/Validator;

    move-result-object v0

    .line 174
    iput-object v0, p0, Lsun/security/ssl/X509TrustManagerImpl;->serverValidator:Lsun/security/validator/Validator;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    .line 170
    :catchall_1
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method private getValidator(Ljava/lang/String;)Lsun/security/validator/Validator;
    .locals 3
    .param p1, "variant"    # Ljava/lang/String;

    .prologue
    .line 313
    iget-object v1, p0, Lsun/security/ssl/X509TrustManagerImpl;->pkixParams:Ljava/security/cert/PKIXBuilderParameters;

    if-nez v1, :cond_0

    .line 314
    iget-object v1, p0, Lsun/security/ssl/X509TrustManagerImpl;->validatorType:Ljava/lang/String;

    iget-object v2, p0, Lsun/security/ssl/X509TrustManagerImpl;->trustedCerts:Ljava/util/Collection;

    invoke-static {v1, p1, v2}, Lsun/security/validator/Validator;->getInstance(Ljava/lang/String;Ljava/lang/String;Ljava/util/Collection;)Lsun/security/validator/Validator;

    move-result-object v0

    .line 318
    .local v0, "v":Lsun/security/validator/Validator;
    :goto_0
    return-object v0

    .line 316
    .end local v0    # "v":Lsun/security/validator/Validator;
    :cond_0
    iget-object v1, p0, Lsun/security/ssl/X509TrustManagerImpl;->validatorType:Ljava/lang/String;

    iget-object v2, p0, Lsun/security/ssl/X509TrustManagerImpl;->pkixParams:Ljava/security/cert/PKIXBuilderParameters;

    invoke-static {v1, p1, v2}, Lsun/security/validator/Validator;->getInstance(Ljava/lang/String;Ljava/lang/String;Ljava/security/cert/PKIXBuilderParameters;)Lsun/security/validator/Validator;

    move-result-object v0

    .restart local v0    # "v":Lsun/security/validator/Validator;
    goto :goto_0
.end method

.method private showTrustedCerts()V
    .locals 6

    .prologue
    .line 292
    sget-object v2, Lsun/security/ssl/X509TrustManagerImpl;->debug:Lsun/security/ssl/Debug;

    if-eqz v2, :cond_0

    const-string/jumbo v2, "trustmanager"

    invoke-static {v2}, Lsun/security/ssl/Debug;->isOn(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 293
    iget-object v2, p0, Lsun/security/ssl/X509TrustManagerImpl;->trustedCerts:Ljava/util/Collection;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "cert$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/security/cert/X509Certificate;

    .line 294
    .local v0, "cert":Ljava/security/cert/X509Certificate;
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string/jumbo v3, "adding as trusted cert:"

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 295
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "  Subject: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 296
    invoke-virtual {v0}, Ljava/security/cert/X509Certificate;->getSubjectX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v4

    .line 295
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 297
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "  Issuer:  "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 298
    invoke-virtual {v0}, Ljava/security/cert/X509Certificate;->getIssuerX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v4

    .line 297
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 299
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "  Algorithm: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 300
    invoke-virtual {v0}, Ljava/security/cert/Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v4

    invoke-interface {v4}, Ljava/security/PublicKey;->getAlgorithm()Ljava/lang/String;

    move-result-object v4

    .line 299
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 301
    const-string/jumbo v4, "; Serial number: 0x"

    .line 299
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 302
    invoke-virtual {v0}, Ljava/security/cert/X509Certificate;->getSerialNumber()Ljava/math/BigInteger;

    move-result-object v4

    const/16 v5, 0x10

    invoke-virtual {v4, v5}, Ljava/math/BigInteger;->toString(I)Ljava/lang/String;

    move-result-object v4

    .line 299
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 303
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "  Valid from "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 304
    invoke-virtual {v0}, Ljava/security/cert/X509Certificate;->getNotBefore()Ljava/util/Date;

    move-result-object v4

    .line 303
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 304
    const-string/jumbo v4, " until "

    .line 303
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 305
    invoke-virtual {v0}, Ljava/security/cert/X509Certificate;->getNotAfter()Ljava/util/Date;

    move-result-object v4

    .line 303
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 306
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v2}, Ljava/io/PrintStream;->println()V

    goto/16 :goto_0

    .line 291
    .end local v0    # "cert":Ljava/security/cert/X509Certificate;
    .end local v1    # "cert$iterator":Ljava/util/Iterator;
    :cond_0
    return-void
.end method

.method private static validate(Lsun/security/validator/Validator;[Ljava/security/cert/X509Certificate;Ljava/security/AlgorithmConstraints;Ljava/lang/String;)[Ljava/security/cert/X509Certificate;
    .locals 2
    .param p0, "v"    # Lsun/security/validator/Validator;
    .param p1, "chain"    # [Ljava/security/cert/X509Certificate;
    .param p2, "constraints"    # Ljava/security/AlgorithmConstraints;
    .param p3, "authType"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    .prologue
    .line 324
    invoke-static {}, Lsun/security/ssl/JsseJce;->beginFipsProvider()Ljava/lang/Object;

    move-result-object v0

    .line 326
    .local v0, "o":Ljava/lang/Object;
    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {p0, p1, v1, p2, p3}, Lsun/security/validator/Validator;->validate([Ljava/security/cert/X509Certificate;Ljava/util/Collection;Ljava/security/AlgorithmConstraints;Ljava/lang/Object;)[Ljava/security/cert/X509Certificate;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 328
    invoke-static {v0}, Lsun/security/ssl/JsseJce;->endFipsProvider(Ljava/lang/Object;)V

    .line 326
    return-object v1

    .line 327
    :catchall_0
    move-exception v1

    .line 328
    invoke-static {v0}, Lsun/security/ssl/JsseJce;->endFipsProvider(Ljava/lang/Object;)V

    .line 327
    throw v1
.end method


# virtual methods
.method public checkClientTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;)V
    .locals 2
    .param p1, "chain"    # [Ljava/security/cert/X509Certificate;
    .param p2, "authType"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    .prologue
    .line 101
    const/4 v0, 0x0

    nop

    nop

    const/4 v1, 0x1

    invoke-direct {p0, p1, p2, v0, v1}, Lsun/security/ssl/X509TrustManagerImpl;->checkTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;Ljava/net/Socket;Z)V

    .line 100
    return-void
.end method

.method public checkClientTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;Ljava/net/Socket;)V
    .locals 1
    .param p1, "chain"    # [Ljava/security/cert/X509Certificate;
    .param p2, "authType"    # Ljava/lang/String;
    .param p3, "socket"    # Ljava/net/Socket;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    .prologue
    .line 120
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, p3, v0}, Lsun/security/ssl/X509TrustManagerImpl;->checkTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;Ljava/net/Socket;Z)V

    .line 119
    return-void
.end method

.method public checkClientTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;Ljavax/net/ssl/SSLEngine;)V
    .locals 1
    .param p1, "chain"    # [Ljava/security/cert/X509Certificate;
    .param p2, "authType"    # Ljava/lang/String;
    .param p3, "engine"    # Ljavax/net/ssl/SSLEngine;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    .prologue
    .line 132
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, p3, v0}, Lsun/security/ssl/X509TrustManagerImpl;->checkTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;Ljavax/net/ssl/SSLEngine;Z)V

    .line 131
    return-void
.end method

.method public checkServerTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;)V
    .locals 2
    .param p1, "chain"    # [Ljava/security/cert/X509Certificate;
    .param p2, "authType"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    .prologue
    .line 107
    const/4 v0, 0x0

    nop

    nop

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, v0, v1}, Lsun/security/ssl/X509TrustManagerImpl;->checkTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;Ljava/net/Socket;Z)V

    .line 106
    return-void
.end method

.method public checkServerTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;Ljava/net/Socket;)V
    .locals 1
    .param p1, "chain"    # [Ljava/security/cert/X509Certificate;
    .param p2, "authType"    # Ljava/lang/String;
    .param p3, "socket"    # Ljava/net/Socket;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    .prologue
    .line 126
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lsun/security/ssl/X509TrustManagerImpl;->checkTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;Ljava/net/Socket;Z)V

    .line 125
    return-void
.end method

.method public checkServerTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;Ljavax/net/ssl/SSLEngine;)V
    .locals 1
    .param p1, "chain"    # [Ljava/security/cert/X509Certificate;
    .param p2, "authType"    # Ljava/lang/String;
    .param p3, "engine"    # Ljavax/net/ssl/SSLEngine;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    .prologue
    .line 138
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lsun/security/ssl/X509TrustManagerImpl;->checkTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;Ljavax/net/ssl/SSLEngine;Z)V

    .line 137
    return-void
.end method

.method public getAcceptedIssuers()[Ljava/security/cert/X509Certificate;
    .locals 2

    .prologue
    .line 112
    iget-object v1, p0, Lsun/security/ssl/X509TrustManagerImpl;->trustedCerts:Ljava/util/Collection;

    invoke-interface {v1}, Ljava/util/Collection;->size()I

    move-result v1

    new-array v0, v1, [Ljava/security/cert/X509Certificate;

    .line 113
    .local v0, "certsArray":[Ljava/security/cert/X509Certificate;
    iget-object v1, p0, Lsun/security/ssl/X509TrustManagerImpl;->trustedCerts:Ljava/util/Collection;

    invoke-interface {v1, v0}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 114
    return-object v0
.end method
