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

    const-string/jumbo v0, "jsse.enableSNIExtension"

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lsun/security/ssl/Debug;->getBooleanProperty(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lsun/security/ssl/ClientHandshaker;->enableSNIExtension:Z

    return-void
.end method

.method constructor <init>(Lsun/security/ssl/SSLEngineImpl;Lsun/security/ssl/SSLContextImpl;Lsun/security/ssl/ProtocolList;Lsun/security/ssl/ProtocolVersion;ZZ[B[B)V
    .locals 11

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

    return-void
.end method

.method constructor <init>(Lsun/security/ssl/SSLSocketImpl;Lsun/security/ssl/SSLContextImpl;Lsun/security/ssl/ProtocolList;Lsun/security/ssl/ProtocolVersion;ZZ[B[B)V
    .locals 11

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

    return-void
.end method

.method private sendChangeCipherAndFinish(Z)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Lsun/security/ssl/HandshakeMessage$Finished;

    iget-object v1, p0, Lsun/security/ssl/Handshaker;->protocolVersion:Lsun/security/ssl/ProtocolVersion;

    iget-object v2, p0, Lsun/security/ssl/Handshaker;->handshakeHash:Lsun/security/ssl/HandshakeHash;

    iget-object v3, p0, Lsun/security/ssl/Handshaker;->session:Lsun/security/ssl/SSLSessionImpl;

    invoke-virtual {v3}, Lsun/security/ssl/SSLSessionImpl;->getMasterSecret()Ljavax/crypto/SecretKey;

    move-result-object v4

    iget-object v5, p0, Lsun/security/ssl/Handshaker;->cipherSuite:Lsun/security/ssl/CipherSuite;

    const/4 v3, 0x1

    invoke-direct/range {v0 .. v5}, Lsun/security/ssl/HandshakeMessage$Finished;-><init>(Lsun/security/ssl/ProtocolVersion;Lsun/security/ssl/HandshakeHash;ILjavax/crypto/SecretKey;Lsun/security/ssl/CipherSuite;)V

    invoke-virtual {p0, v0, p1}, Lsun/security/ssl/Handshaker;->sendChangeCipherSpec(Lsun/security/ssl/HandshakeMessage$Finished;Z)V

    iget-boolean v1, p0, Lsun/security/ssl/Handshaker;->secureRenegotiation:Z

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lsun/security/ssl/HandshakeMessage$Finished;->getVerifyData()[B

    move-result-object v1

    iput-object v1, p0, Lsun/security/ssl/Handshaker;->clientVerifyData:[B

    :cond_0
    const/16 v1, 0x13

    iput v1, p0, Lsun/security/ssl/Handshaker;->state:I

    return-void
.end method

.method private serverCertificate(Lsun/security/ssl/HandshakeMessage$CertificateMsg;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v4, Lsun/security/ssl/ClientHandshaker;->debug:Lsun/security/ssl/Debug;

    if-eqz v4, :cond_0

    const-string/jumbo v4, "handshake"

    invoke-static {v4}, Lsun/security/ssl/Debug;->isOn(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {p1, v4}, Lsun/security/ssl/HandshakeMessage$CertificateMsg;->print(Ljava/io/PrintStream;)V

    :cond_0
    invoke-virtual {p1}, Lsun/security/ssl/HandshakeMessage$CertificateMsg;->getCertificateChain()[Ljava/security/cert/X509Certificate;

    move-result-object v2

    array-length v4, v2

    if-nez v4, :cond_1

    const-string/jumbo v4, "empty certificate chain"

    const/16 v5, 0x2a

    invoke-virtual {p0, v5, v4}, Lsun/security/ssl/Handshaker;->fatalSE(BLjava/lang/String;)V

    :cond_1
    iget-object v4, p0, Lsun/security/ssl/Handshaker;->sslContext:Lsun/security/ssl/SSLContextImpl;

    invoke-virtual {v4}, Lsun/security/ssl/SSLContextImpl;->getX509TrustManager()Ljavax/net/ssl/X509TrustManager;

    move-result-object v3

    :try_start_0
    iget-object v4, p0, Lsun/security/ssl/Handshaker;->keyExchange:Lsun/security/ssl/CipherSuite$KeyExchange;

    sget-object v5, Lsun/security/ssl/CipherSuite$KeyExchange;->K_RSA_EXPORT:Lsun/security/ssl/CipherSuite$KeyExchange;

    if-ne v4, v5, :cond_2

    iget-boolean v4, p0, Lsun/security/ssl/ClientHandshaker;->serverKeyExchangeReceived:Z

    if-eqz v4, :cond_3

    :cond_2
    iget-object v4, p0, Lsun/security/ssl/Handshaker;->keyExchange:Lsun/security/ssl/CipherSuite$KeyExchange;

    iget-object v1, v4, Lsun/security/ssl/CipherSuite$KeyExchange;->name:Ljava/lang/String;

    :goto_0
    instance-of v4, v3, Ljavax/net/ssl/X509ExtendedTrustManager;

    if-eqz v4, :cond_5

    iget-object v4, p0, Lsun/security/ssl/Handshaker;->conn:Lsun/security/ssl/SSLSocketImpl;

    if-eqz v4, :cond_4

    nop

    nop

    invoke-virtual {v2}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Ljava/security/cert/X509Certificate;

    iget-object v5, p0, Lsun/security/ssl/Handshaker;->conn:Lsun/security/ssl/SSLSocketImpl;

    invoke-virtual {v3, v4, v1, v5}, Ljavax/net/ssl/X509ExtendedTrustManager;->checkServerTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;Ljava/net/Socket;)V
    :try_end_0
    .catch Ljava/security/cert/CertificateException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    iget-object v4, p0, Lsun/security/ssl/Handshaker;->session:Lsun/security/ssl/SSLSessionImpl;

    invoke-virtual {v4, v2}, Lsun/security/ssl/SSLSessionImpl;->setPeerCertificates([Ljava/security/cert/X509Certificate;)V

    return-void

    :cond_3
    :try_start_1
    sget-object v4, Lsun/security/ssl/CipherSuite$KeyExchange;->K_RSA:Lsun/security/ssl/CipherSuite$KeyExchange;

    iget-object v1, v4, Lsun/security/ssl/CipherSuite$KeyExchange;->name:Ljava/lang/String;

    goto :goto_0

    :cond_4
    nop

    nop

    invoke-virtual {v2}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Ljava/security/cert/X509Certificate;

    iget-object v5, p0, Lsun/security/ssl/Handshaker;->engine:Lsun/security/ssl/SSLEngineImpl;

    invoke-virtual {v3, v4, v1, v5}, Ljavax/net/ssl/X509ExtendedTrustManager;->checkServerTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;Ljavax/net/ssl/SSLEngine;)V
    :try_end_1
    .catch Ljava/security/cert/CertificateException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    const/16 v4, 0x2e

    invoke-virtual {p0, v4, v0}, Lsun/security/ssl/Handshaker;->fatalSE(BLjava/lang/Throwable;)V

    goto :goto_1

    :cond_5
    :try_start_2
    new-instance v4, Ljava/security/cert/CertificateException;

    const-string/jumbo v5, "Improper X509TrustManager implementation"

    invoke-direct {v4, v5}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_2
    .catch Ljava/security/cert/CertificateException; {:try_start_2 .. :try_end_2} :catch_0
.end method

.method private serverFinished(Lsun/security/ssl/HandshakeMessage$Finished;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v1, Lsun/security/ssl/ClientHandshaker;->debug:Lsun/security/ssl/Debug;

    if-eqz v1, :cond_0

    const-string/jumbo v1, "handshake"

    invoke-static {v1}, Lsun/security/ssl/Debug;->isOn(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {p1, v1}, Lsun/security/ssl/HandshakeMessage$Finished;->print(Ljava/io/PrintStream;)V

    :cond_0
    iget-object v1, p0, Lsun/security/ssl/Handshaker;->handshakeHash:Lsun/security/ssl/HandshakeHash;

    iget-object v2, p0, Lsun/security/ssl/Handshaker;->session:Lsun/security/ssl/SSLSessionImpl;

    invoke-virtual {v2}, Lsun/security/ssl/SSLSessionImpl;->getMasterSecret()Ljavax/crypto/SecretKey;

    move-result-object v2

    const/4 v3, 0x2

    invoke-virtual {p1, v1, v3, v2}, Lsun/security/ssl/HandshakeMessage$Finished;->verify(Lsun/security/ssl/HandshakeHash;ILjavax/crypto/SecretKey;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string/jumbo v1, "server \'finished\' message doesn\'t verify"

    const/16 v2, 0x2f

    invoke-virtual {p0, v2, v1}, Lsun/security/ssl/Handshaker;->fatalSE(BLjava/lang/String;)V

    :cond_1
    iget-boolean v1, p0, Lsun/security/ssl/Handshaker;->secureRenegotiation:Z

    if-eqz v1, :cond_2

    invoke-virtual {p1}, Lsun/security/ssl/HandshakeMessage$Finished;->getVerifyData()[B

    move-result-object v1

    iput-object v1, p0, Lsun/security/ssl/Handshaker;->serverVerifyData:[B

    :cond_2
    iget-boolean v1, p0, Lsun/security/ssl/Handshaker;->resumingSession:Z

    if-eqz v1, :cond_3

    iget-object v1, p0, Lsun/security/ssl/Handshaker;->input:Lsun/security/ssl/HandshakeInStream;

    invoke-virtual {v1}, Lsun/security/ssl/HandshakeInStream;->digestNow()V

    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lsun/security/ssl/ClientHandshaker;->sendChangeCipherAndFinish(Z)V

    :cond_3
    iget-object v1, p0, Lsun/security/ssl/Handshaker;->session:Lsun/security/ssl/SSLSessionImpl;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lsun/security/ssl/SSLSessionImpl;->setLastAccessedTime(J)V

    iget-boolean v1, p0, Lsun/security/ssl/Handshaker;->resumingSession:Z

    if-nez v1, :cond_4

    iget-object v1, p0, Lsun/security/ssl/Handshaker;->session:Lsun/security/ssl/SSLSessionImpl;

    invoke-virtual {v1}, Lsun/security/ssl/SSLSessionImpl;->isRejoinable()Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object v1, p0, Lsun/security/ssl/Handshaker;->sslContext:Lsun/security/ssl/SSLContextImpl;

    invoke-virtual {v1}, Lsun/security/ssl/SSLContextImpl;->engineGetClientSessionContext()Ljavax/net/ssl/SSLSessionContext;

    move-result-object v1

    check-cast v1, Lsun/security/ssl/SSLSessionContextImpl;

    iget-object v2, p0, Lsun/security/ssl/Handshaker;->session:Lsun/security/ssl/SSLSessionImpl;

    invoke-virtual {v1, v2}, Lsun/security/ssl/SSLSessionContextImpl;->put(Lsun/security/ssl/SSLSessionImpl;)V

    sget-object v1, Lsun/security/ssl/ClientHandshaker;->debug:Lsun/security/ssl/Debug;

    if-eqz v1, :cond_4

    const-string/jumbo v1, "session"

    invoke-static {v1}, Lsun/security/ssl/Debug;->isOn(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

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

    :cond_4
    :goto_0
    return-void

    :cond_5
    sget-object v1, Lsun/security/ssl/ClientHandshaker;->debug:Lsun/security/ssl/Debug;

    if-eqz v1, :cond_4

    const-string/jumbo v1, "session"

    invoke-static {v1}, Lsun/security/ssl/Debug;->isOn(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "%% Didn\'t cache non-resumable client session: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lsun/security/ssl/Handshaker;->session:Lsun/security/ssl/SSLSessionImpl;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private serverHello(Lsun/security/ssl/HandshakeMessage$ServerHello;)V
    .locals 20
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput-boolean v1, v0, Lsun/security/ssl/ClientHandshaker;->serverKeyExchangeReceived:Z

    sget-object v1, Lsun/security/ssl/ClientHandshaker;->debug:Lsun/security/ssl/Debug;

    if-eqz v1, :cond_0

    const-string/jumbo v1, "handshake"

    invoke-static {v1}, Lsun/security/ssl/Debug;->isOn(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Lsun/security/ssl/HandshakeMessage$ServerHello;->print(Ljava/io/PrintStream;)V

    :cond_0
    move-object/from16 v0, p1

    iget-object v12, v0, Lsun/security/ssl/HandshakeMessage$ServerHello;->protocolVersion:Lsun/security/ssl/ProtocolVersion;

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lsun/security/ssl/Handshaker;->isNegotiable(Lsun/security/ssl/ProtocolVersion;)Z

    move-result v1

    if-nez v1, :cond_1

    new-instance v1, Ljavax/net/ssl/SSLHandshakeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Server chose "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", but that protocol version is not enabled or not supported "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "by the client."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljavax/net/ssl/SSLHandshakeException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    move-object/from16 v0, p0

    iget-object v1, v0, Lsun/security/ssl/Handshaker;->handshakeHash:Lsun/security/ssl/HandshakeHash;

    invoke-virtual {v1, v12}, Lsun/security/ssl/HandshakeHash;->protocolDetermined(Lsun/security/ssl/ProtocolVersion;)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lsun/security/ssl/Handshaker;->setVersion(Lsun/security/ssl/ProtocolVersion;)V

    move-object/from16 v0, p1

    iget-object v1, v0, Lsun/security/ssl/HandshakeMessage$ServerHello;->extensions:Lsun/security/ssl/HelloExtensions;

    sget-object v2, Lsun/security/ssl/ExtensionType;->EXT_RENEGOTIATION_INFO:Lsun/security/ssl/ExtensionType;

    invoke-virtual {v1, v2}, Lsun/security/ssl/HelloExtensions;->get(Lsun/security/ssl/ExtensionType;)Lsun/security/ssl/HelloExtension;

    move-result-object v14

    check-cast v14, Lsun/security/ssl/RenegotiationInfoExtension;

    if-eqz v14, :cond_9

    move-object/from16 v0, p0

    iget-boolean v1, v0, Lsun/security/ssl/Handshaker;->isInitialHandshake:Z

    if-eqz v1, :cond_7

    invoke-virtual {v14}, Lsun/security/ssl/RenegotiationInfoExtension;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    const-string/jumbo v1, "The renegotiation_info field is not empty"

    const/16 v2, 0x28

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v1}, Lsun/security/ssl/Handshaker;->fatalSE(BLjava/lang/String;)V

    :cond_2
    const/4 v1, 0x1

    move-object/from16 v0, p0

    iput-boolean v1, v0, Lsun/security/ssl/Handshaker;->secureRenegotiation:Z

    :cond_3
    :goto_0
    move-object/from16 v0, p1

    iget-object v1, v0, Lsun/security/ssl/HandshakeMessage$ServerHello;->svr_random:Lsun/security/ssl/RandomCookie;

    move-object/from16 v0, p0

    iput-object v1, v0, Lsun/security/ssl/Handshaker;->svr_random:Lsun/security/ssl/RandomCookie;

    move-object/from16 v0, p1

    iget-object v1, v0, Lsun/security/ssl/HandshakeMessage$ServerHello;->cipherSuite:Lsun/security/ssl/CipherSuite;

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lsun/security/ssl/Handshaker;->isNegotiable(Lsun/security/ssl/CipherSuite;)Z

    move-result v1

    if-nez v1, :cond_4

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

    const/16 v2, 0x2f

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v1}, Lsun/security/ssl/Handshaker;->fatalSE(BLjava/lang/String;)V

    :cond_4
    move-object/from16 v0, p1

    iget-object v1, v0, Lsun/security/ssl/HandshakeMessage$ServerHello;->cipherSuite:Lsun/security/ssl/CipherSuite;

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lsun/security/ssl/Handshaker;->setCipherSuite(Lsun/security/ssl/CipherSuite;)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lsun/security/ssl/Handshaker;->protocolVersion:Lsun/security/ssl/ProtocolVersion;

    iget v1, v1, Lsun/security/ssl/ProtocolVersion;->v:I

    sget-object v2, Lsun/security/ssl/ProtocolVersion;->TLS12:Lsun/security/ssl/ProtocolVersion;

    iget v2, v2, Lsun/security/ssl/ProtocolVersion;->v:I

    if-lt v1, v2, :cond_5

    move-object/from16 v0, p0

    iget-object v1, v0, Lsun/security/ssl/Handshaker;->handshakeHash:Lsun/security/ssl/HandshakeHash;

    move-object/from16 v0, p0

    iget-object v2, v0, Lsun/security/ssl/Handshaker;->cipherSuite:Lsun/security/ssl/CipherSuite;

    iget-object v2, v2, Lsun/security/ssl/CipherSuite;->prfAlg:Lsun/security/ssl/CipherSuite$PRF;

    invoke-virtual {v2}, Lsun/security/ssl/CipherSuite$PRF;->getPRFHashAlg()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lsun/security/ssl/HandshakeHash;->setFinishedAlg(Ljava/lang/String;)V

    :cond_5
    move-object/from16 v0, p1

    iget-byte v1, v0, Lsun/security/ssl/HandshakeMessage$ServerHello;->compression_method:B

    if-eqz v1, :cond_6

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "compression type not supported, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object/from16 v0, p1

    iget-byte v2, v0, Lsun/security/ssl/HandshakeMessage$ServerHello;->compression_method:B

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x2f

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v1}, Lsun/security/ssl/Handshaker;->fatalSE(BLjava/lang/String;)V

    :cond_6
    move-object/from16 v0, p0

    iget-object v1, v0, Lsun/security/ssl/Handshaker;->session:Lsun/security/ssl/SSLSessionImpl;

    if-eqz v1, :cond_12

    move-object/from16 v0, p0

    iget-object v1, v0, Lsun/security/ssl/Handshaker;->session:Lsun/security/ssl/SSLSessionImpl;

    invoke-virtual {v1}, Lsun/security/ssl/SSLSessionImpl;->getSessionId()Lsun/security/ssl/SessionId;

    move-result-object v1

    move-object/from16 v0, p1

    iget-object v2, v0, Lsun/security/ssl/HandshakeMessage$ServerHello;->sessionId:Lsun/security/ssl/SessionId;

    invoke-virtual {v1, v2}, Lsun/security/ssl/SessionId;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_16

    move-object/from16 v0, p0

    iget-object v1, v0, Lsun/security/ssl/Handshaker;->session:Lsun/security/ssl/SSLSessionImpl;

    invoke-virtual {v1}, Lsun/security/ssl/SSLSessionImpl;->getSuite()Lsun/security/ssl/CipherSuite;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v1, v0, Lsun/security/ssl/Handshaker;->cipherSuite:Lsun/security/ssl/CipherSuite;

    if-eq v1, v15, :cond_c

    new-instance v1, Ljavax/net/ssl/SSLProtocolException;

    const-string/jumbo v2, "Server returned wrong cipher suite for session"

    invoke-direct {v1, v2}, Ljavax/net/ssl/SSLProtocolException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_7
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lsun/security/ssl/Handshaker;->secureRenegotiation:Z

    if-nez v1, :cond_8

    const-string/jumbo v1, "Unexpected renegotiation indication extension"

    const/16 v2, 0x28

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v1}, Lsun/security/ssl/Handshaker;->fatalSE(BLjava/lang/String;)V

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

    move-object/from16 v0, p0

    iget-object v1, v0, Lsun/security/ssl/Handshaker;->clientVerifyData:[B

    move-object/from16 v0, p0

    iget-object v2, v0, Lsun/security/ssl/Handshaker;->clientVerifyData:[B

    array-length v2, v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object/from16 v0, v19

    invoke-static {v1, v3, v0, v4, v2}, Ljava/lang/System;->arraycopy([BI[BII)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lsun/security/ssl/Handshaker;->serverVerifyData:[B

    move-object/from16 v0, p0

    iget-object v2, v0, Lsun/security/ssl/Handshaker;->clientVerifyData:[B

    array-length v2, v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lsun/security/ssl/Handshaker;->serverVerifyData:[B

    array-length v3, v3

    const/4 v4, 0x0

    move-object/from16 v0, v19

    invoke-static {v1, v4, v0, v2, v3}, Ljava/lang/System;->arraycopy([BI[BII)V

    invoke-virtual {v14}, Lsun/security/ssl/RenegotiationInfoExtension;->getRenegotiatedConnection()[B

    move-result-object v1

    move-object/from16 v0, v19

    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v1

    if-nez v1, :cond_3

    const-string/jumbo v1, "Incorrect verify data in ServerHello renegotiation_info message"

    const/16 v2, 0x28

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v1}, Lsun/security/ssl/Handshaker;->fatalSE(BLjava/lang/String;)V

    goto/16 :goto_0

    :cond_9
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lsun/security/ssl/Handshaker;->isInitialHandshake:Z

    if-eqz v1, :cond_b

    sget-boolean v1, Lsun/security/ssl/ClientHandshaker;->allowLegacyHelloMessages:Z

    if-nez v1, :cond_a

    const-string/jumbo v1, "Failed to negotiate the use of secure renegotiation"

    const/16 v2, 0x28

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v1}, Lsun/security/ssl/Handshaker;->fatalSE(BLjava/lang/String;)V

    :cond_a
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput-boolean v1, v0, Lsun/security/ssl/Handshaker;->secureRenegotiation:Z

    sget-object v1, Lsun/security/ssl/ClientHandshaker;->debug:Lsun/security/ssl/Debug;

    if-eqz v1, :cond_3

    const-string/jumbo v1, "handshake"

    invoke-static {v1}, Lsun/security/ssl/Debug;->isOn(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string/jumbo v2, "Warning: No renegotiation indication extension in ServerHello"

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_b
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lsun/security/ssl/Handshaker;->secureRenegotiation:Z

    if-eqz v1, :cond_3

    const-string/jumbo v1, "No renegotiation indication extension"

    const/16 v2, 0x28

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v1}, Lsun/security/ssl/Handshaker;->fatalSE(BLjava/lang/String;)V

    goto/16 :goto_0

    :cond_c
    move-object/from16 v0, p0

    iget-object v1, v0, Lsun/security/ssl/Handshaker;->session:Lsun/security/ssl/SSLSessionImpl;

    invoke-virtual {v1}, Lsun/security/ssl/SSLSessionImpl;->getProtocolVersion()Lsun/security/ssl/ProtocolVersion;

    move-result-object v16

    move-object/from16 v0, p0

    iget-object v1, v0, Lsun/security/ssl/Handshaker;->protocolVersion:Lsun/security/ssl/ProtocolVersion;

    move-object/from16 v0, v16

    if-eq v1, v0, :cond_d

    new-instance v1, Ljavax/net/ssl/SSLProtocolException;

    const-string/jumbo v2, "Server resumed session with wrong protocol version"

    invoke-direct {v1, v2}, Ljavax/net/ssl/SSLProtocolException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_d
    iget-object v1, v15, Lsun/security/ssl/CipherSuite;->keyExchange:Lsun/security/ssl/CipherSuite$KeyExchange;

    sget-object v2, Lsun/security/ssl/CipherSuite$KeyExchange;->K_KRB5:Lsun/security/ssl/CipherSuite$KeyExchange;

    if-eq v1, v2, :cond_e

    iget-object v1, v15, Lsun/security/ssl/CipherSuite;->keyExchange:Lsun/security/ssl/CipherSuite$KeyExchange;

    sget-object v2, Lsun/security/ssl/CipherSuite$KeyExchange;->K_KRB5_EXPORT:Lsun/security/ssl/CipherSuite$KeyExchange;

    if-ne v1, v2, :cond_11

    :cond_e
    move-object/from16 v0, p0

    iget-object v1, v0, Lsun/security/ssl/Handshaker;->session:Lsun/security/ssl/SSLSessionImpl;

    invoke-virtual {v1}, Lsun/security/ssl/SSLSessionImpl;->getLocalPrincipal()Ljava/security/Principal;

    move-result-object v11

    const/16 v17, 0x0

    :try_start_0
    new-instance v1, Lsun/security/ssl/ClientHandshaker$1;

    move-object/from16 v0, p0

    invoke-direct {v1, v0}, Lsun/security/ssl/ClientHandshaker$1;-><init>(Lsun/security/ssl/ClientHandshaker;)V

    invoke-static {v1}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedExceptionAction;)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljavax/security/auth/Subject;
    :try_end_0
    .catch Ljava/security/PrivilegedActionException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_f
    :goto_1
    if-eqz v17, :cond_14

    const-class v1, Ljava/security/Principal;

    move-object/from16 v0, v17

    invoke-virtual {v0, v1}, Ljavax/security/auth/Subject;->getPrincipals(Ljava/lang/Class;)Ljava/util/Set;

    move-result-object v13

    invoke-interface {v13, v11}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_10

    new-instance v1, Ljavax/net/ssl/SSLProtocolException;

    const-string/jumbo v2, "Server resumed session with wrong subject identity"

    invoke-direct {v1, v2}, Ljavax/net/ssl/SSLProtocolException;-><init>(Ljava/lang/String;)V

    throw v1

    :catch_0
    move-exception v8

    const/16 v17, 0x0

    sget-object v1, Lsun/security/ssl/ClientHandshaker;->debug:Lsun/security/ssl/Debug;

    if-eqz v1, :cond_f

    const-string/jumbo v1, "session"

    invoke-static {v1}, Lsun/security/ssl/Debug;->isOn(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_f

    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string/jumbo v2, "Attempt to obtain subject failed!"

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_1

    :cond_10
    sget-object v1, Lsun/security/ssl/ClientHandshaker;->debug:Lsun/security/ssl/Debug;

    if-eqz v1, :cond_11

    const-string/jumbo v1, "session"

    invoke-static {v1}, Lsun/security/ssl/Debug;->isOn(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_11

    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string/jumbo v2, "Subject identity is same"

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_11
    const/4 v1, 0x1

    move-object/from16 v0, p0

    iput-boolean v1, v0, Lsun/security/ssl/Handshaker;->resumingSession:Z

    const/16 v1, 0x13

    move-object/from16 v0, p0

    iput v1, v0, Lsun/security/ssl/Handshaker;->state:I

    move-object/from16 v0, p0

    iget-object v1, v0, Lsun/security/ssl/Handshaker;->session:Lsun/security/ssl/SSLSessionImpl;

    invoke-virtual {v1}, Lsun/security/ssl/SSLSessionImpl;->getMasterSecret()Ljavax/crypto/SecretKey;

    move-result-object v1

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lsun/security/ssl/Handshaker;->calculateConnectionKeys(Ljavax/crypto/SecretKey;)V

    sget-object v1, Lsun/security/ssl/ClientHandshaker;->debug:Lsun/security/ssl/Debug;

    if-eqz v1, :cond_12

    const-string/jumbo v1, "session"

    invoke-static {v1}, Lsun/security/ssl/Debug;->isOn(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_12

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

    :cond_12
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lsun/security/ssl/Handshaker;->resumingSession:Z

    if-eqz v1, :cond_17

    move-object/from16 v0, p0

    iget-object v1, v0, Lsun/security/ssl/Handshaker;->session:Lsun/security/ssl/SSLSessionImpl;

    if-eqz v1, :cond_17

    move-object/from16 v0, p0

    iget-object v1, v0, Lsun/security/ssl/Handshaker;->protocolVersion:Lsun/security/ssl/ProtocolVersion;

    iget v1, v1, Lsun/security/ssl/ProtocolVersion;->v:I

    sget-object v2, Lsun/security/ssl/ProtocolVersion;->TLS12:Lsun/security/ssl/ProtocolVersion;

    iget v2, v2, Lsun/security/ssl/ProtocolVersion;->v:I

    if-lt v1, v2, :cond_13

    move-object/from16 v0, p0

    iget-object v1, v0, Lsun/security/ssl/Handshaker;->handshakeHash:Lsun/security/ssl/HandshakeHash;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lsun/security/ssl/HandshakeHash;->setCertificateVerifyAlg(Ljava/lang/String;)V

    :cond_13
    move-object/from16 v0, p0

    iget-object v1, v0, Lsun/security/ssl/Handshaker;->session:Lsun/security/ssl/SSLSessionImpl;

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lsun/security/ssl/Handshaker;->setHandshakeSessionSE(Lsun/security/ssl/SSLSessionImpl;)V

    return-void

    :cond_14
    sget-object v1, Lsun/security/ssl/ClientHandshaker;->debug:Lsun/security/ssl/Debug;

    if-eqz v1, :cond_15

    const-string/jumbo v1, "session"

    invoke-static {v1}, Lsun/security/ssl/Debug;->isOn(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_15

    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string/jumbo v2, "Kerberos credentials are not present in the current Subject; check if  javax.security.auth.useSubjectAsCreds system property has been set to false"

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_15
    new-instance v1, Ljavax/net/ssl/SSLProtocolException;

    const-string/jumbo v2, "Server resumed session with no subject"

    invoke-direct {v1, v2}, Ljavax/net/ssl/SSLProtocolException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_16
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput-object v1, v0, Lsun/security/ssl/Handshaker;->session:Lsun/security/ssl/SSLSessionImpl;

    move-object/from16 v0, p0

    iget-boolean v1, v0, Lsun/security/ssl/Handshaker;->enableNewSession:Z

    if-nez v1, :cond_12

    new-instance v1, Ljavax/net/ssl/SSLException;

    const-string/jumbo v2, "New session creation is disabled"

    invoke-direct {v1, v2}, Ljavax/net/ssl/SSLException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_17
    move-object/from16 v0, p1

    iget-object v1, v0, Lsun/security/ssl/HandshakeMessage$ServerHello;->extensions:Lsun/security/ssl/HelloExtensions;

    invoke-virtual {v1}, Lsun/security/ssl/HelloExtensions;->list()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :cond_18
    :goto_2
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_19

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lsun/security/ssl/HelloExtension;

    iget-object v0, v9, Lsun/security/ssl/HelloExtension;->type:Lsun/security/ssl/ExtensionType;

    move-object/from16 v18, v0

    sget-object v1, Lsun/security/ssl/ExtensionType;->EXT_ELLIPTIC_CURVES:Lsun/security/ssl/ExtensionType;

    move-object/from16 v0, v18

    if-eq v0, v1, :cond_18

    sget-object v1, Lsun/security/ssl/ExtensionType;->EXT_EC_POINT_FORMATS:Lsun/security/ssl/ExtensionType;

    move-object/from16 v0, v18

    if-eq v0, v1, :cond_18

    sget-object v1, Lsun/security/ssl/ExtensionType;->EXT_SERVER_NAME:Lsun/security/ssl/ExtensionType;

    move-object/from16 v0, v18

    if-eq v0, v1, :cond_18

    sget-object v1, Lsun/security/ssl/ExtensionType;->EXT_RENEGOTIATION_INFO:Lsun/security/ssl/ExtensionType;

    move-object/from16 v0, v18

    if-eq v0, v1, :cond_18

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

    const/16 v2, 0x6e

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v1}, Lsun/security/ssl/Handshaker;->fatalSE(BLjava/lang/String;)V

    goto :goto_2

    :cond_19
    new-instance v1, Lsun/security/ssl/SSLSessionImpl;

    move-object/from16 v0, p0

    iget-object v2, v0, Lsun/security/ssl/Handshaker;->protocolVersion:Lsun/security/ssl/ProtocolVersion;

    move-object/from16 v0, p0

    iget-object v3, v0, Lsun/security/ssl/Handshaker;->cipherSuite:Lsun/security/ssl/CipherSuite;

    invoke-virtual/range {p0 .. p0}, Lsun/security/ssl/Handshaker;->getLocalSupportedSignAlgs()Ljava/util/Collection;

    move-result-object v4

    move-object/from16 v0, p1

    iget-object v5, v0, Lsun/security/ssl/HandshakeMessage$ServerHello;->sessionId:Lsun/security/ssl/SessionId;

    invoke-virtual/range {p0 .. p0}, Lsun/security/ssl/Handshaker;->getHostSE()Ljava/lang/String;

    move-result-object v6

    invoke-virtual/range {p0 .. p0}, Lsun/security/ssl/Handshaker;->getPortSE()I

    move-result v7

    invoke-direct/range {v1 .. v7}, Lsun/security/ssl/SSLSessionImpl;-><init>(Lsun/security/ssl/ProtocolVersion;Lsun/security/ssl/CipherSuite;Ljava/util/Collection;Lsun/security/ssl/SessionId;Ljava/lang/String;I)V

    move-object/from16 v0, p0

    iput-object v1, v0, Lsun/security/ssl/Handshaker;->session:Lsun/security/ssl/SSLSessionImpl;

    move-object/from16 v0, p0

    iget-object v1, v0, Lsun/security/ssl/Handshaker;->session:Lsun/security/ssl/SSLSessionImpl;

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lsun/security/ssl/Handshaker;->setHandshakeSessionSE(Lsun/security/ssl/SSLSessionImpl;)V

    sget-object v1, Lsun/security/ssl/ClientHandshaker;->debug:Lsun/security/ssl/Debug;

    if-eqz v1, :cond_1a

    const-string/jumbo v1, "handshake"

    invoke-static {v1}, Lsun/security/ssl/Debug;->isOn(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1a

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

    :cond_1a
    return-void
.end method

.method private serverHelloDone(Lsun/security/ssl/HandshakeMessage$ServerHelloDone;)V
    .locals 30
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v5, Lsun/security/ssl/ClientHandshaker;->debug:Lsun/security/ssl/Debug;

    if-eqz v5, :cond_0

    const-string/jumbo v5, "handshake"

    invoke-static {v5}, Lsun/security/ssl/Debug;->isOn(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    sget-object v5, Ljava/lang/System;->out:Ljava/io/PrintStream;

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Lsun/security/ssl/HandshakeMessage$ServerHelloDone;->print(Ljava/io/PrintStream;)V

    :cond_0
    move-object/from16 v0, p0

    iget-object v5, v0, Lsun/security/ssl/Handshaker;->input:Lsun/security/ssl/HandshakeInStream;

    invoke-virtual {v5}, Lsun/security/ssl/HandshakeInStream;->digestNow()V

    const/16 v28, 0x0

    move-object/from16 v0, p0

    iget-object v5, v0, Lsun/security/ssl/ClientHandshaker;->certRequest:Lsun/security/ssl/HandshakeMessage$CertificateRequest;

    if-eqz v5, :cond_a

    move-object/from16 v0, p0

    iget-object v5, v0, Lsun/security/ssl/Handshaker;->sslContext:Lsun/security/ssl/SSLContextImpl;

    invoke-virtual {v5}, Lsun/security/ssl/SSLContextImpl;->getX509KeyManager()Ljavax/net/ssl/X509ExtendedKeyManager;

    move-result-object v21

    new-instance v19, Ljava/util/ArrayList;

    const/4 v5, 0x4

    move-object/from16 v0, v19

    invoke-direct {v0, v5}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v15, 0x0

    :goto_0
    move-object/from16 v0, p0

    iget-object v5, v0, Lsun/security/ssl/ClientHandshaker;->certRequest:Lsun/security/ssl/HandshakeMessage$CertificateRequest;

    iget-object v5, v5, Lsun/security/ssl/HandshakeMessage$CertificateRequest;->types:[B

    array-length v5, v5

    if-ge v15, v5, :cond_4

    move-object/from16 v0, p0

    iget-object v5, v0, Lsun/security/ssl/ClientHandshaker;->certRequest:Lsun/security/ssl/HandshakeMessage$CertificateRequest;

    iget-object v5, v5, Lsun/security/ssl/HandshakeMessage$CertificateRequest;->types:[B

    aget-byte v5, v5, v15

    sparse-switch v5, :sswitch_data_0

    const/16 v29, 0x0

    :goto_1
    if-eqz v29, :cond_1

    move-object/from16 v0, v19

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    :cond_1
    :goto_2
    add-int/lit8 v15, v15, 0x1

    goto :goto_0

    :sswitch_0
    const-string/jumbo v29, "RSA"

    goto :goto_1

    :sswitch_1
    const-string/jumbo v29, "DSA"

    goto :goto_1

    :sswitch_2
    invoke-static {}, Lsun/security/ssl/JsseJce;->isEcAvailable()Z

    move-result v5

    if-eqz v5, :cond_2

    const-string/jumbo v29, "EC"

    goto :goto_1

    :cond_2
    const/16 v29, 0x0

    goto :goto_1

    :cond_3
    move-object/from16 v0, v19

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_4
    const/4 v11, 0x0

    invoke-virtual/range {v19 .. v19}, Ljava/util/ArrayList;->size()I

    move-result v20

    if-eqz v20, :cond_5

    move/from16 v0, v20

    new-array v5, v0, [Ljava/lang/String;

    move-object/from16 v0, v19

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v18

    check-cast v18, [Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v5, v0, Lsun/security/ssl/Handshaker;->conn:Lsun/security/ssl/SSLSocketImpl;

    if-eqz v5, :cond_b

    move-object/from16 v0, p0

    iget-object v5, v0, Lsun/security/ssl/ClientHandshaker;->certRequest:Lsun/security/ssl/HandshakeMessage$CertificateRequest;

    invoke-virtual {v5}, Lsun/security/ssl/HandshakeMessage$CertificateRequest;->getAuthorities()[Ljavax/security/auth/x500/X500Principal;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lsun/security/ssl/Handshaker;->conn:Lsun/security/ssl/SSLSocketImpl;

    move-object/from16 v0, v21

    move-object/from16 v1, v18

    invoke-virtual {v0, v1, v5, v6}, Ljavax/net/ssl/X509ExtendedKeyManager;->chooseClientAlias([Ljava/lang/String;[Ljava/security/Principal;Ljava/net/Socket;)Ljava/lang/String;

    move-result-object v11

    :cond_5
    :goto_3
    const/16 v22, 0x0

    if-eqz v11, :cond_7

    move-object/from16 v0, v21

    invoke-virtual {v0, v11}, Ljavax/net/ssl/X509ExtendedKeyManager;->getCertificateChain(Ljava/lang/String;)[Ljava/security/cert/X509Certificate;

    move-result-object v12

    if-eqz v12, :cond_7

    array-length v5, v12

    if-eqz v5, :cond_7

    const/4 v5, 0x0

    aget-object v5, v12, v5

    invoke-virtual {v5}, Ljava/security/cert/Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v26

    move-object/from16 v0, v26

    instance-of v5, v0, Ljava/security/interfaces/ECPublicKey;

    if-eqz v5, :cond_6

    move-object/from16 v5, v26

    check-cast v5, Ljava/security/interfaces/ECPublicKey;

    invoke-interface {v5}, Ljava/security/interfaces/ECPublicKey;->getParams()Ljava/security/spec/ECParameterSpec;

    move-result-object v24

    invoke-static/range {v24 .. v24}, Lsun/security/ssl/SupportedEllipticCurvesExtension;->getCurveIndex(Ljava/security/spec/ECParameterSpec;)I

    move-result v16

    invoke-static/range {v16 .. v16}, Lsun/security/ssl/SupportedEllipticCurvesExtension;->isSupported(I)Z

    move-result v5

    if-nez v5, :cond_6

    const/16 v26, 0x0

    :cond_6
    if-eqz v26, :cond_7

    new-instance v22, Lsun/security/ssl/HandshakeMessage$CertificateMsg;

    move-object/from16 v0, v22

    invoke-direct {v0, v12}, Lsun/security/ssl/HandshakeMessage$CertificateMsg;-><init>([Ljava/security/cert/X509Certificate;)V

    move-object/from16 v0, v21

    invoke-virtual {v0, v11}, Ljavax/net/ssl/X509ExtendedKeyManager;->getPrivateKey(Ljava/lang/String;)Ljava/security/PrivateKey;

    move-result-object v28

    move-object/from16 v0, p0

    iget-object v5, v0, Lsun/security/ssl/Handshaker;->session:Lsun/security/ssl/SSLSessionImpl;

    move-object/from16 v0, v28

    invoke-virtual {v5, v0}, Lsun/security/ssl/SSLSessionImpl;->setLocalPrivateKey(Ljava/security/PrivateKey;)V

    move-object/from16 v0, p0

    iget-object v5, v0, Lsun/security/ssl/Handshaker;->session:Lsun/security/ssl/SSLSessionImpl;

    invoke-virtual {v5, v12}, Lsun/security/ssl/SSLSessionImpl;->setLocalCertificates([Ljava/security/cert/X509Certificate;)V

    :cond_7
    if-nez v22, :cond_8

    move-object/from16 v0, p0

    iget-object v5, v0, Lsun/security/ssl/Handshaker;->protocolVersion:Lsun/security/ssl/ProtocolVersion;

    iget v5, v5, Lsun/security/ssl/ProtocolVersion;->v:I

    sget-object v6, Lsun/security/ssl/ProtocolVersion;->TLS10:Lsun/security/ssl/ProtocolVersion;

    iget v6, v6, Lsun/security/ssl/ProtocolVersion;->v:I

    if-lt v5, v6, :cond_c

    new-instance v22, Lsun/security/ssl/HandshakeMessage$CertificateMsg;

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/security/cert/X509Certificate;

    move-object/from16 v0, v22

    invoke-direct {v0, v5}, Lsun/security/ssl/HandshakeMessage$CertificateMsg;-><init>([Ljava/security/cert/X509Certificate;)V

    :cond_8
    :goto_4
    if-eqz v22, :cond_a

    sget-object v5, Lsun/security/ssl/ClientHandshaker;->debug:Lsun/security/ssl/Debug;

    if-eqz v5, :cond_9

    const-string/jumbo v5, "handshake"

    invoke-static {v5}, Lsun/security/ssl/Debug;->isOn(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_9

    sget-object v5, Ljava/lang/System;->out:Ljava/io/PrintStream;

    move-object/from16 v0, v22

    invoke-virtual {v0, v5}, Lsun/security/ssl/HandshakeMessage$CertificateMsg;->print(Ljava/io/PrintStream;)V

    :cond_9
    move-object/from16 v0, p0

    iget-object v5, v0, Lsun/security/ssl/Handshaker;->output:Lsun/security/ssl/HandshakeOutStream;

    move-object/from16 v0, v22

    invoke-virtual {v0, v5}, Lsun/security/ssl/HandshakeMessage;->write(Lsun/security/ssl/HandshakeOutStream;)V

    :cond_a
    invoke-static {}, Lsun/security/ssl/ClientHandshaker;->-getsun-security-ssl-CipherSuite$KeyExchangeSwitchesValues()[I

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lsun/security/ssl/Handshaker;->keyExchange:Lsun/security/ssl/CipherSuite$KeyExchange;

    invoke-virtual {v6}, Ljava/lang/Enum;->ordinal()I

    move-result v6

    aget v5, v5, v6

    packed-switch v5, :pswitch_data_0

    new-instance v5, Ljava/lang/RuntimeException;

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

    invoke-direct {v5, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v5

    :cond_b
    move-object/from16 v0, p0

    iget-object v5, v0, Lsun/security/ssl/ClientHandshaker;->certRequest:Lsun/security/ssl/HandshakeMessage$CertificateRequest;

    invoke-virtual {v5}, Lsun/security/ssl/HandshakeMessage$CertificateRequest;->getAuthorities()[Ljavax/security/auth/x500/X500Principal;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lsun/security/ssl/Handshaker;->engine:Lsun/security/ssl/SSLEngineImpl;

    move-object/from16 v0, v21

    move-object/from16 v1, v18

    invoke-virtual {v0, v1, v5, v6}, Ljavax/net/ssl/X509ExtendedKeyManager;->chooseEngineClientAlias([Ljava/lang/String;[Ljava/security/Principal;Ljavax/net/ssl/SSLEngine;)Ljava/lang/String;

    move-result-object v11

    goto/16 :goto_3

    :cond_c
    const/16 v5, 0x29

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lsun/security/ssl/Handshaker;->warningSE(B)V

    goto :goto_4

    :pswitch_0
    move-object/from16 v0, p0

    iget-object v5, v0, Lsun/security/ssl/ClientHandshaker;->serverKey:Ljava/security/PublicKey;

    if-nez v5, :cond_d

    new-instance v5, Ljavax/net/ssl/SSLProtocolException;

    const-string/jumbo v6, "Server did not send certificate message"

    invoke-direct {v5, v6}, Ljavax/net/ssl/SSLProtocolException;-><init>(Ljava/lang/String;)V

    throw v5

    :cond_d
    move-object/from16 v0, p0

    iget-object v5, v0, Lsun/security/ssl/ClientHandshaker;->serverKey:Ljava/security/PublicKey;

    instance-of v5, v5, Ljava/security/interfaces/RSAPublicKey;

    if-nez v5, :cond_e

    new-instance v5, Ljavax/net/ssl/SSLProtocolException;

    const-string/jumbo v6, "Server certificate does not include an RSA key"

    invoke-direct {v5, v6}, Ljavax/net/ssl/SSLProtocolException;-><init>(Ljava/lang/String;)V

    throw v5

    :cond_e
    move-object/from16 v0, p0

    iget-object v5, v0, Lsun/security/ssl/Handshaker;->keyExchange:Lsun/security/ssl/CipherSuite$KeyExchange;

    sget-object v6, Lsun/security/ssl/CipherSuite$KeyExchange;->K_RSA:Lsun/security/ssl/CipherSuite$KeyExchange;

    if-ne v5, v6, :cond_10

    move-object/from16 v0, p0

    iget-object v0, v0, Lsun/security/ssl/ClientHandshaker;->serverKey:Ljava/security/PublicKey;

    move-object/from16 v17, v0

    :goto_5
    new-instance v23, Lsun/security/ssl/RSAClientKeyExchange;

    move-object/from16 v0, p0

    iget-object v5, v0, Lsun/security/ssl/Handshaker;->protocolVersion:Lsun/security/ssl/ProtocolVersion;

    move-object/from16 v0, p0

    iget-object v6, v0, Lsun/security/ssl/ClientHandshaker;->maxProtocolVersion:Lsun/security/ssl/ProtocolVersion;

    move-object/from16 v0, p0

    iget-object v7, v0, Lsun/security/ssl/Handshaker;->sslContext:Lsun/security/ssl/SSLContextImpl;

    invoke-virtual {v7}, Lsun/security/ssl/SSLContextImpl;->getSecureRandom()Ljava/security/SecureRandom;

    move-result-object v7

    move-object/from16 v0, v23

    move-object/from16 v1, v17

    invoke-direct {v0, v5, v6, v7, v1}, Lsun/security/ssl/RSAClientKeyExchange;-><init>(Lsun/security/ssl/ProtocolVersion;Lsun/security/ssl/ProtocolVersion;Ljava/security/SecureRandom;Ljava/security/PublicKey;)V

    :goto_6
    sget-object v5, Lsun/security/ssl/ClientHandshaker;->debug:Lsun/security/ssl/Debug;

    if-eqz v5, :cond_f

    const-string/jumbo v5, "handshake"

    invoke-static {v5}, Lsun/security/ssl/Debug;->isOn(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_f

    sget-object v5, Ljava/lang/System;->out:Ljava/io/PrintStream;

    move-object/from16 v0, v23

    invoke-virtual {v0, v5}, Lsun/security/ssl/HandshakeMessage;->print(Ljava/io/PrintStream;)V

    :cond_f
    move-object/from16 v0, p0

    iget-object v5, v0, Lsun/security/ssl/Handshaker;->output:Lsun/security/ssl/HandshakeOutStream;

    move-object/from16 v0, v23

    invoke-virtual {v0, v5}, Lsun/security/ssl/HandshakeMessage;->write(Lsun/security/ssl/HandshakeOutStream;)V

    move-object/from16 v0, p0

    iget-object v5, v0, Lsun/security/ssl/Handshaker;->output:Lsun/security/ssl/HandshakeOutStream;

    invoke-virtual {v5}, Lsun/security/ssl/HandshakeOutStream;->doHashes()V

    move-object/from16 v0, p0

    iget-object v5, v0, Lsun/security/ssl/Handshaker;->output:Lsun/security/ssl/HandshakeOutStream;

    invoke-virtual {v5}, Lsun/security/ssl/HandshakeOutStream;->flush()V

    invoke-static {}, Lsun/security/ssl/ClientHandshaker;->-getsun-security-ssl-CipherSuite$KeyExchangeSwitchesValues()[I

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lsun/security/ssl/Handshaker;->keyExchange:Lsun/security/ssl/CipherSuite$KeyExchange;

    invoke-virtual {v6}, Ljava/lang/Enum;->ordinal()I

    move-result v6

    aget v5, v5, v6

    packed-switch v5, :pswitch_data_1

    :pswitch_1
    new-instance v5, Ljava/io/IOException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Internal error: unknown key exchange "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v7, v0, Lsun/security/ssl/Handshaker;->keyExchange:Lsun/security/ssl/CipherSuite$KeyExchange;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v5

    :cond_10
    move-object/from16 v0, p0

    iget-object v5, v0, Lsun/security/ssl/ClientHandshaker;->serverKey:Ljava/security/PublicKey;

    invoke-static {v5}, Lsun/security/ssl/JsseJce;->getRSAKeyLength(Ljava/security/PublicKey;)I

    move-result v5

    const/16 v6, 0x200

    if-gt v5, v6, :cond_11

    move-object/from16 v0, p0

    iget-object v0, v0, Lsun/security/ssl/ClientHandshaker;->serverKey:Ljava/security/PublicKey;

    move-object/from16 v17, v0

    goto/16 :goto_5

    :cond_11
    move-object/from16 v0, p0

    iget-object v5, v0, Lsun/security/ssl/ClientHandshaker;->ephemeralServerKey:Ljava/security/PublicKey;

    if-nez v5, :cond_12

    new-instance v5, Ljavax/net/ssl/SSLProtocolException;

    const-string/jumbo v6, "Server did not send a RSA_EXPORT Server Key Exchange message"

    invoke-direct {v5, v6}, Ljavax/net/ssl/SSLProtocolException;-><init>(Ljava/lang/String;)V

    throw v5

    :cond_12
    move-object/from16 v0, p0

    iget-object v0, v0, Lsun/security/ssl/ClientHandshaker;->ephemeralServerKey:Ljava/security/PublicKey;

    move-object/from16 v17, v0

    goto/16 :goto_5

    :pswitch_2
    new-instance v23, Lsun/security/ssl/DHClientKeyExchange;

    invoke-direct/range {v23 .. v23}, Lsun/security/ssl/DHClientKeyExchange;-><init>()V

    goto/16 :goto_6

    :pswitch_3
    move-object/from16 v0, p0

    iget-object v5, v0, Lsun/security/ssl/ClientHandshaker;->dh:Lsun/security/ssl/DHCrypt;

    if-nez v5, :cond_13

    new-instance v5, Ljavax/net/ssl/SSLProtocolException;

    const-string/jumbo v6, "Server did not send a DH Server Key Exchange message"

    invoke-direct {v5, v6}, Ljavax/net/ssl/SSLProtocolException;-><init>(Ljava/lang/String;)V

    throw v5

    :cond_13
    new-instance v23, Lsun/security/ssl/DHClientKeyExchange;

    move-object/from16 v0, p0

    iget-object v5, v0, Lsun/security/ssl/ClientHandshaker;->dh:Lsun/security/ssl/DHCrypt;

    invoke-virtual {v5}, Lsun/security/ssl/DHCrypt;->getPublicKey()Ljava/math/BigInteger;

    move-result-object v5

    move-object/from16 v0, v23

    invoke-direct {v0, v5}, Lsun/security/ssl/DHClientKeyExchange;-><init>(Ljava/math/BigInteger;)V

    goto/16 :goto_6

    :pswitch_4
    move-object/from16 v0, p0

    iget-object v5, v0, Lsun/security/ssl/ClientHandshaker;->ecdh:Lsun/security/ssl/ECDHCrypt;

    if-nez v5, :cond_14

    new-instance v5, Ljavax/net/ssl/SSLProtocolException;

    const-string/jumbo v6, "Server did not send a ECDH Server Key Exchange message"

    invoke-direct {v5, v6}, Ljavax/net/ssl/SSLProtocolException;-><init>(Ljava/lang/String;)V

    throw v5

    :cond_14
    new-instance v23, Lsun/security/ssl/ECDHClientKeyExchange;

    move-object/from16 v0, p0

    iget-object v5, v0, Lsun/security/ssl/ClientHandshaker;->ecdh:Lsun/security/ssl/ECDHCrypt;

    invoke-virtual {v5}, Lsun/security/ssl/ECDHCrypt;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v5

    move-object/from16 v0, v23

    invoke-direct {v0, v5}, Lsun/security/ssl/ECDHClientKeyExchange;-><init>(Ljava/security/PublicKey;)V

    goto/16 :goto_6

    :pswitch_5
    move-object/from16 v0, p0

    iget-object v5, v0, Lsun/security/ssl/ClientHandshaker;->serverKey:Ljava/security/PublicKey;

    if-nez v5, :cond_15

    new-instance v5, Ljavax/net/ssl/SSLProtocolException;

    const-string/jumbo v6, "Server did not send certificate message"

    invoke-direct {v5, v6}, Ljavax/net/ssl/SSLProtocolException;-><init>(Ljava/lang/String;)V

    throw v5

    :cond_15
    move-object/from16 v0, p0

    iget-object v5, v0, Lsun/security/ssl/ClientHandshaker;->serverKey:Ljava/security/PublicKey;

    instance-of v5, v5, Ljava/security/interfaces/ECPublicKey;

    if-nez v5, :cond_16

    new-instance v5, Ljavax/net/ssl/SSLProtocolException;

    const-string/jumbo v6, "Server certificate does not include an EC key"

    invoke-direct {v5, v6}, Ljavax/net/ssl/SSLProtocolException;-><init>(Ljava/lang/String;)V

    throw v5

    :cond_16
    move-object/from16 v0, p0

    iget-object v5, v0, Lsun/security/ssl/ClientHandshaker;->serverKey:Ljava/security/PublicKey;

    check-cast v5, Ljava/security/interfaces/ECPublicKey;

    invoke-interface {v5}, Ljava/security/interfaces/ECPublicKey;->getParams()Ljava/security/spec/ECParameterSpec;

    move-result-object v24

    new-instance v5, Lsun/security/ssl/ECDHCrypt;

    move-object/from16 v0, p0

    iget-object v6, v0, Lsun/security/ssl/Handshaker;->sslContext:Lsun/security/ssl/SSLContextImpl;

    invoke-virtual {v6}, Lsun/security/ssl/SSLContextImpl;->getSecureRandom()Ljava/security/SecureRandom;

    move-result-object v6

    move-object/from16 v0, v24

    invoke-direct {v5, v0, v6}, Lsun/security/ssl/ECDHCrypt;-><init>(Ljava/security/spec/ECParameterSpec;Ljava/security/SecureRandom;)V

    move-object/from16 v0, p0

    iput-object v5, v0, Lsun/security/ssl/ClientHandshaker;->ecdh:Lsun/security/ssl/ECDHCrypt;

    new-instance v23, Lsun/security/ssl/ECDHClientKeyExchange;

    move-object/from16 v0, p0

    iget-object v5, v0, Lsun/security/ssl/ClientHandshaker;->ecdh:Lsun/security/ssl/ECDHCrypt;

    invoke-virtual {v5}, Lsun/security/ssl/ECDHCrypt;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v5

    move-object/from16 v0, v23

    invoke-direct {v0, v5}, Lsun/security/ssl/ECDHClientKeyExchange;-><init>(Ljava/security/PublicKey;)V

    goto/16 :goto_6

    :pswitch_6
    invoke-virtual/range {p0 .. p0}, Lsun/security/ssl/Handshaker;->getHostSE()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_17

    new-instance v5, Ljava/io/IOException;

    const-string/jumbo v6, "Hostname is required to use Kerberos cipher suites"

    invoke-direct {v5, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v5

    :cond_17
    new-instance v2, Lsun/security/ssl/KerberosClientKeyExchange;

    invoke-virtual/range {p0 .. p0}, Lsun/security/ssl/Handshaker;->isLoopbackSE()Z

    move-result v4

    invoke-virtual/range {p0 .. p0}, Lsun/security/ssl/Handshaker;->getAccSE()Ljava/security/AccessControlContext;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lsun/security/ssl/Handshaker;->protocolVersion:Lsun/security/ssl/ProtocolVersion;

    move-object/from16 v0, p0

    iget-object v7, v0, Lsun/security/ssl/Handshaker;->sslContext:Lsun/security/ssl/SSLContextImpl;

    invoke-virtual {v7}, Lsun/security/ssl/SSLContextImpl;->getSecureRandom()Ljava/security/SecureRandom;

    move-result-object v7

    invoke-direct/range {v2 .. v7}, Lsun/security/ssl/KerberosClientKeyExchange;-><init>(Ljava/lang/String;ZLjava/security/AccessControlContext;Lsun/security/ssl/ProtocolVersion;Ljava/security/SecureRandom;)V

    move-object/from16 v0, p0

    iget-object v5, v0, Lsun/security/ssl/Handshaker;->session:Lsun/security/ssl/SSLSessionImpl;

    invoke-virtual {v2}, Lsun/security/ssl/KerberosClientKeyExchange;->getPeerPrincipal()Ljava/security/Principal;

    move-result-object v6

    invoke-virtual {v5, v6}, Lsun/security/ssl/SSLSessionImpl;->setPeerPrincipal(Ljava/security/Principal;)V

    move-object/from16 v0, p0

    iget-object v5, v0, Lsun/security/ssl/Handshaker;->session:Lsun/security/ssl/SSLSessionImpl;

    invoke-virtual {v2}, Lsun/security/ssl/KerberosClientKeyExchange;->getLocalPrincipal()Ljava/security/Principal;

    move-result-object v6

    invoke-virtual {v5, v6}, Lsun/security/ssl/SSLSessionImpl;->setLocalPrincipal(Ljava/security/Principal;)V

    move-object/from16 v23, v2

    goto/16 :goto_6

    :pswitch_7
    check-cast v23, Lsun/security/ssl/RSAClientKeyExchange;

    move-object/from16 v0, v23

    iget-object v0, v0, Lsun/security/ssl/RSAClientKeyExchange;->preMaster:Ljavax/crypto/SecretKey;

    move-object/from16 v25, v0

    :goto_7
    const/4 v5, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-virtual {v0, v1, v5}, Lsun/security/ssl/Handshaker;->calculateKeys(Ljavax/crypto/SecretKey;Lsun/security/ssl/ProtocolVersion;)V

    if-eqz v28, :cond_1e

    const/4 v10, 0x0

    :try_start_0
    move-object/from16 v0, p0

    iget-object v5, v0, Lsun/security/ssl/Handshaker;->protocolVersion:Lsun/security/ssl/ProtocolVersion;

    iget v5, v5, Lsun/security/ssl/ProtocolVersion;->v:I

    sget-object v6, Lsun/security/ssl/ProtocolVersion;->TLS12:Lsun/security/ssl/ProtocolVersion;

    iget v6, v6, Lsun/security/ssl/ProtocolVersion;->v:I

    if-lt v5, v6, :cond_1d

    move-object/from16 v0, p0

    iget-object v5, v0, Lsun/security/ssl/Handshaker;->peerSupportedSignAlgs:Ljava/util/Collection;

    invoke-interface/range {v28 .. v28}, Ljava/security/PrivateKey;->getAlgorithm()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, v28

    invoke-static {v5, v6, v0}, Lsun/security/ssl/SignatureAndHashAlgorithm;->getPreferableAlgorithm(Ljava/util/Collection;Ljava/lang/String;Ljava/security/PrivateKey;)Lsun/security/ssl/SignatureAndHashAlgorithm;

    move-result-object v10

    if-nez v10, :cond_1a

    new-instance v5, Ljavax/net/ssl/SSLHandshakeException;

    const-string/jumbo v6, "No supported signature algorithm"

    invoke-direct {v5, v6}, Ljavax/net/ssl/SSLHandshakeException;-><init>(Ljava/lang/String;)V

    throw v5
    :try_end_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v13

    const-string/jumbo v5, "Error signing certificate verify"

    const/16 v6, 0x28

    move-object/from16 v0, p0

    invoke-virtual {v0, v6, v5, v13}, Lsun/security/ssl/Handshaker;->fatalSE(BLjava/lang/String;Ljava/lang/Throwable;)V

    const/4 v4, 0x0

    :goto_8
    sget-object v5, Lsun/security/ssl/ClientHandshaker;->debug:Lsun/security/ssl/Debug;

    if-eqz v5, :cond_18

    const-string/jumbo v5, "handshake"

    invoke-static {v5}, Lsun/security/ssl/Debug;->isOn(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_18

    sget-object v5, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v4, v5}, Lsun/security/ssl/HandshakeMessage$CertificateVerify;->print(Ljava/io/PrintStream;)V

    :cond_18
    move-object/from16 v0, p0

    iget-object v5, v0, Lsun/security/ssl/Handshaker;->output:Lsun/security/ssl/HandshakeOutStream;

    invoke-virtual {v4, v5}, Lsun/security/ssl/HandshakeMessage;->write(Lsun/security/ssl/HandshakeOutStream;)V

    move-object/from16 v0, p0

    iget-object v5, v0, Lsun/security/ssl/Handshaker;->output:Lsun/security/ssl/HandshakeOutStream;

    invoke-virtual {v5}, Lsun/security/ssl/HandshakeOutStream;->doHashes()V

    :cond_19
    :goto_9
    const/4 v5, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lsun/security/ssl/ClientHandshaker;->sendChangeCipherAndFinish(Z)V

    return-void

    :pswitch_8
    check-cast v23, Lsun/security/ssl/KerberosClientKeyExchange;

    invoke-virtual/range {v23 .. v23}, Lsun/security/ssl/KerberosClientKeyExchange;->getUnencryptedPreMasterSecret()[B

    move-result-object v27

    new-instance v25, Ljavax/crypto/spec/SecretKeySpec;

    const-string/jumbo v5, "TlsPremasterSecret"

    move-object/from16 v0, v25

    move-object/from16 v1, v27

    invoke-direct {v0, v1, v5}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    goto :goto_7

    :pswitch_9
    move-object/from16 v0, p0

    iget-object v5, v0, Lsun/security/ssl/ClientHandshaker;->dh:Lsun/security/ssl/DHCrypt;

    move-object/from16 v0, p0

    iget-object v6, v0, Lsun/security/ssl/ClientHandshaker;->serverDH:Ljava/math/BigInteger;

    const/4 v7, 0x1

    invoke-virtual {v5, v6, v7}, Lsun/security/ssl/DHCrypt;->getAgreedSecret(Ljava/math/BigInteger;Z)Ljavax/crypto/SecretKey;

    move-result-object v25

    goto/16 :goto_7

    :pswitch_a
    move-object/from16 v0, p0

    iget-object v5, v0, Lsun/security/ssl/ClientHandshaker;->ecdh:Lsun/security/ssl/ECDHCrypt;

    move-object/from16 v0, p0

    iget-object v6, v0, Lsun/security/ssl/ClientHandshaker;->ephemeralServerKey:Ljava/security/PublicKey;

    invoke-virtual {v5, v6}, Lsun/security/ssl/ECDHCrypt;->getAgreedSecret(Ljava/security/PublicKey;)Ljavax/crypto/SecretKey;

    move-result-object v25

    goto/16 :goto_7

    :pswitch_b
    move-object/from16 v0, p0

    iget-object v5, v0, Lsun/security/ssl/ClientHandshaker;->ecdh:Lsun/security/ssl/ECDHCrypt;

    move-object/from16 v0, p0

    iget-object v6, v0, Lsun/security/ssl/ClientHandshaker;->serverKey:Ljava/security/PublicKey;

    invoke-virtual {v5, v6}, Lsun/security/ssl/ECDHCrypt;->getAgreedSecret(Ljava/security/PublicKey;)Ljavax/crypto/SecretKey;

    move-result-object v25

    goto/16 :goto_7

    :cond_1a
    :try_start_1
    invoke-static {v10}, Lsun/security/ssl/SignatureAndHashAlgorithm;->getHashAlgorithmName(Lsun/security/ssl/SignatureAndHashAlgorithm;)Ljava/lang/String;

    move-result-object v14

    if-eqz v14, :cond_1b

    invoke-virtual {v14}, Ljava/lang/String;->length()I

    move-result v5

    if-nez v5, :cond_1c

    :cond_1b
    new-instance v5, Ljavax/net/ssl/SSLHandshakeException;

    const-string/jumbo v6, "No supported hash algorithm"

    invoke-direct {v5, v6}, Ljavax/net/ssl/SSLHandshakeException;-><init>(Ljava/lang/String;)V

    throw v5

    :cond_1c
    move-object/from16 v0, p0

    iget-object v5, v0, Lsun/security/ssl/Handshaker;->handshakeHash:Lsun/security/ssl/HandshakeHash;

    invoke-virtual {v5, v14}, Lsun/security/ssl/HandshakeHash;->setCertificateVerifyAlg(Ljava/lang/String;)V

    :cond_1d
    new-instance v4, Lsun/security/ssl/HandshakeMessage$CertificateVerify;

    move-object/from16 v0, p0

    iget-object v5, v0, Lsun/security/ssl/Handshaker;->protocolVersion:Lsun/security/ssl/ProtocolVersion;

    move-object/from16 v0, p0

    iget-object v6, v0, Lsun/security/ssl/Handshaker;->handshakeHash:Lsun/security/ssl/HandshakeHash;

    move-object/from16 v0, p0

    iget-object v7, v0, Lsun/security/ssl/Handshaker;->session:Lsun/security/ssl/SSLSessionImpl;

    invoke-virtual {v7}, Lsun/security/ssl/SSLSessionImpl;->getMasterSecret()Ljavax/crypto/SecretKey;

    move-result-object v8

    move-object/from16 v0, p0

    iget-object v7, v0, Lsun/security/ssl/Handshaker;->sslContext:Lsun/security/ssl/SSLContextImpl;

    invoke-virtual {v7}, Lsun/security/ssl/SSLContextImpl;->getSecureRandom()Ljava/security/SecureRandom;

    move-result-object v9

    move-object/from16 v7, v28

    invoke-direct/range {v4 .. v10}, Lsun/security/ssl/HandshakeMessage$CertificateVerify;-><init>(Lsun/security/ssl/ProtocolVersion;Lsun/security/ssl/HandshakeHash;Ljava/security/PrivateKey;Ljavax/crypto/SecretKey;Ljava/security/SecureRandom;Lsun/security/ssl/SignatureAndHashAlgorithm;)V
    :try_end_1
    .catch Ljava/security/GeneralSecurityException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_8

    :cond_1e
    move-object/from16 v0, p0

    iget-object v5, v0, Lsun/security/ssl/Handshaker;->protocolVersion:Lsun/security/ssl/ProtocolVersion;

    iget v5, v5, Lsun/security/ssl/ProtocolVersion;->v:I

    sget-object v6, Lsun/security/ssl/ProtocolVersion;->TLS12:Lsun/security/ssl/ProtocolVersion;

    iget v6, v6, Lsun/security/ssl/ProtocolVersion;->v:I

    if-lt v5, v6, :cond_19

    move-object/from16 v0, p0

    iget-object v5, v0, Lsun/security/ssl/Handshaker;->handshakeHash:Lsun/security/ssl/HandshakeHash;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Lsun/security/ssl/HandshakeHash;->setCertificateVerifyAlg(Ljava/lang/String;)V

    goto/16 :goto_9

    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_1
        0x40 -> :sswitch_2
    .end sparse-switch

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
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v2, 0x1

    sget-object v0, Lsun/security/ssl/ClientHandshaker;->debug:Lsun/security/ssl/Debug;

    if-eqz v0, :cond_0

    const-string/jumbo v0, "handshake"

    invoke-static {v0}, Lsun/security/ssl/Debug;->isOn(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {p1, v0}, Lsun/security/ssl/HandshakeMessage$HelloRequest;->print(Ljava/io/PrintStream;)V

    :cond_0
    iget v0, p0, Lsun/security/ssl/Handshaker;->state:I

    if-ge v0, v2, :cond_3

    iget-boolean v0, p0, Lsun/security/ssl/Handshaker;->secureRenegotiation:Z

    if-nez v0, :cond_1

    sget-boolean v0, Lsun/security/ssl/ClientHandshaker;->allowUnsafeRenegotiation:Z

    if-eqz v0, :cond_4

    :cond_1
    iget-boolean v0, p0, Lsun/security/ssl/Handshaker;->secureRenegotiation:Z

    if-nez v0, :cond_2

    sget-object v0, Lsun/security/ssl/ClientHandshaker;->debug:Lsun/security/ssl/Debug;

    if-eqz v0, :cond_2

    const-string/jumbo v0, "handshake"

    invoke-static {v0}, Lsun/security/ssl/Debug;->isOn(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string/jumbo v1, "Warning: continue with insecure renegotiation"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_2
    invoke-virtual {p0}, Lsun/security/ssl/Handshaker;->kickstart()V

    :cond_3
    :goto_0
    return-void

    :cond_4
    iget-object v0, p0, Lsun/security/ssl/Handshaker;->activeProtocolVersion:Lsun/security/ssl/ProtocolVersion;

    iget v0, v0, Lsun/security/ssl/ProtocolVersion;->v:I

    sget-object v1, Lsun/security/ssl/ProtocolVersion;->TLS10:Lsun/security/ssl/ProtocolVersion;

    iget v1, v1, Lsun/security/ssl/ProtocolVersion;->v:I

    if-lt v0, v1, :cond_5

    const/16 v0, 0x64

    invoke-virtual {p0, v0}, Lsun/security/ssl/Handshaker;->warningSE(B)V

    iput-boolean v2, p0, Lsun/security/ssl/Handshaker;->invalidated:Z

    goto :goto_0

    :cond_5
    const-string/jumbo v0, "Renegotiation is not allowed"

    const/16 v1, 0x28

    invoke-virtual {p0, v1, v0}, Lsun/security/ssl/Handshaker;->fatalSE(BLjava/lang/String;)V

    goto :goto_0
.end method

.method private serverKeyExchange(Lsun/security/ssl/HandshakeMessage$DH_ServerKeyExchange;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lsun/security/ssl/ClientHandshaker;->debug:Lsun/security/ssl/Debug;

    if-eqz v0, :cond_0

    const-string/jumbo v0, "handshake"

    invoke-static {v0}, Lsun/security/ssl/Debug;->isOn(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {p1, v0}, Lsun/security/ssl/HandshakeMessage$DH_ServerKeyExchange;->print(Ljava/io/PrintStream;)V

    :cond_0
    new-instance v0, Lsun/security/ssl/DHCrypt;

    invoke-virtual {p1}, Lsun/security/ssl/HandshakeMessage$DH_ServerKeyExchange;->getModulus()Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {p1}, Lsun/security/ssl/HandshakeMessage$DH_ServerKeyExchange;->getBase()Ljava/math/BigInteger;

    move-result-object v2

    iget-object v3, p0, Lsun/security/ssl/Handshaker;->sslContext:Lsun/security/ssl/SSLContextImpl;

    invoke-virtual {v3}, Lsun/security/ssl/SSLContextImpl;->getSecureRandom()Ljava/security/SecureRandom;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lsun/security/ssl/DHCrypt;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/security/SecureRandom;)V

    iput-object v0, p0, Lsun/security/ssl/ClientHandshaker;->dh:Lsun/security/ssl/DHCrypt;

    invoke-virtual {p1}, Lsun/security/ssl/HandshakeMessage$DH_ServerKeyExchange;->getServerPublicKey()Ljava/math/BigInteger;

    move-result-object v0

    iput-object v0, p0, Lsun/security/ssl/ClientHandshaker;->serverDH:Ljava/math/BigInteger;

    return-void
.end method

.method private serverKeyExchange(Lsun/security/ssl/HandshakeMessage$ECDH_ServerKeyExchange;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v1, Lsun/security/ssl/ClientHandshaker;->debug:Lsun/security/ssl/Debug;

    if-eqz v1, :cond_0

    const-string/jumbo v1, "handshake"

    invoke-static {v1}, Lsun/security/ssl/Debug;->isOn(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {p1, v1}, Lsun/security/ssl/HandshakeMessage$ECDH_ServerKeyExchange;->print(Ljava/io/PrintStream;)V

    :cond_0
    invoke-virtual {p1}, Lsun/security/ssl/HandshakeMessage$ECDH_ServerKeyExchange;->getPublicKey()Ljava/security/interfaces/ECPublicKey;

    move-result-object v0

    new-instance v1, Lsun/security/ssl/ECDHCrypt;

    invoke-interface {v0}, Ljava/security/interfaces/ECPublicKey;->getParams()Ljava/security/spec/ECParameterSpec;

    move-result-object v2

    iget-object v3, p0, Lsun/security/ssl/Handshaker;->sslContext:Lsun/security/ssl/SSLContextImpl;

    invoke-virtual {v3}, Lsun/security/ssl/SSLContextImpl;->getSecureRandom()Ljava/security/SecureRandom;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lsun/security/ssl/ECDHCrypt;-><init>(Ljava/security/spec/ECParameterSpec;Ljava/security/SecureRandom;)V

    iput-object v1, p0, Lsun/security/ssl/ClientHandshaker;->ecdh:Lsun/security/ssl/ECDHCrypt;

    iput-object v0, p0, Lsun/security/ssl/ClientHandshaker;->ephemeralServerKey:Ljava/security/PublicKey;

    return-void
.end method

.method private serverKeyExchange(Lsun/security/ssl/HandshakeMessage$RSA_ServerKeyExchange;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    sget-object v0, Lsun/security/ssl/ClientHandshaker;->debug:Lsun/security/ssl/Debug;

    if-eqz v0, :cond_0

    const-string/jumbo v0, "handshake"

    invoke-static {v0}, Lsun/security/ssl/Debug;->isOn(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {p1, v0}, Lsun/security/ssl/HandshakeMessage$RSA_ServerKeyExchange;->print(Ljava/io/PrintStream;)V

    :cond_0
    iget-object v0, p0, Lsun/security/ssl/ClientHandshaker;->serverKey:Ljava/security/PublicKey;

    iget-object v1, p0, Lsun/security/ssl/Handshaker;->clnt_random:Lsun/security/ssl/RandomCookie;

    iget-object v2, p0, Lsun/security/ssl/Handshaker;->svr_random:Lsun/security/ssl/RandomCookie;

    invoke-virtual {p1, v0, v1, v2}, Lsun/security/ssl/HandshakeMessage$RSA_ServerKeyExchange;->verify(Ljava/security/PublicKey;Lsun/security/ssl/RandomCookie;Lsun/security/ssl/RandomCookie;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string/jumbo v0, "server key exchange invalid"

    const/16 v1, 0x28

    invoke-virtual {p0, v1, v0}, Lsun/security/ssl/Handshaker;->fatalSE(BLjava/lang/String;)V

    :cond_1
    invoke-virtual {p1}, Lsun/security/ssl/HandshakeMessage$RSA_ServerKeyExchange;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v0

    iput-object v0, p0, Lsun/security/ssl/ClientHandshaker;->ephemeralServerKey:Ljava/security/PublicKey;

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

    const/4 v14, 0x0

    sget-object v11, Lsun/security/ssl/SSLSessionImpl;->nullSession:Lsun/security/ssl/SSLSessionImpl;

    invoke-virtual {v11}, Lsun/security/ssl/SSLSessionImpl;->getSessionId()Lsun/security/ssl/SessionId;

    move-result-object v6

    invoke-virtual {p0}, Lsun/security/ssl/Handshaker;->getActiveCipherSuites()Lsun/security/ssl/CipherSuiteList;

    move-result-object v1

    iget-object v11, p0, Lsun/security/ssl/Handshaker;->protocolVersion:Lsun/security/ssl/ProtocolVersion;

    iput-object v11, p0, Lsun/security/ssl/ClientHandshaker;->maxProtocolVersion:Lsun/security/ssl/ProtocolVersion;

    iget-object v11, p0, Lsun/security/ssl/Handshaker;->sslContext:Lsun/security/ssl/SSLContextImpl;

    invoke-virtual {v11}, Lsun/security/ssl/SSLContextImpl;->engineGetClientSessionContext()Ljavax/net/ssl/SSLSessionContext;

    move-result-object v11

    check-cast v11, Lsun/security/ssl/SSLSessionContextImpl;

    invoke-virtual {p0}, Lsun/security/ssl/Handshaker;->getHostSE()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {p0}, Lsun/security/ssl/Handshaker;->getPortSE()I

    move-result v13

    invoke-virtual {v11, v12, v13}, Lsun/security/ssl/SSLSessionContextImpl;->get(Ljava/lang/String;I)Lsun/security/ssl/SSLSessionImpl;

    move-result-object v11

    iput-object v11, p0, Lsun/security/ssl/Handshaker;->session:Lsun/security/ssl/SSLSessionImpl;

    sget-object v11, Lsun/security/ssl/ClientHandshaker;->debug:Lsun/security/ssl/Debug;

    if-eqz v11, :cond_0

    const-string/jumbo v11, "session"

    invoke-static {v11}, Lsun/security/ssl/Debug;->isOn(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_0

    iget-object v11, p0, Lsun/security/ssl/Handshaker;->session:Lsun/security/ssl/SSLSessionImpl;

    if-eqz v11, :cond_9

    sget-object v12, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "%% Client cached "

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v13, p0, Lsun/security/ssl/Handshaker;->session:Lsun/security/ssl/SSLSessionImpl;

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    iget-object v11, p0, Lsun/security/ssl/Handshaker;->session:Lsun/security/ssl/SSLSessionImpl;

    invoke-virtual {v11}, Lsun/security/ssl/SSLSessionImpl;->isRejoinable()Z

    move-result v11

    if-eqz v11, :cond_8

    const-string/jumbo v11, ""

    :goto_0
    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v12, v11}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_0
    :goto_1
    iget-object v11, p0, Lsun/security/ssl/Handshaker;->session:Lsun/security/ssl/SSLSessionImpl;

    if-eqz v11, :cond_1

    iget-object v11, p0, Lsun/security/ssl/Handshaker;->session:Lsun/security/ssl/SSLSessionImpl;

    invoke-virtual {v11}, Lsun/security/ssl/SSLSessionImpl;->isRejoinable()Z

    move-result v11

    if-nez v11, :cond_1

    iput-object v14, p0, Lsun/security/ssl/Handshaker;->session:Lsun/security/ssl/SSLSessionImpl;

    :cond_1
    iget-object v11, p0, Lsun/security/ssl/Handshaker;->session:Lsun/security/ssl/SSLSessionImpl;

    if-eqz v11, :cond_e

    iget-object v11, p0, Lsun/security/ssl/Handshaker;->session:Lsun/security/ssl/SSLSessionImpl;

    invoke-virtual {v11}, Lsun/security/ssl/SSLSessionImpl;->getSuite()Lsun/security/ssl/CipherSuite;

    move-result-object v7

    iget-object v11, p0, Lsun/security/ssl/Handshaker;->session:Lsun/security/ssl/SSLSessionImpl;

    invoke-virtual {v11}, Lsun/security/ssl/SSLSessionImpl;->getProtocolVersion()Lsun/security/ssl/ProtocolVersion;

    move-result-object v8

    invoke-virtual {p0, v7}, Lsun/security/ssl/Handshaker;->isNegotiable(Lsun/security/ssl/CipherSuite;)Z

    move-result v11

    if-nez v11, :cond_3

    sget-object v11, Lsun/security/ssl/ClientHandshaker;->debug:Lsun/security/ssl/Debug;

    if-eqz v11, :cond_2

    const-string/jumbo v11, "session"

    invoke-static {v11}, Lsun/security/ssl/Debug;->isOn(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_2

    sget-object v11, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string/jumbo v12, "%% can\'t resume, unavailable cipher"

    invoke-virtual {v11, v12}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_2
    iput-object v14, p0, Lsun/security/ssl/Handshaker;->session:Lsun/security/ssl/SSLSessionImpl;

    :cond_3
    iget-object v11, p0, Lsun/security/ssl/Handshaker;->session:Lsun/security/ssl/SSLSessionImpl;

    if-eqz v11, :cond_4

    invoke-virtual {p0, v8}, Lsun/security/ssl/Handshaker;->isNegotiable(Lsun/security/ssl/ProtocolVersion;)Z

    move-result v11

    if-eqz v11, :cond_a

    :cond_4
    :goto_2
    iget-object v11, p0, Lsun/security/ssl/Handshaker;->session:Lsun/security/ssl/SSLSessionImpl;

    if-eqz v11, :cond_7

    sget-object v11, Lsun/security/ssl/ClientHandshaker;->debug:Lsun/security/ssl/Debug;

    if-eqz v11, :cond_6

    const-string/jumbo v11, "handshake"

    invoke-static {v11}, Lsun/security/ssl/Debug;->isOn(Ljava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_5

    const-string/jumbo v11, "session"

    invoke-static {v11}, Lsun/security/ssl/Debug;->isOn(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_6

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

    const-string/jumbo v13, " from port "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {p0}, Lsun/security/ssl/Handshaker;->getLocalPortSE()I

    move-result v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_6
    iget-object v11, p0, Lsun/security/ssl/Handshaker;->session:Lsun/security/ssl/SSLSessionImpl;

    invoke-virtual {v11}, Lsun/security/ssl/SSLSessionImpl;->getSessionId()Lsun/security/ssl/SessionId;

    move-result-object v6

    iput-object v8, p0, Lsun/security/ssl/ClientHandshaker;->maxProtocolVersion:Lsun/security/ssl/ProtocolVersion;

    invoke-virtual {p0, v8}, Lsun/security/ssl/Handshaker;->setVersion(Lsun/security/ssl/ProtocolVersion;)V

    :cond_7
    iget-boolean v11, p0, Lsun/security/ssl/Handshaker;->enableNewSession:Z

    if-nez v11, :cond_e

    iget-object v11, p0, Lsun/security/ssl/Handshaker;->session:Lsun/security/ssl/SSLSessionImpl;

    if-nez v11, :cond_c

    new-instance v11, Ljavax/net/ssl/SSLHandshakeException;

    const-string/jumbo v12, "Can\'t reuse existing SSL client session"

    invoke-direct {v11, v12}, Ljavax/net/ssl/SSLHandshakeException;-><init>(Ljava/lang/String;)V

    throw v11

    :cond_8
    const-string/jumbo v11, " (not rejoinable)"

    goto/16 :goto_0

    :cond_9
    sget-object v11, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string/jumbo v12, "%% No cached client session"

    invoke-virtual {v11, v12}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_a
    sget-object v11, Lsun/security/ssl/ClientHandshaker;->debug:Lsun/security/ssl/Debug;

    if-eqz v11, :cond_b

    const-string/jumbo v11, "session"

    invoke-static {v11}, Lsun/security/ssl/Debug;->isOn(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_b

    sget-object v11, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string/jumbo v12, "%% can\'t resume, protocol disabled"

    invoke-virtual {v11, v12}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_b
    iput-object v14, p0, Lsun/security/ssl/Handshaker;->session:Lsun/security/ssl/SSLSessionImpl;

    goto/16 :goto_2

    :cond_c
    new-instance v0, Ljava/util/ArrayList;

    const/4 v11, 0x2

    invoke-direct {v0, v11}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v0, v7}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    iget-boolean v11, p0, Lsun/security/ssl/Handshaker;->secureRenegotiation:Z

    if-nez v11, :cond_d

    sget-object v11, Lsun/security/ssl/CipherSuite;->C_SCSV:Lsun/security/ssl/CipherSuite;

    invoke-virtual {v1, v11}, Lsun/security/ssl/CipherSuiteList;->contains(Lsun/security/ssl/CipherSuite;)Z

    move-result v11

    if-eqz v11, :cond_d

    sget-object v11, Lsun/security/ssl/CipherSuite;->C_SCSV:Lsun/security/ssl/CipherSuite;

    invoke-interface {v0, v11}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    :cond_d
    new-instance v1, Lsun/security/ssl/CipherSuiteList;

    invoke-direct {v1, v0}, Lsun/security/ssl/CipherSuiteList;-><init>(Ljava/util/Collection;)V

    :cond_e
    iget-object v11, p0, Lsun/security/ssl/Handshaker;->session:Lsun/security/ssl/SSLSessionImpl;

    if-nez v11, :cond_f

    iget-boolean v11, p0, Lsun/security/ssl/Handshaker;->enableNewSession:Z

    if-eqz v11, :cond_11

    :cond_f
    iget-boolean v11, p0, Lsun/security/ssl/Handshaker;->secureRenegotiation:Z

    if-eqz v11, :cond_13

    sget-object v11, Lsun/security/ssl/CipherSuite;->C_SCSV:Lsun/security/ssl/CipherSuite;

    invoke-virtual {v1, v11}, Lsun/security/ssl/CipherSuiteList;->contains(Lsun/security/ssl/CipherSuite;)Z

    move-result v11

    if-eqz v11, :cond_13

    new-instance v0, Ljava/util/ArrayList;

    invoke-virtual {v1}, Lsun/security/ssl/CipherSuiteList;->size()I

    move-result v11

    add-int/lit8 v11, v11, -0x1

    invoke-direct {v0, v11}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {v1}, Lsun/security/ssl/CipherSuiteList;->collection()Ljava/util/Collection;

    move-result-object v11

    invoke-interface {v11}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :cond_10
    :goto_3
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_12

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lsun/security/ssl/CipherSuite;

    sget-object v11, Lsun/security/ssl/CipherSuite;->C_SCSV:Lsun/security/ssl/CipherSuite;

    if-eq v9, v11, :cond_10

    invoke-interface {v0, v9}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_11
    new-instance v11, Ljavax/net/ssl/SSLHandshakeException;

    const-string/jumbo v12, "No existing session to resume"

    invoke-direct {v11, v12}, Ljavax/net/ssl/SSLHandshakeException;-><init>(Ljava/lang/String;)V

    throw v11

    :cond_12
    new-instance v1, Lsun/security/ssl/CipherSuiteList;

    invoke-direct {v1, v0}, Lsun/security/ssl/CipherSuiteList;-><init>(Ljava/util/Collection;)V

    :cond_13
    const/4 v5, 0x0

    invoke-virtual {v1}, Lsun/security/ssl/CipherSuiteList;->collection()Ljava/util/Collection;

    move-result-object v11

    invoke-interface {v11}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :cond_14
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_15

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lsun/security/ssl/CipherSuite;

    invoke-virtual {p0, v9}, Lsun/security/ssl/Handshaker;->isNegotiable(Lsun/security/ssl/CipherSuite;)Z

    move-result v11

    if-eqz v11, :cond_14

    const/4 v5, 0x1

    :cond_15
    if-nez v5, :cond_16

    new-instance v11, Ljavax/net/ssl/SSLHandshakeException;

    const-string/jumbo v12, "No negotiable cipher suite"

    invoke-direct {v11, v12}, Ljavax/net/ssl/SSLHandshakeException;-><init>(Ljava/lang/String;)V

    throw v11

    :cond_16
    new-instance v2, Lsun/security/ssl/HandshakeMessage$ClientHello;

    iget-object v11, p0, Lsun/security/ssl/Handshaker;->sslContext:Lsun/security/ssl/SSLContextImpl;

    invoke-virtual {v11}, Lsun/security/ssl/SSLContextImpl;->getSecureRandom()Ljava/security/SecureRandom;

    move-result-object v11

    iget-object v12, p0, Lsun/security/ssl/ClientHandshaker;->maxProtocolVersion:Lsun/security/ssl/ProtocolVersion;

    invoke-direct {v2, v11, v12, v6, v1}, Lsun/security/ssl/HandshakeMessage$ClientHello;-><init>(Ljava/security/SecureRandom;Lsun/security/ssl/ProtocolVersion;Lsun/security/ssl/SessionId;Lsun/security/ssl/CipherSuiteList;)V

    iget-object v11, p0, Lsun/security/ssl/ClientHandshaker;->maxProtocolVersion:Lsun/security/ssl/ProtocolVersion;

    iget v11, v11, Lsun/security/ssl/ProtocolVersion;->v:I

    sget-object v12, Lsun/security/ssl/ProtocolVersion;->TLS12:Lsun/security/ssl/ProtocolVersion;

    iget v12, v12, Lsun/security/ssl/ProtocolVersion;->v:I

    if-lt v11, v12, :cond_18

    invoke-virtual {p0}, Lsun/security/ssl/Handshaker;->getLocalSupportedSignAlgs()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->isEmpty()Z

    move-result v11

    if-eqz v11, :cond_17

    new-instance v11, Ljavax/net/ssl/SSLHandshakeException;

    const-string/jumbo v12, "No supported signature algorithm"

    invoke-direct {v11, v12}, Ljavax/net/ssl/SSLHandshakeException;-><init>(Ljava/lang/String;)V

    throw v11

    :cond_17
    invoke-virtual {v2, v4}, Lsun/security/ssl/HandshakeMessage$ClientHello;->addSignatureAlgorithmsExtension(Ljava/util/Collection;)V

    :cond_18
    sget-boolean v11, Lsun/security/ssl/ClientHandshaker;->enableSNIExtension:Z

    if-eqz v11, :cond_19

    invoke-virtual {p0}, Lsun/security/ssl/Handshaker;->getRawHostnameSE()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_19

    const/16 v11, 0x2e

    invoke-virtual {v3, v11}, Ljava/lang/String;->indexOf(I)I

    move-result v11

    if-lez v11, :cond_19

    invoke-static {v3}, Lsun/net/util/IPAddressUtil;->isIPv4LiteralAddress(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_1a

    :cond_19
    :goto_4
    iget-object v11, v2, Lsun/security/ssl/HandshakeMessage$ClientHello;->clnt_random:Lsun/security/ssl/RandomCookie;

    iput-object v11, p0, Lsun/security/ssl/Handshaker;->clnt_random:Lsun/security/ssl/RandomCookie;

    iget-boolean v11, p0, Lsun/security/ssl/Handshaker;->secureRenegotiation:Z

    if-nez v11, :cond_1b

    sget-object v11, Lsun/security/ssl/CipherSuite;->C_SCSV:Lsun/security/ssl/CipherSuite;

    invoke-virtual {v1, v11}, Lsun/security/ssl/CipherSuiteList;->contains(Lsun/security/ssl/CipherSuite;)Z

    move-result v11

    if-eqz v11, :cond_1b

    :goto_5
    return-object v2

    :cond_1a
    invoke-static {v3}, Lsun/net/util/IPAddressUtil;->isIPv6LiteralAddress(Ljava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_19

    invoke-virtual {v2, v3}, Lsun/security/ssl/HandshakeMessage$ClientHello;->addServerNameIndicationExtension(Ljava/lang/String;)V

    goto :goto_4

    :cond_1b
    iget-object v11, p0, Lsun/security/ssl/Handshaker;->clientVerifyData:[B

    invoke-virtual {v2, v11}, Lsun/security/ssl/HandshakeMessage$ClientHello;->addRenegotiationInfoExtension([B)V

    goto :goto_5
.end method

.method handshakeAlert(B)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLProtocolException;
        }
    .end annotation

    invoke-static {p1}, Lsun/security/ssl/Alerts;->alertDescription(B)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lsun/security/ssl/ClientHandshaker;->debug:Lsun/security/ssl/Debug;

    if-eqz v1, :cond_0

    const-string/jumbo v1, "handshake"

    invoke-static {v1}, Lsun/security/ssl/Debug;->isOn(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

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
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v2, 0x0

    iget v0, p0, Lsun/security/ssl/Handshaker;->state:I

    if-lt v0, p1, :cond_0

    if-eqz p1, :cond_0

    new-instance v0, Ljavax/net/ssl/SSLProtocolException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Handshake message sequence violation, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljavax/net/ssl/SSLProtocolException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    sparse-switch p1, :sswitch_data_0

    new-instance v0, Ljavax/net/ssl/SSLProtocolException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Illegal client handshake msg, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljavax/net/ssl/SSLProtocolException;-><init>(Ljava/lang/String;)V

    throw v0

    :sswitch_0
    new-instance v0, Lsun/security/ssl/HandshakeMessage$HelloRequest;

    iget-object v1, p0, Lsun/security/ssl/Handshaker;->input:Lsun/security/ssl/HandshakeInStream;

    invoke-direct {v0, v1}, Lsun/security/ssl/HandshakeMessage$HelloRequest;-><init>(Lsun/security/ssl/HandshakeInStream;)V

    invoke-direct {p0, v0}, Lsun/security/ssl/ClientHandshaker;->serverHelloRequest(Lsun/security/ssl/HandshakeMessage$HelloRequest;)V

    :cond_1
    :goto_0
    iget v0, p0, Lsun/security/ssl/Handshaker;->state:I

    if-ge v0, p1, :cond_2

    iput p1, p0, Lsun/security/ssl/Handshaker;->state:I

    :cond_2
    return-void

    :sswitch_1
    new-instance v0, Lsun/security/ssl/HandshakeMessage$ServerHello;

    iget-object v1, p0, Lsun/security/ssl/Handshaker;->input:Lsun/security/ssl/HandshakeInStream;

    invoke-direct {v0, v1, p2}, Lsun/security/ssl/HandshakeMessage$ServerHello;-><init>(Lsun/security/ssl/HandshakeInStream;I)V

    invoke-direct {p0, v0}, Lsun/security/ssl/ClientHandshaker;->serverHello(Lsun/security/ssl/HandshakeMessage$ServerHello;)V

    goto :goto_0

    :sswitch_2
    iget-object v0, p0, Lsun/security/ssl/Handshaker;->keyExchange:Lsun/security/ssl/CipherSuite$KeyExchange;

    sget-object v1, Lsun/security/ssl/CipherSuite$KeyExchange;->K_DH_ANON:Lsun/security/ssl/CipherSuite$KeyExchange;

    if-eq v0, v1, :cond_3

    iget-object v0, p0, Lsun/security/ssl/Handshaker;->keyExchange:Lsun/security/ssl/CipherSuite$KeyExchange;

    sget-object v1, Lsun/security/ssl/CipherSuite$KeyExchange;->K_ECDH_ANON:Lsun/security/ssl/CipherSuite$KeyExchange;

    if-ne v0, v1, :cond_5

    :cond_3
    :goto_1
    const-string/jumbo v0, "unexpected server cert chain"

    const/16 v1, 0xa

    invoke-virtual {p0, v1, v0}, Lsun/security/ssl/Handshaker;->fatalSE(BLjava/lang/String;)V

    :cond_4
    new-instance v0, Lsun/security/ssl/HandshakeMessage$CertificateMsg;

    iget-object v1, p0, Lsun/security/ssl/Handshaker;->input:Lsun/security/ssl/HandshakeInStream;

    invoke-direct {v0, v1}, Lsun/security/ssl/HandshakeMessage$CertificateMsg;-><init>(Lsun/security/ssl/HandshakeInStream;)V

    invoke-direct {p0, v0}, Lsun/security/ssl/ClientHandshaker;->serverCertificate(Lsun/security/ssl/HandshakeMessage$CertificateMsg;)V

    iget-object v0, p0, Lsun/security/ssl/Handshaker;->session:Lsun/security/ssl/SSLSessionImpl;

    invoke-virtual {v0}, Lsun/security/ssl/SSLSessionImpl;->getPeerCertificates()[Ljava/security/cert/Certificate;

    move-result-object v0

    aget-object v0, v0, v2

    invoke-virtual {v0}, Ljava/security/cert/Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v0

    iput-object v0, p0, Lsun/security/ssl/ClientHandshaker;->serverKey:Ljava/security/PublicKey;

    goto :goto_0

    :cond_5
    iget-object v0, p0, Lsun/security/ssl/Handshaker;->keyExchange:Lsun/security/ssl/CipherSuite$KeyExchange;

    sget-object v1, Lsun/security/ssl/CipherSuite$KeyExchange;->K_KRB5:Lsun/security/ssl/CipherSuite$KeyExchange;

    if-eq v0, v1, :cond_3

    iget-object v0, p0, Lsun/security/ssl/Handshaker;->keyExchange:Lsun/security/ssl/CipherSuite$KeyExchange;

    sget-object v1, Lsun/security/ssl/CipherSuite$KeyExchange;->K_KRB5_EXPORT:Lsun/security/ssl/CipherSuite$KeyExchange;

    if-ne v0, v1, :cond_4

    goto :goto_1

    :sswitch_3
    const/4 v0, 0x1

    iput-boolean v0, p0, Lsun/security/ssl/ClientHandshaker;->serverKeyExchangeReceived:Z

    invoke-static {}, Lsun/security/ssl/ClientHandshaker;->-getsun-security-ssl-CipherSuite$KeyExchangeSwitchesValues()[I

    move-result-object v0

    iget-object v1, p0, Lsun/security/ssl/Handshaker;->keyExchange:Lsun/security/ssl/CipherSuite$KeyExchange;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    new-instance v0, Ljavax/net/ssl/SSLProtocolException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "unsupported key exchange algorithm = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lsun/security/ssl/Handshaker;->keyExchange:Lsun/security/ssl/CipherSuite$KeyExchange;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljavax/net/ssl/SSLProtocolException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    iget-object v0, p0, Lsun/security/ssl/ClientHandshaker;->serverKey:Ljava/security/PublicKey;

    if-nez v0, :cond_6

    new-instance v0, Ljavax/net/ssl/SSLProtocolException;

    const-string/jumbo v1, "Server did not send certificate message"

    invoke-direct {v0, v1}, Ljavax/net/ssl/SSLProtocolException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_6
    iget-object v0, p0, Lsun/security/ssl/ClientHandshaker;->serverKey:Ljava/security/PublicKey;

    instance-of v0, v0, Ljava/security/interfaces/RSAPublicKey;

    if-nez v0, :cond_7

    new-instance v0, Ljavax/net/ssl/SSLProtocolException;

    const-string/jumbo v1, "Protocol violation: the certificate type must be appropriate for the selected cipher suite\'s key exchange algorithm"

    invoke-direct {v0, v1}, Ljavax/net/ssl/SSLProtocolException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_7
    iget-object v0, p0, Lsun/security/ssl/ClientHandshaker;->serverKey:Ljava/security/PublicKey;

    invoke-static {v0}, Lsun/security/ssl/JsseJce;->getRSAKeyLength(Ljava/security/PublicKey;)I

    move-result v0

    const/16 v1, 0x200

    if-gt v0, v1, :cond_8

    new-instance v0, Ljavax/net/ssl/SSLProtocolException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Protocol violation: server sent a server key exchange message for key exchange "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lsun/security/ssl/Handshaker;->keyExchange:Lsun/security/ssl/CipherSuite$KeyExchange;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " when the public key in the server certificate"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " is less than or equal to 512 bits in length"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljavax/net/ssl/SSLProtocolException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_8
    :try_start_0
    new-instance v0, Lsun/security/ssl/HandshakeMessage$RSA_ServerKeyExchange;

    iget-object v1, p0, Lsun/security/ssl/Handshaker;->input:Lsun/security/ssl/HandshakeInStream;

    invoke-direct {v0, v1}, Lsun/security/ssl/HandshakeMessage$RSA_ServerKeyExchange;-><init>(Lsun/security/ssl/HandshakeInStream;)V

    invoke-direct {p0, v0}, Lsun/security/ssl/ClientHandshaker;->serverKeyExchange(Lsun/security/ssl/HandshakeMessage$RSA_ServerKeyExchange;)V
    :try_end_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v8

    const-string/jumbo v0, "Server key"

    invoke-static {v0, v8}, Lsun/security/ssl/ClientHandshaker;->throwSSLException(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_0

    :pswitch_1
    :try_start_1
    new-instance v0, Lsun/security/ssl/HandshakeMessage$DH_ServerKeyExchange;

    iget-object v1, p0, Lsun/security/ssl/Handshaker;->input:Lsun/security/ssl/HandshakeInStream;

    iget-object v2, p0, Lsun/security/ssl/Handshaker;->protocolVersion:Lsun/security/ssl/ProtocolVersion;

    invoke-direct {v0, v1, v2}, Lsun/security/ssl/HandshakeMessage$DH_ServerKeyExchange;-><init>(Lsun/security/ssl/HandshakeInStream;Lsun/security/ssl/ProtocolVersion;)V

    invoke-direct {p0, v0}, Lsun/security/ssl/ClientHandshaker;->serverKeyExchange(Lsun/security/ssl/HandshakeMessage$DH_ServerKeyExchange;)V
    :try_end_1
    .catch Ljava/security/GeneralSecurityException; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_0

    :catch_1
    move-exception v8

    const-string/jumbo v0, "Server key"

    invoke-static {v0, v8}, Lsun/security/ssl/ClientHandshaker;->throwSSLException(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_0

    :pswitch_2
    :try_start_2
    new-instance v0, Lsun/security/ssl/HandshakeMessage$DH_ServerKeyExchange;

    iget-object v1, p0, Lsun/security/ssl/Handshaker;->input:Lsun/security/ssl/HandshakeInStream;

    iget-object v2, p0, Lsun/security/ssl/ClientHandshaker;->serverKey:Ljava/security/PublicKey;

    iget-object v3, p0, Lsun/security/ssl/Handshaker;->clnt_random:Lsun/security/ssl/RandomCookie;

    iget-object v3, v3, Lsun/security/ssl/RandomCookie;->random_bytes:[B

    iget-object v4, p0, Lsun/security/ssl/Handshaker;->svr_random:Lsun/security/ssl/RandomCookie;

    iget-object v4, v4, Lsun/security/ssl/RandomCookie;->random_bytes:[B

    iget-object v6, p0, Lsun/security/ssl/Handshaker;->localSupportedSignAlgs:Ljava/util/Collection;

    iget-object v7, p0, Lsun/security/ssl/Handshaker;->protocolVersion:Lsun/security/ssl/ProtocolVersion;

    move v5, p2

    invoke-direct/range {v0 .. v7}, Lsun/security/ssl/HandshakeMessage$DH_ServerKeyExchange;-><init>(Lsun/security/ssl/HandshakeInStream;Ljava/security/PublicKey;[B[BILjava/util/Collection;Lsun/security/ssl/ProtocolVersion;)V

    invoke-direct {p0, v0}, Lsun/security/ssl/ClientHandshaker;->serverKeyExchange(Lsun/security/ssl/HandshakeMessage$DH_ServerKeyExchange;)V
    :try_end_2
    .catch Ljava/security/GeneralSecurityException; {:try_start_2 .. :try_end_2} :catch_2

    goto/16 :goto_0

    :catch_2
    move-exception v8

    const-string/jumbo v0, "Server key"

    invoke-static {v0, v8}, Lsun/security/ssl/ClientHandshaker;->throwSSLException(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_0

    :pswitch_3
    :try_start_3
    new-instance v0, Lsun/security/ssl/HandshakeMessage$ECDH_ServerKeyExchange;

    iget-object v1, p0, Lsun/security/ssl/Handshaker;->input:Lsun/security/ssl/HandshakeInStream;

    iget-object v2, p0, Lsun/security/ssl/ClientHandshaker;->serverKey:Ljava/security/PublicKey;

    iget-object v3, p0, Lsun/security/ssl/Handshaker;->clnt_random:Lsun/security/ssl/RandomCookie;

    iget-object v3, v3, Lsun/security/ssl/RandomCookie;->random_bytes:[B

    iget-object v4, p0, Lsun/security/ssl/Handshaker;->svr_random:Lsun/security/ssl/RandomCookie;

    iget-object v4, v4, Lsun/security/ssl/RandomCookie;->random_bytes:[B

    iget-object v5, p0, Lsun/security/ssl/Handshaker;->localSupportedSignAlgs:Ljava/util/Collection;

    iget-object v6, p0, Lsun/security/ssl/Handshaker;->protocolVersion:Lsun/security/ssl/ProtocolVersion;

    invoke-direct/range {v0 .. v6}, Lsun/security/ssl/HandshakeMessage$ECDH_ServerKeyExchange;-><init>(Lsun/security/ssl/HandshakeInStream;Ljava/security/PublicKey;[B[BLjava/util/Collection;Lsun/security/ssl/ProtocolVersion;)V

    invoke-direct {p0, v0}, Lsun/security/ssl/ClientHandshaker;->serverKeyExchange(Lsun/security/ssl/HandshakeMessage$ECDH_ServerKeyExchange;)V
    :try_end_3
    .catch Ljava/security/GeneralSecurityException; {:try_start_3 .. :try_end_3} :catch_3

    goto/16 :goto_0

    :catch_3
    move-exception v8

    const-string/jumbo v0, "Server key"

    invoke-static {v0, v8}, Lsun/security/ssl/ClientHandshaker;->throwSSLException(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_0

    :pswitch_4
    new-instance v0, Ljavax/net/ssl/SSLProtocolException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Protocol violation: server sent a server key exchangemessage for key exchange "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lsun/security/ssl/Handshaker;->keyExchange:Lsun/security/ssl/CipherSuite$KeyExchange;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljavax/net/ssl/SSLProtocolException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_5
    new-instance v0, Ljavax/net/ssl/SSLProtocolException;

    const-string/jumbo v1, "unexpected receipt of server key exchange algorithm"

    invoke-direct {v0, v1}, Ljavax/net/ssl/SSLProtocolException;-><init>(Ljava/lang/String;)V

    throw v0

    :sswitch_4
    iget-object v0, p0, Lsun/security/ssl/Handshaker;->keyExchange:Lsun/security/ssl/CipherSuite$KeyExchange;

    sget-object v1, Lsun/security/ssl/CipherSuite$KeyExchange;->K_DH_ANON:Lsun/security/ssl/CipherSuite$KeyExchange;

    if-eq v0, v1, :cond_9

    iget-object v0, p0, Lsun/security/ssl/Handshaker;->keyExchange:Lsun/security/ssl/CipherSuite$KeyExchange;

    sget-object v1, Lsun/security/ssl/CipherSuite$KeyExchange;->K_ECDH_ANON:Lsun/security/ssl/CipherSuite$KeyExchange;

    if-ne v0, v1, :cond_a

    :cond_9
    new-instance v0, Ljavax/net/ssl/SSLHandshakeException;

    const-string/jumbo v1, "Client authentication requested for anonymous cipher suite."

    invoke-direct {v0, v1}, Ljavax/net/ssl/SSLHandshakeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_a
    iget-object v0, p0, Lsun/security/ssl/Handshaker;->keyExchange:Lsun/security/ssl/CipherSuite$KeyExchange;

    sget-object v1, Lsun/security/ssl/CipherSuite$KeyExchange;->K_KRB5:Lsun/security/ssl/CipherSuite$KeyExchange;

    if-eq v0, v1, :cond_b

    iget-object v0, p0, Lsun/security/ssl/Handshaker;->keyExchange:Lsun/security/ssl/CipherSuite$KeyExchange;

    sget-object v1, Lsun/security/ssl/CipherSuite$KeyExchange;->K_KRB5_EXPORT:Lsun/security/ssl/CipherSuite$KeyExchange;

    if-ne v0, v1, :cond_c

    :cond_b
    new-instance v0, Ljavax/net/ssl/SSLHandshakeException;

    const-string/jumbo v1, "Client certificate requested for kerberos cipher suite."

    invoke-direct {v0, v1}, Ljavax/net/ssl/SSLHandshakeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_c
    new-instance v0, Lsun/security/ssl/HandshakeMessage$CertificateRequest;

    iget-object v1, p0, Lsun/security/ssl/Handshaker;->input:Lsun/security/ssl/HandshakeInStream;

    iget-object v2, p0, Lsun/security/ssl/Handshaker;->protocolVersion:Lsun/security/ssl/ProtocolVersion;

    invoke-direct {v0, v1, v2}, Lsun/security/ssl/HandshakeMessage$CertificateRequest;-><init>(Lsun/security/ssl/HandshakeInStream;Lsun/security/ssl/ProtocolVersion;)V

    iput-object v0, p0, Lsun/security/ssl/ClientHandshaker;->certRequest:Lsun/security/ssl/HandshakeMessage$CertificateRequest;

    sget-object v0, Lsun/security/ssl/ClientHandshaker;->debug:Lsun/security/ssl/Debug;

    if-eqz v0, :cond_d

    const-string/jumbo v0, "handshake"

    invoke-static {v0}, Lsun/security/ssl/Debug;->isOn(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_d

    iget-object v0, p0, Lsun/security/ssl/ClientHandshaker;->certRequest:Lsun/security/ssl/HandshakeMessage$CertificateRequest;

    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v0, v1}, Lsun/security/ssl/HandshakeMessage$CertificateRequest;->print(Ljava/io/PrintStream;)V

    :cond_d
    iget-object v0, p0, Lsun/security/ssl/Handshaker;->protocolVersion:Lsun/security/ssl/ProtocolVersion;

    iget v0, v0, Lsun/security/ssl/ProtocolVersion;->v:I

    sget-object v1, Lsun/security/ssl/ProtocolVersion;->TLS12:Lsun/security/ssl/ProtocolVersion;

    iget v1, v1, Lsun/security/ssl/ProtocolVersion;->v:I

    if-lt v0, v1, :cond_1

    iget-object v0, p0, Lsun/security/ssl/ClientHandshaker;->certRequest:Lsun/security/ssl/HandshakeMessage$CertificateRequest;

    invoke-virtual {v0}, Lsun/security/ssl/HandshakeMessage$CertificateRequest;->getSignAlgorithms()Ljava/util/Collection;

    move-result-object v9

    if-eqz v9, :cond_e

    invoke-interface {v9}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_f

    :cond_e
    new-instance v0, Ljavax/net/ssl/SSLHandshakeException;

    const-string/jumbo v1, "No peer supported signature algorithms"

    invoke-direct {v0, v1}, Ljavax/net/ssl/SSLHandshakeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_f
    invoke-static {v9}, Lsun/security/ssl/SignatureAndHashAlgorithm;->getSupportedAlgorithms(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_10

    new-instance v0, Ljavax/net/ssl/SSLHandshakeException;

    const-string/jumbo v1, "No supported signature and hash algorithm in common"

    invoke-direct {v0, v1}, Ljavax/net/ssl/SSLHandshakeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_10
    invoke-virtual {p0, v10}, Lsun/security/ssl/Handshaker;->setPeerSupportedSignAlgs(Ljava/util/Collection;)V

    iget-object v0, p0, Lsun/security/ssl/Handshaker;->session:Lsun/security/ssl/SSLSessionImpl;

    invoke-virtual {v0, v10}, Lsun/security/ssl/SSLSessionImpl;->setPeerSupportedSignatureAlgorithms(Ljava/util/Collection;)V

    goto/16 :goto_0

    :sswitch_5
    new-instance v0, Lsun/security/ssl/HandshakeMessage$ServerHelloDone;

    iget-object v1, p0, Lsun/security/ssl/Handshaker;->input:Lsun/security/ssl/HandshakeInStream;

    invoke-direct {v0, v1}, Lsun/security/ssl/HandshakeMessage$ServerHelloDone;-><init>(Lsun/security/ssl/HandshakeInStream;)V

    invoke-direct {p0, v0}, Lsun/security/ssl/ClientHandshaker;->serverHelloDone(Lsun/security/ssl/HandshakeMessage$ServerHelloDone;)V

    goto/16 :goto_0

    :sswitch_6
    new-instance v0, Lsun/security/ssl/HandshakeMessage$Finished;

    iget-object v1, p0, Lsun/security/ssl/Handshaker;->protocolVersion:Lsun/security/ssl/ProtocolVersion;

    iget-object v2, p0, Lsun/security/ssl/Handshaker;->input:Lsun/security/ssl/HandshakeInStream;

    iget-object v3, p0, Lsun/security/ssl/Handshaker;->cipherSuite:Lsun/security/ssl/CipherSuite;

    invoke-direct {v0, v1, v2, v3}, Lsun/security/ssl/HandshakeMessage$Finished;-><init>(Lsun/security/ssl/ProtocolVersion;Lsun/security/ssl/HandshakeInStream;Lsun/security/ssl/CipherSuite;)V

    invoke-direct {p0, v0}, Lsun/security/ssl/ClientHandshaker;->serverFinished(Lsun/security/ssl/HandshakeMessage$Finished;)V

    goto/16 :goto_0

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
