.class final Lsun/security/ssl/ServerHandshaker;
.super Lsun/security/ssl/Handshaker;
.source "ServerHandshaker.java"


# static fields
.field private static final synthetic -sun-security-ssl-CipherSuite$KeyExchangeSwitchesValues:[I


# instance fields
.field private certs:[Ljava/security/cert/X509Certificate;

.field private clientRequestedVersion:Lsun/security/ssl/ProtocolVersion;

.field private dh:Lsun/security/ssl/DHCrypt;

.field private doClientAuth:B

.field private ecdh:Lsun/security/ssl/ECDHCrypt;

.field private kerberosKeys:[Ljavax/crypto/SecretKey;

.field private needClientVerify:Z

.field preferableSignatureAlgorithm:Lsun/security/ssl/SignatureAndHashAlgorithm;

.field private privateKey:Ljava/security/PrivateKey;

.field private supportedCurves:Lsun/security/ssl/SupportedEllipticCurvesExtension;

.field private tempPrivateKey:Ljava/security/PrivateKey;

.field private tempPublicKey:Ljava/security/PublicKey;


# direct methods
.method private static synthetic -getsun-security-ssl-CipherSuite$KeyExchangeSwitchesValues()[I
    .locals 3

    sget-object v0, Lsun/security/ssl/ServerHandshaker;->-sun-security-ssl-CipherSuite$KeyExchangeSwitchesValues:[I

    if-eqz v0, :cond_0

    sget-object v0, Lsun/security/ssl/ServerHandshaker;->-sun-security-ssl-CipherSuite$KeyExchangeSwitchesValues:[I

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
    sput-object v0, Lsun/security/ssl/ServerHandshaker;->-sun-security-ssl-CipherSuite$KeyExchangeSwitchesValues:[I

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

.method constructor <init>(Lsun/security/ssl/SSLEngineImpl;Lsun/security/ssl/SSLContextImpl;Lsun/security/ssl/ProtocolList;BLsun/security/ssl/ProtocolVersion;ZZ[B[B)V
    .locals 11

    if-eqz p4, :cond_0

    const/4 v4, 0x1

    :goto_0
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object/from16 v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    move-object/from16 v9, p8

    move-object/from16 v10, p9

    invoke-direct/range {v0 .. v10}, Lsun/security/ssl/Handshaker;-><init>(Lsun/security/ssl/SSLEngineImpl;Lsun/security/ssl/SSLContextImpl;Lsun/security/ssl/ProtocolList;ZZLsun/security/ssl/ProtocolVersion;ZZ[B[B)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lsun/security/ssl/ServerHandshaker;->needClientVerify:Z

    iput-byte p4, p0, Lsun/security/ssl/ServerHandshaker;->doClientAuth:B

    return-void

    :cond_0
    const/4 v4, 0x0

    goto :goto_0
.end method

.method constructor <init>(Lsun/security/ssl/SSLSocketImpl;Lsun/security/ssl/SSLContextImpl;Lsun/security/ssl/ProtocolList;BLsun/security/ssl/ProtocolVersion;ZZ[B[B)V
    .locals 11

    if-eqz p4, :cond_0

    const/4 v4, 0x1

    :goto_0
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object/from16 v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    move-object/from16 v9, p8

    move-object/from16 v10, p9

    invoke-direct/range {v0 .. v10}, Lsun/security/ssl/Handshaker;-><init>(Lsun/security/ssl/SSLSocketImpl;Lsun/security/ssl/SSLContextImpl;Lsun/security/ssl/ProtocolList;ZZLsun/security/ssl/ProtocolVersion;ZZ[B[B)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lsun/security/ssl/ServerHandshaker;->needClientVerify:Z

    iput-byte p4, p0, Lsun/security/ssl/ServerHandshaker;->doClientAuth:B

    return-void

    :cond_0
    const/4 v4, 0x0

    goto :goto_0
.end method

.method private chooseCipherSuite(Lsun/security/ssl/HandshakeMessage$ClientHello;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p1}, Lsun/security/ssl/HandshakeMessage$ClientHello;->getCipherSuites()Lsun/security/ssl/CipherSuiteList;

    move-result-object v2

    invoke-virtual {v2}, Lsun/security/ssl/CipherSuiteList;->collection()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lsun/security/ssl/CipherSuite;

    invoke-virtual {p0, v0}, Lsun/security/ssl/Handshaker;->isNegotiable(Lsun/security/ssl/CipherSuite;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-byte v2, p0, Lsun/security/ssl/ServerHandshaker;->doClientAuth:B

    const/4 v3, 0x2

    if-ne v2, v3, :cond_1

    iget-object v2, v0, Lsun/security/ssl/CipherSuite;->keyExchange:Lsun/security/ssl/CipherSuite$KeyExchange;

    sget-object v3, Lsun/security/ssl/CipherSuite$KeyExchange;->K_DH_ANON:Lsun/security/ssl/CipherSuite$KeyExchange;

    if-eq v2, v3, :cond_0

    iget-object v2, v0, Lsun/security/ssl/CipherSuite;->keyExchange:Lsun/security/ssl/CipherSuite$KeyExchange;

    sget-object v3, Lsun/security/ssl/CipherSuite$KeyExchange;->K_ECDH_ANON:Lsun/security/ssl/CipherSuite$KeyExchange;

    if-eq v2, v3, :cond_0

    :cond_1
    invoke-virtual {p0, v0}, Lsun/security/ssl/ServerHandshaker;->trySetCipherSuite(Lsun/security/ssl/CipherSuite;)Z

    move-result v2

    if-eqz v2, :cond_0

    return-void

    :cond_2
    const-string/jumbo v2, "no cipher suites in common"

    const/16 v3, 0x28

    invoke-virtual {p0, v3, v2}, Lsun/security/ssl/Handshaker;->fatalSE(BLjava/lang/String;)V

    return-void
.end method

.method private clientCertificate(Lsun/security/ssl/HandshakeMessage$CertificateMsg;)V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v9, 0x1

    const/4 v8, 0x0

    sget-object v6, Lsun/security/ssl/ServerHandshaker;->debug:Lsun/security/ssl/Debug;

    if-eqz v6, :cond_0

    const-string/jumbo v6, "handshake"

    invoke-static {v6}, Lsun/security/ssl/Debug;->isOn(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    sget-object v6, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {p1, v6}, Lsun/security/ssl/HandshakeMessage$CertificateMsg;->print(Ljava/io/PrintStream;)V

    :cond_0
    invoke-virtual {p1}, Lsun/security/ssl/HandshakeMessage$CertificateMsg;->getCertificateChain()[Ljava/security/cert/X509Certificate;

    move-result-object v4

    array-length v6, v4

    if-nez v6, :cond_3

    iget-byte v6, p0, Lsun/security/ssl/ServerHandshaker;->doClientAuth:B

    if-ne v6, v9, :cond_2

    iget-object v6, p0, Lsun/security/ssl/Handshaker;->protocolVersion:Lsun/security/ssl/ProtocolVersion;

    iget v6, v6, Lsun/security/ssl/ProtocolVersion;->v:I

    sget-object v7, Lsun/security/ssl/ProtocolVersion;->TLS12:Lsun/security/ssl/ProtocolVersion;

    iget v7, v7, Lsun/security/ssl/ProtocolVersion;->v:I

    if-lt v6, v7, :cond_1

    iget-object v6, p0, Lsun/security/ssl/Handshaker;->handshakeHash:Lsun/security/ssl/HandshakeHash;

    invoke-virtual {v6, v8}, Lsun/security/ssl/HandshakeHash;->setCertificateVerifyAlg(Ljava/lang/String;)V

    :cond_1
    return-void

    :cond_2
    const-string/jumbo v6, "null cert chain"

    const/16 v7, 0x2a

    invoke-virtual {p0, v7, v6}, Lsun/security/ssl/Handshaker;->fatalSE(BLjava/lang/String;)V

    :cond_3
    iget-object v6, p0, Lsun/security/ssl/Handshaker;->sslContext:Lsun/security/ssl/SSLContextImpl;

    invoke-virtual {v6}, Lsun/security/ssl/SSLContextImpl;->getX509TrustManager()Ljavax/net/ssl/X509TrustManager;

    move-result-object v5

    const/4 v6, 0x0

    :try_start_0
    aget-object v6, v4, v6

    invoke-virtual {v6}, Ljava/security/cert/Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v2

    invoke-interface {v2}, Ljava/security/PublicKey;->getAlgorithm()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v6, "RSA"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    const-string/jumbo v0, "RSA"

    :goto_0
    instance-of v6, v5, Ljavax/net/ssl/X509ExtendedTrustManager;

    if-eqz v6, :cond_8

    iget-object v6, p0, Lsun/security/ssl/Handshaker;->conn:Lsun/security/ssl/SSLSocketImpl;

    if-eqz v6, :cond_7

    nop

    nop

    invoke-virtual {v4}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Ljava/security/cert/X509Certificate;

    iget-object v7, p0, Lsun/security/ssl/Handshaker;->conn:Lsun/security/ssl/SSLSocketImpl;

    invoke-virtual {v5, v6, v0, v7}, Ljavax/net/ssl/X509ExtendedTrustManager;->checkClientTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;Ljava/net/Socket;)V
    :try_end_0
    .catch Ljava/security/cert/CertificateException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    iput-boolean v9, p0, Lsun/security/ssl/ServerHandshaker;->needClientVerify:Z

    iget-object v6, p0, Lsun/security/ssl/Handshaker;->session:Lsun/security/ssl/SSLSessionImpl;

    invoke-virtual {v6, v4}, Lsun/security/ssl/SSLSessionImpl;->setPeerCertificates([Ljava/security/cert/X509Certificate;)V

    return-void

    :cond_4
    :try_start_1
    const-string/jumbo v6, "DSA"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    const-string/jumbo v0, "DSA"

    goto :goto_0

    :cond_5
    const-string/jumbo v6, "EC"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    const-string/jumbo v0, "EC"

    goto :goto_0

    :cond_6
    const-string/jumbo v0, "UNKNOWN"

    goto :goto_0

    :cond_7
    nop

    nop

    invoke-virtual {v4}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Ljava/security/cert/X509Certificate;

    iget-object v7, p0, Lsun/security/ssl/Handshaker;->engine:Lsun/security/ssl/SSLEngineImpl;

    invoke-virtual {v5, v6, v0, v7}, Ljavax/net/ssl/X509ExtendedTrustManager;->checkClientTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;Ljavax/net/ssl/SSLEngine;)V
    :try_end_1
    .catch Ljava/security/cert/CertificateException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception v1

    const/16 v6, 0x2e

    invoke-virtual {p0, v6, v1}, Lsun/security/ssl/Handshaker;->fatalSE(BLjava/lang/Throwable;)V

    goto :goto_1

    :cond_8
    :try_start_2
    new-instance v6, Ljava/security/cert/CertificateException;

    const-string/jumbo v7, "Improper X509TrustManager implementation"

    invoke-direct {v6, v7}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/String;)V

    throw v6
    :try_end_2
    .catch Ljava/security/cert/CertificateException; {:try_start_2 .. :try_end_2} :catch_0
.end method

.method private clientCertificateVerify(Lsun/security/ssl/HandshakeMessage$CertificateVerify;)V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v9, 0x2a

    const/4 v8, 0x0

    sget-object v5, Lsun/security/ssl/ServerHandshaker;->debug:Lsun/security/ssl/Debug;

    if-eqz v5, :cond_0

    const-string/jumbo v5, "handshake"

    invoke-static {v5}, Lsun/security/ssl/Debug;->isOn(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    sget-object v5, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {p1, v5}, Lsun/security/ssl/HandshakeMessage$CertificateVerify;->print(Ljava/io/PrintStream;)V

    :cond_0
    iget-object v5, p0, Lsun/security/ssl/Handshaker;->protocolVersion:Lsun/security/ssl/ProtocolVersion;

    iget v5, v5, Lsun/security/ssl/ProtocolVersion;->v:I

    sget-object v6, Lsun/security/ssl/ProtocolVersion;->TLS12:Lsun/security/ssl/ProtocolVersion;

    iget v6, v6, Lsun/security/ssl/ProtocolVersion;->v:I

    if-lt v5, v6, :cond_4

    invoke-virtual {p1}, Lsun/security/ssl/HandshakeMessage$CertificateVerify;->getPreferableSignatureAlgorithm()Lsun/security/ssl/SignatureAndHashAlgorithm;

    move-result-object v3

    if-nez v3, :cond_1

    new-instance v5, Ljavax/net/ssl/SSLHandshakeException;

    const-string/jumbo v6, "Illegal CertificateVerify message"

    invoke-direct {v5, v6}, Ljavax/net/ssl/SSLHandshakeException;-><init>(Ljava/lang/String;)V

    throw v5

    :cond_1
    invoke-static {v3}, Lsun/security/ssl/SignatureAndHashAlgorithm;->getHashAlgorithmName(Lsun/security/ssl/SignatureAndHashAlgorithm;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v5

    if-nez v5, :cond_3

    :cond_2
    new-instance v5, Ljavax/net/ssl/SSLHandshakeException;

    const-string/jumbo v6, "No supported hash algorithm"

    invoke-direct {v5, v6}, Ljavax/net/ssl/SSLHandshakeException;-><init>(Ljava/lang/String;)V

    throw v5

    :cond_3
    iget-object v5, p0, Lsun/security/ssl/Handshaker;->handshakeHash:Lsun/security/ssl/HandshakeHash;

    invoke-virtual {v5, v1}, Lsun/security/ssl/HandshakeHash;->setCertificateVerifyAlg(Ljava/lang/String;)V

    :cond_4
    :try_start_0
    iget-object v5, p0, Lsun/security/ssl/Handshaker;->session:Lsun/security/ssl/SSLSessionImpl;

    invoke-virtual {v5}, Lsun/security/ssl/SSLSessionImpl;->getPeerCertificates()[Ljava/security/cert/Certificate;

    move-result-object v5

    const/4 v6, 0x0

    aget-object v5, v5, v6

    invoke-virtual {v5}, Ljava/security/cert/Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v2

    iget-object v5, p0, Lsun/security/ssl/Handshaker;->protocolVersion:Lsun/security/ssl/ProtocolVersion;

    iget-object v6, p0, Lsun/security/ssl/Handshaker;->handshakeHash:Lsun/security/ssl/HandshakeHash;

    iget-object v7, p0, Lsun/security/ssl/Handshaker;->session:Lsun/security/ssl/SSLSessionImpl;

    invoke-virtual {v7}, Lsun/security/ssl/SSLSessionImpl;->getMasterSecret()Ljavax/crypto/SecretKey;

    move-result-object v7

    invoke-virtual {p1, v5, v6, v2, v7}, Lsun/security/ssl/HandshakeMessage$CertificateVerify;->verify(Lsun/security/ssl/ProtocolVersion;Lsun/security/ssl/HandshakeHash;Ljava/security/PublicKey;Ljavax/crypto/SecretKey;)Z

    move-result v4

    if-nez v4, :cond_5

    const-string/jumbo v5, "certificate verify message signature error"

    const/16 v6, 0x2a

    invoke-virtual {p0, v6, v5}, Lsun/security/ssl/Handshaker;->fatalSE(BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_5
    :goto_0
    iput-boolean v8, p0, Lsun/security/ssl/ServerHandshaker;->needClientVerify:Z

    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v5, "certificate verify format error"

    invoke-virtual {p0, v9, v5, v0}, Lsun/security/ssl/Handshaker;->fatalSE(BLjava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private clientFinished(Lsun/security/ssl/HandshakeMessage$Finished;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v4, 0x28

    const/4 v3, 0x1

    sget-object v1, Lsun/security/ssl/ServerHandshaker;->debug:Lsun/security/ssl/Debug;

    if-eqz v1, :cond_0

    const-string/jumbo v1, "handshake"

    invoke-static {v1}, Lsun/security/ssl/Debug;->isOn(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {p1, v1}, Lsun/security/ssl/HandshakeMessage$Finished;->print(Ljava/io/PrintStream;)V

    :cond_0
    iget-byte v1, p0, Lsun/security/ssl/ServerHandshaker;->doClientAuth:B

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    iget-object v1, p0, Lsun/security/ssl/Handshaker;->session:Lsun/security/ssl/SSLSessionImpl;

    invoke-virtual {v1}, Lsun/security/ssl/SSLSessionImpl;->getPeerPrincipal()Ljava/security/Principal;

    :cond_1
    iget-boolean v1, p0, Lsun/security/ssl/ServerHandshaker;->needClientVerify:Z

    if-eqz v1, :cond_2

    const-string/jumbo v1, "client did not send certificate verify message"

    invoke-virtual {p0, v4, v1}, Lsun/security/ssl/Handshaker;->fatalSE(BLjava/lang/String;)V

    :cond_2
    iget-object v1, p0, Lsun/security/ssl/Handshaker;->handshakeHash:Lsun/security/ssl/HandshakeHash;

    iget-object v2, p0, Lsun/security/ssl/Handshaker;->session:Lsun/security/ssl/SSLSessionImpl;

    invoke-virtual {v2}, Lsun/security/ssl/SSLSessionImpl;->getMasterSecret()Ljavax/crypto/SecretKey;

    move-result-object v2

    invoke-virtual {p1, v1, v3, v2}, Lsun/security/ssl/HandshakeMessage$Finished;->verify(Lsun/security/ssl/HandshakeHash;ILjavax/crypto/SecretKey;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string/jumbo v1, "client \'finished\' message doesn\'t verify"

    invoke-virtual {p0, v4, v1}, Lsun/security/ssl/Handshaker;->fatalSE(BLjava/lang/String;)V

    :cond_3
    iget-boolean v1, p0, Lsun/security/ssl/Handshaker;->secureRenegotiation:Z

    if-eqz v1, :cond_4

    invoke-virtual {p1}, Lsun/security/ssl/HandshakeMessage$Finished;->getVerifyData()[B

    move-result-object v1

    iput-object v1, p0, Lsun/security/ssl/Handshaker;->clientVerifyData:[B

    :cond_4
    iget-boolean v1, p0, Lsun/security/ssl/Handshaker;->resumingSession:Z

    if-nez v1, :cond_5

    iget-object v1, p0, Lsun/security/ssl/Handshaker;->input:Lsun/security/ssl/HandshakeInStream;

    invoke-virtual {v1}, Lsun/security/ssl/HandshakeInStream;->digestNow()V

    invoke-direct {p0, v3}, Lsun/security/ssl/ServerHandshaker;->sendChangeCipherAndFinish(Z)V

    :cond_5
    iget-object v1, p0, Lsun/security/ssl/Handshaker;->session:Lsun/security/ssl/SSLSessionImpl;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lsun/security/ssl/SSLSessionImpl;->setLastAccessedTime(J)V

    iget-boolean v1, p0, Lsun/security/ssl/Handshaker;->resumingSession:Z

    if-nez v1, :cond_7

    iget-object v1, p0, Lsun/security/ssl/Handshaker;->session:Lsun/security/ssl/SSLSessionImpl;

    invoke-virtual {v1}, Lsun/security/ssl/SSLSessionImpl;->isRejoinable()Z

    move-result v1

    if-eqz v1, :cond_7

    iget-object v1, p0, Lsun/security/ssl/Handshaker;->sslContext:Lsun/security/ssl/SSLContextImpl;

    invoke-virtual {v1}, Lsun/security/ssl/SSLContextImpl;->engineGetServerSessionContext()Ljavax/net/ssl/SSLSessionContext;

    move-result-object v1

    check-cast v1, Lsun/security/ssl/SSLSessionContextImpl;

    iget-object v2, p0, Lsun/security/ssl/Handshaker;->session:Lsun/security/ssl/SSLSessionImpl;

    invoke-virtual {v1, v2}, Lsun/security/ssl/SSLSessionContextImpl;->put(Lsun/security/ssl/SSLSessionImpl;)V

    sget-object v1, Lsun/security/ssl/ServerHandshaker;->debug:Lsun/security/ssl/Debug;

    if-eqz v1, :cond_6

    const-string/jumbo v1, "session"

    invoke-static {v1}, Lsun/security/ssl/Debug;->isOn(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "%% Cached server session: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lsun/security/ssl/Handshaker;->session:Lsun/security/ssl/SSLSessionImpl;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_6
    :goto_0
    return-void

    :cond_7
    iget-boolean v1, p0, Lsun/security/ssl/Handshaker;->resumingSession:Z

    if-nez v1, :cond_6

    sget-object v1, Lsun/security/ssl/ServerHandshaker;->debug:Lsun/security/ssl/Debug;

    if-eqz v1, :cond_6

    const-string/jumbo v1, "session"

    invoke-static {v1}, Lsun/security/ssl/Debug;->isOn(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "%% Didn\'t cache non-resumable server session: "

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

.method private clientHello(Lsun/security/ssl/HandshakeMessage$ClientHello;)V
    .locals 34
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v3, Lsun/security/ssl/ServerHandshaker;->debug:Lsun/security/ssl/Debug;

    if-eqz v3, :cond_0

    const-string/jumbo v3, "handshake"

    invoke-static {v3}, Lsun/security/ssl/Debug;->isOn(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Lsun/security/ssl/HandshakeMessage$ClientHello;->print(Ljava/io/PrintStream;)V

    :cond_0
    const/16 v27, 0x0

    invoke-virtual/range {p1 .. p1}, Lsun/security/ssl/HandshakeMessage$ClientHello;->getCipherSuites()Lsun/security/ssl/CipherSuiteList;

    move-result-object v11

    sget-object v3, Lsun/security/ssl/CipherSuite;->C_SCSV:Lsun/security/ssl/CipherSuite;

    invoke-virtual {v11, v3}, Lsun/security/ssl/CipherSuiteList;->contains(Lsun/security/ssl/CipherSuite;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/16 v27, 0x1

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lsun/security/ssl/Handshaker;->isInitialHandshake:Z

    if-eqz v3, :cond_10

    const/4 v3, 0x1

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lsun/security/ssl/Handshaker;->secureRenegotiation:Z

    :cond_1
    :goto_0
    move-object/from16 v0, p1

    iget-object v3, v0, Lsun/security/ssl/HandshakeMessage$ClientHello;->extensions:Lsun/security/ssl/HelloExtensions;

    sget-object v4, Lsun/security/ssl/ExtensionType;->EXT_RENEGOTIATION_INFO:Lsun/security/ssl/ExtensionType;

    invoke-virtual {v3, v4}, Lsun/security/ssl/HelloExtensions;->get(Lsun/security/ssl/ExtensionType;)Lsun/security/ssl/HelloExtension;

    move-result-object v12

    check-cast v12, Lsun/security/ssl/RenegotiationInfoExtension;

    if-eqz v12, :cond_14

    const/16 v27, 0x1

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lsun/security/ssl/Handshaker;->isInitialHandshake:Z

    if-eqz v3, :cond_12

    invoke-virtual {v12}, Lsun/security/ssl/RenegotiationInfoExtension;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_2

    const-string/jumbo v3, "The renegotiation_info field is not empty"

    const/16 v4, 0x28

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v3}, Lsun/security/ssl/Handshaker;->fatalSE(BLjava/lang/String;)V

    :cond_2
    const/4 v3, 0x1

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lsun/security/ssl/Handshaker;->secureRenegotiation:Z

    :cond_3
    :goto_1
    if-eqz v27, :cond_15

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lsun/security/ssl/Handshaker;->secureRenegotiation:Z

    if-eqz v3, :cond_15

    :cond_4
    :goto_2
    move-object/from16 v0, p0

    iget-object v3, v0, Lsun/security/ssl/Handshaker;->input:Lsun/security/ssl/HandshakeInStream;

    invoke-virtual {v3}, Lsun/security/ssl/HandshakeInStream;->digestNow()V

    new-instance v19, Lsun/security/ssl/HandshakeMessage$ServerHello;

    invoke-direct/range {v19 .. v19}, Lsun/security/ssl/HandshakeMessage$ServerHello;-><init>()V

    move-object/from16 v0, p1

    iget-object v3, v0, Lsun/security/ssl/HandshakeMessage$ClientHello;->protocolVersion:Lsun/security/ssl/ProtocolVersion;

    move-object/from16 v0, p0

    iput-object v3, v0, Lsun/security/ssl/ServerHandshaker;->clientRequestedVersion:Lsun/security/ssl/ProtocolVersion;

    move-object/from16 v0, p0

    iget-object v3, v0, Lsun/security/ssl/ServerHandshaker;->clientRequestedVersion:Lsun/security/ssl/ProtocolVersion;

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lsun/security/ssl/Handshaker;->selectProtocolVersion(Lsun/security/ssl/ProtocolVersion;)Lsun/security/ssl/ProtocolVersion;

    move-result-object v28

    if-eqz v28, :cond_5

    move-object/from16 v0, v28

    iget v3, v0, Lsun/security/ssl/ProtocolVersion;->v:I

    sget-object v4, Lsun/security/ssl/ProtocolVersion;->SSL20Hello:Lsun/security/ssl/ProtocolVersion;

    iget v4, v4, Lsun/security/ssl/ProtocolVersion;->v:I

    if-ne v3, v4, :cond_6

    :cond_5
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Client requested protocol "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lsun/security/ssl/ServerHandshaker;->clientRequestedVersion:Lsun/security/ssl/ProtocolVersion;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " not enabled or not supported"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x28

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v3}, Lsun/security/ssl/Handshaker;->fatalSE(BLjava/lang/String;)V

    :cond_6
    move-object/from16 v0, p0

    iget-object v3, v0, Lsun/security/ssl/Handshaker;->handshakeHash:Lsun/security/ssl/HandshakeHash;

    move-object/from16 v0, v28

    invoke-virtual {v3, v0}, Lsun/security/ssl/HandshakeHash;->protocolDetermined(Lsun/security/ssl/ProtocolVersion;)V

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Lsun/security/ssl/Handshaker;->setVersion(Lsun/security/ssl/ProtocolVersion;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lsun/security/ssl/Handshaker;->protocolVersion:Lsun/security/ssl/ProtocolVersion;

    move-object/from16 v0, v19

    iput-object v3, v0, Lsun/security/ssl/HandshakeMessage$ServerHello;->protocolVersion:Lsun/security/ssl/ProtocolVersion;

    move-object/from16 v0, p1

    iget-object v3, v0, Lsun/security/ssl/HandshakeMessage$ClientHello;->clnt_random:Lsun/security/ssl/RandomCookie;

    move-object/from16 v0, p0

    iput-object v3, v0, Lsun/security/ssl/Handshaker;->clnt_random:Lsun/security/ssl/RandomCookie;

    new-instance v3, Lsun/security/ssl/RandomCookie;

    move-object/from16 v0, p0

    iget-object v4, v0, Lsun/security/ssl/Handshaker;->sslContext:Lsun/security/ssl/SSLContextImpl;

    invoke-virtual {v4}, Lsun/security/ssl/SSLContextImpl;->getSecureRandom()Ljava/security/SecureRandom;

    move-result-object v4

    invoke-direct {v3, v4}, Lsun/security/ssl/RandomCookie;-><init>(Ljava/security/SecureRandom;)V

    move-object/from16 v0, p0

    iput-object v3, v0, Lsun/security/ssl/Handshaker;->svr_random:Lsun/security/ssl/RandomCookie;

    move-object/from16 v0, p0

    iget-object v3, v0, Lsun/security/ssl/Handshaker;->svr_random:Lsun/security/ssl/RandomCookie;

    move-object/from16 v0, v19

    iput-object v3, v0, Lsun/security/ssl/HandshakeMessage$ServerHello;->svr_random:Lsun/security/ssl/RandomCookie;

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-object v3, v0, Lsun/security/ssl/Handshaker;->session:Lsun/security/ssl/SSLSessionImpl;

    move-object/from16 v0, p1

    iget-object v3, v0, Lsun/security/ssl/HandshakeMessage$ClientHello;->sessionId:Lsun/security/ssl/SessionId;

    invoke-virtual {v3}, Lsun/security/ssl/SessionId;->length()I

    move-result v3

    if-eqz v3, :cond_f

    move-object/from16 v0, p0

    iget-object v3, v0, Lsun/security/ssl/Handshaker;->sslContext:Lsun/security/ssl/SSLContextImpl;

    invoke-virtual {v3}, Lsun/security/ssl/SSLContextImpl;->engineGetServerSessionContext()Ljavax/net/ssl/SSLSessionContext;

    move-result-object v3

    check-cast v3, Lsun/security/ssl/SSLSessionContextImpl;

    move-object/from16 v0, p1

    iget-object v4, v0, Lsun/security/ssl/HandshakeMessage$ClientHello;->sessionId:Lsun/security/ssl/SessionId;

    invoke-virtual {v4}, Lsun/security/ssl/SessionId;->getId()[B

    move-result-object v4

    invoke-virtual {v3, v4}, Lsun/security/ssl/SSLSessionContextImpl;->get([B)Lsun/security/ssl/SSLSessionImpl;

    move-result-object v25

    if-eqz v25, :cond_f

    invoke-virtual/range {v25 .. v25}, Lsun/security/ssl/SSLSessionImpl;->isRejoinable()Z

    move-result v3

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lsun/security/ssl/Handshaker;->resumingSession:Z

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lsun/security/ssl/Handshaker;->resumingSession:Z

    if-eqz v3, :cond_7

    invoke-virtual/range {v25 .. v25}, Lsun/security/ssl/SSLSessionImpl;->getProtocolVersion()Lsun/security/ssl/ProtocolVersion;

    move-result-object v23

    move-object/from16 v0, p0

    iget-object v3, v0, Lsun/security/ssl/Handshaker;->protocolVersion:Lsun/security/ssl/ProtocolVersion;

    move-object/from16 v0, v23

    if-eq v0, v3, :cond_7

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lsun/security/ssl/Handshaker;->resumingSession:Z

    :cond_7
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lsun/security/ssl/Handshaker;->resumingSession:Z

    if-eqz v3, :cond_8

    move-object/from16 v0, p0

    iget-byte v3, v0, Lsun/security/ssl/ServerHandshaker;->doClientAuth:B

    const/4 v4, 0x2

    if-ne v3, v4, :cond_8

    :try_start_0
    invoke-virtual/range {v25 .. v25}, Lsun/security/ssl/SSLSessionImpl;->getPeerPrincipal()Ljava/security/Principal;
    :try_end_0
    .catch Ljavax/net/ssl/SSLPeerUnverifiedException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_8
    :goto_3
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lsun/security/ssl/Handshaker;->resumingSession:Z

    if-eqz v3, :cond_b

    invoke-virtual/range {v25 .. v25}, Lsun/security/ssl/SSLSessionImpl;->getSuite()Lsun/security/ssl/CipherSuite;

    move-result-object v32

    move-object/from16 v0, v32

    iget-object v3, v0, Lsun/security/ssl/CipherSuite;->keyExchange:Lsun/security/ssl/CipherSuite$KeyExchange;

    sget-object v4, Lsun/security/ssl/CipherSuite$KeyExchange;->K_KRB5:Lsun/security/ssl/CipherSuite$KeyExchange;

    if-eq v3, v4, :cond_9

    move-object/from16 v0, v32

    iget-object v3, v0, Lsun/security/ssl/CipherSuite;->keyExchange:Lsun/security/ssl/CipherSuite$KeyExchange;

    sget-object v4, Lsun/security/ssl/CipherSuite$KeyExchange;->K_KRB5_EXPORT:Lsun/security/ssl/CipherSuite$KeyExchange;

    if-ne v3, v4, :cond_b

    :cond_9
    invoke-virtual/range {v25 .. v25}, Lsun/security/ssl/SSLSessionImpl;->getLocalPrincipal()Ljava/security/Principal;

    move-result-object v17

    const/16 v31, 0x0

    :try_start_1
    new-instance v3, Lsun/security/ssl/ServerHandshaker$1;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lsun/security/ssl/ServerHandshaker$1;-><init>(Lsun/security/ssl/ServerHandshaker;)V

    invoke-static {v3}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedExceptionAction;)Ljava/lang/Object;

    move-result-object v31

    check-cast v31, Ljavax/security/auth/Subject;
    :try_end_1
    .catch Ljava/security/PrivilegedActionException; {:try_start_1 .. :try_end_1} :catch_1

    :cond_a
    :goto_4
    if-eqz v31, :cond_1c

    const-class v3, Ljava/security/Principal;

    move-object/from16 v0, v31

    invoke-virtual {v0, v3}, Ljavax/security/auth/Subject;->getPrincipals(Ljava/lang/Class;)Ljava/util/Set;

    move-result-object v26

    move-object/from16 v0, v26

    move-object/from16 v1, v17

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1b

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lsun/security/ssl/Handshaker;->resumingSession:Z

    sget-object v3, Lsun/security/ssl/ServerHandshaker;->debug:Lsun/security/ssl/Debug;

    if-eqz v3, :cond_b

    const-string/jumbo v3, "session"

    invoke-static {v3}, Lsun/security/ssl/Debug;->isOn(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_b

    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string/jumbo v4, "Subject identity is not the same"

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_b
    :goto_5
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lsun/security/ssl/Handshaker;->resumingSession:Z

    if-eqz v3, :cond_d

    invoke-virtual/range {v25 .. v25}, Lsun/security/ssl/SSLSessionImpl;->getSuite()Lsun/security/ssl/CipherSuite;

    move-result-object v32

    move-object/from16 v0, p0

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Lsun/security/ssl/Handshaker;->isNegotiable(Lsun/security/ssl/CipherSuite;)Z

    move-result v3

    if-eqz v3, :cond_c

    invoke-virtual/range {p1 .. p1}, Lsun/security/ssl/HandshakeMessage$ClientHello;->getCipherSuites()Lsun/security/ssl/CipherSuiteList;

    move-result-object v3

    move-object/from16 v0, v32

    invoke-virtual {v3, v0}, Lsun/security/ssl/CipherSuiteList;->contains(Lsun/security/ssl/CipherSuite;)Z

    move-result v3

    if-nez v3, :cond_1d

    :cond_c
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lsun/security/ssl/Handshaker;->resumingSession:Z

    :cond_d
    :goto_6
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lsun/security/ssl/Handshaker;->resumingSession:Z

    if-eqz v3, :cond_f

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    iput-object v0, v1, Lsun/security/ssl/Handshaker;->session:Lsun/security/ssl/SSLSessionImpl;

    sget-object v3, Lsun/security/ssl/ServerHandshaker;->debug:Lsun/security/ssl/Debug;

    if-eqz v3, :cond_f

    const-string/jumbo v3, "handshake"

    invoke-static {v3}, Lsun/security/ssl/Debug;->isOn(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_e

    const-string/jumbo v3, "session"

    invoke-static {v3}, Lsun/security/ssl/Debug;->isOn(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_f

    :cond_e
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "%% Resuming "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lsun/security/ssl/Handshaker;->session:Lsun/security/ssl/SSLSessionImpl;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_f
    move-object/from16 v0, p0

    iget-object v3, v0, Lsun/security/ssl/Handshaker;->session:Lsun/security/ssl/SSLSessionImpl;

    if-nez v3, :cond_28

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lsun/security/ssl/Handshaker;->enableNewSession:Z

    if-nez v3, :cond_1e

    new-instance v3, Ljavax/net/ssl/SSLException;

    const-string/jumbo v4, "Client did not resume a session"

    invoke-direct {v3, v4}, Ljavax/net/ssl/SSLException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_10
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lsun/security/ssl/Handshaker;->secureRenegotiation:Z

    if-eqz v3, :cond_11

    const-string/jumbo v3, "The SCSV is present in a secure renegotiation"

    const/16 v4, 0x28

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v3}, Lsun/security/ssl/Handshaker;->fatalSE(BLjava/lang/String;)V

    goto/16 :goto_0

    :cond_11
    const-string/jumbo v3, "The SCSV is present in a insecure renegotiation"

    const/16 v4, 0x28

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v3}, Lsun/security/ssl/Handshaker;->fatalSE(BLjava/lang/String;)V

    goto/16 :goto_0

    :cond_12
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lsun/security/ssl/Handshaker;->secureRenegotiation:Z

    if-nez v3, :cond_13

    const-string/jumbo v3, "The renegotiation_info is present in a insecure renegotiation"

    const/16 v4, 0x28

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v3}, Lsun/security/ssl/Handshaker;->fatalSE(BLjava/lang/String;)V

    :cond_13
    move-object/from16 v0, p0

    iget-object v3, v0, Lsun/security/ssl/Handshaker;->clientVerifyData:[B

    invoke-virtual {v12}, Lsun/security/ssl/RenegotiationInfoExtension;->getRenegotiatedConnection()[B

    move-result-object v4

    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v3

    if-nez v3, :cond_3

    const-string/jumbo v3, "Incorrect verify data in ClientHello renegotiation_info message"

    const/16 v4, 0x28

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v3}, Lsun/security/ssl/Handshaker;->fatalSE(BLjava/lang/String;)V

    goto/16 :goto_1

    :cond_14
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lsun/security/ssl/Handshaker;->isInitialHandshake:Z

    if-nez v3, :cond_3

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lsun/security/ssl/Handshaker;->secureRenegotiation:Z

    if-eqz v3, :cond_3

    const-string/jumbo v3, "Inconsistent secure renegotiation indication"

    const/16 v4, 0x28

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v3}, Lsun/security/ssl/Handshaker;->fatalSE(BLjava/lang/String;)V

    goto/16 :goto_1

    :cond_15
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lsun/security/ssl/Handshaker;->isInitialHandshake:Z

    if-eqz v3, :cond_17

    sget-boolean v3, Lsun/security/ssl/ServerHandshaker;->allowLegacyHelloMessages:Z

    if-nez v3, :cond_16

    const-string/jumbo v3, "Failed to negotiate the use of secure renegotiation"

    const/16 v4, 0x28

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v3}, Lsun/security/ssl/Handshaker;->fatalSE(BLjava/lang/String;)V

    :cond_16
    sget-object v3, Lsun/security/ssl/ServerHandshaker;->debug:Lsun/security/ssl/Debug;

    if-eqz v3, :cond_4

    const-string/jumbo v3, "handshake"

    invoke-static {v3}, Lsun/security/ssl/Debug;->isOn(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string/jumbo v4, "Warning: No renegotiation indication in ClientHello, allow legacy ClientHello"

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto/16 :goto_2

    :cond_17
    sget-boolean v3, Lsun/security/ssl/ServerHandshaker;->allowUnsafeRenegotiation:Z

    if-nez v3, :cond_1a

    move-object/from16 v0, p0

    iget-object v3, v0, Lsun/security/ssl/Handshaker;->activeProtocolVersion:Lsun/security/ssl/ProtocolVersion;

    iget v3, v3, Lsun/security/ssl/ProtocolVersion;->v:I

    sget-object v4, Lsun/security/ssl/ProtocolVersion;->TLS10:Lsun/security/ssl/ProtocolVersion;

    iget v4, v4, Lsun/security/ssl/ProtocolVersion;->v:I

    if-lt v3, v4, :cond_19

    const/16 v3, 0x64

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lsun/security/ssl/Handshaker;->warningSE(B)V

    const/4 v3, 0x1

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lsun/security/ssl/Handshaker;->invalidated:Z

    move-object/from16 v0, p0

    iget-object v3, v0, Lsun/security/ssl/Handshaker;->input:Lsun/security/ssl/HandshakeInStream;

    invoke-virtual {v3}, Lsun/security/ssl/HandshakeInStream;->available()I

    move-result v3

    if-lez v3, :cond_18

    const-string/jumbo v3, "ClientHello followed by an unexpected  handshake message"

    const/16 v4, 0xa

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v3}, Lsun/security/ssl/Handshaker;->fatalSE(BLjava/lang/String;)V

    :cond_18
    return-void

    :cond_19
    const-string/jumbo v3, "Renegotiation is not allowed"

    const/16 v4, 0x28

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v3}, Lsun/security/ssl/Handshaker;->fatalSE(BLjava/lang/String;)V

    goto/16 :goto_2

    :cond_1a
    sget-object v3, Lsun/security/ssl/ServerHandshaker;->debug:Lsun/security/ssl/Debug;

    if-eqz v3, :cond_4

    const-string/jumbo v3, "handshake"

    invoke-static {v3}, Lsun/security/ssl/Debug;->isOn(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string/jumbo v4, "Warning: continue with insecure renegotiation"

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto/16 :goto_2

    :catch_0
    move-exception v15

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lsun/security/ssl/Handshaker;->resumingSession:Z

    goto/16 :goto_3

    :catch_1
    move-exception v14

    const/16 v31, 0x0

    sget-object v3, Lsun/security/ssl/ServerHandshaker;->debug:Lsun/security/ssl/Debug;

    if-eqz v3, :cond_a

    const-string/jumbo v3, "session"

    invoke-static {v3}, Lsun/security/ssl/Debug;->isOn(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_a

    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string/jumbo v4, "Attempt to obtain subject failed!"

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto/16 :goto_4

    :cond_1b
    sget-object v3, Lsun/security/ssl/ServerHandshaker;->debug:Lsun/security/ssl/Debug;

    if-eqz v3, :cond_b

    const-string/jumbo v3, "session"

    invoke-static {v3}, Lsun/security/ssl/Debug;->isOn(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_b

    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string/jumbo v4, "Subject identity is same"

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto/16 :goto_5

    :cond_1c
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lsun/security/ssl/Handshaker;->resumingSession:Z

    sget-object v3, Lsun/security/ssl/ServerHandshaker;->debug:Lsun/security/ssl/Debug;

    if-eqz v3, :cond_b

    const-string/jumbo v3, "session"

    invoke-static {v3}, Lsun/security/ssl/Debug;->isOn(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_b

    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string/jumbo v4, "Kerberos credentials are not present in the current Subject; check if  javax.security.auth.useSubjectAsCreds system property has been set to false"

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto/16 :goto_5

    :cond_1d
    move-object/from16 v0, p0

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Lsun/security/ssl/Handshaker;->setCipherSuite(Lsun/security/ssl/CipherSuite;)V

    goto/16 :goto_6

    :cond_1e
    move-object/from16 v0, p1

    iget-object v3, v0, Lsun/security/ssl/HandshakeMessage$ClientHello;->extensions:Lsun/security/ssl/HelloExtensions;

    sget-object v4, Lsun/security/ssl/ExtensionType;->EXT_ELLIPTIC_CURVES:Lsun/security/ssl/ExtensionType;

    invoke-virtual {v3, v4}, Lsun/security/ssl/HelloExtensions;->get(Lsun/security/ssl/ExtensionType;)Lsun/security/ssl/HelloExtension;

    move-result-object v3

    check-cast v3, Lsun/security/ssl/SupportedEllipticCurvesExtension;

    move-object/from16 v0, p0

    iput-object v3, v0, Lsun/security/ssl/ServerHandshaker;->supportedCurves:Lsun/security/ssl/SupportedEllipticCurvesExtension;

    move-object/from16 v0, p0

    iget-object v3, v0, Lsun/security/ssl/Handshaker;->protocolVersion:Lsun/security/ssl/ProtocolVersion;

    iget v3, v3, Lsun/security/ssl/ProtocolVersion;->v:I

    sget-object v4, Lsun/security/ssl/ProtocolVersion;->TLS12:Lsun/security/ssl/ProtocolVersion;

    iget v4, v4, Lsun/security/ssl/ProtocolVersion;->v:I

    if-lt v3, v4, :cond_22

    move-object/from16 v0, p1

    iget-object v3, v0, Lsun/security/ssl/HandshakeMessage$ClientHello;->extensions:Lsun/security/ssl/HelloExtensions;

    sget-object v4, Lsun/security/ssl/ExtensionType;->EXT_SIGNATURE_ALGORITHMS:Lsun/security/ssl/ExtensionType;

    invoke-virtual {v3, v4}, Lsun/security/ssl/HelloExtensions;->get(Lsun/security/ssl/ExtensionType;)Lsun/security/ssl/HelloExtension;

    move-result-object v30

    check-cast v30, Lsun/security/ssl/SignatureAlgorithmsExtension;

    if-eqz v30, :cond_22

    invoke-virtual/range {v30 .. v30}, Lsun/security/ssl/SignatureAlgorithmsExtension;->getSignAlgorithms()Ljava/util/Collection;

    move-result-object v24

    if-eqz v24, :cond_1f

    invoke-interface/range {v24 .. v24}, Ljava/util/Collection;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_20

    :cond_1f
    new-instance v3, Ljavax/net/ssl/SSLHandshakeException;

    const-string/jumbo v4, "No peer supported signature algorithms"

    invoke-direct {v3, v4}, Ljavax/net/ssl/SSLHandshakeException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_20
    invoke-static/range {v24 .. v24}, Lsun/security/ssl/SignatureAndHashAlgorithm;->getSupportedAlgorithms(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v33

    invoke-interface/range {v33 .. v33}, Ljava/util/Collection;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_21

    new-instance v3, Ljavax/net/ssl/SSLHandshakeException;

    const-string/jumbo v4, "No supported signature and hash algorithm in common"

    invoke-direct {v3, v4}, Ljavax/net/ssl/SSLHandshakeException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_21
    move-object/from16 v0, p0

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Lsun/security/ssl/Handshaker;->setPeerSupportedSignAlgs(Ljava/util/Collection;)V

    :cond_22
    new-instance v2, Lsun/security/ssl/SSLSessionImpl;

    move-object/from16 v0, p0

    iget-object v3, v0, Lsun/security/ssl/Handshaker;->protocolVersion:Lsun/security/ssl/ProtocolVersion;

    sget-object v4, Lsun/security/ssl/CipherSuite;->C_NULL:Lsun/security/ssl/CipherSuite;

    invoke-virtual/range {p0 .. p0}, Lsun/security/ssl/Handshaker;->getLocalSupportedSignAlgs()Ljava/util/Collection;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lsun/security/ssl/Handshaker;->sslContext:Lsun/security/ssl/SSLContextImpl;

    invoke-virtual {v6}, Lsun/security/ssl/SSLContextImpl;->getSecureRandom()Ljava/security/SecureRandom;

    move-result-object v6

    invoke-virtual/range {p0 .. p0}, Lsun/security/ssl/Handshaker;->getHostAddressSE()Ljava/lang/String;

    move-result-object v7

    invoke-virtual/range {p0 .. p0}, Lsun/security/ssl/Handshaker;->getPortSE()I

    move-result v8

    invoke-direct/range {v2 .. v8}, Lsun/security/ssl/SSLSessionImpl;-><init>(Lsun/security/ssl/ProtocolVersion;Lsun/security/ssl/CipherSuite;Ljava/util/Collection;Ljava/security/SecureRandom;Ljava/lang/String;I)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lsun/security/ssl/Handshaker;->session:Lsun/security/ssl/SSLSessionImpl;

    move-object/from16 v0, p0

    iget-object v3, v0, Lsun/security/ssl/Handshaker;->protocolVersion:Lsun/security/ssl/ProtocolVersion;

    iget v3, v3, Lsun/security/ssl/ProtocolVersion;->v:I

    sget-object v4, Lsun/security/ssl/ProtocolVersion;->TLS12:Lsun/security/ssl/ProtocolVersion;

    iget v4, v4, Lsun/security/ssl/ProtocolVersion;->v:I

    if-lt v3, v4, :cond_23

    move-object/from16 v0, p0

    iget-object v3, v0, Lsun/security/ssl/Handshaker;->peerSupportedSignAlgs:Ljava/util/Collection;

    if-eqz v3, :cond_23

    move-object/from16 v0, p0

    iget-object v3, v0, Lsun/security/ssl/Handshaker;->session:Lsun/security/ssl/SSLSessionImpl;

    move-object/from16 v0, p0

    iget-object v4, v0, Lsun/security/ssl/Handshaker;->peerSupportedSignAlgs:Ljava/util/Collection;

    invoke-virtual {v3, v4}, Lsun/security/ssl/SSLSessionImpl;->setPeerSupportedSignatureAlgorithms(Ljava/util/Collection;)V

    :cond_23
    move-object/from16 v0, p0

    iget-object v3, v0, Lsun/security/ssl/Handshaker;->session:Lsun/security/ssl/SSLSessionImpl;

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lsun/security/ssl/Handshaker;->setHandshakeSessionSE(Lsun/security/ssl/SSLSessionImpl;)V

    invoke-direct/range {p0 .. p1}, Lsun/security/ssl/ServerHandshaker;->chooseCipherSuite(Lsun/security/ssl/HandshakeMessage$ClientHello;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lsun/security/ssl/Handshaker;->session:Lsun/security/ssl/SSLSessionImpl;

    move-object/from16 v0, p0

    iget-object v4, v0, Lsun/security/ssl/Handshaker;->cipherSuite:Lsun/security/ssl/CipherSuite;

    invoke-virtual {v3, v4}, Lsun/security/ssl/SSLSessionImpl;->setSuite(Lsun/security/ssl/CipherSuite;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lsun/security/ssl/Handshaker;->session:Lsun/security/ssl/SSLSessionImpl;

    move-object/from16 v0, p0

    iget-object v4, v0, Lsun/security/ssl/ServerHandshaker;->privateKey:Ljava/security/PrivateKey;

    invoke-virtual {v3, v4}, Lsun/security/ssl/SSLSessionImpl;->setLocalPrivateKey(Ljava/security/PrivateKey;)V

    :goto_7
    move-object/from16 v0, p0

    iget-object v3, v0, Lsun/security/ssl/Handshaker;->protocolVersion:Lsun/security/ssl/ProtocolVersion;

    iget v3, v3, Lsun/security/ssl/ProtocolVersion;->v:I

    sget-object v4, Lsun/security/ssl/ProtocolVersion;->TLS12:Lsun/security/ssl/ProtocolVersion;

    iget v4, v4, Lsun/security/ssl/ProtocolVersion;->v:I

    if-lt v3, v4, :cond_25

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lsun/security/ssl/Handshaker;->resumingSession:Z

    if-eqz v3, :cond_24

    move-object/from16 v0, p0

    iget-object v3, v0, Lsun/security/ssl/Handshaker;->handshakeHash:Lsun/security/ssl/HandshakeHash;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lsun/security/ssl/HandshakeHash;->setCertificateVerifyAlg(Ljava/lang/String;)V

    :cond_24
    move-object/from16 v0, p0

    iget-object v3, v0, Lsun/security/ssl/Handshaker;->handshakeHash:Lsun/security/ssl/HandshakeHash;

    move-object/from16 v0, p0

    iget-object v4, v0, Lsun/security/ssl/Handshaker;->cipherSuite:Lsun/security/ssl/CipherSuite;

    iget-object v4, v4, Lsun/security/ssl/CipherSuite;->prfAlg:Lsun/security/ssl/CipherSuite$PRF;

    invoke-virtual {v4}, Lsun/security/ssl/CipherSuite$PRF;->getPRFHashAlg()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lsun/security/ssl/HandshakeHash;->setFinishedAlg(Ljava/lang/String;)V

    :cond_25
    move-object/from16 v0, p0

    iget-object v3, v0, Lsun/security/ssl/Handshaker;->cipherSuite:Lsun/security/ssl/CipherSuite;

    move-object/from16 v0, v19

    iput-object v3, v0, Lsun/security/ssl/HandshakeMessage$ServerHello;->cipherSuite:Lsun/security/ssl/CipherSuite;

    move-object/from16 v0, p0

    iget-object v3, v0, Lsun/security/ssl/Handshaker;->session:Lsun/security/ssl/SSLSessionImpl;

    invoke-virtual {v3}, Lsun/security/ssl/SSLSessionImpl;->getSessionId()Lsun/security/ssl/SessionId;

    move-result-object v3

    move-object/from16 v0, v19

    iput-object v3, v0, Lsun/security/ssl/HandshakeMessage$ServerHello;->sessionId:Lsun/security/ssl/SessionId;

    move-object/from16 v0, p0

    iget-object v3, v0, Lsun/security/ssl/Handshaker;->session:Lsun/security/ssl/SSLSessionImpl;

    invoke-virtual {v3}, Lsun/security/ssl/SSLSessionImpl;->getCompression()B

    move-result v3

    move-object/from16 v0, v19

    iput-byte v3, v0, Lsun/security/ssl/HandshakeMessage$ServerHello;->compression_method:B

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lsun/security/ssl/Handshaker;->secureRenegotiation:Z

    if-eqz v3, :cond_26

    new-instance v29, Lsun/security/ssl/RenegotiationInfoExtension;

    move-object/from16 v0, p0

    iget-object v3, v0, Lsun/security/ssl/Handshaker;->clientVerifyData:[B

    move-object/from16 v0, p0

    iget-object v4, v0, Lsun/security/ssl/Handshaker;->serverVerifyData:[B

    move-object/from16 v0, v29

    invoke-direct {v0, v3, v4}, Lsun/security/ssl/RenegotiationInfoExtension;-><init>([B[B)V

    move-object/from16 v0, v19

    iget-object v3, v0, Lsun/security/ssl/HandshakeMessage$ServerHello;->extensions:Lsun/security/ssl/HelloExtensions;

    move-object/from16 v0, v29

    invoke-virtual {v3, v0}, Lsun/security/ssl/HelloExtensions;->add(Lsun/security/ssl/HelloExtension;)V

    :cond_26
    sget-object v3, Lsun/security/ssl/ServerHandshaker;->debug:Lsun/security/ssl/Debug;

    if-eqz v3, :cond_27

    const-string/jumbo v3, "handshake"

    invoke-static {v3}, Lsun/security/ssl/Debug;->isOn(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_27

    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    move-object/from16 v0, v19

    invoke-virtual {v0, v3}, Lsun/security/ssl/HandshakeMessage$ServerHello;->print(Ljava/io/PrintStream;)V

    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Cipher suite:  "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lsun/security/ssl/Handshaker;->session:Lsun/security/ssl/SSLSessionImpl;

    invoke-virtual {v5}, Lsun/security/ssl/SSLSessionImpl;->getSuite()Lsun/security/ssl/CipherSuite;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_27
    move-object/from16 v0, p0

    iget-object v3, v0, Lsun/security/ssl/Handshaker;->output:Lsun/security/ssl/HandshakeOutStream;

    move-object/from16 v0, v19

    invoke-virtual {v0, v3}, Lsun/security/ssl/HandshakeMessage;->write(Lsun/security/ssl/HandshakeOutStream;)V

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lsun/security/ssl/Handshaker;->resumingSession:Z

    if-eqz v3, :cond_29

    move-object/from16 v0, p0

    iget-object v3, v0, Lsun/security/ssl/Handshaker;->session:Lsun/security/ssl/SSLSessionImpl;

    invoke-virtual {v3}, Lsun/security/ssl/SSLSessionImpl;->getMasterSecret()Ljavax/crypto/SecretKey;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lsun/security/ssl/Handshaker;->calculateConnectionKeys(Ljavax/crypto/SecretKey;)V

    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lsun/security/ssl/ServerHandshaker;->sendChangeCipherAndFinish(Z)V

    return-void

    :cond_28
    move-object/from16 v0, p0

    iget-object v3, v0, Lsun/security/ssl/Handshaker;->session:Lsun/security/ssl/SSLSessionImpl;

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lsun/security/ssl/Handshaker;->setHandshakeSessionSE(Lsun/security/ssl/SSLSessionImpl;)V

    goto/16 :goto_7

    :cond_29
    move-object/from16 v0, p0

    iget-object v3, v0, Lsun/security/ssl/Handshaker;->keyExchange:Lsun/security/ssl/CipherSuite$KeyExchange;

    sget-object v4, Lsun/security/ssl/CipherSuite$KeyExchange;->K_KRB5:Lsun/security/ssl/CipherSuite$KeyExchange;

    if-eq v3, v4, :cond_2a

    move-object/from16 v0, p0

    iget-object v3, v0, Lsun/security/ssl/Handshaker;->keyExchange:Lsun/security/ssl/CipherSuite$KeyExchange;

    sget-object v4, Lsun/security/ssl/CipherSuite$KeyExchange;->K_KRB5_EXPORT:Lsun/security/ssl/CipherSuite$KeyExchange;

    if-ne v3, v4, :cond_2b

    :cond_2a
    :goto_8
    invoke-static {}, Lsun/security/ssl/ServerHandshaker;->-getsun-security-ssl-CipherSuite$KeyExchangeSwitchesValues()[I

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lsun/security/ssl/Handshaker;->keyExchange:Lsun/security/ssl/CipherSuite$KeyExchange;

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_0

    :pswitch_0
    new-instance v3, Ljava/lang/RuntimeException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "internal error: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lsun/security/ssl/Handshaker;->keyExchange:Lsun/security/ssl/CipherSuite$KeyExchange;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_2b
    move-object/from16 v0, p0

    iget-object v3, v0, Lsun/security/ssl/Handshaker;->keyExchange:Lsun/security/ssl/CipherSuite$KeyExchange;

    sget-object v4, Lsun/security/ssl/CipherSuite$KeyExchange;->K_DH_ANON:Lsun/security/ssl/CipherSuite$KeyExchange;

    if-eq v3, v4, :cond_2e

    move-object/from16 v0, p0

    iget-object v3, v0, Lsun/security/ssl/Handshaker;->keyExchange:Lsun/security/ssl/CipherSuite$KeyExchange;

    sget-object v4, Lsun/security/ssl/CipherSuite$KeyExchange;->K_ECDH_ANON:Lsun/security/ssl/CipherSuite$KeyExchange;

    if-eq v3, v4, :cond_2e

    move-object/from16 v0, p0

    iget-object v3, v0, Lsun/security/ssl/ServerHandshaker;->certs:[Ljava/security/cert/X509Certificate;

    if-nez v3, :cond_2c

    new-instance v3, Ljava/lang/RuntimeException;

    const-string/jumbo v4, "no certificates"

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_2c
    new-instance v20, Lsun/security/ssl/HandshakeMessage$CertificateMsg;

    move-object/from16 v0, p0

    iget-object v3, v0, Lsun/security/ssl/ServerHandshaker;->certs:[Ljava/security/cert/X509Certificate;

    move-object/from16 v0, v20

    invoke-direct {v0, v3}, Lsun/security/ssl/HandshakeMessage$CertificateMsg;-><init>([Ljava/security/cert/X509Certificate;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lsun/security/ssl/Handshaker;->session:Lsun/security/ssl/SSLSessionImpl;

    move-object/from16 v0, p0

    iget-object v4, v0, Lsun/security/ssl/ServerHandshaker;->certs:[Ljava/security/cert/X509Certificate;

    invoke-virtual {v3, v4}, Lsun/security/ssl/SSLSessionImpl;->setLocalCertificates([Ljava/security/cert/X509Certificate;)V

    sget-object v3, Lsun/security/ssl/ServerHandshaker;->debug:Lsun/security/ssl/Debug;

    if-eqz v3, :cond_2d

    const-string/jumbo v3, "handshake"

    invoke-static {v3}, Lsun/security/ssl/Debug;->isOn(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2d

    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    move-object/from16 v0, v20

    invoke-virtual {v0, v3}, Lsun/security/ssl/HandshakeMessage$CertificateMsg;->print(Ljava/io/PrintStream;)V

    :cond_2d
    move-object/from16 v0, p0

    iget-object v3, v0, Lsun/security/ssl/Handshaker;->output:Lsun/security/ssl/HandshakeOutStream;

    move-object/from16 v0, v20

    invoke-virtual {v0, v3}, Lsun/security/ssl/HandshakeMessage;->write(Lsun/security/ssl/HandshakeOutStream;)V

    goto/16 :goto_8

    :cond_2e
    move-object/from16 v0, p0

    iget-object v3, v0, Lsun/security/ssl/ServerHandshaker;->certs:[Ljava/security/cert/X509Certificate;

    if-eqz v3, :cond_2a

    new-instance v3, Ljava/lang/RuntimeException;

    const-string/jumbo v4, "anonymous keyexchange with certs"

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3

    :pswitch_1
    const/4 v2, 0x0

    :goto_9
    if-eqz v2, :cond_30

    sget-object v3, Lsun/security/ssl/ServerHandshaker;->debug:Lsun/security/ssl/Debug;

    if-eqz v3, :cond_2f

    const-string/jumbo v3, "handshake"

    invoke-static {v3}, Lsun/security/ssl/Debug;->isOn(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2f

    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v2, v3}, Lsun/security/ssl/HandshakeMessage;->print(Ljava/io/PrintStream;)V

    :cond_2f
    move-object/from16 v0, p0

    iget-object v3, v0, Lsun/security/ssl/Handshaker;->output:Lsun/security/ssl/HandshakeOutStream;

    invoke-virtual {v2, v3}, Lsun/security/ssl/HandshakeMessage;->write(Lsun/security/ssl/HandshakeOutStream;)V

    :cond_30
    move-object/from16 v0, p0

    iget-byte v3, v0, Lsun/security/ssl/ServerHandshaker;->doClientAuth:B

    if-eqz v3, :cond_38

    move-object/from16 v0, p0

    iget-object v3, v0, Lsun/security/ssl/Handshaker;->keyExchange:Lsun/security/ssl/CipherSuite$KeyExchange;

    sget-object v4, Lsun/security/ssl/CipherSuite$KeyExchange;->K_DH_ANON:Lsun/security/ssl/CipherSuite$KeyExchange;

    if-eq v3, v4, :cond_38

    move-object/from16 v0, p0

    iget-object v3, v0, Lsun/security/ssl/Handshaker;->keyExchange:Lsun/security/ssl/CipherSuite$KeyExchange;

    sget-object v4, Lsun/security/ssl/CipherSuite$KeyExchange;->K_ECDH_ANON:Lsun/security/ssl/CipherSuite$KeyExchange;

    if-eq v3, v4, :cond_38

    move-object/from16 v0, p0

    iget-object v3, v0, Lsun/security/ssl/Handshaker;->keyExchange:Lsun/security/ssl/CipherSuite$KeyExchange;

    sget-object v4, Lsun/security/ssl/CipherSuite$KeyExchange;->K_KRB5:Lsun/security/ssl/CipherSuite$KeyExchange;

    if-eq v3, v4, :cond_38

    move-object/from16 v0, p0

    iget-object v3, v0, Lsun/security/ssl/Handshaker;->keyExchange:Lsun/security/ssl/CipherSuite$KeyExchange;

    sget-object v4, Lsun/security/ssl/CipherSuite$KeyExchange;->K_KRB5_EXPORT:Lsun/security/ssl/CipherSuite$KeyExchange;

    if-eq v3, v4, :cond_38

    const/16 v18, 0x0

    move-object/from16 v0, p0

    iget-object v3, v0, Lsun/security/ssl/Handshaker;->protocolVersion:Lsun/security/ssl/ProtocolVersion;

    iget v3, v3, Lsun/security/ssl/ProtocolVersion;->v:I

    sget-object v4, Lsun/security/ssl/ProtocolVersion;->TLS12:Lsun/security/ssl/ProtocolVersion;

    iget v4, v4, Lsun/security/ssl/ProtocolVersion;->v:I

    if-lt v3, v4, :cond_34

    invoke-virtual/range {p0 .. p0}, Lsun/security/ssl/Handshaker;->getLocalSupportedSignAlgs()Ljava/util/Collection;

    move-result-object v18

    invoke-interface/range {v18 .. v18}, Ljava/util/Collection;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_32

    new-instance v3, Ljavax/net/ssl/SSLHandshakeException;

    const-string/jumbo v4, "No supported signature algorithm"

    invoke-direct {v3, v4}, Ljavax/net/ssl/SSLHandshakeException;-><init>(Ljava/lang/String;)V

    throw v3

    :pswitch_2
    move-object/from16 v0, p0

    iget-object v3, v0, Lsun/security/ssl/ServerHandshaker;->certs:[Ljava/security/cert/X509Certificate;

    const/4 v4, 0x0

    aget-object v3, v3, v4

    invoke-virtual {v3}, Ljava/security/cert/Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v3

    invoke-static {v3}, Lsun/security/ssl/JsseJce;->getRSAKeyLength(Ljava/security/PublicKey;)I

    move-result v3

    const/16 v4, 0x200

    if-le v3, v4, :cond_31

    :try_start_2
    new-instance v2, Lsun/security/ssl/HandshakeMessage$RSA_ServerKeyExchange;

    move-object/from16 v0, p0

    iget-object v3, v0, Lsun/security/ssl/ServerHandshaker;->tempPublicKey:Ljava/security/PublicKey;

    move-object/from16 v0, p0

    iget-object v4, v0, Lsun/security/ssl/ServerHandshaker;->privateKey:Ljava/security/PrivateKey;

    move-object/from16 v0, p0

    iget-object v5, v0, Lsun/security/ssl/Handshaker;->clnt_random:Lsun/security/ssl/RandomCookie;

    move-object/from16 v0, p0

    iget-object v6, v0, Lsun/security/ssl/Handshaker;->svr_random:Lsun/security/ssl/RandomCookie;

    move-object/from16 v0, p0

    iget-object v7, v0, Lsun/security/ssl/Handshaker;->sslContext:Lsun/security/ssl/SSLContextImpl;

    invoke-virtual {v7}, Lsun/security/ssl/SSLContextImpl;->getSecureRandom()Ljava/security/SecureRandom;

    move-result-object v7

    invoke-direct/range {v2 .. v7}, Lsun/security/ssl/HandshakeMessage$RSA_ServerKeyExchange;-><init>(Ljava/security/PublicKey;Ljava/security/PrivateKey;Lsun/security/ssl/RandomCookie;Lsun/security/ssl/RandomCookie;Ljava/security/SecureRandom;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lsun/security/ssl/ServerHandshaker;->tempPrivateKey:Ljava/security/PrivateKey;

    move-object/from16 v0, p0

    iput-object v3, v0, Lsun/security/ssl/ServerHandshaker;->privateKey:Ljava/security/PrivateKey;
    :try_end_2
    .catch Ljava/security/GeneralSecurityException; {:try_start_2 .. :try_end_2} :catch_2

    goto/16 :goto_9

    :catch_2
    move-exception v13

    const-string/jumbo v3, "Error generating RSA server key exchange"

    invoke-static {v3, v13}, Lsun/security/ssl/ServerHandshaker;->throwSSLException(Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v2, 0x0

    goto/16 :goto_9

    :cond_31
    const/4 v2, 0x0

    goto/16 :goto_9

    :pswitch_3
    :try_start_3
    new-instance v2, Lsun/security/ssl/HandshakeMessage$DH_ServerKeyExchange;

    move-object/from16 v0, p0

    iget-object v3, v0, Lsun/security/ssl/ServerHandshaker;->dh:Lsun/security/ssl/DHCrypt;

    move-object/from16 v0, p0

    iget-object v4, v0, Lsun/security/ssl/ServerHandshaker;->privateKey:Ljava/security/PrivateKey;

    move-object/from16 v0, p0

    iget-object v5, v0, Lsun/security/ssl/Handshaker;->clnt_random:Lsun/security/ssl/RandomCookie;

    iget-object v5, v5, Lsun/security/ssl/RandomCookie;->random_bytes:[B

    move-object/from16 v0, p0

    iget-object v6, v0, Lsun/security/ssl/Handshaker;->svr_random:Lsun/security/ssl/RandomCookie;

    iget-object v6, v6, Lsun/security/ssl/RandomCookie;->random_bytes:[B

    move-object/from16 v0, p0

    iget-object v7, v0, Lsun/security/ssl/Handshaker;->sslContext:Lsun/security/ssl/SSLContextImpl;

    invoke-virtual {v7}, Lsun/security/ssl/SSLContextImpl;->getSecureRandom()Ljava/security/SecureRandom;

    move-result-object v7

    move-object/from16 v0, p0

    iget-object v8, v0, Lsun/security/ssl/ServerHandshaker;->preferableSignatureAlgorithm:Lsun/security/ssl/SignatureAndHashAlgorithm;

    move-object/from16 v0, p0

    iget-object v9, v0, Lsun/security/ssl/Handshaker;->protocolVersion:Lsun/security/ssl/ProtocolVersion;

    invoke-direct/range {v2 .. v9}, Lsun/security/ssl/HandshakeMessage$DH_ServerKeyExchange;-><init>(Lsun/security/ssl/DHCrypt;Ljava/security/PrivateKey;[B[BLjava/security/SecureRandom;Lsun/security/ssl/SignatureAndHashAlgorithm;Lsun/security/ssl/ProtocolVersion;)V
    :try_end_3
    .catch Ljava/security/GeneralSecurityException; {:try_start_3 .. :try_end_3} :catch_3

    goto/16 :goto_9

    :catch_3
    move-exception v13

    const-string/jumbo v3, "Error generating DH server key exchange"

    invoke-static {v3, v13}, Lsun/security/ssl/ServerHandshaker;->throwSSLException(Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v2, 0x0

    goto/16 :goto_9

    :pswitch_4
    new-instance v2, Lsun/security/ssl/HandshakeMessage$DH_ServerKeyExchange;

    move-object/from16 v0, p0

    iget-object v3, v0, Lsun/security/ssl/ServerHandshaker;->dh:Lsun/security/ssl/DHCrypt;

    move-object/from16 v0, p0

    iget-object v4, v0, Lsun/security/ssl/Handshaker;->protocolVersion:Lsun/security/ssl/ProtocolVersion;

    invoke-direct {v2, v3, v4}, Lsun/security/ssl/HandshakeMessage$DH_ServerKeyExchange;-><init>(Lsun/security/ssl/DHCrypt;Lsun/security/ssl/ProtocolVersion;)V

    goto/16 :goto_9

    :pswitch_5
    :try_start_4
    new-instance v2, Lsun/security/ssl/HandshakeMessage$ECDH_ServerKeyExchange;

    move-object/from16 v0, p0

    iget-object v3, v0, Lsun/security/ssl/ServerHandshaker;->ecdh:Lsun/security/ssl/ECDHCrypt;

    move-object/from16 v0, p0

    iget-object v4, v0, Lsun/security/ssl/ServerHandshaker;->privateKey:Ljava/security/PrivateKey;

    move-object/from16 v0, p0

    iget-object v5, v0, Lsun/security/ssl/Handshaker;->clnt_random:Lsun/security/ssl/RandomCookie;

    iget-object v5, v5, Lsun/security/ssl/RandomCookie;->random_bytes:[B

    move-object/from16 v0, p0

    iget-object v6, v0, Lsun/security/ssl/Handshaker;->svr_random:Lsun/security/ssl/RandomCookie;

    iget-object v6, v6, Lsun/security/ssl/RandomCookie;->random_bytes:[B

    move-object/from16 v0, p0

    iget-object v7, v0, Lsun/security/ssl/Handshaker;->sslContext:Lsun/security/ssl/SSLContextImpl;

    invoke-virtual {v7}, Lsun/security/ssl/SSLContextImpl;->getSecureRandom()Ljava/security/SecureRandom;

    move-result-object v7

    move-object/from16 v0, p0

    iget-object v8, v0, Lsun/security/ssl/ServerHandshaker;->preferableSignatureAlgorithm:Lsun/security/ssl/SignatureAndHashAlgorithm;

    move-object/from16 v0, p0

    iget-object v9, v0, Lsun/security/ssl/Handshaker;->protocolVersion:Lsun/security/ssl/ProtocolVersion;

    invoke-direct/range {v2 .. v9}, Lsun/security/ssl/HandshakeMessage$ECDH_ServerKeyExchange;-><init>(Lsun/security/ssl/ECDHCrypt;Ljava/security/PrivateKey;[B[BLjava/security/SecureRandom;Lsun/security/ssl/SignatureAndHashAlgorithm;Lsun/security/ssl/ProtocolVersion;)V
    :try_end_4
    .catch Ljava/security/GeneralSecurityException; {:try_start_4 .. :try_end_4} :catch_4

    goto/16 :goto_9

    :catch_4
    move-exception v13

    const-string/jumbo v3, "Error generating ECDH server key exchange"

    invoke-static {v3, v13}, Lsun/security/ssl/ServerHandshaker;->throwSSLException(Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v2, 0x0

    goto/16 :goto_9

    :pswitch_6
    const/4 v2, 0x0

    goto/16 :goto_9

    :cond_32
    invoke-static/range {v18 .. v18}, Lsun/security/ssl/SignatureAndHashAlgorithm;->getHashAlgorithmNames(Ljava/util/Collection;)Ljava/util/Set;

    move-result-object v16

    invoke-interface/range {v16 .. v16}, Ljava/util/Set;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_33

    new-instance v3, Ljavax/net/ssl/SSLHandshakeException;

    const-string/jumbo v4, "No supported signature algorithm"

    invoke-direct {v3, v4}, Ljavax/net/ssl/SSLHandshakeException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_33
    move-object/from16 v0, p0

    iget-object v3, v0, Lsun/security/ssl/Handshaker;->handshakeHash:Lsun/security/ssl/HandshakeHash;

    move-object/from16 v0, v16

    invoke-virtual {v3, v0}, Lsun/security/ssl/HandshakeHash;->restrictCertificateVerifyAlgs(Ljava/util/Set;)V

    :cond_34
    move-object/from16 v0, p0

    iget-object v3, v0, Lsun/security/ssl/Handshaker;->sslContext:Lsun/security/ssl/SSLContextImpl;

    invoke-virtual {v3}, Lsun/security/ssl/SSLContextImpl;->getX509TrustManager()Ljavax/net/ssl/X509TrustManager;

    move-result-object v3

    invoke-interface {v3}, Ljavax/net/ssl/X509TrustManager;->getAcceptedIssuers()[Ljava/security/cert/X509Certificate;

    move-result-object v10

    new-instance v21, Lsun/security/ssl/HandshakeMessage$CertificateRequest;

    move-object/from16 v0, p0

    iget-object v3, v0, Lsun/security/ssl/Handshaker;->keyExchange:Lsun/security/ssl/CipherSuite$KeyExchange;

    move-object/from16 v0, p0

    iget-object v4, v0, Lsun/security/ssl/Handshaker;->protocolVersion:Lsun/security/ssl/ProtocolVersion;

    move-object/from16 v0, v21

    move-object/from16 v1, v18

    invoke-direct {v0, v10, v3, v1, v4}, Lsun/security/ssl/HandshakeMessage$CertificateRequest;-><init>([Ljava/security/cert/X509Certificate;Lsun/security/ssl/CipherSuite$KeyExchange;Ljava/util/Collection;Lsun/security/ssl/ProtocolVersion;)V

    sget-object v3, Lsun/security/ssl/ServerHandshaker;->debug:Lsun/security/ssl/Debug;

    if-eqz v3, :cond_35

    const-string/jumbo v3, "handshake"

    invoke-static {v3}, Lsun/security/ssl/Debug;->isOn(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_35

    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    move-object/from16 v0, v21

    invoke-virtual {v0, v3}, Lsun/security/ssl/HandshakeMessage$CertificateRequest;->print(Ljava/io/PrintStream;)V

    :cond_35
    move-object/from16 v0, p0

    iget-object v3, v0, Lsun/security/ssl/Handshaker;->output:Lsun/security/ssl/HandshakeOutStream;

    move-object/from16 v0, v21

    invoke-virtual {v0, v3}, Lsun/security/ssl/HandshakeMessage;->write(Lsun/security/ssl/HandshakeOutStream;)V

    :cond_36
    :goto_a
    new-instance v22, Lsun/security/ssl/HandshakeMessage$ServerHelloDone;

    invoke-direct/range {v22 .. v22}, Lsun/security/ssl/HandshakeMessage$ServerHelloDone;-><init>()V

    sget-object v3, Lsun/security/ssl/ServerHandshaker;->debug:Lsun/security/ssl/Debug;

    if-eqz v3, :cond_37

    const-string/jumbo v3, "handshake"

    invoke-static {v3}, Lsun/security/ssl/Debug;->isOn(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_37

    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    move-object/from16 v0, v22

    invoke-virtual {v0, v3}, Lsun/security/ssl/HandshakeMessage$ServerHelloDone;->print(Ljava/io/PrintStream;)V

    :cond_37
    move-object/from16 v0, p0

    iget-object v3, v0, Lsun/security/ssl/Handshaker;->output:Lsun/security/ssl/HandshakeOutStream;

    move-object/from16 v0, v22

    invoke-virtual {v0, v3}, Lsun/security/ssl/HandshakeMessage;->write(Lsun/security/ssl/HandshakeOutStream;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lsun/security/ssl/Handshaker;->output:Lsun/security/ssl/HandshakeOutStream;

    invoke-virtual {v3}, Lsun/security/ssl/HandshakeOutStream;->flush()V

    return-void

    :cond_38
    move-object/from16 v0, p0

    iget-object v3, v0, Lsun/security/ssl/Handshaker;->protocolVersion:Lsun/security/ssl/ProtocolVersion;

    iget v3, v3, Lsun/security/ssl/ProtocolVersion;->v:I

    sget-object v4, Lsun/security/ssl/ProtocolVersion;->TLS12:Lsun/security/ssl/ProtocolVersion;

    iget v4, v4, Lsun/security/ssl/ProtocolVersion;->v:I

    if-lt v3, v4, :cond_36

    move-object/from16 v0, p0

    iget-object v3, v0, Lsun/security/ssl/Handshaker;->handshakeHash:Lsun/security/ssl/HandshakeHash;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lsun/security/ssl/HandshakeHash;->setCertificateVerifyAlg(Ljava/lang/String;)V

    goto :goto_a

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_3
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_6
        :pswitch_6
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private clientKeyExchange(Lsun/security/ssl/DHClientKeyExchange;)Ljavax/crypto/SecretKey;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lsun/security/ssl/ServerHandshaker;->debug:Lsun/security/ssl/Debug;

    if-eqz v0, :cond_0

    const-string/jumbo v0, "handshake"

    invoke-static {v0}, Lsun/security/ssl/Debug;->isOn(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {p1, v0}, Lsun/security/ssl/DHClientKeyExchange;->print(Ljava/io/PrintStream;)V

    :cond_0
    iget-object v0, p0, Lsun/security/ssl/ServerHandshaker;->dh:Lsun/security/ssl/DHCrypt;

    invoke-virtual {p1}, Lsun/security/ssl/DHClientKeyExchange;->getClientPublicKey()Ljava/math/BigInteger;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lsun/security/ssl/DHCrypt;->getAgreedSecret(Ljava/math/BigInteger;Z)Ljavax/crypto/SecretKey;

    move-result-object v0

    return-object v0
.end method

.method private clientKeyExchange(Lsun/security/ssl/ECDHClientKeyExchange;)Ljavax/crypto/SecretKey;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lsun/security/ssl/ServerHandshaker;->debug:Lsun/security/ssl/Debug;

    if-eqz v0, :cond_0

    const-string/jumbo v0, "handshake"

    invoke-static {v0}, Lsun/security/ssl/Debug;->isOn(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {p1, v0}, Lsun/security/ssl/ECDHClientKeyExchange;->print(Ljava/io/PrintStream;)V

    :cond_0
    iget-object v0, p0, Lsun/security/ssl/ServerHandshaker;->ecdh:Lsun/security/ssl/ECDHCrypt;

    invoke-virtual {p1}, Lsun/security/ssl/ECDHClientKeyExchange;->getEncodedPoint()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Lsun/security/ssl/ECDHCrypt;->getAgreedSecret([B)Ljavax/crypto/SecretKey;

    move-result-object v0

    return-object v0
.end method

.method private clientKeyExchange(Lsun/security/ssl/KerberosClientKeyExchange;)Ljavax/crypto/SecretKey;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v1, Lsun/security/ssl/ServerHandshaker;->debug:Lsun/security/ssl/Debug;

    if-eqz v1, :cond_0

    const-string/jumbo v1, "handshake"

    invoke-static {v1}, Lsun/security/ssl/Debug;->isOn(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {p1, v1}, Lsun/security/ssl/KerberosClientKeyExchange;->print(Ljava/io/PrintStream;)V

    :cond_0
    iget-object v1, p0, Lsun/security/ssl/Handshaker;->session:Lsun/security/ssl/SSLSessionImpl;

    invoke-virtual {p1}, Lsun/security/ssl/KerberosClientKeyExchange;->getPeerPrincipal()Ljava/security/Principal;

    move-result-object v2

    invoke-virtual {v1, v2}, Lsun/security/ssl/SSLSessionImpl;->setPeerPrincipal(Ljava/security/Principal;)V

    iget-object v1, p0, Lsun/security/ssl/Handshaker;->session:Lsun/security/ssl/SSLSessionImpl;

    invoke-virtual {p1}, Lsun/security/ssl/KerberosClientKeyExchange;->getLocalPrincipal()Ljava/security/Principal;

    move-result-object v2

    invoke-virtual {v1, v2}, Lsun/security/ssl/SSLSessionImpl;->setLocalPrincipal(Ljava/security/Principal;)V

    invoke-virtual {p1}, Lsun/security/ssl/KerberosClientKeyExchange;->getUnencryptedPreMasterSecret()[B

    move-result-object v0

    new-instance v1, Ljavax/crypto/spec/SecretKeySpec;

    const-string/jumbo v2, "TlsPremasterSecret"

    invoke-direct {v1, v0, v2}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    return-object v1
.end method

.method private clientKeyExchange(Lsun/security/ssl/RSAClientKeyExchange;)Ljavax/crypto/SecretKey;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lsun/security/ssl/ServerHandshaker;->debug:Lsun/security/ssl/Debug;

    if-eqz v0, :cond_0

    const-string/jumbo v0, "handshake"

    invoke-static {v0}, Lsun/security/ssl/Debug;->isOn(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {p1, v0}, Lsun/security/ssl/RSAClientKeyExchange;->print(Ljava/io/PrintStream;)V

    :cond_0
    iget-object v0, p1, Lsun/security/ssl/RSAClientKeyExchange;->preMaster:Ljavax/crypto/SecretKey;

    return-object v0
.end method

.method private sendChangeCipherAndFinish(Z)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v1, p0, Lsun/security/ssl/Handshaker;->output:Lsun/security/ssl/HandshakeOutStream;

    invoke-virtual {v1}, Lsun/security/ssl/HandshakeOutStream;->flush()V

    new-instance v0, Lsun/security/ssl/HandshakeMessage$Finished;

    iget-object v1, p0, Lsun/security/ssl/Handshaker;->protocolVersion:Lsun/security/ssl/ProtocolVersion;

    iget-object v2, p0, Lsun/security/ssl/Handshaker;->handshakeHash:Lsun/security/ssl/HandshakeHash;

    iget-object v3, p0, Lsun/security/ssl/Handshaker;->session:Lsun/security/ssl/SSLSessionImpl;

    invoke-virtual {v3}, Lsun/security/ssl/SSLSessionImpl;->getMasterSecret()Ljavax/crypto/SecretKey;

    move-result-object v4

    iget-object v5, p0, Lsun/security/ssl/Handshaker;->cipherSuite:Lsun/security/ssl/CipherSuite;

    const/4 v3, 0x2

    invoke-direct/range {v0 .. v5}, Lsun/security/ssl/HandshakeMessage$Finished;-><init>(Lsun/security/ssl/ProtocolVersion;Lsun/security/ssl/HandshakeHash;ILjavax/crypto/SecretKey;Lsun/security/ssl/CipherSuite;)V

    invoke-virtual {p0, v0, p1}, Lsun/security/ssl/Handshaker;->sendChangeCipherSpec(Lsun/security/ssl/HandshakeMessage$Finished;Z)V

    iget-boolean v1, p0, Lsun/security/ssl/Handshaker;->secureRenegotiation:Z

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lsun/security/ssl/HandshakeMessage$Finished;->getVerifyData()[B

    move-result-object v1

    iput-object v1, p0, Lsun/security/ssl/Handshaker;->serverVerifyData:[B

    :cond_0
    if-eqz p1, :cond_1

    const/16 v1, 0x14

    iput v1, p0, Lsun/security/ssl/Handshaker;->state:I

    :cond_1
    return-void
.end method

.method private setupEphemeralDHKeys(Z)V
    .locals 3

    new-instance v1, Lsun/security/ssl/DHCrypt;

    if-eqz p1, :cond_0

    const/16 v0, 0x200

    :goto_0
    iget-object v2, p0, Lsun/security/ssl/Handshaker;->sslContext:Lsun/security/ssl/SSLContextImpl;

    invoke-virtual {v2}, Lsun/security/ssl/SSLContextImpl;->getSecureRandom()Ljava/security/SecureRandom;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lsun/security/ssl/DHCrypt;-><init>(ILjava/security/SecureRandom;)V

    iput-object v1, p0, Lsun/security/ssl/ServerHandshaker;->dh:Lsun/security/ssl/DHCrypt;

    return-void

    :cond_0
    const/16 v0, 0x300

    goto :goto_0
.end method

.method private setupEphemeralECDHKeys()Z
    .locals 8

    const/4 v4, 0x0

    const/4 v1, -0x1

    iget-object v3, p0, Lsun/security/ssl/ServerHandshaker;->supportedCurves:Lsun/security/ssl/SupportedEllipticCurvesExtension;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lsun/security/ssl/ServerHandshaker;->supportedCurves:Lsun/security/ssl/SupportedEllipticCurvesExtension;

    invoke-virtual {v3}, Lsun/security/ssl/SupportedEllipticCurvesExtension;->curveIds()[I

    move-result-object v5

    array-length v6, v5

    move v3, v4

    :goto_0
    if-ge v3, v6, :cond_0

    aget v0, v5, v3

    invoke-static {v0}, Lsun/security/ssl/SupportedEllipticCurvesExtension;->isSupported(I)Z

    move-result v7

    if-eqz v7, :cond_1

    move v1, v0

    :cond_0
    if-gez v1, :cond_3

    return v4

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    sget-object v3, Lsun/security/ssl/SupportedEllipticCurvesExtension;->DEFAULT:Lsun/security/ssl/SupportedEllipticCurvesExtension;

    invoke-virtual {v3}, Lsun/security/ssl/SupportedEllipticCurvesExtension;->curveIds()[I

    move-result-object v3

    aget v1, v3, v4

    :cond_3
    invoke-static {v1}, Lsun/security/ssl/SupportedEllipticCurvesExtension;->getCurveOid(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lsun/security/ssl/ECDHCrypt;

    iget-object v4, p0, Lsun/security/ssl/Handshaker;->sslContext:Lsun/security/ssl/SSLContextImpl;

    invoke-virtual {v4}, Lsun/security/ssl/SSLContextImpl;->getSecureRandom()Ljava/security/SecureRandom;

    move-result-object v4

    invoke-direct {v3, v2, v4}, Lsun/security/ssl/ECDHCrypt;-><init>(Ljava/lang/String;Ljava/security/SecureRandom;)V

    iput-object v3, p0, Lsun/security/ssl/ServerHandshaker;->ecdh:Lsun/security/ssl/ECDHCrypt;

    const/4 v3, 0x1

    return v3
.end method

.method private setupEphemeralRSAKeys(Z)Z
    .locals 3

    iget-object v1, p0, Lsun/security/ssl/Handshaker;->sslContext:Lsun/security/ssl/SSLContextImpl;

    invoke-virtual {v1}, Lsun/security/ssl/SSLContextImpl;->getEphemeralKeyManager()Lsun/security/ssl/EphemeralKeyManager;

    move-result-object v1

    iget-object v2, p0, Lsun/security/ssl/Handshaker;->sslContext:Lsun/security/ssl/SSLContextImpl;

    invoke-virtual {v2}, Lsun/security/ssl/SSLContextImpl;->getSecureRandom()Ljava/security/SecureRandom;

    move-result-object v2

    invoke-virtual {v1, p1, v2}, Lsun/security/ssl/EphemeralKeyManager;->getRSAKeyPair(ZLjava/security/SecureRandom;)Ljava/security/KeyPair;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v1, 0x0

    return v1

    :cond_0
    invoke-virtual {v0}, Ljava/security/KeyPair;->getPublic()Ljava/security/PublicKey;

    move-result-object v1

    iput-object v1, p0, Lsun/security/ssl/ServerHandshaker;->tempPublicKey:Ljava/security/PublicKey;

    invoke-virtual {v0}, Ljava/security/KeyPair;->getPrivate()Ljava/security/PrivateKey;

    move-result-object v1

    iput-object v1, p0, Lsun/security/ssl/ServerHandshaker;->tempPrivateKey:Ljava/security/PrivateKey;

    const/4 v1, 0x1

    return v1
.end method

.method private setupKerberosKeys()Z
    .locals 14

    const/4 v7, 0x1

    const/4 v8, 0x0

    iget-object v6, p0, Lsun/security/ssl/ServerHandshaker;->kerberosKeys:[Ljavax/crypto/SecretKey;

    if-eqz v6, :cond_0

    return v7

    :cond_0
    :try_start_0
    invoke-virtual {p0}, Lsun/security/ssl/Handshaker;->getAccSE()Ljava/security/AccessControlContext;

    move-result-object v0

    new-instance v6, Lsun/security/ssl/ServerHandshaker$2;

    invoke-direct {v6, p0, v0}, Lsun/security/ssl/ServerHandshaker$2;-><init>(Lsun/security/ssl/ServerHandshaker;Ljava/security/AccessControlContext;)V

    invoke-static {v6}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedExceptionAction;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Ljavax/crypto/SecretKey;

    iput-object v6, p0, Lsun/security/ssl/ServerHandshaker;->kerberosKeys:[Ljavax/crypto/SecretKey;

    iget-object v6, p0, Lsun/security/ssl/ServerHandshaker;->kerberosKeys:[Ljavax/crypto/SecretKey;

    if-eqz v6, :cond_2

    iget-object v6, p0, Lsun/security/ssl/ServerHandshaker;->kerberosKeys:[Ljavax/crypto/SecretKey;

    array-length v6, v6

    if-lez v6, :cond_2

    sget-object v6, Lsun/security/ssl/ServerHandshaker;->debug:Lsun/security/ssl/Debug;

    if-eqz v6, :cond_1

    const-string/jumbo v6, "handshake"

    invoke-static {v6}, Lsun/security/ssl/Debug;->isOn(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    iget-object v9, p0, Lsun/security/ssl/ServerHandshaker;->kerberosKeys:[Ljavax/crypto/SecretKey;

    array-length v10, v9

    move v6, v8

    :goto_0
    if-ge v6, v10, :cond_1

    aget-object v2, v9, v6

    sget-object v11, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "Using Kerberos key: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_1
    iget-object v6, p0, Lsun/security/ssl/ServerHandshaker;->kerberosKeys:[Ljavax/crypto/SecretKey;

    const/4 v9, 0x0

    aget-object v6, v6, v9

    invoke-static {v6}, Lsun/security/ssl/Krb5Helper;->getServerPrincipalName(Ljavax/crypto/SecretKey;)Ljava/lang/String;

    move-result-object v4

    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;
    :try_end_0
    .catch Ljava/security/PrivilegedActionException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v5

    if-eqz v5, :cond_2

    :try_start_1
    const-string/jumbo v6, "accept"

    invoke-static {v4, v6}, Lsun/security/ssl/Krb5Helper;->getServicePermission(Ljava/lang/String;Ljava/lang/String;)Ljava/security/Permission;

    move-result-object v6

    invoke-virtual {v5, v6, v0}, Ljava/lang/SecurityManager;->checkPermission(Ljava/security/Permission;Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/security/PrivilegedActionException; {:try_start_1 .. :try_end_1} :catch_1

    :cond_2
    :try_start_2
    iget-object v6, p0, Lsun/security/ssl/ServerHandshaker;->kerberosKeys:[Ljavax/crypto/SecretKey;

    if-eqz v6, :cond_4

    iget-object v6, p0, Lsun/security/ssl/ServerHandshaker;->kerberosKeys:[Ljavax/crypto/SecretKey;

    array-length v6, v6

    if-lez v6, :cond_4

    move v6, v7

    :goto_1
    return v6

    :catch_0
    move-exception v3

    const/4 v6, 0x0

    iput-object v6, p0, Lsun/security/ssl/ServerHandshaker;->kerberosKeys:[Ljavax/crypto/SecretKey;

    sget-object v6, Lsun/security/ssl/ServerHandshaker;->debug:Lsun/security/ssl/Debug;

    if-eqz v6, :cond_3

    const-string/jumbo v6, "handshake"

    invoke-static {v6}, Lsun/security/ssl/Debug;->isOn(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_3

    sget-object v6, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string/jumbo v7, "Permission to access Kerberos secret key denied"

    invoke-virtual {v6, v7}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/security/PrivilegedActionException; {:try_start_2 .. :try_end_2} :catch_1

    :cond_3
    return v8

    :cond_4
    move v6, v8

    goto :goto_1

    :catch_1
    move-exception v1

    sget-object v6, Lsun/security/ssl/ServerHandshaker;->debug:Lsun/security/ssl/Debug;

    if-eqz v6, :cond_5

    const-string/jumbo v6, "handshake"

    invoke-static {v6}, Lsun/security/ssl/Debug;->isOn(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_5

    sget-object v6, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Attempt to obtain Kerberos key failed: "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_5
    return v8
.end method

.method private setupPrivateKeyAndChain(Ljava/lang/String;)Z
    .locals 11

    const/4 v10, 0x0

    const/4 v9, 0x0

    iget-object v8, p0, Lsun/security/ssl/Handshaker;->sslContext:Lsun/security/ssl/SSLContextImpl;

    invoke-virtual {v8}, Lsun/security/ssl/SSLContextImpl;->getX509KeyManager()Ljavax/net/ssl/X509ExtendedKeyManager;

    move-result-object v3

    iget-object v8, p0, Lsun/security/ssl/Handshaker;->conn:Lsun/security/ssl/SSLSocketImpl;

    if-eqz v8, :cond_0

    iget-object v8, p0, Lsun/security/ssl/Handshaker;->conn:Lsun/security/ssl/SSLSocketImpl;

    invoke-virtual {v3, p1, v10, v8}, Ljavax/net/ssl/X509ExtendedKeyManager;->chooseServerAlias(Ljava/lang/String;[Ljava/security/Principal;Ljava/net/Socket;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    if-nez v0, :cond_1

    return v9

    :cond_0
    iget-object v8, p0, Lsun/security/ssl/Handshaker;->engine:Lsun/security/ssl/SSLEngineImpl;

    invoke-virtual {v3, p1, v10, v8}, Ljavax/net/ssl/X509ExtendedKeyManager;->chooseEngineServerAlias(Ljava/lang/String;[Ljava/security/Principal;Ljavax/net/ssl/SSLEngine;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    invoke-virtual {v3, v0}, Ljavax/net/ssl/X509ExtendedKeyManager;->getPrivateKey(Ljava/lang/String;)Ljava/security/PrivateKey;

    move-result-object v7

    if-nez v7, :cond_2

    return v9

    :cond_2
    invoke-virtual {v3, v0}, Ljavax/net/ssl/X509ExtendedKeyManager;->getCertificateChain(Ljava/lang/String;)[Ljava/security/cert/X509Certificate;

    move-result-object v6

    if-eqz v6, :cond_3

    array-length v8, v6

    if-nez v8, :cond_4

    :cond_3
    return v9

    :cond_4
    const-string/jumbo v8, "_"

    invoke-virtual {p1, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    aget-object v2, v8, v9

    aget-object v8, v6, v9

    invoke-virtual {v8}, Ljava/security/cert/Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v5

    invoke-interface {v7}, Ljava/security/PrivateKey;->getAlgorithm()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_5

    invoke-interface {v5}, Ljava/security/PublicKey;->getAlgorithm()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_6

    :cond_5
    return v9

    :cond_6
    const-string/jumbo v8, "EC"

    invoke-virtual {v2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_9

    instance-of v8, v5, Ljava/security/interfaces/ECPublicKey;

    if-nez v8, :cond_7

    return v9

    :cond_7
    check-cast v5, Ljava/security/interfaces/ECPublicKey;

    invoke-interface {v5}, Ljava/security/interfaces/ECPublicKey;->getParams()Ljava/security/spec/ECParameterSpec;

    move-result-object v4

    invoke-static {v4}, Lsun/security/ssl/SupportedEllipticCurvesExtension;->getCurveIndex(Ljava/security/spec/ECParameterSpec;)I

    move-result v1

    invoke-static {v1}, Lsun/security/ssl/SupportedEllipticCurvesExtension;->isSupported(I)Z

    move-result v8

    if-nez v8, :cond_8

    return v9

    :cond_8
    iget-object v8, p0, Lsun/security/ssl/ServerHandshaker;->supportedCurves:Lsun/security/ssl/SupportedEllipticCurvesExtension;

    if-eqz v8, :cond_9

    iget-object v8, p0, Lsun/security/ssl/ServerHandshaker;->supportedCurves:Lsun/security/ssl/SupportedEllipticCurvesExtension;

    invoke-virtual {v8, v1}, Lsun/security/ssl/SupportedEllipticCurvesExtension;->contains(I)Z

    move-result v8

    if-eqz v8, :cond_a

    :cond_9
    iput-object v7, p0, Lsun/security/ssl/ServerHandshaker;->privateKey:Ljava/security/PrivateKey;

    iput-object v6, p0, Lsun/security/ssl/ServerHandshaker;->certs:[Ljava/security/cert/X509Certificate;

    const/4 v8, 0x1

    return v8

    :cond_a
    return v9
.end method

.method private setupStaticECDHKeys()V
    .locals 4

    new-instance v0, Lsun/security/ssl/ECDHCrypt;

    iget-object v1, p0, Lsun/security/ssl/ServerHandshaker;->privateKey:Ljava/security/PrivateKey;

    iget-object v2, p0, Lsun/security/ssl/ServerHandshaker;->certs:[Ljava/security/cert/X509Certificate;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    invoke-virtual {v2}, Ljava/security/cert/Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lsun/security/ssl/ECDHCrypt;-><init>(Ljava/security/PrivateKey;Ljava/security/PublicKey;)V

    iput-object v0, p0, Lsun/security/ssl/ServerHandshaker;->ecdh:Lsun/security/ssl/ECDHCrypt;

    return-void
.end method


# virtual methods
.method getKickstartMessage()Lsun/security/ssl/HandshakeMessage;
    .locals 1

    new-instance v0, Lsun/security/ssl/HandshakeMessage$HelloRequest;

    invoke-direct {v0}, Lsun/security/ssl/HandshakeMessage$HelloRequest;-><init>()V

    return-object v0
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

    sget-object v1, Lsun/security/ssl/ServerHandshaker;->debug:Lsun/security/ssl/Debug;

    if-eqz v1, :cond_0

    const-string/jumbo v1, "handshake"

    invoke-static {v1}, Lsun/security/ssl/Debug;->isOn(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "SSL -- handshake alert:  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_0
    const/16 v1, 0x29

    if-ne p1, v1, :cond_1

    iget-byte v1, p0, Lsun/security/ssl/ServerHandshaker;->doClientAuth:B

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    return-void

    :cond_1
    new-instance v1, Ljavax/net/ssl/SSLProtocolException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "handshake alert: "

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
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v9, 0xf

    iget v1, p0, Lsun/security/ssl/Handshaker;->state:I

    if-lt v1, p1, :cond_0

    iget v1, p0, Lsun/security/ssl/Handshaker;->state:I

    const/16 v2, 0x10

    if-eq v1, v2, :cond_0

    if-eq p1, v9, :cond_0

    new-instance v1, Ljavax/net/ssl/SSLProtocolException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Handshake message sequence violation, state = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lsun/security/ssl/Handshaker;->state:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", type = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljavax/net/ssl/SSLProtocolException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    sparse-switch p1, :sswitch_data_0

    new-instance v1, Ljavax/net/ssl/SSLProtocolException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Illegal server handshake msg, "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljavax/net/ssl/SSLProtocolException;-><init>(Ljava/lang/String;)V

    throw v1

    :sswitch_0
    new-instance v7, Lsun/security/ssl/HandshakeMessage$ClientHello;

    iget-object v1, p0, Lsun/security/ssl/Handshaker;->input:Lsun/security/ssl/HandshakeInStream;

    invoke-direct {v7, v1, p2}, Lsun/security/ssl/HandshakeMessage$ClientHello;-><init>(Lsun/security/ssl/HandshakeInStream;I)V

    invoke-direct {p0, v7}, Lsun/security/ssl/ServerHandshaker;->clientHello(Lsun/security/ssl/HandshakeMessage$ClientHello;)V

    :goto_0
    iget v1, p0, Lsun/security/ssl/Handshaker;->state:I

    if-ge v1, p1, :cond_1

    if-ne p1, v9, :cond_3

    add-int/lit8 v1, p1, 0x2

    iput v1, p0, Lsun/security/ssl/Handshaker;->state:I

    :cond_1
    :goto_1
    return-void

    :sswitch_1
    iget-byte v1, p0, Lsun/security/ssl/ServerHandshaker;->doClientAuth:B

    if-nez v1, :cond_2

    const-string/jumbo v1, "client sent unsolicited cert chain"

    const/16 v2, 0xa

    invoke-virtual {p0, v2, v1}, Lsun/security/ssl/Handshaker;->fatalSE(BLjava/lang/String;)V

    :cond_2
    new-instance v1, Lsun/security/ssl/HandshakeMessage$CertificateMsg;

    iget-object v2, p0, Lsun/security/ssl/Handshaker;->input:Lsun/security/ssl/HandshakeInStream;

    invoke-direct {v1, v2}, Lsun/security/ssl/HandshakeMessage$CertificateMsg;-><init>(Lsun/security/ssl/HandshakeInStream;)V

    invoke-direct {p0, v1}, Lsun/security/ssl/ServerHandshaker;->clientCertificate(Lsun/security/ssl/HandshakeMessage$CertificateMsg;)V

    goto :goto_0

    :sswitch_2
    invoke-static {}, Lsun/security/ssl/ServerHandshaker;->-getsun-security-ssl-CipherSuite$KeyExchangeSwitchesValues()[I

    move-result-object v1

    iget-object v2, p0, Lsun/security/ssl/Handshaker;->keyExchange:Lsun/security/ssl/CipherSuite$KeyExchange;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    :pswitch_0
    new-instance v1, Ljavax/net/ssl/SSLProtocolException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Unrecognized key exchange: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lsun/security/ssl/Handshaker;->keyExchange:Lsun/security/ssl/CipherSuite$KeyExchange;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljavax/net/ssl/SSLProtocolException;-><init>(Ljava/lang/String;)V

    throw v1

    :pswitch_1
    new-instance v0, Lsun/security/ssl/RSAClientKeyExchange;

    iget-object v1, p0, Lsun/security/ssl/Handshaker;->protocolVersion:Lsun/security/ssl/ProtocolVersion;

    iget-object v2, p0, Lsun/security/ssl/ServerHandshaker;->clientRequestedVersion:Lsun/security/ssl/ProtocolVersion;

    iget-object v3, p0, Lsun/security/ssl/Handshaker;->sslContext:Lsun/security/ssl/SSLContextImpl;

    invoke-virtual {v3}, Lsun/security/ssl/SSLContextImpl;->getSecureRandom()Ljava/security/SecureRandom;

    move-result-object v3

    iget-object v4, p0, Lsun/security/ssl/Handshaker;->input:Lsun/security/ssl/HandshakeInStream;

    iget-object v6, p0, Lsun/security/ssl/ServerHandshaker;->privateKey:Ljava/security/PrivateKey;

    move v5, p2

    invoke-direct/range {v0 .. v6}, Lsun/security/ssl/RSAClientKeyExchange;-><init>(Lsun/security/ssl/ProtocolVersion;Lsun/security/ssl/ProtocolVersion;Ljava/security/SecureRandom;Lsun/security/ssl/HandshakeInStream;ILjava/security/PrivateKey;)V

    invoke-direct {p0, v0}, Lsun/security/ssl/ServerHandshaker;->clientKeyExchange(Lsun/security/ssl/RSAClientKeyExchange;)Ljavax/crypto/SecretKey;

    move-result-object v8

    :goto_2
    iget-object v1, p0, Lsun/security/ssl/ServerHandshaker;->clientRequestedVersion:Lsun/security/ssl/ProtocolVersion;

    invoke-virtual {p0, v8, v1}, Lsun/security/ssl/Handshaker;->calculateKeys(Ljavax/crypto/SecretKey;Lsun/security/ssl/ProtocolVersion;)V

    goto :goto_0

    :pswitch_2
    new-instance v1, Lsun/security/ssl/KerberosClientKeyExchange;

    iget-object v2, p0, Lsun/security/ssl/Handshaker;->protocolVersion:Lsun/security/ssl/ProtocolVersion;

    iget-object v3, p0, Lsun/security/ssl/ServerHandshaker;->clientRequestedVersion:Lsun/security/ssl/ProtocolVersion;

    iget-object v4, p0, Lsun/security/ssl/Handshaker;->sslContext:Lsun/security/ssl/SSLContextImpl;

    invoke-virtual {v4}, Lsun/security/ssl/SSLContextImpl;->getSecureRandom()Ljava/security/SecureRandom;

    move-result-object v4

    iget-object v5, p0, Lsun/security/ssl/Handshaker;->input:Lsun/security/ssl/HandshakeInStream;

    iget-object v6, p0, Lsun/security/ssl/ServerHandshaker;->kerberosKeys:[Ljavax/crypto/SecretKey;

    invoke-direct/range {v1 .. v6}, Lsun/security/ssl/KerberosClientKeyExchange;-><init>(Lsun/security/ssl/ProtocolVersion;Lsun/security/ssl/ProtocolVersion;Ljava/security/SecureRandom;Lsun/security/ssl/HandshakeInStream;[Ljavax/crypto/SecretKey;)V

    invoke-direct {p0, v1}, Lsun/security/ssl/ServerHandshaker;->clientKeyExchange(Lsun/security/ssl/KerberosClientKeyExchange;)Ljavax/crypto/SecretKey;

    move-result-object v8

    goto :goto_2

    :pswitch_3
    new-instance v1, Lsun/security/ssl/DHClientKeyExchange;

    iget-object v2, p0, Lsun/security/ssl/Handshaker;->input:Lsun/security/ssl/HandshakeInStream;

    invoke-direct {v1, v2}, Lsun/security/ssl/DHClientKeyExchange;-><init>(Lsun/security/ssl/HandshakeInStream;)V

    invoke-direct {p0, v1}, Lsun/security/ssl/ServerHandshaker;->clientKeyExchange(Lsun/security/ssl/DHClientKeyExchange;)Ljavax/crypto/SecretKey;

    move-result-object v8

    goto :goto_2

    :pswitch_4
    new-instance v1, Lsun/security/ssl/ECDHClientKeyExchange;

    iget-object v2, p0, Lsun/security/ssl/Handshaker;->input:Lsun/security/ssl/HandshakeInStream;

    invoke-direct {v1, v2}, Lsun/security/ssl/ECDHClientKeyExchange;-><init>(Lsun/security/ssl/HandshakeInStream;)V

    invoke-direct {p0, v1}, Lsun/security/ssl/ServerHandshaker;->clientKeyExchange(Lsun/security/ssl/ECDHClientKeyExchange;)Ljavax/crypto/SecretKey;

    move-result-object v8

    goto :goto_2

    :sswitch_3
    new-instance v1, Lsun/security/ssl/HandshakeMessage$CertificateVerify;

    iget-object v2, p0, Lsun/security/ssl/Handshaker;->input:Lsun/security/ssl/HandshakeInStream;

    iget-object v3, p0, Lsun/security/ssl/Handshaker;->localSupportedSignAlgs:Ljava/util/Collection;

    iget-object v4, p0, Lsun/security/ssl/Handshaker;->protocolVersion:Lsun/security/ssl/ProtocolVersion;

    invoke-direct {v1, v2, v3, v4}, Lsun/security/ssl/HandshakeMessage$CertificateVerify;-><init>(Lsun/security/ssl/HandshakeInStream;Ljava/util/Collection;Lsun/security/ssl/ProtocolVersion;)V

    invoke-direct {p0, v1}, Lsun/security/ssl/ServerHandshaker;->clientCertificateVerify(Lsun/security/ssl/HandshakeMessage$CertificateVerify;)V

    goto/16 :goto_0

    :sswitch_4
    new-instance v1, Lsun/security/ssl/HandshakeMessage$Finished;

    iget-object v2, p0, Lsun/security/ssl/Handshaker;->protocolVersion:Lsun/security/ssl/ProtocolVersion;

    iget-object v3, p0, Lsun/security/ssl/Handshaker;->input:Lsun/security/ssl/HandshakeInStream;

    iget-object v4, p0, Lsun/security/ssl/Handshaker;->cipherSuite:Lsun/security/ssl/CipherSuite;

    invoke-direct {v1, v2, v3, v4}, Lsun/security/ssl/HandshakeMessage$Finished;-><init>(Lsun/security/ssl/ProtocolVersion;Lsun/security/ssl/HandshakeInStream;Lsun/security/ssl/CipherSuite;)V

    invoke-direct {p0, v1}, Lsun/security/ssl/ServerHandshaker;->clientFinished(Lsun/security/ssl/HandshakeMessage$Finished;)V

    goto/16 :goto_0

    :cond_3
    iput p1, p0, Lsun/security/ssl/Handshaker;->state:I

    goto/16 :goto_1

    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0xb -> :sswitch_1
        0xf -> :sswitch_3
        0x10 -> :sswitch_2
        0x14 -> :sswitch_4
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method setClientAuth(B)V
    .locals 0

    iput-byte p1, p0, Lsun/security/ssl/ServerHandshaker;->doClientAuth:B

    return-void
.end method

.method trySetCipherSuite(Lsun/security/ssl/CipherSuite;)Z
    .locals 9

    const/4 v8, 0x1

    const/4 v7, 0x0

    const/4 v6, 0x0

    iget-boolean v4, p0, Lsun/security/ssl/Handshaker;->resumingSession:Z

    if-eqz v4, :cond_0

    return v8

    :cond_0
    invoke-virtual {p1}, Lsun/security/ssl/CipherSuite;->isNegotiable()Z

    move-result v4

    if-nez v4, :cond_1

    return v6

    :cond_1
    iget-object v4, p0, Lsun/security/ssl/Handshaker;->protocolVersion:Lsun/security/ssl/ProtocolVersion;

    iget v4, v4, Lsun/security/ssl/ProtocolVersion;->v:I

    iget v5, p1, Lsun/security/ssl/CipherSuite;->obsoleted:I

    if-lt v4, v5, :cond_2

    return v6

    :cond_2
    iget-object v4, p0, Lsun/security/ssl/Handshaker;->protocolVersion:Lsun/security/ssl/ProtocolVersion;

    iget v4, v4, Lsun/security/ssl/ProtocolVersion;->v:I

    iget v5, p1, Lsun/security/ssl/CipherSuite;->supported:I

    if-ge v4, v5, :cond_3

    return v6

    :cond_3
    iget-object v2, p1, Lsun/security/ssl/CipherSuite;->keyExchange:Lsun/security/ssl/CipherSuite$KeyExchange;

    iput-object v7, p0, Lsun/security/ssl/ServerHandshaker;->privateKey:Ljava/security/PrivateKey;

    iput-object v7, p0, Lsun/security/ssl/ServerHandshaker;->certs:[Ljava/security/cert/X509Certificate;

    iput-object v7, p0, Lsun/security/ssl/ServerHandshaker;->dh:Lsun/security/ssl/DHCrypt;

    iput-object v7, p0, Lsun/security/ssl/ServerHandshaker;->tempPrivateKey:Ljava/security/PrivateKey;

    iput-object v7, p0, Lsun/security/ssl/ServerHandshaker;->tempPublicKey:Ljava/security/PublicKey;

    const/4 v3, 0x0

    iget-object v4, p0, Lsun/security/ssl/Handshaker;->protocolVersion:Lsun/security/ssl/ProtocolVersion;

    iget v4, v4, Lsun/security/ssl/ProtocolVersion;->v:I

    sget-object v5, Lsun/security/ssl/ProtocolVersion;->TLS12:Lsun/security/ssl/ProtocolVersion;

    iget v5, v5, Lsun/security/ssl/ProtocolVersion;->v:I

    if-lt v4, v5, :cond_4

    iget-object v4, p0, Lsun/security/ssl/Handshaker;->peerSupportedSignAlgs:Ljava/util/Collection;

    if-eqz v4, :cond_5

    iget-object v3, p0, Lsun/security/ssl/Handshaker;->peerSupportedSignAlgs:Ljava/util/Collection;

    :cond_4
    :goto_0
    invoke-static {}, Lsun/security/ssl/ServerHandshaker;->-getsun-security-ssl-CipherSuite$KeyExchangeSwitchesValues()[I

    move-result-object v4

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v5

    aget v4, v4, v5

    packed-switch v4, :pswitch_data_0

    :pswitch_0
    new-instance v4, Ljava/lang/RuntimeException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Unrecognized cipherSuite: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_5
    const/4 v0, 0x0

    invoke-static {}, Lsun/security/ssl/ServerHandshaker;->-getsun-security-ssl-CipherSuite$KeyExchangeSwitchesValues()[I

    move-result-object v4

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v5

    aget v4, v4, v5

    packed-switch v4, :pswitch_data_1

    :goto_1
    :pswitch_1
    if-nez v0, :cond_6

    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v3

    :goto_2
    iget-object v4, p0, Lsun/security/ssl/Handshaker;->session:Lsun/security/ssl/SSLSessionImpl;

    invoke-virtual {v4, v3}, Lsun/security/ssl/SSLSessionImpl;->setPeerSupportedSignatureAlgorithms(Ljava/util/Collection;)V

    goto :goto_0

    :pswitch_2
    sget-object v4, Lsun/security/ssl/SignatureAndHashAlgorithm$HashAlgorithm;->SHA1:Lsun/security/ssl/SignatureAndHashAlgorithm$HashAlgorithm;

    iget v4, v4, Lsun/security/ssl/SignatureAndHashAlgorithm$HashAlgorithm;->value:I

    sget-object v5, Lsun/security/ssl/SignatureAndHashAlgorithm$SignatureAlgorithm;->RSA:Lsun/security/ssl/SignatureAndHashAlgorithm$SignatureAlgorithm;

    iget v5, v5, Lsun/security/ssl/SignatureAndHashAlgorithm$SignatureAlgorithm;->value:I

    invoke-static {v4, v5, v6}, Lsun/security/ssl/SignatureAndHashAlgorithm;->valueOf(III)Lsun/security/ssl/SignatureAndHashAlgorithm;

    move-result-object v0

    goto :goto_1

    :pswitch_3
    sget-object v4, Lsun/security/ssl/SignatureAndHashAlgorithm$HashAlgorithm;->SHA1:Lsun/security/ssl/SignatureAndHashAlgorithm$HashAlgorithm;

    iget v4, v4, Lsun/security/ssl/SignatureAndHashAlgorithm$HashAlgorithm;->value:I

    sget-object v5, Lsun/security/ssl/SignatureAndHashAlgorithm$SignatureAlgorithm;->DSA:Lsun/security/ssl/SignatureAndHashAlgorithm$SignatureAlgorithm;

    iget v5, v5, Lsun/security/ssl/SignatureAndHashAlgorithm$SignatureAlgorithm;->value:I

    invoke-static {v4, v5, v6}, Lsun/security/ssl/SignatureAndHashAlgorithm;->valueOf(III)Lsun/security/ssl/SignatureAndHashAlgorithm;

    move-result-object v0

    goto :goto_1

    :pswitch_4
    sget-object v4, Lsun/security/ssl/SignatureAndHashAlgorithm$HashAlgorithm;->SHA1:Lsun/security/ssl/SignatureAndHashAlgorithm$HashAlgorithm;

    iget v4, v4, Lsun/security/ssl/SignatureAndHashAlgorithm$HashAlgorithm;->value:I

    sget-object v5, Lsun/security/ssl/SignatureAndHashAlgorithm$SignatureAlgorithm;->ECDSA:Lsun/security/ssl/SignatureAndHashAlgorithm$SignatureAlgorithm;

    iget v5, v5, Lsun/security/ssl/SignatureAndHashAlgorithm$SignatureAlgorithm;->value:I

    invoke-static {v4, v5, v6}, Lsun/security/ssl/SignatureAndHashAlgorithm;->valueOf(III)Lsun/security/ssl/SignatureAndHashAlgorithm;

    move-result-object v0

    goto :goto_1

    :cond_6
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3, v8}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v3, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :pswitch_5
    const-string/jumbo v4, "RSA"

    invoke-direct {p0, v4}, Lsun/security/ssl/ServerHandshaker;->setupPrivateKeyAndChain(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_a

    return v6

    :pswitch_6
    const-string/jumbo v4, "RSA"

    invoke-direct {p0, v4}, Lsun/security/ssl/ServerHandshaker;->setupPrivateKeyAndChain(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_7

    return v6

    :cond_7
    :try_start_0
    iget-object v4, p0, Lsun/security/ssl/ServerHandshaker;->certs:[Ljava/security/cert/X509Certificate;

    const/4 v5, 0x0

    aget-object v4, v4, v5

    invoke-virtual {v4}, Ljava/security/cert/Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v4

    invoke-static {v4}, Lsun/security/ssl/JsseJce;->getRSAKeyLength(Ljava/security/PublicKey;)I

    move-result v4

    const/16 v5, 0x200

    if-le v4, v5, :cond_a

    iget-boolean v4, p1, Lsun/security/ssl/CipherSuite;->exportable:Z

    invoke-direct {p0, v4}, Lsun/security/ssl/ServerHandshaker;->setupEphemeralRSAKeys(Z)Z
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    if-nez v4, :cond_a

    return v6

    :catch_0
    move-exception v1

    return v6

    :pswitch_7
    const-string/jumbo v4, "RSA"

    invoke-direct {p0, v4}, Lsun/security/ssl/ServerHandshaker;->setupPrivateKeyAndChain(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_8

    return v6

    :cond_8
    iget-object v4, p0, Lsun/security/ssl/Handshaker;->protocolVersion:Lsun/security/ssl/ProtocolVersion;

    iget v4, v4, Lsun/security/ssl/ProtocolVersion;->v:I

    sget-object v5, Lsun/security/ssl/ProtocolVersion;->TLS12:Lsun/security/ssl/ProtocolVersion;

    iget v5, v5, Lsun/security/ssl/ProtocolVersion;->v:I

    if-lt v4, v5, :cond_9

    const-string/jumbo v4, "RSA"

    iget-object v5, p0, Lsun/security/ssl/ServerHandshaker;->privateKey:Ljava/security/PrivateKey;

    invoke-static {v3, v4, v5}, Lsun/security/ssl/SignatureAndHashAlgorithm;->getPreferableAlgorithm(Ljava/util/Collection;Ljava/lang/String;Ljava/security/PrivateKey;)Lsun/security/ssl/SignatureAndHashAlgorithm;

    move-result-object v4

    iput-object v4, p0, Lsun/security/ssl/ServerHandshaker;->preferableSignatureAlgorithm:Lsun/security/ssl/SignatureAndHashAlgorithm;

    iget-object v4, p0, Lsun/security/ssl/ServerHandshaker;->preferableSignatureAlgorithm:Lsun/security/ssl/SignatureAndHashAlgorithm;

    if-nez v4, :cond_9

    return v6

    :cond_9
    iget-boolean v4, p1, Lsun/security/ssl/CipherSuite;->exportable:Z

    invoke-direct {p0, v4}, Lsun/security/ssl/ServerHandshaker;->setupEphemeralDHKeys(Z)V

    :cond_a
    :goto_3
    invoke-virtual {p0, p1}, Lsun/security/ssl/Handshaker;->setCipherSuite(Lsun/security/ssl/CipherSuite;)V

    iget-object v4, p0, Lsun/security/ssl/Handshaker;->protocolVersion:Lsun/security/ssl/ProtocolVersion;

    iget v4, v4, Lsun/security/ssl/ProtocolVersion;->v:I

    sget-object v5, Lsun/security/ssl/ProtocolVersion;->TLS12:Lsun/security/ssl/ProtocolVersion;

    iget v5, v5, Lsun/security/ssl/ProtocolVersion;->v:I

    if-lt v4, v5, :cond_b

    iget-object v4, p0, Lsun/security/ssl/Handshaker;->peerSupportedSignAlgs:Ljava/util/Collection;

    if-nez v4, :cond_b

    invoke-virtual {p0, v3}, Lsun/security/ssl/Handshaker;->setPeerSupportedSignAlgs(Ljava/util/Collection;)V

    :cond_b
    return v8

    :pswitch_8
    const-string/jumbo v4, "RSA"

    invoke-direct {p0, v4}, Lsun/security/ssl/ServerHandshaker;->setupPrivateKeyAndChain(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_c

    return v6

    :cond_c
    iget-object v4, p0, Lsun/security/ssl/Handshaker;->protocolVersion:Lsun/security/ssl/ProtocolVersion;

    iget v4, v4, Lsun/security/ssl/ProtocolVersion;->v:I

    sget-object v5, Lsun/security/ssl/ProtocolVersion;->TLS12:Lsun/security/ssl/ProtocolVersion;

    iget v5, v5, Lsun/security/ssl/ProtocolVersion;->v:I

    if-lt v4, v5, :cond_d

    const-string/jumbo v4, "RSA"

    iget-object v5, p0, Lsun/security/ssl/ServerHandshaker;->privateKey:Ljava/security/PrivateKey;

    invoke-static {v3, v4, v5}, Lsun/security/ssl/SignatureAndHashAlgorithm;->getPreferableAlgorithm(Ljava/util/Collection;Ljava/lang/String;Ljava/security/PrivateKey;)Lsun/security/ssl/SignatureAndHashAlgorithm;

    move-result-object v4

    iput-object v4, p0, Lsun/security/ssl/ServerHandshaker;->preferableSignatureAlgorithm:Lsun/security/ssl/SignatureAndHashAlgorithm;

    iget-object v4, p0, Lsun/security/ssl/ServerHandshaker;->preferableSignatureAlgorithm:Lsun/security/ssl/SignatureAndHashAlgorithm;

    if-nez v4, :cond_d

    return v6

    :cond_d
    invoke-direct {p0}, Lsun/security/ssl/ServerHandshaker;->setupEphemeralECDHKeys()Z

    move-result v4

    if-nez v4, :cond_a

    return v6

    :pswitch_9
    iget-object v4, p0, Lsun/security/ssl/Handshaker;->protocolVersion:Lsun/security/ssl/ProtocolVersion;

    iget v4, v4, Lsun/security/ssl/ProtocolVersion;->v:I

    sget-object v5, Lsun/security/ssl/ProtocolVersion;->TLS12:Lsun/security/ssl/ProtocolVersion;

    iget v5, v5, Lsun/security/ssl/ProtocolVersion;->v:I

    if-lt v4, v5, :cond_e

    const-string/jumbo v4, "DSA"

    invoke-static {v3, v4}, Lsun/security/ssl/SignatureAndHashAlgorithm;->getPreferableAlgorithm(Ljava/util/Collection;Ljava/lang/String;)Lsun/security/ssl/SignatureAndHashAlgorithm;

    move-result-object v4

    iput-object v4, p0, Lsun/security/ssl/ServerHandshaker;->preferableSignatureAlgorithm:Lsun/security/ssl/SignatureAndHashAlgorithm;

    iget-object v4, p0, Lsun/security/ssl/ServerHandshaker;->preferableSignatureAlgorithm:Lsun/security/ssl/SignatureAndHashAlgorithm;

    if-nez v4, :cond_e

    return v6

    :cond_e
    const-string/jumbo v4, "DSA"

    invoke-direct {p0, v4}, Lsun/security/ssl/ServerHandshaker;->setupPrivateKeyAndChain(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_f

    return v6

    :cond_f
    iget-boolean v4, p1, Lsun/security/ssl/CipherSuite;->exportable:Z

    invoke-direct {p0, v4}, Lsun/security/ssl/ServerHandshaker;->setupEphemeralDHKeys(Z)V

    goto :goto_3

    :pswitch_a
    iget-object v4, p0, Lsun/security/ssl/Handshaker;->protocolVersion:Lsun/security/ssl/ProtocolVersion;

    iget v4, v4, Lsun/security/ssl/ProtocolVersion;->v:I

    sget-object v5, Lsun/security/ssl/ProtocolVersion;->TLS12:Lsun/security/ssl/ProtocolVersion;

    iget v5, v5, Lsun/security/ssl/ProtocolVersion;->v:I

    if-lt v4, v5, :cond_10

    const-string/jumbo v4, "ECDSA"

    invoke-static {v3, v4}, Lsun/security/ssl/SignatureAndHashAlgorithm;->getPreferableAlgorithm(Ljava/util/Collection;Ljava/lang/String;)Lsun/security/ssl/SignatureAndHashAlgorithm;

    move-result-object v4

    iput-object v4, p0, Lsun/security/ssl/ServerHandshaker;->preferableSignatureAlgorithm:Lsun/security/ssl/SignatureAndHashAlgorithm;

    iget-object v4, p0, Lsun/security/ssl/ServerHandshaker;->preferableSignatureAlgorithm:Lsun/security/ssl/SignatureAndHashAlgorithm;

    if-nez v4, :cond_10

    return v6

    :cond_10
    const-string/jumbo v4, "EC_EC"

    invoke-direct {p0, v4}, Lsun/security/ssl/ServerHandshaker;->setupPrivateKeyAndChain(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_11

    return v6

    :cond_11
    invoke-direct {p0}, Lsun/security/ssl/ServerHandshaker;->setupEphemeralECDHKeys()Z

    move-result v4

    if-nez v4, :cond_a

    return v6

    :pswitch_b
    const-string/jumbo v4, "EC_RSA"

    invoke-direct {p0, v4}, Lsun/security/ssl/ServerHandshaker;->setupPrivateKeyAndChain(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_12

    return v6

    :cond_12
    invoke-direct {p0}, Lsun/security/ssl/ServerHandshaker;->setupStaticECDHKeys()V

    goto/16 :goto_3

    :pswitch_c
    const-string/jumbo v4, "EC_EC"

    invoke-direct {p0, v4}, Lsun/security/ssl/ServerHandshaker;->setupPrivateKeyAndChain(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_13

    return v6

    :cond_13
    invoke-direct {p0}, Lsun/security/ssl/ServerHandshaker;->setupStaticECDHKeys()V

    goto/16 :goto_3

    :pswitch_d
    invoke-direct {p0}, Lsun/security/ssl/ServerHandshaker;->setupKerberosKeys()Z

    move-result v4

    if-nez v4, :cond_a

    return v6

    :pswitch_e
    iget-boolean v4, p1, Lsun/security/ssl/CipherSuite;->exportable:Z

    invoke-direct {p0, v4}, Lsun/security/ssl/ServerHandshaker;->setupEphemeralDHKeys(Z)V

    goto/16 :goto_3

    :pswitch_f
    invoke-direct {p0}, Lsun/security/ssl/ServerHandshaker;->setupEphemeralECDHKeys()Z

    move-result v4

    if-nez v4, :cond_a

    return v6

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_9
        :pswitch_7
        :pswitch_e
        :pswitch_0
        :pswitch_0
        :pswitch_a
        :pswitch_8
        :pswitch_f
        :pswitch_c
        :pswitch_b
        :pswitch_d
        :pswitch_d
        :pswitch_5
        :pswitch_6
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_3
        :pswitch_2
        :pswitch_4
        :pswitch_2
        :pswitch_1
        :pswitch_4
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
