.class abstract Lsun/security/ssl/Handshaker;
.super Ljava/lang/Object;
.source "Handshaker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lsun/security/ssl/Handshaker$DelegatedTask;
    }
.end annotation


# static fields
.field static final allowLegacyHelloMessages:Z

.field static final allowUnsafeRenegotiation:Z

.field static final debug:Lsun/security/ssl/Debug;


# instance fields
.field private activeCipherSuites:Lsun/security/ssl/CipherSuiteList;

.field activeProtocolVersion:Lsun/security/ssl/ProtocolVersion;

.field private activeProtocols:Lsun/security/ssl/ProtocolList;

.field private algorithmConstraints:Ljava/security/AlgorithmConstraints;

.field cipherSuite:Lsun/security/ssl/CipherSuite;

.field clientVerifyData:[B

.field private clntMacSecret:Ljavax/crypto/SecretKey;

.field private clntWriteIV:Ljavax/crypto/spec/IvParameterSpec;

.field private clntWriteKey:Ljavax/crypto/SecretKey;

.field clnt_random:Lsun/security/ssl/RandomCookie;

.field conn:Lsun/security/ssl/SSLSocketImpl;

.field private volatile delegatedTask:Lsun/security/ssl/Handshaker$DelegatedTask;

.field enableNewSession:Z

.field private enabledCipherSuites:Lsun/security/ssl/CipherSuiteList;

.field private enabledProtocols:Lsun/security/ssl/ProtocolList;

.field engine:Lsun/security/ssl/SSLEngineImpl;

.field handshakeHash:Lsun/security/ssl/HandshakeHash;

.field identificationProtocol:Ljava/lang/String;

.field input:Lsun/security/ssl/HandshakeInStream;

.field invalidated:Z

.field private isClient:Z

.field isInitialHandshake:Z

.field keyExchange:Lsun/security/ssl/CipherSuite$KeyExchange;

.field localSupportedSignAlgs:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<",
            "Lsun/security/ssl/SignatureAndHashAlgorithm;",
            ">;"
        }
    .end annotation
.end field

.field private needCertVerify:Z

.field output:Lsun/security/ssl/HandshakeOutStream;

.field peerSupportedSignAlgs:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<",
            "Lsun/security/ssl/SignatureAndHashAlgorithm;",
            ">;"
        }
    .end annotation
.end field

.field protocolVersion:Lsun/security/ssl/ProtocolVersion;

.field resumingSession:Z

.field secureRenegotiation:Z

