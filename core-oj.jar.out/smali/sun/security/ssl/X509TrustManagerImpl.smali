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

    const-string/jumbo v0, "ssl"

    invoke-static {v0}, Lsun/security/ssl/Debug;->getInstance(Ljava/lang/String;)Lsun/security/ssl/Debug;

    move-result-object v0

    sput-object v0, Lsun/security/ssl/X509TrustManagerImpl;->debug:Lsun/security/ssl/Debug;

    return-void
.end method

.method constructor <init>(Ljava/lang/String;Ljava/security/KeyStore;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/KeyStoreException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-direct {p0}, Ljavax/net/ssl/X509ExtendedTrustManager;-><init>()V

    iput-object p1, p0, Lsun/security/ssl/X509TrustManagerImpl;->validatorType:Ljava/lang/String;

    iput-object v0, p0, Lsun/security/ssl/X509TrustManagerImpl;->pkixParams:Ljava/security/cert/PKIXBuilderParameters;

    if-nez p2, :cond_0

    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lsun/security/ssl/X509TrustManagerImpl;->trustedCerts:Ljava/util/Collection;

    :goto_0
    invoke-direct {p0}, Lsun/security/ssl/X509TrustManagerImpl;->showTrustedCerts()V

    return-void

    :cond_0
    invoke-static {p2}, Lsun/security/validator/KeyStores;->getTrustedCerts(Ljava/security/KeyStore;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lsun/security/ssl/X509TrustManagerImpl;->trustedCerts:Ljava/util/Collection;

    goto :goto_0
.end method

.method constructor <init>(Ljava/lang/String;Ljava/security/cert/PKIXBuilderParameters;)V
    .locals 2

    invoke-direct {p0}, Ljavax/net/ssl/X509ExtendedTrustManager;-><init>()V

    iput-object p1, p0, Lsun/security/ssl/X509TrustManagerImpl;->validatorType:Ljava/lang/String;

    iput-object p2, p0, Lsun/security/ssl/X509TrustManagerImpl;->pkixParams:Ljava/security/cert/PKIXBuilderParameters;

    const-string/jumbo v1, "tls server"

    invoke-direct {p0, v1}, Lsun/security/ssl/X509TrustManagerImpl;->getValidator(Ljava/lang/String;)Lsun/security/validator/Validator;

    move-result-object v0

    invoke-virtual {v0}, Lsun/security/validator/Validator;->getTrustedCertificates()Ljava/util/Collection;

    move-result-object v1

    iput-object v1, p0, Lsun/security/ssl/X509TrustManagerImpl;->trustedCerts:Ljava/util/Collection;

    iput-object v0, p0, Lsun/security/ssl/X509TrustManagerImpl;->serverValidator:Lsun/security/validator/Validator;

    invoke-direct {p0}, Lsun/security/ssl/X509TrustManagerImpl;->showTrustedCerts()V

    return-void
.end method

.method static checkIdentity(Ljava/lang/String;Ljava/security/cert/X509Certificate;Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    const/4 v1, 0x1

    if-eqz p2, :cond_1

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_1

    if-eqz p0, :cond_0

    const-string/jumbo v0, "["

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "]"

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    :cond_0
    const-string/jumbo v0, "HTTPS"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {v1}, Lsun/security/util/HostnameChecker;->getInstance(B)Lsun/security/util/HostnameChecker;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lsun/security/util/HostnameChecker;->match(Ljava/lang/String;Ljava/security/cert/X509Certificate;)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    const-string/jumbo v0, "LDAP"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string/jumbo v0, "LDAPS"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    :cond_3
    const/4 v0, 0x2

    invoke-static {v0}, Lsun/security/util/HostnameChecker;->getInstance(B)Lsun/security/util/HostnameChecker;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lsun/security/util/HostnameChecker;->match(Ljava/lang/String;Ljava/security/cert/X509Certificate;)V

    goto :goto_0

    :cond_4
    new-instance v0, Ljava/security/cert/CertificateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Unknown identification algorithm: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private checkTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;Ljava/net/Socket;Z)V
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    move/from16 v0, p4

    invoke-direct {p0, p1, p2, v0}, Lsun/security/ssl/X509TrustManagerImpl;->checkTrustedInit([Ljava/security/cert/X509Certificate;Ljava/lang/String;Z)Lsun/security/validator/Validator;

    move-result-object v10

    const/4 v1, 0x0

    if-eqz p3, :cond_2

    invoke-virtual/range {p3 .. p3}, Ljava/net/Socket;->isConnected()Z

    move-result v11

    if-eqz v11, :cond_2

    move-object/from16 v0, p3

    instance-of v11, v0, Ljavax/net/ssl/SSLSocket;

    if-eqz v11, :cond_2

    move-object/from16 v8, p3

    nop

    nop

    invoke-virtual {v8}, Ljavax/net/ssl/SSLSocket;->getHandshakeSession()Ljavax/net/ssl/SSLSession;

    move-result-object v7

    if-nez v7, :cond_0

    new-instance v11, Ljava/security/cert/CertificateException;

    const-string/jumbo v12, "No handshake session"

    invoke-direct {v11, v12}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/String;)V

    throw v11

    :cond_0
    invoke-virtual {v8}, Ljavax/net/ssl/SSLSocket;->getSSLParameters()Ljavax/net/ssl/SSLParameters;

    move-result-object v11

    invoke-virtual {v11}, Ljavax/net/ssl/SSLParameters;->getEndpointIdentificationAlgorithm()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_1

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v11

    if-eqz v11, :cond_1

    invoke-interface {v7}, Ljavax/net/ssl/SSLSession;->getPeerHost()Ljava/lang/String;

    move-result-object v3

    const/4 v11, 0x0

    aget-object v11, p1, v11

    invoke-static {v3, v11, v4}, Lsun/security/ssl/X509TrustManagerImpl;->checkIdentity(Ljava/lang/String;Ljava/security/cert/X509Certificate;Ljava/lang/String;)V

    :cond_1
    invoke-interface {v7}, Ljavax/net/ssl/SSLSession;->getProtocol()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lsun/security/ssl/ProtocolVersion;->valueOf(Ljava/lang/String;)Lsun/security/ssl/ProtocolVersion;

    move-result-object v6

    iget v11, v6, Lsun/security/ssl/ProtocolVersion;->v:I

    sget-object v12, Lsun/security/ssl/ProtocolVersion;->TLS12:Lsun/security/ssl/ProtocolVersion;

    iget v12, v12, Lsun/security/ssl/ProtocolVersion;->v:I

    if-lt v11, v12, :cond_5

    instance-of v11, v7, Ljavax/net/ssl/ExtendedSSLSession;

    if-eqz v11, :cond_4

    move-object v2, v7

    nop

    nop

    invoke-virtual {v2}, Ljavax/net/ssl/ExtendedSSLSession;->getLocalSupportedSignatureAlgorithms()[Ljava/lang/String;

    move-result-object v5

    new-instance v1, Lsun/security/ssl/SSLAlgorithmConstraints;

    const/4 v11, 0x0

    invoke-direct {v1, v8, v5, v11}, Lsun/security/ssl/SSLAlgorithmConstraints;-><init>(Ljavax/net/ssl/SSLSocket;[Ljava/lang/String;Z)V

    :cond_2
    :goto_0
    const/4 v9, 0x0

    if-eqz p4, :cond_6

    const/4 v11, 0x0

    invoke-static {v10, p1, v1, v11}, Lsun/security/ssl/X509TrustManagerImpl;->validate(Lsun/security/validator/Validator;[Ljava/security/cert/X509Certificate;Ljava/security/AlgorithmConstraints;Ljava/lang/String;)[Ljava/security/cert/X509Certificate;

    move-result-object v9

    :goto_1
    sget-object v11, Lsun/security/ssl/X509TrustManagerImpl;->debug:Lsun/security/ssl/Debug;

    if-eqz v11, :cond_3

    const-string/jumbo v11, "trustmanager"

    invoke-static {v11}, Lsun/security/ssl/Debug;->isOn(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_3

    sget-object v11, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string/jumbo v12, "Found trusted certificate:"

    invoke-virtual {v11, v12}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    sget-object v11, Ljava/lang/System;->out:Ljava/io/PrintStream;

    array-length v12, v9

    add-int/lit8 v12, v12, -0x1

    aget-object v12, v9, v12

    invoke-virtual {v11, v12}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    :cond_3
    return-void

    :cond_4
    new-instance v1, Lsun/security/ssl/SSLAlgorithmConstraints;

    const/4 v11, 0x0

    invoke-direct {v1, v8, v11}, Lsun/security/ssl/SSLAlgorithmConstraints;-><init>(Ljavax/net/ssl/SSLSocket;Z)V

    goto :goto_0

    :cond_5
    new-instance v1, Lsun/security/ssl/SSLAlgorithmConstraints;

    const/4 v11, 0x0

    invoke-direct {v1, v8, v11}, Lsun/security/ssl/SSLAlgorithmConstraints;-><init>(Ljavax/net/ssl/SSLSocket;Z)V

    goto :goto_0

    :cond_6
    invoke-static {v10, p1, v1, p2}, Lsun/security/ssl/X509TrustManagerImpl;->validate(Lsun/security/validator/Validator;[Ljava/security/cert/X509Certificate;Ljava/security/AlgorithmConstraints;Ljava/lang/String;)[Ljava/security/cert/X509Certificate;

    move-result-object v9

    goto :goto_1
.end method

.method private checkTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;Ljavax/net/ssl/SSLEngine;Z)V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    invoke-direct {p0, p1, p2, p4}, Lsun/security/ssl/X509TrustManagerImpl;->checkTrustedInit([Ljava/security/cert/X509Certificate;Ljava/lang/String;Z)Lsun/security/validator/Validator;

    move-result-object v8

    const/4 v0, 0x0

    if-eqz p3, :cond_2

    invoke-virtual {p3}, Ljavax/net/ssl/SSLEngine;->getHandshakeSession()Ljavax/net/ssl/SSLSession;

    move-result-object v6

    if-nez v6, :cond_0

    new-instance v9, Ljava/security/cert/CertificateException;

    const-string/jumbo v10, "No handshake session"

    invoke-direct {v9, v10}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/String;)V

    throw v9

    :cond_0
    invoke-virtual {p3}, Ljavax/net/ssl/SSLEngine;->getSSLParameters()Ljavax/net/ssl/SSLParameters;

    move-result-object v9

    invoke-virtual {v9}, Ljavax/net/ssl/SSLParameters;->getEndpointIdentificationAlgorithm()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v9

    if-eqz v9, :cond_1

    invoke-interface {v6}, Ljavax/net/ssl/SSLSession;->getPeerHost()Ljava/lang/String;

    move-result-object v2

    const/4 v9, 0x0

    aget-object v9, p1, v9

    invoke-static {v2, v9, v3}, Lsun/security/ssl/X509TrustManagerImpl;->checkIdentity(Ljava/lang/String;Ljava/security/cert/X509Certificate;Ljava/lang/String;)V

    :cond_1
    invoke-interface {v6}, Ljavax/net/ssl/SSLSession;->getProtocol()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lsun/security/ssl/ProtocolVersion;->valueOf(Ljava/lang/String;)Lsun/security/ssl/ProtocolVersion;

    move-result-object v5

    iget v9, v5, Lsun/security/ssl/ProtocolVersion;->v:I

    sget-object v10, Lsun/security/ssl/ProtocolVersion;->TLS12:Lsun/security/ssl/ProtocolVersion;

    iget v10, v10, Lsun/security/ssl/ProtocolVersion;->v:I

    if-lt v9, v10, :cond_5

    instance-of v9, v6, Ljavax/net/ssl/ExtendedSSLSession;

    if-eqz v9, :cond_4

    move-object v1, v6

    nop

    nop

    invoke-virtual {v1}, Ljavax/net/ssl/ExtendedSSLSession;->getLocalSupportedSignatureAlgorithms()[Ljava/lang/String;

    move-result-object v4

    new-instance v0, Lsun/security/ssl/SSLAlgorithmConstraints;

    const/4 v9, 0x0

    invoke-direct {v0, p3, v4, v9}, Lsun/security/ssl/SSLAlgorithmConstraints;-><init>(Ljavax/net/ssl/SSLEngine;[Ljava/lang/String;Z)V

    :cond_2
    :goto_0
    const/4 v7, 0x0

    if-eqz p4, :cond_6

    const/4 v9, 0x0

    invoke-static {v8, p1, v0, v9}, Lsun/security/ssl/X509TrustManagerImpl;->validate(Lsun/security/validator/Validator;[Ljava/security/cert/X509Certificate;Ljava/security/AlgorithmConstraints;Ljava/lang/String;)[Ljava/security/cert/X509Certificate;

    move-result-object v7

    :goto_1
    sget-object v9, Lsun/security/ssl/X509TrustManagerImpl;->debug:Lsun/security/ssl/Debug;

    if-eqz v9, :cond_3

    const-string/jumbo v9, "trustmanager"

    invoke-static {v9}, Lsun/security/ssl/Debug;->isOn(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_3

    sget-object v9, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string/jumbo v10, "Found trusted certificate:"

    invoke-virtual {v9, v10}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    sget-object v9, Ljava/lang/System;->out:Ljava/io/PrintStream;

    array-length v10, v7

    add-int/lit8 v10, v10, -0x1

    aget-object v10, v7, v10

    invoke-virtual {v9, v10}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    :cond_3
    return-void

    :cond_4
    new-instance v0, Lsun/security/ssl/SSLAlgorithmConstraints;

    const/4 v9, 0x0

    invoke-direct {v0, p3, v9}, Lsun/security/ssl/SSLAlgorithmConstraints;-><init>(Ljavax/net/ssl/SSLEngine;Z)V

    goto :goto_0

    :cond_5
    new-instance v0, Lsun/security/ssl/SSLAlgorithmConstraints;

    const/4 v9, 0x0

    invoke-direct {v0, p3, v9}, Lsun/security/ssl/SSLAlgorithmConstraints;-><init>(Ljavax/net/ssl/SSLEngine;Z)V

    goto :goto_0

    :cond_6
    invoke-static {v8, p1, v0, p2}, Lsun/security/ssl/X509TrustManagerImpl;->validate(Lsun/security/validator/Validator;[Ljava/security/cert/X509Certificate;Ljava/security/AlgorithmConstraints;Ljava/lang/String;)[Ljava/security/cert/X509Certificate;

    move-result-object v7

    goto :goto_1
.end method

.method private checkTrustedInit([Ljava/security/cert/X509Certificate;Ljava/lang/String;Z)Lsun/security/validator/Validator;
    .locals 3

    if-eqz p1, :cond_0

    array-length v1, p1

    if-nez v1, :cond_1

    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "null or zero-length certificate chain"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    if-eqz p2, :cond_2

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_3

    :cond_2
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "null or zero-length authentication type"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_3
    const/4 v0, 0x0

    if-eqz p3, :cond_6

    iget-object v0, p0, Lsun/security/ssl/X509TrustManagerImpl;->clientValidator:Lsun/security/validator/Validator;

    if-nez v0, :cond_5

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lsun/security/ssl/X509TrustManagerImpl;->clientValidator:Lsun/security/validator/Validator;

    if-nez v0, :cond_4

    const-string/jumbo v1, "tls client"

    invoke-direct {p0, v1}, Lsun/security/ssl/X509TrustManagerImpl;->getValidator(Ljava/lang/String;)Lsun/security/validator/Validator;

    move-result-object v0

    iput-object v0, p0, Lsun/security/ssl/X509TrustManagerImpl;->clientValidator:Lsun/security/validator/Validator;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_4
    :goto_0
    monitor-exit p0

    :cond_5
    return-object v0

    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    :cond_6
    iget-object v0, p0, Lsun/security/ssl/X509TrustManagerImpl;->serverValidator:Lsun/security/validator/Validator;

    if-nez v0, :cond_5

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lsun/security/ssl/X509TrustManagerImpl;->serverValidator:Lsun/security/validator/Validator;

    if-nez v0, :cond_4

    const-string/jumbo v1, "tls server"

    invoke-direct {p0, v1}, Lsun/security/ssl/X509TrustManagerImpl;->getValidator(Ljava/lang/String;)Lsun/security/validator/Validator;

    move-result-object v0

    iput-object v0, p0, Lsun/security/ssl/X509TrustManagerImpl;->serverValidator:Lsun/security/validator/Validator;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method private getValidator(Ljava/lang/String;)Lsun/security/validator/Validator;
    .locals 3

    iget-object v1, p0, Lsun/security/ssl/X509TrustManagerImpl;->pkixParams:Ljava/security/cert/PKIXBuilderParameters;

    if-nez v1, :cond_0

    iget-object v1, p0, Lsun/security/ssl/X509TrustManagerImpl;->validatorType:Ljava/lang/String;

    iget-object v2, p0, Lsun/security/ssl/X509TrustManagerImpl;->trustedCerts:Ljava/util/Collection;

    invoke-static {v1, p1, v2}, Lsun/security/validator/Validator;->getInstance(Ljava/lang/String;Ljava/lang/String;Ljava/util/Collection;)Lsun/security/validator/Validator;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget-object v1, p0, Lsun/security/ssl/X509TrustManagerImpl;->validatorType:Ljava/lang/String;

    iget-object v2, p0, Lsun/security/ssl/X509TrustManagerImpl;->pkixParams:Ljava/security/cert/PKIXBuilderParameters;

    invoke-static {v1, p1, v2}, Lsun/security/validator/Validator;->getInstance(Ljava/lang/String;Ljava/lang/String;Ljava/security/cert/PKIXBuilderParameters;)Lsun/security/validator/Validator;

    move-result-object v0

    goto :goto_0
.end method

.method private showTrustedCerts()V
    .locals 6

    sget-object v2, Lsun/security/ssl/X509TrustManagerImpl;->debug:Lsun/security/ssl/Debug;

    if-eqz v2, :cond_0

    const-string/jumbo v2, "trustmanager"

    invoke-static {v2}, Lsun/security/ssl/Debug;->isOn(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lsun/security/ssl/X509TrustManagerImpl;->trustedCerts:Ljava/util/Collection;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/security/cert/X509Certificate;

    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string/jumbo v3, "adding as trusted cert:"

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "  Subject: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/security/cert/X509Certificate;->getSubjectX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "  Issuer:  "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/security/cert/X509Certificate;->getIssuerX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "  Algorithm: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/security/cert/Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v4

    invoke-interface {v4}, Ljava/security/PublicKey;->getAlgorithm()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "; Serial number: 0x"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/security/cert/X509Certificate;->getSerialNumber()Ljava/math/BigInteger;

    move-result-object v4

    const/16 v5, 0x10

    invoke-virtual {v4, v5}, Ljava/math/BigInteger;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "  Valid from "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/security/cert/X509Certificate;->getNotBefore()Ljava/util/Date;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " until "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/security/cert/X509Certificate;->getNotAfter()Ljava/util/Date;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v2}, Ljava/io/PrintStream;->println()V

    goto/16 :goto_0

    :cond_0
    return-void
.end method

.method private static validate(Lsun/security/validator/Validator;[Ljava/security/cert/X509Certificate;Ljava/security/AlgorithmConstraints;Ljava/lang/String;)[Ljava/security/cert/X509Certificate;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    invoke-static {}, Lsun/security/ssl/JsseJce;->beginFipsProvider()Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {p0, p1, v1, p2, p3}, Lsun/security/validator/Validator;->validate([Ljava/security/cert/X509Certificate;Ljava/util/Collection;Ljava/security/AlgorithmConstraints;Ljava/lang/Object;)[Ljava/security/cert/X509Certificate;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    invoke-static {v0}, Lsun/security/ssl/JsseJce;->endFipsProvider(Ljava/lang/Object;)V

    return-object v1

    :catchall_0
    move-exception v1

    invoke-static {v0}, Lsun/security/ssl/JsseJce;->endFipsProvider(Ljava/lang/Object;)V

    throw v1
.end method


# virtual methods
.method public checkClientTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    const/4 v0, 0x0

    nop

    nop

    const/4 v1, 0x1

    invoke-direct {p0, p1, p2, v0, v1}, Lsun/security/ssl/X509TrustManagerImpl;->checkTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;Ljava/net/Socket;Z)V

    return-void
.end method

.method public checkClientTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;Ljava/net/Socket;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, p3, v0}, Lsun/security/ssl/X509TrustManagerImpl;->checkTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;Ljava/net/Socket;Z)V

    return-void
.end method

.method public checkClientTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;Ljavax/net/ssl/SSLEngine;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, p3, v0}, Lsun/security/ssl/X509TrustManagerImpl;->checkTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;Ljavax/net/ssl/SSLEngine;Z)V

    return-void
.end method

.method public checkServerTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    const/4 v0, 0x0

    nop

    nop

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, v0, v1}, Lsun/security/ssl/X509TrustManagerImpl;->checkTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;Ljava/net/Socket;Z)V

    return-void
.end method

.method public checkServerTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;Ljava/net/Socket;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lsun/security/ssl/X509TrustManagerImpl;->checkTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;Ljava/net/Socket;Z)V

    return-void
.end method

.method public checkServerTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;Ljavax/net/ssl/SSLEngine;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lsun/security/ssl/X509TrustManagerImpl;->checkTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;Ljavax/net/ssl/SSLEngine;Z)V

    return-void
.end method

.method public getAcceptedIssuers()[Ljava/security/cert/X509Certificate;
    .locals 2

    iget-object v1, p0, Lsun/security/ssl/X509TrustManagerImpl;->trustedCerts:Ljava/util/Collection;

    invoke-interface {v1}, Ljava/util/Collection;->size()I

    move-result v1

    new-array v0, v1, [Ljava/security/cert/X509Certificate;

    iget-object v1, p0, Lsun/security/ssl/X509TrustManagerImpl;->trustedCerts:Ljava/util/Collection;

    invoke-interface {v1, v0}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    return-object v0
.end method
