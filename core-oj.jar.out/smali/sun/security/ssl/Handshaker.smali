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

    .prologue
    .line 165
    const-string/jumbo v0, "ssl"

    invoke-static {v0}, Lsun/security/ssl/Debug;->getInstance(Ljava/lang/String;)Lsun/security/ssl/Debug;

    move-result-object v0

    sput-object v0, Lsun/security/ssl/Handshaker;->debug:Lsun/security/ssl/Debug;

    .line 169
    const-string/jumbo v0, "sun.security.ssl.allowUnsafeRenegotiation"

    const/4 v1, 0x0

    .line 168
    invoke-static {v0, v1}, Lsun/security/ssl/Debug;->getBooleanProperty(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lsun/security/ssl/Handshaker;->allowUnsafeRenegotiation:Z

    .line 180
    const-string/jumbo v0, "sun.security.ssl.allowLegacyHelloMessages"

    const/4 v1, 0x1

    .line 179
    invoke-static {v0, v1}, Lsun/security/ssl/Debug;->getBooleanProperty(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lsun/security/ssl/Handshaker;->allowLegacyHelloMessages:Z

    .line 62
    return-void
.end method

.method constructor <init>(Lsun/security/ssl/SSLEngineImpl;Lsun/security/ssl/SSLContextImpl;Lsun/security/ssl/ProtocolList;ZZLsun/security/ssl/ProtocolVersion;ZZ[B[B)V
    .locals 10
    .param p1, "engine"    # Lsun/security/ssl/SSLEngineImpl;
    .param p2, "context"    # Lsun/security/ssl/SSLContextImpl;
    .param p3, "enabledProtocols"    # Lsun/security/ssl/ProtocolList;
    .param p4, "needCertVerify"    # Z
    .param p5, "isClient"    # Z
    .param p6, "activeProtocolVersion"    # Lsun/security/ssl/ProtocolVersion;
    .param p7, "isInitialHandshake"    # Z
    .param p8, "secureRenegotiation"    # Z
    .param p9, "clientVerifyData"    # [B
    .param p10, "serverVerifyData"    # [B

    .prologue
    .line 196
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 88
    const/4 v0, 0x0

    iput-object v0, p0, Lsun/security/ssl/Handshaker;->algorithmConstraints:Ljava/security/AlgorithmConstraints;

    .line 118
    const/4 v0, 0x0

    iput-object v0, p0, Lsun/security/ssl/Handshaker;->conn:Lsun/security/ssl/SSLSocketImpl;

    .line 119
    const/4 v0, 0x0

    iput-object v0, p0, Lsun/security/ssl/Handshaker;->engine:Lsun/security/ssl/SSLEngineImpl;

    .line 156
    const/4 v0, 0x0

    iput-boolean v0, p0, Lsun/security/ssl/Handshaker;->taskDelegated:Z

    .line 157
    const/4 v0, 0x0

    iput-object v0, p0, Lsun/security/ssl/Handshaker;->delegatedTask:Lsun/security/ssl/Handshaker$DelegatedTask;

    .line 158
    const/4 v0, 0x0

    iput-object v0, p0, Lsun/security/ssl/Handshaker;->thrown:Ljava/lang/Exception;

    .line 162
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lsun/security/ssl/Handshaker;->thrownLock:Ljava/lang/Object;

    .line 201
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

    .line 202
    invoke-direct/range {v0 .. v9}, Lsun/security/ssl/Handshaker;->init(Lsun/security/ssl/SSLContextImpl;Lsun/security/ssl/ProtocolList;ZZLsun/security/ssl/ProtocolVersion;ZZ[B[B)V

    .line 200
    return-void
.end method

.method constructor <init>(Lsun/security/ssl/SSLSocketImpl;Lsun/security/ssl/SSLContextImpl;Lsun/security/ssl/ProtocolList;ZZLsun/security/ssl/ProtocolVersion;ZZ[B[B)V
    .locals 10
    .param p1, "c"    # Lsun/security/ssl/SSLSocketImpl;
    .param p2, "context"    # Lsun/security/ssl/SSLContextImpl;
    .param p3, "enabledProtocols"    # Lsun/security/ssl/ProtocolList;
    .param p4, "needCertVerify"    # Z
    .param p5, "isClient"    # Z
    .param p6, "activeProtocolVersion"    # Lsun/security/ssl/ProtocolVersion;
    .param p7, "isInitialHandshake"    # Z
    .param p8, "secureRenegotiation"    # Z
    .param p9, "clientVerifyData"    # [B
    .param p10, "serverVerifyData"    # [B

    .prologue
    .line 185
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 88
    const/4 v0, 0x0

    iput-object v0, p0, Lsun/security/ssl/Handshaker;->algorithmConstraints:Ljava/security/AlgorithmConstraints;

    .line 118
    const/4 v0, 0x0

    iput-object v0, p0, Lsun/security/ssl/Handshaker;->conn:Lsun/security/ssl/SSLSocketImpl;

    .line 119
    const/4 v0, 0x0

    iput-object v0, p0, Lsun/security/ssl/Handshaker;->engine:Lsun/security/ssl/SSLEngineImpl;

    .line 156
    const/4 v0, 0x0

    iput-boolean v0, p0, Lsun/security/ssl/Handshaker;->taskDelegated:Z

    .line 157
    const/4 v0, 0x0

    iput-object v0, p0, Lsun/security/ssl/Handshaker;->delegatedTask:Lsun/security/ssl/Handshaker$DelegatedTask;

    .line 158
    const/4 v0, 0x0

    iput-object v0, p0, Lsun/security/ssl/Handshaker;->thrown:Ljava/lang/Exception;

    .line 162
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lsun/security/ssl/Handshaker;->thrownLock:Ljava/lang/Object;

    .line 190
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

    .line 191
    invoke-direct/range {v0 .. v9}, Lsun/security/ssl/Handshaker;->init(Lsun/security/ssl/SSLContextImpl;Lsun/security/ssl/ProtocolList;ZZLsun/security/ssl/ProtocolVersion;ZZ[B[B)V

    .line 189
    return-void
.end method

.method private calculateMasterSecret(Ljavax/crypto/SecretKey;Lsun/security/ssl/ProtocolVersion;)Ljavax/crypto/SecretKey;
    .locals 22
    .param p1, "preMasterSecret"    # Ljavax/crypto/SecretKey;
    .param p2, "requestedVersion"    # Lsun/security/ssl/ProtocolVersion;

    .prologue
    .line 1017
    sget-object v3, Lsun/security/ssl/Handshaker;->debug:Lsun/security/ssl/Debug;

    if-eqz v3, :cond_0

    const-string/jumbo v3, "keygen"

    invoke-static {v3}, Lsun/security/ssl/Debug;->isOn(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1018
    new-instance v11, Lsun/misc/HexDumpEncoder;

    invoke-direct {v11}, Lsun/misc/HexDumpEncoder;-><init>()V

    .line 1020
    .local v11, "dump":Lsun/misc/HexDumpEncoder;
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string/jumbo v4, "SESSION KEYGEN:"

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1022
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string/jumbo v4, "PreMaster Secret:"

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1023
    invoke-interface/range {p1 .. p1}, Ljavax/crypto/SecretKey;->getEncoded()[B

    move-result-object v3

    invoke-static {v11, v3}, Lsun/security/ssl/Handshaker;->printHex(Lsun/misc/HexDumpEncoder;[B)V

    .line 1033
    .end local v11    # "dump":Lsun/misc/HexDumpEncoder;
    :cond_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lsun/security/ssl/Handshaker;->protocolVersion:Lsun/security/ssl/ProtocolVersion;

    iget v3, v3, Lsun/security/ssl/ProtocolVersion;->v:I

    sget-object v4, Lsun/security/ssl/ProtocolVersion;->TLS12:Lsun/security/ssl/ProtocolVersion;

    iget v4, v4, Lsun/security/ssl/ProtocolVersion;->v:I

    if-lt v3, v4, :cond_2

    .line 1034
    const-string/jumbo v15, "SunTls12MasterSecret"

    .line 1035
    .local v15, "masterAlg":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v3, v0, Lsun/security/ssl/Handshaker;->cipherSuite:Lsun/security/ssl/CipherSuite;

    iget-object v0, v3, Lsun/security/ssl/CipherSuite;->prfAlg:Lsun/security/ssl/CipherSuite$PRF;

    move-object/from16 v19, v0

    .line 1041
    .local v19, "prf":Lsun/security/ssl/CipherSuite$PRF;
    :goto_0
    invoke-virtual/range {v19 .. v19}, Lsun/security/ssl/CipherSuite$PRF;->getPRFHashAlg()Ljava/lang/String;

    move-result-object v8

    .line 1042
    .local v8, "prfHashAlg":Ljava/lang/String;
    invoke-virtual/range {v19 .. v19}, Lsun/security/ssl/CipherSuite$PRF;->getPRFHashLength()I

    move-result v9

    .line 1043
    .local v9, "prfHashLength":I
    invoke-virtual/range {v19 .. v19}, Lsun/security/ssl/CipherSuite$PRF;->getPRFBlockSize()I

    move-result v10

    .line 1045
    .local v10, "prfBlockSize":I
    new-instance v2, Lsun/security/internal/spec/TlsMasterSecretParameterSpec;

    .line 1046
    move-object/from16 v0, p0

    iget-object v3, v0, Lsun/security/ssl/Handshaker;->protocolVersion:Lsun/security/ssl/ProtocolVersion;

    iget-byte v4, v3, Lsun/security/ssl/ProtocolVersion;->major:B

    move-object/from16 v0, p0

    iget-object v3, v0, Lsun/security/ssl/Handshaker;->protocolVersion:Lsun/security/ssl/ProtocolVersion;

    iget-byte v5, v3, Lsun/security/ssl/ProtocolVersion;->minor:B

    .line 1047
    move-object/from16 v0, p0

    iget-object v3, v0, Lsun/security/ssl/Handshaker;->clnt_random:Lsun/security/ssl/RandomCookie;

    iget-object v6, v3, Lsun/security/ssl/RandomCookie;->random_bytes:[B

    move-object/from16 v0, p0

    iget-object v3, v0, Lsun/security/ssl/Handshaker;->svr_random:Lsun/security/ssl/RandomCookie;

    iget-object v7, v3, Lsun/security/ssl/RandomCookie;->random_bytes:[B

    move-object/from16 v3, p1

    .line 1045
    invoke-direct/range {v2 .. v10}, Lsun/security/internal/spec/TlsMasterSecretParameterSpec;-><init>(Ljavax/crypto/SecretKey;II[B[BLjava/lang/String;II)V

    .line 1052
    .local v2, "spec":Lsun/security/internal/spec/TlsMasterSecretParameterSpec;
    :try_start_0
    invoke-static {v15}, Lsun/security/ssl/JsseJce;->getKeyGenerator(Ljava/lang/String;)Ljavax/crypto/KeyGenerator;

    move-result-object v13

    .line 1053
    .local v13, "kg":Ljavax/crypto/KeyGenerator;
    invoke-virtual {v13, v2}, Ljavax/crypto/KeyGenerator;->init(Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 1054
    invoke-virtual {v13}, Ljavax/crypto/KeyGenerator;->generateKey()Ljavax/crypto/SecretKey;
    :try_end_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v16

    .line 1083
    .local v16, "masterSecret":Ljavax/crypto/SecretKey;
    if-eqz p2, :cond_6

    .line 1084
    move-object/from16 v0, v16

    instance-of v3, v0, Lsun/security/internal/interfaces/TlsMasterSecret;

    if-eqz v3, :cond_6

    move-object/from16 v20, v16

    .line 1092
    check-cast v20, Lsun/security/internal/interfaces/TlsMasterSecret;

    .line 1093
    .local v20, "tlsKey":Lsun/security/internal/interfaces/TlsMasterSecret;
    invoke-interface/range {v20 .. v20}, Lsun/security/internal/interfaces/TlsMasterSecret;->getMajorVersion()I

    move-result v14

    .line 1094
    .local v14, "major":I
    invoke-interface/range {v20 .. v20}, Lsun/security/internal/interfaces/TlsMasterSecret;->getMinorVersion()I

    move-result v17

    .line 1095
    .local v17, "minor":I
    if-ltz v14, :cond_1

    if-gez v17, :cond_7

    .line 1096
    :cond_1
    return-object v16

    .line 1037
    .end local v2    # "spec":Lsun/security/internal/spec/TlsMasterSecretParameterSpec;
    .end local v8    # "prfHashAlg":Ljava/lang/String;
    .end local v9    # "prfHashLength":I
    .end local v10    # "prfBlockSize":I
    .end local v13    # "kg":Ljavax/crypto/KeyGenerator;
    .end local v14    # "major":I
    .end local v15    # "masterAlg":Ljava/lang/String;
    .end local v16    # "masterSecret":Ljavax/crypto/SecretKey;
    .end local v17    # "minor":I
    .end local v19    # "prf":Lsun/security/ssl/CipherSuite$PRF;
    .end local v20    # "tlsKey":Lsun/security/internal/interfaces/TlsMasterSecret;
    :cond_2
    const-string/jumbo v15, "SunTlsMasterSecret"

    .line 1038
    .restart local v15    # "masterAlg":Ljava/lang/String;
    sget-object v19, Lsun/security/ssl/CipherSuite$PRF;->P_NONE:Lsun/security/ssl/CipherSuite$PRF;

    .restart local v19    # "prf":Lsun/security/ssl/CipherSuite$PRF;
    goto :goto_0

    .line 1055
    .restart local v2    # "spec":Lsun/security/internal/spec/TlsMasterSecretParameterSpec;
    .restart local v8    # "prfHashAlg":Ljava/lang/String;
    .restart local v9    # "prfHashLength":I
    .restart local v10    # "prfBlockSize":I
    :catch_0
    move-exception v12

    .line 1058
    .local v12, "e":Ljava/security/GeneralSecurityException;
    invoke-interface/range {p1 .. p1}, Ljavax/crypto/SecretKey;->getAlgorithm()Ljava/lang/String;

    move-result-object v3

    .line 1059
    const-string/jumbo v4, "TlsRsaPremasterSecret"

    .line 1058
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 1060
    new-instance v3, Ljava/security/ProviderException;

    invoke-direct {v3, v12}, Ljava/security/ProviderException;-><init>(Ljava/lang/Throwable;)V

    throw v3

    .line 1063
    :cond_3
    sget-object v3, Lsun/security/ssl/Handshaker;->debug:Lsun/security/ssl/Debug;

    if-eqz v3, :cond_4

    const-string/jumbo v3, "handshake"

    invoke-static {v3}, Lsun/security/ssl/Debug;->isOn(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 1064
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string/jumbo v4, "RSA master secret generation error:"

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1065
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v12, v3}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintStream;)V

    .line 1068
    :cond_4
    if-eqz p2, :cond_5

    .line 1070
    invoke-static/range {p2 .. p2}, Lsun/security/ssl/RSAClientKeyExchange;->generateDummySecret(Lsun/security/ssl/ProtocolVersion;)Ljavax/crypto/SecretKey;

    move-result-object p1

    .line 1077
    :goto_1
    const/4 v3, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v3}, Lsun/security/ssl/Handshaker;->calculateMasterSecret(Ljavax/crypto/SecretKey;Lsun/security/ssl/ProtocolVersion;)Ljavax/crypto/SecretKey;

    move-result-object v3

    return-object v3

    .line 1073
    :cond_5
    move-object/from16 v0, p0

    iget-object v3, v0, Lsun/security/ssl/Handshaker;->protocolVersion:Lsun/security/ssl/ProtocolVersion;

    invoke-static {v3}, Lsun/security/ssl/RSAClientKeyExchange;->generateDummySecret(Lsun/security/ssl/ProtocolVersion;)Ljavax/crypto/SecretKey;

    move-result-object p1

    goto :goto_1

    .line 1085
    .end local v12    # "e":Ljava/security/GeneralSecurityException;
    .restart local v13    # "kg":Ljavax/crypto/KeyGenerator;
    .restart local v16    # "masterSecret":Ljavax/crypto/SecretKey;
    :cond_6
    return-object v16

    .line 1107
    .restart local v14    # "major":I
    .restart local v17    # "minor":I
    .restart local v20    # "tlsKey":Lsun/security/internal/interfaces/TlsMasterSecret;
    :cond_7
    move/from16 v0, v17

    invoke-static {v14, v0}, Lsun/security/ssl/ProtocolVersion;->valueOf(II)Lsun/security/ssl/ProtocolVersion;

    move-result-object v18

    .line 1108
    .local v18, "premasterVersion":Lsun/security/ssl/ProtocolVersion;
    move-object/from16 v0, v18

    iget v3, v0, Lsun/security/ssl/ProtocolVersion;->v:I

    move-object/from16 v0, p2

    iget v4, v0, Lsun/security/ssl/ProtocolVersion;->v:I

    if-eq v3, v4, :cond_9

    const/16 v21, 0x1

    .line 1115
    .local v21, "versionMismatch":Z
    :goto_2
    if-eqz v21, :cond_8

    move-object/from16 v0, p2

    iget v3, v0, Lsun/security/ssl/ProtocolVersion;->v:I

    sget-object v4, Lsun/security/ssl/ProtocolVersion;->TLS10:Lsun/security/ssl/ProtocolVersion;

    iget v4, v4, Lsun/security/ssl/ProtocolVersion;->v:I

    if-gt v3, v4, :cond_8

    .line 1116
    move-object/from16 v0, v18

    iget v3, v0, Lsun/security/ssl/ProtocolVersion;->v:I

    move-object/from16 v0, p0

    iget-object v4, v0, Lsun/security/ssl/Handshaker;->protocolVersion:Lsun/security/ssl/ProtocolVersion;

    iget v4, v4, Lsun/security/ssl/ProtocolVersion;->v:I

    if-eq v3, v4, :cond_a

    const/16 v21, 0x1

    .line 1119
    :cond_8
    :goto_3
    if-nez v21, :cond_b

    .line 1121
    return-object v16

    .line 1108
    .end local v21    # "versionMismatch":Z
    :cond_9
    const/16 v21, 0x0

    .restart local v21    # "versionMismatch":Z
    goto :goto_2

    .line 1116
    :cond_a
    const/16 v21, 0x0

    goto :goto_3

    .line 1128
    :cond_b
    sget-object v3, Lsun/security/ssl/Handshaker;->debug:Lsun/security/ssl/Debug;

    if-eqz v3, :cond_c

    const-string/jumbo v3, "handshake"

    invoke-static {v3}, Lsun/security/ssl/Debug;->isOn(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_c

    .line 1129
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "RSA PreMasterSecret version error: expected"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 1130
    move-object/from16 v0, p0

    iget-object v5, v0, Lsun/security/ssl/Handshaker;->protocolVersion:Lsun/security/ssl/ProtocolVersion;

    .line 1129
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 1130
    const-string/jumbo v5, " or "

    .line 1129
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p2

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 1130
    const-string/jumbo v5, ", decrypted: "

    .line 1129
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v18

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1134
    :cond_c
    invoke-static/range {p2 .. p2}, Lsun/security/ssl/RSAClientKeyExchange;->generateDummySecret(Lsun/security/ssl/ProtocolVersion;)Ljavax/crypto/SecretKey;

    move-result-object p1

    .line 1137
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

    .prologue
    .line 1312
    .local p1, "pea":Ljava/security/PrivilegedExceptionAction;, "Ljava/security/PrivilegedExceptionAction<TT;>;"
    new-instance v0, Lsun/security/ssl/Handshaker$DelegatedTask;

    invoke-direct {v0, p0, p1}, Lsun/security/ssl/Handshaker$DelegatedTask;-><init>(Lsun/security/ssl/Handshaker;Ljava/security/PrivilegedExceptionAction;)V

    iput-object v0, p0, Lsun/security/ssl/Handshaker;->delegatedTask:Lsun/security/ssl/Handshaker$DelegatedTask;

    .line 1313
    const/4 v0, 0x0

    iput-boolean v0, p0, Lsun/security/ssl/Handshaker;->taskDelegated:Z

    .line 1314
    const/4 v0, 0x0

    iput-object v0, p0, Lsun/security/ssl/Handshaker;->thrown:Ljava/lang/Exception;

    .line 1311
    return-void
.end method

.method private init(Lsun/security/ssl/SSLContextImpl;Lsun/security/ssl/ProtocolList;ZZLsun/security/ssl/ProtocolVersion;ZZ[B[B)V
    .locals 4
    .param p1, "context"    # Lsun/security/ssl/SSLContextImpl;
    .param p2, "enabledProtocols"    # Lsun/security/ssl/ProtocolList;
    .param p3, "needCertVerify"    # Z
    .param p4, "isClient"    # Z
    .param p5, "activeProtocolVersion"    # Lsun/security/ssl/ProtocolVersion;
    .param p6, "isInitialHandshake"    # Z
    .param p7, "secureRenegotiation"    # Z
    .param p8, "clientVerifyData"    # [B
    .param p9, "serverVerifyData"    # [B

    .prologue
    const/4 v3, 0x1

    .line 213
    sget-object v0, Lsun/security/ssl/Handshaker;->debug:Lsun/security/ssl/Debug;

    if-eqz v0, :cond_0

    const-string/jumbo v0, "handshake"

    invoke-static {v0}, Lsun/security/ssl/Debug;->isOn(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 214
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    .line 215
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Allow unsafe renegotiation: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-boolean v2, Lsun/security/ssl/Handshaker;->allowUnsafeRenegotiation:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 216
    const-string/jumbo v2, "\nAllow legacy hello messages: "

    .line 215
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 216
    sget-boolean v2, Lsun/security/ssl/Handshaker;->allowLegacyHelloMessages:Z

    .line 215
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 217
    const-string/jumbo v2, "\nIs initial handshake: "

    .line 215
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 218
    const-string/jumbo v2, "\nIs secure renegotiation: "

    .line 215
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 214
    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 221
    :cond_0
    iput-object p1, p0, Lsun/security/ssl/Handshaker;->sslContext:Lsun/security/ssl/SSLContextImpl;

    .line 222
    iput-boolean p4, p0, Lsun/security/ssl/Handshaker;->isClient:Z

    .line 223
    iput-boolean p3, p0, Lsun/security/ssl/Handshaker;->needCertVerify:Z

    .line 224
    iput-object p5, p0, Lsun/security/ssl/Handshaker;->activeProtocolVersion:Lsun/security/ssl/ProtocolVersion;

    .line 225
    iput-boolean p6, p0, Lsun/security/ssl/Handshaker;->isInitialHandshake:Z

    .line 226
    iput-boolean p7, p0, Lsun/security/ssl/Handshaker;->secureRenegotiation:Z

    .line 227
    iput-object p8, p0, Lsun/security/ssl/Handshaker;->clientVerifyData:[B

    .line 228
    iput-object p9, p0, Lsun/security/ssl/Handshaker;->serverVerifyData:[B

    .line 229
    iput-boolean v3, p0, Lsun/security/ssl/Handshaker;->enableNewSession:Z

    .line 230
    const/4 v0, 0x0

    iput-boolean v0, p0, Lsun/security/ssl/Handshaker;->invalidated:Z

    .line 232
    sget-object v0, Lsun/security/ssl/CipherSuite;->C_NULL:Lsun/security/ssl/CipherSuite;

    invoke-virtual {p0, v0}, Lsun/security/ssl/Handshaker;->setCipherSuite(Lsun/security/ssl/CipherSuite;)V

    .line 233
    invoke-virtual {p0, p2}, Lsun/security/ssl/Handshaker;->setEnabledProtocols(Lsun/security/ssl/ProtocolList;)V

    .line 235
    iget-object v0, p0, Lsun/security/ssl/Handshaker;->conn:Lsun/security/ssl/SSLSocketImpl;

    if-eqz v0, :cond_1

    .line 236
    new-instance v0, Lsun/security/ssl/SSLAlgorithmConstraints;

    iget-object v1, p0, Lsun/security/ssl/Handshaker;->conn:Lsun/security/ssl/SSLSocketImpl;

    invoke-direct {v0, v1, v3}, Lsun/security/ssl/SSLAlgorithmConstraints;-><init>(Ljavax/net/ssl/SSLSocket;Z)V

    iput-object v0, p0, Lsun/security/ssl/Handshaker;->algorithmConstraints:Ljava/security/AlgorithmConstraints;

    .line 255
    :goto_0
    const/4 v0, -0x2

    iput v0, p0, Lsun/security/ssl/Handshaker;->state:I

    .line 211
    return-void

    .line 238
    :cond_1
    new-instance v0, Lsun/security/ssl/SSLAlgorithmConstraints;

    iget-object v1, p0, Lsun/security/ssl/Handshaker;->engine:Lsun/security/ssl/SSLEngineImpl;

    invoke-direct {v0, v1, v3}, Lsun/security/ssl/SSLAlgorithmConstraints;-><init>(Ljavax/net/ssl/SSLEngine;Z)V

    iput-object v0, p0, Lsun/security/ssl/Handshaker;->algorithmConstraints:Ljava/security/AlgorithmConstraints;

    goto :goto_0
.end method

.method private static printHex(Lsun/misc/HexDumpEncoder;[B)V
    .locals 3
    .param p0, "dump"    # Lsun/misc/HexDumpEncoder;
    .param p1, "bytes"    # [B

    .prologue
    .line 1256
    if-nez p1, :cond_0

    .line 1257
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string/jumbo v2, "(key bytes not available)"

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1255
    :goto_0
    return-void

    .line 1260
    :cond_0
    :try_start_0
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {p0, p1, v1}, Lsun/misc/CharacterEncoder;->encodeBuffer([BLjava/io/OutputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1261
    :catch_0
    move-exception v0

    .local v0, "e":Ljava/io/IOException;
    goto :goto_0
.end method

.method private setVersionSE(Lsun/security/ssl/ProtocolVersion;)V
    .locals 1
    .param p1, "protocolVersion"    # Lsun/security/ssl/ProtocolVersion;

    .prologue
    .line 352
    iget-object v0, p0, Lsun/security/ssl/Handshaker;->conn:Lsun/security/ssl/SSLSocketImpl;

    if-eqz v0, :cond_0

    .line 353
    iget-object v0, p0, Lsun/security/ssl/Handshaker;->conn:Lsun/security/ssl/SSLSocketImpl;

    invoke-virtual {v0, p1}, Lsun/security/ssl/SSLSocketImpl;->setVersion(Lsun/security/ssl/ProtocolVersion;)V

    .line 351
    :goto_0
    return-void

    .line 355
    :cond_0
    iget-object v0, p0, Lsun/security/ssl/Handshaker;->engine:Lsun/security/ssl/SSLEngineImpl;

    invoke-virtual {v0, p1}, Lsun/security/ssl/SSLEngineImpl;->setVersion(Lsun/security/ssl/ProtocolVersion;)V

    goto :goto_0
.end method

.method static throwSSLException(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1
    .param p0, "msg"    # Ljava/lang/String;
    .param p1, "cause"    # Ljava/lang/Throwable;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLException;
        }
    .end annotation

    .prologue
    .line 1274
    new-instance v0, Ljavax/net/ssl/SSLException;

    invoke-direct {v0, p0}, Ljavax/net/ssl/SSLException;-><init>(Ljava/lang/String;)V

    .line 1275
    .local v0, "e":Ljavax/net/ssl/SSLException;
    invoke-virtual {v0, p1}, Ljava/lang/Throwable;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 1276
    throw v0
.end method


# virtual methods
.method activate(Lsun/security/ssl/ProtocolVersion;)V
    .locals 5
    .param p1, "helloVersion"    # Lsun/security/ssl/ProtocolVersion;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 443
    iget-object v1, p0, Lsun/security/ssl/Handshaker;->activeProtocols:Lsun/security/ssl/ProtocolList;

    if-nez v1, :cond_0

    .line 444
    invoke-virtual {p0}, Lsun/security/ssl/Handshaker;->getActiveProtocols()Lsun/security/ssl/ProtocolList;

    move-result-object v1

    iput-object v1, p0, Lsun/security/ssl/Handshaker;->activeProtocols:Lsun/security/ssl/ProtocolList;

    .line 447
    :cond_0
    iget-object v1, p0, Lsun/security/ssl/Handshaker;->activeProtocols:Lsun/security/ssl/ProtocolList;

    invoke-virtual {v1}, Lsun/security/ssl/ProtocolList;->collection()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 448
    iget-object v1, p0, Lsun/security/ssl/Handshaker;->activeProtocols:Lsun/security/ssl/ProtocolList;

    iget-object v1, v1, Lsun/security/ssl/ProtocolList;->max:Lsun/security/ssl/ProtocolVersion;

    iget v1, v1, Lsun/security/ssl/ProtocolVersion;->v:I

    sget-object v2, Lsun/security/ssl/ProtocolVersion;->NONE:Lsun/security/ssl/ProtocolVersion;

    iget v2, v2, Lsun/security/ssl/ProtocolVersion;->v:I

    if-ne v1, v2, :cond_2

    .line 449
    :cond_1
    new-instance v1, Ljavax/net/ssl/SSLHandshakeException;

    const-string/jumbo v2, "No appropriate protocol"

    invoke-direct {v1, v2}, Ljavax/net/ssl/SSLHandshakeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 452
    :cond_2
    iget-object v1, p0, Lsun/security/ssl/Handshaker;->activeCipherSuites:Lsun/security/ssl/CipherSuiteList;

    if-nez v1, :cond_3

    .line 453
    invoke-virtual {p0}, Lsun/security/ssl/Handshaker;->getActiveCipherSuites()Lsun/security/ssl/CipherSuiteList;

    move-result-object v1

    iput-object v1, p0, Lsun/security/ssl/Handshaker;->activeCipherSuites:Lsun/security/ssl/CipherSuiteList;

    .line 456
    :cond_3
    iget-object v1, p0, Lsun/security/ssl/Handshaker;->activeCipherSuites:Lsun/security/ssl/CipherSuiteList;

    invoke-virtual {v1}, Lsun/security/ssl/CipherSuiteList;->collection()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 457
    new-instance v1, Ljavax/net/ssl/SSLHandshakeException;

    const-string/jumbo v2, "No appropriate cipher suite"

    invoke-direct {v1, v2}, Ljavax/net/ssl/SSLHandshakeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 463
    :cond_4
    iget-boolean v1, p0, Lsun/security/ssl/Handshaker;->isInitialHandshake:Z

    if-nez v1, :cond_7

    .line 464
    iget-object v1, p0, Lsun/security/ssl/Handshaker;->activeProtocolVersion:Lsun/security/ssl/ProtocolVersion;

    iput-object v1, p0, Lsun/security/ssl/Handshaker;->protocolVersion:Lsun/security/ssl/ProtocolVersion;

    .line 469
    :goto_0
    if-eqz p1, :cond_5

    iget v1, p1, Lsun/security/ssl/ProtocolVersion;->v:I

    sget-object v2, Lsun/security/ssl/ProtocolVersion;->NONE:Lsun/security/ssl/ProtocolVersion;

    iget v2, v2, Lsun/security/ssl/ProtocolVersion;->v:I

    if-ne v1, v2, :cond_6

    .line 470
    :cond_5
    iget-object v1, p0, Lsun/security/ssl/Handshaker;->activeProtocols:Lsun/security/ssl/ProtocolList;

    iget-object p1, v1, Lsun/security/ssl/ProtocolList;->helloVersion:Lsun/security/ssl/ProtocolVersion;

    .line 478
    :cond_6
    invoke-virtual {p0}, Lsun/security/ssl/Handshaker;->getLocalSupportedSignAlgs()Ljava/util/Collection;

    move-result-object v1

    .line 477
    invoke-static {v1}, Lsun/security/ssl/SignatureAndHashAlgorithm;->getHashAlgorithmNames(Ljava/util/Collection;)Ljava/util/Set;

    move-result-object v0

    .line 479
    .local v0, "localSupportedHashAlgorithms":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    new-instance v2, Lsun/security/ssl/HandshakeHash;

    iget-boolean v1, p0, Lsun/security/ssl/Handshaker;->isClient:Z

    if-eqz v1, :cond_8

    const/4 v1, 0x0

    :goto_1
    iget-boolean v3, p0, Lsun/security/ssl/Handshaker;->needCertVerify:Z

    invoke-direct {v2, v1, v3, v0}, Lsun/security/ssl/HandshakeHash;-><init>(ZZLjava/util/Set;)V

    iput-object v2, p0, Lsun/security/ssl/Handshaker;->handshakeHash:Lsun/security/ssl/HandshakeHash;

    .line 483
    new-instance v1, Lsun/security/ssl/HandshakeInStream;

    iget-object v2, p0, Lsun/security/ssl/Handshaker;->handshakeHash:Lsun/security/ssl/HandshakeHash;

    invoke-direct {v1, v2}, Lsun/security/ssl/HandshakeInStream;-><init>(Lsun/security/ssl/HandshakeHash;)V

    iput-object v1, p0, Lsun/security/ssl/Handshaker;->input:Lsun/security/ssl/HandshakeInStream;

    .line 484
    iget-object v1, p0, Lsun/security/ssl/Handshaker;->conn:Lsun/security/ssl/SSLSocketImpl;

    if-eqz v1, :cond_9

    .line 485
    new-instance v1, Lsun/security/ssl/HandshakeOutStream;

    iget-object v2, p0, Lsun/security/ssl/Handshaker;->protocolVersion:Lsun/security/ssl/ProtocolVersion;

    .line 486
    iget-object v3, p0, Lsun/security/ssl/Handshaker;->handshakeHash:Lsun/security/ssl/HandshakeHash;

    iget-object v4, p0, Lsun/security/ssl/Handshaker;->conn:Lsun/security/ssl/SSLSocketImpl;

    .line 485
    invoke-direct {v1, v2, p1, v3, v4}, Lsun/security/ssl/HandshakeOutStream;-><init>(Lsun/security/ssl/ProtocolVersion;Lsun/security/ssl/ProtocolVersion;Lsun/security/ssl/HandshakeHash;Lsun/security/ssl/SSLSocketImpl;)V

    iput-object v1, p0, Lsun/security/ssl/Handshaker;->output:Lsun/security/ssl/HandshakeOutStream;

    .line 487
    iget-object v1, p0, Lsun/security/ssl/Handshaker;->conn:Lsun/security/ssl/SSLSocketImpl;

    invoke-virtual {v1}, Lsun/security/ssl/SSLSocketImpl;->getAppInputStream()Lsun/security/ssl/AppInputStream;

    move-result-object v1

    iget-object v1, v1, Lsun/security/ssl/AppInputStream;->r:Lsun/security/ssl/InputRecord;

    iget-object v2, p0, Lsun/security/ssl/Handshaker;->handshakeHash:Lsun/security/ssl/HandshakeHash;

    invoke-virtual {v1, v2}, Lsun/security/ssl/InputRecord;->setHandshakeHash(Lsun/security/ssl/HandshakeHash;)V

    .line 488
    iget-object v1, p0, Lsun/security/ssl/Handshaker;->conn:Lsun/security/ssl/SSLSocketImpl;

    invoke-virtual {v1}, Lsun/security/ssl/SSLSocketImpl;->getAppInputStream()Lsun/security/ssl/AppInputStream;

    move-result-object v1

    iget-object v1, v1, Lsun/security/ssl/AppInputStream;->r:Lsun/security/ssl/InputRecord;

    invoke-virtual {v1, p1}, Lsun/security/ssl/InputRecord;->setHelloVersion(Lsun/security/ssl/ProtocolVersion;)V

    .line 489
    iget-object v1, p0, Lsun/security/ssl/Handshaker;->conn:Lsun/security/ssl/SSLSocketImpl;

    invoke-virtual {v1}, Lsun/security/ssl/SSLSocketImpl;->getAppOutputStream()Lsun/security/ssl/AppOutputStream;

    move-result-object v1

    iget-object v1, v1, Lsun/security/ssl/AppOutputStream;->r:Lsun/security/ssl/OutputRecord;

    invoke-virtual {v1, p1}, Lsun/security/ssl/OutputRecord;->setHelloVersion(Lsun/security/ssl/ProtocolVersion;)V

    .line 499
    :goto_2
    const/4 v1, -0x1

    iput v1, p0, Lsun/security/ssl/Handshaker;->state:I

    .line 442
    return-void

    .line 466
    .end local v0    # "localSupportedHashAlgorithms":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_7
    iget-object v1, p0, Lsun/security/ssl/Handshaker;->activeProtocols:Lsun/security/ssl/ProtocolList;

    iget-object v1, v1, Lsun/security/ssl/ProtocolList;->max:Lsun/security/ssl/ProtocolVersion;

    iput-object v1, p0, Lsun/security/ssl/Handshaker;->protocolVersion:Lsun/security/ssl/ProtocolVersion;

    goto :goto_0

    .line 479
    .restart local v0    # "localSupportedHashAlgorithms":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_8
    const/4 v1, 0x1

    goto :goto_1

    .line 491
    :cond_9
    new-instance v1, Lsun/security/ssl/HandshakeOutStream;

    iget-object v2, p0, Lsun/security/ssl/Handshaker;->protocolVersion:Lsun/security/ssl/ProtocolVersion;

    .line 492
    iget-object v3, p0, Lsun/security/ssl/Handshaker;->handshakeHash:Lsun/security/ssl/HandshakeHash;

    iget-object v4, p0, Lsun/security/ssl/Handshaker;->engine:Lsun/security/ssl/SSLEngineImpl;

    .line 491
    invoke-direct {v1, v2, p1, v3, v4}, Lsun/security/ssl/HandshakeOutStream;-><init>(Lsun/security/ssl/ProtocolVersion;Lsun/security/ssl/ProtocolVersion;Lsun/security/ssl/HandshakeHash;Lsun/security/ssl/SSLEngineImpl;)V

    iput-object v1, p0, Lsun/security/ssl/Handshaker;->output:Lsun/security/ssl/HandshakeOutStream;

    .line 493
    iget-object v1, p0, Lsun/security/ssl/Handshaker;->engine:Lsun/security/ssl/SSLEngineImpl;

    iget-object v1, v1, Lsun/security/ssl/SSLEngineImpl;->inputRecord:Lsun/security/ssl/EngineInputRecord;

    iget-object v2, p0, Lsun/security/ssl/Handshaker;->handshakeHash:Lsun/security/ssl/HandshakeHash;

    invoke-virtual {v1, v2}, Lsun/security/ssl/InputRecord;->setHandshakeHash(Lsun/security/ssl/HandshakeHash;)V

    .line 494
    iget-object v1, p0, Lsun/security/ssl/Handshaker;->engine:Lsun/security/ssl/SSLEngineImpl;

    iget-object v1, v1, Lsun/security/ssl/SSLEngineImpl;->inputRecord:Lsun/security/ssl/EngineInputRecord;

    invoke-virtual {v1, p1}, Lsun/security/ssl/InputRecord;->setHelloVersion(Lsun/security/ssl/ProtocolVersion;)V

    .line 495
    iget-object v1, p0, Lsun/security/ssl/Handshaker;->engine:Lsun/security/ssl/SSLEngineImpl;

    iget-object v1, v1, Lsun/security/ssl/SSLEngineImpl;->outputRecord:Lsun/security/ssl/EngineOutputRecord;

    invoke-virtual {v1, p1}, Lsun/security/ssl/OutputRecord;->setHelloVersion(Lsun/security/ssl/ProtocolVersion;)V

    goto :goto_2
.end method

.method activated()Z
    .locals 2

    .prologue
    .line 881
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
    .param p1, "masterKey"    # Ljavax/crypto/SecretKey;

    .prologue
    .line 1158
    move-object/from16 v0, p0

    iget-object v2, v0, Lsun/security/ssl/Handshaker;->cipherSuite:Lsun/security/ssl/CipherSuite;

    iget-object v2, v2, Lsun/security/ssl/CipherSuite;->macAlg:Lsun/security/ssl/CipherSuite$MacAlg;

    iget v11, v2, Lsun/security/ssl/CipherSuite$MacAlg;->size:I

    .line 1159
    .local v11, "hashSize":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lsun/security/ssl/Handshaker;->cipherSuite:Lsun/security/ssl/CipherSuite;

    iget-boolean v0, v2, Lsun/security/ssl/CipherSuite;->exportable:Z

    move/from16 v18, v0

    .line 1160
    .local v18, "is_exportable":Z
    move-object/from16 v0, p0

    iget-object v2, v0, Lsun/security/ssl/Handshaker;->cipherSuite:Lsun/security/ssl/CipherSuite;

    iget-object v15, v2, Lsun/security/ssl/CipherSuite;->cipher:Lsun/security/ssl/CipherSuite$BulkCipher;

    .line 1161
    .local v15, "cipher":Lsun/security/ssl/CipherSuite$BulkCipher;
    if-eqz v18, :cond_1

    iget v9, v15, Lsun/security/ssl/CipherSuite$BulkCipher;->expandedKeySize:I

    .line 1167
    .local v9, "expandedKeySize":I
    :goto_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lsun/security/ssl/Handshaker;->protocolVersion:Lsun/security/ssl/ProtocolVersion;

    iget v2, v2, Lsun/security/ssl/ProtocolVersion;->v:I

    sget-object v3, Lsun/security/ssl/ProtocolVersion;->TLS12:Lsun/security/ssl/ProtocolVersion;

    iget v3, v3, Lsun/security/ssl/ProtocolVersion;->v:I

    if-lt v2, v3, :cond_2

    .line 1168
    const-string/jumbo v19, "SunTls12KeyMaterial"

    .line 1169
    .local v19, "keyMaterialAlg":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lsun/security/ssl/Handshaker;->cipherSuite:Lsun/security/ssl/CipherSuite;

    iget-object v0, v2, Lsun/security/ssl/CipherSuite;->prfAlg:Lsun/security/ssl/CipherSuite$PRF;

    move-object/from16 v22, v0

    .line 1175
    .local v22, "prf":Lsun/security/ssl/CipherSuite$PRF;
    :goto_1
    invoke-virtual/range {v22 .. v22}, Lsun/security/ssl/CipherSuite$PRF;->getPRFHashAlg()Ljava/lang/String;

    move-result-object v12

    .line 1176
    .local v12, "prfHashAlg":Ljava/lang/String;
    invoke-virtual/range {v22 .. v22}, Lsun/security/ssl/CipherSuite$PRF;->getPRFHashLength()I

    move-result v13

    .line 1177
    .local v13, "prfHashLength":I
    invoke-virtual/range {v22 .. v22}, Lsun/security/ssl/CipherSuite$PRF;->getPRFBlockSize()I

    move-result v14

    .line 1179
    .local v14, "prfBlockSize":I
    new-instance v1, Lsun/security/internal/spec/TlsKeyMaterialParameterSpec;

    .line 1180
    move-object/from16 v0, p0

    iget-object v2, v0, Lsun/security/ssl/Handshaker;->protocolVersion:Lsun/security/ssl/ProtocolVersion;

    iget-byte v3, v2, Lsun/security/ssl/ProtocolVersion;->major:B

    move-object/from16 v0, p0

    iget-object v2, v0, Lsun/security/ssl/Handshaker;->protocolVersion:Lsun/security/ssl/ProtocolVersion;

    iget-byte v4, v2, Lsun/security/ssl/ProtocolVersion;->minor:B

    .line 1181
    move-object/from16 v0, p0

    iget-object v2, v0, Lsun/security/ssl/Handshaker;->clnt_random:Lsun/security/ssl/RandomCookie;

    iget-object v5, v2, Lsun/security/ssl/RandomCookie;->random_bytes:[B

    move-object/from16 v0, p0

    iget-object v2, v0, Lsun/security/ssl/Handshaker;->svr_random:Lsun/security/ssl/RandomCookie;

    iget-object v6, v2, Lsun/security/ssl/RandomCookie;->random_bytes:[B

    .line 1182
    iget-object v7, v15, Lsun/security/ssl/CipherSuite$BulkCipher;->algorithm:Ljava/lang/String;

    iget v8, v15, Lsun/security/ssl/CipherSuite$BulkCipher;->keySize:I

    .line 1183
    iget v10, v15, Lsun/security/ssl/CipherSuite$BulkCipher;->ivSize:I

    move-object/from16 v2, p1

    .line 1179
    invoke-direct/range {v1 .. v14}, Lsun/security/internal/spec/TlsKeyMaterialParameterSpec;-><init>(Ljavax/crypto/SecretKey;II[B[BLjava/lang/String;IIIILjava/lang/String;II)V

    .line 1187
    .local v1, "spec":Lsun/security/internal/spec/TlsKeyMaterialParameterSpec;
    :try_start_0
    invoke-static/range {v19 .. v19}, Lsun/security/ssl/JsseJce;->getKeyGenerator(Ljava/lang/String;)Ljavax/crypto/KeyGenerator;

    move-result-object v21

    .line 1188
    .local v21, "kg":Ljavax/crypto/KeyGenerator;
    move-object/from16 v0, v21

    invoke-virtual {v0, v1}, Ljavax/crypto/KeyGenerator;->init(Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 1189
    invoke-virtual/range {v21 .. v21}, Ljavax/crypto/KeyGenerator;->generateKey()Ljavax/crypto/SecretKey;

    move-result-object v20

    check-cast v20, Lsun/security/internal/spec/TlsKeyMaterialSpec;

    .line 1191
    .local v20, "keySpec":Lsun/security/internal/spec/TlsKeyMaterialSpec;
    invoke-virtual/range {v20 .. v20}, Lsun/security/internal/spec/TlsKeyMaterialSpec;->getClientCipherKey()Ljavax/crypto/SecretKey;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lsun/security/ssl/Handshaker;->clntWriteKey:Ljavax/crypto/SecretKey;

    .line 1192
    invoke-virtual/range {v20 .. v20}, Lsun/security/internal/spec/TlsKeyMaterialSpec;->getServerCipherKey()Ljavax/crypto/SecretKey;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lsun/security/ssl/Handshaker;->svrWriteKey:Ljavax/crypto/SecretKey;

    .line 1196
    invoke-virtual/range {v20 .. v20}, Lsun/security/internal/spec/TlsKeyMaterialSpec;->getClientIv()Ljavax/crypto/spec/IvParameterSpec;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lsun/security/ssl/Handshaker;->clntWriteIV:Ljavax/crypto/spec/IvParameterSpec;

    .line 1197
    invoke-virtual/range {v20 .. v20}, Lsun/security/internal/spec/TlsKeyMaterialSpec;->getServerIv()Ljavax/crypto/spec/IvParameterSpec;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lsun/security/ssl/Handshaker;->svrWriteIV:Ljavax/crypto/spec/IvParameterSpec;

    .line 1199
    invoke-virtual/range {v20 .. v20}, Lsun/security/internal/spec/TlsKeyMaterialSpec;->getClientMacKey()Ljavax/crypto/SecretKey;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lsun/security/ssl/Handshaker;->clntMacSecret:Ljavax/crypto/SecretKey;

    .line 1200
    invoke-virtual/range {v20 .. v20}, Lsun/security/internal/spec/TlsKeyMaterialSpec;->getServerMacKey()Ljavax/crypto/SecretKey;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lsun/security/ssl/Handshaker;->svrMacSecret:Ljavax/crypto/SecretKey;
    :try_end_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1208
    sget-object v2, Lsun/security/ssl/Handshaker;->debug:Lsun/security/ssl/Debug;

    if-eqz v2, :cond_0

    const-string/jumbo v2, "keygen"

    invoke-static {v2}, Lsun/security/ssl/Debug;->isOn(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1209
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    monitor-enter v3

    .line 1210
    :try_start_1
    new-instance v16, Lsun/misc/HexDumpEncoder;

    invoke-direct/range {v16 .. v16}, Lsun/misc/HexDumpEncoder;-><init>()V

    .line 1212
    .local v16, "dump":Lsun/misc/HexDumpEncoder;
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string/jumbo v4, "CONNECTION KEYGEN:"

    invoke-virtual {v2, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1215
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string/jumbo v4, "Client Nonce:"

    invoke-virtual {v2, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1216
    move-object/from16 v0, p0

    iget-object v2, v0, Lsun/security/ssl/Handshaker;->clnt_random:Lsun/security/ssl/RandomCookie;

    iget-object v2, v2, Lsun/security/ssl/RandomCookie;->random_bytes:[B

    move-object/from16 v0, v16

    invoke-static {v0, v2}, Lsun/security/ssl/Handshaker;->printHex(Lsun/misc/HexDumpEncoder;[B)V

    .line 1217
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string/jumbo v4, "Server Nonce:"

    invoke-virtual {v2, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1218
    move-object/from16 v0, p0

    iget-object v2, v0, Lsun/security/ssl/Handshaker;->svr_random:Lsun/security/ssl/RandomCookie;

    iget-object v2, v2, Lsun/security/ssl/RandomCookie;->random_bytes:[B

    move-object/from16 v0, v16

    invoke-static {v0, v2}, Lsun/security/ssl/Handshaker;->printHex(Lsun/misc/HexDumpEncoder;[B)V

    .line 1219
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string/jumbo v4, "Master Secret:"

    invoke-virtual {v2, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1220
    invoke-interface/range {p1 .. p1}, Ljavax/crypto/SecretKey;->getEncoded()[B

    move-result-object v2

    move-object/from16 v0, v16

    invoke-static {v0, v2}, Lsun/security/ssl/Handshaker;->printHex(Lsun/misc/HexDumpEncoder;[B)V

    .line 1223
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string/jumbo v4, "Client MAC write Secret:"

    invoke-virtual {v2, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1224
    move-object/from16 v0, p0

    iget-object v2, v0, Lsun/security/ssl/Handshaker;->clntMacSecret:Ljavax/crypto/SecretKey;

    invoke-interface {v2}, Ljavax/crypto/SecretKey;->getEncoded()[B

    move-result-object v2

    move-object/from16 v0, v16

    invoke-static {v0, v2}, Lsun/security/ssl/Handshaker;->printHex(Lsun/misc/HexDumpEncoder;[B)V

    .line 1225
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string/jumbo v4, "Server MAC write Secret:"

    invoke-virtual {v2, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1226
    move-object/from16 v0, p0

    iget-object v2, v0, Lsun/security/ssl/Handshaker;->svrMacSecret:Ljavax/crypto/SecretKey;

    invoke-interface {v2}, Ljavax/crypto/SecretKey;->getEncoded()[B

    move-result-object v2

    move-object/from16 v0, v16

    invoke-static {v0, v2}, Lsun/security/ssl/Handshaker;->printHex(Lsun/misc/HexDumpEncoder;[B)V

    .line 1228
    move-object/from16 v0, p0

    iget-object v2, v0, Lsun/security/ssl/Handshaker;->clntWriteKey:Ljavax/crypto/SecretKey;

    if-eqz v2, :cond_3

    .line 1229
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string/jumbo v4, "Client write key:"

    invoke-virtual {v2, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1230
    move-object/from16 v0, p0

    iget-object v2, v0, Lsun/security/ssl/Handshaker;->clntWriteKey:Ljavax/crypto/SecretKey;

    invoke-interface {v2}, Ljavax/crypto/SecretKey;->getEncoded()[B

    move-result-object v2

    move-object/from16 v0, v16

    invoke-static {v0, v2}, Lsun/security/ssl/Handshaker;->printHex(Lsun/misc/HexDumpEncoder;[B)V

    .line 1231
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string/jumbo v4, "Server write key:"

    invoke-virtual {v2, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1232
    move-object/from16 v0, p0

    iget-object v2, v0, Lsun/security/ssl/Handshaker;->svrWriteKey:Ljavax/crypto/SecretKey;

    invoke-interface {v2}, Ljavax/crypto/SecretKey;->getEncoded()[B

    move-result-object v2

    move-object/from16 v0, v16

    invoke-static {v0, v2}, Lsun/security/ssl/Handshaker;->printHex(Lsun/misc/HexDumpEncoder;[B)V

    .line 1237
    :goto_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lsun/security/ssl/Handshaker;->clntWriteIV:Ljavax/crypto/spec/IvParameterSpec;

    if-eqz v2, :cond_4

    .line 1238
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string/jumbo v4, "Client write IV:"

    invoke-virtual {v2, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1239
    move-object/from16 v0, p0

    iget-object v2, v0, Lsun/security/ssl/Handshaker;->clntWriteIV:Ljavax/crypto/spec/IvParameterSpec;

    invoke-virtual {v2}, Ljavax/crypto/spec/IvParameterSpec;->getIV()[B

    move-result-object v2

    move-object/from16 v0, v16

    invoke-static {v0, v2}, Lsun/security/ssl/Handshaker;->printHex(Lsun/misc/HexDumpEncoder;[B)V

    .line 1240
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string/jumbo v4, "Server write IV:"

    invoke-virtual {v2, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1241
    move-object/from16 v0, p0

    iget-object v2, v0, Lsun/security/ssl/Handshaker;->svrWriteIV:Ljavax/crypto/spec/IvParameterSpec;

    invoke-virtual {v2}, Ljavax/crypto/spec/IvParameterSpec;->getIV()[B

    move-result-object v2

    move-object/from16 v0, v16

    invoke-static {v0, v2}, Lsun/security/ssl/Handshaker;->printHex(Lsun/misc/HexDumpEncoder;[B)V

    .line 1250
    :goto_3
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v2}, Ljava/io/PrintStream;->flush()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v3

    .line 1150
    .end local v16    # "dump":Lsun/misc/HexDumpEncoder;
    :cond_0
    return-void

    .line 1161
    .end local v1    # "spec":Lsun/security/internal/spec/TlsKeyMaterialParameterSpec;
    .end local v9    # "expandedKeySize":I
    .end local v12    # "prfHashAlg":Ljava/lang/String;
    .end local v13    # "prfHashLength":I
    .end local v14    # "prfBlockSize":I
    .end local v19    # "keyMaterialAlg":Ljava/lang/String;
    .end local v20    # "keySpec":Lsun/security/internal/spec/TlsKeyMaterialSpec;
    .end local v21    # "kg":Ljavax/crypto/KeyGenerator;
    .end local v22    # "prf":Lsun/security/ssl/CipherSuite$PRF;
    :cond_1
    const/4 v9, 0x0

    .restart local v9    # "expandedKeySize":I
    goto/16 :goto_0

    .line 1171
    :cond_2
    const-string/jumbo v19, "SunTlsKeyMaterial"

    .line 1172
    .restart local v19    # "keyMaterialAlg":Ljava/lang/String;
    sget-object v22, Lsun/security/ssl/CipherSuite$PRF;->P_NONE:Lsun/security/ssl/CipherSuite$PRF;

    .restart local v22    # "prf":Lsun/security/ssl/CipherSuite$PRF;
    goto/16 :goto_1

    .line 1201
    .restart local v1    # "spec":Lsun/security/internal/spec/TlsKeyMaterialParameterSpec;
    .restart local v12    # "prfHashAlg":Ljava/lang/String;
    .restart local v13    # "prfHashLength":I
    .restart local v14    # "prfBlockSize":I
    :catch_0
    move-exception v17

    .line 1202
    .local v17, "e":Ljava/security/GeneralSecurityException;
    new-instance v2, Ljava/security/ProviderException;

    move-object/from16 v0, v17

    invoke-direct {v2, v0}, Ljava/security/ProviderException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .line 1234
    .end local v17    # "e":Ljava/security/GeneralSecurityException;
    .restart local v16    # "dump":Lsun/misc/HexDumpEncoder;
    .restart local v20    # "keySpec":Lsun/security/internal/spec/TlsKeyMaterialSpec;
    .restart local v21    # "kg":Ljavax/crypto/KeyGenerator;
    :cond_3
    :try_start_2
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string/jumbo v4, "... no encryption keys used"

    invoke-virtual {v2, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2

    .line 1209
    .end local v16    # "dump":Lsun/misc/HexDumpEncoder;
    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2

    .line 1243
    .restart local v16    # "dump":Lsun/misc/HexDumpEncoder;
    :cond_4
    :try_start_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lsun/security/ssl/Handshaker;->protocolVersion:Lsun/security/ssl/ProtocolVersion;

    iget v2, v2, Lsun/security/ssl/ProtocolVersion;->v:I

    sget-object v4, Lsun/security/ssl/ProtocolVersion;->TLS11:Lsun/security/ssl/ProtocolVersion;

    iget v4, v4, Lsun/security/ssl/ProtocolVersion;->v:I

    if-lt v2, v4, :cond_5

    .line 1244
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    .line 1245
    const-string/jumbo v4, "... no IV derived for this protocol"

    .line 1244
    invoke-virtual {v2, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_3

    .line 1247
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
    .param p1, "preMasterSecret"    # Ljavax/crypto/SecretKey;
    .param p2, "version"    # Lsun/security/ssl/ProtocolVersion;

    .prologue
    .line 999
    invoke-direct {p0, p1, p2}, Lsun/security/ssl/Handshaker;->calculateMasterSecret(Ljavax/crypto/SecretKey;Lsun/security/ssl/ProtocolVersion;)Ljavax/crypto/SecretKey;

    move-result-object v0

    .line 1000
    .local v0, "master":Ljavax/crypto/SecretKey;
    iget-object v1, p0, Lsun/security/ssl/Handshaker;->session:Lsun/security/ssl/SSLSessionImpl;

    invoke-virtual {v1, v0}, Lsun/security/ssl/SSLSessionImpl;->setMasterSecret(Ljavax/crypto/SecretKey;)V

    .line 1001
    invoke-virtual {p0, v0}, Lsun/security/ssl/Handshaker;->calculateConnectionKeys(Ljavax/crypto/SecretKey;)V

    .line 998
    return-void
.end method

.method checkThrown()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLException;
        }
    .end annotation

    .prologue
    .line 1342
    iget-object v3, p0, Lsun/security/ssl/Handshaker;->thrownLock:Ljava/lang/Object;

    monitor-enter v3

    .line 1343
    :try_start_0
    iget-object v2, p0, Lsun/security/ssl/Handshaker;->thrown:Ljava/lang/Exception;

    if-eqz v2, :cond_6

    .line 1345
    iget-object v2, p0, Lsun/security/ssl/Handshaker;->thrown:Ljava/lang/Exception;

    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    .line 1347
    .local v1, "msg":Ljava/lang/String;
    if-nez v1, :cond_0

    .line 1348
    const-string/jumbo v1, "Delegated task threw Exception/Error"

    .line 1355
    :cond_0
    iget-object v0, p0, Lsun/security/ssl/Handshaker;->thrown:Ljava/lang/Exception;

    .line 1356
    .local v0, "e":Ljava/lang/Exception;
    const/4 v2, 0x0

    iput-object v2, p0, Lsun/security/ssl/Handshaker;->thrown:Ljava/lang/Exception;

    .line 1358
    instance-of v2, v0, Ljava/lang/RuntimeException;

    if-eqz v2, :cond_1

    .line 1360
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/Throwable;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v2

    .line 1359
    check-cast v2, Ljava/lang/RuntimeException;

    throw v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1342
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v1    # "msg":Ljava/lang/String;
    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2

    .line 1361
    .restart local v0    # "e":Ljava/lang/Exception;
    .restart local v1    # "msg":Ljava/lang/String;
    :cond_1
    :try_start_1
    instance-of v2, v0, Ljavax/net/ssl/SSLHandshakeException;

    if-eqz v2, :cond_2

    .line 1363
    new-instance v2, Ljavax/net/ssl/SSLHandshakeException;

    invoke-direct {v2, v1}, Ljavax/net/ssl/SSLHandshakeException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/Throwable;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v2

    .line 1362
    check-cast v2, Ljavax/net/ssl/SSLHandshakeException;

    throw v2

    .line 1364
    :cond_2
    instance-of v2, v0, Ljavax/net/ssl/SSLKeyException;

    if-eqz v2, :cond_3

    .line 1366
    new-instance v2, Ljavax/net/ssl/SSLKeyException;

    invoke-direct {v2, v1}, Ljavax/net/ssl/SSLKeyException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/Throwable;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v2

    .line 1365
    check-cast v2, Ljavax/net/ssl/SSLKeyException;

    throw v2

    .line 1367
    :cond_3
    instance-of v2, v0, Ljavax/net/ssl/SSLPeerUnverifiedException;

    if-eqz v2, :cond_4

    .line 1369
    new-instance v2, Ljavax/net/ssl/SSLPeerUnverifiedException;

    invoke-direct {v2, v1}, Ljavax/net/ssl/SSLPeerUnverifiedException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/Throwable;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v2

    .line 1368
    check-cast v2, Ljavax/net/ssl/SSLPeerUnverifiedException;

    throw v2

    .line 1370
    :cond_4
    instance-of v2, v0, Ljavax/net/ssl/SSLProtocolException;

    if-eqz v2, :cond_5

    .line 1372
    new-instance v2, Ljavax/net/ssl/SSLProtocolException;

    invoke-direct {v2, v1}, Ljavax/net/ssl/SSLProtocolException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/Throwable;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v2

    .line 1371
    check-cast v2, Ljavax/net/ssl/SSLProtocolException;

    throw v2

    .line 1379
    :cond_5
    new-instance v2, Ljavax/net/ssl/SSLException;

    invoke-direct {v2, v1}, Ljavax/net/ssl/SSLException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/Throwable;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v2

    .line 1378
    check-cast v2, Ljavax/net/ssl/SSLException;

    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .end local v0    # "e":Ljava/lang/Exception;
    .end local v1    # "msg":Ljava/lang/String;
    :cond_6
    monitor-exit v3

    .line 1341
    return-void
.end method

.method fatalSE(BLjava/lang/String;)V
    .locals 1
    .param p1, "b"    # B
    .param p2, "diagnostic"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 266
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lsun/security/ssl/Handshaker;->fatalSE(BLjava/lang/String;Ljava/lang/Throwable;)V

    .line 265
    return-void
.end method

.method fatalSE(BLjava/lang/String;Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "b"    # B
    .param p2, "diagnostic"    # Ljava/lang/String;
    .param p3, "cause"    # Ljava/lang/Throwable;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 275
    iget-object v0, p0, Lsun/security/ssl/Handshaker;->conn:Lsun/security/ssl/SSLSocketImpl;

    if-eqz v0, :cond_0

    .line 276
    iget-object v0, p0, Lsun/security/ssl/Handshaker;->conn:Lsun/security/ssl/SSLSocketImpl;

    invoke-virtual {v0, p1, p2, p3}, Lsun/security/ssl/SSLSocketImpl;->fatal(BLjava/lang/String;Ljava/lang/Throwable;)V

    .line 274
    :goto_0
    return-void

    .line 278
    :cond_0
    iget-object v0, p0, Lsun/security/ssl/Handshaker;->engine:Lsun/security/ssl/SSLEngineImpl;

    invoke-virtual {v0, p1, p2, p3}, Lsun/security/ssl/SSLEngineImpl;->fatal(BLjava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method fatalSE(BLjava/lang/Throwable;)V
    .locals 1
    .param p1, "b"    # B
    .param p2, "cause"    # Ljava/lang/Throwable;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 270
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p2}, Lsun/security/ssl/Handshaker;->fatalSE(BLjava/lang/String;Ljava/lang/Throwable;)V

    .line 269
    return-void
.end method

.method getAccSE()Ljava/security/AccessControlContext;
    .locals 1

    .prologue
    .line 344
    iget-object v0, p0, Lsun/security/ssl/Handshaker;->conn:Lsun/security/ssl/SSLSocketImpl;

    if-eqz v0, :cond_0

    .line 345
    iget-object v0, p0, Lsun/security/ssl/Handshaker;->conn:Lsun/security/ssl/SSLSocketImpl;

    invoke-virtual {v0}, Lsun/security/ssl/SSLSocketImpl;->getAcc()Ljava/security/AccessControlContext;

    move-result-object v0

    return-object v0

    .line 347
    :cond_0
    iget-object v0, p0, Lsun/security/ssl/Handshaker;->engine:Lsun/security/ssl/SSLEngineImpl;

    invoke-virtual {v0}, Lsun/security/ssl/SSLEngineImpl;->getAcc()Ljava/security/AccessControlContext;

    move-result-object v0

    return-object v0
.end method

.method getActiveCipherSuites()Lsun/security/ssl/CipherSuiteList;
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 567
    iget-object v3, p0, Lsun/security/ssl/Handshaker;->activeCipherSuites:Lsun/security/ssl/CipherSuiteList;

    if-nez v3, :cond_5

    .line 568
    iget-object v3, p0, Lsun/security/ssl/Handshaker;->activeProtocols:Lsun/security/ssl/ProtocolList;

    if-nez v3, :cond_0

    .line 569
    invoke-virtual {p0}, Lsun/security/ssl/Handshaker;->getActiveProtocols()Lsun/security/ssl/ProtocolList;

    move-result-object v3

    iput-object v3, p0, Lsun/security/ssl/Handshaker;->activeProtocols:Lsun/security/ssl/ProtocolList;

    .line 572
    :cond_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 573
    .local v2, "suites":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lsun/security/ssl/CipherSuite;>;"
    iget-object v3, p0, Lsun/security/ssl/Handshaker;->activeProtocols:Lsun/security/ssl/ProtocolList;

    invoke-virtual {v3}, Lsun/security/ssl/ProtocolList;->collection()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_4

    .line 574
    iget-object v3, p0, Lsun/security/ssl/Handshaker;->activeProtocols:Lsun/security/ssl/ProtocolList;

    iget-object v3, v3, Lsun/security/ssl/ProtocolList;->min:Lsun/security/ssl/ProtocolVersion;

    iget v3, v3, Lsun/security/ssl/ProtocolVersion;->v:I

    sget-object v4, Lsun/security/ssl/ProtocolVersion;->NONE:Lsun/security/ssl/ProtocolVersion;

    iget v4, v4, Lsun/security/ssl/ProtocolVersion;->v:I

    if-eq v3, v4, :cond_4

    .line 575
    iget-object v3, p0, Lsun/security/ssl/Handshaker;->enabledCipherSuites:Lsun/security/ssl/CipherSuiteList;

    invoke-virtual {v3}, Lsun/security/ssl/CipherSuiteList;->collection()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "suite$iterator":Ljava/util/Iterator;
    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lsun/security/ssl/CipherSuite;

    .line 576
    .local v0, "suite":Lsun/security/ssl/CipherSuite;
    iget v3, v0, Lsun/security/ssl/CipherSuite;->obsoleted:I

    iget-object v4, p0, Lsun/security/ssl/Handshaker;->activeProtocols:Lsun/security/ssl/ProtocolList;

    iget-object v4, v4, Lsun/security/ssl/ProtocolList;->min:Lsun/security/ssl/ProtocolVersion;

    iget v4, v4, Lsun/security/ssl/ProtocolVersion;->v:I

    if-le v3, v4, :cond_2

    .line 577
    iget v3, v0, Lsun/security/ssl/CipherSuite;->supported:I

    iget-object v4, p0, Lsun/security/ssl/Handshaker;->activeProtocols:Lsun/security/ssl/ProtocolList;

    iget-object v4, v4, Lsun/security/ssl/ProtocolList;->max:Lsun/security/ssl/ProtocolVersion;

    iget v4, v4, Lsun/security/ssl/ProtocolVersion;->v:I

    if-gt v3, v4, :cond_2

    .line 578
    iget-object v3, p0, Lsun/security/ssl/Handshaker;->algorithmConstraints:Ljava/security/AlgorithmConstraints;

    .line 579
    sget-object v4, Ljava/security/CryptoPrimitive;->KEY_AGREEMENT:Ljava/security/CryptoPrimitive;

    invoke-static {v4}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v4

    .line 580
    iget-object v5, v0, Lsun/security/ssl/CipherSuite;->name:Ljava/lang/String;

    .line 578
    invoke-interface {v3, v4, v5, v6}, Ljava/security/AlgorithmConstraints;->permits(Ljava/util/Set;Ljava/lang/String;Ljava/security/AlgorithmParameters;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 581
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 583
    :cond_2
    sget-object v3, Lsun/security/ssl/Handshaker;->debug:Lsun/security/ssl/Debug;

    if-eqz v3, :cond_1

    const-string/jumbo v3, "verbose"

    invoke-static {v3}, Lsun/security/ssl/Debug;->isOn(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 584
    iget v3, v0, Lsun/security/ssl/CipherSuite;->obsoleted:I

    iget-object v4, p0, Lsun/security/ssl/Handshaker;->activeProtocols:Lsun/security/ssl/ProtocolList;

    iget-object v4, v4, Lsun/security/ssl/ProtocolList;->min:Lsun/security/ssl/ProtocolVersion;

    iget v4, v4, Lsun/security/ssl/ProtocolVersion;->v:I

    if-gt v3, v4, :cond_3

    .line 585
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    .line 586
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Ignoring obsoleted cipher suite: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 585
    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_0

    .line 588
    :cond_3
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    .line 589
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Ignoring unsupported cipher suite: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 588
    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_0

    .line 594
    .end local v0    # "suite":Lsun/security/ssl/CipherSuite;
    .end local v1    # "suite$iterator":Ljava/util/Iterator;
    :cond_4
    new-instance v3, Lsun/security/ssl/CipherSuiteList;

    invoke-direct {v3, v2}, Lsun/security/ssl/CipherSuiteList;-><init>(Ljava/util/Collection;)V

    iput-object v3, p0, Lsun/security/ssl/Handshaker;->activeCipherSuites:Lsun/security/ssl/CipherSuiteList;

    .line 597
    .end local v2    # "suites":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lsun/security/ssl/CipherSuite;>;"
    :cond_5
    iget-object v3, p0, Lsun/security/ssl/Handshaker;->activeCipherSuites:Lsun/security/ssl/CipherSuiteList;

    return-object v3
.end method

.method getActiveProtocols()Lsun/security/ssl/ProtocolList;
    .locals 10

    .prologue
    const/4 v9, 0x0

    .line 616
    iget-object v6, p0, Lsun/security/ssl/Handshaker;->activeProtocols:Lsun/security/ssl/ProtocolList;

    if-nez v6, :cond_6

    .line 617
    new-instance v3, Ljava/util/ArrayList;

    const/4 v6, 0x4

    invoke-direct {v3, v6}, Ljava/util/ArrayList;-><init>(I)V

    .line 618
    .local v3, "protocols":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lsun/security/ssl/ProtocolVersion;>;"
    iget-object v6, p0, Lsun/security/ssl/Handshaker;->enabledProtocols:Lsun/security/ssl/ProtocolList;

    invoke-virtual {v6}, Lsun/security/ssl/ProtocolList;->collection()Ljava/util/Collection;

    move-result-object v6

    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "protocol$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lsun/security/ssl/ProtocolVersion;

    .line 619
    .local v1, "protocol":Lsun/security/ssl/ProtocolVersion;
    const/4 v0, 0x0

    .line 620
    .local v0, "found":Z
    iget-object v6, p0, Lsun/security/ssl/Handshaker;->enabledCipherSuites:Lsun/security/ssl/CipherSuiteList;

    invoke-virtual {v6}, Lsun/security/ssl/CipherSuiteList;->collection()Ljava/util/Collection;

    move-result-object v6

    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, "suite$iterator":Ljava/util/Iterator;
    :cond_1
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lsun/security/ssl/CipherSuite;

    .line 621
    .local v4, "suite":Lsun/security/ssl/CipherSuite;
    invoke-virtual {v4}, Lsun/security/ssl/CipherSuite;->isAvailable()Z

    move-result v6

    if-eqz v6, :cond_4

    iget v6, v4, Lsun/security/ssl/CipherSuite;->obsoleted:I

    iget v7, v1, Lsun/security/ssl/ProtocolVersion;->v:I

    if-le v6, v7, :cond_4

    .line 622
    iget v6, v4, Lsun/security/ssl/CipherSuite;->supported:I

    iget v7, v1, Lsun/security/ssl/ProtocolVersion;->v:I

    if-gt v6, v7, :cond_4

    .line 623
    iget-object v6, p0, Lsun/security/ssl/Handshaker;->algorithmConstraints:Ljava/security/AlgorithmConstraints;

    .line 624
    sget-object v7, Ljava/security/CryptoPrimitive;->KEY_AGREEMENT:Ljava/security/CryptoPrimitive;

    invoke-static {v7}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v7

    .line 625
    iget-object v8, v4, Lsun/security/ssl/CipherSuite;->name:Ljava/lang/String;

    .line 623
    invoke-interface {v6, v7, v8, v9}, Ljava/security/AlgorithmConstraints;->permits(Ljava/util/Set;Ljava/lang/String;Ljava/security/AlgorithmParameters;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 626
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 627
    const/4 v0, 0x1

    .line 640
    .end local v4    # "suite":Lsun/security/ssl/CipherSuite;
    :cond_2
    if-nez v0, :cond_0

    sget-object v6, Lsun/security/ssl/Handshaker;->debug:Lsun/security/ssl/Debug;

    if-eqz v6, :cond_0

    const-string/jumbo v6, "handshake"

    invoke-static {v6}, Lsun/security/ssl/Debug;->isOn(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 641
    sget-object v6, Ljava/lang/System;->out:Ljava/io/PrintStream;

    .line 642
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "No available cipher suite for "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 641
    invoke-virtual {v6, v7}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_0

    .line 629
    .restart local v4    # "suite":Lsun/security/ssl/CipherSuite;
    :cond_3
    sget-object v6, Lsun/security/ssl/Handshaker;->debug:Lsun/security/ssl/Debug;

    if-eqz v6, :cond_1

    const-string/jumbo v6, "verbose"

    invoke-static {v6}, Lsun/security/ssl/Debug;->isOn(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 630
    sget-object v6, Ljava/lang/System;->out:Ljava/io/PrintStream;

    .line 631
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Ignoring disabled cipher suite: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 632
    const-string/jumbo v8, " for "

    .line 631
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 630
    invoke-virtual {v6, v7}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 634
    :cond_4
    sget-object v6, Lsun/security/ssl/Handshaker;->debug:Lsun/security/ssl/Debug;

    if-eqz v6, :cond_1

    const-string/jumbo v6, "verbose"

    invoke-static {v6}, Lsun/security/ssl/Debug;->isOn(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 635
    sget-object v6, Ljava/lang/System;->out:Ljava/io/PrintStream;

    .line 636
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Ignoring unsupported cipher suite: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 637
    const-string/jumbo v8, " for "

    .line 636
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 635
    invoke-virtual {v6, v7}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 645
    .end local v0    # "found":Z
    .end local v1    # "protocol":Lsun/security/ssl/ProtocolVersion;
    .end local v4    # "suite":Lsun/security/ssl/CipherSuite;
    .end local v5    # "suite$iterator":Ljava/util/Iterator;
    :cond_5
    new-instance v6, Lsun/security/ssl/ProtocolList;

    invoke-direct {v6, v3}, Lsun/security/ssl/ProtocolList;-><init>(Ljava/util/ArrayList;)V

    iput-object v6, p0, Lsun/security/ssl/Handshaker;->activeProtocols:Lsun/security/ssl/ProtocolList;

    .line 648
    .end local v2    # "protocol$iterator":Ljava/util/Iterator;
    .end local v3    # "protocols":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lsun/security/ssl/ProtocolVersion;>;"
    :cond_6
    iget-object v6, p0, Lsun/security/ssl/Handshaker;->activeProtocols:Lsun/security/ssl/ProtocolList;

    return-object v6
.end method

.method getClientVerifyData()[B
    .locals 1

    .prologue
    .line 774
    iget-object v0, p0, Lsun/security/ssl/Handshaker;->clientVerifyData:[B

    return-object v0
.end method

.method getHostAddressSE()Ljava/lang/String;
    .locals 1

    .prologue
    .line 307
    iget-object v0, p0, Lsun/security/ssl/Handshaker;->conn:Lsun/security/ssl/SSLSocketImpl;

    if-eqz v0, :cond_0

    .line 308
    iget-object v0, p0, Lsun/security/ssl/Handshaker;->conn:Lsun/security/ssl/SSLSocketImpl;

    invoke-virtual {v0}, Lsun/security/ssl/BaseSSLSocketImpl;->getInetAddress()Ljava/net/InetAddress;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 315
    :cond_0
    iget-object v0, p0, Lsun/security/ssl/Handshaker;->engine:Lsun/security/ssl/SSLEngineImpl;

    invoke-virtual {v0}, Ljavax/net/ssl/SSLEngine;->getPeerHost()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method getHostSE()Ljava/lang/String;
    .locals 1

    .prologue
    .line 299
    iget-object v0, p0, Lsun/security/ssl/Handshaker;->conn:Lsun/security/ssl/SSLSocketImpl;

    if-eqz v0, :cond_0

    .line 300
    iget-object v0, p0, Lsun/security/ssl/Handshaker;->conn:Lsun/security/ssl/SSLSocketImpl;

    invoke-virtual {v0}, Lsun/security/ssl/SSLSocketImpl;->getHost()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 302
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

    .prologue
    .line 336
    iget-object v0, p0, Lsun/security/ssl/Handshaker;->conn:Lsun/security/ssl/SSLSocketImpl;

    if-eqz v0, :cond_0

    .line 337
    iget-object v0, p0, Lsun/security/ssl/Handshaker;->conn:Lsun/security/ssl/SSLSocketImpl;

    invoke-virtual {v0}, Lsun/security/ssl/BaseSSLSocketImpl;->getLocalPort()I

    move-result v0

    return v0

    .line 339
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

    .prologue
    .line 409
    iget-object v0, p0, Lsun/security/ssl/Handshaker;->localSupportedSignAlgs:Ljava/util/Collection;

    if-nez v0, :cond_0

    .line 412
    iget-object v0, p0, Lsun/security/ssl/Handshaker;->algorithmConstraints:Ljava/security/AlgorithmConstraints;

    .line 411
    invoke-static {v0}, Lsun/security/ssl/SignatureAndHashAlgorithm;->getSupportedAlgorithms(Ljava/security/AlgorithmConstraints;)Ljava/util/Collection;

    move-result-object v0

    .line 410
    iput-object v0, p0, Lsun/security/ssl/Handshaker;->localSupportedSignAlgs:Ljava/util/Collection;

    .line 415
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

    .prologue
    .line 425
    iget-object v0, p0, Lsun/security/ssl/Handshaker;->peerSupportedSignAlgs:Ljava/util/Collection;

    return-object v0
.end method

.method getPortSE()I
    .locals 1

    .prologue
    .line 328
    iget-object v0, p0, Lsun/security/ssl/Handshaker;->conn:Lsun/security/ssl/SSLSocketImpl;

    if-eqz v0, :cond_0

    .line 329
    iget-object v0, p0, Lsun/security/ssl/Handshaker;->conn:Lsun/security/ssl/SSLSocketImpl;

    invoke-virtual {v0}, Lsun/security/ssl/BaseSSLSocketImpl;->getPort()I

    move-result v0

    return v0

    .line 331
    :cond_0
    iget-object v0, p0, Lsun/security/ssl/Handshaker;->engine:Lsun/security/ssl/SSLEngineImpl;

    invoke-virtual {v0}, Ljavax/net/ssl/SSLEngine;->getPeerPort()I

    move-result v0

    return v0
.end method

.method getRawHostnameSE()Ljava/lang/String;
    .locals 1

    .prologue
    .line 291
    iget-object v0, p0, Lsun/security/ssl/Handshaker;->conn:Lsun/security/ssl/SSLSocketImpl;

    if-eqz v0, :cond_0

    .line 292
    iget-object v0, p0, Lsun/security/ssl/Handshaker;->conn:Lsun/security/ssl/SSLSocketImpl;

    invoke-virtual {v0}, Lsun/security/ssl/SSLSocketImpl;->getRawHostname()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 294
    :cond_0
    iget-object v0, p0, Lsun/security/ssl/Handshaker;->engine:Lsun/security/ssl/SSLEngineImpl;

    invoke-virtual {v0}, Ljavax/net/ssl/SSLEngine;->getPeerHost()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method getServerVerifyData()[B
    .locals 1

    .prologue
    .line 781
    iget-object v0, p0, Lsun/security/ssl/Handshaker;->serverVerifyData:[B

    return-object v0
.end method

.method getSession()Lsun/security/ssl/SSLSessionImpl;
    .locals 1

    .prologue
    .line 749
    iget-object v0, p0, Lsun/security/ssl/Handshaker;->session:Lsun/security/ssl/SSLSessionImpl;

    return-object v0
.end method

.method getTask()Lsun/security/ssl/Handshaker$DelegatedTask;
    .locals 1

    .prologue
    .line 1318
    iget-boolean v0, p0, Lsun/security/ssl/Handshaker;->taskDelegated:Z

    if-nez v0, :cond_0

    .line 1319
    const/4 v0, 0x1

    iput-boolean v0, p0, Lsun/security/ssl/Handshaker;->taskDelegated:Z

    .line 1320
    iget-object v0, p0, Lsun/security/ssl/Handshaker;->delegatedTask:Lsun/security/ssl/Handshaker$DelegatedTask;

    return-object v0

    .line 1322
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

    .prologue
    .line 739
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

    .prologue
    .line 320
    iget-object v0, p0, Lsun/security/ssl/Handshaker;->conn:Lsun/security/ssl/SSLSocketImpl;

    if-eqz v0, :cond_0

    .line 321
    iget-object v0, p0, Lsun/security/ssl/Handshaker;->conn:Lsun/security/ssl/SSLSocketImpl;

    invoke-virtual {v0}, Lsun/security/ssl/BaseSSLSocketImpl;->getInetAddress()Ljava/net/InetAddress;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/InetAddress;->isLoopbackAddress()Z

    move-result v0

    return v0

    .line 323
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method isNegotiable(Lsun/security/ssl/CipherSuite;)Z
    .locals 1
    .param p1, "s"    # Lsun/security/ssl/CipherSuite;

    .prologue
    .line 517
    iget-object v0, p0, Lsun/security/ssl/Handshaker;->activeCipherSuites:Lsun/security/ssl/CipherSuiteList;

    if-nez v0, :cond_0

    .line 518
    invoke-virtual {p0}, Lsun/security/ssl/Handshaker;->getActiveCipherSuites()Lsun/security/ssl/CipherSuiteList;

    move-result-object v0

    iput-object v0, p0, Lsun/security/ssl/Handshaker;->activeCipherSuites:Lsun/security/ssl/CipherSuiteList;

    .line 521
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
    .param p1, "protocolVersion"    # Lsun/security/ssl/ProtocolVersion;

    .prologue
    .line 528
    iget-object v0, p0, Lsun/security/ssl/Handshaker;->activeProtocols:Lsun/security/ssl/ProtocolList;

    if-nez v0, :cond_0

    .line 529
    invoke-virtual {p0}, Lsun/security/ssl/Handshaker;->getActiveProtocols()Lsun/security/ssl/ProtocolList;

    move-result-object v0

    iput-object v0, p0, Lsun/security/ssl/Handshaker;->activeProtocols:Lsun/security/ssl/ProtocolList;

    .line 532
    :cond_0
    iget-object v0, p0, Lsun/security/ssl/Handshaker;->activeProtocols:Lsun/security/ssl/ProtocolList;

    invoke-virtual {v0, p1}, Lsun/security/ssl/ProtocolList;->contains(Lsun/security/ssl/ProtocolVersion;)Z

    move-result v0

    return v0
.end method

.method isSecureRenegotiation()Z
    .locals 1

    .prologue
    .line 767
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

    .prologue
    .line 899
    iget v1, p0, Lsun/security/ssl/Handshaker;->state:I

    if-ltz v1, :cond_0

    .line 900
    return-void

    .line 903
    :cond_0
    invoke-virtual {p0}, Lsun/security/ssl/Handshaker;->getKickstartMessage()Lsun/security/ssl/HandshakeMessage;

    move-result-object v0

    .line 905
    .local v0, "m":Lsun/security/ssl/HandshakeMessage;
    sget-object v1, Lsun/security/ssl/Handshaker;->debug:Lsun/security/ssl/Debug;

    if-eqz v1, :cond_1

    const-string/jumbo v1, "handshake"

    invoke-static {v1}, Lsun/security/ssl/Debug;->isOn(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 906
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v0, v1}, Lsun/security/ssl/HandshakeMessage;->print(Ljava/io/PrintStream;)V

    .line 908
    :cond_1
    iget-object v1, p0, Lsun/security/ssl/Handshaker;->output:Lsun/security/ssl/HandshakeOutStream;

    invoke-virtual {v0, v1}, Lsun/security/ssl/HandshakeMessage;->write(Lsun/security/ssl/HandshakeOutStream;)V

    .line 909
    iget-object v1, p0, Lsun/security/ssl/Handshaker;->output:Lsun/security/ssl/HandshakeOutStream;

    invoke-virtual {v1}, Lsun/security/ssl/HandshakeOutStream;->flush()V

    .line 911
    invoke-virtual {v0}, Lsun/security/ssl/HandshakeMessage;->messageType()I

    move-result v1

    iput v1, p0, Lsun/security/ssl/Handshaker;->state:I

    .line 898
    return-void
.end method

.method newReadCipher()Lsun/security/ssl/CipherBox;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    const/4 v7, 0x0

    .line 666
    iget-object v1, p0, Lsun/security/ssl/Handshaker;->cipherSuite:Lsun/security/ssl/CipherSuite;

    iget-object v0, v1, Lsun/security/ssl/CipherSuite;->cipher:Lsun/security/ssl/CipherSuite$BulkCipher;

    .line 668
    .local v0, "cipher":Lsun/security/ssl/CipherSuite$BulkCipher;
    iget-boolean v1, p0, Lsun/security/ssl/Handshaker;->isClient:Z

    if-eqz v1, :cond_0

    .line 669
    iget-object v1, p0, Lsun/security/ssl/Handshaker;->protocolVersion:Lsun/security/ssl/ProtocolVersion;

    iget-object v2, p0, Lsun/security/ssl/Handshaker;->svrWriteKey:Ljavax/crypto/SecretKey;

    iget-object v3, p0, Lsun/security/ssl/Handshaker;->svrWriteIV:Ljavax/crypto/spec/IvParameterSpec;

    .line 670
    iget-object v4, p0, Lsun/security/ssl/Handshaker;->sslContext:Lsun/security/ssl/SSLContextImpl;

    invoke-virtual {v4}, Lsun/security/ssl/SSLContextImpl;->getSecureRandom()Ljava/security/SecureRandom;

    move-result-object v4

    .line 669
    invoke-virtual/range {v0 .. v5}, Lsun/security/ssl/CipherSuite$BulkCipher;->newCipher(Lsun/security/ssl/ProtocolVersion;Ljavax/crypto/SecretKey;Ljavax/crypto/spec/IvParameterSpec;Ljava/security/SecureRandom;Z)Lsun/security/ssl/CipherBox;

    move-result-object v6

    .line 671
    .local v6, "box":Lsun/security/ssl/CipherBox;
    iput-object v7, p0, Lsun/security/ssl/Handshaker;->svrWriteKey:Ljavax/crypto/SecretKey;

    .line 672
    iput-object v7, p0, Lsun/security/ssl/Handshaker;->svrWriteIV:Ljavax/crypto/spec/IvParameterSpec;

    .line 679
    :goto_0
    return-object v6

    .line 674
    .end local v6    # "box":Lsun/security/ssl/CipherBox;
    :cond_0
    iget-object v1, p0, Lsun/security/ssl/Handshaker;->protocolVersion:Lsun/security/ssl/ProtocolVersion;

    iget-object v2, p0, Lsun/security/ssl/Handshaker;->clntWriteKey:Ljavax/crypto/SecretKey;

    iget-object v3, p0, Lsun/security/ssl/Handshaker;->clntWriteIV:Ljavax/crypto/spec/IvParameterSpec;

    .line 675
    iget-object v4, p0, Lsun/security/ssl/Handshaker;->sslContext:Lsun/security/ssl/SSLContextImpl;

    invoke-virtual {v4}, Lsun/security/ssl/SSLContextImpl;->getSecureRandom()Ljava/security/SecureRandom;

    move-result-object v4

    .line 674
    invoke-virtual/range {v0 .. v5}, Lsun/security/ssl/CipherSuite$BulkCipher;->newCipher(Lsun/security/ssl/ProtocolVersion;Ljavax/crypto/SecretKey;Ljavax/crypto/spec/IvParameterSpec;Ljava/security/SecureRandom;Z)Lsun/security/ssl/CipherBox;

    move-result-object v6

    .line 676
    .restart local v6    # "box":Lsun/security/ssl/CipherBox;
    iput-object v7, p0, Lsun/security/ssl/Handshaker;->clntWriteKey:Ljavax/crypto/SecretKey;

    .line 677
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

    .prologue
    const/4 v4, 0x0

    .line 706
    iget-object v2, p0, Lsun/security/ssl/Handshaker;->cipherSuite:Lsun/security/ssl/CipherSuite;

    iget-object v1, v2, Lsun/security/ssl/CipherSuite;->macAlg:Lsun/security/ssl/CipherSuite$MacAlg;

    .line 708
    .local v1, "macAlg":Lsun/security/ssl/CipherSuite$MacAlg;
    iget-boolean v2, p0, Lsun/security/ssl/Handshaker;->isClient:Z

    if-eqz v2, :cond_0

    .line 709
    iget-object v2, p0, Lsun/security/ssl/Handshaker;->protocolVersion:Lsun/security/ssl/ProtocolVersion;

    iget-object v3, p0, Lsun/security/ssl/Handshaker;->svrMacSecret:Ljavax/crypto/SecretKey;

    invoke-virtual {v1, v2, v3}, Lsun/security/ssl/CipherSuite$MacAlg;->newMac(Lsun/security/ssl/ProtocolVersion;Ljavax/crypto/SecretKey;)Lsun/security/ssl/MAC;

    move-result-object v0

    .line 710
    .local v0, "mac":Lsun/security/ssl/MAC;
    iput-object v4, p0, Lsun/security/ssl/Handshaker;->svrMacSecret:Ljavax/crypto/SecretKey;

    .line 715
    :goto_0
    return-object v0

    .line 712
    .end local v0    # "mac":Lsun/security/ssl/MAC;
    :cond_0
    iget-object v2, p0, Lsun/security/ssl/Handshaker;->protocolVersion:Lsun/security/ssl/ProtocolVersion;

    iget-object v3, p0, Lsun/security/ssl/Handshaker;->clntMacSecret:Ljavax/crypto/SecretKey;

    invoke-virtual {v1, v2, v3}, Lsun/security/ssl/CipherSuite$MacAlg;->newMac(Lsun/security/ssl/ProtocolVersion;Ljavax/crypto/SecretKey;)Lsun/security/ssl/MAC;

    move-result-object v0

    .line 713
    .restart local v0    # "mac":Lsun/security/ssl/MAC;
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

    .prologue
    const/4 v5, 0x1

    const/4 v7, 0x0

    .line 686
    iget-object v1, p0, Lsun/security/ssl/Handshaker;->cipherSuite:Lsun/security/ssl/CipherSuite;

    iget-object v0, v1, Lsun/security/ssl/CipherSuite;->cipher:Lsun/security/ssl/CipherSuite$BulkCipher;

    .line 688
    .local v0, "cipher":Lsun/security/ssl/CipherSuite$BulkCipher;
    iget-boolean v1, p0, Lsun/security/ssl/Handshaker;->isClient:Z

    if-eqz v1, :cond_0

    .line 689
    iget-object v1, p0, Lsun/security/ssl/Handshaker;->protocolVersion:Lsun/security/ssl/ProtocolVersion;

    iget-object v2, p0, Lsun/security/ssl/Handshaker;->clntWriteKey:Ljavax/crypto/SecretKey;

    iget-object v3, p0, Lsun/security/ssl/Handshaker;->clntWriteIV:Ljavax/crypto/spec/IvParameterSpec;

    .line 690
    iget-object v4, p0, Lsun/security/ssl/Handshaker;->sslContext:Lsun/security/ssl/SSLContextImpl;

    invoke-virtual {v4}, Lsun/security/ssl/SSLContextImpl;->getSecureRandom()Ljava/security/SecureRandom;

    move-result-object v4

    .line 689
    invoke-virtual/range {v0 .. v5}, Lsun/security/ssl/CipherSuite$BulkCipher;->newCipher(Lsun/security/ssl/ProtocolVersion;Ljavax/crypto/SecretKey;Ljavax/crypto/spec/IvParameterSpec;Ljava/security/SecureRandom;Z)Lsun/security/ssl/CipherBox;

    move-result-object v6

    .line 691
    .local v6, "box":Lsun/security/ssl/CipherBox;
    iput-object v7, p0, Lsun/security/ssl/Handshaker;->clntWriteKey:Ljavax/crypto/SecretKey;

    .line 692
    iput-object v7, p0, Lsun/security/ssl/Handshaker;->clntWriteIV:Ljavax/crypto/spec/IvParameterSpec;

    .line 699
    :goto_0
    return-object v6

    .line 694
    .end local v6    # "box":Lsun/security/ssl/CipherBox;
    :cond_0
    iget-object v1, p0, Lsun/security/ssl/Handshaker;->protocolVersion:Lsun/security/ssl/ProtocolVersion;

    iget-object v2, p0, Lsun/security/ssl/Handshaker;->svrWriteKey:Ljavax/crypto/SecretKey;

    iget-object v3, p0, Lsun/security/ssl/Handshaker;->svrWriteIV:Ljavax/crypto/spec/IvParameterSpec;

    .line 695
    iget-object v4, p0, Lsun/security/ssl/Handshaker;->sslContext:Lsun/security/ssl/SSLContextImpl;

    invoke-virtual {v4}, Lsun/security/ssl/SSLContextImpl;->getSecureRandom()Ljava/security/SecureRandom;

    move-result-object v4

    .line 694
    invoke-virtual/range {v0 .. v5}, Lsun/security/ssl/CipherSuite$BulkCipher;->newCipher(Lsun/security/ssl/ProtocolVersion;Ljavax/crypto/SecretKey;Ljavax/crypto/spec/IvParameterSpec;Ljava/security/SecureRandom;Z)Lsun/security/ssl/CipherBox;

    move-result-object v6

    .line 696
    .restart local v6    # "box":Lsun/security/ssl/CipherBox;
    iput-object v7, p0, Lsun/security/ssl/Handshaker;->svrWriteKey:Ljavax/crypto/SecretKey;

    .line 697
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

    .prologue
    const/4 v4, 0x0

    .line 722
    iget-object v2, p0, Lsun/security/ssl/Handshaker;->cipherSuite:Lsun/security/ssl/CipherSuite;

    iget-object v1, v2, Lsun/security/ssl/CipherSuite;->macAlg:Lsun/security/ssl/CipherSuite$MacAlg;

    .line 724
    .local v1, "macAlg":Lsun/security/ssl/CipherSuite$MacAlg;
    iget-boolean v2, p0, Lsun/security/ssl/Handshaker;->isClient:Z

    if-eqz v2, :cond_0

    .line 725
    iget-object v2, p0, Lsun/security/ssl/Handshaker;->protocolVersion:Lsun/security/ssl/ProtocolVersion;

    iget-object v3, p0, Lsun/security/ssl/Handshaker;->clntMacSecret:Ljavax/crypto/SecretKey;

    invoke-virtual {v1, v2, v3}, Lsun/security/ssl/CipherSuite$MacAlg;->newMac(Lsun/security/ssl/ProtocolVersion;Ljavax/crypto/SecretKey;)Lsun/security/ssl/MAC;

    move-result-object v0

    .line 726
    .local v0, "mac":Lsun/security/ssl/MAC;
    iput-object v4, p0, Lsun/security/ssl/Handshaker;->clntMacSecret:Ljavax/crypto/SecretKey;

    .line 731
    :goto_0
    return-object v0

    .line 728
    .end local v0    # "mac":Lsun/security/ssl/MAC;
    :cond_0
    iget-object v2, p0, Lsun/security/ssl/Handshaker;->protocolVersion:Lsun/security/ssl/ProtocolVersion;

    iget-object v3, p0, Lsun/security/ssl/Handshaker;->svrMacSecret:Ljavax/crypto/SecretKey;

    invoke-virtual {v1, v2, v3}, Lsun/security/ssl/CipherSuite$MacAlg;->newMac(Lsun/security/ssl/ProtocolVersion;Ljavax/crypto/SecretKey;)Lsun/security/ssl/MAC;

    move-result-object v0

    .line 729
    .restart local v0    # "mac":Lsun/security/ssl/MAC;
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

    .prologue
    const/4 v4, 0x4

    .line 828
    :goto_0
    iget-object v2, p0, Lsun/security/ssl/Handshaker;->input:Lsun/security/ssl/HandshakeInStream;

    invoke-virtual {v2}, Lsun/security/ssl/HandshakeInStream;->available()I

    move-result v2

    if-lt v2, v4, :cond_2

    .line 837
    iget-object v2, p0, Lsun/security/ssl/Handshaker;->input:Lsun/security/ssl/HandshakeInStream;

    invoke-virtual {v2, v4}, Lsun/security/ssl/HandshakeInStream;->mark(I)V

    .line 839
    iget-object v2, p0, Lsun/security/ssl/Handshaker;->input:Lsun/security/ssl/HandshakeInStream;

    invoke-virtual {v2}, Lsun/security/ssl/HandshakeInStream;->getInt8()I

    move-result v2

    int-to-byte v1, v2

    .line 840
    .local v1, "messageType":B
    iget-object v2, p0, Lsun/security/ssl/Handshaker;->input:Lsun/security/ssl/HandshakeInStream;

    invoke-virtual {v2}, Lsun/security/ssl/HandshakeInStream;->getInt24()I

    move-result v0

    .line 842
    .local v0, "messageLen":I
    iget-object v2, p0, Lsun/security/ssl/Handshaker;->input:Lsun/security/ssl/HandshakeInStream;

    invoke-virtual {v2}, Lsun/security/ssl/HandshakeInStream;->available()I

    move-result v2

    if-ge v2, v0, :cond_0

    .line 843
    iget-object v2, p0, Lsun/security/ssl/Handshaker;->input:Lsun/security/ssl/HandshakeInStream;

    invoke-virtual {v2}, Lsun/security/ssl/HandshakeInStream;->reset()V

    .line 844
    return-void

    .line 862
    :cond_0
    if-nez v1, :cond_1

    .line 863
    iget-object v2, p0, Lsun/security/ssl/Handshaker;->input:Lsun/security/ssl/HandshakeInStream;

    invoke-virtual {v2}, Lsun/security/ssl/HandshakeInStream;->reset()V

    .line 864
    invoke-virtual {p0, v1, v0}, Lsun/security/ssl/Handshaker;->processMessage(BI)V

    .line 865
    iget-object v2, p0, Lsun/security/ssl/Handshaker;->input:Lsun/security/ssl/HandshakeInStream;

    add-int/lit8 v3, v0, 0x4

    invoke-virtual {v2, v3}, Lsun/security/ssl/HandshakeInStream;->ignore(I)V

    goto :goto_0

    .line 867
    :cond_1
    iget-object v2, p0, Lsun/security/ssl/Handshaker;->input:Lsun/security/ssl/HandshakeInStream;

    invoke-virtual {v2, v0}, Lsun/security/ssl/HandshakeInStream;->mark(I)V

    .line 868
    invoke-virtual {p0, v1, v0}, Lsun/security/ssl/Handshaker;->processMessage(BI)V

    .line 869
    iget-object v2, p0, Lsun/security/ssl/Handshaker;->input:Lsun/security/ssl/HandshakeInStream;

    invoke-virtual {v2}, Lsun/security/ssl/HandshakeInStream;->digestNow()V

    goto :goto_0

    .line 824
    .end local v0    # "messageLen":I
    .end local v1    # "messageType":B
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
    .param p1, "r"    # Lsun/security/ssl/InputRecord;
    .param p2, "expectingFinished"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 791
    invoke-virtual {p0}, Lsun/security/ssl/Handshaker;->checkThrown()V

    .line 797
    iget-object v0, p0, Lsun/security/ssl/Handshaker;->input:Lsun/security/ssl/HandshakeInStream;

    invoke-virtual {v0, p1}, Lsun/security/ssl/HandshakeInStream;->incomingRecord(Lsun/security/ssl/InputRecord;)V

    .line 803
    iget-object v0, p0, Lsun/security/ssl/Handshaker;->conn:Lsun/security/ssl/SSLSocketImpl;

    if-nez v0, :cond_0

    if-eqz p2, :cond_1

    .line 804
    :cond_0
    invoke-virtual {p0}, Lsun/security/ssl/Handshaker;->processLoop()V

    .line 789
    :goto_0
    return-void

    .line 806
    :cond_1
    new-instance v0, Lsun/security/ssl/Handshaker$1;

    invoke-direct {v0, p0}, Lsun/security/ssl/Handshaker$1;-><init>(Lsun/security/ssl/Handshaker;)V

    invoke-direct {p0, v0}, Lsun/security/ssl/Handshaker;->delegateTask(Ljava/security/PrivilegedExceptionAction;)V

    goto :goto_0
.end method

.method selectProtocolVersion(Lsun/security/ssl/ProtocolVersion;)Lsun/security/ssl/ProtocolVersion;
    .locals 1
    .param p1, "protocolVersion"    # Lsun/security/ssl/ProtocolVersion;

    .prologue
    .line 543
    iget-object v0, p0, Lsun/security/ssl/Handshaker;->activeProtocols:Lsun/security/ssl/ProtocolList;

    if-nez v0, :cond_0

    .line 544
    invoke-virtual {p0}, Lsun/security/ssl/Handshaker;->getActiveProtocols()Lsun/security/ssl/ProtocolList;

    move-result-object v0

    iput-object v0, p0, Lsun/security/ssl/Handshaker;->activeProtocols:Lsun/security/ssl/ProtocolList;

    .line 547
    :cond_0
    iget-object v0, p0, Lsun/security/ssl/Handshaker;->activeProtocols:Lsun/security/ssl/ProtocolList;

    invoke-virtual {v0, p1}, Lsun/security/ssl/ProtocolList;->selectProtocolVersion(Lsun/security/ssl/ProtocolVersion;)Lsun/security/ssl/ProtocolVersion;

    move-result-object v0

    return-object v0
.end method

.method sendChangeCipherSpec(Lsun/security/ssl/HandshakeMessage$Finished;Z)V
    .locals 3
    .param p1, "mesg"    # Lsun/security/ssl/HandshakeMessage$Finished;
    .param p2, "lastMessage"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v2, 0x14

    .line 941
    iget-object v1, p0, Lsun/security/ssl/Handshaker;->output:Lsun/security/ssl/HandshakeOutStream;

    invoke-virtual {v1}, Lsun/security/ssl/HandshakeOutStream;->flush()V

    .line 954
    iget-object v1, p0, Lsun/security/ssl/Handshaker;->conn:Lsun/security/ssl/SSLSocketImpl;

    if-eqz v1, :cond_1

    .line 955
    new-instance v0, Lsun/security/ssl/OutputRecord;

    invoke-direct {v0, v2}, Lsun/security/ssl/OutputRecord;-><init>(B)V

    .line 960
    .local v0, "r":Lsun/security/ssl/OutputRecord;
    :goto_0
    iget-object v1, p0, Lsun/security/ssl/Handshaker;->protocolVersion:Lsun/security/ssl/ProtocolVersion;

    invoke-virtual {v0, v1}, Lsun/security/ssl/OutputRecord;->setVersion(Lsun/security/ssl/ProtocolVersion;)V

    .line 961
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 963
    iget-object v1, p0, Lsun/security/ssl/Handshaker;->conn:Lsun/security/ssl/SSLSocketImpl;

    if-eqz v1, :cond_2

    .line 964
    iget-object v1, p0, Lsun/security/ssl/Handshaker;->conn:Lsun/security/ssl/SSLSocketImpl;

    iget-object v1, v1, Lsun/security/ssl/SSLSocketImpl;->writeLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 966
    :try_start_0
    iget-object v1, p0, Lsun/security/ssl/Handshaker;->conn:Lsun/security/ssl/SSLSocketImpl;

    invoke-virtual {v1, v0}, Lsun/security/ssl/SSLSocketImpl;->writeRecord(Lsun/security/ssl/OutputRecord;)V

    .line 967
    iget-object v1, p0, Lsun/security/ssl/Handshaker;->conn:Lsun/security/ssl/SSLSocketImpl;

    invoke-virtual {v1}, Lsun/security/ssl/SSLSocketImpl;->changeWriteCiphers()V

    .line 968
    sget-object v1, Lsun/security/ssl/Handshaker;->debug:Lsun/security/ssl/Debug;

    if-eqz v1, :cond_0

    const-string/jumbo v1, "handshake"

    invoke-static {v1}, Lsun/security/ssl/Debug;->isOn(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 969
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {p1, v1}, Lsun/security/ssl/HandshakeMessage$Finished;->print(Ljava/io/PrintStream;)V

    .line 971
    :cond_0
    iget-object v1, p0, Lsun/security/ssl/Handshaker;->output:Lsun/security/ssl/HandshakeOutStream;

    invoke-virtual {p1, v1}, Lsun/security/ssl/HandshakeMessage;->write(Lsun/security/ssl/HandshakeOutStream;)V

    .line 972
    iget-object v1, p0, Lsun/security/ssl/Handshaker;->output:Lsun/security/ssl/HandshakeOutStream;

    invoke-virtual {v1}, Lsun/security/ssl/HandshakeOutStream;->flush()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 974
    iget-object v1, p0, Lsun/security/ssl/Handshaker;->conn:Lsun/security/ssl/SSLSocketImpl;

    iget-object v1, v1, Lsun/security/ssl/SSLSocketImpl;->writeLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 939
    .end local v0    # "r":Lsun/security/ssl/OutputRecord;
    :goto_1
    return-void

    .line 957
    :cond_1
    new-instance v0, Lsun/security/ssl/EngineOutputRecord;

    iget-object v1, p0, Lsun/security/ssl/Handshaker;->engine:Lsun/security/ssl/SSLEngineImpl;

    invoke-direct {v0, v2, v1}, Lsun/security/ssl/EngineOutputRecord;-><init>(BLsun/security/ssl/SSLEngineImpl;)V

    .restart local v0    # "r":Lsun/security/ssl/OutputRecord;
    goto :goto_0

    .line 973
    :catchall_0
    move-exception v1

    .line 974
    iget-object v2, p0, Lsun/security/ssl/Handshaker;->conn:Lsun/security/ssl/SSLSocketImpl;

    iget-object v2, v2, Lsun/security/ssl/SSLSocketImpl;->writeLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 973
    throw v1

    .line 977
    :cond_2
    iget-object v1, p0, Lsun/security/ssl/Handshaker;->engine:Lsun/security/ssl/SSLEngineImpl;

    iget-object v2, v1, Lsun/security/ssl/SSLEngineImpl;->writeLock:Ljava/lang/Object;

    monitor-enter v2

    .line 978
    :try_start_1
    iget-object v1, p0, Lsun/security/ssl/Handshaker;->engine:Lsun/security/ssl/SSLEngineImpl;

    check-cast v0, Lsun/security/ssl/EngineOutputRecord;

    .end local v0    # "r":Lsun/security/ssl/OutputRecord;
    invoke-virtual {v1, v0}, Lsun/security/ssl/SSLEngineImpl;->writeRecord(Lsun/security/ssl/EngineOutputRecord;)V

    .line 979
    iget-object v1, p0, Lsun/security/ssl/Handshaker;->engine:Lsun/security/ssl/SSLEngineImpl;

    invoke-virtual {v1}, Lsun/security/ssl/SSLEngineImpl;->changeWriteCiphers()V

    .line 980
    sget-object v1, Lsun/security/ssl/Handshaker;->debug:Lsun/security/ssl/Debug;

    if-eqz v1, :cond_3

    const-string/jumbo v1, "handshake"

    invoke-static {v1}, Lsun/security/ssl/Debug;->isOn(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 981
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {p1, v1}, Lsun/security/ssl/HandshakeMessage$Finished;->print(Ljava/io/PrintStream;)V

    .line 983
    :cond_3
    iget-object v1, p0, Lsun/security/ssl/Handshaker;->output:Lsun/security/ssl/HandshakeOutStream;

    invoke-virtual {p1, v1}, Lsun/security/ssl/HandshakeMessage;->write(Lsun/security/ssl/HandshakeOutStream;)V

    .line 985
    if-eqz p2, :cond_4

    .line 986
    iget-object v1, p0, Lsun/security/ssl/Handshaker;->output:Lsun/security/ssl/HandshakeOutStream;

    invoke-virtual {v1}, Lsun/security/ssl/HandshakeOutStream;->setFinishedMsg()V

    .line 988
    :cond_4
    iget-object v1, p0, Lsun/security/ssl/Handshaker;->output:Lsun/security/ssl/HandshakeOutStream;

    invoke-virtual {v1}, Lsun/security/ssl/HandshakeOutStream;->flush()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    monitor-exit v2

    goto :goto_1

    .line 977
    :catchall_1
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method setAlgorithmConstraints(Ljava/security/AlgorithmConstraints;)V
    .locals 2
    .param p1, "algorithmConstraints"    # Ljava/security/AlgorithmConstraints;

    .prologue
    const/4 v1, 0x0

    .line 400
    iput-object v1, p0, Lsun/security/ssl/Handshaker;->activeCipherSuites:Lsun/security/ssl/CipherSuiteList;

    .line 401
    iput-object v1, p0, Lsun/security/ssl/Handshaker;->activeProtocols:Lsun/security/ssl/ProtocolList;

    .line 404
    new-instance v0, Lsun/security/ssl/SSLAlgorithmConstraints;

    invoke-direct {v0, p1}, Lsun/security/ssl/SSLAlgorithmConstraints;-><init>(Ljava/security/AlgorithmConstraints;)V

    .line 403
    iput-object v0, p0, Lsun/security/ssl/Handshaker;->algorithmConstraints:Ljava/security/AlgorithmConstraints;

    .line 405
    iput-object v1, p0, Lsun/security/ssl/Handshaker;->localSupportedSignAlgs:Ljava/util/Collection;

    .line 399
    return-void
.end method

.method setCipherSuite(Lsun/security/ssl/CipherSuite;)V
    .locals 1
    .param p1, "s"    # Lsun/security/ssl/CipherSuite;

    .prologue
    .line 508
    iput-object p1, p0, Lsun/security/ssl/Handshaker;->cipherSuite:Lsun/security/ssl/CipherSuite;

    .line 509
    iget-object v0, p1, Lsun/security/ssl/CipherSuite;->keyExchange:Lsun/security/ssl/CipherSuite$KeyExchange;

    iput-object v0, p0, Lsun/security/ssl/Handshaker;->keyExchange:Lsun/security/ssl/CipherSuite$KeyExchange;

    .line 507
    return-void
.end method

.method setEnableSessionCreation(Z)V
    .locals 0
    .param p1, "newSessions"    # Z

    .prologue
    .line 659
    iput-boolean p1, p0, Lsun/security/ssl/Handshaker;->enableNewSession:Z

    .line 658
    return-void
.end method

.method setEnabledCipherSuites(Lsun/security/ssl/CipherSuiteList;)V
    .locals 1
    .param p1, "enabledCipherSuites"    # Lsun/security/ssl/CipherSuiteList;

    .prologue
    const/4 v0, 0x0

    .line 389
    iput-object v0, p0, Lsun/security/ssl/Handshaker;->activeCipherSuites:Lsun/security/ssl/CipherSuiteList;

    .line 390
    iput-object v0, p0, Lsun/security/ssl/Handshaker;->activeProtocols:Lsun/security/ssl/ProtocolList;

    .line 391
    iput-object p1, p0, Lsun/security/ssl/Handshaker;->enabledCipherSuites:Lsun/security/ssl/CipherSuiteList;

    .line 388
    return-void
.end method

.method setEnabledProtocols(Lsun/security/ssl/ProtocolList;)V
    .locals 1
    .param p1, "enabledProtocols"    # Lsun/security/ssl/ProtocolList;

    .prologue
    const/4 v0, 0x0

    .line 377
    iput-object v0, p0, Lsun/security/ssl/Handshaker;->activeCipherSuites:Lsun/security/ssl/CipherSuiteList;

    .line 378
    iput-object v0, p0, Lsun/security/ssl/Handshaker;->activeProtocols:Lsun/security/ssl/ProtocolList;

    .line 380
    iput-object p1, p0, Lsun/security/ssl/Handshaker;->enabledProtocols:Lsun/security/ssl/ProtocolList;

    .line 376
    return-void
.end method

.method setHandshakeSessionSE(Lsun/security/ssl/SSLSessionImpl;)V
    .locals 1
    .param p1, "handshakeSession"    # Lsun/security/ssl/SSLSessionImpl;

    .prologue
    .line 756
    iget-object v0, p0, Lsun/security/ssl/Handshaker;->conn:Lsun/security/ssl/SSLSocketImpl;

    if-eqz v0, :cond_0

    .line 757
    iget-object v0, p0, Lsun/security/ssl/Handshaker;->conn:Lsun/security/ssl/SSLSocketImpl;

    invoke-virtual {v0, p1}, Lsun/security/ssl/SSLSocketImpl;->setHandshakeSession(Lsun/security/ssl/SSLSessionImpl;)V

    .line 755
    :goto_0
    return-void

    .line 759
    :cond_0
    iget-object v0, p0, Lsun/security/ssl/Handshaker;->engine:Lsun/security/ssl/SSLEngineImpl;

    invoke-virtual {v0, p1}, Lsun/security/ssl/SSLEngineImpl;->setHandshakeSession(Lsun/security/ssl/SSLSessionImpl;)V

    goto :goto_0
.end method

.method setIdentificationProtocol(Ljava/lang/String;)V
    .locals 0
    .param p1, "protocol"    # Ljava/lang/String;

    .prologue
    .line 435
    iput-object p1, p0, Lsun/security/ssl/Handshaker;->identificationProtocol:Ljava/lang/String;

    .line 434
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

    .prologue
    .line 421
    .local p1, "algorithms":Ljava/util/Collection;, "Ljava/util/Collection<Lsun/security/ssl/SignatureAndHashAlgorithm;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 420
    iput-object v0, p0, Lsun/security/ssl/Handshaker;->peerSupportedSignAlgs:Ljava/util/Collection;

    .line 419
    return-void
.end method

.method setVersion(Lsun/security/ssl/ProtocolVersion;)V
    .locals 1
    .param p1, "protocolVersion"    # Lsun/security/ssl/ProtocolVersion;

    .prologue
    .line 365
    iput-object p1, p0, Lsun/security/ssl/Handshaker;->protocolVersion:Lsun/security/ssl/ProtocolVersion;

    .line 366
    invoke-direct {p0, p1}, Lsun/security/ssl/Handshaker;->setVersionSE(Lsun/security/ssl/ProtocolVersion;)V

    .line 368
    iget-object v0, p0, Lsun/security/ssl/Handshaker;->output:Lsun/security/ssl/HandshakeOutStream;

    iget-object v0, v0, Lsun/security/ssl/HandshakeOutStream;->r:Lsun/security/ssl/OutputRecord;

    invoke-virtual {v0, p1}, Lsun/security/ssl/OutputRecord;->setVersion(Lsun/security/ssl/ProtocolVersion;)V

    .line 364
    return-void
.end method

.method started()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 888
    iget v1, p0, Lsun/security/ssl/Handshaker;->state:I

    if-ltz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method taskOutstanding()Z
    .locals 1

    .prologue
    .line 1332
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
    .param p1, "b"    # B

    .prologue
    .line 283
    iget-object v0, p0, Lsun/security/ssl/Handshaker;->conn:Lsun/security/ssl/SSLSocketImpl;

    if-eqz v0, :cond_0

    .line 284
    iget-object v0, p0, Lsun/security/ssl/Handshaker;->conn:Lsun/security/ssl/SSLSocketImpl;

    invoke-virtual {v0, p1}, Lsun/security/ssl/SSLSocketImpl;->warning(B)V

    .line 282
    :goto_0
    return-void

    .line 286
    :cond_0
    iget-object v0, p0, Lsun/security/ssl/Handshaker;->engine:Lsun/security/ssl/SSLEngineImpl;

    invoke-virtual {v0, p1}, Lsun/security/ssl/SSLEngineImpl;->warning(B)V

    goto :goto_0
.end method