.field serverVerifyData:[B

.field session:Lsun/security/ssl/SSLSessionImpl;

.field sslContext:Lsun/security/ssl/SSLContextImpl;

.field state:I

.field private svrMacSecret:Ljavax/crypto/SecretKey;

.field private svrWriteIV:Ljavax/crypto/spec/IvParameterSpec;

.field private svrWriteKey:Ljavax/crypto/SecretKey;

.field svr_random:Lsun/security/ssl/RandomCookie;

.field private volatile taskDelegated:Z

.field private volatile thrown:Ljava/lang/Exception;

.field private thrownLock:Ljava/lang/Object;


# direct methods
.method static synthetic -set0(Lsun/security/ssl/Handshaker;Lsun/security/ssl/Handshaker$DelegatedTask;)Lsun/security/ssl/Handshaker$DelegatedTask;
    .locals 0

    iput-object p1, p0, Lsun/security/ssl/Handshaker;->delegatedTask:Lsun/security/ssl/Handshaker$DelegatedTask;

    return-object p1
.end method

.method static synthetic -set1(Lsun/security/ssl/Handshaker;Z)Z
    .locals 0

    iput-boolean p1, p0, Lsun/security/ssl/Handshaker;->taskDelegated:Z

    return p1
.end method

.method static synthetic -set2(Lsun/security/ssl/Handshaker;Ljava/lang/Exception;)Ljava/lang/Exception;
    .locals 0

    iput-object p1, p0, Lsun/security/ssl/Handshaker;->thrown:Ljava/lang/Exception;

    return-object p1
.end method

.method static constructor <clinit>()V
    .locals 2

    const-string/jumbo v0, "ssl"

    invoke-static {v0}, Lsun/security/ssl/Debug;->getInstance(Ljava/lang/String;)Lsun/security/ssl/Debug;

    move-result-object v0

    sput-object v0, Lsun/security/ssl/Handshaker;->debug:Lsun/security/ssl/Debug;

    const-string/jumbo v0, "sun.security.ssl.allowUnsafeRenegotiation"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lsun/security/ssl/Debug;->getBooleanProperty(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lsun/security/ssl/Handshaker;->allowUnsafeRenegotiation:Z

    const-string/jumbo v0, "sun.security.ssl.allowLegacyHelloMessages"

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lsun/security/ssl/Debug;->getBooleanProperty(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lsun/security/ssl/Handshaker;->allowLegacyHelloMessages:Z

    return-void
.end method

.method constructor <init>(Lsun/security/ssl/SSLEngineImpl;Lsun/security/ssl/SSLContextImpl;Lsun/security/ssl/ProtocolList;ZZLsun/security/ssl/ProtocolVersion;ZZ[B[B)V
    .locals 10

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lsun/security/ssl/Handshaker;->algorithmConstraints:Ljava/security/AlgorithmConstraints;

    const/4 v0, 0x0

    iput-object v0, p0, Lsun/security/ssl/Handshaker;->conn:Lsun/security/ssl/SSLSocketImpl;

    const/4 v0, 0x0

    iput-object v0, p0, Lsun/security/ssl/Handshaker;->engine:Lsun/security/ssl/SSLEngineImpl;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lsun/security/ssl/Handshaker;->taskDelegated:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lsun/security/ssl/Handshaker;->delegatedTask:Lsun/security/ssl/Handshaker$DelegatedTask;

    const/4 v0, 0x0

    iput-object v0, p0, Lsun/security/ssl/Handshaker;->thrown:Ljava/lang/Exception;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lsun/security/ssl/Handshaker;->thrownLock:Ljava/lang/Object;

    iput-object p1, p0, Lsun/security/ssl/Handshaker;->engine:Lsun/security/ssl/SSLEngineImpl;

    move-object v0, p0

    move-object v1, p2

    move-object v2, p3

    move v3, p4

    move v4, p5

    move-object/from16 v5, p6

    move/from16 v6, p7

    move/from16 v7, p8

    move-object/from16 v8, p9

    move-object/from16 v9, p10

    invoke-direct/range {v0 .. v9}, Lsun/security/ssl/Handshaker;->init(Lsun/security/ssl/SSLContextImpl;Lsun/security/ssl/ProtocolList;ZZLsun/security/ssl/ProtocolVersion;ZZ[B[B)V

    return-void
.end method

.method constructor <init>(Lsun/security/ssl/SSLSocketImpl;Lsun/security/ssl/SSLContextImpl;Lsun/security/ssl/ProtocolList;ZZLsun/security/ssl/ProtocolVersion;ZZ[B[B)V
    .locals 10

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lsun/security/ssl/Handshaker;->algorithmConstraints:Ljava/security/AlgorithmConstraints;

    const/4 v0, 0x0

    iput-object v0, p0, Lsun/security/ssl/Handshaker;->conn:Lsun/security/ssl/SSLSocketImpl;

    const/4 v0, 0x0

    iput-object v0, p0, Lsun/security/ssl/Handshaker;->engine:Lsun/security/ssl/SSLEngineImpl;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lsun/security/ssl/Handshaker;->taskDelegated:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lsun/security/ssl/Handshaker;->delegatedTask:Lsun/security/ssl/Handshaker$DelegatedTask;

    const/4 v0, 0x0

    iput-object v0, p0, Lsun/security/ssl/Handshaker;->thrown:Ljava/lang/Exception;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lsun/security/ssl/Handshaker;->thrownLock:Ljava/lang/Object;

    iput-object p1, p0, Lsun/security/ssl/Handshaker;->conn:Lsun/security/ssl/SSLSocketImpl;

    move-object v0, p0

    move-object v1, p2

    move-object v2, p3

    move v3, p4

    move v4, p5

    move-object/from16 v5, p6

    move/from16 v6, p7

    move/from16 v7, p8

    move-object/from16 v8, p9

    move-object/from16 v9, p10

    invoke-direct/range {v0 .. v9}, Lsun/security/ssl/Handshaker;->init(Lsun/security/ssl/SSLContextImpl;Lsun/security/ssl/ProtocolList;ZZLsun/security/ssl/ProtocolVersion;ZZ[B[B)V

    return-void
.end method

.method private calculateMasterSecret(Ljavax/crypto/SecretKey;Lsun/security/ssl/ProtocolVersion;)Ljavax/crypto/SecretKey;
    .locals 22

    sget-object v3, Lsun/security/ssl/Handshaker;->debug:Lsun/security/ssl/Debug;

    if-eqz v3, :cond_0

    const-string/jumbo v3, "keygen"

    invoke-static {v3}, Lsun/security/ssl/Debug;->isOn(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    new-instance v11, Lsun/misc/HexDumpEncoder;

    invoke-direct {v11}, Lsun/misc/HexDumpEncoder;-><init>()V

    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string/jumbo v4, "SESSION KEYGEN:"

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string/jumbo v4, "PreMaster Secret:"

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    invoke-interface/range {p1 .. p1}, Ljavax/crypto/SecretKey;->getEncoded()[B

    move-result-object v3

    invoke-static {v11, v3}, Lsun/security/ssl/Handshaker;->printHex(Lsun/misc/HexDumpEncoder;[B)V

    :cond_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lsun/security/ssl/Handshaker;->protocolVersion:Lsun/security/ssl/ProtocolVersion;

    iget v3, v3, Lsun/security/ssl/ProtocolVersion;->v:I

    sget-object v4, Lsun/security/ssl/ProtocolVersion;->TLS12:Lsun/security/ssl/ProtocolVersion;

    iget v4, v4, Lsun/security/ssl/ProtocolVersion;->v:I

    if-lt v3, v4, :cond_2

    const-string/jumbo v15, "SunTls12MasterSecret"

    move-object/from16 v0, p0

    iget-object v3, v0, Lsun/security/ssl/Handshaker;->cipherSuite:Lsun/security/ssl/CipherSuite;

    iget-object v0, v3, Lsun/security/ssl/CipherSuite;->prfAlg:Lsun/security/ssl/CipherSuite$PRF;

    move-object/from16 v19, v0

    :goto_0
    invoke-virtual/range {v19 .. v19}, Lsun/security/ssl/CipherSuite$PRF;->getPRFHashAlg()Ljava/lang/String;

    move-result-object v8

    invoke-virtual/range {v19 .. v19}, Lsun/security/ssl/CipherSuite$PRF;->getPRFHashLength()I

    move-result v9

    invoke-virtual/range {v19 .. v19}, Lsun/security/ssl/CipherSuite$PRF;->getPRFBlockSize()I

    move-result v10

    new-instance v2, Lsun/security/internal/spec/TlsMasterSecretParameterSpec;

    move-object/from16 v0, p0

    iget-object v3, v0, Lsun/security/ssl/Handshaker;->protocolVersion:Lsun/security/ssl/ProtocolVersion;

    iget-byte v4, v3, Lsun/security/ssl/ProtocolVersion;->major:B

    move-object/from16 v0, p0

    iget-object v3, v0, Lsun/security/ssl/Handshaker;->protocolVersion:Lsun/security/ssl/ProtocolVersion;

    iget-byte v5, v3, Lsun/security/ssl/ProtocolVersion;->minor:B

    move-object/from16 v0, p0

    iget-object v3, v0, Lsun/security/ssl/Handshaker;->clnt_random:Lsun/security/ssl/RandomCookie;

    iget-object v6, v3, Lsun/security/ssl/RandomCookie;->random_bytes:[B

    move-object/from16 v0, p0

    iget-object v3, v0, Lsun/security/ssl/Handshaker;->svr_random:Lsun/security/ssl/RandomCookie;

    iget-object v7, v3, Lsun/security/ssl/RandomCookie;->random_bytes:[B

    move-object/from16 v3, p1

    invoke-direct/range {v2 .. v10}, Lsun/security/internal/spec/TlsMasterSecretParameterSpec;-><init>(Ljavax/crypto/SecretKey;II[B[BLjava/lang/String;II)V

    :try_start_0
    invoke-static {v15}, Lsun/security/ssl/JsseJce;->getKeyGenerator(Ljava/lang/String;)Ljavax/crypto/KeyGenerator;

    move-result-object v13

    invoke-virtual {v13, v2}, Ljavax/crypto/KeyGenerator;->init(Ljava/security/spec/AlgorithmParameterSpec;)V

    invoke-virtual {v13}, Ljavax/crypto/KeyGenerator;->generateKey()Ljavax/crypto/SecretKey;
    :try_end_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v16

    if-eqz p2, :cond_6

    move-object/from16 v0, v16

    instance-of v3, v0, Lsun/security/internal/interfaces/TlsMasterSecret;

    if-eqz v3, :cond_6

    move-object/from16 v20, v16

    check-cast v20, Lsun/security/internal/interfaces/TlsMasterSecret;

    invoke-interface/range {v20 .. v20}, Lsun/security/internal/interfaces/TlsMasterSecret;->getMajorVersion()I

    move-result v14

    invoke-interface/range {v20 .. v20}, Lsun/security/internal/interfaces/TlsMasterSecret;->getMinorVersion()I

    move-result v17

    if-ltz v14, :cond_1

    if-gez v17, :cond_7

    :cond_1
    return-object v16

    :cond_2
    const-string/jumbo v15, "SunTlsMasterSecret"

    sget-object v19, Lsun/security/ssl/CipherSuite$PRF;->P_NONE:Lsun/security/ssl/CipherSuite$PRF;

    goto :goto_0

    :catch_0
    move-exception v12

    invoke-interface/range {p1 .. p1}, Ljavax/crypto/SecretKey;->getAlgorithm()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "TlsRsaPremasterSecret"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    new-instance v3, Ljava/security/ProviderException;

    invoke-direct {v3, v12}, Ljava/security/ProviderException;-><init>(Ljava/lang/Throwable;)V

    throw v3

    :cond_3
    sget-object v3, Lsun/security/ssl/Handshaker;->debug:Lsun/security/ssl/Debug;

    if-eqz v3, :cond_4

    const-string/jumbo v3, "handshake"

    invoke-static {v3}, Lsun/security/ssl/Debug;->isOn(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string/jumbo v4, "RSA master secret generation error:"

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v12, v3}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintStream;)V

    :cond_4
    if-eqz p2, :cond_5

    invoke-static/range {p2 .. p2}, Lsun/security/ssl/RSAClientKeyExchange;->generateDummySecret(Lsun/security/ssl/ProtocolVersion;)Ljavax/crypto/SecretKey;

    move-result-object p1

    :goto_1
    const/4 v3, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v3}, Lsun/security/ssl/Handshaker;->calculateMasterSecret(Ljavax/crypto/SecretKey;Lsun/security/ssl/ProtocolVersion;)Ljavax/crypto/SecretKey;

    move-result-object v3

    return-object v3

    :cond_5
    move-object/from16 v0, p0

    iget-object v3, v0, Lsun/security/ssl/Handshaker;->protocolVersion:Lsun/security/ssl/ProtocolVersion;

    invoke-static {v3}, Lsun/security/ssl/RSAClientKeyExchange;->generateDummySecret(Lsun/security/ssl/ProtocolVersion;)Ljavax/crypto/SecretKey;

    move-result-object p1

    goto :goto_1

    :cond_6
    return-object v16

    :cond_7
    move/from16 v0, v17

    invoke-static {v14, v0}, Lsun/security/ssl/ProtocolVersion;->valueOf(II)Lsun/security/ssl/ProtocolVersion;

    move-result-object v18

    move-object/from16 v0, v18

    iget v3, v0, Lsun/security/ssl/ProtocolVersion;->v:I

    move-object/from16 v0, p2

    iget v4, v0, Lsun/security/ssl/ProtocolVersion;->v:I

    if-eq v3, v4, :cond_9

    const/16 v21, 0x1

    :goto_2
    if-eqz v21, :cond_8

    move-object/from16 v0, p2

    iget v3, v0, Lsun/security/ssl/ProtocolVersion;->v:I

    sget-object v4, Lsun/security/ssl/ProtocolVersion;->TLS10:Lsun/security/ssl/ProtocolVersion;

    iget v4, v4, Lsun/security/ssl/ProtocolVersion;->v:I

    if-gt v3, v4, :cond_8

    move-object/from16 v0, v18

    iget v3, v0, Lsun/security/ssl/ProtocolVersion;->v:I

    move-object/from16 v0, p0

    iget-object v4, v0, Lsun/security/ssl/Handshaker;->protocolVersion:Lsun/security/ssl/ProtocolVersion;

    iget v4, v4, Lsun/security/ssl/ProtocolVersion;->v:I

    if-eq v3, v4, :cond_a

    const/16 v21, 0x1

    :cond_8
    :goto_3
    if-nez v21, :cond_b

    return-object v16

    :cond_9
    const/16 v21, 0x0

    goto :goto_2

    :cond_a
    const/16 v21, 0x0

    goto :goto_3

    :cond_b
    sget-object v3, Lsun/security/ssl/Handshaker;->debug:Lsun/security/ssl/Debug;

    if-eqz v3, :cond_c

    const-string/jumbo v3, "handshake"

    invoke-static {v3}, Lsun/security/ssl/Debug;->isOn(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_c

    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "RSA PreMasterSecret version error: expected"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lsun/security/ssl/Handshaker;->protocolVersion:Lsun/security/ssl/ProtocolVersion;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " or "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p2

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ", decrypted: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v18

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_c
    invoke-static/range {p2 .. p2}, Lsun/security/ssl/RSAClientKeyExchange;->generateDummySecret(Lsun/security/ssl/ProtocolVersion;)Ljavax/crypto/SecretKey;

    move-result-object p1

    const/4 v3, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v3}, Lsun/security/ssl/Handshaker;->calculateMasterSecret(Ljavax/crypto/SecretKey;Lsun/security/ssl/ProtocolVersion;)Ljavax/crypto/SecretKey;

    move-result-object v3

    return-object v3
.end method

.method private delegateTask(Ljava/security/PrivilegedExceptionAction;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/security/PrivilegedExceptionAction",
            "<TT;>;)V"
        }
    .end annotation

    new-instance v0, Lsun/security/ssl/Handshaker$DelegatedTask;

    invoke-direct {v0, p0, p1}, Lsun/security/ssl/Handshaker$DelegatedTask;-><init>(Lsun/security/ssl/Handshaker;Ljava/security/PrivilegedExceptionAction;)V

    iput-object v0, p0, Lsun/security/ssl/Handshaker;->delegatedTask:Lsun/security/ssl/Handshaker$DelegatedTask;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lsun/security/ssl/Handshaker;->taskDelegated:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lsun/security/ssl/Handshaker;->thrown:Ljava/lang/Exception;

    return-void
.end method

.method private init(Lsun/security/ssl/SSLContextImpl;Lsun/security/ssl/ProtocolList;ZZLsun/security/ssl/ProtocolVersion;ZZ[B[B)V
    .locals 4

    const/4 v3, 0x1

    sget-object v0, Lsun/security/ssl/Handshaker;->debug:Lsun/security/ssl/Debug;

    if-eqz v0, :cond_0

    const-string/jumbo v0, "handshake"

    invoke-static {v0}, Lsun/security/ssl/Debug;->isOn(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Allow unsafe renegotiation: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-boolean v2, Lsun/security/ssl/Handshaker;->allowUnsafeRenegotiation:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\nAllow legacy hello messages: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-boolean v2, Lsun/security/ssl/Handshaker;->allowLegacyHelloMessages:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\nIs initial handshake: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\nIs secure renegotiation: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_0
    iput-object p1, p0, Lsun/security/ssl/Handshaker;->sslContext:Lsun/security/ssl/SSLContextImpl;

    iput-boolean p4, p0, Lsun/security/ssl/Handshaker;->isClient:Z

    iput-boolean p3, p0, Lsun/security/ssl/Handshaker;->needCertVerify:Z

    iput-object p5, p0, Lsun/security/ssl/Handshaker;->activeProtocolVersion:Lsun/security/ssl/ProtocolVersion;

    iput-boolean p6, p0, Lsun/security/ssl/Handshaker;->isInitialHandshake:Z

    iput-boolean p7, p0, Lsun/security/ssl/Handshaker;->secureRenegotiation:Z

    iput-object p8, p0, Lsun/security/ssl/Handshaker;->clientVerifyData:[B

    iput-object p9, p0, Lsun/security/ssl/Handshaker;->serverVerifyData:[B

    iput-boolean v3, p0, Lsun/security/ssl/Handshaker;->enableNewSession:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lsun/security/ssl/Handshaker;->invalidated:Z

    sget-object v0, Lsun/security/ssl/CipherSuite;->C_NULL:Lsun/security/ssl/CipherSuite;

    invoke-virtual {p0, v0}, Lsun/security/ssl/Handshaker;->setCipherSuite(Lsun/security/ssl/CipherSuite;)V

    invoke-virtual {p0, p2}, Lsun/security/ssl/Handshaker;->setEnabledProtocols(Lsun/security/ssl/ProtocolList;)V

    iget-object v0, p0, Lsun/security/ssl/Handshaker;->conn:Lsun/security/ssl/SSLSocketImpl;

    if-eqz v0, :cond_1

    new-instance v0, Lsun/security/ssl/SSLAlgorithmConstraints;

    iget-object v1, p0, Lsun/security/ssl/Handshaker;->conn:Lsun/security/ssl/SSLSocketImpl;

    invoke-direct {v0, v1, v3}, Lsun/security/ssl/SSLAlgorithmConstraints;-><init>(Ljavax/net/ssl/SSLSocket;Z)V

    iput-object v0, p0, Lsun/security/ssl/Handshaker;->algorithmConstraints:Ljava/security/AlgorithmConstraints;

    :goto_0
    const/4 v0, -0x2

    iput v0, p0, Lsun/security/ssl/Handshaker;->state:I

    return-void

    :cond_1
    new-instance v0, Lsun/security/ssl/SSLAlgorithmConstraints;

    iget-object v1, p0, Lsun/security/ssl/Handshaker;->engine:Lsun/security/ssl/SSLEngineImpl;

    invoke-direct {v0, v1, v3}, Lsun/security/ssl/SSLAlgorithmConstraints;-><init>(Ljavax/net/ssl/SSLEngine;Z)V

    iput-object v0, p0, Lsun/security/ssl/Handshaker;->algorithmConstraints:Ljava/security/AlgorithmConstraints;

    goto :goto_0
.end method

.method private static printHex(Lsun/misc/HexDumpEncoder;[B)V
    .locals 3

    if-nez p1, :cond_0

    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string/jumbo v2, "(key bytes not available)"

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    :try_start_0
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {p0, p1, v1}, Lsun/misc/CharacterEncoder;->encodeBuffer([BLjava/io/OutputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private setVersionSE(Lsun/security/ssl/ProtocolVersion;)V
    .locals 1

    iget-object v0, p0, Lsun/security/ssl/Handshaker;->conn:Lsun/security/ssl/SSLSocketImpl;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lsun/security/ssl/Handshaker;->conn:Lsun/security/ssl/SSLSocketImpl;

    invoke-virtual {v0, p1}, Lsun/security/ssl/SSLSocketImpl;->setVersion(Lsun/security/ssl/ProtocolVersion;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lsun/security/ssl/Handshaker;->engine:Lsun/security/ssl/SSLEngineImpl;

    invoke-virtual {v0, p1}, Lsun/security/ssl/SSLEngineImpl;->setVersion(Lsun/security/ssl/ProtocolVersion;)V

    goto :goto_0
.end method

.method static throwSSLException(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLException;
        }
    .end annotation

    new-instance v0, Ljavax/net/ssl/SSLException;

    invoke-direct {v0, p0}, Ljavax/net/ssl/SSLException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/Throwable;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    throw v0
.end method


# virtual methods
.method activate(Lsun/security/ssl/ProtocolVersion;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v1, p0, Lsun/security/ssl/Handshaker;->activeProtocols:Lsun/security/ssl/ProtocolList;

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lsun/security/ssl/Handshaker;->getActiveProtocols()Lsun/security/ssl/ProtocolList;

    move-result-object v1

    iput-object v1, p0, Lsun/security/ssl/Handshaker;->activeProtocols:Lsun/security/ssl/ProtocolList;

    :cond_0
    iget-object v1, p0, Lsun/security/ssl/Handshaker;->activeProtocols:Lsun/security/ssl/ProtocolList;

    invoke-virtual {v1}, Lsun/security/ssl/ProtocolList;->collection()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lsun/security/ssl/Handshaker;->activeProtocols:Lsun/security/ssl/ProtocolList;

    iget-object v1, v1, Lsun/security/ssl/ProtocolList;->max:Lsun/security/ssl/ProtocolVersion;

    iget v1, v1, Lsun/security/ssl/ProtocolVersion;->v:I

    sget-object v2, Lsun/security/ssl/ProtocolVersion;->NONE:Lsun/security/ssl/ProtocolVersion;

    iget v2, v2, Lsun/security/ssl/ProtocolVersion;->v:I

    if-ne v1, v2, :cond_2

    :cond_1
    new-instance v1, Ljavax/net/ssl/SSLHandshakeException;

    const-string/jumbo v2, "No appropriate protocol"

    invoke-direct {v1, v2}, Ljavax/net/ssl/SSLHandshakeException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_2
    iget-object v1, p0, Lsun/security/ssl/Handshaker;->activeCipherSuites:Lsun/security/ssl/CipherSuiteList;

    if-nez v1, :cond_3

    invoke-virtual {p0}, Lsun/security/ssl/Handshaker;->getActiveCipherSuites()Lsun/security/ssl/CipherSuiteList;

    move-result-object v1

    iput-object v1, p0, Lsun/security/ssl/Handshaker;->activeCipherSuites:Lsun/security/ssl/CipherSuiteList;

    :cond_3
    iget-object v1, p0, Lsun/security/ssl/Handshaker;->activeCipherSuites:Lsun/security/ssl/CipherSuiteList;

    invoke-virtual {v1}, Lsun/security/ssl/CipherSuiteList;->collection()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_4

    new-instance v1, Ljavax/net/ssl/SSLHandshakeException;

    const-string/jumbo v2, "No appropriate cipher suite"

    invoke-direct {v1, v2}, Ljavax/net/ssl/SSLHandshakeException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_4
    iget-boolean v1, p0, Lsun/security/ssl/Handshaker;->isInitialHandshake:Z

    if-nez v1, :cond_7

    iget-object v1, p0, Lsun/security/ssl/Handshaker;->activeProtocolVersion:Lsun/security/ssl/ProtocolVersion;

    iput-object v1, p0, Lsun/security/ssl/Handshaker;->protocolVersion:Lsun/security/ssl/ProtocolVersion;

    :goto_0
    if-eqz p1, :cond_5

    iget v1, p1, Lsun/security/ssl/ProtocolVersion;->v:I

    sget-object v2, Lsun/security/ssl/ProtocolVersion;->NONE:Lsun/security/ssl/ProtocolVersion;

    iget v2, v2, Lsun/security/ssl/ProtocolVersion;->v:I

    if-ne v1, v2, :cond_6

    :cond_5
    iget-object v1, p0, Lsun/security/ssl/Handshaker;->activeProtocols:Lsun/security/ssl/ProtocolList;

    iget-object p1, v1, Lsun/security/ssl/ProtocolList;->helloVersion:Lsun/security/ssl/ProtocolVersion;

    :cond_6
    invoke-virtual {p0}, Lsun/security/ssl/Handshaker;->getLocalSupportedSignAlgs()Ljava/util/Collection;

    move-result-object v1

    invoke-static {v1}, Lsun/security/ssl/SignatureAndHashAlgorithm;->getHashAlgorithmNames(Ljava/util/Collection;)Ljava/util/Set;

    move-result-object v0

    new-instance v2, Lsun/security/ssl/HandshakeHash;

    iget-boolean v1, p0, Lsun/security/ssl/Handshaker;->isClient:Z

    if-eqz v1, :cond_8

    const/4 v1, 0x0

    :goto_1
    iget-boolean v3, p0, Lsun/security/ssl/Handshaker;->needCertVerify:Z

    invoke-direct {v2, v1, v3, v0}, Lsun/security/ssl/HandshakeHash;-><init>(ZZLjava/util/Set;)V

    iput-object v2, p0, Lsun/security/ssl/Handshaker;->handshakeHash:Lsun/security/ssl/HandshakeHash;

    new-instance v1, Lsun/security/ssl/HandshakeInStream;

    iget-object v2, p0, Lsun/security/ssl/Handshaker;->handshakeHash:Lsun/security/ssl/HandshakeHash;

    invoke-direct {v1, v2}, Lsun/security/ssl/HandshakeInStream;-><init>(Lsun/security/ssl/HandshakeHash;)V

    iput-object v1, p0, Lsun/security/ssl/Handshaker;->input:Lsun/security/ssl/HandshakeInStream;

    iget-object v1, p0, Lsun/security/ssl/Handshaker;->conn:Lsun/security/ssl/SSLSocketImpl;

    if-eqz v1, :cond_9

    new-instance v1, Lsun/security/ssl/HandshakeOutStream;

    iget-object v2, p0, Lsun/security/ssl/Handshaker;->protocolVersion:Lsun/security/ssl/ProtocolVersion;

    iget-object v3, p0, Lsun/security/ssl/Handshaker;->handshakeHash:Lsun/security/ssl/HandshakeHash;

    iget-object v4, p0, Lsun/security/ssl/Handshaker;->conn:Lsun/security/ssl/SSLSocketImpl;

    invoke-direct {v1, v2, p1, v3, v4}, Lsun/security/ssl/HandshakeOutStream;-><init>(Lsun/security/ssl/ProtocolVersion;Lsun/security/ssl/ProtocolVersion;Lsun/security/ssl/HandshakeHash;Lsun/security/ssl/SSLSocketImpl;)V

    iput-object v1, p0, Lsun/security/ssl/Handshaker;->output:Lsun/security/ssl/HandshakeOutStream;

    iget-object v1, p0, Lsun/security/ssl/Handshaker;->conn:Lsun/security/ssl/SSLSocketImpl;

    invoke-virtual {v1}, Lsun/security/ssl/SSLSocketImpl;->getAppInputStream()Lsun/security/ssl/AppInputStream;

    move-result-object v1

    iget-object v1, v1, Lsun/security/ssl/AppInputStream;->r:Lsun/security/ssl/InputRecord;

    iget-object v2, p0, Lsun/security/ssl/Handshaker;->handshakeHash:Lsun/security/ssl/HandshakeHash;

    invoke-virtual {v1, v2}, Lsun/security/ssl/InputRecord;->setHandshakeHash(Lsun/security/ssl/HandshakeHash;)V

    iget-object v1, p0, Lsun/security/ssl/Handshaker;->conn:Lsun/security/ssl/SSLSocketImpl;

    invoke-virtual {v1}, Lsun/security/ssl/SSLSocketImpl;->getAppInputStream()Lsun/security/ssl/AppInputStream;

    move-result-object v1

    iget-object v1, v1, Lsun/security/ssl/AppInputStream;->r:Lsun/security/ssl/InputRecord;

    invoke-virtual {v1, p1}, Lsun/security/ssl/InputRecord;->setHelloVersion(Lsun/security/ssl/ProtocolVersion;)V

    iget-object v1, p0, Lsun/security/ssl/Handshaker;->conn:Lsun/security/ssl/SSLSocketImpl;

    invoke-virtual {v1}, Lsun/security/ssl/SSLSocketImpl;->getAppOutputStream()Lsun/security/ssl/AppOutputStream;

    move-result-object v1

    iget-object v1, v1, Lsun/security/ssl/AppOutputStream;->r:Lsun/security/ssl/OutputRecord;

    invoke-virtual {v1, p1}, Lsun/security/ssl/OutputRecord;->setHelloVersion(Lsun/security/ssl/ProtocolVersion;)V

    :goto_2
    const/4 v1, -0x1

    iput v1, p0, Lsun/security/ssl/Handshaker;->state:I

    return-void

    :cond_7
    iget-object v1, p0, Lsun/security/ssl/Handshaker;->activeProtocols:Lsun/security/ssl/ProtocolList;

    iget-object v1, v1, Lsun/security/ssl/ProtocolList;->max:Lsun/security/ssl/ProtocolVersion;

    iput-object v1, p0, Lsun/security/ssl/Handshaker;->protocolVersion:Lsun/security/ssl/ProtocolVersion;

    goto :goto_0

    :cond_8
    const/4 v1, 0x1

    goto :goto_1

    :cond_9
    new-instance v1, Lsun/security/ssl/HandshakeOutStream;

    iget-object v2, p0, Lsun/security/ssl/Handshaker;->protocolVersion:Lsun/security/ssl/ProtocolVersion;

    iget-object v3, p0, Lsun/security/ssl/Handshaker;->handshakeHash:Lsun/security/ssl/HandshakeHash;

    iget-object v4, p0, Lsun/security/ssl/Handshaker;->engine:Lsun/security/ssl/SSLEngineImpl;

    invoke-direct {v1, v2, p1, v3, v4}, Lsun/security/ssl/HandshakeOutStream;-><init>(Lsun/security/ssl/ProtocolVersion;Lsun/security/ssl/ProtocolVersion;Lsun/security/ssl/HandshakeHash;Lsun/security/ssl/SSLEngineImpl;)V

    iput-object v1, p0, Lsun/security/ssl/Handshaker;->output:Lsun/security/ssl/HandshakeOutStream;

    iget-object v1, p0, Lsun/security/ssl/Handshaker;->engine:Lsun/security/ssl/SSLEngineImpl;

    iget-object v1, v1, Lsun/security/ssl/SSLEngineImpl;->inputRecord:Lsun/security/ssl/EngineInputRecord;

    iget-object v2, p0, Lsun/security/ssl/Handshaker;->handshakeHash:Lsun/security/ssl/HandshakeHash;

    invoke-virtual {v1, v2}, Lsun/security/ssl/InputRecord;->setHandshakeHash(Lsun/security/ssl/HandshakeHash;)V

    iget-object v1, p0, Lsun/security/ssl/Handshaker;->engine:Lsun/security/ssl/SSLEngineImpl;

    iget-object v1, v1, Lsun/security/ssl/SSLEngineImpl;->inputRecord:Lsun/security/ssl/EngineInputRecord;

    invoke-virtual {v1, p1}, Lsun/security/ssl/InputRecord;->setHelloVersion(Lsun/security/ssl/ProtocolVersion;)V

    iget-object v1, p0, Lsun/security/ssl/Handshaker;->engine:Lsun/security/ssl/SSLEngineImpl;

    iget-object v1, v1, Lsun/security/ssl/SSLEngineImpl;->outputRecord:Lsun/security/ssl/EngineOutputRecord;

    invoke-virtual {v1, p1}, Lsun/security/ssl/OutputRecord;->setHelloVersion(Lsun/security/ssl/ProtocolVersion;)V

    goto :goto_2
.end method

.method activated()Z
    .locals 2

    iget v0, p0, Lsun/security/ssl/Handshaker;->state:I

    const/4 v1, -0x1

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method calculateConnectionKeys(Ljavax/crypto/SecretKey;)V
    .locals 23

    move-object/from16 v0, p0

    iget-object v2, v0, Lsun/security/ssl/Handshaker;->cipherSuite:Lsun/security/ssl/CipherSuite;

    iget-object v2, v2, Lsun/security/ssl/CipherSuite;->macAlg:Lsun/security/ssl/CipherSuite$MacAlg;

    iget v11, v2, Lsun/security/ssl/CipherSuite$MacAlg;->size:I

    move-object/from16 v0, p0

    iget-object v2, v0, Lsun/security/ssl/Handshaker;->cipherSuite:Lsun/security/ssl/CipherSuite;

    iget-boolean v0, v2, Lsun/security/ssl/CipherSuite;->exportable:Z

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v2, v0, Lsun/security/ssl/Handshaker;->cipherSuite:Lsun/security/ssl/CipherSuite;

    iget-object v15, v2, Lsun/security/ssl/CipherSuite;->cipher:Lsun/security/ssl/CipherSuite$BulkCipher;

    if-eqz v18, :cond_1

    iget v9, v15, Lsun/security/ssl/CipherSuite$BulkCipher;->expandedKeySize:I

    :goto_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lsun/security/ssl/Handshaker;->protocolVersion:Lsun/security/ssl/ProtocolVersion;

    iget v2, v2, Lsun/security/ssl/ProtocolVersion;->v:I

    sget-object v3, Lsun/security/ssl/ProtocolVersion;->TLS12:Lsun/security/ssl/ProtocolVersion;

    iget v3, v3, Lsun/security/ssl/ProtocolVersion;->v:I

    if-lt v2, v3, :cond_2

    const-string/jumbo v19, "SunTls12KeyMaterial"

    move-object/from16 v0, p0

    iget-object v2, v0, Lsun/security/ssl/Handshaker;->cipherSuite:Lsun/security/ssl/CipherSuite;

    iget-object v0, v2, Lsun/security/ssl/CipherSuite;->prfAlg:Lsun/security/ssl/CipherSuite$PRF;

    move-object/from16 v22, v0

    :goto_1
    invoke-virtual/range {v22 .. v22}, Lsun/security/ssl/CipherSuite$PRF;->getPRFHashAlg()Ljava/lang/String;

    move-result-object v12

    invoke-virtual/range {v22 .. v22}, Lsun/security/ssl/CipherSuite$PRF;->getPRFHashLength()I

    move-result v13

    invoke-virtual/range {v22 .. v22}, Lsun/security/ssl/CipherSuite$PRF;->getPRFBlockSize()I

    move-result v14

    new-instance v1, Lsun/security/internal/spec/TlsKeyMaterialParameterSpec;

    move-object/from16 v0, p0

    iget-object v2, v0, Lsun/security/ssl/Handshaker;->protocolVersion:Lsun/security/ssl/ProtocolVersion;

    iget-byte v3, v2, Lsun/security/ssl/ProtocolVersion;->major:B

    move-object/from16 v0, p0

    iget-object v2, v0, Lsun/security/ssl/Handshaker;->protocolVersion:Lsun/security/ssl/ProtocolVersion;

    iget-byte v4, v2, Lsun/security/ssl/ProtocolVersion;->minor:B

    move-object/from16 v0, p0

    iget-object v2, v0, Lsun/security/ssl/Handshaker;->clnt_random:Lsun/security/ssl/RandomCookie;

    iget-object v5, v2, Lsun/security/ssl/RandomCookie;->random_bytes:[B

    move-object/from16 v0, p0

    iget-object v2, v0, Lsun/security/ssl/Handshaker;->svr_random:Lsun/security/ssl/RandomCookie;

    iget-object v6, v2, Lsun/security/ssl/RandomCookie;->random_bytes:[B

    iget-object v7, v15, Lsun/security/ssl/CipherSuite$BulkCipher;->algorithm:Ljava/lang/String;

    iget v8, v15, Lsun/security/ssl/CipherSuite$BulkCipher;->keySize:I

    iget v10, v15, Lsun/security/ssl/CipherSuite$BulkCipher;->ivSize:I

    move-object/from16 v2, p1

    invoke-direct/range {v1 .. v14}, Lsun/security/internal/spec/TlsKeyMaterialParameterSpec;-><init>(Ljavax/crypto/SecretKey;II[B[BLjava/lang/String;IIIILjava/lang/String;II)V

    :try_start_0
    invoke-static/range {v19 .. v19}, Lsun/security/ssl/JsseJce;->getKeyGenerator(Ljava/lang/String;)Ljavax/crypto/KeyGenerator;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v1}, Ljavax/crypto/KeyGenerator;->init(Ljava/security/spec/AlgorithmParameterSpec;)V

    invoke-virtual/range {v21 .. v21}, Ljavax/crypto/KeyGenerator;->generateKey()Ljavax/crypto/SecretKey;

    move-result-object v20

    check-cast v20, Lsun/security/internal/spec/TlsKeyMaterialSpec;

    invoke-virtual/range {v20 .. v20}, Lsun/security/internal/spec/TlsKeyMaterialSpec;->getClientCipherKey()Ljavax/crypto/SecretKey;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lsun/security/ssl/Handshaker;->clntWriteKey:Ljavax/crypto/SecretKey;

    invoke-virtual/range {v20 .. v20}, Lsun/security/internal/spec/TlsKeyMaterialSpec;->getServerCipherKey()Ljavax/crypto/SecretKey;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lsun/security/ssl/Handshaker;->svrWriteKey:Ljavax/crypto/SecretKey;

    invoke-virtual/range {v20 .. v20}, Lsun/security/internal/spec/TlsKeyMaterialSpec;->getClientIv()Ljavax/crypto/spec/IvParameterSpec;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lsun/security/ssl/Handshaker;->clntWriteIV:Ljavax/crypto/spec/IvParameterSpec;

    invoke-virtual/range {v20 .. v20}, Lsun/security/internal/spec/TlsKeyMaterialSpec;->getServerIv()Ljavax/crypto/spec/IvParameterSpec;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lsun/security/ssl/Handshaker;->svrWriteIV:Ljavax/crypto/spec/IvParameterSpec;

    invoke-virtual/range {v20 .. v20}, Lsun/security/internal/spec/TlsKeyMaterialSpec;->getClientMacKey()Ljavax/crypto/SecretKey;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lsun/security/ssl/Handshaker;->clntMacSecret:Ljavax/crypto/SecretKey;

    invoke-virtual/range {v20 .. v20}, Lsun/security/internal/spec/TlsKeyMaterialSpec;->getServerMacKey()Ljavax/crypto/SecretKey;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lsun/security/ssl/Handshaker;->svrMacSecret:Ljavax/crypto/SecretKey;
    :try_end_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_0

    sget-object v2, Lsun/security/ssl/Handshaker;->debug:Lsun/security/ssl/Debug;

    if-eqz v2, :cond_0

    const-string/jumbo v2, "keygen"

    invoke-static {v2}, Lsun/security/ssl/Debug;->isOn(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    monitor-enter v3

    :try_start_1
    new-instance v16, Lsun/misc/HexDumpEncoder;

    invoke-direct/range {v16 .. v16}, Lsun/misc/HexDumpEncoder;-><init>()V

    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string/jumbo v4, "CONNECTION KEYGEN:"

    invoke-virtual {v2, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string/jumbo v4, "Client Nonce:"

    invoke-virtual {v2, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lsun/security/ssl/Handshaker;->clnt_random:Lsun/security/ssl/RandomCookie;

    iget-object v2, v2, Lsun/security/ssl/RandomCookie;->random_bytes:[B

    move-object/from16 v0, v16

    invoke-static {v0, v2}, Lsun/security/ssl/Handshaker;->printHex(Lsun/misc/HexDumpEncoder;[B)V

    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string/jumbo v4, "Server Nonce:"

    invoke-virtual {v2, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lsun/security/ssl/Handshaker;->svr_random:Lsun/security/ssl/RandomCookie;

    iget-object v2, v2, Lsun/security/ssl/RandomCookie;->random_bytes:[B

    move-object/from16 v0, v16

    invoke-static {v0, v2}, Lsun/security/ssl/Handshaker;->printHex(Lsun/misc/HexDumpEncoder;[B)V

    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string/jumbo v4, "Master Secret:"

    invoke-virtual {v2, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    invoke-interface/range {p1 .. p1}, Ljavax/crypto/SecretKey;->getEncoded()[B

    move-result-object v2

    move-object/from16 v0, v16

    invoke-static {v0, v2}, Lsun/security/ssl/Handshaker;->printHex(Lsun/misc/HexDumpEncoder;[B)V

    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string/jumbo v4, "Client MAC write Secret:"

    invoke-virtual {v2, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lsun/security/ssl/Handshaker;->clntMacSecret:Ljavax/crypto/SecretKey;

    invoke-interface {v2}, Ljavax/crypto/SecretKey;->getEncoded()[B

    move-result-object v2

    move-object/from16 v0, v16

    invoke-static {v0, v2}, Lsun/security/ssl/Handshaker;->printHex(Lsun/misc/HexDumpEncoder;[B)V

    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string/jumbo v4, "Server MAC write Secret:"

    invoke-virtual {v2, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lsun/security/ssl/Handshaker;->svrMacSecret:Ljavax/crypto/SecretKey;

    invoke-interface {v2}, Ljavax/crypto/SecretKey;->getEncoded()[B

    move-result-object v2

    move-object/from16 v0, v16

    invoke-static {v0, v2}, Lsun/security/ssl/Handshaker;->printHex(Lsun/misc/HexDumpEncoder;[B)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lsun/security/ssl/Handshaker;->clntWriteKey:Ljavax/crypto/SecretKey;

    if-eqz v2, :cond_3

    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string/jumbo v4, "Client write key:"

    invoke-virtual {v2, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lsun/security/ssl/Handshaker;->clntWriteKey:Ljavax/crypto/SecretKey;

    invoke-interface {v2}, Ljavax/crypto/SecretKey;->getEncoded()[B

    move-result-object v2

    move-object/from16 v0, v16

    invoke-static {v0, v2}, Lsun/security/ssl/Handshaker;->printHex(Lsun/misc/HexDumpEncoder;[B)V

    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string/jumbo v4, "Server write key:"

    invoke-virtual {v2, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lsun/security/ssl/Handshaker;->svrWriteKey:Ljavax/crypto/SecretKey;

    invoke-interface {v2}, Ljavax/crypto/SecretKey;->getEncoded()[B

    move-result-object v2

    move-object/from16 v0, v16

    invoke-static {v0, v2}, Lsun/security/ssl/Handshaker;->printHex(Lsun/misc/HexDumpEncoder;[B)V

    :goto_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lsun/security/ssl/Handshaker;->clntWriteIV:Ljavax/crypto/spec/IvParameterSpec;

    if-eqz v2, :cond_4

    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string/jumbo v4, "Client write IV:"

    invoke-virtual {v2, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lsun/security/ssl/Handshaker;->clntWriteIV:Ljavax/crypto/spec/IvParameterSpec;

    invoke-virtual {v2}, Ljavax/crypto/spec/IvParameterSpec;->getIV()[B

    move-result-object v2

    move-object/from16 v0, v16

    invoke-static {v0, v2}, Lsun/security/ssl/Handshaker;->printHex(Lsun/misc/HexDumpEncoder;[B)V

    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string/jumbo v4, "Server write IV:"

    invoke-virtual {v2, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lsun/security/ssl/Handshaker;->svrWriteIV:Ljavax/crypto/spec/IvParameterSpec;

    invoke-virtual {v2}, Ljavax/crypto/spec/IvParameterSpec;->getIV()[B

    move-result-object v2

    move-object/from16 v0, v16

    invoke-static {v0, v2}, Lsun/security/ssl/Handshaker;->printHex(Lsun/misc/HexDumpEncoder;[B)V

    :goto_3
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v2}, Ljava/io/PrintStream;->flush()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v3

    :cond_0
    return-void

    :cond_1
    const/4 v9, 0x0

    goto/16 :goto_0

    :cond_2
    const-string/jumbo v19, "SunTlsKeyMaterial"

    sget-object v22, Lsun/security/ssl/CipherSuite$PRF;->P_NONE:Lsun/security/ssl/CipherSuite$PRF;

    goto/16 :goto_1

    :catch_0
    move-exception v17

    new-instance v2, Ljava/security/ProviderException;

    move-object/from16 v0, v17

    invoke-direct {v2, v0}, Ljava/security/ProviderException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    :cond_3
    :try_start_2
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string/jumbo v4, "... no encryption keys used"

    invoke-virtual {v2, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2

    :cond_4
    :try_start_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lsun/security/ssl/Handshaker;->protocolVersion:Lsun/security/ssl/ProtocolVersion;

    iget v2, v2, Lsun/security/ssl/ProtocolVersion;->v:I

    sget-object v4, Lsun/security/ssl/ProtocolVersion;->TLS11:Lsun/security/ssl/ProtocolVersion;

    iget v4, v4, Lsun/security/ssl/ProtocolVersion;->v:I

    if-lt v2, v4, :cond_5

    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string/jumbo v4, "... no IV derived for this protocol"

    invoke-virtual {v2, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_3

    :cond_5
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string/jumbo v4, "... no IV used for this cipher"

    invoke-virtual {v2, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_3
.end method

.method calculateKeys(Ljavax/crypto/SecretKey;Lsun/security/ssl/ProtocolVersion;)V
    .locals 2

    invoke-direct {p0, p1, p2}, Lsun/security/ssl/Handshaker;->calculateMasterSecret(Ljavax/crypto/SecretKey;Lsun/security/ssl/ProtocolVersion;)Ljavax/crypto/SecretKey;

    move-result-object v0

    iget-object v1, p0, Lsun/security/ssl/Handshaker;->session:Lsun/security/ssl/SSLSessionImpl;

    invoke-virtual {v1, v0}, Lsun/security/ssl/SSLSessionImpl;->setMasterSecret(Ljavax/crypto/SecretKey;)V

    invoke-virtual {p0, v0}, Lsun/security/ssl/Handshaker;->calculateConnectionKeys(Ljavax/crypto/SecretKey;)V

    return-void
.end method

.method checkThrown()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLException;
        }
    .end annotation

    iget-object v3, p0, Lsun/security/ssl/Handshaker;->thrownLock:Ljava/lang/Object;

    monitor-enter v3

    :try_start_0
    iget-object v2, p0, Lsun/security/ssl/Handshaker;->thrown:Ljava/lang/Exception;

    if-eqz v2, :cond_6

    iget-object v2, p0, Lsun/security/ssl/Handshaker;->thrown:Ljava/lang/Exception;

    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    const-string/jumbo v1, "Delegated task threw Exception/Error"

    :cond_0
    iget-object v0, p0, Lsun/security/ssl/Handshaker;->thrown:Ljava/lang/Exception;

    const/4 v2, 0x0

    iput-object v2, p0, Lsun/security/ssl/Handshaker;->thrown:Ljava/lang/Exception;

    instance-of v2, v0, Ljava/lang/RuntimeException;

    if-eqz v2, :cond_1

    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/Throwable;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v2

    check-cast v2, Ljava/lang/RuntimeException;

    throw v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2

    :cond_1
    :try_start_1
    instance-of v2, v0, Ljavax/net/ssl/SSLHandshakeException;

    if-eqz v2, :cond_2

    new-instance v2, Ljavax/net/ssl/SSLHandshakeException;

    invoke-direct {v2, v1}, Ljavax/net/ssl/SSLHandshakeException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/Throwable;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v2

    check-cast v2, Ljavax/net/ssl/SSLHandshakeException;

    throw v2

    :cond_2
    instance-of v2, v0, Ljavax/net/ssl/SSLKeyException;

    if-eqz v2, :cond_3

    new-instance v2, Ljavax/net/ssl/SSLKeyException;

    invoke-direct {v2, v1}, Ljavax/net/ssl/SSLKeyException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/Throwable;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v2

    check-cast v2, Ljavax/net/ssl/SSLKeyException;

    throw v2

    :cond_3
    instance-of v2, v0, Ljavax/net/ssl/SSLPeerUnverifiedException;

    if-eqz v2, :cond_4

    new-instance v2, Ljavax/net/ssl/SSLPeerUnverifiedException;

    invoke-direct {v2, v1}, Ljavax/net/ssl/SSLPeerUnverifiedException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/Throwable;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v2

    check-cast v2, Ljavax/net/ssl/SSLPeerUnverifiedException;

    throw v2

    :cond_4
    instance-of v2, v0, Ljavax/net/ssl/SSLProtocolException;

    if-eqz v2, :cond_5

    new-instance v2, Ljavax/net/ssl/SSLProtocolException;

    invoke-direct {v2, v1}, Ljavax/net/ssl/SSLProtocolException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/Throwable;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v2

    check-cast v2, Ljavax/net/ssl/SSLProtocolException;

    throw v2

    :cond_5
    new-instance v2, Ljavax/net/ssl/SSLException;

    invoke-direct {v2, v1}, Ljavax/net/ssl/SSLException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/Throwable;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v2

    check-cast v2, Ljavax/net/ssl/SSLException;

    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_6
    monitor-exit v3

    return-void
.end method

.method fatalSE(BLjava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lsun/security/ssl/Handshaker;->fatalSE(BLjava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method fatalSE(BLjava/lang/String;Ljava/lang/Throwable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lsun/security/ssl/Handshaker;->conn:Lsun/security/ssl/SSLSocketImpl;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lsun/security/ssl/Handshaker;->conn:Lsun/security/ssl/SSLSocketImpl;

    invoke-virtual {v0, p1, p2, p3}, Lsun/security/ssl/SSLSocketImpl;->fatal(BLjava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lsun/security/ssl/Handshaker;->engine:Lsun/security/ssl/SSLEngineImpl;

    invoke-virtual {v0, p1, p2, p3}, Lsun/security/ssl/SSLEngineImpl;->fatal(BLjava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method fatalSE(BLjava/lang/Throwable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p2}, Lsun/security/ssl/Handshaker;->fatalSE(BLjava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method getAccSE()Ljava/security/AccessControlContext;
    .locals 1

    iget-object v0, p0, Lsun/security/ssl/Handshaker;->conn:Lsun/security/ssl/SSLSocketImpl;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lsun/security/ssl/Handshaker;->conn:Lsun/security/ssl/SSLSocketImpl;

    invoke-virtual {v0}, Lsun/security/ssl/SSLSocketImpl;->getAcc()Ljava/security/AccessControlContext;

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v0, p0, Lsun/security/ssl/Handshaker;->engine:Lsun/security/ssl/SSLEngineImpl;

    invoke-virtual {v0}, Lsun/security/ssl/SSLEngineImpl;->getAcc()Ljava/security/AccessControlContext;

    move-result-object v0

    return-object v0
.end method

.method getActiveCipherSuites()Lsun/security/ssl/CipherSuiteList;
    .locals 7

    const/4 v6, 0x0

    iget-object v3, p0, Lsun/security/ssl/Handshaker;->activeCipherSuites:Lsun/security/ssl/CipherSuiteList;

    if-nez v3, :cond_5

    iget-object v3, p0, Lsun/security/ssl/Handshaker;->activeProtocols:Lsun/security/ssl/ProtocolList;

    if-nez v3, :cond_0

    invoke-virtual {p0}, Lsun/security/ssl/Handshaker;->getActiveProtocols()Lsun/security/ssl/ProtocolList;

    move-result-object v3

    iput-object v3, p0, Lsun/security/ssl/Handshaker;->activeProtocols:Lsun/security/ssl/ProtocolList;

    :cond_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iget-object v3, p0, Lsun/security/ssl/Handshaker;->activeProtocols:Lsun/security/ssl/ProtocolList;

    invoke-virtual {v3}, Lsun/security/ssl/ProtocolList;->collection()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_4

    iget-object v3, p0, Lsun/security/ssl/Handshaker;->activeProtocols:Lsun/security/ssl/ProtocolList;

    iget-object v3, v3, Lsun/security/ssl/ProtocolList;->min:Lsun/security/ssl/ProtocolVersion;

    iget v3, v3, Lsun/security/ssl/ProtocolVersion;->v:I

    sget-object v4, Lsun/security/ssl/ProtocolVersion;->NONE:Lsun/security/ssl/ProtocolVersion;

    iget v4, v4, Lsun/security/ssl/ProtocolVersion;->v:I

    if-eq v3, v4, :cond_4

    iget-object v3, p0, Lsun/security/ssl/Handshaker;->enabledCipherSuites:Lsun/security/ssl/CipherSuiteList;

    invoke-virtual {v3}, Lsun/security/ssl/CipherSuiteList;->collection()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lsun/security/ssl/CipherSuite;

    iget v3, v0, Lsun/security/ssl/CipherSuite;->obsoleted:I

    iget-object v4, p0, Lsun/security/ssl/Handshaker;->activeProtocols:Lsun/security/ssl/ProtocolList;

    iget-object v4, v4, Lsun/security/ssl/ProtocolList;->min:Lsun/security/ssl/ProtocolVersion;

    iget v4, v4, Lsun/security/ssl/ProtocolVersion;->v:I

    if-le v3, v4, :cond_2

    iget v3, v0, Lsun/security/ssl/CipherSuite;->supported:I

    iget-object v4, p0, Lsun/security/ssl/Handshaker;->activeProtocols:Lsun/security/ssl/ProtocolList;

    iget-object v4, v4, Lsun/security/ssl/ProtocolList;->max:Lsun/security/ssl/ProtocolVersion;

    iget v4, v4, Lsun/security/ssl/ProtocolVersion;->v:I

    if-gt v3, v4, :cond_2

    iget-object v3, p0, Lsun/security/ssl/Handshaker;->algorithmConstraints:Ljava/security/AlgorithmConstraints;

    sget-object v4, Ljava/security/CryptoPrimitive;->KEY_AGREEMENT:Ljava/security/CryptoPrimitive;

    invoke-static {v4}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v4

    iget-object v5, v0, Lsun/security/ssl/CipherSuite;->name:Ljava/lang/String;

    invoke-interface {v3, v4, v5, v6}, Ljava/security/AlgorithmConstraints;->permits(Ljava/util/Set;Ljava/lang/String;Ljava/security/AlgorithmParameters;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    sget-object v3, Lsun/security/ssl/Handshaker;->debug:Lsun/security/ssl/Debug;

    if-eqz v3, :cond_1

    const-string/jumbo v3, "verbose"

    invoke-static {v3}, Lsun/security/ssl/Debug;->isOn(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget v3, v0, Lsun/security/ssl/CipherSuite;->obsoleted:I

    iget-object v4, p0, Lsun/security/ssl/Handshaker;->activeProtocols:Lsun/security/ssl/ProtocolList;

    iget-object v4, v4, Lsun/security/ssl/ProtocolList;->min:Lsun/security/ssl/ProtocolVersion;

    iget v4, v4, Lsun/security/ssl/ProtocolVersion;->v:I

    if-gt v3, v4, :cond_3

    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Ignoring obsoleted cipher suite: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Ignoring unsupported cipher suite: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    new-instance v3, Lsun/security/ssl/CipherSuiteList;

    invoke-direct {v3, v2}, Lsun/security/ssl/CipherSuiteList;-><init>(Ljava/util/Collection;)V

    iput-object v3, p0, Lsun/security/ssl/Handshaker;->activeCipherSuites:Lsun/security/ssl/CipherSuiteList;

    :cond_5
    iget-object v3, p0, Lsun/security/ssl/Handshaker;->activeCipherSuites:Lsun/security/ssl/CipherSuiteList;

    return-object v3
.end method

.method getActiveProtocols()Lsun/security/ssl/ProtocolList;
    .locals 10

    const/4 v9, 0x0

    iget-object v6, p0, Lsun/security/ssl/Handshaker;->activeProtocols:Lsun/security/ssl/ProtocolList;

    if-nez v6, :cond_6

    new-instance v3, Ljava/util/ArrayList;

    const/4 v6, 0x4

    invoke-direct {v3, v6}, Ljava/util/ArrayList;-><init>(I)V

    iget-object v6, p0, Lsun/security/ssl/Handshaker;->enabledProtocols:Lsun/security/ssl/ProtocolList;

    invoke-virtual {v6}, Lsun/security/ssl/ProtocolList;->collection()Ljava/util/Collection;

    move-result-object v6

    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lsun/security/ssl/ProtocolVersion;

    const/4 v0, 0x0

    iget-object v6, p0, Lsun/security/ssl/Handshaker;->enabledCipherSuites:Lsun/security/ssl/CipherSuiteList;

    invoke-virtual {v6}, Lsun/security/ssl/CipherSuiteList;->collection()Ljava/util/Collection;

    move-result-object v6

    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_1
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lsun/security/ssl/CipherSuite;

    invoke-virtual {v4}, Lsun/security/ssl/CipherSuite;->isAvailable()Z

    move-result v6

    if-eqz v6, :cond_4

    iget v6, v4, Lsun/security/ssl/CipherSuite;->obsoleted:I

    iget v7, v1, Lsun/security/ssl/ProtocolVersion;->v:I

    if-le v6, v7, :cond_4

    iget v6, v4, Lsun/security/ssl/CipherSuite;->supported:I

    iget v7, v1, Lsun/security/ssl/ProtocolVersion;->v:I

    if-gt v6, v7, :cond_4

    iget-object v6, p0, Lsun/security/ssl/Handshaker;->algorithmConstraints:Ljava/security/AlgorithmConstraints;

    sget-object v7, Ljava/security/CryptoPrimitive;->KEY_AGREEMENT:Ljava/security/CryptoPrimitive;

    invoke-static {v7}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v7

    iget-object v8, v4, Lsun/security/ssl/CipherSuite;->name:Ljava/lang/String;

    invoke-interface {v6, v7, v8, v9}, Ljava/security/AlgorithmConstraints;->permits(Ljava/util/Set;Ljava/lang/String;Ljava/security/AlgorithmParameters;)Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v0, 0x1

    :cond_2
    if-nez v0, :cond_0

    sget-object v6, Lsun/security/ssl/Handshaker;->debug:Lsun/security/ssl/Debug;

    if-eqz v6, :cond_0

    const-string/jumbo v6, "handshake"

    invoke-static {v6}, Lsun/security/ssl/Debug;->isOn(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    sget-object v6, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "No available cipher suite for "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    sget-object v6, Lsun/security/ssl/Handshaker;->debug:Lsun/security/ssl/Debug;

    if-eqz v6, :cond_1

    const-string/jumbo v6, "verbose"

    invoke-static {v6}, Lsun/security/ssl/Debug;->isOn(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    sget-object v6, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Ignoring disabled cipher suite: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, " for "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_4
    sget-object v6, Lsun/security/ssl/Handshaker;->debug:Lsun/security/ssl/Debug;

    if-eqz v6, :cond_1

    const-string/jumbo v6, "verbose"

    invoke-static {v6}, Lsun/security/ssl/Debug;->isOn(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    sget-object v6, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Ignoring unsupported cipher suite: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, " for "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_5
    new-instance v6, Lsun/security/ssl/ProtocolList;

    invoke-direct {v6, v3}, Lsun/security/ssl/ProtocolList;-><init>(Ljava/util/ArrayList;)V

    iput-object v6, p0, Lsun/security/ssl/Handshaker;->activeProtocols:Lsun/security/ssl/ProtocolList;

    :cond_6
    iget-object v6, p0, Lsun/security/ssl/Handshaker;->activeProtocols:Lsun/security/ssl/ProtocolList;

    return-object v6
.end method

.method getClientVerifyData()[B
    .locals 1

    iget-object v0, p0, Lsun/security/ssl/Handshaker;->clientVerifyData:[B

    return-object v0
.end method

.method getHostAddressSE()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lsun/security/ssl/Handshaker;->conn:Lsun/security/ssl/SSLSocketImpl;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lsun/security/ssl/Handshaker;->conn:Lsun/security/ssl/SSLSocketImpl;

    invoke-virtual {v0}, Lsun/security/ssl/BaseSSLSocketImpl;->getInetAddress()Ljava/net/InetAddress;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v0, p0, Lsun/security/ssl/Handshaker;->engine:Lsun/security/ssl/SSLEngineImpl;

    invoke-virtual {v0}, Ljavax/net/ssl/SSLEngine;->getPeerHost()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method getHostSE()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lsun/security/ssl/Handshaker;->conn:Lsun/security/ssl/SSLSocketImpl;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lsun/security/ssl/Handshaker;->conn:Lsun/security/ssl/SSLSocketImpl;

    invoke-virtual {v0}, Lsun/security/ssl/SSLSocketImpl;->getHost()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v0, p0, Lsun/security/ssl/Handshaker;->engine:Lsun/security/ssl/SSLEngineImpl;

    invoke-virtual {v0}, Ljavax/net/ssl/SSLEngine;->getPeerHost()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method abstract getKickstartMessage()Lsun/security/ssl/HandshakeMessage;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLException;
        }
    .end annotation
.end method

.method getLocalPortSE()I
    .locals 1

    iget-object v0, p0, Lsun/security/ssl/Handshaker;->conn:Lsun/security/ssl/SSLSocketImpl;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lsun/security/ssl/Handshaker;->conn:Lsun/security/ssl/SSLSocketImpl;

    invoke-virtual {v0}, Lsun/security/ssl/BaseSSLSocketImpl;->getLocalPort()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, -0x1

    return v0
.end method

.method getLocalSupportedSignAlgs()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Lsun/security/ssl/SignatureAndHashAlgorithm;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lsun/security/ssl/Handshaker;->localSupportedSignAlgs:Ljava/util/Collection;

    if-nez v0, :cond_0

    iget-object v0, p0, Lsun/security/ssl/Handshaker;->algorithmConstraints:Ljava/security/AlgorithmConstraints;

    invoke-static {v0}, Lsun/security/ssl/SignatureAndHashAlgorithm;->getSupportedAlgorithms(Ljava/security/AlgorithmConstraints;)Ljava/util/Collection;

    move-result-object v0

    iput-object v0, p0, Lsun/security/ssl/Handshaker;->localSupportedSignAlgs:Ljava/util/Collection;

    :cond_0
    iget-object v0, p0, Lsun/security/ssl/Handshaker;->localSupportedSignAlgs:Ljava/util/Collection;

    return-object v0
.end method

.method getPeerSupportedSignAlgs()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Lsun/security/ssl/SignatureAndHashAlgorithm;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lsun/security/ssl/Handshaker;->peerSupportedSignAlgs:Ljava/util/Collection;

    return-object v0
.end method

.method getPortSE()I
    .locals 1

    iget-object v0, p0, Lsun/security/ssl/Handshaker;->conn:Lsun/security/ssl/SSLSocketImpl;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lsun/security/ssl/Handshaker;->conn:Lsun/security/ssl/SSLSocketImpl;

    invoke-virtual {v0}, Lsun/security/ssl/BaseSSLSocketImpl;->getPort()I

    move-result v0

    return v0

    :cond_0
    iget-object v0, p0, Lsun/security/ssl/Handshaker;->engine:Lsun/security/ssl/SSLEngineImpl;

    invoke-virtual {v0}, Ljavax/net/ssl/SSLEngine;->getPeerPort()I

    move-result v0

    return v0
.end method

.method getRawHostnameSE()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lsun/security/ssl/Handshaker;->conn:Lsun/security/ssl/SSLSocketImpl;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lsun/security/ssl/Handshaker;->conn:Lsun/security/ssl/SSLSocketImpl;

    invoke-virtual {v0}, Lsun/security/ssl/SSLSocketImpl;->getRawHostname()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v0, p0, Lsun/security/ssl/Handshaker;->engine:Lsun/security/ssl/SSLEngineImpl;

    invoke-virtual {v0}, Ljavax/net/ssl/SSLEngine;->getPeerHost()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method getServerVerifyData()[B
    .locals 1

    iget-object v0, p0, Lsun/security/ssl/Handshaker;->serverVerifyData:[B

    return-object v0
.end method

.method getSession()Lsun/security/ssl/SSLSessionImpl;
    .locals 1

    iget-object v0, p0, Lsun/security/ssl/Handshaker;->session:Lsun/security/ssl/SSLSessionImpl;

    return-object v0
.end method

.method getTask()Lsun/security/ssl/Handshaker$DelegatedTask;
    .locals 1

    iget-boolean v0, p0, Lsun/security/ssl/Handshaker;->taskDelegated:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lsun/security/ssl/Handshaker;->taskDelegated:Z

    iget-object v0, p0, Lsun/security/ssl/Handshaker;->delegatedTask:Lsun/security/ssl/Handshaker$DelegatedTask;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method abstract handshakeAlert(B)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLProtocolException;
        }
    .end annotation
.end method

.method isDone()Z
    .locals 2

    iget v0, p0, Lsun/security/ssl/Handshaker;->state:I

    const/16 v1, 0x14

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method isLoopbackSE()Z
    .locals 1

    iget-object v0, p0, Lsun/security/ssl/Handshaker;->conn:Lsun/security/ssl/SSLSocketImpl;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lsun/security/ssl/Handshaker;->conn:Lsun/security/ssl/SSLSocketImpl;

    invoke-virtual {v0}, Lsun/security/ssl/BaseSSLSocketImpl;->getInetAddress()Ljava/net/InetAddress;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/InetAddress;->isLoopbackAddress()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method isNegotiable(Lsun/security/ssl/CipherSuite;)Z
    .locals 1

    iget-object v0, p0, Lsun/security/ssl/Handshaker;->activeCipherSuites:Lsun/security/ssl/CipherSuiteList;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lsun/security/ssl/Handshaker;->getActiveCipherSuites()Lsun/security/ssl/CipherSuiteList;

    move-result-object v0

    iput-object v0, p0, Lsun/security/ssl/Handshaker;->activeCipherSuites:Lsun/security/ssl/CipherSuiteList;

    :cond_0
    iget-object v0, p0, Lsun/security/ssl/Handshaker;->activeCipherSuites:Lsun/security/ssl/CipherSuiteList;

    invoke-virtual {v0, p1}, Lsun/security/ssl/CipherSuiteList;->contains(Lsun/security/ssl/CipherSuite;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lsun/security/ssl/CipherSuite;->isNegotiable()Z

    move-result v0

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method isNegotiable(Lsun/security/ssl/ProtocolVersion;)Z
    .locals 1

    iget-object v0, p0, Lsun/security/ssl/Handshaker;->activeProtocols:Lsun/security/ssl/ProtocolList;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lsun/security/ssl/Handshaker;->getActiveProtocols()Lsun/security/ssl/ProtocolList;

    move-result-object v0

    iput-object v0, p0, Lsun/security/ssl/Handshaker;->activeProtocols:Lsun/security/ssl/ProtocolList;

    :cond_0
    iget-object v0, p0, Lsun/security/ssl/Handshaker;->activeProtocols:Lsun/security/ssl/ProtocolList;

    invoke-virtual {v0, p1}, Lsun/security/ssl/ProtocolList;->contains(Lsun/security/ssl/ProtocolVersion;)Z

    move-result v0

    return v0
.end method

.method isSecureRenegotiation()Z
    .locals 1

    iget-boolean v0, p0, Lsun/security/ssl/Handshaker;->secureRenegotiation:Z

    return v0
.end method

.method kickstart()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v1, p0, Lsun/security/ssl/Handshaker;->state:I

    if-ltz v1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lsun/security/ssl/Handshaker;->getKickstartMessage()Lsun/security/ssl/HandshakeMessage;

    move-result-object v0

    sget-object v1, Lsun/security/ssl/Handshaker;->debug:Lsun/security/ssl/Debug;

    if-eqz v1, :cond_1

    const-string/jumbo v1, "handshake"

    invoke-static {v1}, Lsun/security/ssl/Debug;->isOn(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v0, v1}, Lsun/security/ssl/HandshakeMessage;->print(Ljava/io/PrintStream;)V

    :cond_1
    iget-object v1, p0, Lsun/security/ssl/Handshaker;->output:Lsun/security/ssl/HandshakeOutStream;

    invoke-virtual {v0, v1}, Lsun/security/ssl/HandshakeMessage;->write(Lsun/security/ssl/HandshakeOutStream;)V

    iget-object v1, p0, Lsun/security/ssl/Handshaker;->output:Lsun/security/ssl/HandshakeOutStream;

    invoke-virtual {v1}, Lsun/security/ssl/HandshakeOutStream;->flush()V

    invoke-virtual {v0}, Lsun/security/ssl/HandshakeMessage;->messageType()I

    move-result v1

    iput v1, p0, Lsun/security/ssl/Handshaker;->state:I

    return-void
.end method

.method newReadCipher()Lsun/security/ssl/CipherBox;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    const/4 v5, 0x0

    const/4 v7, 0x0

    iget-object v1, p0, Lsun/security/ssl/Handshaker;->cipherSuite:Lsun/security/ssl/CipherSuite;

    iget-object v0, v1, Lsun/security/ssl/CipherSuite;->cipher:Lsun/security/ssl/CipherSuite$BulkCipher;

    iget-boolean v1, p0, Lsun/security/ssl/Handshaker;->isClient:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lsun/security/ssl/Handshaker;->protocolVersion:Lsun/security/ssl/ProtocolVersion;

    iget-object v2, p0, Lsun/security/ssl/Handshaker;->svrWriteKey:Ljavax/crypto/SecretKey;

    iget-object v3, p0, Lsun/security/ssl/Handshaker;->svrWriteIV:Ljavax/crypto/spec/IvParameterSpec;

    iget-object v4, p0, Lsun/security/ssl/Handshaker;->sslContext:Lsun/security/ssl/SSLContextImpl;

    invoke-virtual {v4}, Lsun/security/ssl/SSLContextImpl;->getSecureRandom()Ljava/security/SecureRandom;

    move-result-object v4

    invoke-virtual/range {v0 .. v5}, Lsun/security/ssl/CipherSuite$BulkCipher;->newCipher(Lsun/security/ssl/ProtocolVersion;Ljavax/crypto/SecretKey;Ljavax/crypto/spec/IvParameterSpec;Ljava/security/SecureRandom;Z)Lsun/security/ssl/CipherBox;

    move-result-object v6

    iput-object v7, p0, Lsun/security/ssl/Handshaker;->svrWriteKey:Ljavax/crypto/SecretKey;

    iput-object v7, p0, Lsun/security/ssl/Handshaker;->svrWriteIV:Ljavax/crypto/spec/IvParameterSpec;

    :goto_0
    return-object v6

    :cond_0
    iget-object v1, p0, Lsun/security/ssl/Handshaker;->protocolVersion:Lsun/security/ssl/ProtocolVersion;

    iget-object v2, p0, Lsun/security/ssl/Handshaker;->clntWriteKey:Ljavax/crypto/SecretKey;

    iget-object v3, p0, Lsun/security/ssl/Handshaker;->clntWriteIV:Ljavax/crypto/spec/IvParameterSpec;

    iget-object v4, p0, Lsun/security/ssl/Handshaker;->sslContext:Lsun/security/ssl/SSLContextImpl;

    invoke-virtual {v4}, Lsun/security/ssl/SSLContextImpl;->getSecureRandom()Ljava/security/SecureRandom;

    move-result-object v4

    invoke-virtual/range {v0 .. v5}, Lsun/security/ssl/CipherSuite$BulkCipher;->newCipher(Lsun/security/ssl/ProtocolVersion;Ljavax/crypto/SecretKey;Ljavax/crypto/spec/IvParameterSpec;Ljava/security/SecureRandom;Z)Lsun/security/ssl/CipherBox;

    move-result-object v6

    iput-object v7, p0, Lsun/security/ssl/Handshaker;->clntWriteKey:Ljavax/crypto/SecretKey;

    iput-object v7, p0, Lsun/security/ssl/Handshaker;->clntWriteIV:Ljavax/crypto/spec/IvParameterSpec;

    goto :goto_0
.end method

.method newReadMAC()Lsun/security/ssl/MAC;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    const/4 v4, 0x0

    iget-object v2, p0, Lsun/security/ssl/Handshaker;->cipherSuite:Lsun/security/ssl/CipherSuite;

    iget-object v1, v2, Lsun/security/ssl/CipherSuite;->macAlg:Lsun/security/ssl/CipherSuite$MacAlg;

    iget-boolean v2, p0, Lsun/security/ssl/Handshaker;->isClient:Z

    if-eqz v2, :cond_0

    iget-object v2, p0, Lsun/security/ssl/Handshaker;->protocolVersion:Lsun/security/ssl/ProtocolVersion;

    iget-object v3, p0, Lsun/security/ssl/Handshaker;->svrMacSecret:Ljavax/crypto/SecretKey;

    invoke-virtual {v1, v2, v3}, Lsun/security/ssl/CipherSuite$MacAlg;->newMac(Lsun/security/ssl/ProtocolVersion;Ljavax/crypto/SecretKey;)Lsun/security/ssl/MAC;

    move-result-object v0

    iput-object v4, p0, Lsun/security/ssl/Handshaker;->svrMacSecret:Ljavax/crypto/SecretKey;

    :goto_0
    return-object v0

    :cond_0
    iget-object v2, p0, Lsun/security/ssl/Handshaker;->protocolVersion:Lsun/security/ssl/ProtocolVersion;

    iget-object v3, p0, Lsun/security/ssl/Handshaker;->clntMacSecret:Ljavax/crypto/SecretKey;

    invoke-virtual {v1, v2, v3}, Lsun/security/ssl/CipherSuite$MacAlg;->newMac(Lsun/security/ssl/ProtocolVersion;Ljavax/crypto/SecretKey;)Lsun/security/ssl/MAC;

    move-result-object v0

    iput-object v4, p0, Lsun/security/ssl/Handshaker;->clntMacSecret:Ljavax/crypto/SecretKey;

    goto :goto_0
.end method

.method newWriteCipher()Lsun/security/ssl/CipherBox;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    const/4 v5, 0x1

    const/4 v7, 0x0

    iget-object v1, p0, Lsun/security/ssl/Handshaker;->cipherSuite:Lsun/security/ssl/CipherSuite;

    iget-object v0, v1, Lsun/security/ssl/CipherSuite;->cipher:Lsun/security/ssl/CipherSuite$BulkCipher;

    iget-boolean v1, p0, Lsun/security/ssl/Handshaker;->isClient:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lsun/security/ssl/Handshaker;->protocolVersion:Lsun/security/ssl/ProtocolVersion;

    iget-object v2, p0, Lsun/security/ssl/Handshaker;->clntWriteKey:Ljavax/crypto/SecretKey;

    iget-object v3, p0, Lsun/security/ssl/Handshaker;->clntWriteIV:Ljavax/crypto/spec/IvParameterSpec;

    iget-object v4, p0, Lsun/security/ssl/Handshaker;->sslContext:Lsun/security/ssl/SSLContextImpl;

    invoke-virtual {v4}, Lsun/security/ssl/SSLContextImpl;->getSecureRandom()Ljava/security/SecureRandom;

    move-result-object v4

    invoke-virtual/range {v0 .. v5}, Lsun/security/ssl/CipherSuite$BulkCipher;->newCipher(Lsun/security/ssl/ProtocolVersion;Ljavax/crypto/SecretKey;Ljavax/crypto/spec/IvParameterSpec;Ljava/security/SecureRandom;Z)Lsun/security/ssl/CipherBox;

    move-result-object v6

    iput-object v7, p0, Lsun/security/ssl/Handshaker;->clntWriteKey:Ljavax/crypto/SecretKey;

    iput-object v7, p0, Lsun/security/ssl/Handshaker;->clntWriteIV:Ljavax/crypto/spec/IvParameterSpec;

    :goto_0
    return-object v6

    :cond_0
    iget-object v1, p0, Lsun/security/ssl/Handshaker;->protocolVersion:Lsun/security/ssl/ProtocolVersion;

    iget-object v2, p0, Lsun/security/ssl/Handshaker;->svrWriteKey:Ljavax/crypto/SecretKey;

    iget-object v3, p0, Lsun/security/ssl/Handshaker;->svrWriteIV:Ljavax/crypto/spec/IvParameterSpec;

    iget-object v4, p0, Lsun/security/ssl/Handshaker;->sslContext:Lsun/security/ssl/SSLContextImpl;

    invoke-virtual {v4}, Lsun/security/ssl/SSLContextImpl;->getSecureRandom()Ljava/security/SecureRandom;

    move-result-object v4

    invoke-virtual/range {v0 .. v5}, Lsun/security/ssl/CipherSuite$BulkCipher;->newCipher(Lsun/security/ssl/ProtocolVersion;Ljavax/crypto/SecretKey;Ljavax/crypto/spec/IvParameterSpec;Ljava/security/SecureRandom;Z)Lsun/security/ssl/CipherBox;

    move-result-object v6

    iput-object v7, p0, Lsun/security/ssl/Handshaker;->svrWriteKey:Ljavax/crypto/SecretKey;

    iput-object v7, p0, Lsun/security/ssl/Handshaker;->svrWriteIV:Ljavax/crypto/spec/IvParameterSpec;

    goto :goto_0
.end method

.method newWriteMAC()Lsun/security/ssl/MAC;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    const/4 v4, 0x0

    iget-object v2, p0, Lsun/security/ssl/Handshaker;->cipherSuite:Lsun/security/ssl/CipherSuite;

    iget-object v1, v2, Lsun/security/ssl/CipherSuite;->macAlg:Lsun/security/ssl/CipherSuite$MacAlg;

    iget-boolean v2, p0, Lsun/security/ssl/Handshaker;->isClient:Z

    if-eqz v2, :cond_0

    iget-object v2, p0, Lsun/security/ssl/Handshaker;->protocolVersion:Lsun/security/ssl/ProtocolVersion;

    iget-object v3, p0, Lsun/security/ssl/Handshaker;->clntMacSecret:Ljavax/crypto/SecretKey;

    invoke-virtual {v1, v2, v3}, Lsun/security/ssl/CipherSuite$MacAlg;->newMac(Lsun/security/ssl/ProtocolVersion;Ljavax/crypto/SecretKey;)Lsun/security/ssl/MAC;

    move-result-object v0

    iput-object v4, p0, Lsun/security/ssl/Handshaker;->clntMacSecret:Ljavax/crypto/SecretKey;

    :goto_0
    return-object v0

    :cond_0
    iget-object v2, p0, Lsun/security/ssl/Handshaker;->protocolVersion:Lsun/security/ssl/ProtocolVersion;

    iget-object v3, p0, Lsun/security/ssl/Handshaker;->svrMacSecret:Ljavax/crypto/SecretKey;

    invoke-virtual {v1, v2, v3}, Lsun/security/ssl/CipherSuite$MacAlg;->newMac(Lsun/security/ssl/ProtocolVersion;Ljavax/crypto/SecretKey;)Lsun/security/ssl/MAC;

    move-result-object v0

    iput-object v4, p0, Lsun/security/ssl/Handshaker;->svrMacSecret:Ljavax/crypto/SecretKey;

    goto :goto_0
.end method

.method processLoop()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v4, 0x4

    :goto_0
    iget-object v2, p0, Lsun/security/ssl/Handshaker;->input:Lsun/security/ssl/HandshakeInStream;

    invoke-virtual {v2}, Lsun/security/ssl/HandshakeInStream;->available()I

    move-result v2

    if-lt v2, v4, :cond_2

    iget-object v2, p0, Lsun/security/ssl/Handshaker;->input:Lsun/security/ssl/HandshakeInStream;

    invoke-virtual {v2, v4}, Lsun/security/ssl/HandshakeInStream;->mark(I)V

    iget-object v2, p0, Lsun/security/ssl/Handshaker;->input:Lsun/security/ssl/HandshakeInStream;

    invoke-virtual {v2}, Lsun/security/ssl/HandshakeInStream;->getInt8()I

    move-result v2

    int-to-byte v1, v2

    iget-object v2, p0, Lsun/security/ssl/Handshaker;->input:Lsun/security/ssl/HandshakeInStream;

    invoke-virtual {v2}, Lsun/security/ssl/HandshakeInStream;->getInt24()I

    move-result v0

    iget-object v2, p0, Lsun/security/ssl/Handshaker;->input:Lsun/security/ssl/HandshakeInStream;

    invoke-virtual {v2}, Lsun/security/ssl/HandshakeInStream;->available()I

    move-result v2

    if-ge v2, v0, :cond_0

    iget-object v2, p0, Lsun/security/ssl/Handshaker;->input:Lsun/security/ssl/HandshakeInStream;

    invoke-virtual {v2}, Lsun/security/ssl/HandshakeInStream;->reset()V

    return-void

    :cond_0
    if-nez v1, :cond_1

    iget-object v2, p0, Lsun/security/ssl/Handshaker;->input:Lsun/security/ssl/HandshakeInStream;

    invoke-virtual {v2}, Lsun/security/ssl/HandshakeInStream;->reset()V

    invoke-virtual {p0, v1, v0}, Lsun/security/ssl/Handshaker;->processMessage(BI)V

    iget-object v2, p0, Lsun/security/ssl/Handshaker;->input:Lsun/security/ssl/HandshakeInStream;

    add-int/lit8 v3, v0, 0x4

    invoke-virtual {v2, v3}, Lsun/security/ssl/HandshakeInStream;->ignore(I)V

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lsun/security/ssl/Handshaker;->input:Lsun/security/ssl/HandshakeInStream;

    invoke-virtual {v2, v0}, Lsun/security/ssl/HandshakeInStream;->mark(I)V

    invoke-virtual {p0, v1, v0}, Lsun/security/ssl/Handshaker;->processMessage(BI)V

    iget-object v2, p0, Lsun/security/ssl/Handshaker;->input:Lsun/security/ssl/HandshakeInStream;

    invoke-virtual {v2}, Lsun/security/ssl/HandshakeInStream;->digestNow()V

    goto :goto_0

    :cond_2
    return-void
.end method

.method abstract processMessage(BI)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method process_record(Lsun/security/ssl/InputRecord;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lsun/security/ssl/Handshaker;->checkThrown()V

    iget-object v0, p0, Lsun/security/ssl/Handshaker;->input:Lsun/security/ssl/HandshakeInStream;

    invoke-virtual {v0, p1}, Lsun/security/ssl/HandshakeInStream;->incomingRecord(Lsun/security/ssl/InputRecord;)V

    iget-object v0, p0, Lsun/security/ssl/Handshaker;->conn:Lsun/security/ssl/SSLSocketImpl;

    if-nez v0, :cond_0

    if-eqz p2, :cond_1

    :cond_0
    invoke-virtual {p0}, Lsun/security/ssl/Handshaker;->processLoop()V

    :goto_0
    return-void

    :cond_1
    new-instance v0, Lsun/security/ssl/Handshaker$1;

    invoke-direct {v0, p0}, Lsun/security/ssl/Handshaker$1;-><init>(Lsun/security/ssl/Handshaker;)V

    invoke-direct {p0, v0}, Lsun/security/ssl/Handshaker;->delegateTask(Ljava/security/PrivilegedExceptionAction;)V

    goto :goto_0
.end method

.method selectProtocolVersion(Lsun/security/ssl/ProtocolVersion;)Lsun/security/ssl/ProtocolVersion;
    .locals 1

    iget-object v0, p0, Lsun/security/ssl/Handshaker;->activeProtocols:Lsun/security/ssl/ProtocolList;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lsun/security/ssl/Handshaker;->getActiveProtocols()Lsun/security/ssl/ProtocolList;

    move-result-object v0

    iput-object v0, p0, Lsun/security/ssl/Handshaker;->activeProtocols:Lsun/security/ssl/ProtocolList;

    :cond_0
    iget-object v0, p0, Lsun/security/ssl/Handshaker;->activeProtocols:Lsun/security/ssl/ProtocolList;

    invoke-virtual {v0, p1}, Lsun/security/ssl/ProtocolList;->selectProtocolVersion(Lsun/security/ssl/ProtocolVersion;)Lsun/security/ssl/ProtocolVersion;

    move-result-object v0

    return-object v0
.end method

.method sendChangeCipherSpec(Lsun/security/ssl/HandshakeMessage$Finished;Z)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v2, 0x14

    iget-object v1, p0, Lsun/security/ssl/Handshaker;->output:Lsun/security/ssl/HandshakeOutStream;

    invoke-virtual {v1}, Lsun/security/ssl/HandshakeOutStream;->flush()V

    iget-object v1, p0, Lsun/security/ssl/Handshaker;->conn:Lsun/security/ssl/SSLSocketImpl;

    if-eqz v1, :cond_1

    new-instance v0, Lsun/security/ssl/OutputRecord;

    invoke-direct {v0, v2}, Lsun/security/ssl/OutputRecord;-><init>(B)V

    :goto_0
    iget-object v1, p0, Lsun/security/ssl/Handshaker;->protocolVersion:Lsun/security/ssl/ProtocolVersion;

    invoke-virtual {v0, v1}, Lsun/security/ssl/OutputRecord;->setVersion(Lsun/security/ssl/ProtocolVersion;)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    iget-object v1, p0, Lsun/security/ssl/Handshaker;->conn:Lsun/security/ssl/SSLSocketImpl;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lsun/security/ssl/Handshaker;->conn:Lsun/security/ssl/SSLSocketImpl;

    iget-object v1, v1, Lsun/security/ssl/SSLSocketImpl;->writeLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    :try_start_0
    iget-object v1, p0, Lsun/security/ssl/Handshaker;->conn:Lsun/security/ssl/SSLSocketImpl;

    invoke-virtual {v1, v0}, Lsun/security/ssl/SSLSocketImpl;->writeRecord(Lsun/security/ssl/OutputRecord;)V

    iget-object v1, p0, Lsun/security/ssl/Handshaker;->conn:Lsun/security/ssl/SSLSocketImpl;

    invoke-virtual {v1}, Lsun/security/ssl/SSLSocketImpl;->changeWriteCiphers()V

    sget-object v1, Lsun/security/ssl/Handshaker;->debug:Lsun/security/ssl/Debug;

    if-eqz v1, :cond_0

    const-string/jumbo v1, "handshake"

    invoke-static {v1}, Lsun/security/ssl/Debug;->isOn(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {p1, v1}, Lsun/security/ssl/HandshakeMessage$Finished;->print(Ljava/io/PrintStream;)V

    :cond_0
    iget-object v1, p0, Lsun/security/ssl/Handshaker;->output:Lsun/security/ssl/HandshakeOutStream;

    invoke-virtual {p1, v1}, Lsun/security/ssl/HandshakeMessage;->write(Lsun/security/ssl/HandshakeOutStream;)V

    iget-object v1, p0, Lsun/security/ssl/Handshaker;->output:Lsun/security/ssl/HandshakeOutStream;

    invoke-virtual {v1}, Lsun/security/ssl/HandshakeOutStream;->flush()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v1, p0, Lsun/security/ssl/Handshaker;->conn:Lsun/security/ssl/SSLSocketImpl;

    iget-object v1, v1, Lsun/security/ssl/SSLSocketImpl;->writeLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    :goto_1
    return-void

    :cond_1
    new-instance v0, Lsun/security/ssl/EngineOutputRecord;

    iget-object v1, p0, Lsun/security/ssl/Handshaker;->engine:Lsun/security/ssl/SSLEngineImpl;

    invoke-direct {v0, v2, v1}, Lsun/security/ssl/EngineOutputRecord;-><init>(BLsun/security/ssl/SSLEngineImpl;)V

    goto :goto_0

    :catchall_0
    move-exception v1

    iget-object v2, p0, Lsun/security/ssl/Handshaker;->conn:Lsun/security/ssl/SSLSocketImpl;

    iget-object v2, v2, Lsun/security/ssl/SSLSocketImpl;->writeLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v1

    :cond_2
    iget-object v1, p0, Lsun/security/ssl/Handshaker;->engine:Lsun/security/ssl/SSLEngineImpl;

    iget-object v2, v1, Lsun/security/ssl/SSLEngineImpl;->writeLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_1
    iget-object v1, p0, Lsun/security/ssl/Handshaker;->engine:Lsun/security/ssl/SSLEngineImpl;

    check-cast v0, Lsun/security/ssl/EngineOutputRecord;

    invoke-virtual {v1, v0}, Lsun/security/ssl/SSLEngineImpl;->writeRecord(Lsun/security/ssl/EngineOutputRecord;)V

    iget-object v1, p0, Lsun/security/ssl/Handshaker;->engine:Lsun/security/ssl/SSLEngineImpl;

    invoke-virtual {v1}, Lsun/security/ssl/SSLEngineImpl;->changeWriteCiphers()V

    sget-object v1, Lsun/security/ssl/Handshaker;->debug:Lsun/security/ssl/Debug;

    if-eqz v1, :cond_3

    const-string/jumbo v1, "handshake"

    invoke-static {v1}, Lsun/security/ssl/Debug;->isOn(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {p1, v1}, Lsun/security/ssl/HandshakeMessage$Finished;->print(Ljava/io/PrintStream;)V

    :cond_3
    iget-object v1, p0, Lsun/security/ssl/Handshaker;->output:Lsun/security/ssl/HandshakeOutStream;

    invoke-virtual {p1, v1}, Lsun/security/ssl/HandshakeMessage;->write(Lsun/security/ssl/HandshakeOutStream;)V

    if-eqz p2, :cond_4

    iget-object v1, p0, Lsun/security/ssl/Handshaker;->output:Lsun/security/ssl/HandshakeOutStream;

    invoke-virtual {v1}, Lsun/security/ssl/HandshakeOutStream;->setFinishedMsg()V

    :cond_4
    iget-object v1, p0, Lsun/security/ssl/Handshaker;->output:Lsun/security/ssl/HandshakeOutStream;

    invoke-virtual {v1}, Lsun/security/ssl/HandshakeOutStream;->flush()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    monitor-exit v2

    goto :goto_1

    :catchall_1
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method setAlgorithmConstraints(Ljava/security/AlgorithmConstraints;)V
    .locals 2

    const/4 v1, 0x0

    iput-object v1, p0, Lsun/security/ssl/Handshaker;->activeCipherSuites:Lsun/security/ssl/CipherSuiteList;

    iput-object v1, p0, Lsun/security/ssl/Handshaker;->activeProtocols:Lsun/security/ssl/ProtocolList;

    new-instance v0, Lsun/security/ssl/SSLAlgorithmConstraints;

    invoke-direct {v0, p1}, Lsun/security/ssl/SSLAlgorithmConstraints;-><init>(Ljava/security/AlgorithmConstraints;)V

    iput-object v0, p0, Lsun/security/ssl/Handshaker;->algorithmConstraints:Ljava/security/AlgorithmConstraints;

    iput-object v1, p0, Lsun/security/ssl/Handshaker;->localSupportedSignAlgs:Ljava/util/Collection;

    return-void
.end method

.method setCipherSuite(Lsun/security/ssl/CipherSuite;)V
    .locals 1

    iput-object p1, p0, Lsun/security/ssl/Handshaker;->cipherSuite:Lsun/security/ssl/CipherSuite;

    iget-object v0, p1, Lsun/security/ssl/CipherSuite;->keyExchange:Lsun/security/ssl/CipherSuite$KeyExchange;

    iput-object v0, p0, Lsun/security/ssl/Handshaker;->keyExchange:Lsun/security/ssl/CipherSuite$KeyExchange;

    return-void
.end method

.method setEnableSessionCreation(Z)V
    .locals 0

    iput-boolean p1, p0, Lsun/security/ssl/Handshaker;->enableNewSession:Z

    return-void
.end method

.method setEnabledCipherSuites(Lsun/security/ssl/CipherSuiteList;)V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lsun/security/ssl/Handshaker;->activeCipherSuites:Lsun/security/ssl/CipherSuiteList;

    iput-object v0, p0, Lsun/security/ssl/Handshaker;->activeProtocols:Lsun/security/ssl/ProtocolList;

    iput-object p1, p0, Lsun/security/ssl/Handshaker;->enabledCipherSuites:Lsun/security/ssl/CipherSuiteList;

    return-void
.end method

.method setEnabledProtocols(Lsun/security/ssl/ProtocolList;)V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lsun/security/ssl/Handshaker;->activeCipherSuites:Lsun/security/ssl/CipherSuiteList;

    iput-object v0, p0, Lsun/security/ssl/Handshaker;->activeProtocols:Lsun/security/ssl/ProtocolList;

    iput-object p1, p0, Lsun/security/ssl/Handshaker;->enabledProtocols:Lsun/security/ssl/ProtocolList;

    return-void
.end method

.method setHandshakeSessionSE(Lsun/security/ssl/SSLSessionImpl;)V
    .locals 1

    iget-object v0, p0, Lsun/security/ssl/Handshaker;->conn:Lsun/security/ssl/SSLSocketImpl;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lsun/security/ssl/Handshaker;->conn:Lsun/security/ssl/SSLSocketImpl;

    invoke-virtual {v0, p1}, Lsun/security/ssl/SSLSocketImpl;->setHandshakeSession(Lsun/security/ssl/SSLSessionImpl;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lsun/security/ssl/Handshaker;->engine:Lsun/security/ssl/SSLEngineImpl;

    invoke-virtual {v0, p1}, Lsun/security/ssl/SSLEngineImpl;->setHandshakeSession(Lsun/security/ssl/SSLSessionImpl;)V

    goto :goto_0
.end method

.method setIdentificationProtocol(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lsun/security/ssl/Handshaker;->identificationProtocol:Ljava/lang/String;

    return-void
.end method

.method setPeerSupportedSignAlgs(Ljava/util/Collection;)V
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

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lsun/security/ssl/Handshaker;->peerSupportedSignAlgs:Ljava/util/Collection;

    return-void
.end method

.method setVersion(Lsun/security/ssl/ProtocolVersion;)V
    .locals 1

    iput-object p1, p0, Lsun/security/ssl/Handshaker;->protocolVersion:Lsun/security/ssl/ProtocolVersion;

    invoke-direct {p0, p1}, Lsun/security/ssl/Handshaker;->setVersionSE(Lsun/security/ssl/ProtocolVersion;)V

    iget-object v0, p0, Lsun/security/ssl/Handshaker;->output:Lsun/security/ssl/HandshakeOutStream;

    iget-object v0, v0, Lsun/security/ssl/HandshakeOutStream;->r:Lsun/security/ssl/OutputRecord;

    invoke-virtual {v0, p1}, Lsun/security/ssl/OutputRecord;->setVersion(Lsun/security/ssl/ProtocolVersion;)V

    return-void
.end method

.method started()Z
    .locals 2

    const/4 v0, 0x0

    iget v1, p0, Lsun/security/ssl/Handshaker;->state:I

    if-ltz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method taskOutstanding()Z
    .locals 1

    iget-object v0, p0, Lsun/security/ssl/Handshaker;->delegatedTask:Lsun/security/ssl/Handshaker$DelegatedTask;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method warningSE(B)V
    .locals 1

    iget-object v0, p0, Lsun/security/ssl/Handshaker;->conn:Lsun/security/ssl/SSLSocketImpl;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lsun/security/ssl/Handshaker;->conn:Lsun/security/ssl/SSLSocketImpl;

    invoke-virtual {v0, p1}, Lsun/security/ssl/SSLSocketImpl;->warning(B)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lsun/security/ssl/Handshaker;->engine:Lsun/security/ssl/SSLEngineImpl;

    invoke-virtual {v0, p1}, Lsun/security/ssl/SSLEngineImpl;->warning(B)V

    goto :goto_0
.end method
