.class final Lsun/security/ssl/SSLSessionImpl;
.super Ljavax/net/ssl/ExtendedSSLSession;
.source "SSLSessionImpl.java"


# static fields
.field private static final compression_null:B

.field private static volatile counter:I

.field private static final debug:Lsun/security/ssl/Debug;

.field private static defaultRejoinable:Z

.field static final nullSession:Lsun/security/ssl/SSLSessionImpl;


# instance fields
.field private acceptLargeFragments:Z

.field private cipherSuite:Lsun/security/ssl/CipherSuite;

.field private compressionMethod:B

.field private context:Lsun/security/ssl/SSLSessionContextImpl;

.field private final creationTime:J

.field private final host:Ljava/lang/String;

.field private invalidated:Z

.field private lastUsedTime:J

.field private localCerts:[Ljava/security/cert/X509Certificate;

.field private localPrincipal:Ljava/security/Principal;

.field private localPrivateKey:Ljava/security/PrivateKey;

.field private localSupportedSignAlgs:[Ljava/lang/String;

.field private masterSecret:Ljavax/crypto/SecretKey;

.field private peerCerts:[Ljava/security/cert/X509Certificate;

.field private peerPrincipal:Ljava/security/Principal;

.field private peerSupportedSignAlgs:[Ljava/lang/String;

.field private final port:I

.field private final protocolVersion:Lsun/security/ssl/ProtocolVersion;

.field private sessionCount:I

.field private final sessionId:Lsun/security/ssl/SessionId;

.field private table:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable",
            "<",
            "Lsun/security/ssl/SecureKey;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lsun/security/ssl/SSLSessionImpl;

    invoke-direct {v0}, Lsun/security/ssl/SSLSessionImpl;-><init>()V

    sput-object v0, Lsun/security/ssl/SSLSessionImpl;->nullSession:Lsun/security/ssl/SSLSessionImpl;

    const/4 v0, 0x0

    sput v0, Lsun/security/ssl/SSLSessionImpl;->counter:I

    const/4 v0, 0x1

    sput-boolean v0, Lsun/security/ssl/SSLSessionImpl;->defaultRejoinable:Z

    const-string/jumbo v0, "ssl"

    invoke-static {v0}, Lsun/security/ssl/Debug;->getInstance(Ljava/lang/String;)Lsun/security/ssl/Debug;

    move-result-object v0

    sput-object v0, Lsun/security/ssl/SSLSessionImpl;->debug:Lsun/security/ssl/Debug;

    return-void
.end method

.method private constructor <init>()V
    .locals 7

    const/4 v3, 0x0

    sget-object v1, Lsun/security/ssl/ProtocolVersion;->NONE:Lsun/security/ssl/ProtocolVersion;

    sget-object v2, Lsun/security/ssl/CipherSuite;->C_NULL:Lsun/security/ssl/CipherSuite;

    new-instance v4, Lsun/security/ssl/SessionId;

    const/4 v0, 0x0

    invoke-direct {v4, v0, v3}, Lsun/security/ssl/SessionId;-><init>(ZLjava/security/SecureRandom;)V

    const/4 v6, -0x1

    move-object v0, p0

    move-object v5, v3

    invoke-direct/range {v0 .. v6}, Lsun/security/ssl/SSLSessionImpl;-><init>(Lsun/security/ssl/ProtocolVersion;Lsun/security/ssl/CipherSuite;Ljava/util/Collection;Lsun/security/ssl/SessionId;Ljava/lang/String;I)V

    return-void
.end method

.method constructor <init>(Lsun/security/ssl/ProtocolVersion;Lsun/security/ssl/CipherSuite;Ljava/util/Collection;Ljava/security/SecureRandom;Ljava/lang/String;I)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lsun/security/ssl/ProtocolVersion;",
            "Lsun/security/ssl/CipherSuite;",
            "Ljava/util/Collection",
            "<",
            "Lsun/security/ssl/SignatureAndHashAlgorithm;",
            ">;",
            "Ljava/security/SecureRandom;",
            "Ljava/lang/String;",
            "I)V"
        }
    .end annotation

    new-instance v4, Lsun/security/ssl/SessionId;

    sget-boolean v0, Lsun/security/ssl/SSLSessionImpl;->defaultRejoinable:Z

    invoke-direct {v4, v0, p4}, Lsun/security/ssl/SessionId;-><init>(ZLjava/security/SecureRandom;)V

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, p5

    move v6, p6

    invoke-direct/range {v0 .. v6}, Lsun/security/ssl/SSLSessionImpl;-><init>(Lsun/security/ssl/ProtocolVersion;Lsun/security/ssl/CipherSuite;Ljava/util/Collection;Lsun/security/ssl/SessionId;Ljava/lang/String;I)V

    return-void
.end method

.method constructor <init>(Lsun/security/ssl/ProtocolVersion;Lsun/security/ssl/CipherSuite;Ljava/util/Collection;Lsun/security/ssl/SessionId;Ljava/lang/String;I)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lsun/security/ssl/ProtocolVersion;",
            "Lsun/security/ssl/CipherSuite;",
            "Ljava/util/Collection",
            "<",
            "Lsun/security/ssl/SignatureAndHashAlgorithm;",
            ">;",
            "Lsun/security/ssl/SessionId;",
            "Ljava/lang/String;",
            "I)V"
        }
    .end annotation

    const/4 v3, 0x0

    const/4 v2, 0x0

    invoke-direct {p0}, Ljavax/net/ssl/ExtendedSSLSession;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lsun/security/ssl/SSLSessionImpl;->creationTime:J

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lsun/security/ssl/SSLSessionImpl;->lastUsedTime:J

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lsun/security/ssl/SSLSessionImpl;->table:Ljava/util/Hashtable;

    const-string/jumbo v0, "jsse.SSLEngine.acceptLargeFragments"

    invoke-static {v0, v3}, Lsun/security/ssl/Debug;->getBooleanProperty(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lsun/security/ssl/SSLSessionImpl;->acceptLargeFragments:Z

    iput-object p1, p0, Lsun/security/ssl/SSLSessionImpl;->protocolVersion:Lsun/security/ssl/ProtocolVersion;

    iput-object p4, p0, Lsun/security/ssl/SSLSessionImpl;->sessionId:Lsun/security/ssl/SessionId;

    iput-object v2, p0, Lsun/security/ssl/SSLSessionImpl;->peerCerts:[Ljava/security/cert/X509Certificate;

    iput-byte v3, p0, Lsun/security/ssl/SSLSessionImpl;->compressionMethod:B

    iput-object p2, p0, Lsun/security/ssl/SSLSessionImpl;->cipherSuite:Lsun/security/ssl/CipherSuite;

    iput-object v2, p0, Lsun/security/ssl/SSLSessionImpl;->masterSecret:Ljavax/crypto/SecretKey;

    iput-object p5, p0, Lsun/security/ssl/SSLSessionImpl;->host:Ljava/lang/String;

    iput p6, p0, Lsun/security/ssl/SSLSessionImpl;->port:I

    sget v0, Lsun/security/ssl/SSLSessionImpl;->counter:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lsun/security/ssl/SSLSessionImpl;->counter:I

    iput v0, p0, Lsun/security/ssl/SSLSessionImpl;->sessionCount:I

    invoke-static {p3}, Lsun/security/ssl/SignatureAndHashAlgorithm;->getAlgorithmNames(Ljava/util/Collection;)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lsun/security/ssl/SSLSessionImpl;->localSupportedSignAlgs:[Ljava/lang/String;

    sget-object v0, Lsun/security/ssl/SSLSessionImpl;->debug:Lsun/security/ssl/Debug;

    if-eqz v0, :cond_0

    const-string/jumbo v0, "session"

    invoke-static {v0}, Lsun/security/ssl/Debug;->isOn(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "%% Initialized:  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v1, 0x0

    if-ne p1, p0, :cond_0

    const/4 v1, 0x1

    return v1

    :cond_0
    instance-of v2, p1, Lsun/security/ssl/SSLSessionImpl;

    if-eqz v2, :cond_2

    move-object v0, p1

    nop

    nop

    iget-object v2, p0, Lsun/security/ssl/SSLSessionImpl;->sessionId:Lsun/security/ssl/SessionId;

    if-eqz v2, :cond_1

    iget-object v1, p0, Lsun/security/ssl/SSLSessionImpl;->sessionId:Lsun/security/ssl/SessionId;

    invoke-virtual {v0}, Lsun/security/ssl/SSLSessionImpl;->getSessionId()Lsun/security/ssl/SessionId;

    move-result-object v2

    invoke-virtual {v1, v2}, Lsun/security/ssl/SessionId;->equals(Ljava/lang/Object;)Z

    move-result v1

    :cond_1
    return v1

    :cond_2
    return v1
.end method

.method protected declared-synchronized expandBufferSizes()V
    .locals 1

    monitor-enter p0

    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lsun/security/ssl/SSLSessionImpl;->acceptLargeFragments:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public finalize()V
    .locals 3

    invoke-virtual {p0}, Lsun/security/ssl/SSLSessionImpl;->getValueNames()[Ljava/lang/String;

    move-result-object v1

    const/4 v0, 0x0

    :goto_0
    array-length v2, v1

    if-ge v0, v2, :cond_0

    aget-object v2, v1, v0

    invoke-virtual {p0, v2}, Lsun/security/ssl/SSLSessionImpl;->removeValue(Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public declared-synchronized getApplicationBufferSize()I
    .locals 1

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lsun/security/ssl/SSLSessionImpl;->getPacketBufferSize()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    add-int/lit8 v0, v0, -0x5

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getCertificateChain()[Ljava/security/cert/X509Certificate;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLPeerUnverifiedException;
        }
    .end annotation

    iget-object v0, p0, Lsun/security/ssl/SSLSessionImpl;->cipherSuite:Lsun/security/ssl/CipherSuite;

    iget-object v0, v0, Lsun/security/ssl/CipherSuite;->keyExchange:Lsun/security/ssl/CipherSuite$KeyExchange;

    sget-object v1, Lsun/security/ssl/CipherSuite$KeyExchange;->K_KRB5:Lsun/security/ssl/CipherSuite$KeyExchange;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lsun/security/ssl/SSLSessionImpl;->cipherSuite:Lsun/security/ssl/CipherSuite;

    iget-object v0, v0, Lsun/security/ssl/CipherSuite;->keyExchange:Lsun/security/ssl/CipherSuite$KeyExchange;

    sget-object v1, Lsun/security/ssl/CipherSuite$KeyExchange;->K_KRB5_EXPORT:Lsun/security/ssl/CipherSuite$KeyExchange;

    if-ne v0, v1, :cond_1

    :cond_0
    new-instance v0, Ljavax/net/ssl/SSLPeerUnverifiedException;

    const-string/jumbo v1, "no certificates expected for Kerberos cipher suites"

    invoke-direct {v0, v1}, Ljavax/net/ssl/SSLPeerUnverifiedException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iget-object v0, p0, Lsun/security/ssl/SSLSessionImpl;->peerCerts:[Ljava/security/cert/X509Certificate;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lsun/security/ssl/SSLSessionImpl;->peerCerts:[Ljava/security/cert/X509Certificate;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/security/cert/X509Certificate;

    return-object v0

    :cond_2
    new-instance v0, Ljavax/net/ssl/SSLPeerUnverifiedException;

    const-string/jumbo v1, "peer not authenticated"

    invoke-direct {v0, v1}, Ljavax/net/ssl/SSLPeerUnverifiedException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getCipherSuite()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lsun/security/ssl/SSLSessionImpl;->getSuite()Lsun/security/ssl/CipherSuite;

    move-result-object v0

    iget-object v0, v0, Lsun/security/ssl/CipherSuite;->name:Ljava/lang/String;

    return-object v0
.end method

.method getCompression()B
    .locals 1

    iget-byte v0, p0, Lsun/security/ssl/SSLSessionImpl;->compressionMethod:B

    return v0
.end method

.method public getCreationTime()J
    .locals 2

    iget-wide v0, p0, Lsun/security/ssl/SSLSessionImpl;->creationTime:J

    return-wide v0
.end method

.method public getId()[B
    .locals 1

    iget-object v0, p0, Lsun/security/ssl/SSLSessionImpl;->sessionId:Lsun/security/ssl/SessionId;

    invoke-virtual {v0}, Lsun/security/ssl/SessionId;->getId()[B

    move-result-object v0

    return-object v0
.end method

.method public getLastAccessedTime()J
    .locals 4

    iget-wide v0, p0, Lsun/security/ssl/SSLSessionImpl;->lastUsedTime:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lsun/security/ssl/SSLSessionImpl;->lastUsedTime:J

    :goto_0
    return-wide v0

    :cond_0
    iget-wide v0, p0, Lsun/security/ssl/SSLSessionImpl;->creationTime:J

    goto :goto_0
.end method

.method public getLocalCertificates()[Ljava/security/cert/Certificate;
    .locals 2

    const/4 v0, 0x0

    iget-object v1, p0, Lsun/security/ssl/SSLSessionImpl;->localCerts:[Ljava/security/cert/X509Certificate;

    if-nez v1, :cond_0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lsun/security/ssl/SSLSessionImpl;->localCerts:[Ljava/security/cert/X509Certificate;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/security/cert/Certificate;

    goto :goto_0
.end method

.method public getLocalPrincipal()Ljava/security/Principal;
    .locals 3

    const/4 v0, 0x0

    iget-object v1, p0, Lsun/security/ssl/SSLSessionImpl;->cipherSuite:Lsun/security/ssl/CipherSuite;

    iget-object v1, v1, Lsun/security/ssl/CipherSuite;->keyExchange:Lsun/security/ssl/CipherSuite$KeyExchange;

    sget-object v2, Lsun/security/ssl/CipherSuite$KeyExchange;->K_KRB5:Lsun/security/ssl/CipherSuite$KeyExchange;

    if-eq v1, v2, :cond_0

    iget-object v1, p0, Lsun/security/ssl/SSLSessionImpl;->cipherSuite:Lsun/security/ssl/CipherSuite;

    iget-object v1, v1, Lsun/security/ssl/CipherSuite;->keyExchange:Lsun/security/ssl/CipherSuite$KeyExchange;

    sget-object v2, Lsun/security/ssl/CipherSuite$KeyExchange;->K_KRB5_EXPORT:Lsun/security/ssl/CipherSuite$KeyExchange;

    if-ne v1, v2, :cond_2

    :cond_0
    iget-object v1, p0, Lsun/security/ssl/SSLSessionImpl;->localPrincipal:Ljava/security/Principal;

    if-nez v1, :cond_1

    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lsun/security/ssl/SSLSessionImpl;->localPrincipal:Ljava/security/Principal;

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lsun/security/ssl/SSLSessionImpl;->localCerts:[Ljava/security/cert/X509Certificate;

    if-nez v1, :cond_3

    :goto_1
    return-object v0

    :cond_3
    iget-object v0, p0, Lsun/security/ssl/SSLSessionImpl;->localCerts:[Ljava/security/cert/X509Certificate;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {v0}, Ljava/security/cert/X509Certificate;->getSubjectX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v0

    goto :goto_1
.end method

.method public getLocalSupportedSignatureAlgorithms()[Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lsun/security/ssl/SSLSessionImpl;->localSupportedSignAlgs:[Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lsun/security/ssl/SSLSessionImpl;->localSupportedSignAlgs:[Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    return-object v0
.end method

.method getMasterSecret()Ljavax/crypto/SecretKey;
    .locals 1

    iget-object v0, p0, Lsun/security/ssl/SSLSessionImpl;->masterSecret:Ljavax/crypto/SecretKey;

    return-object v0
.end method

.method public declared-synchronized getPacketBufferSize()I
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lsun/security/ssl/SSLSessionImpl;->acceptLargeFragments:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    const v0, 0x8219

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    const/16 v0, 0x4219

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getPeerAddress()Ljava/net/InetAddress;
    .locals 2

    :try_start_0
    iget-object v1, p0, Lsun/security/ssl/SSLSessionImpl;->host:Ljava/lang/String;

    invoke-static {v1}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    :catch_0
    move-exception v0

    const/4 v1, 0x0

    return-object v1
.end method

.method public getPeerCertificateChain()[Ljavax/security/cert/X509Certificate;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLPeerUnverifiedException;
        }
    .end annotation

    iget-object v5, p0, Lsun/security/ssl/SSLSessionImpl;->cipherSuite:Lsun/security/ssl/CipherSuite;

    iget-object v5, v5, Lsun/security/ssl/CipherSuite;->keyExchange:Lsun/security/ssl/CipherSuite$KeyExchange;

    sget-object v6, Lsun/security/ssl/CipherSuite$KeyExchange;->K_KRB5:Lsun/security/ssl/CipherSuite$KeyExchange;

    if-eq v5, v6, :cond_0

    iget-object v5, p0, Lsun/security/ssl/SSLSessionImpl;->cipherSuite:Lsun/security/ssl/CipherSuite;

    iget-object v5, v5, Lsun/security/ssl/CipherSuite;->keyExchange:Lsun/security/ssl/CipherSuite$KeyExchange;

    sget-object v6, Lsun/security/ssl/CipherSuite$KeyExchange;->K_KRB5_EXPORT:Lsun/security/ssl/CipherSuite$KeyExchange;

    if-ne v5, v6, :cond_1

    :cond_0
    new-instance v5, Ljavax/net/ssl/SSLPeerUnverifiedException;

    const-string/jumbo v6, "no certificates expected for Kerberos cipher suites"

    invoke-direct {v5, v6}, Ljavax/net/ssl/SSLPeerUnverifiedException;-><init>(Ljava/lang/String;)V

    throw v5

    :cond_1
    iget-object v5, p0, Lsun/security/ssl/SSLSessionImpl;->peerCerts:[Ljava/security/cert/X509Certificate;

    if-nez v5, :cond_2

    new-instance v5, Ljavax/net/ssl/SSLPeerUnverifiedException;

    const-string/jumbo v6, "peer not authenticated"

    invoke-direct {v5, v6}, Ljavax/net/ssl/SSLPeerUnverifiedException;-><init>(Ljava/lang/String;)V

    throw v5

    :cond_2
    iget-object v5, p0, Lsun/security/ssl/SSLSessionImpl;->peerCerts:[Ljava/security/cert/X509Certificate;

    array-length v5, v5

    new-array v0, v5, [Ljavax/security/cert/X509Certificate;

    const/4 v4, 0x0

    :goto_0
    iget-object v5, p0, Lsun/security/ssl/SSLSessionImpl;->peerCerts:[Ljava/security/cert/X509Certificate;

    array-length v5, v5

    if-ge v4, v5, :cond_3

    const/4 v1, 0x0

    :try_start_0
    iget-object v5, p0, Lsun/security/ssl/SSLSessionImpl;->peerCerts:[Ljava/security/cert/X509Certificate;

    aget-object v5, v5, v4

    invoke-virtual {v5}, Ljava/security/cert/Certificate;->getEncoded()[B

    move-result-object v1

    invoke-static {v1}, Ljavax/security/cert/X509Certificate;->getInstance([B)Ljavax/security/cert/X509Certificate;

    move-result-object v5

    aput-object v5, v0, v4
    :try_end_0
    .catch Ljava/security/cert/CertificateEncodingException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljavax/security/cert/CertificateException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :catch_0
    move-exception v3

    new-instance v5, Ljavax/net/ssl/SSLPeerUnverifiedException;

    invoke-virtual {v3}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljavax/net/ssl/SSLPeerUnverifiedException;-><init>(Ljava/lang/String;)V

    throw v5

    :catch_1
    move-exception v2

    new-instance v5, Ljavax/net/ssl/SSLPeerUnverifiedException;

    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljavax/net/ssl/SSLPeerUnverifiedException;-><init>(Ljava/lang/String;)V

    throw v5

    :cond_3
    return-object v0
.end method

.method public getPeerCertificates()[Ljava/security/cert/Certificate;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLPeerUnverifiedException;
        }
    .end annotation

    iget-object v0, p0, Lsun/security/ssl/SSLSessionImpl;->cipherSuite:Lsun/security/ssl/CipherSuite;

    iget-object v0, v0, Lsun/security/ssl/CipherSuite;->keyExchange:Lsun/security/ssl/CipherSuite$KeyExchange;

    sget-object v1, Lsun/security/ssl/CipherSuite$KeyExchange;->K_KRB5:Lsun/security/ssl/CipherSuite$KeyExchange;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lsun/security/ssl/SSLSessionImpl;->cipherSuite:Lsun/security/ssl/CipherSuite;

    iget-object v0, v0, Lsun/security/ssl/CipherSuite;->keyExchange:Lsun/security/ssl/CipherSuite$KeyExchange;

    sget-object v1, Lsun/security/ssl/CipherSuite$KeyExchange;->K_KRB5_EXPORT:Lsun/security/ssl/CipherSuite$KeyExchange;

    if-ne v0, v1, :cond_1

    :cond_0
    new-instance v0, Ljavax/net/ssl/SSLPeerUnverifiedException;

    const-string/jumbo v1, "no certificates expected for Kerberos cipher suites"

    invoke-direct {v0, v1}, Ljavax/net/ssl/SSLPeerUnverifiedException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iget-object v0, p0, Lsun/security/ssl/SSLSessionImpl;->peerCerts:[Ljava/security/cert/X509Certificate;

    if-nez v0, :cond_2

    new-instance v0, Ljavax/net/ssl/SSLPeerUnverifiedException;

    const-string/jumbo v1, "peer not authenticated"

    invoke-direct {v0, v1}, Ljavax/net/ssl/SSLPeerUnverifiedException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    iget-object v0, p0, Lsun/security/ssl/SSLSessionImpl;->peerCerts:[Ljava/security/cert/X509Certificate;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/security/cert/Certificate;

    return-object v0
.end method

.method public getPeerHost()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lsun/security/ssl/SSLSessionImpl;->host:Ljava/lang/String;

    return-object v0
.end method

.method public getPeerPort()I
    .locals 1

    iget v0, p0, Lsun/security/ssl/SSLSessionImpl;->port:I

    return v0
.end method

.method public getPeerPrincipal()Ljava/security/Principal;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLPeerUnverifiedException;
        }
    .end annotation

    iget-object v0, p0, Lsun/security/ssl/SSLSessionImpl;->cipherSuite:Lsun/security/ssl/CipherSuite;

    iget-object v0, v0, Lsun/security/ssl/CipherSuite;->keyExchange:Lsun/security/ssl/CipherSuite$KeyExchange;

    sget-object v1, Lsun/security/ssl/CipherSuite$KeyExchange;->K_KRB5:Lsun/security/ssl/CipherSuite$KeyExchange;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lsun/security/ssl/SSLSessionImpl;->cipherSuite:Lsun/security/ssl/CipherSuite;

    iget-object v0, v0, Lsun/security/ssl/CipherSuite;->keyExchange:Lsun/security/ssl/CipherSuite$KeyExchange;

    sget-object v1, Lsun/security/ssl/CipherSuite$KeyExchange;->K_KRB5_EXPORT:Lsun/security/ssl/CipherSuite$KeyExchange;

    if-ne v0, v1, :cond_2

    :cond_0
    iget-object v0, p0, Lsun/security/ssl/SSLSessionImpl;->peerPrincipal:Ljava/security/Principal;

    if-nez v0, :cond_1

    new-instance v0, Ljavax/net/ssl/SSLPeerUnverifiedException;

    const-string/jumbo v1, "peer not authenticated"

    invoke-direct {v0, v1}, Ljavax/net/ssl/SSLPeerUnverifiedException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iget-object v0, p0, Lsun/security/ssl/SSLSessionImpl;->peerPrincipal:Ljava/security/Principal;

    return-object v0

    :cond_2
    iget-object v0, p0, Lsun/security/ssl/SSLSessionImpl;->peerCerts:[Ljava/security/cert/X509Certificate;

    if-nez v0, :cond_3

    new-instance v0, Ljavax/net/ssl/SSLPeerUnverifiedException;

    const-string/jumbo v1, "peer not authenticated"

    invoke-direct {v0, v1}, Ljavax/net/ssl/SSLPeerUnverifiedException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    iget-object v0, p0, Lsun/security/ssl/SSLSessionImpl;->peerCerts:[Ljava/security/cert/X509Certificate;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {v0}, Ljava/security/cert/X509Certificate;->getSubjectX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v0

    return-object v0
.end method

.method public getPeerSupportedSignatureAlgorithms()[Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lsun/security/ssl/SSLSessionImpl;->peerSupportedSignAlgs:[Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lsun/security/ssl/SSLSessionImpl;->peerSupportedSignAlgs:[Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    return-object v0
.end method

.method public getProtocol()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lsun/security/ssl/SSLSessionImpl;->getProtocolVersion()Lsun/security/ssl/ProtocolVersion;

    move-result-object v0

    iget-object v0, v0, Lsun/security/ssl/ProtocolVersion;->name:Ljava/lang/String;

    return-object v0
.end method

.method getProtocolVersion()Lsun/security/ssl/ProtocolVersion;
    .locals 1

    iget-object v0, p0, Lsun/security/ssl/SSLSessionImpl;->protocolVersion:Lsun/security/ssl/ProtocolVersion;

    return-object v0
.end method

.method public getSessionContext()Ljavax/net/ssl/SSLSessionContext;
    .locals 3

    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v1, Ljavax/net/ssl/SSLPermission;

    const-string/jumbo v2, "getSSLSessionContext"

    invoke-direct {v1, v2}, Ljavax/net/ssl/SSLPermission;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/SecurityManager;->checkPermission(Ljava/security/Permission;)V

    :cond_0
    iget-object v1, p0, Lsun/security/ssl/SSLSessionImpl;->context:Lsun/security/ssl/SSLSessionContextImpl;

    return-object v1
.end method

.method getSessionId()Lsun/security/ssl/SessionId;
    .locals 1

    iget-object v0, p0, Lsun/security/ssl/SSLSessionImpl;->sessionId:Lsun/security/ssl/SessionId;

    return-object v0
.end method

.method getSuite()Lsun/security/ssl/CipherSuite;
    .locals 1

    iget-object v0, p0, Lsun/security/ssl/SSLSessionImpl;->cipherSuite:Lsun/security/ssl/CipherSuite;

    return-object v0
.end method

.method public getValue(Ljava/lang/String;)Ljava/lang/Object;
    .locals 3

    if-nez p1, :cond_0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "argument can not be null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    new-instance v0, Lsun/security/ssl/SecureKey;

    invoke-direct {v0, p1}, Lsun/security/ssl/SecureKey;-><init>(Ljava/lang/Object;)V

    iget-object v1, p0, Lsun/security/ssl/SSLSessionImpl;->table:Ljava/util/Hashtable;

    invoke-virtual {v1, v0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    return-object v1
.end method

.method public getValueNames()[Ljava/lang/String;
    .locals 6

    new-instance v4, Ljava/util/Vector;

    invoke-direct {v4}, Ljava/util/Vector;-><init>()V

    invoke-static {}, Lsun/security/ssl/SecureKey;->getCurrentSecurityContext()Ljava/lang/Object;

    move-result-object v3

    iget-object v5, p0, Lsun/security/ssl/SSLSessionImpl;->table:Ljava/util/Hashtable;

    invoke-virtual {v5}, Ljava/util/Hashtable;->keys()Ljava/util/Enumeration;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lsun/security/ssl/SecureKey;

    invoke-virtual {v1}, Lsun/security/ssl/SecureKey;->getSecurityContext()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-virtual {v1}, Lsun/security/ssl/SecureKey;->getAppKey()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    invoke-virtual {v4}, Ljava/util/Vector;->size()I

    move-result v5

    new-array v2, v5, [Ljava/lang/String;

    invoke-virtual {v4, v2}, Ljava/util/Vector;->copyInto([Ljava/lang/Object;)V

    return-object v2
.end method

.method public hashCode()I
    .locals 1

    iget-object v0, p0, Lsun/security/ssl/SSLSessionImpl;->sessionId:Lsun/security/ssl/SessionId;

    invoke-virtual {v0}, Lsun/security/ssl/SessionId;->hashCode()I

    move-result v0

    return v0
.end method

.method public declared-synchronized invalidate()V
    .locals 3

    monitor-enter p0

    :try_start_0
    sget-object v0, Lsun/security/ssl/SSLSessionImpl;->nullSession:Lsun/security/ssl/SSLSessionImpl;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne p0, v0, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    const/4 v0, 0x1

    :try_start_1
    iput-boolean v0, p0, Lsun/security/ssl/SSLSessionImpl;->invalidated:Z

    sget-object v0, Lsun/security/ssl/SSLSessionImpl;->debug:Lsun/security/ssl/Debug;

    if-eqz v0, :cond_1

    const-string/jumbo v0, "session"

    invoke-static {v0}, Lsun/security/ssl/Debug;->isOn(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "%% Invalidated:  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_1
    iget-object v0, p0, Lsun/security/ssl/SSLSessionImpl;->context:Lsun/security/ssl/SSLSessionContextImpl;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lsun/security/ssl/SSLSessionImpl;->context:Lsun/security/ssl/SSLSessionContextImpl;

    iget-object v1, p0, Lsun/security/ssl/SSLSessionImpl;->sessionId:Lsun/security/ssl/SessionId;

    invoke-virtual {v0, v1}, Lsun/security/ssl/SSLSessionContextImpl;->remove(Lsun/security/ssl/SessionId;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lsun/security/ssl/SSLSessionImpl;->context:Lsun/security/ssl/SSLSessionContextImpl;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_2
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method isLocalAuthenticationValid()Z
    .locals 2

    iget-object v1, p0, Lsun/security/ssl/SSLSessionImpl;->localPrivateKey:Ljava/security/PrivateKey;

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v1, p0, Lsun/security/ssl/SSLSessionImpl;->localPrivateKey:Ljava/security/PrivateKey;

    invoke-interface {v1}, Ljava/security/PrivateKey;->getAlgorithm()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    const/4 v1, 0x1

    return v1

    :catch_0
    move-exception v0

    invoke-virtual {p0}, Lsun/security/ssl/SSLSessionImpl;->invalidate()V

    const/4 v1, 0x0

    return v1
.end method

.method isRejoinable()Z
    .locals 2

    const/4 v0, 0x0

    iget-object v1, p0, Lsun/security/ssl/SSLSessionImpl;->sessionId:Lsun/security/ssl/SessionId;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lsun/security/ssl/SSLSessionImpl;->sessionId:Lsun/security/ssl/SessionId;

    invoke-virtual {v1}, Lsun/security/ssl/SessionId;->length()I

    move-result v1

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lsun/security/ssl/SSLSessionImpl;->invalidated:Z

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-virtual {p0}, Lsun/security/ssl/SSLSessionImpl;->isLocalAuthenticationValid()Z

    move-result v0

    goto :goto_0
.end method

.method public declared-synchronized isValid()Z
    .locals 1

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lsun/security/ssl/SSLSessionImpl;->isRejoinable()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public putValue(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 5

    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    :cond_0
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v4, "arguments can not be null"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_1
    new-instance v2, Lsun/security/ssl/SecureKey;

    invoke-direct {v2, p1}, Lsun/security/ssl/SecureKey;-><init>(Ljava/lang/Object;)V

    iget-object v3, p0, Lsun/security/ssl/SSLSessionImpl;->table:Ljava/util/Hashtable;

    invoke-virtual {v3, v2, p2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    instance-of v3, v1, Ljavax/net/ssl/SSLSessionBindingListener;

    if-eqz v3, :cond_2

    new-instance v0, Ljavax/net/ssl/SSLSessionBindingEvent;

    invoke-direct {v0, p0, p1}, Ljavax/net/ssl/SSLSessionBindingEvent;-><init>(Ljavax/net/ssl/SSLSession;Ljava/lang/String;)V

    check-cast v1, Ljavax/net/ssl/SSLSessionBindingListener;

    invoke-interface {v1, v0}, Ljavax/net/ssl/SSLSessionBindingListener;->valueUnbound(Ljavax/net/ssl/SSLSessionBindingEvent;)V

    :cond_2
    instance-of v3, p2, Ljavax/net/ssl/SSLSessionBindingListener;

    if-eqz v3, :cond_3

    new-instance v0, Ljavax/net/ssl/SSLSessionBindingEvent;

    invoke-direct {v0, p0, p1}, Ljavax/net/ssl/SSLSessionBindingEvent;-><init>(Ljavax/net/ssl/SSLSession;Ljava/lang/String;)V

    check-cast p2, Ljavax/net/ssl/SSLSessionBindingListener;

    invoke-interface {p2, v0}, Ljavax/net/ssl/SSLSessionBindingListener;->valueBound(Ljavax/net/ssl/SSLSessionBindingEvent;)V

    :cond_3
    return-void
.end method

.method public removeValue(Ljava/lang/String;)V
    .locals 5

    if-nez p1, :cond_0

    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v4, "argument can not be null"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_0
    new-instance v1, Lsun/security/ssl/SecureKey;

    invoke-direct {v1, p1}, Lsun/security/ssl/SecureKey;-><init>(Ljava/lang/Object;)V

    iget-object v3, p0, Lsun/security/ssl/SSLSessionImpl;->table:Ljava/util/Hashtable;

    invoke-virtual {v3, v1}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    instance-of v3, v2, Ljavax/net/ssl/SSLSessionBindingListener;

    if-eqz v3, :cond_1

    new-instance v0, Ljavax/net/ssl/SSLSessionBindingEvent;

    invoke-direct {v0, p0, p1}, Ljavax/net/ssl/SSLSessionBindingEvent;-><init>(Ljavax/net/ssl/SSLSession;Ljava/lang/String;)V

    check-cast v2, Ljavax/net/ssl/SSLSessionBindingListener;

    invoke-interface {v2, v0}, Ljavax/net/ssl/SSLSessionBindingListener;->valueUnbound(Ljavax/net/ssl/SSLSessionBindingEvent;)V

    :cond_1
    return-void
.end method

.method setContext(Lsun/security/ssl/SSLSessionContextImpl;)V
    .locals 1

    iget-object v0, p0, Lsun/security/ssl/SSLSessionImpl;->context:Lsun/security/ssl/SSLSessionContextImpl;

    if-nez v0, :cond_0

    iput-object p1, p0, Lsun/security/ssl/SSLSessionImpl;->context:Lsun/security/ssl/SSLSessionContextImpl;

    :cond_0
    return-void
.end method

.method setLastAccessedTime(J)V
    .locals 1

    iput-wide p1, p0, Lsun/security/ssl/SSLSessionImpl;->lastUsedTime:J

    return-void
.end method

.method setLocalCertificates([Ljava/security/cert/X509Certificate;)V
    .locals 0

    iput-object p1, p0, Lsun/security/ssl/SSLSessionImpl;->localCerts:[Ljava/security/cert/X509Certificate;

    return-void
.end method

.method setLocalPrincipal(Ljava/security/Principal;)V
    .locals 0

    iput-object p1, p0, Lsun/security/ssl/SSLSessionImpl;->localPrincipal:Ljava/security/Principal;

    return-void
.end method

.method setLocalPrivateKey(Ljava/security/PrivateKey;)V
    .locals 0

    iput-object p1, p0, Lsun/security/ssl/SSLSessionImpl;->localPrivateKey:Ljava/security/PrivateKey;

    return-void
.end method

.method setMasterSecret(Ljavax/crypto/SecretKey;)V
    .locals 2

    iget-object v0, p0, Lsun/security/ssl/SSLSessionImpl;->masterSecret:Ljavax/crypto/SecretKey;

    if-nez v0, :cond_0

    iput-object p1, p0, Lsun/security/ssl/SSLSessionImpl;->masterSecret:Ljavax/crypto/SecretKey;

    return-void

    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "setMasterSecret() error"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method setPeerCertificates([Ljava/security/cert/X509Certificate;)V
    .locals 1

    iget-object v0, p0, Lsun/security/ssl/SSLSessionImpl;->peerCerts:[Ljava/security/cert/X509Certificate;

    if-nez v0, :cond_0

    iput-object p1, p0, Lsun/security/ssl/SSLSessionImpl;->peerCerts:[Ljava/security/cert/X509Certificate;

    :cond_0
    return-void
.end method

.method setPeerPrincipal(Ljava/security/Principal;)V
    .locals 1

    iget-object v0, p0, Lsun/security/ssl/SSLSessionImpl;->peerPrincipal:Ljava/security/Principal;

    if-nez v0, :cond_0

    iput-object p1, p0, Lsun/security/ssl/SSLSessionImpl;->peerPrincipal:Ljava/security/Principal;

    :cond_0
    return-void
.end method

.method setPeerSupportedSignatureAlgorithms(Ljava/util/Collection;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lsun/security/ssl/SignatureAndHashAlgorithm;",
            ">;)V"
        }
    .end annotation

    invoke-static {p1}, Lsun/security/ssl/SignatureAndHashAlgorithm;->getAlgorithmNames(Ljava/util/Collection;)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lsun/security/ssl/SSLSessionImpl;->peerSupportedSignAlgs:[Ljava/lang/String;

    return-void
.end method

.method setSuite(Lsun/security/ssl/CipherSuite;)V
    .locals 3

    iput-object p1, p0, Lsun/security/ssl/SSLSessionImpl;->cipherSuite:Lsun/security/ssl/CipherSuite;

    sget-object v0, Lsun/security/ssl/SSLSessionImpl;->debug:Lsun/security/ssl/Debug;

    if-eqz v0, :cond_0

    const-string/jumbo v0, "session"

    invoke-static {v0}, Lsun/security/ssl/Debug;->isOn(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "%% Negotiating:  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "[Session-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lsun/security/ssl/SSLSessionImpl;->sessionCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lsun/security/ssl/SSLSessionImpl;->getCipherSuite()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
