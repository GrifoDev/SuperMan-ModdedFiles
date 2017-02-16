.class final Lsun/security/ssl/ClientHandshaker;
.super Lsun/security/ssl/Handshaker;
.source "ClientHandshaker.java"


# static fields
.field private static final synthetic -sun-security-ssl-CipherSuite$KeyExchangeSwitchesValues:[I

.field private static final enableSNIExtension:Z


# instance fields
.field private certRequest:Lsun/security/ssl/HandshakeMessage$CertificateRequest;

.field private dh:Lsun/security/ssl/DHCrypt;

.field private ecdh:Lsun/security/ssl/ECDHCrypt;

.field private ephemeralServerKey:Ljava/security/PublicKey;

.field private maxProtocolVersion:Lsun/security/ssl/ProtocolVersion;

.field private serverDH:Ljava/math/BigInteger;

.field private serverKey:Ljava/security/PublicKey;

.field private serverKeyExchangeReceived:Z


# direct methods
.method private static synthetic -getsun-security-ssl-CipherSuite$KeyExchangeSwitchesValues()[I
    .locals 3

    sget-object v0, Lsun/security/ssl/ClientHandshaker;->-sun-security-ssl-CipherSuite$KeyExchangeSwitchesValues:[I

    if-eqz v0, :cond_0

    sget-object v0, Lsun/security/ssl/ClientHandshaker;->-sun-security-ssl-CipherSuite$KeyExchangeSwitchesValues:[I

    return-object v0

    :cond_0
    invoke-static {}, Lsun/security/ssl/CipherSuite$KeyExchange;->values()[Lsun/security/ssl/CipherSuite$KeyExchange;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lsun/security/ssl/CipherSuite$KeyExchange;->K_DHE_DSS:Lsun/security/ssl/CipherSuite$KeyExchange;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_f

    :goto_0
    :try_start_1
    sget-object v1, Lsun/security/ssl/CipherSuite$KeyExchange;->K_DHE_RSA:Lsun/security/ssl/CipherSuite$KeyExchange;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_e

    :goto_1
    :try_start_2
    sget-object v1, Lsun/security/ssl/CipherSuite$KeyExchange;->K_DH_ANON:Lsun/security/ssl/CipherSuite$KeyExchange;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_d

    :goto_2
    :try_start_3
    sget-object v1, Lsun/security/ssl/CipherSuite$KeyExchange;->K_DH_DSS:Lsun/security/ssl/CipherSuite$KeyExchange;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_c

    :goto_3
    :try_start_4
    sget-object v1, Lsun/security/ssl/CipherSuite$KeyExchange;->K_DH_RSA:Lsun/security/ssl/CipherSuite$KeyExchange;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_b

    :goto_4
    :try_start_5
    sget-object v1, Lsun/security/ssl/CipherSuite$KeyExchange;->K_ECDHE_ECDSA:Lsun/security/ssl/CipherSuite$KeyExchange;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_a

    :goto_5
    :try_start_6
    sget-object v1, Lsun/security/ssl/CipherSuite$KeyExchange;->K_ECDHE_RSA:Lsun/security/ssl/CipherSuite$KeyExchange;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x7

    aput v2, v0, v1
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_9

    :goto_6
    :try_start_7
    sget-object v1, Lsun/security/ssl/CipherSuite$KeyExchange;->K_ECDH_ANON:Lsun/security/ssl/CipherSuite$KeyExchange;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0x8

    aput v2, v0, v1
    :try_end_7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7 .. :try_end_7} :catch_8

    :goto_7
    :try_start_8
    sget-object v1, Lsun/security/ssl/CipherSuite$KeyExchange;->K_ECDH_ECDSA:Lsun/security/ssl/CipherSuite$KeyExchange;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0x9

    aput v2, v0, v1
    :try_end_8
    .catch Ljava/lang/NoSuchFieldError; {:try_start_8 .. :try_end_8} :catch_7

    :goto_8
    :try_start_9
    sget-object v1, Lsun/security/ssl/CipherSuite$KeyExchange;->K_ECDH_RSA:Lsun/security/ssl/CipherSuite$KeyExchange;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0xa

    aput v2, v0, v1
    :try_end_9
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_9} :catch_6

    :goto_9
    :try_start_a
    sget-object v1, Lsun/security/ssl/CipherSuite$KeyExchange;->K_KRB5:Lsun/security/ssl/CipherSuite$KeyExchange;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0xb

    aput v2, v0, v1
    :try_end_a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_a .. :try_end_a} :catch_5

    :goto_a
    :try_start_b
    sget-object v1, Lsun/security/ssl/CipherSuite$KeyExchange;->K_KRB5_EXPORT:Lsun/security/ssl/CipherSuite$KeyExchange;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0xc

    aput v2, v0, v1
    :try_end_b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_b .. :try_end_b} :catch_4

    :goto_b
    :try_start_c
    sget-object v1, Lsun/security/ssl/CipherSuite$KeyExchange;->K_NULL:Lsun/security/ssl/CipherSuite$KeyExchange;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0xf

    aput v2, v0, v1
    :try_end_c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_c .. :try_end_c} :catch_3

    :goto_c
    :try_start_d
    sget-object v1, Lsun/security/ssl/CipherSuite$KeyExchange;->K_RSA:Lsun/security/ssl/CipherSuite$KeyExchange;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0xd

    aput v2, v0, v1
    :try_end_d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_d .. :try_end_d} :catch_2

    :goto_d
    :try_start_e
    sget-object v1, Lsun/security/ssl/CipherSuite$KeyExchange;->K_RSA_EXPORT:Lsun/security/ssl/CipherSuite$KeyExchange;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0xe

    aput v2, v0, v1
    :try_end_e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_e .. :try_end_e} :catch_1

    :goto_e
    :try_start_f
    sget-object v1, Lsun/security/ssl/CipherSuite$KeyExchange;->K_SCSV:Lsun/security/ssl/CipherSuite$KeyExchange;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0x10

    aput v2, v0, v1
    :try_end_f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_f .. :try_end_f} :catch_0

    :goto_f
    sput-object v0, Lsun/security/ssl/ClientHandshaker;->-sun-security-ssl-CipherSuite$KeyExchangeSwitchesValues:[I

    return-object v0

    :catch_0
    move-exception v1

    goto :goto_f

    :catch_1
    move-exception v1

    goto :goto_e

    :catch_2
    move-exception v1

    goto :goto_d

    :catch_3
    move-exception v1

    goto :goto_c

    :catch_4
    move-exception v1

    goto :goto_b

    :catch_5
    move-exception v1

    goto :goto_a

    :catch_6
    move-exception v1

    goto :goto_9

    :catch_7
    move-exception v1

    goto :goto_8

    :catch_8
    move-exception v1

    goto :goto_7

    :catch_9
    move-exception v1

    goto :goto_6

    :catch_a
    move-exception v1

    goto :goto_5

    :catch_b
    move-exception v1

    goto/16 :goto_4

    :catch_c
    move-exception v1

    goto/16 :goto_3

    :catch_d
    move-exception v1

    goto/16 :goto_2

    :catch_e
    move-exception v1

    goto/16 :goto_1

    :catch_f
    move-exception v1

    goto/16 :goto_0
.end method

.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 93
    const-string/jumbo v0, "jsse.enableSNIExtension"

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lsun/security/ssl/Debug;->getBooleanProperty(Ljava/lang/String;Z)Z

    move-result v0

    .line 92
    sput-boolean v0, Lsun/security/ssl/ClientHandshaker;->enableSNIExtension:Z

    .line 61
    return-void
.end method

.method constructor <init>(Lsun/security/ssl/SSLEngineImpl;Lsun/security/ssl/SSLContextImpl;Lsun/security/ssl/ProtocolList;Lsun/security/ssl/ProtocolVersion;ZZ[B[B)V
    .locals 11
    .param p1, "engine"    # Lsun/security/ssl/SSLEngineImpl;
    .param p2, "context"    # Lsun/security/ssl/SSLContextImpl;
    .param p3, "enabledProtocols"    # Lsun/security/ssl/ProtocolList;
    .param p4, "activeProtocolVersion"    # Lsun/security/ssl/ProtocolVersion;
    .param p5, "isInitialHandshake"    # Z
    .param p6, "secureRenegotiation"    # Z
    .param p7, "clientVerifyData"    # [B
    .param p8, "serverVerifyData"    # [B

    .prologue
    .line 115
    const/4 v4, 0x1

    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v6, p4

    move/from16 v7, p5

    move/from16 v8, p6

    move-object/from16 v9, p7

    move-object/from16 v10, p8

    invoke-direct/range {v0 .. v10}, Lsun/security/ssl/Handshaker;-><init>(Lsun/security/ssl/SSLEngineImpl;Lsun/security/ssl/SSLContextImpl;Lsun/security/ssl/ProtocolList;ZZLsun/security/ssl/ProtocolVersion;ZZ[B[B)V

    .line 113
    return-void
.end method

.method constructor <init>(Lsun/security/ssl/SSLSocketImpl;Lsun/security/ssl/SSLContextImpl;Lsun/security/ssl/ProtocolList;Lsun/security/ssl/ProtocolVersion;ZZ[B[B)V
    .locals 11
    .param p1, "socket"    # Lsun/security/ssl/SSLSocketImpl;
    .param p2, "context"    # Lsun/security/ssl/SSLContextImpl;
    .param p3, "enabledProtocols"    # Lsun/security/ssl/ProtocolList;
    .param p4, "activeProtocolVersion"    # Lsun/security/ssl/ProtocolVersion;
    .param p5, "isInitialHandshake"    # Z
    .param p6, "secureRenegotiation"    # Z
    .param p7, "clientVerifyData"    # [B
    .param p8, "serverVerifyData"    # [B

    .prologue
    .line 104
    const/4 v4, 0x1

    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v6, p4

    move/from16 v7, p5

    move/from16 v8, p6

    move-object/from16 v9, p7

    move-object/from16 v10, p8

    invoke-direct/range {v0 .. v10}, Lsun/security/ssl/Handshaker;-><init>(Lsun/security/ssl/SSLSocketImpl;Lsun/security/ssl/SSLContextImpl;Lsun/security/ssl/ProtocolList;ZZLsun/security/ssl/ProtocolVersion;ZZ[B[B)V

    .line 102
    return-void
.end method

.method private sendChangeCipherAndFinish(Z)V
    .locals 6
    .param p1, "finishedTag"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1078
    new-instance v0, Lsun/security/ssl/HandshakeMessage$Finished;

    iget-object v1, p0, Lsun/security/ssl/Handshaker;->protocolVersion:Lsun/security/ssl/ProtocolVersion;

    iget-object v2, p0, Lsun/security/ssl/Handshaker;->handshakeHash:Lsun/security/ssl/HandshakeHash;

    .line 1079
    iget-object v3, p0, Lsun/security/ssl/Handshaker;->session:Lsun/security/ssl/SSLSessionImpl;

    invoke-virtual {v3}, Lsun/security/ssl/SSLSessionImpl;->getMasterSecret()Ljavax/crypto/SecretKey;

    move-result-object v4

    iget-object v5, p0, Lsun/security/ssl/Handshaker;->cipherSuite:Lsun/security/ssl/CipherSuite;

    const/4 v3, 0x1

    .line 1078
    invoke-direct/range {v0 .. v5}, Lsun/security/ssl/HandshakeMessage$Finished;-><init>(Lsun/security/ssl/ProtocolVersion;Lsun/security/ssl/HandshakeHash;ILjavax/crypto/SecretKey;Lsun/security/ssl/CipherSuite;)V

    .line 1087
    .local v0, "mesg":Lsun/security/ssl/HandshakeMessage$Finished;
    invoke-virtual {p0, v0, p1}, Lsun/security/ssl/Handshaker;->sendChangeCipherSpec(Lsun/security/ssl/HandshakeMessage$Finished;Z)V

    .line 1092
    iget-boolean v1, p0, Lsun/security/ssl/Handshaker;->secureRenegotiation:Z

    if-eqz v1, :cond_0

    .line 1093
    invoke-virtual {v0}, Lsun/security/ssl/HandshakeMessage$Finished;->getVerifyData()[B

    move-result-object v1

    iput-object v1, p0, Lsun/security/ssl/Handshaker;->clientVerifyData:[B

    .line 1101
    :cond_0
    const/16 v1, 0x13

    iput v1, p0, Lsun/security/ssl/Handshaker;->state:I

    .line 1077
    return-void
.end method

.method private serverCertificate(Lsun/security/ssl/HandshakeMessage$CertificateMsg;)V
    .locals 6
    .param p1, "mesg"    # Lsun/security/ssl/HandshakeMessage$CertificateMsg;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1301
    sget-object v4, Lsun/security/ssl/ClientHandshaker;->debug:Lsun/security/ssl/Debug;

    if-eqz v4, :cond_0

    const-string/jumbo v4, "handshake"

    invoke-static {v4}, Lsun/security/ssl/Debug;->isOn(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1302
    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {p1, v4}, Lsun/security/ssl/HandshakeMessage$CertificateMsg;->print(Ljava/io/PrintStream;)V

    .line 1304
    :cond_0
    invoke-virtual {p1}, Lsun/security/ssl/HandshakeMessage$CertificateMsg;->getCertificateChain()[Ljava/security/cert/X509Certificate;

    move-result-object v2

    .line 1305
    .local v2, "peerCerts":[Ljava/security/cert/X509Certificate;
    array-length v4, v2

    if-nez v4, :cond_1

    .line 1307
    const-string/jumbo v4, "empty certificate chain"

    .line 1306
    const/16 v5, 0x2a

    invoke-virtual {p0, v5, v4}, Lsun/security/ssl/Handshaker;->fatalSE(BLjava/lang/String;)V

    .line 1310
    :cond_1
    iget-object v4, p0, Lsun/security/ssl/Handshaker;->sslContext:Lsun/security/ssl/SSLContextImpl;

    invoke-virtual {v4}, Lsun/security/ssl/SSLContextImpl;->getX509TrustManager()Ljavax/net/ssl/X509TrustManager;

    move-result-object v3

    .line 1315
    .local v3, "tm":Ljavax/net/ssl/X509TrustManager;
    :try_start_0
    iget-object v4, p0, Lsun/security/ssl/Handshaker;->keyExchange:Lsun/security/ssl/CipherSuite$KeyExchange;

    sget-object v5, Lsun/security/ssl/CipherSuite$KeyExchange;->K_RSA_EXPORT:Lsun/security/ssl/CipherSuite$KeyExchange;

    if-ne v4, v5, :cond_2

    iget-boolean v4, p0, Lsun/security/ssl/ClientHandshaker;->serverKeyExchangeReceived:Z

    if-eqz v4, :cond_3

    .line 1318
    :cond_2
    iget-object v4, p0, Lsun/security/ssl/Handshaker;->keyExchange:Lsun/security/ssl/CipherSuite$KeyExchange;

    iget-object v1, v4, Lsun/security/ssl/CipherSuite$KeyExchange;->name:Ljava/lang/String;

    .line 1321
    .local v1, "keyExchangeString":Ljava/lang/String;
    :goto_0
    instance-of v4, v3, Ljavax/net/ssl/X509ExtendedTrustManager;

    if-eqz v4, :cond_5

    .line 1322
    iget-object v4, p0, Lsun/security/ssl/Handshaker;->conn:Lsun/security/ssl/SSLSocketImpl;

    if-eqz v4, :cond_4

    .line 1323
    nop

    nop

    .line 1324
    .end local v3    # "tm":Ljavax/net/ssl/X509TrustManager;
    invoke-virtual {v2}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Ljava/security/cert/X509Certificate;

    .line 1326
    iget-object v5, p0, Lsun/security/ssl/Handshaker;->conn:Lsun/security/ssl/SSLSocketImpl;

    .line 1323
    invoke-virtual {v3, v4, v1, v5}, Ljavax/net/ssl/X509ExtendedTrustManager;->checkServerTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;Ljava/net/Socket;)V
    :try_end_0
    .catch Ljava/security/cert/CertificateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1343
    .end local v1    # "keyExchangeString":Ljava/lang/String;
    :goto_1
    iget-object v4, p0, Lsun/security/ssl/Handshaker;->session:Lsun/security/ssl/SSLSessionImpl;

    invoke-virtual {v4, v2}, Lsun/security/ssl/SSLSessionImpl;->setPeerCertificates([Ljava/security/cert/X509Certificate;)V

    .line 1300
    return-void

    .line 1316
    .restart local v3    # "tm":Ljavax/net/ssl/X509TrustManager;
    :cond_3
    :try_start_1
    sget-object v4, Lsun/security/ssl/CipherSuite$KeyExchange;->K_RSA:Lsun/security/ssl/CipherSuite$KeyExchange;

    iget-object v1, v4, Lsun/security/ssl/CipherSuite$KeyExchange;->name:Ljava/lang/String;

    .restart local v1    # "keyExchangeString":Ljava/lang/String;
    goto :goto_0

    .line 1328
    :cond_4
    nop

    nop

    .line 1329
    .end local v3    # "tm":Ljavax/net/ssl/X509TrustManager;
    invoke-virtual {v2}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Ljava/security/cert/X509Certificate;

    .line 1331
    iget-object v5, p0, Lsun/security/ssl/Handshaker;->engine:Lsun/security/ssl/SSLEngineImpl;

    .line 1328
    invoke-virtual {v3, v4, v1, v5}, Ljavax/net/ssl/X509ExtendedTrustManager;->checkServerTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;Ljavax/net/ssl/SSLEngine;)V
    :try_end_1
    .catch Ljava/security/cert/CertificateException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 1339
    .end local v1    # "keyExchangeString":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 1341
    .local v0, "e":Ljava/security/cert/CertificateException;
    const/16 v4, 0x2e

    invoke-virtual {p0, v4, v0}, Lsun/security/ssl/Handshaker;->fatalSE(BLjava/lang/Throwable;)V

    goto :goto_1

    .line 1336
    .end local v0    # "e":Ljava/security/cert/CertificateException;
    .restart local v1    # "keyExchangeString":Ljava/lang/String;
    .restart local v3    # "tm":Ljavax/net/ssl/X509TrustManager;
    :cond_5
    :try_start_2
    new-instance v4, Ljava/security/cert/CertificateException;

    .line 1337
    const-string/jumbo v5, "Improper X509TrustManager implementation"

    .line 1336
    invoke-direct {v4, v5}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_2
    .catch Ljava/security/cert/CertificateException; {:try_start_2 .. :try_end_2} :catch_0
.end method

.method private serverFinished(Lsun/security/ssl/HandshakeMessage$Finished;)V
    .locals 4
    .param p1, "mesg"    # Lsun/security/ssl/HandshakeMessage$Finished;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1017
    sget-object v1, Lsun/security/ssl/ClientHandshaker;->debug:Lsun/security/ssl/Debug;

    if-eqz v1, :cond_0

    const-string/jumbo v1, "handshake"

    invoke-static {v1}, Lsun/security/ssl/Debug;->isOn(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1018
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {p1, v1}, Lsun/security/ssl/HandshakeMessage$Finished;->print(Ljava/io/PrintStream;)V

    .line 1021
    :cond_0
    iget-object v1, p0, Lsun/security/ssl/Handshaker;->handshakeHash:Lsun/security/ssl/HandshakeHash;

    .line 1022
    iget-object v2, p0, Lsun/security/ssl/Handshaker;->session:Lsun/security/ssl/SSLSessionImpl;

    invoke-virtual {v2}, Lsun/security/ssl/SSLSessionImpl;->getMasterSecret()Ljavax/crypto/SecretKey;

    move-result-object v2

    .line 1021
    const/4 v3, 0x2

    invoke-virtual {p1, v1, v3, v2}, Lsun/security/ssl/HandshakeMessage$Finished;->verify(Lsun/security/ssl/HandshakeHash;ILjavax/crypto/SecretKey;)Z

    move-result v0

    .line 1024
    .local v0, "verified":Z
    if-nez v0, :cond_1

    .line 1026
    const-string/jumbo v1, "server \'finished\' message doesn\'t verify"

    .line 1025
    const/16 v2, 0x2f

    invoke-virtual {p0, v2, v1}, Lsun/security/ssl/Handshaker;->fatalSE(BLjava/lang/String;)V

    .line 1033
    :cond_1
    iget-boolean v1, p0, Lsun/security/ssl/Handshaker;->secureRenegotiation:Z

    if-eqz v1, :cond_2

    .line 1034
    invoke-virtual {p1}, Lsun/security/ssl/HandshakeMessage$Finished;->getVerifyData()[B

    move-result-object v1

    iput-object v1, p0, Lsun/security/ssl/Handshaker;->serverVerifyData:[B

    .line 1047
    :cond_2
    iget-boolean v1, p0, Lsun/security/ssl/Handshaker;->resumingSession:Z

    if-eqz v1, :cond_3

    .line 1048
    iget-object v1, p0, Lsun/security/ssl/Handshaker;->input:Lsun/security/ssl/HandshakeInStream;

    invoke-virtual {v1}, Lsun/security/ssl/HandshakeInStream;->digestNow()V

    .line 1049
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lsun/security/ssl/ClientHandshaker;->sendChangeCipherAndFinish(Z)V

    .line 1051
    :cond_3
    iget-object v1, p0, Lsun/security/ssl/Handshaker;->session:Lsun/security/ssl/SSLSessionImpl;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lsun/security/ssl/SSLSessionImpl;->setLastAccessedTime(J)V

    .line 1053
    iget-boolean v1, p0, Lsun/security/ssl/Handshaker;->resumingSession:Z

    if-nez v1, :cond_4

    .line 1054
    iget-object v1, p0, Lsun/security/ssl/Handshaker;->session:Lsun/security/ssl/SSLSessionImpl;

    invoke-virtual {v1}, Lsun/security/ssl/SSLSessionImpl;->isRejoinable()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 1055
    iget-object v1, p0, Lsun/security/ssl/Handshaker;->sslContext:Lsun/security/ssl/SSLContextImpl;

    invoke-virtual {v1}, Lsun/security/ssl/SSLContextImpl;->engineGetClientSessionContext()Ljavax/net/ssl/SSLSessionContext;

    move-result-object v1

    check-cast v1, Lsun/security/ssl/SSLSessionContextImpl;

    .line 1057
    iget-object v2, p0, Lsun/security/ssl/Handshaker;->session:Lsun/security/ssl/SSLSessionImpl;

    .line 1055
    invoke-virtual {v1, v2}, Lsun/security/ssl/SSLSessionContextImpl;->put(Lsun/security/ssl/SSLSessionImpl;)V

    .line 1058
    sget-object v1, Lsun/security/ssl/ClientHandshaker;->debug:Lsun/security/ssl/Debug;

    if-eqz v1, :cond_4

    const-string/jumbo v1, "session"

    invoke-static {v1}, Lsun/security/ssl/Debug;->isOn(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1059
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "%% Cached client session: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lsun/security/ssl/Handshaker;->session:Lsun/security/ssl/SSLSessionImpl;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1016
    :cond_4
    :goto_0
    return-void

    .line 1061
    :cond_5
    sget-object v1, Lsun/security/ssl/ClientHandshaker;->debug:Lsun/security/ssl/Debug;

    if-eqz v1, :cond_4

    const-string/jumbo v1, "session"

    invoke-static {v1}, Lsun/security/ssl/Debug;->isOn(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1062
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    .line 1063
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "%% Didn\'t cache non-resumable client session: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1064
    iget-object v3, p0, Lsun/security/ssl/Handshaker;->session:Lsun/security/ssl/SSLSessionImpl;

    .line 1063
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1062
    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private serverHello(Lsun/security/ssl/HandshakeMessage$ServerHello;)V
    .locals 20
    .param p1, "mesg"    # Lsun/security/ssl/HandshakeMessage$ServerHello;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 374
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput-boolean v1, v0, Lsun/security/ssl/ClientHandshaker;->serverKeyExchangeReceived:Z

    .line 375
    sget-object v1, Lsun/security/ssl/ClientHandshaker;->debug:Lsun/security/ssl/Debug;

    if-eqz v1, :cond_0

    const-string/jumbo v1, "handshake"

    invoke-static {v1}, Lsun/security/ssl/Debug;->isOn(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 376
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Lsun/security/ssl/HandshakeMessage$ServerHello;->print(Ljava/io/PrintStream;)V

    .line 380
    :cond_0
    move-object/from16 v0, p1

    iget-object v12, v0, Lsun/security/ssl/HandshakeMessage$ServerHello;->protocolVersion:Lsun/security/ssl/ProtocolVersion;

    .line 381
    .local v12, "mesgVersion":Lsun/security/ssl/ProtocolVersion;
    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lsun/security/ssl/Handshaker;->isNegotiable(Lsun/security/ssl/ProtocolVersion;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 382
    new-instance v1, Ljavax/net/ssl/SSLHandshakeException;

    .line 383
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Server chose "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 384
    const-string/jumbo v3, ", but that protocol version is not enabled or not supported "

    .line 383
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 385
    const-string/jumbo v3, "by the client."

    .line 383
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 382
    invoke-direct {v1, v2}, Ljavax/net/ssl/SSLHandshakeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 388
    :cond_1
    move-object/from16 v0, p0

    iget-object v1, v0, Lsun/security/ssl/Handshaker;->handshakeHash:Lsun/security/ssl/HandshakeHash;

    invoke-virtual {v1, v12}, Lsun/security/ssl/HandshakeHash;->protocolDetermined(Lsun/security/ssl/ProtocolVersion;)V

    .line 392
    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lsun/security/ssl/Handshaker;->setVersion(Lsun/security/ssl/ProtocolVersion;)V

    .line 396
    move-object/from16 v0, p1

    iget-object v1, v0, Lsun/security/ssl/HandshakeMessage$ServerHello;->extensions:Lsun/security/ssl/HelloExtensions;

    sget-object v2, Lsun/security/ssl/ExtensionType;->EXT_RENEGOTIATION_INFO:Lsun/security/ssl/ExtensionType;

    invoke-virtual {v1, v2}, Lsun/security/ssl/HelloExtensions;->get(Lsun/security/ssl/ExtensionType;)Lsun/security/ssl/HelloExtension;

    move-result-object v14

    .line 395
    check-cast v14, Lsun/security/ssl/RenegotiationInfoExtension;

    .line 397
    .local v14, "serverHelloRI":Lsun/security/ssl/RenegotiationInfoExtension;
    if-eqz v14, :cond_9

    .line 398
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lsun/security/ssl/Handshaker;->isInitialHandshake:Z

    if-eqz v1, :cond_7

    .line 400
    invoke-virtual {v14}, Lsun/security/ssl/RenegotiationInfoExtension;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    .line 403
    const-string/jumbo v1, "The renegotiation_info field is not empty"

    .line 402
    const/16 v2, 0x28

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v1}, Lsun/security/ssl/Handshaker;->fatalSE(BLjava/lang/String;)V

    .line 406
    :cond_2
    const/4 v1, 0x1

    move-object/from16 v0, p0

    iput-boolean v1, v0, Lsun/security/ssl/Handshaker;->secureRenegotiation:Z

    .line 461
    :cond_3
    :goto_0
    move-object/from16 v0, p1

    iget-object v1, v0, Lsun/security/ssl/HandshakeMessage$ServerHello;->svr_random:Lsun/security/ssl/RandomCookie;

    move-object/from16 v0, p0

    iput-object v1, v0, Lsun/security/ssl/Handshaker;->svr_random:Lsun/security/ssl/RandomCookie;

    .line 463
    move-object/from16 v0, p1

    iget-object v1, v0, Lsun/security/ssl/HandshakeMessage$ServerHello;->cipherSuite:Lsun/security/ssl/CipherSuite;

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lsun/security/ssl/Handshaker;->isNegotiable(Lsun/security/ssl/CipherSuite;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 465
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Server selected improper ciphersuite "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object/from16 v0, p1

    iget-object v2, v0, Lsun/security/ssl/HandshakeMessage$ServerHello;->cipherSuite:Lsun/security/ssl/CipherSuite;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 464
    const/16 v2, 0x2f

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v1}, Lsun/security/ssl/Handshaker;->fatalSE(BLjava/lang/String;)V

    .line 468
    :cond_4
    move-object/from16 v0, p1

    iget-object v1, v0, Lsun/security/ssl/HandshakeMessage$ServerHello;->cipherSuite:Lsun/security/ssl/CipherSuite;

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lsun/security/ssl/Handshaker;->setCipherSuite(Lsun/security/ssl/CipherSuite;)V

    .line 469
    move-object/from16 v0, p0

    iget-object v1, v0, Lsun/security/ssl/Handshaker;->protocolVersion:Lsun/security/ssl/ProtocolVersion;

    iget v1, v1, Lsun/security/ssl/ProtocolVersion;->v:I

    sget-object v2, Lsun/security/ssl/ProtocolVersion;->TLS12:Lsun/security/ssl/ProtocolVersion;

    iget v2, v2, Lsun/security/ssl/ProtocolVersion;->v:I

    if-lt v1, v2, :cond_5

    .line 470
    move-object/from16 v0, p0

    iget-object v1, v0, Lsun/security/ssl/Handshaker;->handshakeHash:Lsun/security/ssl/HandshakeHash;

    move-object/from16 v0, p0

    iget-object v2, v0, Lsun/security/ssl/Handshaker;->cipherSuite:Lsun/security/ssl/CipherSuite;

    iget-object v2, v2, Lsun/security/ssl/CipherSuite;->prfAlg:Lsun/security/ssl/CipherSuite$PRF;

    invoke-virtual {v2}, Lsun/security/ssl/CipherSuite$PRF;->getPRFHashAlg()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lsun/security/ssl/HandshakeHash;->setFinishedAlg(Ljava/lang/String;)V

    .line 473
    :cond_5
    move-object/from16 v0, p1

    iget-byte v1, v0, Lsun/security/ssl/HandshakeMessage$ServerHello;->compression_method:B

    if-eqz v1, :cond_6

    .line 475
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "compression type not supported, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 476
    move-object/from16 v0, p1

    iget-byte v2, v0, Lsun/security/ssl/HandshakeMessage$ServerHello;->compression_method:B

    .line 475
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 474
    const/16 v2, 0x2f

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v1}, Lsun/security/ssl/Handshaker;->fatalSE(BLjava/lang/String;)V

    .line 481
    :cond_6
    move-object/from16 v0, p0

    iget-object v1, v0, Lsun/security/ssl/Handshaker;->session:Lsun/security/ssl/SSLSessionImpl;

    if-eqz v1, :cond_12

    .line 483
    move-object/from16 v0, p0

    iget-object v1, v0, Lsun/security/ssl/Handshaker;->session:Lsun/security/ssl/SSLSessionImpl;

    invoke-virtual {v1}, Lsun/security/ssl/SSLSessionImpl;->getSessionId()Lsun/security/ssl/SessionId;

    move-result-object v1

    move-object/from16 v0, p1

    iget-object v2, v0, Lsun/security/ssl/HandshakeMessage$ServerHello;->sessionId:Lsun/security/ssl/SessionId;

    invoke-virtual {v1, v2}, Lsun/security/ssl/SessionId;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_16

    .line 488
    move-object/from16 v0, p0

    iget-object v1, v0, Lsun/security/ssl/Handshaker;->session:Lsun/security/ssl/SSLSessionImpl;

    invoke-virtual {v1}, Lsun/security/ssl/SSLSessionImpl;->getSuite()Lsun/security/ssl/CipherSuite;

    move-result-object v15

    .line 489
    .local v15, "sessionSuite":Lsun/security/ssl/CipherSuite;
    move-object/from16 v0, p0

    iget-object v1, v0, Lsun/security/ssl/Handshaker;->cipherSuite:Lsun/security/ssl/CipherSuite;

    if-eq v1, v15, :cond_c

    .line 490
    new-instance v1, Ljavax/net/ssl/SSLProtocolException;

    .line 491
    const-string/jumbo v2, "Server returned wrong cipher suite for session"

    .line 490
    invoke-direct {v1, v2}, Ljavax/net/ssl/SSLProtocolException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 410
    .end local v15    # "sessionSuite":Lsun/security/ssl/CipherSuite;
    :cond_7
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lsun/security/ssl/Handshaker;->secureRenegotiation:Z

    if-nez v1, :cond_8

    .line 412
    const-string/jumbo v1, "Unexpected renegotiation indication extension"

    .line 411
    const/16 v2, 0x28

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v1}, Lsun/security/ssl/Handshaker;->fatalSE(BLjava/lang/String;)V

    .line 417
    :cond_8
    move-object/from16 v0, p0

    iget-object v1, v0, Lsun/security/ssl/Handshaker;->clientVerifyData:[B

    array-length v1, v1

    move-object/from16 v0, p0

    iget-object v2, v0, Lsun/security/ssl/Handshaker;->serverVerifyData:[B

    array-length v2, v2

    add-int/2addr v1, v2

    new-array v0, v1, [B

    move-object/from16 v19, v0

    .line 418
    .local v19, "verifyData":[B
    move-object/from16 v0, p0

    iget-object v1, v0, Lsun/security/ssl/Handshaker;->clientVerifyData:[B

    .line 419
    move-object/from16 v0, p0

    iget-object v2, v0, Lsun/security/ssl/Handshaker;->clientVerifyData:[B

    array-length v2, v2

    .line 418
    const/4 v3, 0x0

    .line 419
    const/4 v4, 0x0

    .line 418
    move-object/from16 v0, v19

    invoke-static {v1, v3, v0, v4, v2}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 420
    move-object/from16 v0, p0

    iget-object v1, v0, Lsun/security/ssl/Handshaker;->serverVerifyData:[B

    .line 421
    move-object/from16 v0, p0

    iget-object v2, v0, Lsun/security/ssl/Handshaker;->clientVerifyData:[B

    array-length v2, v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lsun/security/ssl/Handshaker;->serverVerifyData:[B

    array-length v3, v3

    .line 420
    const/4 v4, 0x0

    move-object/from16 v0, v19

    invoke-static {v1, v4, v0, v2, v3}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 423
    invoke-virtual {v14}, Lsun/security/ssl/RenegotiationInfoExtension;->getRenegotiatedConnection()[B

    move-result-object v1

    .line 422
    move-object/from16 v0, v19

    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v1

    if-nez v1, :cond_3

    .line 425
    const-string/jumbo v1, "Incorrect verify data in ServerHello renegotiation_info message"

    .line 424
    const/16 v2, 0x28

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v1}, Lsun/security/ssl/Handshaker;->fatalSE(BLjava/lang/String;)V

    goto/16 :goto_0

    .line 431
    .end local v19    # "verifyData":[B
    :cond_9
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lsun/security/ssl/Handshaker;->isInitialHandshake:Z

    if-eqz v1, :cond_b

    .line 432
    sget-boolean v1, Lsun/security/ssl/ClientHandshaker;->allowLegacyHelloMessages:Z

    if-nez v1, :cond_a

    .line 435
    const-string/jumbo v1, "Failed to negotiate the use of secure renegotiation"

    .line 434
    const/16 v2, 0x28

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v1}, Lsun/security/ssl/Handshaker;->fatalSE(BLjava/lang/String;)V

    .line 438
    :cond_a
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput-boolean v1, v0, Lsun/security/ssl/Handshaker;->secureRenegotiation:Z

    .line 439
    sget-object v1, Lsun/security/ssl/ClientHandshaker;->debug:Lsun/security/ssl/Debug;

    if-eqz v1, :cond_3

    const-string/jumbo v1, "handshake"

    invoke-static {v1}, Lsun/security/ssl/Debug;->isOn(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 440
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string/jumbo v2, "Warning: No renegotiation indication extension in ServerHello"

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 446
    :cond_b
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lsun/security/ssl/Handshaker;->secureRenegotiation:Z

    if-eqz v1, :cond_3

    .line 448
    const-string/jumbo v1, "No renegotiation indication extension"

    .line 447
    const/16 v2, 0x28

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v1}, Lsun/security/ssl/Handshaker;->fatalSE(BLjava/lang/String;)V

    goto/16 :goto_0

    .line 495
    .restart local v15    # "sessionSuite":Lsun/security/ssl/CipherSuite;
    :cond_c
    move-object/from16 v0, p0

    iget-object v1, v0, Lsun/security/ssl/Handshaker;->session:Lsun/security/ssl/SSLSessionImpl;

    invoke-virtual {v1}, Lsun/security/ssl/SSLSessionImpl;->getProtocolVersion()Lsun/security/ssl/ProtocolVersion;

    move-result-object v16

    .line 496
    .local v16, "sessionVersion":Lsun/security/ssl/ProtocolVersion;
    move-object/from16 v0, p0

    iget-object v1, v0, Lsun/security/ssl/Handshaker;->protocolVersion:Lsun/security/ssl/ProtocolVersion;

    move-object/from16 v0, v16

    if-eq v1, v0, :cond_d

    .line 497
    new-instance v1, Ljavax/net/ssl/SSLProtocolException;

    .line 498
    const-string/jumbo v2, "Server resumed session with wrong protocol version"

    .line 497
    invoke-direct {v1, v2}, Ljavax/net/ssl/SSLProtocolException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 502
    :cond_d
    iget-object v1, v15, Lsun/security/ssl/CipherSuite;->keyExchange:Lsun/security/ssl/CipherSuite$KeyExchange;

    sget-object v2, Lsun/security/ssl/CipherSuite$KeyExchange;->K_KRB5:Lsun/security/ssl/CipherSuite$KeyExchange;

    if-eq v1, v2, :cond_e

    .line 503
    iget-object v1, v15, Lsun/security/ssl/CipherSuite;->keyExchange:Lsun/security/ssl/CipherSuite$KeyExchange;

    sget-object v2, Lsun/security/ssl/CipherSuite$KeyExchange;->K_KRB5_EXPORT:Lsun/security/ssl/CipherSuite$KeyExchange;

    if-ne v1, v2, :cond_11

    .line 504
    :cond_e
    move-object/from16 v0, p0

    iget-object v1, v0, Lsun/security/ssl/Handshaker;->session:Lsun/security/ssl/SSLSessionImpl;

    invoke-virtual {v1}, Lsun/security/ssl/SSLSessionImpl;->getLocalPrincipal()Ljava/security/Principal;

    move-result-object v11

    .line 506
    .local v11, "localPrincipal":Ljava/security/Principal;
    const/16 v17, 0x0

    .line 509
    .local v17, "subject":Ljavax/security/auth/Subject;
    :try_start_0
    new-instance v1, Lsun/security/ssl/ClientHandshaker$1;

    move-object/from16 v0, p0

    invoke-direct {v1, v0}, Lsun/security/ssl/ClientHandshaker$1;-><init>(Lsun/security/ssl/ClientHandshaker;)V

    .line 508
    invoke-static {v1}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedExceptionAction;)Ljava/lang/Object;

    move-result-object v17

    .end local v17    # "subject":Ljavax/security/auth/Subject;
    check-cast v17, Ljavax/security/auth/Subject;
    :try_end_0
    .catch Ljava/security/PrivilegedActionException; {:try_start_0 .. :try_end_0} :catch_0

    .line 521
    :cond_f
    :goto_1
    if-eqz v17, :cond_14

    .line 524
    const-class v1, Ljava/security/Principal;

    move-object/from16 v0, v17

    invoke-virtual {v0, v1}, Ljavax/security/auth/Subject;->getPrincipals(Ljava/lang/Class;)Ljava/util/Set;

    move-result-object v13

    .line 525
    .local v13, "principals":Ljava/util/Set;, "Ljava/util/Set<Ljava/security/Principal;>;"
    invoke-interface {v13, v11}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_10

    .line 526
    new-instance v1, Ljavax/net/ssl/SSLProtocolException;

    const-string/jumbo v2, "Server resumed session with wrong subject identity"

    invoke-direct {v1, v2}, Ljavax/net/ssl/SSLProtocolException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 513
    .end local v13    # "principals":Ljava/util/Set;, "Ljava/util/Set<Ljava/security/Principal;>;"
    :catch_0
    move-exception v8

    .line 514
    .local v8, "e":Ljava/security/PrivilegedActionException;
    const/16 v17, 0x0

    .line 515
    .restart local v17    # "subject":Ljavax/security/auth/Subject;
    sget-object v1, Lsun/security/ssl/ClientHandshaker;->debug:Lsun/security/ssl/Debug;

    if-eqz v1, :cond_f

    const-string/jumbo v1, "session"

    invoke-static {v1}, Lsun/security/ssl/Debug;->isOn(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 516
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string/jumbo v2, "Attempt to obtain subject failed!"

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_1

    .line 529
    .end local v8    # "e":Ljava/security/PrivilegedActionException;
    .end local v17    # "subject":Ljavax/security/auth/Subject;
    .restart local v13    # "principals":Ljava/util/Set;, "Ljava/util/Set<Ljava/security/Principal;>;"
    :cond_10
    sget-object v1, Lsun/security/ssl/ClientHandshaker;->debug:Lsun/security/ssl/Debug;

    if-eqz v1, :cond_11

    const-string/jumbo v1, "session"

    invoke-static {v1}, Lsun/security/ssl/Debug;->isOn(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_11

    .line 530
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string/jumbo v2, "Subject identity is same"

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 544
    .end local v11    # "localPrincipal":Ljava/security/Principal;
    .end local v13    # "principals":Ljava/util/Set;, "Ljava/util/Set<Ljava/security/Principal;>;"
    :cond_11
    const/4 v1, 0x1

    move-object/from16 v0, p0

    iput-boolean v1, v0, Lsun/security/ssl/Handshaker;->resumingSession:Z

    .line 545
    const/16 v1, 0x13

    move-object/from16 v0, p0

    iput v1, v0, Lsun/security/ssl/Handshaker;->state:I

    .line 546
    move-object/from16 v0, p0

    iget-object v1, v0, Lsun/security/ssl/Handshaker;->session:Lsun/security/ssl/SSLSessionImpl;

    invoke-virtual {v1}, Lsun/security/ssl/SSLSessionImpl;->getMasterSecret()Ljavax/crypto/SecretKey;

    move-result-object v1

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lsun/security/ssl/Handshaker;->calculateConnectionKeys(Ljavax/crypto/SecretKey;)V

    .line 547
    sget-object v1, Lsun/security/ssl/ClientHandshaker;->debug:Lsun/security/ssl/Debug;

    if-eqz v1, :cond_12

    const-string/jumbo v1, "session"

    invoke-static {v1}, Lsun/security/ssl/Debug;->isOn(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_12

    .line 548
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "%% Server resumed "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lsun/security/ssl/Handshaker;->session:Lsun/security/ssl/SSLSessionImpl;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 560
    .end local v15    # "sessionSuite":Lsun/security/ssl/CipherSuite;
    .end local v16    # "sessionVersion":Lsun/security/ssl/ProtocolVersion;
    :cond_12
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lsun/security/ssl/Handshaker;->resumingSession:Z

    if-eqz v1, :cond_17

    move-object/from16 v0, p0

    iget-object v1, v0, Lsun/security/ssl/Handshaker;->session:Lsun/security/ssl/SSLSessionImpl;

    if-eqz v1, :cond_17

    .line 561
    move-object/from16 v0, p0

    iget-object v1, v0, Lsun/security/ssl/Handshaker;->protocolVersion:Lsun/security/ssl/ProtocolVersion;

    iget v1, v1, Lsun/security/ssl/ProtocolVersion;->v:I

    sget-object v2, Lsun/security/ssl/ProtocolVersion;->TLS12:Lsun/security/ssl/ProtocolVersion;

    iget v2, v2, Lsun/security/ssl/ProtocolVersion;->v:I

    if-lt v1, v2, :cond_13

    .line 562
    move-object/from16 v0, p0

    iget-object v1, v0, Lsun/security/ssl/Handshaker;->handshakeHash:Lsun/security/ssl/HandshakeHash;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lsun/security/ssl/HandshakeHash;->setCertificateVerifyAlg(Ljava/lang/String;)V

    .line 565
    :cond_13
    move-object/from16 v0, p0

    iget-object v1, v0, Lsun/security/ssl/Handshaker;->session:Lsun/security/ssl/SSLSessionImpl;

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lsun/security/ssl/Handshaker;->setHandshakeSessionSE(Lsun/security/ssl/SSLSessionImpl;)V

    .line 566
    return-void

    .line 533
    .restart local v11    # "localPrincipal":Ljava/security/Principal;
    .restart local v15    # "sessionSuite":Lsun/security/ssl/CipherSuite;
    .restart local v16    # "sessionVersion":Lsun/security/ssl/ProtocolVersion;
    :cond_14
    sget-object v1, Lsun/security/ssl/ClientHandshaker;->debug:Lsun/security/ssl/Debug;

    if-eqz v1, :cond_15

    const-string/jumbo v1, "session"

    invoke-static {v1}, Lsun/security/ssl/Debug;->isOn(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_15

    .line 534
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string/jumbo v2, "Kerberos credentials are not present in the current Subject; check if  javax.security.auth.useSubjectAsCreds system property has been set to false"

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 538
    :cond_15
    new-instance v1, Ljavax/net/ssl/SSLProtocolException;

    .line 539
    const-string/jumbo v2, "Server resumed session with no subject"

    .line 538
    invoke-direct {v1, v2}, Ljavax/net/ssl/SSLProtocolException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 552
    .end local v11    # "localPrincipal":Ljava/security/Principal;
    .end local v15    # "sessionSuite":Lsun/security/ssl/CipherSuite;
    .end local v16    # "sessionVersion":Lsun/security/ssl/ProtocolVersion;
    :cond_16
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput-object v1, v0, Lsun/security/ssl/Handshaker;->session:Lsun/security/ssl/SSLSessionImpl;

    .line 553
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lsun/security/ssl/Handshaker;->enableNewSession:Z

    if-nez v1, :cond_12

    .line 554
    new-instance v1, Ljavax/net/ssl/SSLException;

    .line 555
    const-string/jumbo v2, "New session creation is disabled"

    .line 554
    invoke-direct {v1, v2}, Ljavax/net/ssl/SSLException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 570
    :cond_17
    move-object/from16 v0, p1

    iget-object v1, v0, Lsun/security/ssl/HandshakeMessage$ServerHello;->extensions:Lsun/security/ssl/HelloExtensions;

    invoke-virtual {v1}, Lsun/security/ssl/HelloExtensions;->list()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .local v10, "ext$iterator":Ljava/util/Iterator;
    :cond_18
    :goto_2
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_19

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lsun/security/ssl/HelloExtension;

    .line 571
    .local v9, "ext":Lsun/security/ssl/HelloExtension;
    iget-object v0, v9, Lsun/security/ssl/HelloExtension;->type:Lsun/security/ssl/ExtensionType;

    move-object/from16 v18, v0

    .line 572
    .local v18, "type":Lsun/security/ssl/ExtensionType;
    sget-object v1, Lsun/security/ssl/ExtensionType;->EXT_ELLIPTIC_CURVES:Lsun/security/ssl/ExtensionType;

    move-object/from16 v0, v18

    if-eq v0, v1, :cond_18

    .line 573
    sget-object v1, Lsun/security/ssl/ExtensionType;->EXT_EC_POINT_FORMATS:Lsun/security/ssl/ExtensionType;

    move-object/from16 v0, v18

    if-eq v0, v1, :cond_18

    .line 574
    sget-object v1, Lsun/security/ssl/ExtensionType;->EXT_SERVER_NAME:Lsun/security/ssl/ExtensionType;

    move-object/from16 v0, v18

    if-eq v0, v1, :cond_18

    .line 575
    sget-object v1, Lsun/security/ssl/ExtensionType;->EXT_RENEGOTIATION_INFO:Lsun/security/ssl/ExtensionType;

    move-object/from16 v0, v18

    if-eq v0, v1, :cond_18

    .line 577
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Server sent an unsupported extension: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object/from16 v0, v18

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 576
    const/16 v2, 0x6e

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v1}, Lsun/security/ssl/Handshaker;->fatalSE(BLjava/lang/String;)V

    goto :goto_2

    .line 582
    .end local v9    # "ext":Lsun/security/ssl/HelloExtension;
    .end local v18    # "type":Lsun/security/ssl/ExtensionType;
    :cond_19
    new-instance v1, Lsun/security/ssl/SSLSessionImpl;

    move-object/from16 v0, p0

    iget-object v2, v0, Lsun/security/ssl/Handshaker;->protocolVersion:Lsun/security/ssl/ProtocolVersion;

    move-object/from16 v0, p0

    iget-object v3, v0, Lsun/security/ssl/Handshaker;->cipherSuite:Lsun/security/ssl/CipherSuite;

    .line 583
    invoke-virtual/range {p0 .. p0}, Lsun/security/ssl/Handshaker;->getLocalSupportedSignAlgs()Ljava/util/Collection;

    move-result-object v4

    .line 584
    move-object/from16 v0, p1

    iget-object v5, v0, Lsun/security/ssl/HandshakeMessage$ServerHello;->sessionId:Lsun/security/ssl/SessionId;

    invoke-virtual/range {p0 .. p0}, Lsun/security/ssl/Handshaker;->getHostSE()Ljava/lang/String;

    move-result-object v6

    invoke-virtual/range {p0 .. p0}, Lsun/security/ssl/Handshaker;->getPortSE()I

    move-result v7

    .line 582
    invoke-direct/range {v1 .. v7}, Lsun/security/ssl/SSLSessionImpl;-><init>(Lsun/security/ssl/ProtocolVersion;Lsun/security/ssl/CipherSuite;Ljava/util/Collection;Lsun/security/ssl/SessionId;Ljava/lang/String;I)V

    move-object/from16 v0, p0

    iput-object v1, v0, Lsun/security/ssl/Handshaker;->session:Lsun/security/ssl/SSLSessionImpl;

    .line 585
    move-object/from16 v0, p0

    iget-object v1, v0, Lsun/security/ssl/Handshaker;->session:Lsun/security/ssl/SSLSessionImpl;

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lsun/security/ssl/Handshaker;->setHandshakeSessionSE(Lsun/security/ssl/SSLSessionImpl;)V

    .line 586
    sget-object v1, Lsun/security/ssl/ClientHandshaker;->debug:Lsun/security/ssl/Debug;

    if-eqz v1, :cond_1a

    const-string/jumbo v1, "handshake"

    invoke-static {v1}, Lsun/security/ssl/Debug;->isOn(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1a

    .line 587
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "** "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lsun/security/ssl/Handshaker;->cipherSuite:Lsun/security/ssl/CipherSuite;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 373
    :cond_1a
    return-void
.end method

.method private serverHelloDone(Lsun/security/ssl/HandshakeMessage$ServerHelloDone;)V
    .locals 30
    .param p1, "mesg"    # Lsun/security/ssl/HandshakeMessage$ServerHelloDone;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 641
    sget-object v5, Lsun/security/ssl/ClientHandshaker;->debug:Lsun/security/ssl/Debug;

    if-eqz v5, :cond_0

    const-string/jumbo v5, "handshake"

    invoke-static {v5}, Lsun/security/ssl/Debug;->isOn(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 642
    sget-object v5, Ljava/lang/System;->out:Ljava/io/PrintStream;

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Lsun/security/ssl/HandshakeMessage$ServerHelloDone;->print(Ljava/io/PrintStream;)V

    .line 650
    :cond_0
    move-object/from16 v0, p0

    iget-object v5, v0, Lsun/security/ssl/Handshaker;->input:Lsun/security/ssl/HandshakeInStream;

    invoke-virtual {v5}, Lsun/security/ssl/HandshakeInStream;->digestNow()V

    .line 657
    const/16 v28, 0x0

    .line 659
    .local v28, "signingKey":Ljava/security/PrivateKey;
    move-object/from16 v0, p0

    iget-object v5, v0, Lsun/security/ssl/ClientHandshaker;->certRequest:Lsun/security/ssl/HandshakeMessage$CertificateRequest;

    if-eqz v5, :cond_a

    .line 660
    move-object/from16 v0, p0

    iget-object v5, v0, Lsun/security/ssl/Handshaker;->sslContext:Lsun/security/ssl/SSLContextImpl;

    invoke-virtual {v5}, Lsun/security/ssl/SSLContextImpl;->getX509KeyManager()Ljavax/net/ssl/X509ExtendedKeyManager;

    move-result-object v21

    .line 662
    .local v21, "km":Ljavax/net/ssl/X509ExtendedKeyManager;
    new-instance v19, Ljava/util/ArrayList;

    const/4 v5, 0x4

    move-object/from16 v0, v19

    invoke-direct {v0, v5}, Ljava/util/ArrayList;-><init>(I)V

    .line 664
    .local v19, "keytypesTmp":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v15, 0x0

    .local v15, "i":I
    :goto_0
    move-object/from16 v0, p0

    iget-object v5, v0, Lsun/security/ssl/ClientHandshaker;->certRequest:Lsun/security/ssl/HandshakeMessage$CertificateRequest;

    iget-object v5, v5, Lsun/security/ssl/HandshakeMessage$CertificateRequest;->types:[B

    array-length v5, v5

    if-ge v15, v5, :cond_4

    .line 667
    move-object/from16 v0, p0

    iget-object v5, v0, Lsun/security/ssl/ClientHandshaker;->certRequest:Lsun/security/ssl/HandshakeMessage$CertificateRequest;

    iget-object v5, v5, Lsun/security/ssl/HandshakeMessage$CertificateRequest;->types:[B

    aget-byte v5, v5, v15

    sparse-switch v5, :sswitch_data_0

    .line 690
    const/16 v29, 0x0

    .line 694
    :goto_1
    if-eqz v29, :cond_1

    move-object/from16 v0, v19

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 664
    :cond_1
    :goto_2
    add-int/lit8 v15, v15, 0x1

    goto :goto_0

    .line 669
    :sswitch_0
    const-string/jumbo v29, "RSA"

    .local v29, "typeName":Ljava/lang/String;
    goto :goto_1

    .line 673
    .end local v29    # "typeName":Ljava/lang/String;
    :sswitch_1
    const-string/jumbo v29, "DSA"

    .restart local v29    # "typeName":Ljava/lang/String;
    goto :goto_1

    .line 678
    .end local v29    # "typeName":Ljava/lang/String;
    :sswitch_2
    invoke-static {}, Lsun/security/ssl/JsseJce;->isEcAvailable()Z

    move-result v5

    if-eqz v5, :cond_2

    const-string/jumbo v29, "EC"

    .restart local v29    # "typeName":Ljava/lang/String;
    goto :goto_1

    .end local v29    # "typeName":Ljava/lang/String;
    :cond_2
    const/16 v29, 0x0

    .local v29, "typeName":Ljava/lang/String;
    goto :goto_1

    .line 695
    .end local v29    # "typeName":Ljava/lang/String;
    :cond_3
    move-object/from16 v0, v19

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 699
    :cond_4
    const/4 v11, 0x0

    .line 700
    .local v11, "alias":Ljava/lang/String;
    invoke-virtual/range {v19 .. v19}, Ljava/util/ArrayList;->size()I

    move-result v20

    .line 701
    .local v20, "keytypesTmpSize":I
    if-eqz v20, :cond_5

    .line 703
    move/from16 v0, v20

    new-array v5, v0, [Ljava/lang/String;

    move-object/from16 v0, v19

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v18

    check-cast v18, [Ljava/lang/String;

    .line 705
    .local v18, "keytypes":[Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v5, v0, Lsun/security/ssl/Handshaker;->conn:Lsun/security/ssl/SSLSocketImpl;

    if-eqz v5, :cond_b

    .line 707
    move-object/from16 v0, p0

    iget-object v5, v0, Lsun/security/ssl/ClientHandshaker;->certRequest:Lsun/security/ssl/HandshakeMessage$CertificateRequest;

    invoke-virtual {v5}, Lsun/security/ssl/HandshakeMessage$CertificateRequest;->getAuthorities()[Ljavax/security/auth/x500/X500Principal;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lsun/security/ssl/Handshaker;->conn:Lsun/security/ssl/SSLSocketImpl;

    .line 706
    move-object/from16 v0, v21

    move-object/from16 v1, v18

    invoke-virtual {v0, v1, v5, v6}, Ljavax/net/ssl/X509ExtendedKeyManager;->chooseClientAlias([Ljava/lang/String;[Ljava/security/Principal;Ljava/net/Socket;)Ljava/lang/String;

    move-result-object v11

    .line 714
    .end local v11    # "alias":Ljava/lang/String;
    .end local v18    # "keytypes":[Ljava/lang/String;
    :cond_5
    :goto_3
    const/16 v22, 0x0

    .line 715
    .local v22, "m1":Lsun/security/ssl/HandshakeMessage$CertificateMsg;
    if-eqz v11, :cond_7

    .line 716
    move-object/from16 v0, v21

    invoke-virtual {v0, v11}, Ljavax/net/ssl/X509ExtendedKeyManager;->getCertificateChain(Ljava/lang/String;)[Ljava/security/cert/X509Certificate;

    move-result-object v12

    .line 717
    .local v12, "certs":[Ljava/security/cert/X509Certificate;
    if-eqz v12, :cond_7

    array-length v5, v12

    if-eqz v5, :cond_7

    .line 718
    const/4 v5, 0x0

    aget-object v5, v12, v5

    invoke-virtual {v5}, Ljava/security/cert/Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v26

    .line 720
    .local v26, "publicKey":Ljava/security/PublicKey;
    move-object/from16 v0, v26

    instance-of v5, v0, Ljava/security/interfaces/ECPublicKey;

    if-eqz v5, :cond_6

    move-object/from16 v5, v26

    .line 722
    check-cast v5, Ljava/security/interfaces/ECPublicKey;

    invoke-interface {v5}, Ljava/security/interfaces/ECPublicKey;->getParams()Ljava/security/spec/ECParameterSpec;

    move-result-object v24

    .line 724
    .local v24, "params":Ljava/security/spec/ECParameterSpec;
    invoke-static/range {v24 .. v24}, Lsun/security/ssl/SupportedEllipticCurvesExtension;->getCurveIndex(Ljava/security/spec/ECParameterSpec;)I

    move-result v16

    .line 726
    .local v16, "index":I
    invoke-static/range {v16 .. v16}, Lsun/security/ssl/SupportedEllipticCurvesExtension;->isSupported(I)Z

    move-result v5

    if-nez v5, :cond_6

    .line 728
    const/16 v26, 0x0

    .line 731
    .end local v16    # "index":I
    .end local v24    # "params":Ljava/security/spec/ECParameterSpec;
    .end local v26    # "publicKey":Ljava/security/PublicKey;
    :cond_6
    if-eqz v26, :cond_7

    .line 732
    new-instance v22, Lsun/security/ssl/HandshakeMessage$CertificateMsg;

    .end local v22    # "m1":Lsun/security/ssl/HandshakeMessage$CertificateMsg;
    move-object/from16 v0, v22

    invoke-direct {v0, v12}, Lsun/security/ssl/HandshakeMessage$CertificateMsg;-><init>([Ljava/security/cert/X509Certificate;)V

    .line 733
    .local v22, "m1":Lsun/security/ssl/HandshakeMessage$CertificateMsg;
    move-object/from16 v0, v21

    invoke-virtual {v0, v11}, Ljavax/net/ssl/X509ExtendedKeyManager;->getPrivateKey(Ljava/lang/String;)Ljava/security/PrivateKey;

    move-result-object v28

    .line 734
    .local v28, "signingKey":Ljava/security/PrivateKey;
    move-object/from16 v0, p0

    iget-object v5, v0, Lsun/security/ssl/Handshaker;->session:Lsun/security/ssl/SSLSessionImpl;

    move-object/from16 v0, v28

    invoke-virtual {v5, v0}, Lsun/security/ssl/SSLSessionImpl;->setLocalPrivateKey(Ljava/security/PrivateKey;)V

    .line 735
    move-object/from16 v0, p0

    iget-object v5, v0, Lsun/security/ssl/Handshaker;->session:Lsun/security/ssl/SSLSessionImpl;

    invoke-virtual {v5, v12}, Lsun/security/ssl/SSLSessionImpl;->setLocalCertificates([Ljava/security/cert/X509Certificate;)V

    .line 739
    .end local v12    # "certs":[Ljava/security/cert/X509Certificate;
    .end local v22    # "m1":Lsun/security/ssl/HandshakeMessage$CertificateMsg;
    .end local v28    # "signingKey":Ljava/security/PrivateKey;
    :cond_7
    if-nez v22, :cond_8

    .line 745
    move-object/from16 v0, p0

    iget-object v5, v0, Lsun/security/ssl/Handshaker;->protocolVersion:Lsun/security/ssl/ProtocolVersion;

    iget v5, v5, Lsun/security/ssl/ProtocolVersion;->v:I

    sget-object v6, Lsun/security/ssl/ProtocolVersion;->TLS10:Lsun/security/ssl/ProtocolVersion;

    iget v6, v6, Lsun/security/ssl/ProtocolVersion;->v:I

    if-lt v5, v6, :cond_c

    .line 746
    new-instance v22, Lsun/security/ssl/HandshakeMessage$CertificateMsg;

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/security/cert/X509Certificate;

    move-object/from16 v0, v22

    invoke-direct {v0, v5}, Lsun/security/ssl/HandshakeMessage$CertificateMsg;-><init>([Ljava/security/cert/X509Certificate;)V

    .line 755
    :cond_8
    :goto_4
    if-eqz v22, :cond_a

    .line 756
    sget-object v5, Lsun/security/ssl/ClientHandshaker;->debug:Lsun/security/ssl/Debug;

    if-eqz v5, :cond_9

    const-string/jumbo v5, "handshake"

    invoke-static {v5}, Lsun/security/ssl/Debug;->isOn(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_9

    .line 757
    sget-object v5, Ljava/lang/System;->out:Ljava/io/PrintStream;

    move-object/from16 v0, v22

    invoke-virtual {v0, v5}, Lsun/security/ssl/HandshakeMessage$CertificateMsg;->print(Ljava/io/PrintStream;)V

    .line 759
    :cond_9
    move-object/from16 v0, p0

    iget-object v5, v0, Lsun/security/ssl/Handshaker;->output:Lsun/security/ssl/HandshakeOutStream;

    move-object/from16 v0, v22

    invoke-virtual {v0, v5}, Lsun/security/ssl/HandshakeMessage;->write(Lsun/security/ssl/HandshakeOutStream;)V

    .line 770
    .end local v15    # "i":I
    .end local v19    # "keytypesTmp":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v20    # "keytypesTmpSize":I
    .end local v21    # "km":Ljavax/net/ssl/X509ExtendedKeyManager;
    :cond_a
    invoke-static {}, Lsun/security/ssl/ClientHandshaker;->-getsun-security-ssl-CipherSuite$KeyExchangeSwitchesValues()[I

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lsun/security/ssl/Handshaker;->keyExchange:Lsun/security/ssl/CipherSuite$KeyExchange;

    invoke-virtual {v6}, Ljava/lang/Enum;->ordinal()I

    move-result v6

    aget v5, v5, v6

    packed-switch v5, :pswitch_data_0

    .line 884
    new-instance v5, Ljava/lang/RuntimeException;

    .line 885
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Unsupported key exchange: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v7, v0, Lsun/security/ssl/Handshaker;->keyExchange:Lsun/security/ssl/CipherSuite$KeyExchange;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 884
    invoke-direct {v5, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 710
    .restart local v11    # "alias":Ljava/lang/String;
    .restart local v15    # "i":I
    .restart local v18    # "keytypes":[Ljava/lang/String;
    .restart local v19    # "keytypesTmp":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v20    # "keytypesTmpSize":I
    .restart local v21    # "km":Ljavax/net/ssl/X509ExtendedKeyManager;
    .local v28, "signingKey":Ljava/security/PrivateKey;
    :cond_b
    move-object/from16 v0, p0

    iget-object v5, v0, Lsun/security/ssl/ClientHandshaker;->certRequest:Lsun/security/ssl/HandshakeMessage$CertificateRequest;

    invoke-virtual {v5}, Lsun/security/ssl/HandshakeMessage$CertificateRequest;->getAuthorities()[Ljavax/security/auth/x500/X500Principal;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lsun/security/ssl/Handshaker;->engine:Lsun/security/ssl/SSLEngineImpl;

    .line 709
    move-object/from16 v0, v21

    move-object/from16 v1, v18

    invoke-virtual {v0, v1, v5, v6}, Ljavax/net/ssl/X509ExtendedKeyManager;->chooseEngineClientAlias([Ljava/lang/String;[Ljava/security/Principal;Ljavax/net/ssl/SSLEngine;)Ljava/lang/String;

    move-result-object v11

    .local v11, "alias":Ljava/lang/String;
    goto/16 :goto_3

    .line 748
    .end local v11    # "alias":Ljava/lang/String;
    .end local v18    # "keytypes":[Ljava/lang/String;
    .end local v28    # "signingKey":Ljava/security/PrivateKey;
    :cond_c
    const/16 v5, 0x29

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lsun/security/ssl/Handshaker;->warningSE(B)V

    goto :goto_4

    .line 774
    .end local v15    # "i":I
    .end local v19    # "keytypesTmp":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v20    # "keytypesTmpSize":I
    .end local v21    # "km":Ljavax/net/ssl/X509ExtendedKeyManager;
    :pswitch_0
    move-object/from16 v0, p0

    iget-object v5, v0, Lsun/security/ssl/ClientHandshaker;->serverKey:Ljava/security/PublicKey;

    if-nez v5, :cond_d

    .line 775
    new-instance v5, Ljavax/net/ssl/SSLProtocolException;

    .line 776
    const-string/jumbo v6, "Server did not send certificate message"

    .line 775
    invoke-direct {v5, v6}, Ljavax/net/ssl/SSLProtocolException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 779
    :cond_d
    move-object/from16 v0, p0

    iget-object v5, v0, Lsun/security/ssl/ClientHandshaker;->serverKey:Ljava/security/PublicKey;

    instance-of v5, v5, Ljava/security/interfaces/RSAPublicKey;

    if-nez v5, :cond_e

    .line 780
    new-instance v5, Ljavax/net/ssl/SSLProtocolException;

    .line 781
    const-string/jumbo v6, "Server certificate does not include an RSA key"

    .line 780
    invoke-direct {v5, v6}, Ljavax/net/ssl/SSLProtocolException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 799
    :cond_e
    move-object/from16 v0, p0

    iget-object v5, v0, Lsun/security/ssl/Handshaker;->keyExchange:Lsun/security/ssl/CipherSuite$KeyExchange;

    sget-object v6, Lsun/security/ssl/CipherSuite$KeyExchange;->K_RSA:Lsun/security/ssl/CipherSuite$KeyExchange;

    if-ne v5, v6, :cond_10

    .line 800
    move-object/from16 v0, p0

    iget-object v0, v0, Lsun/security/ssl/ClientHandshaker;->serverKey:Ljava/security/PublicKey;

    move-object/from16 v17, v0

    .line 815
    .local v17, "key":Ljava/security/PublicKey;
    :goto_5
    new-instance v23, Lsun/security/ssl/RSAClientKeyExchange;

    move-object/from16 v0, p0

    iget-object v5, v0, Lsun/security/ssl/Handshaker;->protocolVersion:Lsun/security/ssl/ProtocolVersion;

    move-object/from16 v0, p0

    iget-object v6, v0, Lsun/security/ssl/ClientHandshaker;->maxProtocolVersion:Lsun/security/ssl/ProtocolVersion;

    .line 816
    move-object/from16 v0, p0

    iget-object v7, v0, Lsun/security/ssl/Handshaker;->sslContext:Lsun/security/ssl/SSLContextImpl;

    invoke-virtual {v7}, Lsun/security/ssl/SSLContextImpl;->getSecureRandom()Ljava/security/SecureRandom;

    move-result-object v7

    .line 815
    move-object/from16 v0, v23

    move-object/from16 v1, v17

    invoke-direct {v0, v5, v6, v7, v1}, Lsun/security/ssl/RSAClientKeyExchange;-><init>(Lsun/security/ssl/ProtocolVersion;Lsun/security/ssl/ProtocolVersion;Ljava/security/SecureRandom;Ljava/security/PublicKey;)V

    .line 887
    .end local v17    # "key":Ljava/security/PublicKey;
    .local v23, "m2":Lsun/security/ssl/HandshakeMessage;
    :goto_6
    sget-object v5, Lsun/security/ssl/ClientHandshaker;->debug:Lsun/security/ssl/Debug;

    if-eqz v5, :cond_f

    const-string/jumbo v5, "handshake"

    invoke-static {v5}, Lsun/security/ssl/Debug;->isOn(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_f

    .line 888
    sget-object v5, Ljava/lang/System;->out:Ljava/io/PrintStream;

    move-object/from16 v0, v23

    invoke-virtual {v0, v5}, Lsun/security/ssl/HandshakeMessage;->print(Ljava/io/PrintStream;)V

    .line 890
    :cond_f
    move-object/from16 v0, p0

    iget-object v5, v0, Lsun/security/ssl/Handshaker;->output:Lsun/security/ssl/HandshakeOutStream;

    move-object/from16 v0, v23

    invoke-virtual {v0, v5}, Lsun/security/ssl/HandshakeMessage;->write(Lsun/security/ssl/HandshakeOutStream;)V

    .line 902
    move-object/from16 v0, p0

    iget-object v5, v0, Lsun/security/ssl/Handshaker;->output:Lsun/security/ssl/HandshakeOutStream;

    invoke-virtual {v5}, Lsun/security/ssl/HandshakeOutStream;->doHashes()V

    .line 903
    move-object/from16 v0, p0

    iget-object v5, v0, Lsun/security/ssl/Handshaker;->output:Lsun/security/ssl/HandshakeOutStream;

    invoke-virtual {v5}, Lsun/security/ssl/HandshakeOutStream;->flush()V

    .line 913
    invoke-static {}, Lsun/security/ssl/ClientHandshaker;->-getsun-security-ssl-CipherSuite$KeyExchangeSwitchesValues()[I

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lsun/security/ssl/Handshaker;->keyExchange:Lsun/security/ssl/CipherSuite$KeyExchange;

    invoke-virtual {v6}, Ljava/lang/Enum;->ordinal()I

    move-result v6

    aget v5, v5, v6

    packed-switch v5, :pswitch_data_1

    .line 940
    :pswitch_1
    new-instance v5, Ljava/io/IOException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Internal error: unknown key exchange "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 941
    move-object/from16 v0, p0

    iget-object v7, v0, Lsun/security/ssl/Handshaker;->keyExchange:Lsun/security/ssl/CipherSuite$KeyExchange;

    .line 940
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 802
    .end local v23    # "m2":Lsun/security/ssl/HandshakeMessage;
    :cond_10
    move-object/from16 v0, p0

    iget-object v5, v0, Lsun/security/ssl/ClientHandshaker;->serverKey:Ljava/security/PublicKey;

    invoke-static {v5}, Lsun/security/ssl/JsseJce;->getRSAKeyLength(Ljava/security/PublicKey;)I

    move-result v5

    const/16 v6, 0x200

    if-gt v5, v6, :cond_11

    .line 805
    move-object/from16 v0, p0

    iget-object v0, v0, Lsun/security/ssl/ClientHandshaker;->serverKey:Ljava/security/PublicKey;

    move-object/from16 v17, v0

    .restart local v17    # "key":Ljava/security/PublicKey;
    goto/16 :goto_5

    .line 807
    .end local v17    # "key":Ljava/security/PublicKey;
    :cond_11
    move-object/from16 v0, p0

    iget-object v5, v0, Lsun/security/ssl/ClientHandshaker;->ephemeralServerKey:Ljava/security/PublicKey;

    if-nez v5, :cond_12

    .line 808
    new-instance v5, Ljavax/net/ssl/SSLProtocolException;

    const-string/jumbo v6, "Server did not send a RSA_EXPORT Server Key Exchange message"

    invoke-direct {v5, v6}, Ljavax/net/ssl/SSLProtocolException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 811
    :cond_12
    move-object/from16 v0, p0

    iget-object v0, v0, Lsun/security/ssl/ClientHandshaker;->ephemeralServerKey:Ljava/security/PublicKey;

    move-object/from16 v17, v0

    .restart local v17    # "key":Ljava/security/PublicKey;
    goto/16 :goto_5

    .line 832
    .end local v17    # "key":Ljava/security/PublicKey;
    :pswitch_2
    new-instance v23, Lsun/security/ssl/DHClientKeyExchange;

    invoke-direct/range {v23 .. v23}, Lsun/security/ssl/DHClientKeyExchange;-><init>()V

    .line 833
    .restart local v23    # "m2":Lsun/security/ssl/HandshakeMessage;
    goto/16 :goto_6

    .line 837
    .end local v23    # "m2":Lsun/security/ssl/HandshakeMessage;
    :pswitch_3
    move-object/from16 v0, p0

    iget-object v5, v0, Lsun/security/ssl/ClientHandshaker;->dh:Lsun/security/ssl/DHCrypt;

    if-nez v5, :cond_13

    .line 838
    new-instance v5, Ljavax/net/ssl/SSLProtocolException;

    .line 839
    const-string/jumbo v6, "Server did not send a DH Server Key Exchange message"

    .line 838
    invoke-direct {v5, v6}, Ljavax/net/ssl/SSLProtocolException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 841
    :cond_13
    new-instance v23, Lsun/security/ssl/DHClientKeyExchange;

    move-object/from16 v0, p0

    iget-object v5, v0, Lsun/security/ssl/ClientHandshaker;->dh:Lsun/security/ssl/DHCrypt;

    invoke-virtual {v5}, Lsun/security/ssl/DHCrypt;->getPublicKey()Ljava/math/BigInteger;

    move-result-object v5

    move-object/from16 v0, v23

    invoke-direct {v0, v5}, Lsun/security/ssl/DHClientKeyExchange;-><init>(Ljava/math/BigInteger;)V

    .line 842
    .restart local v23    # "m2":Lsun/security/ssl/HandshakeMessage;
    goto/16 :goto_6

    .line 846
    .end local v23    # "m2":Lsun/security/ssl/HandshakeMessage;
    :pswitch_4
    move-object/from16 v0, p0

    iget-object v5, v0, Lsun/security/ssl/ClientHandshaker;->ecdh:Lsun/security/ssl/ECDHCrypt;

    if-nez v5, :cond_14

    .line 847
    new-instance v5, Ljavax/net/ssl/SSLProtocolException;

    .line 848
    const-string/jumbo v6, "Server did not send a ECDH Server Key Exchange message"

    .line 847
    invoke-direct {v5, v6}, Ljavax/net/ssl/SSLProtocolException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 850
    :cond_14
    new-instance v23, Lsun/security/ssl/ECDHClientKeyExchange;

    move-object/from16 v0, p0

    iget-object v5, v0, Lsun/security/ssl/ClientHandshaker;->ecdh:Lsun/security/ssl/ECDHCrypt;

    invoke-virtual {v5}, Lsun/security/ssl/ECDHCrypt;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v5

    move-object/from16 v0, v23

    invoke-direct {v0, v5}, Lsun/security/ssl/ECDHClientKeyExchange;-><init>(Ljava/security/PublicKey;)V

    .line 851
    .restart local v23    # "m2":Lsun/security/ssl/HandshakeMessage;
    goto/16 :goto_6

    .line 854
    .end local v23    # "m2":Lsun/security/ssl/HandshakeMessage;
    :pswitch_5
    move-object/from16 v0, p0

    iget-object v5, v0, Lsun/security/ssl/ClientHandshaker;->serverKey:Ljava/security/PublicKey;

    if-nez v5, :cond_15

    .line 855
    new-instance v5, Ljavax/net/ssl/SSLProtocolException;

    .line 856
    const-string/jumbo v6, "Server did not send certificate message"

    .line 855
    invoke-direct {v5, v6}, Ljavax/net/ssl/SSLProtocolException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 858
    :cond_15
    move-object/from16 v0, p0

    iget-object v5, v0, Lsun/security/ssl/ClientHandshaker;->serverKey:Ljava/security/PublicKey;

    instance-of v5, v5, Ljava/security/interfaces/ECPublicKey;

    if-nez v5, :cond_16

    .line 859
    new-instance v5, Ljavax/net/ssl/SSLProtocolException;

    .line 860
    const-string/jumbo v6, "Server certificate does not include an EC key"

    .line 859
    invoke-direct {v5, v6}, Ljavax/net/ssl/SSLProtocolException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 862
    :cond_16
    move-object/from16 v0, p0

    iget-object v5, v0, Lsun/security/ssl/ClientHandshaker;->serverKey:Ljava/security/PublicKey;

    check-cast v5, Ljava/security/interfaces/ECPublicKey;

    invoke-interface {v5}, Ljava/security/interfaces/ECPublicKey;->getParams()Ljava/security/spec/ECParameterSpec;

    move-result-object v24

    .line 863
    .restart local v24    # "params":Ljava/security/spec/ECParameterSpec;
    new-instance v5, Lsun/security/ssl/ECDHCrypt;

    move-object/from16 v0, p0

    iget-object v6, v0, Lsun/security/ssl/Handshaker;->sslContext:Lsun/security/ssl/SSLContextImpl;

    invoke-virtual {v6}, Lsun/security/ssl/SSLContextImpl;->getSecureRandom()Ljava/security/SecureRandom;

    move-result-object v6

    move-object/from16 v0, v24

    invoke-direct {v5, v0, v6}, Lsun/security/ssl/ECDHCrypt;-><init>(Ljava/security/spec/ECParameterSpec;Ljava/security/SecureRandom;)V

    move-object/from16 v0, p0

    iput-object v5, v0, Lsun/security/ssl/ClientHandshaker;->ecdh:Lsun/security/ssl/ECDHCrypt;

    .line 864
    new-instance v23, Lsun/security/ssl/ECDHClientKeyExchange;

    move-object/from16 v0, p0

    iget-object v5, v0, Lsun/security/ssl/ClientHandshaker;->ecdh:Lsun/security/ssl/ECDHCrypt;

    invoke-virtual {v5}, Lsun/security/ssl/ECDHCrypt;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v5

    move-object/from16 v0, v23

    invoke-direct {v0, v5}, Lsun/security/ssl/ECDHClientKeyExchange;-><init>(Ljava/security/PublicKey;)V

    .line 865
    .restart local v23    # "m2":Lsun/security/ssl/HandshakeMessage;
    goto/16 :goto_6

    .line 868
    .end local v23    # "m2":Lsun/security/ssl/HandshakeMessage;
    .end local v24    # "params":Ljava/security/spec/ECParameterSpec;
    :pswitch_6
    invoke-virtual/range {p0 .. p0}, Lsun/security/ssl/Handshaker;->getHostSE()Ljava/lang/String;

    move-result-object v3

    .line 869
    .local v3, "hostname":Ljava/lang/String;
    if-nez v3, :cond_17

    .line 870
    new-instance v5, Ljava/io/IOException;

    const-string/jumbo v6, "Hostname is required to use Kerberos cipher suites"

    invoke-direct {v5, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 874
    :cond_17
    new-instance v2, Lsun/security/ssl/KerberosClientKeyExchange;

    .line 875
    invoke-virtual/range {p0 .. p0}, Lsun/security/ssl/Handshaker;->isLoopbackSE()Z

    move-result v4

    invoke-virtual/range {p0 .. p0}, Lsun/security/ssl/Handshaker;->getAccSE()Ljava/security/AccessControlContext;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lsun/security/ssl/Handshaker;->protocolVersion:Lsun/security/ssl/ProtocolVersion;

    .line 876
    move-object/from16 v0, p0

    iget-object v7, v0, Lsun/security/ssl/Handshaker;->sslContext:Lsun/security/ssl/SSLContextImpl;

    invoke-virtual {v7}, Lsun/security/ssl/SSLContextImpl;->getSecureRandom()Ljava/security/SecureRandom;

    move-result-object v7

    .line 874
    invoke-direct/range {v2 .. v7}, Lsun/security/ssl/KerberosClientKeyExchange;-><init>(Ljava/lang/String;ZLjava/security/AccessControlContext;Lsun/security/ssl/ProtocolVersion;Ljava/security/SecureRandom;)V

    .line 878
    .local v2, "kerberosMsg":Lsun/security/ssl/KerberosClientKeyExchange;
    move-object/from16 v0, p0

    iget-object v5, v0, Lsun/security/ssl/Handshaker;->session:Lsun/security/ssl/SSLSessionImpl;

    invoke-virtual {v2}, Lsun/security/ssl/KerberosClientKeyExchange;->getPeerPrincipal()Ljava/security/Principal;

    move-result-object v6

    invoke-virtual {v5, v6}, Lsun/security/ssl/SSLSessionImpl;->setPeerPrincipal(Ljava/security/Principal;)V

    .line 879
    move-object/from16 v0, p0

    iget-object v5, v0, Lsun/security/ssl/Handshaker;->session:Lsun/security/ssl/SSLSessionImpl;

    invoke-virtual {v2}, Lsun/security/ssl/KerberosClientKeyExchange;->getLocalPrincipal()Ljava/security/Principal;

    move-result-object v6

    invoke-virtual {v5, v6}, Lsun/security/ssl/SSLSessionImpl;->setLocalPrincipal(Ljava/security/Principal;)V

    .line 880
    move-object/from16 v23, v2

    .line 881
    .restart local v23    # "m2":Lsun/security/ssl/HandshakeMessage;
    goto/16 :goto_6

    .line 916
    .end local v2    # "kerberosMsg":Lsun/security/ssl/KerberosClientKeyExchange;
    .end local v3    # "hostname":Ljava/lang/String;
    :pswitch_7
    check-cast v23, Lsun/security/ssl/RSAClientKeyExchange;

    .end local v23    # "m2":Lsun/security/ssl/HandshakeMessage;
    move-object/from16 v0, v23

    iget-object v0, v0, Lsun/security/ssl/RSAClientKeyExchange;->preMaster:Ljavax/crypto/SecretKey;

    move-object/from16 v25, v0

    .line 944
    .local v25, "preMasterSecret":Ljavax/crypto/SecretKey;
    :goto_7
    const/4 v5, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-virtual {v0, v1, v5}, Lsun/security/ssl/Handshaker;->calculateKeys(Ljavax/crypto/SecretKey;Lsun/security/ssl/ProtocolVersion;)V

    .line 956
    if-eqz v28, :cond_1e

    .line 959
    const/4 v10, 0x0

    .line 960
    .local v10, "preferableSignatureAlgorithm":Lsun/security/ssl/SignatureAndHashAlgorithm;
    :try_start_0
    move-object/from16 v0, p0

    iget-object v5, v0, Lsun/security/ssl/Handshaker;->protocolVersion:Lsun/security/ssl/ProtocolVersion;

    iget v5, v5, Lsun/security/ssl/ProtocolVersion;->v:I

    sget-object v6, Lsun/security/ssl/ProtocolVersion;->TLS12:Lsun/security/ssl/ProtocolVersion;

    iget v6, v6, Lsun/security/ssl/ProtocolVersion;->v:I

    if-lt v5, v6, :cond_1d

    .line 963
    move-object/from16 v0, p0

    iget-object v5, v0, Lsun/security/ssl/Handshaker;->peerSupportedSignAlgs:Ljava/util/Collection;

    invoke-interface/range {v28 .. v28}, Ljava/security/PrivateKey;->getAlgorithm()Ljava/lang/String;

    move-result-object v6

    .line 962
    move-object/from16 v0, v28

    invoke-static {v5, v6, v0}, Lsun/security/ssl/SignatureAndHashAlgorithm;->getPreferableAlgorithm(Ljava/util/Collection;Ljava/lang/String;Ljava/security/PrivateKey;)Lsun/security/ssl/SignatureAndHashAlgorithm;

    move-result-object v10

    .line 966
    .local v10, "preferableSignatureAlgorithm":Lsun/security/ssl/SignatureAndHashAlgorithm;
    if-nez v10, :cond_1a

    .line 967
    new-instance v5, Ljavax/net/ssl/SSLHandshakeException;

    .line 968
    const-string/jumbo v6, "No supported signature algorithm"

    .line 967
    invoke-direct {v5, v6}, Ljavax/net/ssl/SSLHandshakeException;-><init>(Ljava/lang/String;)V

    throw v5
    :try_end_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 986
    .end local v10    # "preferableSignatureAlgorithm":Lsun/security/ssl/SignatureAndHashAlgorithm;
    :catch_0
    move-exception v13

    .line 988
    .local v13, "e":Ljava/security/GeneralSecurityException;
    const-string/jumbo v5, "Error signing certificate verify"

    .line 987
    const/16 v6, 0x28

    move-object/from16 v0, p0

    invoke-virtual {v0, v6, v5, v13}, Lsun/security/ssl/Handshaker;->fatalSE(BLjava/lang/String;Ljava/lang/Throwable;)V

    .line 990
    const/4 v4, 0x0

    .line 992
    .end local v13    # "e":Ljava/security/GeneralSecurityException;
    :goto_8
    sget-object v5, Lsun/security/ssl/ClientHandshaker;->debug:Lsun/security/ssl/Debug;

    if-eqz v5, :cond_18

    const-string/jumbo v5, "handshake"

    invoke-static {v5}, Lsun/security/ssl/Debug;->isOn(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_18

    .line 993
    sget-object v5, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v4, v5}, Lsun/security/ssl/HandshakeMessage$CertificateVerify;->print(Ljava/io/PrintStream;)V

    .line 995
    :cond_18
    move-object/from16 v0, p0

    iget-object v5, v0, Lsun/security/ssl/Handshaker;->output:Lsun/security/ssl/HandshakeOutStream;

    invoke-virtual {v4, v5}, Lsun/security/ssl/HandshakeMessage;->write(Lsun/security/ssl/HandshakeOutStream;)V

    .line 996
    move-object/from16 v0, p0

    iget-object v5, v0, Lsun/security/ssl/Handshaker;->output:Lsun/security/ssl/HandshakeOutStream;

    invoke-virtual {v5}, Lsun/security/ssl/HandshakeOutStream;->doHashes()V

    .line 1006
    :cond_19
    :goto_9
    const/4 v5, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lsun/security/ssl/ClientHandshaker;->sendChangeCipherAndFinish(Z)V

    .line 640
    return-void

    .line 921
    .end local v25    # "preMasterSecret":Ljavax/crypto/SecretKey;
    .restart local v23    # "m2":Lsun/security/ssl/HandshakeMessage;
    :pswitch_8
    check-cast v23, Lsun/security/ssl/KerberosClientKeyExchange;

    .end local v23    # "m2":Lsun/security/ssl/HandshakeMessage;
    invoke-virtual/range {v23 .. v23}, Lsun/security/ssl/KerberosClientKeyExchange;->getUnencryptedPreMasterSecret()[B

    move-result-object v27

    .line 922
    .local v27, "secretBytes":[B
    new-instance v25, Ljavax/crypto/spec/SecretKeySpec;

    .line 923
    const-string/jumbo v5, "TlsPremasterSecret"

    .line 922
    move-object/from16 v0, v25

    move-object/from16 v1, v27

    invoke-direct {v0, v1, v5}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 924
    .restart local v25    # "preMasterSecret":Ljavax/crypto/SecretKey;
    goto :goto_7

    .line 928
    .end local v25    # "preMasterSecret":Ljavax/crypto/SecretKey;
    .end local v27    # "secretBytes":[B
    .restart local v23    # "m2":Lsun/security/ssl/HandshakeMessage;
    :pswitch_9
    move-object/from16 v0, p0

    iget-object v5, v0, Lsun/security/ssl/ClientHandshaker;->dh:Lsun/security/ssl/DHCrypt;

    move-object/from16 v0, p0

    iget-object v6, v0, Lsun/security/ssl/ClientHandshaker;->serverDH:Ljava/math/BigInteger;

    const/4 v7, 0x1

    invoke-virtual {v5, v6, v7}, Lsun/security/ssl/DHCrypt;->getAgreedSecret(Ljava/math/BigInteger;Z)Ljavax/crypto/SecretKey;

    move-result-object v25

    .restart local v25    # "preMasterSecret":Ljavax/crypto/SecretKey;
    goto/16 :goto_7

    .line 933
    .end local v25    # "preMasterSecret":Ljavax/crypto/SecretKey;
    :pswitch_a
    move-object/from16 v0, p0

    iget-object v5, v0, Lsun/security/ssl/ClientHandshaker;->ecdh:Lsun/security/ssl/ECDHCrypt;

    move-object/from16 v0, p0

    iget-object v6, v0, Lsun/security/ssl/ClientHandshaker;->ephemeralServerKey:Ljava/security/PublicKey;

    invoke-virtual {v5, v6}, Lsun/security/ssl/ECDHCrypt;->getAgreedSecret(Ljava/security/PublicKey;)Ljavax/crypto/SecretKey;

    move-result-object v25

    .restart local v25    # "preMasterSecret":Ljavax/crypto/SecretKey;
    goto/16 :goto_7

    .line 937
    .end local v25    # "preMasterSecret":Ljavax/crypto/SecretKey;
    :pswitch_b
    move-object/from16 v0, p0

    iget-object v5, v0, Lsun/security/ssl/ClientHandshaker;->ecdh:Lsun/security/ssl/ECDHCrypt;

    move-object/from16 v0, p0

    iget-object v6, v0, Lsun/security/ssl/ClientHandshaker;->serverKey:Ljava/security/PublicKey;

    invoke-virtual {v5, v6}, Lsun/security/ssl/ECDHCrypt;->getAgreedSecret(Ljava/security/PublicKey;)Ljavax/crypto/SecretKey;

    move-result-object v25

    .restart local v25    # "preMasterSecret":Ljavax/crypto/SecretKey;
    goto/16 :goto_7

    .line 972
    .end local v23    # "m2":Lsun/security/ssl/HandshakeMessage;
    .restart local v10    # "preferableSignatureAlgorithm":Lsun/security/ssl/SignatureAndHashAlgorithm;
    :cond_1a
    :try_start_1
    invoke-static {v10}, Lsun/security/ssl/SignatureAndHashAlgorithm;->getHashAlgorithmName(Lsun/security/ssl/SignatureAndHashAlgorithm;)Ljava/lang/String;

    move-result-object v14

    .line 974
    .local v14, "hashAlg":Ljava/lang/String;
    if-eqz v14, :cond_1b

    invoke-virtual {v14}, Ljava/lang/String;->length()I

    move-result v5

    if-nez v5, :cond_1c

    .line 975
    :cond_1b
    new-instance v5, Ljavax/net/ssl/SSLHandshakeException;

    .line 976
    const-string/jumbo v6, "No supported hash algorithm"

    .line 975
    invoke-direct {v5, v6}, Ljavax/net/ssl/SSLHandshakeException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 979
    :cond_1c
    move-object/from16 v0, p0

    iget-object v5, v0, Lsun/security/ssl/Handshaker;->handshakeHash:Lsun/security/ssl/HandshakeHash;

    invoke-virtual {v5, v14}, Lsun/security/ssl/HandshakeHash;->setCertificateVerifyAlg(Ljava/lang/String;)V

    .line 982
    .end local v10    # "preferableSignatureAlgorithm":Lsun/security/ssl/SignatureAndHashAlgorithm;
    .end local v14    # "hashAlg":Ljava/lang/String;
    :cond_1d
    new-instance v4, Lsun/security/ssl/HandshakeMessage$CertificateVerify;

    move-object/from16 v0, p0

    iget-object v5, v0, Lsun/security/ssl/Handshaker;->protocolVersion:Lsun/security/ssl/ProtocolVersion;

    move-object/from16 v0, p0

    iget-object v6, v0, Lsun/security/ssl/Handshaker;->handshakeHash:Lsun/security/ssl/HandshakeHash;

    .line 983
    move-object/from16 v0, p0

    iget-object v7, v0, Lsun/security/ssl/Handshaker;->session:Lsun/security/ssl/SSLSessionImpl;

    invoke-virtual {v7}, Lsun/security/ssl/SSLSessionImpl;->getMasterSecret()Ljavax/crypto/SecretKey;

    move-result-object v8

    .line 984
    move-object/from16 v0, p0

    iget-object v7, v0, Lsun/security/ssl/Handshaker;->sslContext:Lsun/security/ssl/SSLContextImpl;

    invoke-virtual {v7}, Lsun/security/ssl/SSLContextImpl;->getSecureRandom()Ljava/security/SecureRandom;

    move-result-object v9

    move-object/from16 v7, v28

    .line 982
    invoke-direct/range {v4 .. v10}, Lsun/security/ssl/HandshakeMessage$CertificateVerify;-><init>(Lsun/security/ssl/ProtocolVersion;Lsun/security/ssl/HandshakeHash;Ljava/security/PrivateKey;Ljavax/crypto/SecretKey;Ljava/security/SecureRandom;Lsun/security/ssl/SignatureAndHashAlgorithm;)V
    :try_end_1
    .catch Ljava/security/GeneralSecurityException; {:try_start_1 .. :try_end_1} :catch_0

    .local v4, "m3":Lsun/security/ssl/HandshakeMessage$CertificateVerify;
    goto/16 :goto_8

    .line 998
    .end local v4    # "m3":Lsun/security/ssl/HandshakeMessage$CertificateVerify;
    :cond_1e
    move-object/from16 v0, p0

    iget-object v5, v0, Lsun/security/ssl/Handshaker;->protocolVersion:Lsun/security/ssl/ProtocolVersion;

    iget v5, v5, Lsun/security/ssl/ProtocolVersion;->v:I

    sget-object v6, Lsun/security/ssl/ProtocolVersion;->TLS12:Lsun/security/ssl/ProtocolVersion;

    iget v6, v6, Lsun/security/ssl/ProtocolVersion;->v:I

    if-lt v5, v6, :cond_19

    .line 999
    move-object/from16 v0, p0

    iget-object v5, v0, Lsun/security/ssl/Handshaker;->handshakeHash:Lsun/security/ssl/HandshakeHash;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Lsun/security/ssl/HandshakeHash;->setCertificateVerifyAlg(Ljava/lang/String;)V

    goto/16 :goto_9

    .line 667
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_1
        0x40 -> :sswitch_2
    .end sparse-switch

    .line 770
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_5
        :pswitch_5
        :pswitch_6
        :pswitch_6
        :pswitch_0
        :pswitch_0
    .end packed-switch

    .line 913
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_9
        :pswitch_9
        :pswitch_9
        :pswitch_1
        :pswitch_1
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_b
        :pswitch_b
        :pswitch_8
        :pswitch_8
        :pswitch_7
        :pswitch_7
    .end packed-switch
.end method

.method private serverHelloRequest(Lsun/security/ssl/HandshakeMessage$HelloRequest;)V
    .locals 3
    .param p1, "mesg"    # Lsun/security/ssl/HandshakeMessage$HelloRequest;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    .line 314
    sget-object v0, Lsun/security/ssl/ClientHandshaker;->debug:Lsun/security/ssl/Debug;

    if-eqz v0, :cond_0

    const-string/jumbo v0, "handshake"

    invoke-static {v0}, Lsun/security/ssl/Debug;->isOn(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 315
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {p1, v0}, Lsun/security/ssl/HandshakeMessage$HelloRequest;->print(Ljava/io/PrintStream;)V

    .line 322
    :cond_0
    iget v0, p0, Lsun/security/ssl/Handshaker;->state:I

    if-ge v0, v2, :cond_3

    .line 323
    iget-boolean v0, p0, Lsun/security/ssl/Handshaker;->secureRenegotiation:Z

    if-nez v0, :cond_1

    sget-boolean v0, Lsun/security/ssl/ClientHandshaker;->allowUnsafeRenegotiation:Z

    if-eqz v0, :cond_4

    .line 350
    :cond_1
    iget-boolean v0, p0, Lsun/security/ssl/Handshaker;->secureRenegotiation:Z

    if-nez v0, :cond_2

    .line 351
    sget-object v0, Lsun/security/ssl/ClientHandshaker;->debug:Lsun/security/ssl/Debug;

    if-eqz v0, :cond_2

    const-string/jumbo v0, "handshake"

    invoke-static {v0}, Lsun/security/ssl/Debug;->isOn(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 352
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    .line 353
    const-string/jumbo v1, "Warning: continue with insecure renegotiation"

    .line 352
    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 356
    :cond_2
    invoke-virtual {p0}, Lsun/security/ssl/Handshaker;->kickstart()V

    .line 313
    :cond_3
    :goto_0
    return-void

    .line 325
    :cond_4
    iget-object v0, p0, Lsun/security/ssl/Handshaker;->activeProtocolVersion:Lsun/security/ssl/ProtocolVersion;

    iget v0, v0, Lsun/security/ssl/ProtocolVersion;->v:I

    sget-object v1, Lsun/security/ssl/ProtocolVersion;->TLS10:Lsun/security/ssl/ProtocolVersion;

    iget v1, v1, Lsun/security/ssl/ProtocolVersion;->v:I

    if-lt v0, v1, :cond_5

    .line 327
    const/16 v0, 0x64

    invoke-virtual {p0, v0}, Lsun/security/ssl/Handshaker;->warningSE(B)V

    .line 331
    iput-boolean v2, p0, Lsun/security/ssl/Handshaker;->invalidated:Z

    goto :goto_0

    .line 347
    :cond_5
    const-string/jumbo v0, "Renegotiation is not allowed"

    .line 346
    const/16 v1, 0x28

    invoke-virtual {p0, v1, v0}, Lsun/security/ssl/Handshaker;->fatalSE(BLjava/lang/String;)V

    goto :goto_0
.end method

.method private serverKeyExchange(Lsun/security/ssl/HandshakeMessage$DH_ServerKeyExchange;)V
    .locals 4
    .param p1, "mesg"    # Lsun/security/ssl/HandshakeMessage$DH_ServerKeyExchange;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 618
    sget-object v0, Lsun/security/ssl/ClientHandshaker;->debug:Lsun/security/ssl/Debug;

    if-eqz v0, :cond_0

    const-string/jumbo v0, "handshake"

    invoke-static {v0}, Lsun/security/ssl/Debug;->isOn(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 619
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {p1, v0}, Lsun/security/ssl/HandshakeMessage$DH_ServerKeyExchange;->print(Ljava/io/PrintStream;)V

    .line 621
    :cond_0
    new-instance v0, Lsun/security/ssl/DHCrypt;

    invoke-virtual {p1}, Lsun/security/ssl/HandshakeMessage$DH_ServerKeyExchange;->getModulus()Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {p1}, Lsun/security/ssl/HandshakeMessage$DH_ServerKeyExchange;->getBase()Ljava/math/BigInteger;

    move-result-object v2

    .line 622
    iget-object v3, p0, Lsun/security/ssl/Handshaker;->sslContext:Lsun/security/ssl/SSLContextImpl;

    invoke-virtual {v3}, Lsun/security/ssl/SSLContextImpl;->getSecureRandom()Ljava/security/SecureRandom;

    move-result-object v3

    .line 621
    invoke-direct {v0, v1, v2, v3}, Lsun/security/ssl/DHCrypt;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/security/SecureRandom;)V

    iput-object v0, p0, Lsun/security/ssl/ClientHandshaker;->dh:Lsun/security/ssl/DHCrypt;

    .line 623
    invoke-virtual {p1}, Lsun/security/ssl/HandshakeMessage$DH_ServerKeyExchange;->getServerPublicKey()Ljava/math/BigInteger;

    move-result-object v0

    iput-object v0, p0, Lsun/security/ssl/ClientHandshaker;->serverDH:Ljava/math/BigInteger;

    .line 617
    return-void
.end method

.method private serverKeyExchange(Lsun/security/ssl/HandshakeMessage$ECDH_ServerKeyExchange;)V
    .locals 4
    .param p1, "mesg"    # Lsun/security/ssl/HandshakeMessage$ECDH_ServerKeyExchange;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 628
    sget-object v1, Lsun/security/ssl/ClientHandshaker;->debug:Lsun/security/ssl/Debug;

    if-eqz v1, :cond_0

    const-string/jumbo v1, "handshake"

    invoke-static {v1}, Lsun/security/ssl/Debug;->isOn(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 629
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {p1, v1}, Lsun/security/ssl/HandshakeMessage$ECDH_ServerKeyExchange;->print(Ljava/io/PrintStream;)V

    .line 631
    :cond_0
    invoke-virtual {p1}, Lsun/security/ssl/HandshakeMessage$ECDH_ServerKeyExchange;->getPublicKey()Ljava/security/interfaces/ECPublicKey;

    move-result-object v0

    .line 632
    .local v0, "key":Ljava/security/interfaces/ECPublicKey;
    new-instance v1, Lsun/security/ssl/ECDHCrypt;

    invoke-interface {v0}, Ljava/security/interfaces/ECPublicKey;->getParams()Ljava/security/spec/ECParameterSpec;

    move-result-object v2

    iget-object v3, p0, Lsun/security/ssl/Handshaker;->sslContext:Lsun/security/ssl/SSLContextImpl;

    invoke-virtual {v3}, Lsun/security/ssl/SSLContextImpl;->getSecureRandom()Ljava/security/SecureRandom;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lsun/security/ssl/ECDHCrypt;-><init>(Ljava/security/spec/ECParameterSpec;Ljava/security/SecureRandom;)V

    iput-object v1, p0, Lsun/security/ssl/ClientHandshaker;->ecdh:Lsun/security/ssl/ECDHCrypt;

    .line 633
    iput-object v0, p0, Lsun/security/ssl/ClientHandshaker;->ephemeralServerKey:Ljava/security/PublicKey;

    .line 627
    return-void
.end method

.method private serverKeyExchange(Lsun/security/ssl/HandshakeMessage$RSA_ServerKeyExchange;)V
    .locals 3
    .param p1, "mesg"    # Lsun/security/ssl/HandshakeMessage$RSA_ServerKeyExchange;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .prologue
    .line 598
    sget-object v0, Lsun/security/ssl/ClientHandshaker;->debug:Lsun/security/ssl/Debug;

    if-eqz v0, :cond_0

    const-string/jumbo v0, "handshake"

    invoke-static {v0}, Lsun/security/ssl/Debug;->isOn(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 599
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {p1, v0}, Lsun/security/ssl/HandshakeMessage$RSA_ServerKeyExchange;->print(Ljava/io/PrintStream;)V

    .line 601
    :cond_0
    iget-object v0, p0, Lsun/security/ssl/ClientHandshaker;->serverKey:Ljava/security/PublicKey;

    iget-object v1, p0, Lsun/security/ssl/Handshaker;->clnt_random:Lsun/security/ssl/RandomCookie;

    iget-object v2, p0, Lsun/security/ssl/Handshaker;->svr_random:Lsun/security/ssl/RandomCookie;

    invoke-virtual {p1, v0, v1, v2}, Lsun/security/ssl/HandshakeMessage$RSA_ServerKeyExchange;->verify(Ljava/security/PublicKey;Lsun/security/ssl/RandomCookie;Lsun/security/ssl/RandomCookie;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 603
    const-string/jumbo v0, "server key exchange invalid"

    .line 602
    const/16 v1, 0x28

    invoke-virtual {p0, v1, v0}, Lsun/security/ssl/Handshaker;->fatalSE(BLjava/lang/String;)V

    .line 606
    :cond_1
    invoke-virtual {p1}, Lsun/security/ssl/HandshakeMessage$RSA_ServerKeyExchange;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v0

    iput-object v0, p0, Lsun/security/ssl/ClientHandshaker;->ephemeralServerKey:Ljava/security/PublicKey;

    .line 597
    return-void
.end method


# virtual methods
.method getKickstartMessage()Lsun/security/ssl/HandshakeMessage;
    .locals 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLException;
        }
    .end annotation

    .prologue
    const/4 v14, 0x0

    .line 1110
    sget-object v11, Lsun/security/ssl/SSLSessionImpl;->nullSession:Lsun/security/ssl/SSLSessionImpl;

    invoke-virtual {v11}, Lsun/security/ssl/SSLSessionImpl;->getSessionId()Lsun/security/ssl/SessionId;

    move-result-object v6

    .line 1113
    .local v6, "sessionId":Lsun/security/ssl/SessionId;
    invoke-virtual {p0}, Lsun/security/ssl/Handshaker;->getActiveCipherSuites()Lsun/security/ssl/CipherSuiteList;

    move-result-object v1

    .line 1116
    .local v1, "cipherSuites":Lsun/security/ssl/CipherSuiteList;
    iget-object v11, p0, Lsun/security/ssl/Handshaker;->protocolVersion:Lsun/security/ssl/ProtocolVersion;

    iput-object v11, p0, Lsun/security/ssl/ClientHandshaker;->maxProtocolVersion:Lsun/security/ssl/ProtocolVersion;

    .line 1122
    iget-object v11, p0, Lsun/security/ssl/Handshaker;->sslContext:Lsun/security/ssl/SSLContextImpl;

    invoke-virtual {v11}, Lsun/security/ssl/SSLContextImpl;->engineGetClientSessionContext()Ljavax/net/ssl/SSLSessionContext;

    move-result-object v11

    check-cast v11, Lsun/security/ssl/SSLSessionContextImpl;

    .line 1124
    invoke-virtual {p0}, Lsun/security/ssl/Handshaker;->getHostSE()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {p0}, Lsun/security/ssl/Handshaker;->getPortSE()I

    move-result v13

    .line 1122
    invoke-virtual {v11, v12, v13}, Lsun/security/ssl/SSLSessionContextImpl;->get(Ljava/lang/String;I)Lsun/security/ssl/SSLSessionImpl;

    move-result-object v11

    iput-object v11, p0, Lsun/security/ssl/Handshaker;->session:Lsun/security/ssl/SSLSessionImpl;

    .line 1125
    sget-object v11, Lsun/security/ssl/ClientHandshaker;->debug:Lsun/security/ssl/Debug;

    if-eqz v11, :cond_0

    const-string/jumbo v11, "session"

    invoke-static {v11}, Lsun/security/ssl/Debug;->isOn(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_0

    .line 1126
    iget-object v11, p0, Lsun/security/ssl/Handshaker;->session:Lsun/security/ssl/SSLSessionImpl;

    if-eqz v11, :cond_9

    .line 1127
    sget-object v12, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "%% Client cached "

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    .line 1128
    iget-object v13, p0, Lsun/security/ssl/Handshaker;->session:Lsun/security/ssl/SSLSessionImpl;

    .line 1127
    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    .line 1129
    iget-object v11, p0, Lsun/security/ssl/Handshaker;->session:Lsun/security/ssl/SSLSessionImpl;

    invoke-virtual {v11}, Lsun/security/ssl/SSLSessionImpl;->isRejoinable()Z

    move-result v11

    if-eqz v11, :cond_8

    const-string/jumbo v11, ""

    .line 1127
    :goto_0
    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v12, v11}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1134
    :cond_0
    :goto_1
    iget-object v11, p0, Lsun/security/ssl/Handshaker;->session:Lsun/security/ssl/SSLSessionImpl;

    if-eqz v11, :cond_1

    iget-object v11, p0, Lsun/security/ssl/Handshaker;->session:Lsun/security/ssl/SSLSessionImpl;

    invoke-virtual {v11}, Lsun/security/ssl/SSLSessionImpl;->isRejoinable()Z

    move-result v11

    if-nez v11, :cond_1

    .line 1135
    iput-object v14, p0, Lsun/security/ssl/Handshaker;->session:Lsun/security/ssl/SSLSessionImpl;

    .line 1138
    :cond_1
    iget-object v11, p0, Lsun/security/ssl/Handshaker;->session:Lsun/security/ssl/SSLSessionImpl;

    if-eqz v11, :cond_e

    .line 1139
    iget-object v11, p0, Lsun/security/ssl/Handshaker;->session:Lsun/security/ssl/SSLSessionImpl;

    invoke-virtual {v11}, Lsun/security/ssl/SSLSessionImpl;->getSuite()Lsun/security/ssl/CipherSuite;

    move-result-object v7

    .line 1140
    .local v7, "sessionSuite":Lsun/security/ssl/CipherSuite;
    iget-object v11, p0, Lsun/security/ssl/Handshaker;->session:Lsun/security/ssl/SSLSessionImpl;

    invoke-virtual {v11}, Lsun/security/ssl/SSLSessionImpl;->getProtocolVersion()Lsun/security/ssl/ProtocolVersion;

    move-result-object v8

    .line 1141
    .local v8, "sessionVersion":Lsun/security/ssl/ProtocolVersion;
    invoke-virtual {p0, v7}, Lsun/security/ssl/Handshaker;->isNegotiable(Lsun/security/ssl/CipherSuite;)Z

    move-result v11

    if-nez v11, :cond_3

    .line 1142
    sget-object v11, Lsun/security/ssl/ClientHandshaker;->debug:Lsun/security/ssl/Debug;

    if-eqz v11, :cond_2

    const-string/jumbo v11, "session"

    invoke-static {v11}, Lsun/security/ssl/Debug;->isOn(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_2

    .line 1143
    sget-object v11, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string/jumbo v12, "%% can\'t resume, unavailable cipher"

    invoke-virtual {v11, v12}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1145
    :cond_2
    iput-object v14, p0, Lsun/security/ssl/Handshaker;->session:Lsun/security/ssl/SSLSessionImpl;

    .line 1148
    :cond_3
    iget-object v11, p0, Lsun/security/ssl/Handshaker;->session:Lsun/security/ssl/SSLSessionImpl;

    if-eqz v11, :cond_4

    invoke-virtual {p0, v8}, Lsun/security/ssl/Handshaker;->isNegotiable(Lsun/security/ssl/ProtocolVersion;)Z

    move-result v11

    if-eqz v11, :cond_a

    .line 1155
    :cond_4
    :goto_2
    iget-object v11, p0, Lsun/security/ssl/Handshaker;->session:Lsun/security/ssl/SSLSessionImpl;

    if-eqz v11, :cond_7

    .line 1156
    sget-object v11, Lsun/security/ssl/ClientHandshaker;->debug:Lsun/security/ssl/Debug;

    if-eqz v11, :cond_6

    .line 1157
    const-string/jumbo v11, "handshake"

    invoke-static {v11}, Lsun/security/ssl/Debug;->isOn(Ljava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_5

    const-string/jumbo v11, "session"

    invoke-static {v11}, Lsun/security/ssl/Debug;->isOn(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_6

    .line 1158
    :cond_5
    sget-object v11, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "%% Try resuming "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-object v13, p0, Lsun/security/ssl/Handshaker;->session:Lsun/security/ssl/SSLSessionImpl;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    .line 1159
    const-string/jumbo v13, " from port "

    .line 1158
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    .line 1159
    invoke-virtual {p0}, Lsun/security/ssl/Handshaker;->getLocalPortSE()I

    move-result v13

    .line 1158
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1163
    :cond_6
    iget-object v11, p0, Lsun/security/ssl/Handshaker;->session:Lsun/security/ssl/SSLSessionImpl;

    invoke-virtual {v11}, Lsun/security/ssl/SSLSessionImpl;->getSessionId()Lsun/security/ssl/SessionId;

    move-result-object v6

    .line 1164
    iput-object v8, p0, Lsun/security/ssl/ClientHandshaker;->maxProtocolVersion:Lsun/security/ssl/ProtocolVersion;

    .line 1169
    invoke-virtual {p0, v8}, Lsun/security/ssl/Handshaker;->setVersion(Lsun/security/ssl/ProtocolVersion;)V

    .line 1176
    :cond_7
    iget-boolean v11, p0, Lsun/security/ssl/Handshaker;->enableNewSession:Z

    if-nez v11, :cond_e

    .line 1177
    iget-object v11, p0, Lsun/security/ssl/Handshaker;->session:Lsun/security/ssl/SSLSessionImpl;

    if-nez v11, :cond_c

    .line 1178
    new-instance v11, Ljavax/net/ssl/SSLHandshakeException;

    .line 1179
    const-string/jumbo v12, "Can\'t reuse existing SSL client session"

    .line 1178
    invoke-direct {v11, v12}, Ljavax/net/ssl/SSLHandshakeException;-><init>(Ljava/lang/String;)V

    throw v11

    .line 1129
    .end local v7    # "sessionSuite":Lsun/security/ssl/CipherSuite;
    .end local v8    # "sessionVersion":Lsun/security/ssl/ProtocolVersion;
    :cond_8
    const-string/jumbo v11, " (not rejoinable)"

    goto/16 :goto_0

    .line 1131
    :cond_9
    sget-object v11, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string/jumbo v12, "%% No cached client session"

    invoke-virtual {v11, v12}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 1149
    .restart local v7    # "sessionSuite":Lsun/security/ssl/CipherSuite;
    .restart local v8    # "sessionVersion":Lsun/security/ssl/ProtocolVersion;
    :cond_a
    sget-object v11, Lsun/security/ssl/ClientHandshaker;->debug:Lsun/security/ssl/Debug;

    if-eqz v11, :cond_b

    const-string/jumbo v11, "session"

    invoke-static {v11}, Lsun/security/ssl/Debug;->isOn(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_b

    .line 1150
    sget-object v11, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string/jumbo v12, "%% can\'t resume, protocol disabled"

    invoke-virtual {v11, v12}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1152
    :cond_b
    iput-object v14, p0, Lsun/security/ssl/Handshaker;->session:Lsun/security/ssl/SSLSessionImpl;

    goto/16 :goto_2

    .line 1182
    :cond_c
    new-instance v0, Ljava/util/ArrayList;

    const/4 v11, 0x2

    invoke-direct {v0, v11}, Ljava/util/ArrayList;-><init>(I)V

    .line 1183
    .local v0, "cipherList":Ljava/util/Collection;, "Ljava/util/Collection<Lsun/security/ssl/CipherSuite;>;"
    invoke-interface {v0, v7}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 1184
    iget-boolean v11, p0, Lsun/security/ssl/Handshaker;->secureRenegotiation:Z

    if-nez v11, :cond_d

    .line 1185
    sget-object v11, Lsun/security/ssl/CipherSuite;->C_SCSV:Lsun/security/ssl/CipherSuite;

    invoke-virtual {v1, v11}, Lsun/security/ssl/CipherSuiteList;->contains(Lsun/security/ssl/CipherSuite;)Z

    move-result v11

    .line 1184
    if-eqz v11, :cond_d

    .line 1186
    sget-object v11, Lsun/security/ssl/CipherSuite;->C_SCSV:Lsun/security/ssl/CipherSuite;

    invoke-interface {v0, v11}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 1189
    :cond_d
    new-instance v1, Lsun/security/ssl/CipherSuiteList;

    .end local v1    # "cipherSuites":Lsun/security/ssl/CipherSuiteList;
    invoke-direct {v1, v0}, Lsun/security/ssl/CipherSuiteList;-><init>(Ljava/util/Collection;)V

    .line 1193
    .end local v0    # "cipherList":Ljava/util/Collection;, "Ljava/util/Collection<Lsun/security/ssl/CipherSuite;>;"
    .end local v7    # "sessionSuite":Lsun/security/ssl/CipherSuite;
    .end local v8    # "sessionVersion":Lsun/security/ssl/ProtocolVersion;
    .restart local v1    # "cipherSuites":Lsun/security/ssl/CipherSuiteList;
    :cond_e
    iget-object v11, p0, Lsun/security/ssl/Handshaker;->session:Lsun/security/ssl/SSLSessionImpl;

    if-nez v11, :cond_f

    iget-boolean v11, p0, Lsun/security/ssl/Handshaker;->enableNewSession:Z

    if-eqz v11, :cond_11

    .line 1198
    :cond_f
    iget-boolean v11, p0, Lsun/security/ssl/Handshaker;->secureRenegotiation:Z

    if-eqz v11, :cond_13

    sget-object v11, Lsun/security/ssl/CipherSuite;->C_SCSV:Lsun/security/ssl/CipherSuite;

    invoke-virtual {v1, v11}, Lsun/security/ssl/CipherSuiteList;->contains(Lsun/security/ssl/CipherSuite;)Z

    move-result v11

    if-eqz v11, :cond_13

    .line 1200
    new-instance v0, Ljava/util/ArrayList;

    invoke-virtual {v1}, Lsun/security/ssl/CipherSuiteList;->size()I

    move-result v11

    add-int/lit8 v11, v11, -0x1

    invoke-direct {v0, v11}, Ljava/util/ArrayList;-><init>(I)V

    .line 1201
    .restart local v0    # "cipherList":Ljava/util/Collection;, "Ljava/util/Collection<Lsun/security/ssl/CipherSuite;>;"
    invoke-virtual {v1}, Lsun/security/ssl/CipherSuiteList;->collection()Ljava/util/Collection;

    move-result-object v11

    invoke-interface {v11}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .local v10, "suite$iterator":Ljava/util/Iterator;
    :cond_10
    :goto_3
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_12

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lsun/security/ssl/CipherSuite;

    .line 1202
    .local v9, "suite":Lsun/security/ssl/CipherSuite;
    sget-object v11, Lsun/security/ssl/CipherSuite;->C_SCSV:Lsun/security/ssl/CipherSuite;

    if-eq v9, v11, :cond_10

    .line 1203
    invoke-interface {v0, v9}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 1194
    .end local v0    # "cipherList":Ljava/util/Collection;, "Ljava/util/Collection<Lsun/security/ssl/CipherSuite;>;"
    .end local v9    # "suite":Lsun/security/ssl/CipherSuite;
    .end local v10    # "suite$iterator":Ljava/util/Iterator;
    :cond_11
    new-instance v11, Ljavax/net/ssl/SSLHandshakeException;

    const-string/jumbo v12, "No existing session to resume"

    invoke-direct {v11, v12}, Ljavax/net/ssl/SSLHandshakeException;-><init>(Ljava/lang/String;)V

    throw v11

    .line 1207
    .restart local v0    # "cipherList":Ljava/util/Collection;, "Ljava/util/Collection<Lsun/security/ssl/CipherSuite;>;"
    .restart local v10    # "suite$iterator":Ljava/util/Iterator;
    :cond_12
    new-instance v1, Lsun/security/ssl/CipherSuiteList;

    .end local v1    # "cipherSuites":Lsun/security/ssl/CipherSuiteList;
    invoke-direct {v1, v0}, Lsun/security/ssl/CipherSuiteList;-><init>(Ljava/util/Collection;)V

    .line 1211
    .end local v0    # "cipherList":Ljava/util/Collection;, "Ljava/util/Collection<Lsun/security/ssl/CipherSuite;>;"
    .end local v10    # "suite$iterator":Ljava/util/Iterator;
    .restart local v1    # "cipherSuites":Lsun/security/ssl/CipherSuiteList;
    :cond_13
    const/4 v5, 0x0

    .line 1212
    .local v5, "negotiable":Z
    invoke-virtual {v1}, Lsun/security/ssl/CipherSuiteList;->collection()Ljava/util/Collection;

    move-result-object v11

    invoke-interface {v11}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .restart local v10    # "suite$iterator":Ljava/util/Iterator;
    :cond_14
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_15

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lsun/security/ssl/CipherSuite;

    .line 1213
    .restart local v9    # "suite":Lsun/security/ssl/CipherSuite;
    invoke-virtual {p0, v9}, Lsun/security/ssl/Handshaker;->isNegotiable(Lsun/security/ssl/CipherSuite;)Z

    move-result v11

    if-eqz v11, :cond_14

    .line 1214
    const/4 v5, 0x1

    .line 1219
    .end local v9    # "suite":Lsun/security/ssl/CipherSuite;
    :cond_15
    if-nez v5, :cond_16

    .line 1220
    new-instance v11, Ljavax/net/ssl/SSLHandshakeException;

    const-string/jumbo v12, "No negotiable cipher suite"

    invoke-direct {v11, v12}, Ljavax/net/ssl/SSLHandshakeException;-><init>(Ljava/lang/String;)V

    throw v11

    .line 1233
    :cond_16
    new-instance v2, Lsun/security/ssl/HandshakeMessage$ClientHello;

    .line 1234
    iget-object v11, p0, Lsun/security/ssl/Handshaker;->sslContext:Lsun/security/ssl/SSLContextImpl;

    invoke-virtual {v11}, Lsun/security/ssl/SSLContextImpl;->getSecureRandom()Ljava/security/SecureRandom;

    move-result-object v11

    iget-object v12, p0, Lsun/security/ssl/ClientHandshaker;->maxProtocolVersion:Lsun/security/ssl/ProtocolVersion;

    .line 1233
    invoke-direct {v2, v11, v12, v6, v1}, Lsun/security/ssl/HandshakeMessage$ClientHello;-><init>(Ljava/security/SecureRandom;Lsun/security/ssl/ProtocolVersion;Lsun/security/ssl/SessionId;Lsun/security/ssl/CipherSuiteList;)V

    .line 1238
    .local v2, "clientHelloMessage":Lsun/security/ssl/HandshakeMessage$ClientHello;
    iget-object v11, p0, Lsun/security/ssl/ClientHandshaker;->maxProtocolVersion:Lsun/security/ssl/ProtocolVersion;

    iget v11, v11, Lsun/security/ssl/ProtocolVersion;->v:I

    sget-object v12, Lsun/security/ssl/ProtocolVersion;->TLS12:Lsun/security/ssl/ProtocolVersion;

    iget v12, v12, Lsun/security/ssl/ProtocolVersion;->v:I

    if-lt v11, v12, :cond_18

    .line 1241
    invoke-virtual {p0}, Lsun/security/ssl/Handshaker;->getLocalSupportedSignAlgs()Ljava/util/Collection;

    move-result-object v4

    .line 1242
    .local v4, "localSignAlgs":Ljava/util/Collection;, "Ljava/util/Collection<Lsun/security/ssl/SignatureAndHashAlgorithm;>;"
    invoke-interface {v4}, Ljava/util/Collection;->isEmpty()Z

    move-result v11

    if-eqz v11, :cond_17

    .line 1243
    new-instance v11, Ljavax/net/ssl/SSLHandshakeException;

    .line 1244
    const-string/jumbo v12, "No supported signature algorithm"

    .line 1243
    invoke-direct {v11, v12}, Ljavax/net/ssl/SSLHandshakeException;-><init>(Ljava/lang/String;)V

    throw v11

    .line 1247
    :cond_17
    invoke-virtual {v2, v4}, Lsun/security/ssl/HandshakeMessage$ClientHello;->addSignatureAlgorithmsExtension(Ljava/util/Collection;)V

    .line 1251
    .end local v4    # "localSignAlgs":Ljava/util/Collection;, "Ljava/util/Collection<Lsun/security/ssl/SignatureAndHashAlgorithm;>;"
    :cond_18
    sget-boolean v11, Lsun/security/ssl/ClientHandshaker;->enableSNIExtension:Z

    if-eqz v11, :cond_19

    .line 1256
    invoke-virtual {p0}, Lsun/security/ssl/Handshaker;->getRawHostnameSE()Ljava/lang/String;

    move-result-object v3

    .line 1259
    .local v3, "hostname":Ljava/lang/String;
    if-eqz v3, :cond_19

    const/16 v11, 0x2e

    invoke-virtual {v3, v11}, Ljava/lang/String;->indexOf(I)I

    move-result v11

    if-lez v11, :cond_19

    .line 1260
    invoke-static {v3}, Lsun/net/util/IPAddressUtil;->isIPv4LiteralAddress(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_1a

    .line 1267
    .end local v3    # "hostname":Ljava/lang/String;
    :cond_19
    :goto_4
    iget-object v11, v2, Lsun/security/ssl/HandshakeMessage$ClientHello;->clnt_random:Lsun/security/ssl/RandomCookie;

    iput-object v11, p0, Lsun/security/ssl/Handshaker;->clnt_random:Lsun/security/ssl/RandomCookie;

    .line 1275
    iget-boolean v11, p0, Lsun/security/ssl/Handshaker;->secureRenegotiation:Z

    if-nez v11, :cond_1b

    .line 1276
    sget-object v11, Lsun/security/ssl/CipherSuite;->C_SCSV:Lsun/security/ssl/CipherSuite;

    invoke-virtual {v1, v11}, Lsun/security/ssl/CipherSuiteList;->contains(Lsun/security/ssl/CipherSuite;)Z

    move-result v11

    if-eqz v11, :cond_1b

    .line 1280
    :goto_5
    return-object v2

    .line 1261
    .restart local v3    # "hostname":Ljava/lang/String;
    :cond_1a
    invoke-static {v3}, Lsun/net/util/IPAddressUtil;->isIPv6LiteralAddress(Ljava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_19

    .line 1262
    invoke-virtual {v2, v3}, Lsun/security/ssl/HandshakeMessage$ClientHello;->addServerNameIndicationExtension(Ljava/lang/String;)V

    goto :goto_4

    .line 1277
    .end local v3    # "hostname":Ljava/lang/String;
    :cond_1b
    iget-object v11, p0, Lsun/security/ssl/Handshaker;->clientVerifyData:[B

    invoke-virtual {v2, v11}, Lsun/security/ssl/HandshakeMessage$ClientHello;->addRenegotiationInfoExtension([B)V

    goto :goto_5
.end method

.method handshakeAlert(B)V
    .locals 4
    .param p1, "description"    # B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLProtocolException;
        }
    .end annotation

    .prologue
    .line 1287
    invoke-static {p1}, Lsun/security/ssl/Alerts;->alertDescription(B)Ljava/lang/String;

    move-result-object v0

    .line 1289
    .local v0, "message":Ljava/lang/String;
    sget-object v1, Lsun/security/ssl/ClientHandshaker;->debug:Lsun/security/ssl/Debug;

    if-eqz v1, :cond_0

    const-string/jumbo v1, "handshake"

    invoke-static {v1}, Lsun/security/ssl/Debug;->isOn(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1290
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "SSL - handshake alert: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1292
    :cond_0
    new-instance v1, Ljavax/net/ssl/SSLProtocolException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "handshake alert:  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljavax/net/ssl/SSLProtocolException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method processMessage(BI)V
    .locals 11
    .param p1, "type"    # B
    .param p2, "messageLen"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 131
    iget v0, p0, Lsun/security/ssl/Handshaker;->state:I

    if-lt v0, p1, :cond_0

    .line 132
    if-eqz p1, :cond_0

    .line 133
    new-instance v0, Ljavax/net/ssl/SSLProtocolException;

    .line 134
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Handshake message sequence violation, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 133
    invoke-direct {v0, v1}, Ljavax/net/ssl/SSLProtocolException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 137
    :cond_0
    sparse-switch p1, :sswitch_data_0

    .line 294
    new-instance v0, Ljavax/net/ssl/SSLProtocolException;

    .line 295
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Illegal client handshake msg, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 294
    invoke-direct {v0, v1}, Ljavax/net/ssl/SSLProtocolException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 139
    :sswitch_0
    new-instance v0, Lsun/security/ssl/HandshakeMessage$HelloRequest;

    iget-object v1, p0, Lsun/security/ssl/Handshaker;->input:Lsun/security/ssl/HandshakeInStream;

    invoke-direct {v0, v1}, Lsun/security/ssl/HandshakeMessage$HelloRequest;-><init>(Lsun/security/ssl/HandshakeInStream;)V

    invoke-direct {p0, v0}, Lsun/security/ssl/ClientHandshaker;->serverHelloRequest(Lsun/security/ssl/HandshakeMessage$HelloRequest;)V

    .line 302
    :cond_1
    :goto_0
    iget v0, p0, Lsun/security/ssl/Handshaker;->state:I

    if-ge v0, p1, :cond_2

    .line 303
    iput p1, p0, Lsun/security/ssl/Handshaker;->state:I

    .line 130
    :cond_2
    return-void

    .line 143
    :sswitch_1
    new-instance v0, Lsun/security/ssl/HandshakeMessage$ServerHello;

    iget-object v1, p0, Lsun/security/ssl/Handshaker;->input:Lsun/security/ssl/HandshakeInStream;

    invoke-direct {v0, v1, p2}, Lsun/security/ssl/HandshakeMessage$ServerHello;-><init>(Lsun/security/ssl/HandshakeInStream;I)V

    invoke-direct {p0, v0}, Lsun/security/ssl/ClientHandshaker;->serverHello(Lsun/security/ssl/HandshakeMessage$ServerHello;)V

    goto :goto_0

    .line 147
    :sswitch_2
    iget-object v0, p0, Lsun/security/ssl/Handshaker;->keyExchange:Lsun/security/ssl/CipherSuite$KeyExchange;

    sget-object v1, Lsun/security/ssl/CipherSuite$KeyExchange;->K_DH_ANON:Lsun/security/ssl/CipherSuite$KeyExchange;

    if-eq v0, v1, :cond_3

    iget-object v0, p0, Lsun/security/ssl/Handshaker;->keyExchange:Lsun/security/ssl/CipherSuite$KeyExchange;

    sget-object v1, Lsun/security/ssl/CipherSuite$KeyExchange;->K_ECDH_ANON:Lsun/security/ssl/CipherSuite$KeyExchange;

    if-ne v0, v1, :cond_5

    .line 150
    :cond_3
    :goto_1
    const-string/jumbo v0, "unexpected server cert chain"

    .line 149
    const/16 v1, 0xa

    invoke-virtual {p0, v1, v0}, Lsun/security/ssl/Handshaker;->fatalSE(BLjava/lang/String;)V

    .line 153
    :cond_4
    new-instance v0, Lsun/security/ssl/HandshakeMessage$CertificateMsg;

    iget-object v1, p0, Lsun/security/ssl/Handshaker;->input:Lsun/security/ssl/HandshakeInStream;

    invoke-direct {v0, v1}, Lsun/security/ssl/HandshakeMessage$CertificateMsg;-><init>(Lsun/security/ssl/HandshakeInStream;)V

    invoke-direct {p0, v0}, Lsun/security/ssl/ClientHandshaker;->serverCertificate(Lsun/security/ssl/HandshakeMessage$CertificateMsg;)V

    .line 155
    iget-object v0, p0, Lsun/security/ssl/Handshaker;->session:Lsun/security/ssl/SSLSessionImpl;

    invoke-virtual {v0}, Lsun/security/ssl/SSLSessionImpl;->getPeerCertificates()[Ljava/security/cert/Certificate;

    move-result-object v0

    aget-object v0, v0, v2

    invoke-virtual {v0}, Ljava/security/cert/Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v0

    .line 154
    iput-object v0, p0, Lsun/security/ssl/ClientHandshaker;->serverKey:Ljava/security/PublicKey;

    goto :goto_0

    .line 148
    :cond_5
    iget-object v0, p0, Lsun/security/ssl/Handshaker;->keyExchange:Lsun/security/ssl/CipherSuite$KeyExchange;

    sget-object v1, Lsun/security/ssl/CipherSuite$KeyExchange;->K_KRB5:Lsun/security/ssl/CipherSuite$KeyExchange;

    if-eq v0, v1, :cond_3

    iget-object v0, p0, Lsun/security/ssl/Handshaker;->keyExchange:Lsun/security/ssl/CipherSuite$KeyExchange;

    sget-object v1, Lsun/security/ssl/CipherSuite$KeyExchange;->K_KRB5_EXPORT:Lsun/security/ssl/CipherSuite$KeyExchange;

    if-ne v0, v1, :cond_4

    goto :goto_1

    .line 159
    :sswitch_3
    const/4 v0, 0x1

    iput-boolean v0, p0, Lsun/security/ssl/ClientHandshaker;->serverKeyExchangeReceived:Z

    .line 160
    invoke-static {}, Lsun/security/ssl/ClientHandshaker;->-getsun-security-ssl-CipherSuite$KeyExchangeSwitchesValues()[I

    move-result-object v0

    iget-object v1, p0, Lsun/security/ssl/Handshaker;->keyExchange:Lsun/security/ssl/CipherSuite$KeyExchange;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 239
    new-instance v0, Ljavax/net/ssl/SSLProtocolException;

    .line 240
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "unsupported key exchange algorithm = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 241
    iget-object v2, p0, Lsun/security/ssl/Handshaker;->keyExchange:Lsun/security/ssl/CipherSuite$KeyExchange;

    .line 240
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 239
    invoke-direct {v0, v1}, Ljavax/net/ssl/SSLProtocolException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 169
    :pswitch_0
    iget-object v0, p0, Lsun/security/ssl/ClientHandshaker;->serverKey:Ljava/security/PublicKey;

    if-nez v0, :cond_6

    .line 170
    new-instance v0, Ljavax/net/ssl/SSLProtocolException;

    .line 171
    const-string/jumbo v1, "Server did not send certificate message"

    .line 170
    invoke-direct {v0, v1}, Ljavax/net/ssl/SSLProtocolException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 174
    :cond_6
    iget-object v0, p0, Lsun/security/ssl/ClientHandshaker;->serverKey:Ljava/security/PublicKey;

    instance-of v0, v0, Ljava/security/interfaces/RSAPublicKey;

    if-nez v0, :cond_7

    .line 175
    new-instance v0, Ljavax/net/ssl/SSLProtocolException;

    const-string/jumbo v1, "Protocol violation: the certificate type must be appropriate for the selected cipher suite\'s key exchange algorithm"

    invoke-direct {v0, v1}, Ljavax/net/ssl/SSLProtocolException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 180
    :cond_7
    iget-object v0, p0, Lsun/security/ssl/ClientHandshaker;->serverKey:Ljava/security/PublicKey;

    invoke-static {v0}, Lsun/security/ssl/JsseJce;->getRSAKeyLength(Ljava/security/PublicKey;)I

    move-result v0

    const/16 v1, 0x200

    if-gt v0, v1, :cond_8

    .line 181
    new-instance v0, Ljavax/net/ssl/SSLProtocolException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Protocol violation: server sent a server key exchange message for key exchange "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 183
    iget-object v2, p0, Lsun/security/ssl/Handshaker;->keyExchange:Lsun/security/ssl/CipherSuite$KeyExchange;

    .line 181
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 184
    const-string/jumbo v2, " when the public key in the server certificate"

    .line 181
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 185
    const-string/jumbo v2, " is less than or equal to 512 bits in length"

    .line 181
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljavax/net/ssl/SSLProtocolException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 189
    :cond_8
    :try_start_0
    new-instance v0, Lsun/security/ssl/HandshakeMessage$RSA_ServerKeyExchange;

    iget-object v1, p0, Lsun/security/ssl/Handshaker;->input:Lsun/security/ssl/HandshakeInStream;

    invoke-direct {v0, v1}, Lsun/security/ssl/HandshakeMessage$RSA_ServerKeyExchange;-><init>(Lsun/security/ssl/HandshakeInStream;)V

    invoke-direct {p0, v0}, Lsun/security/ssl/ClientHandshaker;->serverKeyExchange(Lsun/security/ssl/HandshakeMessage$RSA_ServerKeyExchange;)V
    :try_end_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 190
    :catch_0
    move-exception v8

    .line 191
    .local v8, "e":Ljava/security/GeneralSecurityException;
    const-string/jumbo v0, "Server key"

    invoke-static {v0, v8}, Lsun/security/ssl/ClientHandshaker;->throwSSLException(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_0

    .line 196
    .end local v8    # "e":Ljava/security/GeneralSecurityException;
    :pswitch_1
    :try_start_1
    new-instance v0, Lsun/security/ssl/HandshakeMessage$DH_ServerKeyExchange;

    .line 197
    iget-object v1, p0, Lsun/security/ssl/Handshaker;->input:Lsun/security/ssl/HandshakeInStream;

    iget-object v2, p0, Lsun/security/ssl/Handshaker;->protocolVersion:Lsun/security/ssl/ProtocolVersion;

    .line 196
    invoke-direct {v0, v1, v2}, Lsun/security/ssl/HandshakeMessage$DH_ServerKeyExchange;-><init>(Lsun/security/ssl/HandshakeInStream;Lsun/security/ssl/ProtocolVersion;)V

    invoke-direct {p0, v0}, Lsun/security/ssl/ClientHandshaker;->serverKeyExchange(Lsun/security/ssl/HandshakeMessage$DH_ServerKeyExchange;)V
    :try_end_1
    .catch Ljava/security/GeneralSecurityException; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_0

    .line 198
    :catch_1
    move-exception v8

    .line 199
    .restart local v8    # "e":Ljava/security/GeneralSecurityException;
    const-string/jumbo v0, "Server key"

    invoke-static {v0, v8}, Lsun/security/ssl/ClientHandshaker;->throwSSLException(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_0

    .line 205
    .end local v8    # "e":Ljava/security/GeneralSecurityException;
    :pswitch_2
    :try_start_2
    new-instance v0, Lsun/security/ssl/HandshakeMessage$DH_ServerKeyExchange;

    .line 206
    iget-object v1, p0, Lsun/security/ssl/Handshaker;->input:Lsun/security/ssl/HandshakeInStream;

    iget-object v2, p0, Lsun/security/ssl/ClientHandshaker;->serverKey:Ljava/security/PublicKey;

    .line 207
    iget-object v3, p0, Lsun/security/ssl/Handshaker;->clnt_random:Lsun/security/ssl/RandomCookie;

    iget-object v3, v3, Lsun/security/ssl/RandomCookie;->random_bytes:[B

    iget-object v4, p0, Lsun/security/ssl/Handshaker;->svr_random:Lsun/security/ssl/RandomCookie;

    iget-object v4, v4, Lsun/security/ssl/RandomCookie;->random_bytes:[B

    .line 209
    iget-object v6, p0, Lsun/security/ssl/Handshaker;->localSupportedSignAlgs:Ljava/util/Collection;

    iget-object v7, p0, Lsun/security/ssl/Handshaker;->protocolVersion:Lsun/security/ssl/ProtocolVersion;

    move v5, p2

    .line 205
    invoke-direct/range {v0 .. v7}, Lsun/security/ssl/HandshakeMessage$DH_ServerKeyExchange;-><init>(Lsun/security/ssl/HandshakeInStream;Ljava/security/PublicKey;[B[BILjava/util/Collection;Lsun/security/ssl/ProtocolVersion;)V

    invoke-direct {p0, v0}, Lsun/security/ssl/ClientHandshaker;->serverKeyExchange(Lsun/security/ssl/HandshakeMessage$DH_ServerKeyExchange;)V
    :try_end_2
    .catch Ljava/security/GeneralSecurityException; {:try_start_2 .. :try_end_2} :catch_2

    goto/16 :goto_0

    .line 210
    :catch_2
    move-exception v8

    .line 211
    .restart local v8    # "e":Ljava/security/GeneralSecurityException;
    const-string/jumbo v0, "Server key"

    invoke-static {v0, v8}, Lsun/security/ssl/ClientHandshaker;->throwSSLException(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_0

    .line 218
    .end local v8    # "e":Ljava/security/GeneralSecurityException;
    :pswitch_3
    :try_start_3
    new-instance v0, Lsun/security/ssl/HandshakeMessage$ECDH_ServerKeyExchange;

    .line 219
    iget-object v1, p0, Lsun/security/ssl/Handshaker;->input:Lsun/security/ssl/HandshakeInStream;

    iget-object v2, p0, Lsun/security/ssl/ClientHandshaker;->serverKey:Ljava/security/PublicKey;

    iget-object v3, p0, Lsun/security/ssl/Handshaker;->clnt_random:Lsun/security/ssl/RandomCookie;

    iget-object v3, v3, Lsun/security/ssl/RandomCookie;->random_bytes:[B

    .line 220
    iget-object v4, p0, Lsun/security/ssl/Handshaker;->svr_random:Lsun/security/ssl/RandomCookie;

    iget-object v4, v4, Lsun/security/ssl/RandomCookie;->random_bytes:[B

    .line 221
    iget-object v5, p0, Lsun/security/ssl/Handshaker;->localSupportedSignAlgs:Ljava/util/Collection;

    iget-object v6, p0, Lsun/security/ssl/Handshaker;->protocolVersion:Lsun/security/ssl/ProtocolVersion;

    .line 218
    invoke-direct/range {v0 .. v6}, Lsun/security/ssl/HandshakeMessage$ECDH_ServerKeyExchange;-><init>(Lsun/security/ssl/HandshakeInStream;Ljava/security/PublicKey;[B[BLjava/util/Collection;Lsun/security/ssl/ProtocolVersion;)V

    invoke-direct {p0, v0}, Lsun/security/ssl/ClientHandshaker;->serverKeyExchange(Lsun/security/ssl/HandshakeMessage$ECDH_ServerKeyExchange;)V
    :try_end_3
    .catch Ljava/security/GeneralSecurityException; {:try_start_3 .. :try_end_3} :catch_3

    goto/16 :goto_0

    .line 222
    :catch_3
    move-exception v8

    .line 223
    .restart local v8    # "e":Ljava/security/GeneralSecurityException;
    const-string/jumbo v0, "Server key"

    invoke-static {v0, v8}, Lsun/security/ssl/ClientHandshaker;->throwSSLException(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_0

    .line 231
    .end local v8    # "e":Ljava/security/GeneralSecurityException;
    :pswitch_4
    new-instance v0, Ljavax/net/ssl/SSLProtocolException;

    .line 232
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Protocol violation: server sent a server key exchangemessage for key exchange "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 233
    iget-object v2, p0, Lsun/security/ssl/Handshaker;->keyExchange:Lsun/security/ssl/CipherSuite$KeyExchange;

    .line 232
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 231
    invoke-direct {v0, v1}, Ljavax/net/ssl/SSLProtocolException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 236
    :pswitch_5
    new-instance v0, Ljavax/net/ssl/SSLProtocolException;

    .line 237
    const-string/jumbo v1, "unexpected receipt of server key exchange algorithm"

    .line 236
    invoke-direct {v0, v1}, Ljavax/net/ssl/SSLProtocolException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 247
    :sswitch_4
    iget-object v0, p0, Lsun/security/ssl/Handshaker;->keyExchange:Lsun/security/ssl/CipherSuite$KeyExchange;

    sget-object v1, Lsun/security/ssl/CipherSuite$KeyExchange;->K_DH_ANON:Lsun/security/ssl/CipherSuite$KeyExchange;

    if-eq v0, v1, :cond_9

    iget-object v0, p0, Lsun/security/ssl/Handshaker;->keyExchange:Lsun/security/ssl/CipherSuite$KeyExchange;

    sget-object v1, Lsun/security/ssl/CipherSuite$KeyExchange;->K_ECDH_ANON:Lsun/security/ssl/CipherSuite$KeyExchange;

    if-ne v0, v1, :cond_a

    .line 248
    :cond_9
    new-instance v0, Ljavax/net/ssl/SSLHandshakeException;

    .line 249
    const-string/jumbo v1, "Client authentication requested for anonymous cipher suite."

    .line 248
    invoke-direct {v0, v1}, Ljavax/net/ssl/SSLHandshakeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 251
    :cond_a
    iget-object v0, p0, Lsun/security/ssl/Handshaker;->keyExchange:Lsun/security/ssl/CipherSuite$KeyExchange;

    sget-object v1, Lsun/security/ssl/CipherSuite$KeyExchange;->K_KRB5:Lsun/security/ssl/CipherSuite$KeyExchange;

    if-eq v0, v1, :cond_b

    iget-object v0, p0, Lsun/security/ssl/Handshaker;->keyExchange:Lsun/security/ssl/CipherSuite$KeyExchange;

    sget-object v1, Lsun/security/ssl/CipherSuite$KeyExchange;->K_KRB5_EXPORT:Lsun/security/ssl/CipherSuite$KeyExchange;

    if-ne v0, v1, :cond_c

    .line 252
    :cond_b
    new-instance v0, Ljavax/net/ssl/SSLHandshakeException;

    .line 253
    const-string/jumbo v1, "Client certificate requested for kerberos cipher suite."

    .line 252
    invoke-direct {v0, v1}, Ljavax/net/ssl/SSLHandshakeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 256
    :cond_c
    new-instance v0, Lsun/security/ssl/HandshakeMessage$CertificateRequest;

    iget-object v1, p0, Lsun/security/ssl/Handshaker;->input:Lsun/security/ssl/HandshakeInStream;

    iget-object v2, p0, Lsun/security/ssl/Handshaker;->protocolVersion:Lsun/security/ssl/ProtocolVersion;

    invoke-direct {v0, v1, v2}, Lsun/security/ssl/HandshakeMessage$CertificateRequest;-><init>(Lsun/security/ssl/HandshakeInStream;Lsun/security/ssl/ProtocolVersion;)V

    iput-object v0, p0, Lsun/security/ssl/ClientHandshaker;->certRequest:Lsun/security/ssl/HandshakeMessage$CertificateRequest;

    .line 257
    sget-object v0, Lsun/security/ssl/ClientHandshaker;->debug:Lsun/security/ssl/Debug;

    if-eqz v0, :cond_d

    const-string/jumbo v0, "handshake"

    invoke-static {v0}, Lsun/security/ssl/Debug;->isOn(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 258
    iget-object v0, p0, Lsun/security/ssl/ClientHandshaker;->certRequest:Lsun/security/ssl/HandshakeMessage$CertificateRequest;

    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v0, v1}, Lsun/security/ssl/HandshakeMessage$CertificateRequest;->print(Ljava/io/PrintStream;)V

    .line 261
    :cond_d
    iget-object v0, p0, Lsun/security/ssl/Handshaker;->protocolVersion:Lsun/security/ssl/ProtocolVersion;

    iget v0, v0, Lsun/security/ssl/ProtocolVersion;->v:I

    sget-object v1, Lsun/security/ssl/ProtocolVersion;->TLS12:Lsun/security/ssl/ProtocolVersion;

    iget v1, v1, Lsun/security/ssl/ProtocolVersion;->v:I

    if-lt v0, v1, :cond_1

    .line 263
    iget-object v0, p0, Lsun/security/ssl/ClientHandshaker;->certRequest:Lsun/security/ssl/HandshakeMessage$CertificateRequest;

    invoke-virtual {v0}, Lsun/security/ssl/HandshakeMessage$CertificateRequest;->getSignAlgorithms()Ljava/util/Collection;

    move-result-object v9

    .line 264
    .local v9, "peerSignAlgs":Ljava/util/Collection;, "Ljava/util/Collection<Lsun/security/ssl/SignatureAndHashAlgorithm;>;"
    if-eqz v9, :cond_e

    invoke-interface {v9}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 265
    :cond_e
    new-instance v0, Ljavax/net/ssl/SSLHandshakeException;

    .line 266
    const-string/jumbo v1, "No peer supported signature algorithms"

    .line 265
    invoke-direct {v0, v1}, Ljavax/net/ssl/SSLHandshakeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 270
    :cond_f
    invoke-static {v9}, Lsun/security/ssl/SignatureAndHashAlgorithm;->getSupportedAlgorithms(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v10

    .line 272
    .local v10, "supportedPeerSignAlgs":Ljava/util/Collection;, "Ljava/util/Collection<Lsun/security/ssl/SignatureAndHashAlgorithm;>;"
    invoke-interface {v10}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 273
    new-instance v0, Ljavax/net/ssl/SSLHandshakeException;

    .line 274
    const-string/jumbo v1, "No supported signature and hash algorithm in common"

    .line 273
    invoke-direct {v0, v1}, Ljavax/net/ssl/SSLHandshakeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 277
    :cond_10
    invoke-virtual {p0, v10}, Lsun/security/ssl/Handshaker;->setPeerSupportedSignAlgs(Ljava/util/Collection;)V

    .line 278
    iget-object v0, p0, Lsun/security/ssl/Handshaker;->session:Lsun/security/ssl/SSLSessionImpl;

    invoke-virtual {v0, v10}, Lsun/security/ssl/SSLSessionImpl;->setPeerSupportedSignatureAlgorithms(Ljava/util/Collection;)V

    goto/16 :goto_0

    .line 285
    .end local v9    # "peerSignAlgs":Ljava/util/Collection;, "Ljava/util/Collection<Lsun/security/ssl/SignatureAndHashAlgorithm;>;"
    .end local v10    # "supportedPeerSignAlgs":Ljava/util/Collection;, "Ljava/util/Collection<Lsun/security/ssl/SignatureAndHashAlgorithm;>;"
    :sswitch_5
    new-instance v0, Lsun/security/ssl/HandshakeMessage$ServerHelloDone;

    iget-object v1, p0, Lsun/security/ssl/Handshaker;->input:Lsun/security/ssl/HandshakeInStream;

    invoke-direct {v0, v1}, Lsun/security/ssl/HandshakeMessage$ServerHelloDone;-><init>(Lsun/security/ssl/HandshakeInStream;)V

    invoke-direct {p0, v0}, Lsun/security/ssl/ClientHandshaker;->serverHelloDone(Lsun/security/ssl/HandshakeMessage$ServerHelloDone;)V

    goto/16 :goto_0

    .line 290
    :sswitch_6
    new-instance v0, Lsun/security/ssl/HandshakeMessage$Finished;

    iget-object v1, p0, Lsun/security/ssl/Handshaker;->protocolVersion:Lsun/security/ssl/ProtocolVersion;

    iget-object v2, p0, Lsun/security/ssl/Handshaker;->input:Lsun/security/ssl/HandshakeInStream;

    iget-object v3, p0, Lsun/security/ssl/Handshaker;->cipherSuite:Lsun/security/ssl/CipherSuite;

    invoke-direct {v0, v1, v2, v3}, Lsun/security/ssl/HandshakeMessage$Finished;-><init>(Lsun/security/ssl/ProtocolVersion;Lsun/security/ssl/HandshakeInStream;Lsun/security/ssl/CipherSuite;)V

    .line 289
    invoke-direct {p0, v0}, Lsun/security/ssl/ClientHandshaker;->serverFinished(Lsun/security/ssl/HandshakeMessage$Finished;)V

    goto/16 :goto_0

    .line 137
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x2 -> :sswitch_1
        0xb -> :sswitch_2
        0xc -> :sswitch_3
        0xd -> :sswitch_4
        0xe -> :sswitch_5
        0x14 -> :sswitch_6
    .end sparse-switch

    .line 160
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_4
        :pswitch_4
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_4
        :pswitch_4
        :pswitch_5
        :pswitch_5
        :pswitch_4
        :pswitch_0
    .end packed-switch
.end method
