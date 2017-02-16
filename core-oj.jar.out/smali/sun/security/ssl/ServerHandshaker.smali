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
    .param p1, "engine"    # Lsun/security/ssl/SSLEngineImpl;
    .param p2, "context"    # Lsun/security/ssl/SSLContextImpl;
    .param p3, "enabledProtocols"    # Lsun/security/ssl/ProtocolList;
    .param p4, "clientAuth"    # B
    .param p5, "activeProtocolVersion"    # Lsun/security/ssl/ProtocolVersion;
    .param p6, "isInitialHandshake"    # Z
    .param p7, "secureRenegotiation"    # Z
    .param p8, "clientVerifyData"    # [B
    .param p9, "serverVerifyData"    # [B

    .prologue
    .line 123
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

    .line 122
    invoke-direct/range {v0 .. v10}, Lsun/security/ssl/Handshaker;-><init>(Lsun/security/ssl/SSLEngineImpl;Lsun/security/ssl/SSLContextImpl;Lsun/security/ssl/ProtocolList;ZZLsun/security/ssl/ProtocolVersion;ZZ[B[B)V

    .line 69
    const/4 v0, 0x0

    iput-boolean v0, p0, Lsun/security/ssl/ServerHandshaker;->needClientVerify:Z

    .line 126
    iput-byte p4, p0, Lsun/security/ssl/ServerHandshaker;->doClientAuth:B

    .line 120
    return-void

    .line 123
    :cond_0
    const/4 v4, 0x0

    goto :goto_0
.end method

.method constructor <init>(Lsun/security/ssl/SSLSocketImpl;Lsun/security/ssl/SSLContextImpl;Lsun/security/ssl/ProtocolList;BLsun/security/ssl/ProtocolVersion;ZZ[B[B)V
    .locals 11
    .param p1, "socket"    # Lsun/security/ssl/SSLSocketImpl;
    .param p2, "context"    # Lsun/security/ssl/SSLContextImpl;
    .param p3, "enabledProtocols"    # Lsun/security/ssl/ProtocolList;
    .param p4, "clientAuth"    # B
    .param p5, "activeProtocolVersion"    # Lsun/security/ssl/ProtocolVersion;
    .param p6, "isInitialHandshake"    # Z
    .param p7, "secureRenegotiation"    # Z
    .param p8, "clientVerifyData"    # [B
    .param p9, "serverVerifyData"    # [B

    .prologue
    .line 107
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

    .line 106
    invoke-direct/range {v0 .. v10}, Lsun/security/ssl/Handshaker;-><init>(Lsun/security/ssl/SSLSocketImpl;Lsun/security/ssl/SSLContextImpl;Lsun/security/ssl/ProtocolList;ZZLsun/security/ssl/ProtocolVersion;ZZ[B[B)V

    .line 69
    const/4 v0, 0x0

    iput-boolean v0, p0, Lsun/security/ssl/ServerHandshaker;->needClientVerify:Z

    .line 110
    iput-byte p4, p0, Lsun/security/ssl/ServerHandshaker;->doClientAuth:B

    .line 104
    return-void

    .line 107
    :cond_0
    const/4 v4, 0x0

    goto :goto_0
.end method

.method private chooseCipherSuite(Lsun/security/ssl/HandshakeMessage$ClientHello;)V
    .locals 4
    .param p1, "mesg"    # Lsun/security/ssl/HandshakeMessage$ClientHello;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 878
    invoke-virtual {p1}, Lsun/security/ssl/HandshakeMessage$ClientHello;->getCipherSuites()Lsun/security/ssl/CipherSuiteList;

    move-result-object v2

    invoke-virtual {v2}, Lsun/security/ssl/CipherSuiteList;->collection()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "suite$iterator":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lsun/security/ssl/CipherSuite;

    .line 879
    .local v0, "suite":Lsun/security/ssl/CipherSuite;
    invoke-virtual {p0, v0}, Lsun/security/ssl/Handshaker;->isNegotiable(Lsun/security/ssl/CipherSuite;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 883
    iget-byte v2, p0, Lsun/security/ssl/ServerHandshaker;->doClientAuth:B

    const/4 v3, 0x2

    if-ne v2, v3, :cond_1

    .line 884
    iget-object v2, v0, Lsun/security/ssl/CipherSuite;->keyExchange:Lsun/security/ssl/CipherSuite$KeyExchange;

    sget-object v3, Lsun/security/ssl/CipherSuite$KeyExchange;->K_DH_ANON:Lsun/security/ssl/CipherSuite$KeyExchange;

    if-eq v2, v3, :cond_0

    .line 885
    iget-object v2, v0, Lsun/security/ssl/CipherSuite;->keyExchange:Lsun/security/ssl/CipherSuite$KeyExchange;

    sget-object v3, Lsun/security/ssl/CipherSuite$KeyExchange;->K_ECDH_ANON:Lsun/security/ssl/CipherSuite$KeyExchange;

    if-eq v2, v3, :cond_0

    .line 889
    :cond_1
    invoke-virtual {p0, v0}, Lsun/security/ssl/ServerHandshaker;->trySetCipherSuite(Lsun/security/ssl/CipherSuite;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 892
    return-void

    .line 895
    .end local v0    # "suite":Lsun/security/ssl/CipherSuite;
    :cond_2
    const-string/jumbo v2, "no cipher suites in common"

    .line 894
    const/16 v3, 0x28

    invoke-virtual {p0, v3, v2}, Lsun/security/ssl/Handshaker;->fatalSE(BLjava/lang/String;)V

    .line 877
    return-void
.end method

.method private clientCertificate(Lsun/security/ssl/HandshakeMessage$CertificateMsg;)V
    .locals 10
    .param p1, "mesg"    # Lsun/security/ssl/HandshakeMessage$CertificateMsg;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 1612
    sget-object v6, Lsun/security/ssl/ServerHandshaker;->debug:Lsun/security/ssl/Debug;

    if-eqz v6, :cond_0

    const-string/jumbo v6, "handshake"

    invoke-static {v6}, Lsun/security/ssl/Debug;->isOn(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 1613
    sget-object v6, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {p1, v6}, Lsun/security/ssl/HandshakeMessage$CertificateMsg;->print(Ljava/io/PrintStream;)V

    .line 1616
    :cond_0
    invoke-virtual {p1}, Lsun/security/ssl/HandshakeMessage$CertificateMsg;->getCertificateChain()[Ljava/security/cert/X509Certificate;

    move-result-object v4

    .line 1618
    .local v4, "peerCerts":[Ljava/security/cert/X509Certificate;
    array-length v6, v4

    if-nez v6, :cond_3

    .line 1623
    iget-byte v6, p0, Lsun/security/ssl/ServerHandshaker;->doClientAuth:B

    if-ne v6, v9, :cond_2

    .line 1626
    iget-object v6, p0, Lsun/security/ssl/Handshaker;->protocolVersion:Lsun/security/ssl/ProtocolVersion;

    iget v6, v6, Lsun/security/ssl/ProtocolVersion;->v:I

    sget-object v7, Lsun/security/ssl/ProtocolVersion;->TLS12:Lsun/security/ssl/ProtocolVersion;

    iget v7, v7, Lsun/security/ssl/ProtocolVersion;->v:I

    if-lt v6, v7, :cond_1

    .line 1627
    iget-object v6, p0, Lsun/security/ssl/Handshaker;->handshakeHash:Lsun/security/ssl/HandshakeHash;

    invoke-virtual {v6, v8}, Lsun/security/ssl/HandshakeHash;->setCertificateVerifyAlg(Ljava/lang/String;)V

    .line 1629
    :cond_1
    return-void

    .line 1632
    :cond_2
    const-string/jumbo v6, "null cert chain"

    .line 1631
    const/16 v7, 0x2a

    invoke-virtual {p0, v7, v6}, Lsun/security/ssl/Handshaker;->fatalSE(BLjava/lang/String;)V

    .line 1637
    :cond_3
    iget-object v6, p0, Lsun/security/ssl/Handshaker;->sslContext:Lsun/security/ssl/SSLContextImpl;

    invoke-virtual {v6}, Lsun/security/ssl/SSLContextImpl;->getX509TrustManager()Ljavax/net/ssl/X509TrustManager;

    move-result-object v5

    .line 1641
    .local v5, "tm":Ljavax/net/ssl/X509TrustManager;
    const/4 v6, 0x0

    :try_start_0
    aget-object v6, v4, v6

    invoke-virtual {v6}, Ljava/security/cert/Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v2

    .line 1642
    .local v2, "key":Ljava/security/PublicKey;
    invoke-interface {v2}, Ljava/security/PublicKey;->getAlgorithm()Ljava/lang/String;

    move-result-object v3

    .line 1644
    .local v3, "keyAlgorithm":Ljava/lang/String;
    const-string/jumbo v6, "RSA"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 1645
    const-string/jumbo v0, "RSA"

    .line 1655
    .local v0, "authType":Ljava/lang/String;
    :goto_0
    instance-of v6, v5, Ljavax/net/ssl/X509ExtendedTrustManager;

    if-eqz v6, :cond_8

    .line 1656
    iget-object v6, p0, Lsun/security/ssl/Handshaker;->conn:Lsun/security/ssl/SSLSocketImpl;

    if-eqz v6, :cond_7

    .line 1657
    nop

    nop

    .line 1658
    .end local v5    # "tm":Ljavax/net/ssl/X509TrustManager;
    invoke-virtual {v4}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Ljava/security/cert/X509Certificate;

    .line 1660
    iget-object v7, p0, Lsun/security/ssl/Handshaker;->conn:Lsun/security/ssl/SSLSocketImpl;

    .line 1657
    invoke-virtual {v5, v6, v0, v7}, Ljavax/net/ssl/X509ExtendedTrustManager;->checkClientTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;Ljava/net/Socket;)V
    :try_end_0
    .catch Ljava/security/cert/CertificateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1678
    .end local v0    # "authType":Ljava/lang/String;
    .end local v2    # "key":Ljava/security/PublicKey;
    .end local v3    # "keyAlgorithm":Ljava/lang/String;
    :goto_1
    iput-boolean v9, p0, Lsun/security/ssl/ServerHandshaker;->needClientVerify:Z

    .line 1680
    iget-object v6, p0, Lsun/security/ssl/Handshaker;->session:Lsun/security/ssl/SSLSessionImpl;

    invoke-virtual {v6, v4}, Lsun/security/ssl/SSLSessionImpl;->setPeerCertificates([Ljava/security/cert/X509Certificate;)V

    .line 1611
    return-void

    .line 1646
    .restart local v2    # "key":Ljava/security/PublicKey;
    .restart local v3    # "keyAlgorithm":Ljava/lang/String;
    .restart local v5    # "tm":Ljavax/net/ssl/X509TrustManager;
    :cond_4
    :try_start_1
    const-string/jumbo v6, "DSA"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 1647
    const-string/jumbo v0, "DSA"

    .restart local v0    # "authType":Ljava/lang/String;
    goto :goto_0

    .line 1648
    .end local v0    # "authType":Ljava/lang/String;
    :cond_5
    const-string/jumbo v6, "EC"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 1649
    const-string/jumbo v0, "EC"

    .restart local v0    # "authType":Ljava/lang/String;
    goto :goto_0

    .line 1652
    .end local v0    # "authType":Ljava/lang/String;
    :cond_6
    const-string/jumbo v0, "UNKNOWN"

    .restart local v0    # "authType":Ljava/lang/String;
    goto :goto_0

    .line 1662
    :cond_7
    nop

    nop

    .line 1663
    .end local v5    # "tm":Ljavax/net/ssl/X509TrustManager;
    invoke-virtual {v4}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Ljava/security/cert/X509Certificate;

    .line 1665
    iget-object v7, p0, Lsun/security/ssl/Handshaker;->engine:Lsun/security/ssl/SSLEngineImpl;

    .line 1662
    invoke-virtual {v5, v6, v0, v7}, Ljavax/net/ssl/X509ExtendedTrustManager;->checkClientTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;Ljavax/net/ssl/SSLEngine;)V
    :try_end_1
    .catch Ljava/security/cert/CertificateException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 1673
    .end local v0    # "authType":Ljava/lang/String;
    .end local v2    # "key":Ljava/security/PublicKey;
    .end local v3    # "keyAlgorithm":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 1675
    .local v1, "e":Ljava/security/cert/CertificateException;
    const/16 v6, 0x2e

    invoke-virtual {p0, v6, v1}, Lsun/security/ssl/Handshaker;->fatalSE(BLjava/lang/Throwable;)V

    goto :goto_1

    .line 1670
    .end local v1    # "e":Ljava/security/cert/CertificateException;
    .restart local v0    # "authType":Ljava/lang/String;
    .restart local v2    # "key":Ljava/security/PublicKey;
    .restart local v3    # "keyAlgorithm":Ljava/lang/String;
    .restart local v5    # "tm":Ljavax/net/ssl/X509TrustManager;
    :cond_8
    :try_start_2
    new-instance v6, Ljava/security/cert/CertificateException;

    .line 1671
    const-string/jumbo v7, "Improper X509TrustManager implementation"

    .line 1670
    invoke-direct {v6, v7}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/String;)V

    throw v6
    :try_end_2
    .catch Ljava/security/cert/CertificateException; {:try_start_2 .. :try_end_2} :catch_0
.end method

.method private clientCertificateVerify(Lsun/security/ssl/HandshakeMessage$CertificateVerify;)V
    .locals 10
    .param p1, "mesg"    # Lsun/security/ssl/HandshakeMessage$CertificateVerify;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v9, 0x2a

    const/4 v8, 0x0

    .line 1392
    sget-object v5, Lsun/security/ssl/ServerHandshaker;->debug:Lsun/security/ssl/Debug;

    if-eqz v5, :cond_0

    const-string/jumbo v5, "handshake"

    invoke-static {v5}, Lsun/security/ssl/Debug;->isOn(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1393
    sget-object v5, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {p1, v5}, Lsun/security/ssl/HandshakeMessage$CertificateVerify;->print(Ljava/io/PrintStream;)V

    .line 1396
    :cond_0
    iget-object v5, p0, Lsun/security/ssl/Handshaker;->protocolVersion:Lsun/security/ssl/ProtocolVersion;

    iget v5, v5, Lsun/security/ssl/ProtocolVersion;->v:I

    sget-object v6, Lsun/security/ssl/ProtocolVersion;->TLS12:Lsun/security/ssl/ProtocolVersion;

    iget v6, v6, Lsun/security/ssl/ProtocolVersion;->v:I

    if-lt v5, v6, :cond_4

    .line 1398
    invoke-virtual {p1}, Lsun/security/ssl/HandshakeMessage$CertificateVerify;->getPreferableSignatureAlgorithm()Lsun/security/ssl/SignatureAndHashAlgorithm;

    move-result-object v3

    .line 1399
    .local v3, "signAlg":Lsun/security/ssl/SignatureAndHashAlgorithm;
    if-nez v3, :cond_1

    .line 1400
    new-instance v5, Ljavax/net/ssl/SSLHandshakeException;

    .line 1401
    const-string/jumbo v6, "Illegal CertificateVerify message"

    .line 1400
    invoke-direct {v5, v6}, Ljavax/net/ssl/SSLHandshakeException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 1405
    :cond_1
    invoke-static {v3}, Lsun/security/ssl/SignatureAndHashAlgorithm;->getHashAlgorithmName(Lsun/security/ssl/SignatureAndHashAlgorithm;)Ljava/lang/String;

    move-result-object v1

    .line 1406
    .local v1, "hashAlg":Ljava/lang/String;
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v5

    if-nez v5, :cond_3

    .line 1407
    :cond_2
    new-instance v5, Ljavax/net/ssl/SSLHandshakeException;

    .line 1408
    const-string/jumbo v6, "No supported hash algorithm"

    .line 1407
    invoke-direct {v5, v6}, Ljavax/net/ssl/SSLHandshakeException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 1411
    :cond_3
    iget-object v5, p0, Lsun/security/ssl/Handshaker;->handshakeHash:Lsun/security/ssl/HandshakeHash;

    invoke-virtual {v5, v1}, Lsun/security/ssl/HandshakeHash;->setCertificateVerifyAlg(Ljava/lang/String;)V

    .line 1416
    .end local v1    # "hashAlg":Ljava/lang/String;
    .end local v3    # "signAlg":Lsun/security/ssl/SignatureAndHashAlgorithm;
    :cond_4
    :try_start_0
    iget-object v5, p0, Lsun/security/ssl/Handshaker;->session:Lsun/security/ssl/SSLSessionImpl;

    invoke-virtual {v5}, Lsun/security/ssl/SSLSessionImpl;->getPeerCertificates()[Ljava/security/cert/Certificate;

    move-result-object v5

    const/4 v6, 0x0

    aget-object v5, v5, v6

    invoke-virtual {v5}, Ljava/security/cert/Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v2

    .line 1418
    .local v2, "publicKey":Ljava/security/PublicKey;
    iget-object v5, p0, Lsun/security/ssl/Handshaker;->protocolVersion:Lsun/security/ssl/ProtocolVersion;

    iget-object v6, p0, Lsun/security/ssl/Handshaker;->handshakeHash:Lsun/security/ssl/HandshakeHash;

    .line 1419
    iget-object v7, p0, Lsun/security/ssl/Handshaker;->session:Lsun/security/ssl/SSLSessionImpl;

    invoke-virtual {v7}, Lsun/security/ssl/SSLSessionImpl;->getMasterSecret()Ljavax/crypto/SecretKey;

    move-result-object v7

    .line 1418
    invoke-virtual {p1, v5, v6, v2, v7}, Lsun/security/ssl/HandshakeMessage$CertificateVerify;->verify(Lsun/security/ssl/ProtocolVersion;Lsun/security/ssl/HandshakeHash;Ljava/security/PublicKey;Ljavax/crypto/SecretKey;)Z

    move-result v4

    .line 1420
    .local v4, "valid":Z
    if-nez v4, :cond_5

    .line 1422
    const-string/jumbo v5, "certificate verify message signature error"

    .line 1421
    const/16 v6, 0x2a

    invoke-virtual {p0, v6, v5}, Lsun/security/ssl/Handshaker;->fatalSE(BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1430
    .end local v2    # "publicKey":Ljava/security/PublicKey;
    .end local v4    # "valid":Z
    :cond_5
    :goto_0
    iput-boolean v8, p0, Lsun/security/ssl/ServerHandshaker;->needClientVerify:Z

    .line 1390
    return-void

    .line 1424
    :catch_0
    move-exception v0

    .line 1426
    .local v0, "e":Ljava/security/GeneralSecurityException;
    const-string/jumbo v5, "certificate verify format error"

    .line 1425
    invoke-virtual {p0, v9, v5, v0}, Lsun/security/ssl/Handshaker;->fatalSE(BLjava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private clientFinished(Lsun/security/ssl/HandshakeMessage$Finished;)V
    .locals 5
    .param p1, "mesg"    # Lsun/security/ssl/HandshakeMessage$Finished;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v4, 0x28

    const/4 v3, 0x1

    .line 1442
    sget-object v1, Lsun/security/ssl/ServerHandshaker;->debug:Lsun/security/ssl/Debug;

    if-eqz v1, :cond_0

    const-string/jumbo v1, "handshake"

    invoke-static {v1}, Lsun/security/ssl/Debug;->isOn(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1443
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {p1, v1}, Lsun/security/ssl/HandshakeMessage$Finished;->print(Ljava/io/PrintStream;)V

    .line 1450
    :cond_0
    iget-byte v1, p0, Lsun/security/ssl/ServerHandshaker;->doClientAuth:B

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    .line 1453
    iget-object v1, p0, Lsun/security/ssl/Handshaker;->session:Lsun/security/ssl/SSLSessionImpl;

    invoke-virtual {v1}, Lsun/security/ssl/SSLSessionImpl;->getPeerPrincipal()Ljava/security/Principal;

    .line 1460
    :cond_1
    iget-boolean v1, p0, Lsun/security/ssl/ServerHandshaker;->needClientVerify:Z

    if-eqz v1, :cond_2

    .line 1462
    const-string/jumbo v1, "client did not send certificate verify message"

    .line 1461
    invoke-virtual {p0, v4, v1}, Lsun/security/ssl/Handshaker;->fatalSE(BLjava/lang/String;)V

    .line 1469
    :cond_2
    iget-object v1, p0, Lsun/security/ssl/Handshaker;->handshakeHash:Lsun/security/ssl/HandshakeHash;

    .line 1470
    iget-object v2, p0, Lsun/security/ssl/Handshaker;->session:Lsun/security/ssl/SSLSessionImpl;

    invoke-virtual {v2}, Lsun/security/ssl/SSLSessionImpl;->getMasterSecret()Ljavax/crypto/SecretKey;

    move-result-object v2

    .line 1469
    invoke-virtual {p1, v1, v3, v2}, Lsun/security/ssl/HandshakeMessage$Finished;->verify(Lsun/security/ssl/HandshakeHash;ILjavax/crypto/SecretKey;)Z

    move-result v0

    .line 1472
    .local v0, "verified":Z
    if-nez v0, :cond_3

    .line 1474
    const-string/jumbo v1, "client \'finished\' message doesn\'t verify"

    .line 1473
    invoke-virtual {p0, v4, v1}, Lsun/security/ssl/Handshaker;->fatalSE(BLjava/lang/String;)V

    .line 1481
    :cond_3
    iget-boolean v1, p0, Lsun/security/ssl/Handshaker;->secureRenegotiation:Z

    if-eqz v1, :cond_4

    .line 1482
    invoke-virtual {p1}, Lsun/security/ssl/HandshakeMessage$Finished;->getVerifyData()[B

    move-result-object v1

    iput-object v1, p0, Lsun/security/ssl/Handshaker;->clientVerifyData:[B

    .line 1490
    :cond_4
    iget-boolean v1, p0, Lsun/security/ssl/Handshaker;->resumingSession:Z

    if-nez v1, :cond_5

    .line 1491
    iget-object v1, p0, Lsun/security/ssl/Handshaker;->input:Lsun/security/ssl/HandshakeInStream;

    invoke-virtual {v1}, Lsun/security/ssl/HandshakeInStream;->digestNow()V

    .line 1492
    invoke-direct {p0, v3}, Lsun/security/ssl/ServerHandshaker;->sendChangeCipherAndFinish(Z)V

    .line 1499
    :cond_5
    iget-object v1, p0, Lsun/security/ssl/Handshaker;->session:Lsun/security/ssl/SSLSessionImpl;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lsun/security/ssl/SSLSessionImpl;->setLastAccessedTime(J)V

    .line 1500
    iget-boolean v1, p0, Lsun/security/ssl/Handshaker;->resumingSession:Z

    if-nez v1, :cond_7

    iget-object v1, p0, Lsun/security/ssl/Handshaker;->session:Lsun/security/ssl/SSLSessionImpl;

    invoke-virtual {v1}, Lsun/security/ssl/SSLSessionImpl;->isRejoinable()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 1501
    iget-object v1, p0, Lsun/security/ssl/Handshaker;->sslContext:Lsun/security/ssl/SSLContextImpl;

    invoke-virtual {v1}, Lsun/security/ssl/SSLContextImpl;->engineGetServerSessionContext()Ljavax/net/ssl/SSLSessionContext;

    move-result-object v1

    check-cast v1, Lsun/security/ssl/SSLSessionContextImpl;

    .line 1502
    iget-object v2, p0, Lsun/security/ssl/Handshaker;->session:Lsun/security/ssl/SSLSessionImpl;

    .line 1501
    invoke-virtual {v1, v2}, Lsun/security/ssl/SSLSessionContextImpl;->put(Lsun/security/ssl/SSLSessionImpl;)V

    .line 1503
    sget-object v1, Lsun/security/ssl/ServerHandshaker;->debug:Lsun/security/ssl/Debug;

    if-eqz v1, :cond_6

    const-string/jumbo v1, "session"

    invoke-static {v1}, Lsun/security/ssl/Debug;->isOn(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 1504
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    .line 1505
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

    .line 1504
    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1441
    :cond_6
    :goto_0
    return-void

    .line 1507
    :cond_7
    iget-boolean v1, p0, Lsun/security/ssl/Handshaker;->resumingSession:Z

    if-nez v1, :cond_6

    .line 1508
    sget-object v1, Lsun/security/ssl/ServerHandshaker;->debug:Lsun/security/ssl/Debug;

    if-eqz v1, :cond_6

    const-string/jumbo v1, "session"

    invoke-static {v1}, Lsun/security/ssl/Debug;->isOn(Ljava/lang/String;)Z

    move-result v1

    .line 1507
    if-eqz v1, :cond_6

    .line 1509
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    .line 1510
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "%% Didn\'t cache non-resumable server session: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1511
    iget-object v3, p0, Lsun/security/ssl/Handshaker;->session:Lsun/security/ssl/SSLSessionImpl;

    .line 1510
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1509
    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private clientHello(Lsun/security/ssl/HandshakeMessage$ClientHello;)V
    .locals 34
    .param p1, "mesg"    # Lsun/security/ssl/HandshakeMessage$ClientHello;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 277
    sget-object v3, Lsun/security/ssl/ServerHandshaker;->debug:Lsun/security/ssl/Debug;

    if-eqz v3, :cond_0

    const-string/jumbo v3, "handshake"

    invoke-static {v3}, Lsun/security/ssl/Debug;->isOn(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 278
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Lsun/security/ssl/HandshakeMessage$ClientHello;->print(Ljava/io/PrintStream;)V

    .line 282
    :cond_0
    const/16 v27, 0x0

    .line 285
    .local v27, "renegotiationIndicated":Z
    invoke-virtual/range {p1 .. p1}, Lsun/security/ssl/HandshakeMessage$ClientHello;->getCipherSuites()Lsun/security/ssl/CipherSuiteList;

    move-result-object v11

    .line 286
    .local v11, "cipherSuites":Lsun/security/ssl/CipherSuiteList;
    sget-object v3, Lsun/security/ssl/CipherSuite;->C_SCSV:Lsun/security/ssl/CipherSuite;

    invoke-virtual {v11, v3}, Lsun/security/ssl/CipherSuiteList;->contains(Lsun/security/ssl/CipherSuite;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 287
    const/16 v27, 0x1

    .line 288
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lsun/security/ssl/Handshaker;->isInitialHandshake:Z

    if-eqz v3, :cond_10

    .line 289
    const/4 v3, 0x1

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lsun/security/ssl/Handshaker;->secureRenegotiation:Z

    .line 304
    :cond_1
    :goto_0
    move-object/from16 v0, p1

    iget-object v3, v0, Lsun/security/ssl/HandshakeMessage$ClientHello;->extensions:Lsun/security/ssl/HelloExtensions;

    sget-object v4, Lsun/security/ssl/ExtensionType;->EXT_RENEGOTIATION_INFO:Lsun/security/ssl/ExtensionType;

    invoke-virtual {v3, v4}, Lsun/security/ssl/HelloExtensions;->get(Lsun/security/ssl/ExtensionType;)Lsun/security/ssl/HelloExtension;

    move-result-object v12

    .line 303
    check-cast v12, Lsun/security/ssl/RenegotiationInfoExtension;

    .line 305
    .local v12, "clientHelloRI":Lsun/security/ssl/RenegotiationInfoExtension;
    if-eqz v12, :cond_14

    .line 306
    const/16 v27, 0x1

    .line 307
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lsun/security/ssl/Handshaker;->isInitialHandshake:Z

    if-eqz v3, :cond_12

    .line 309
    invoke-virtual {v12}, Lsun/security/ssl/RenegotiationInfoExtension;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_2

    .line 312
    const-string/jumbo v3, "The renegotiation_info field is not empty"

    .line 311
    const/16 v4, 0x28

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v3}, Lsun/security/ssl/Handshaker;->fatalSE(BLjava/lang/String;)V

    .line 315
    :cond_2
    const/4 v3, 0x1

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lsun/security/ssl/Handshaker;->secureRenegotiation:Z

    .line 343
    :cond_3
    :goto_1
    if-eqz v27, :cond_15

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lsun/security/ssl/Handshaker;->secureRenegotiation:Z

    if-eqz v3, :cond_15

    .line 404
    :cond_4
    :goto_2
    move-object/from16 v0, p0

    iget-object v3, v0, Lsun/security/ssl/Handshaker;->input:Lsun/security/ssl/HandshakeInStream;

    invoke-virtual {v3}, Lsun/security/ssl/HandshakeInStream;->digestNow()V

    .line 415
    new-instance v19, Lsun/security/ssl/HandshakeMessage$ServerHello;

    invoke-direct/range {v19 .. v19}, Lsun/security/ssl/HandshakeMessage$ServerHello;-><init>()V

    .line 417
    .local v19, "m1":Lsun/security/ssl/HandshakeMessage$ServerHello;
    move-object/from16 v0, p1

    iget-object v3, v0, Lsun/security/ssl/HandshakeMessage$ClientHello;->protocolVersion:Lsun/security/ssl/ProtocolVersion;

    move-object/from16 v0, p0

    iput-object v3, v0, Lsun/security/ssl/ServerHandshaker;->clientRequestedVersion:Lsun/security/ssl/ProtocolVersion;

    .line 421
    move-object/from16 v0, p0

    iget-object v3, v0, Lsun/security/ssl/ServerHandshaker;->clientRequestedVersion:Lsun/security/ssl/ProtocolVersion;

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lsun/security/ssl/Handshaker;->selectProtocolVersion(Lsun/security/ssl/ProtocolVersion;)Lsun/security/ssl/ProtocolVersion;

    move-result-object v28

    .line 422
    .local v28, "selectedVersion":Lsun/security/ssl/ProtocolVersion;
    if-eqz v28, :cond_5

    .line 423
    move-object/from16 v0, v28

    iget v3, v0, Lsun/security/ssl/ProtocolVersion;->v:I

    sget-object v4, Lsun/security/ssl/ProtocolVersion;->SSL20Hello:Lsun/security/ssl/ProtocolVersion;

    iget v4, v4, Lsun/security/ssl/ProtocolVersion;->v:I

    if-ne v3, v4, :cond_6

    .line 425
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

    .line 426
    const-string/jumbo v4, " not enabled or not supported"

    .line 425
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 424
    const/16 v4, 0x28

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v3}, Lsun/security/ssl/Handshaker;->fatalSE(BLjava/lang/String;)V

    .line 429
    :cond_6
    move-object/from16 v0, p0

    iget-object v3, v0, Lsun/security/ssl/Handshaker;->handshakeHash:Lsun/security/ssl/HandshakeHash;

    move-object/from16 v0, v28

    invoke-virtual {v3, v0}, Lsun/security/ssl/HandshakeHash;->protocolDetermined(Lsun/security/ssl/ProtocolVersion;)V

    .line 430
    move-object/from16 v0, p0

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Lsun/security/ssl/Handshaker;->setVersion(Lsun/security/ssl/ProtocolVersion;)V

    .line 432
    move-object/from16 v0, p0

    iget-object v3, v0, Lsun/security/ssl/Handshaker;->protocolVersion:Lsun/security/ssl/ProtocolVersion;

    move-object/from16 v0, v19

    iput-object v3, v0, Lsun/security/ssl/HandshakeMessage$ServerHello;->protocolVersion:Lsun/security/ssl/ProtocolVersion;

    .line 445
    move-object/from16 v0, p1

    iget-object v3, v0, Lsun/security/ssl/HandshakeMessage$ClientHello;->clnt_random:Lsun/security/ssl/RandomCookie;

    move-object/from16 v0, p0

    iput-object v3, v0, Lsun/security/ssl/Handshaker;->clnt_random:Lsun/security/ssl/RandomCookie;

    .line 446
    new-instance v3, Lsun/security/ssl/RandomCookie;

    move-object/from16 v0, p0

    iget-object v4, v0, Lsun/security/ssl/Handshaker;->sslContext:Lsun/security/ssl/SSLContextImpl;

    invoke-virtual {v4}, Lsun/security/ssl/SSLContextImpl;->getSecureRandom()Ljava/security/SecureRandom;

    move-result-object v4

    invoke-direct {v3, v4}, Lsun/security/ssl/RandomCookie;-><init>(Ljava/security/SecureRandom;)V

    move-object/from16 v0, p0

    iput-object v3, v0, Lsun/security/ssl/Handshaker;->svr_random:Lsun/security/ssl/RandomCookie;

    .line 447
    move-object/from16 v0, p0

    iget-object v3, v0, Lsun/security/ssl/Handshaker;->svr_random:Lsun/security/ssl/RandomCookie;

    move-object/from16 v0, v19

    iput-object v3, v0, Lsun/security/ssl/HandshakeMessage$ServerHello;->svr_random:Lsun/security/ssl/RandomCookie;

    .line 449
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-object v3, v0, Lsun/security/ssl/Handshaker;->session:Lsun/security/ssl/SSLSessionImpl;

    .line 455
    move-object/from16 v0, p1

    iget-object v3, v0, Lsun/security/ssl/HandshakeMessage$ClientHello;->sessionId:Lsun/security/ssl/SessionId;

    invoke-virtual {v3}, Lsun/security/ssl/SessionId;->length()I

    move-result v3

    if-eqz v3, :cond_f

    .line 458
    move-object/from16 v0, p0

    iget-object v3, v0, Lsun/security/ssl/Handshaker;->sslContext:Lsun/security/ssl/SSLContextImpl;

    invoke-virtual {v3}, Lsun/security/ssl/SSLContextImpl;->engineGetServerSessionContext()Ljavax/net/ssl/SSLSessionContext;

    move-result-object v3

    check-cast v3, Lsun/security/ssl/SSLSessionContextImpl;

    .line 460
    move-object/from16 v0, p1

    iget-object v4, v0, Lsun/security/ssl/HandshakeMessage$ClientHello;->sessionId:Lsun/security/ssl/SessionId;

    invoke-virtual {v4}, Lsun/security/ssl/SessionId;->getId()[B

    move-result-object v4

    .line 458
    invoke-virtual {v3, v4}, Lsun/security/ssl/SSLSessionContextImpl;->get([B)Lsun/security/ssl/SSLSessionImpl;

    move-result-object v25

    .line 468
    .local v25, "previous":Lsun/security/ssl/SSLSessionImpl;
    if-eqz v25, :cond_f

    .line 469
    invoke-virtual/range {v25 .. v25}, Lsun/security/ssl/SSLSessionImpl;->isRejoinable()Z

    move-result v3

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lsun/security/ssl/Handshaker;->resumingSession:Z

    .line 471
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lsun/security/ssl/Handshaker;->resumingSession:Z

    if-eqz v3, :cond_7

    .line 472
    invoke-virtual/range {v25 .. v25}, Lsun/security/ssl/SSLSessionImpl;->getProtocolVersion()Lsun/security/ssl/ProtocolVersion;

    move-result-object v23

    .line 474
    .local v23, "oldVersion":Lsun/security/ssl/ProtocolVersion;
    move-object/from16 v0, p0

    iget-object v3, v0, Lsun/security/ssl/Handshaker;->protocolVersion:Lsun/security/ssl/ProtocolVersion;

    move-object/from16 v0, v23

    if-eq v0, v3, :cond_7

    .line 475
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lsun/security/ssl/Handshaker;->resumingSession:Z

    .line 479
    .end local v23    # "oldVersion":Lsun/security/ssl/ProtocolVersion;
    :cond_7
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lsun/security/ssl/Handshaker;->resumingSession:Z

    if-eqz v3, :cond_8

    .line 480
    move-object/from16 v0, p0

    iget-byte v3, v0, Lsun/security/ssl/ServerHandshaker;->doClientAuth:B

    const/4 v4, 0x2

    if-ne v3, v4, :cond_8

    .line 482
    :try_start_0
    invoke-virtual/range {v25 .. v25}, Lsun/security/ssl/SSLSessionImpl;->getPeerPrincipal()Ljava/security/Principal;
    :try_end_0
    .catch Ljavax/net/ssl/SSLPeerUnverifiedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 489
    :cond_8
    :goto_3
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lsun/security/ssl/Handshaker;->resumingSession:Z

    if-eqz v3, :cond_b

    .line 490
    invoke-virtual/range {v25 .. v25}, Lsun/security/ssl/SSLSessionImpl;->getSuite()Lsun/security/ssl/CipherSuite;

    move-result-object v32

    .line 491
    .local v32, "suite":Lsun/security/ssl/CipherSuite;
    move-object/from16 v0, v32

    iget-object v3, v0, Lsun/security/ssl/CipherSuite;->keyExchange:Lsun/security/ssl/CipherSuite$KeyExchange;

    sget-object v4, Lsun/security/ssl/CipherSuite$KeyExchange;->K_KRB5:Lsun/security/ssl/CipherSuite$KeyExchange;

    if-eq v3, v4, :cond_9

    .line 492
    move-object/from16 v0, v32

    iget-object v3, v0, Lsun/security/ssl/CipherSuite;->keyExchange:Lsun/security/ssl/CipherSuite$KeyExchange;

    sget-object v4, Lsun/security/ssl/CipherSuite$KeyExchange;->K_KRB5_EXPORT:Lsun/security/ssl/CipherSuite$KeyExchange;

    if-ne v3, v4, :cond_b

    .line 493
    :cond_9
    invoke-virtual/range {v25 .. v25}, Lsun/security/ssl/SSLSessionImpl;->getLocalPrincipal()Ljava/security/Principal;

    move-result-object v17

    .line 495
    .local v17, "localPrincipal":Ljava/security/Principal;
    const/16 v31, 0x0

    .line 498
    .local v31, "subject":Ljavax/security/auth/Subject;
    :try_start_1
    new-instance v3, Lsun/security/ssl/ServerHandshaker$1;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lsun/security/ssl/ServerHandshaker$1;-><init>(Lsun/security/ssl/ServerHandshaker;)V

    .line 497
    invoke-static {v3}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedExceptionAction;)Ljava/lang/Object;

    move-result-object v31

    .end local v31    # "subject":Ljavax/security/auth/Subject;
    check-cast v31, Ljavax/security/auth/Subject;
    :try_end_1
    .catch Ljava/security/PrivilegedActionException; {:try_start_1 .. :try_end_1} :catch_1

    .line 511
    :cond_a
    :goto_4
    if-eqz v31, :cond_1c

    .line 514
    const-class v3, Ljava/security/Principal;

    move-object/from16 v0, v31

    invoke-virtual {v0, v3}, Ljavax/security/auth/Subject;->getPrincipals(Ljava/lang/Class;)Ljava/util/Set;

    move-result-object v26

    .line 515
    .local v26, "principals":Ljava/util/Set;, "Ljava/util/Set<Ljava/security/Principal;>;"
    move-object/from16 v0, v26

    move-object/from16 v1, v17

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1b

    .line 516
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lsun/security/ssl/Handshaker;->resumingSession:Z

    .line 517
    sget-object v3, Lsun/security/ssl/ServerHandshaker;->debug:Lsun/security/ssl/Debug;

    if-eqz v3, :cond_b

    const-string/jumbo v3, "session"

    invoke-static {v3}, Lsun/security/ssl/Debug;->isOn(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_b

    .line 518
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string/jumbo v4, "Subject identity is not the same"

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 538
    .end local v17    # "localPrincipal":Ljava/security/Principal;
    .end local v26    # "principals":Ljava/util/Set;, "Ljava/util/Set<Ljava/security/Principal;>;"
    .end local v32    # "suite":Lsun/security/ssl/CipherSuite;
    :cond_b
    :goto_5
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lsun/security/ssl/Handshaker;->resumingSession:Z

    if-eqz v3, :cond_d

    .line 539
    invoke-virtual/range {v25 .. v25}, Lsun/security/ssl/SSLSessionImpl;->getSuite()Lsun/security/ssl/CipherSuite;

    move-result-object v32

    .line 543
    .restart local v32    # "suite":Lsun/security/ssl/CipherSuite;
    move-object/from16 v0, p0

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Lsun/security/ssl/Handshaker;->isNegotiable(Lsun/security/ssl/CipherSuite;)Z

    move-result v3

    if-eqz v3, :cond_c

    .line 544
    invoke-virtual/range {p1 .. p1}, Lsun/security/ssl/HandshakeMessage$ClientHello;->getCipherSuites()Lsun/security/ssl/CipherSuiteList;

    move-result-object v3

    move-object/from16 v0, v32

    invoke-virtual {v3, v0}, Lsun/security/ssl/CipherSuiteList;->contains(Lsun/security/ssl/CipherSuite;)Z

    move-result v3

    if-nez v3, :cond_1d

    .line 545
    :cond_c
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lsun/security/ssl/Handshaker;->resumingSession:Z

    .line 554
    .end local v32    # "suite":Lsun/security/ssl/CipherSuite;
    :cond_d
    :goto_6
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lsun/security/ssl/Handshaker;->resumingSession:Z

    if-eqz v3, :cond_f

    .line 555
    move-object/from16 v0, v25

    move-object/from16 v1, p0

    iput-object v0, v1, Lsun/security/ssl/Handshaker;->session:Lsun/security/ssl/SSLSessionImpl;

    .line 556
    sget-object v3, Lsun/security/ssl/ServerHandshaker;->debug:Lsun/security/ssl/Debug;

    if-eqz v3, :cond_f

    .line 557
    const-string/jumbo v3, "handshake"

    invoke-static {v3}, Lsun/security/ssl/Debug;->isOn(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_e

    const-string/jumbo v3, "session"

    invoke-static {v3}, Lsun/security/ssl/Debug;->isOn(Ljava/lang/String;)Z

    move-result v3

    .line 556
    if-eqz v3, :cond_f

    .line 558
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

    .line 569
    .end local v25    # "previous":Lsun/security/ssl/SSLSessionImpl;
    :cond_f
    move-object/from16 v0, p0

    iget-object v3, v0, Lsun/security/ssl/Handshaker;->session:Lsun/security/ssl/SSLSessionImpl;

    if-nez v3, :cond_28

    .line 570
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lsun/security/ssl/Handshaker;->enableNewSession:Z

    if-nez v3, :cond_1e

    .line 571
    new-instance v3, Ljavax/net/ssl/SSLException;

    const-string/jumbo v4, "Client did not resume a session"

    invoke-direct {v3, v4}, Ljavax/net/ssl/SSLException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 292
    .end local v12    # "clientHelloRI":Lsun/security/ssl/RenegotiationInfoExtension;
    .end local v19    # "m1":Lsun/security/ssl/HandshakeMessage$ServerHello;
    .end local v28    # "selectedVersion":Lsun/security/ssl/ProtocolVersion;
    :cond_10
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lsun/security/ssl/Handshaker;->secureRenegotiation:Z

    if-eqz v3, :cond_11

    .line 294
    const-string/jumbo v3, "The SCSV is present in a secure renegotiation"

    .line 293
    const/16 v4, 0x28

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v3}, Lsun/security/ssl/Handshaker;->fatalSE(BLjava/lang/String;)V

    goto/16 :goto_0

    .line 297
    :cond_11
    const-string/jumbo v3, "The SCSV is present in a insecure renegotiation"

    .line 296
    const/16 v4, 0x28

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v3}, Lsun/security/ssl/Handshaker;->fatalSE(BLjava/lang/String;)V

    goto/16 :goto_0

    .line 317
    .restart local v12    # "clientHelloRI":Lsun/security/ssl/RenegotiationInfoExtension;
    :cond_12
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lsun/security/ssl/Handshaker;->secureRenegotiation:Z

    if-nez v3, :cond_13

    .line 321
    const-string/jumbo v3, "The renegotiation_info is present in a insecure renegotiation"

    .line 320
    const/16 v4, 0x28

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v3}, Lsun/security/ssl/Handshaker;->fatalSE(BLjava/lang/String;)V

    .line 326
    :cond_13
    move-object/from16 v0, p0

    iget-object v3, v0, Lsun/security/ssl/Handshaker;->clientVerifyData:[B

    .line 327
    invoke-virtual {v12}, Lsun/security/ssl/RenegotiationInfoExtension;->getRenegotiatedConnection()[B

    move-result-object v4

    .line 326
    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v3

    if-nez v3, :cond_3

    .line 329
    const-string/jumbo v3, "Incorrect verify data in ClientHello renegotiation_info message"

    .line 328
    const/16 v4, 0x28

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v3}, Lsun/security/ssl/Handshaker;->fatalSE(BLjava/lang/String;)V

    goto/16 :goto_1

    .line 333
    :cond_14
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lsun/security/ssl/Handshaker;->isInitialHandshake:Z

    if-nez v3, :cond_3

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lsun/security/ssl/Handshaker;->secureRenegotiation:Z

    if-eqz v3, :cond_3

    .line 338
    const-string/jumbo v3, "Inconsistent secure renegotiation indication"

    .line 337
    const/16 v4, 0x28

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v3}, Lsun/security/ssl/Handshaker;->fatalSE(BLjava/lang/String;)V

    goto/16 :goto_1

    .line 344
    :cond_15
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lsun/security/ssl/Handshaker;->isInitialHandshake:Z

    if-eqz v3, :cond_17

    .line 345
    sget-boolean v3, Lsun/security/ssl/ServerHandshaker;->allowLegacyHelloMessages:Z

    if-nez v3, :cond_16

    .line 348
    const-string/jumbo v3, "Failed to negotiate the use of secure renegotiation"

    .line 347
    const/16 v4, 0x28

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v3}, Lsun/security/ssl/Handshaker;->fatalSE(BLjava/lang/String;)V

    .line 352
    :cond_16
    sget-object v3, Lsun/security/ssl/ServerHandshaker;->debug:Lsun/security/ssl/Debug;

    if-eqz v3, :cond_4

    const-string/jumbo v3, "handshake"

    invoke-static {v3}, Lsun/security/ssl/Debug;->isOn(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 353
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string/jumbo v4, "Warning: No renegotiation indication in ClientHello, allow legacy ClientHello"

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 356
    :cond_17
    sget-boolean v3, Lsun/security/ssl/ServerHandshaker;->allowUnsafeRenegotiation:Z

    if-nez v3, :cond_1a

    .line 358
    move-object/from16 v0, p0

    iget-object v3, v0, Lsun/security/ssl/Handshaker;->activeProtocolVersion:Lsun/security/ssl/ProtocolVersion;

    iget v3, v3, Lsun/security/ssl/ProtocolVersion;->v:I

    sget-object v4, Lsun/security/ssl/ProtocolVersion;->TLS10:Lsun/security/ssl/ProtocolVersion;

    iget v4, v4, Lsun/security/ssl/ProtocolVersion;->v:I

    if-lt v3, v4, :cond_19

    .line 360
    const/16 v3, 0x64

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lsun/security/ssl/Handshaker;->warningSE(B)V

    .line 364
    const/4 v3, 0x1

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lsun/security/ssl/Handshaker;->invalidated:Z

    .line 375
    move-object/from16 v0, p0

    iget-object v3, v0, Lsun/security/ssl/Handshaker;->input:Lsun/security/ssl/HandshakeInStream;

    invoke-virtual {v3}, Lsun/security/ssl/HandshakeInStream;->available()I

    move-result v3

    if-lez v3, :cond_18

    .line 377
    const-string/jumbo v3, "ClientHello followed by an unexpected  handshake message"

    .line 376
    const/16 v4, 0xa

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v3}, Lsun/security/ssl/Handshaker;->fatalSE(BLjava/lang/String;)V

    .line 381
    :cond_18
    return-void

    .line 389
    :cond_19
    const-string/jumbo v3, "Renegotiation is not allowed"

    .line 388
    const/16 v4, 0x28

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v3}, Lsun/security/ssl/Handshaker;->fatalSE(BLjava/lang/String;)V

    goto/16 :goto_2

    .line 393
    :cond_1a
    sget-object v3, Lsun/security/ssl/ServerHandshaker;->debug:Lsun/security/ssl/Debug;

    if-eqz v3, :cond_4

    const-string/jumbo v3, "handshake"

    invoke-static {v3}, Lsun/security/ssl/Debug;->isOn(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 394
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    .line 395
    const-string/jumbo v4, "Warning: continue with insecure renegotiation"

    .line 394
    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 483
    .restart local v19    # "m1":Lsun/security/ssl/HandshakeMessage$ServerHello;
    .restart local v25    # "previous":Lsun/security/ssl/SSLSessionImpl;
    .restart local v28    # "selectedVersion":Lsun/security/ssl/ProtocolVersion;
    :catch_0
    move-exception v15

    .line 484
    .local v15, "e":Ljavax/net/ssl/SSLPeerUnverifiedException;
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lsun/security/ssl/Handshaker;->resumingSession:Z

    goto/16 :goto_3

    .line 503
    .end local v15    # "e":Ljavax/net/ssl/SSLPeerUnverifiedException;
    .restart local v17    # "localPrincipal":Ljava/security/Principal;
    .restart local v32    # "suite":Lsun/security/ssl/CipherSuite;
    :catch_1
    move-exception v14

    .line 504
    .local v14, "e":Ljava/security/PrivilegedActionException;
    const/16 v31, 0x0

    .line 505
    .restart local v31    # "subject":Ljavax/security/auth/Subject;
    sget-object v3, Lsun/security/ssl/ServerHandshaker;->debug:Lsun/security/ssl/Debug;

    if-eqz v3, :cond_a

    const-string/jumbo v3, "session"

    invoke-static {v3}, Lsun/security/ssl/Debug;->isOn(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_a

    .line 506
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string/jumbo v4, "Attempt to obtain subject failed!"

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto/16 :goto_4

    .line 522
    .end local v14    # "e":Ljava/security/PrivilegedActionException;
    .end local v31    # "subject":Ljavax/security/auth/Subject;
    .restart local v26    # "principals":Ljava/util/Set;, "Ljava/util/Set<Ljava/security/Principal;>;"
    :cond_1b
    sget-object v3, Lsun/security/ssl/ServerHandshaker;->debug:Lsun/security/ssl/Debug;

    if-eqz v3, :cond_b

    const-string/jumbo v3, "session"

    invoke-static {v3}, Lsun/security/ssl/Debug;->isOn(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_b

    .line 523
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string/jumbo v4, "Subject identity is same"

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto/16 :goto_5

    .line 527
    .end local v26    # "principals":Ljava/util/Set;, "Ljava/util/Set<Ljava/security/Principal;>;"
    :cond_1c
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lsun/security/ssl/Handshaker;->resumingSession:Z

    .line 528
    sget-object v3, Lsun/security/ssl/ServerHandshaker;->debug:Lsun/security/ssl/Debug;

    if-eqz v3, :cond_b

    const-string/jumbo v3, "session"

    invoke-static {v3}, Lsun/security/ssl/Debug;->isOn(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_b

    .line 529
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string/jumbo v4, "Kerberos credentials are not present in the current Subject; check if  javax.security.auth.useSubjectAsCreds system property has been set to false"

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto/16 :goto_5

    .line 550
    .end local v17    # "localPrincipal":Ljava/security/Principal;
    :cond_1d
    move-object/from16 v0, p0

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Lsun/security/ssl/Handshaker;->setCipherSuite(Lsun/security/ssl/CipherSuite;)V

    goto/16 :goto_6

    .line 575
    .end local v25    # "previous":Lsun/security/ssl/SSLSessionImpl;
    .end local v32    # "suite":Lsun/security/ssl/CipherSuite;
    :cond_1e
    move-object/from16 v0, p1

    iget-object v3, v0, Lsun/security/ssl/HandshakeMessage$ClientHello;->extensions:Lsun/security/ssl/HelloExtensions;

    sget-object v4, Lsun/security/ssl/ExtensionType;->EXT_ELLIPTIC_CURVES:Lsun/security/ssl/ExtensionType;

    invoke-virtual {v3, v4}, Lsun/security/ssl/HelloExtensions;->get(Lsun/security/ssl/ExtensionType;)Lsun/security/ssl/HelloExtension;

    move-result-object v3

    .line 574
    check-cast v3, Lsun/security/ssl/SupportedEllipticCurvesExtension;

    move-object/from16 v0, p0

    iput-object v3, v0, Lsun/security/ssl/ServerHandshaker;->supportedCurves:Lsun/security/ssl/SupportedEllipticCurvesExtension;

    .line 579
    move-object/from16 v0, p0

    iget-object v3, v0, Lsun/security/ssl/Handshaker;->protocolVersion:Lsun/security/ssl/ProtocolVersion;

    iget v3, v3, Lsun/security/ssl/ProtocolVersion;->v:I

    sget-object v4, Lsun/security/ssl/ProtocolVersion;->TLS12:Lsun/security/ssl/ProtocolVersion;

    iget v4, v4, Lsun/security/ssl/ProtocolVersion;->v:I

    if-lt v3, v4, :cond_22

    .line 581
    move-object/from16 v0, p1

    iget-object v3, v0, Lsun/security/ssl/HandshakeMessage$ClientHello;->extensions:Lsun/security/ssl/HelloExtensions;

    .line 582
    sget-object v4, Lsun/security/ssl/ExtensionType;->EXT_SIGNATURE_ALGORITHMS:Lsun/security/ssl/ExtensionType;

    .line 581
    invoke-virtual {v3, v4}, Lsun/security/ssl/HelloExtensions;->get(Lsun/security/ssl/ExtensionType;)Lsun/security/ssl/HelloExtension;

    move-result-object v30

    check-cast v30, Lsun/security/ssl/SignatureAlgorithmsExtension;

    .line 583
    .local v30, "signAlgs":Lsun/security/ssl/SignatureAlgorithmsExtension;
    if-eqz v30, :cond_22

    .line 585
    invoke-virtual/range {v30 .. v30}, Lsun/security/ssl/SignatureAlgorithmsExtension;->getSignAlgorithms()Ljava/util/Collection;

    move-result-object v24

    .line 586
    .local v24, "peerSignAlgs":Ljava/util/Collection;, "Ljava/util/Collection<Lsun/security/ssl/SignatureAndHashAlgorithm;>;"
    if-eqz v24, :cond_1f

    invoke-interface/range {v24 .. v24}, Ljava/util/Collection;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_20

    .line 587
    :cond_1f
    new-instance v3, Ljavax/net/ssl/SSLHandshakeException;

    .line 588
    const-string/jumbo v4, "No peer supported signature algorithms"

    .line 587
    invoke-direct {v3, v4}, Ljavax/net/ssl/SSLHandshakeException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 593
    :cond_20
    invoke-static/range {v24 .. v24}, Lsun/security/ssl/SignatureAndHashAlgorithm;->getSupportedAlgorithms(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v33

    .line 595
    .local v33, "supportedPeerSignAlgs":Ljava/util/Collection;, "Ljava/util/Collection<Lsun/security/ssl/SignatureAndHashAlgorithm;>;"
    invoke-interface/range {v33 .. v33}, Ljava/util/Collection;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_21

    .line 596
    new-instance v3, Ljavax/net/ssl/SSLHandshakeException;

    .line 597
    const-string/jumbo v4, "No supported signature and hash algorithm in common"

    .line 596
    invoke-direct {v3, v4}, Ljavax/net/ssl/SSLHandshakeException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 601
    :cond_21
    move-object/from16 v0, p0

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Lsun/security/ssl/Handshaker;->setPeerSupportedSignAlgs(Ljava/util/Collection;)V

    .line 605
    .end local v24    # "peerSignAlgs":Ljava/util/Collection;, "Ljava/util/Collection<Lsun/security/ssl/SignatureAndHashAlgorithm;>;"
    .end local v30    # "signAlgs":Lsun/security/ssl/SignatureAlgorithmsExtension;
    .end local v33    # "supportedPeerSignAlgs":Ljava/util/Collection;, "Ljava/util/Collection<Lsun/security/ssl/SignatureAndHashAlgorithm;>;"
    :cond_22
    new-instance v2, Lsun/security/ssl/SSLSessionImpl;

    move-object/from16 v0, p0

    iget-object v3, v0, Lsun/security/ssl/Handshaker;->protocolVersion:Lsun/security/ssl/ProtocolVersion;

    sget-object v4, Lsun/security/ssl/CipherSuite;->C_NULL:Lsun/security/ssl/CipherSuite;

    .line 606
    invoke-virtual/range {p0 .. p0}, Lsun/security/ssl/Handshaker;->getLocalSupportedSignAlgs()Ljava/util/Collection;

    move-result-object v5

    .line 607
    move-object/from16 v0, p0

    iget-object v6, v0, Lsun/security/ssl/Handshaker;->sslContext:Lsun/security/ssl/SSLContextImpl;

    invoke-virtual {v6}, Lsun/security/ssl/SSLContextImpl;->getSecureRandom()Ljava/security/SecureRandom;

    move-result-object v6

    .line 608
    invoke-virtual/range {p0 .. p0}, Lsun/security/ssl/Handshaker;->getHostAddressSE()Ljava/lang/String;

    move-result-object v7

    invoke-virtual/range {p0 .. p0}, Lsun/security/ssl/Handshaker;->getPortSE()I

    move-result v8

    .line 605
    invoke-direct/range {v2 .. v8}, Lsun/security/ssl/SSLSessionImpl;-><init>(Lsun/security/ssl/ProtocolVersion;Lsun/security/ssl/CipherSuite;Ljava/util/Collection;Ljava/security/SecureRandom;Ljava/lang/String;I)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lsun/security/ssl/Handshaker;->session:Lsun/security/ssl/SSLSessionImpl;

    .line 610
    move-object/from16 v0, p0

    iget-object v3, v0, Lsun/security/ssl/Handshaker;->protocolVersion:Lsun/security/ssl/ProtocolVersion;

    iget v3, v3, Lsun/security/ssl/ProtocolVersion;->v:I

    sget-object v4, Lsun/security/ssl/ProtocolVersion;->TLS12:Lsun/security/ssl/ProtocolVersion;

    iget v4, v4, Lsun/security/ssl/ProtocolVersion;->v:I

    if-lt v3, v4, :cond_23

    .line 611
    move-object/from16 v0, p0

    iget-object v3, v0, Lsun/security/ssl/Handshaker;->peerSupportedSignAlgs:Ljava/util/Collection;

    if-eqz v3, :cond_23

    .line 612
    move-object/from16 v0, p0

    iget-object v3, v0, Lsun/security/ssl/Handshaker;->session:Lsun/security/ssl/SSLSessionImpl;

    .line 613
    move-object/from16 v0, p0

    iget-object v4, v0, Lsun/security/ssl/Handshaker;->peerSupportedSignAlgs:Ljava/util/Collection;

    .line 612
    invoke-virtual {v3, v4}, Lsun/security/ssl/SSLSessionImpl;->setPeerSupportedSignatureAlgorithms(Ljava/util/Collection;)V

    .line 619
    :cond_23
    move-object/from16 v0, p0

    iget-object v3, v0, Lsun/security/ssl/Handshaker;->session:Lsun/security/ssl/SSLSessionImpl;

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lsun/security/ssl/Handshaker;->setHandshakeSessionSE(Lsun/security/ssl/SSLSessionImpl;)V

    .line 622
    invoke-direct/range {p0 .. p1}, Lsun/security/ssl/ServerHandshaker;->chooseCipherSuite(Lsun/security/ssl/HandshakeMessage$ClientHello;)V

    .line 624
    move-object/from16 v0, p0

    iget-object v3, v0, Lsun/security/ssl/Handshaker;->session:Lsun/security/ssl/SSLSessionImpl;

    move-object/from16 v0, p0

    iget-object v4, v0, Lsun/security/ssl/Handshaker;->cipherSuite:Lsun/security/ssl/CipherSuite;

    invoke-virtual {v3, v4}, Lsun/security/ssl/SSLSessionImpl;->setSuite(Lsun/security/ssl/CipherSuite;)V

    .line 625
    move-object/from16 v0, p0

    iget-object v3, v0, Lsun/security/ssl/Handshaker;->session:Lsun/security/ssl/SSLSessionImpl;

    move-object/from16 v0, p0

    iget-object v4, v0, Lsun/security/ssl/ServerHandshaker;->privateKey:Ljava/security/PrivateKey;

    invoke-virtual {v3, v4}, Lsun/security/ssl/SSLSessionImpl;->setLocalPrivateKey(Ljava/security/PrivateKey;)V

    .line 633
    :goto_7
    move-object/from16 v0, p0

    iget-object v3, v0, Lsun/security/ssl/Handshaker;->protocolVersion:Lsun/security/ssl/ProtocolVersion;

    iget v3, v3, Lsun/security/ssl/ProtocolVersion;->v:I

    sget-object v4, Lsun/security/ssl/ProtocolVersion;->TLS12:Lsun/security/ssl/ProtocolVersion;

    iget v4, v4, Lsun/security/ssl/ProtocolVersion;->v:I

    if-lt v3, v4, :cond_25

    .line 634
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lsun/security/ssl/Handshaker;->resumingSession:Z

    if-eqz v3, :cond_24

    .line 635
    move-object/from16 v0, p0

    iget-object v3, v0, Lsun/security/ssl/Handshaker;->handshakeHash:Lsun/security/ssl/HandshakeHash;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lsun/security/ssl/HandshakeHash;->setCertificateVerifyAlg(Ljava/lang/String;)V

    .line 637
    :cond_24
    move-object/from16 v0, p0

    iget-object v3, v0, Lsun/security/ssl/Handshaker;->handshakeHash:Lsun/security/ssl/HandshakeHash;

    move-object/from16 v0, p0

    iget-object v4, v0, Lsun/security/ssl/Handshaker;->cipherSuite:Lsun/security/ssl/CipherSuite;

    iget-object v4, v4, Lsun/security/ssl/CipherSuite;->prfAlg:Lsun/security/ssl/CipherSuite$PRF;

    invoke-virtual {v4}, Lsun/security/ssl/CipherSuite$PRF;->getPRFHashAlg()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lsun/security/ssl/HandshakeHash;->setFinishedAlg(Ljava/lang/String;)V

    .line 640
    :cond_25
    move-object/from16 v0, p0

    iget-object v3, v0, Lsun/security/ssl/Handshaker;->cipherSuite:Lsun/security/ssl/CipherSuite;

    move-object/from16 v0, v19

    iput-object v3, v0, Lsun/security/ssl/HandshakeMessage$ServerHello;->cipherSuite:Lsun/security/ssl/CipherSuite;

    .line 641
    move-object/from16 v0, p0

    iget-object v3, v0, Lsun/security/ssl/Handshaker;->session:Lsun/security/ssl/SSLSessionImpl;

    invoke-virtual {v3}, Lsun/security/ssl/SSLSessionImpl;->getSessionId()Lsun/security/ssl/SessionId;

    move-result-object v3

    move-object/from16 v0, v19

    iput-object v3, v0, Lsun/security/ssl/HandshakeMessage$ServerHello;->sessionId:Lsun/security/ssl/SessionId;

    .line 642
    move-object/from16 v0, p0

    iget-object v3, v0, Lsun/security/ssl/Handshaker;->session:Lsun/security/ssl/SSLSessionImpl;

    invoke-virtual {v3}, Lsun/security/ssl/SSLSessionImpl;->getCompression()B

    move-result v3

    move-object/from16 v0, v19

    iput-byte v3, v0, Lsun/security/ssl/HandshakeMessage$ServerHello;->compression_method:B

    .line 644
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lsun/security/ssl/Handshaker;->secureRenegotiation:Z

    if-eqz v3, :cond_26

    .line 654
    new-instance v29, Lsun/security/ssl/RenegotiationInfoExtension;

    .line 655
    move-object/from16 v0, p0

    iget-object v3, v0, Lsun/security/ssl/Handshaker;->clientVerifyData:[B

    move-object/from16 v0, p0

    iget-object v4, v0, Lsun/security/ssl/Handshaker;->serverVerifyData:[B

    .line 654
    move-object/from16 v0, v29

    invoke-direct {v0, v3, v4}, Lsun/security/ssl/RenegotiationInfoExtension;-><init>([B[B)V

    .line 656
    .local v29, "serverHelloRI":Lsun/security/ssl/HelloExtension;
    move-object/from16 v0, v19

    iget-object v3, v0, Lsun/security/ssl/HandshakeMessage$ServerHello;->extensions:Lsun/security/ssl/HelloExtensions;

    move-object/from16 v0, v29

    invoke-virtual {v3, v0}, Lsun/security/ssl/HelloExtensions;->add(Lsun/security/ssl/HelloExtension;)V

    .line 659
    .end local v29    # "serverHelloRI":Lsun/security/ssl/HelloExtension;
    :cond_26
    sget-object v3, Lsun/security/ssl/ServerHandshaker;->debug:Lsun/security/ssl/Debug;

    if-eqz v3, :cond_27

    const-string/jumbo v3, "handshake"

    invoke-static {v3}, Lsun/security/ssl/Debug;->isOn(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_27

    .line 660
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    move-object/from16 v0, v19

    invoke-virtual {v0, v3}, Lsun/security/ssl/HandshakeMessage$ServerHello;->print(Ljava/io/PrintStream;)V

    .line 661
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

    .line 663
    :cond_27
    move-object/from16 v0, p0

    iget-object v3, v0, Lsun/security/ssl/Handshaker;->output:Lsun/security/ssl/HandshakeOutStream;

    move-object/from16 v0, v19

    invoke-virtual {v0, v3}, Lsun/security/ssl/HandshakeMessage;->write(Lsun/security/ssl/HandshakeOutStream;)V

    .line 669
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lsun/security/ssl/Handshaker;->resumingSession:Z

    if-eqz v3, :cond_29

    .line 670
    move-object/from16 v0, p0

    iget-object v3, v0, Lsun/security/ssl/Handshaker;->session:Lsun/security/ssl/SSLSessionImpl;

    invoke-virtual {v3}, Lsun/security/ssl/SSLSessionImpl;->getMasterSecret()Ljavax/crypto/SecretKey;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lsun/security/ssl/Handshaker;->calculateConnectionKeys(Ljavax/crypto/SecretKey;)V

    .line 671
    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lsun/security/ssl/ServerHandshaker;->sendChangeCipherAndFinish(Z)V

    .line 672
    return-void

    .line 630
    :cond_28
    move-object/from16 v0, p0

    iget-object v3, v0, Lsun/security/ssl/Handshaker;->session:Lsun/security/ssl/SSLSessionImpl;

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lsun/security/ssl/Handshaker;->setHandshakeSessionSE(Lsun/security/ssl/SSLSessionImpl;)V

    goto/16 :goto_7

    .line 684
    :cond_29
    move-object/from16 v0, p0

    iget-object v3, v0, Lsun/security/ssl/Handshaker;->keyExchange:Lsun/security/ssl/CipherSuite$KeyExchange;

    sget-object v4, Lsun/security/ssl/CipherSuite$KeyExchange;->K_KRB5:Lsun/security/ssl/CipherSuite$KeyExchange;

    if-eq v3, v4, :cond_2a

    move-object/from16 v0, p0

    iget-object v3, v0, Lsun/security/ssl/Handshaker;->keyExchange:Lsun/security/ssl/CipherSuite$KeyExchange;

    sget-object v4, Lsun/security/ssl/CipherSuite$KeyExchange;->K_KRB5_EXPORT:Lsun/security/ssl/CipherSuite$KeyExchange;

    if-ne v3, v4, :cond_2b

    .line 725
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

    .line 791
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

    .line 687
    :cond_2b
    move-object/from16 v0, p0

    iget-object v3, v0, Lsun/security/ssl/Handshaker;->keyExchange:Lsun/security/ssl/CipherSuite$KeyExchange;

    sget-object v4, Lsun/security/ssl/CipherSuite$KeyExchange;->K_DH_ANON:Lsun/security/ssl/CipherSuite$KeyExchange;

    if-eq v3, v4, :cond_2e

    move-object/from16 v0, p0

    iget-object v3, v0, Lsun/security/ssl/Handshaker;->keyExchange:Lsun/security/ssl/CipherSuite$KeyExchange;

    sget-object v4, Lsun/security/ssl/CipherSuite$KeyExchange;->K_ECDH_ANON:Lsun/security/ssl/CipherSuite$KeyExchange;

    if-eq v3, v4, :cond_2e

    .line 688
    move-object/from16 v0, p0

    iget-object v3, v0, Lsun/security/ssl/ServerHandshaker;->certs:[Ljava/security/cert/X509Certificate;

    if-nez v3, :cond_2c

    .line 689
    new-instance v3, Ljava/lang/RuntimeException;

    const-string/jumbo v4, "no certificates"

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 692
    :cond_2c
    new-instance v20, Lsun/security/ssl/HandshakeMessage$CertificateMsg;

    move-object/from16 v0, p0

    iget-object v3, v0, Lsun/security/ssl/ServerHandshaker;->certs:[Ljava/security/cert/X509Certificate;

    move-object/from16 v0, v20

    invoke-direct {v0, v3}, Lsun/security/ssl/HandshakeMessage$CertificateMsg;-><init>([Ljava/security/cert/X509Certificate;)V

    .line 698
    .local v20, "m2":Lsun/security/ssl/HandshakeMessage$CertificateMsg;
    move-object/from16 v0, p0

    iget-object v3, v0, Lsun/security/ssl/Handshaker;->session:Lsun/security/ssl/SSLSessionImpl;

    move-object/from16 v0, p0

    iget-object v4, v0, Lsun/security/ssl/ServerHandshaker;->certs:[Ljava/security/cert/X509Certificate;

    invoke-virtual {v3, v4}, Lsun/security/ssl/SSLSessionImpl;->setLocalCertificates([Ljava/security/cert/X509Certificate;)V

    .line 699
    sget-object v3, Lsun/security/ssl/ServerHandshaker;->debug:Lsun/security/ssl/Debug;

    if-eqz v3, :cond_2d

    const-string/jumbo v3, "handshake"

    invoke-static {v3}, Lsun/security/ssl/Debug;->isOn(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2d

    .line 700
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    move-object/from16 v0, v20

    invoke-virtual {v0, v3}, Lsun/security/ssl/HandshakeMessage$CertificateMsg;->print(Ljava/io/PrintStream;)V

    .line 702
    :cond_2d
    move-object/from16 v0, p0

    iget-object v3, v0, Lsun/security/ssl/Handshaker;->output:Lsun/security/ssl/HandshakeOutStream;

    move-object/from16 v0, v20

    invoke-virtual {v0, v3}, Lsun/security/ssl/HandshakeMessage;->write(Lsun/security/ssl/HandshakeOutStream;)V

    goto/16 :goto_8

    .line 710
    .end local v20    # "m2":Lsun/security/ssl/HandshakeMessage$CertificateMsg;
    :cond_2e
    move-object/from16 v0, p0

    iget-object v3, v0, Lsun/security/ssl/ServerHandshaker;->certs:[Ljava/security/cert/X509Certificate;

    if-eqz v3, :cond_2a

    .line 711
    new-instance v3, Ljava/lang/RuntimeException;

    const-string/jumbo v4, "anonymous keyexchange with certs"

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 730
    :pswitch_1
    const/4 v2, 0x0

    .line 793
    :goto_9
    if-eqz v2, :cond_30

    .line 794
    sget-object v3, Lsun/security/ssl/ServerHandshaker;->debug:Lsun/security/ssl/Debug;

    if-eqz v3, :cond_2f

    const-string/jumbo v3, "handshake"

    invoke-static {v3}, Lsun/security/ssl/Debug;->isOn(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2f

    .line 795
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v2, v3}, Lsun/security/ssl/HandshakeMessage;->print(Ljava/io/PrintStream;)V

    .line 797
    :cond_2f
    move-object/from16 v0, p0

    iget-object v3, v0, Lsun/security/ssl/Handshaker;->output:Lsun/security/ssl/HandshakeOutStream;

    invoke-virtual {v2, v3}, Lsun/security/ssl/HandshakeMessage;->write(Lsun/security/ssl/HandshakeOutStream;)V

    .line 811
    :cond_30
    move-object/from16 v0, p0

    iget-byte v3, v0, Lsun/security/ssl/ServerHandshaker;->doClientAuth:B

    if-eqz v3, :cond_38

    .line 812
    move-object/from16 v0, p0

    iget-object v3, v0, Lsun/security/ssl/Handshaker;->keyExchange:Lsun/security/ssl/CipherSuite$KeyExchange;

    sget-object v4, Lsun/security/ssl/CipherSuite$KeyExchange;->K_DH_ANON:Lsun/security/ssl/CipherSuite$KeyExchange;

    if-eq v3, v4, :cond_38

    move-object/from16 v0, p0

    iget-object v3, v0, Lsun/security/ssl/Handshaker;->keyExchange:Lsun/security/ssl/CipherSuite$KeyExchange;

    sget-object v4, Lsun/security/ssl/CipherSuite$KeyExchange;->K_ECDH_ANON:Lsun/security/ssl/CipherSuite$KeyExchange;

    if-eq v3, v4, :cond_38

    .line 813
    move-object/from16 v0, p0

    iget-object v3, v0, Lsun/security/ssl/Handshaker;->keyExchange:Lsun/security/ssl/CipherSuite$KeyExchange;

    sget-object v4, Lsun/security/ssl/CipherSuite$KeyExchange;->K_KRB5:Lsun/security/ssl/CipherSuite$KeyExchange;

    if-eq v3, v4, :cond_38

    move-object/from16 v0, p0

    iget-object v3, v0, Lsun/security/ssl/Handshaker;->keyExchange:Lsun/security/ssl/CipherSuite$KeyExchange;

    sget-object v4, Lsun/security/ssl/CipherSuite$KeyExchange;->K_KRB5_EXPORT:Lsun/security/ssl/CipherSuite$KeyExchange;

    if-eq v3, v4, :cond_38

    .line 818
    const/16 v18, 0x0

    .line 819
    .local v18, "localSignAlgs":Ljava/util/Collection;, "Ljava/util/Collection<Lsun/security/ssl/SignatureAndHashAlgorithm;>;"
    move-object/from16 v0, p0

    iget-object v3, v0, Lsun/security/ssl/Handshaker;->protocolVersion:Lsun/security/ssl/ProtocolVersion;

    iget v3, v3, Lsun/security/ssl/ProtocolVersion;->v:I

    sget-object v4, Lsun/security/ssl/ProtocolVersion;->TLS12:Lsun/security/ssl/ProtocolVersion;

    iget v4, v4, Lsun/security/ssl/ProtocolVersion;->v:I

    if-lt v3, v4, :cond_34

    .line 824
    invoke-virtual/range {p0 .. p0}, Lsun/security/ssl/Handshaker;->getLocalSupportedSignAlgs()Ljava/util/Collection;

    move-result-object v18

    .line 825
    .local v18, "localSignAlgs":Ljava/util/Collection;, "Ljava/util/Collection<Lsun/security/ssl/SignatureAndHashAlgorithm;>;"
    invoke-interface/range {v18 .. v18}, Ljava/util/Collection;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_32

    .line 826
    new-instance v3, Ljavax/net/ssl/SSLHandshakeException;

    .line 827
    const-string/jumbo v4, "No supported signature algorithm"

    .line 826
    invoke-direct {v3, v4}, Ljavax/net/ssl/SSLHandshakeException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 733
    .end local v18    # "localSignAlgs":Ljava/util/Collection;, "Ljava/util/Collection<Lsun/security/ssl/SignatureAndHashAlgorithm;>;"
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

    .line 735
    :try_start_2
    new-instance v2, Lsun/security/ssl/HandshakeMessage$RSA_ServerKeyExchange;

    .line 736
    move-object/from16 v0, p0

    iget-object v3, v0, Lsun/security/ssl/ServerHandshaker;->tempPublicKey:Ljava/security/PublicKey;

    move-object/from16 v0, p0

    iget-object v4, v0, Lsun/security/ssl/ServerHandshaker;->privateKey:Ljava/security/PrivateKey;

    .line 737
    move-object/from16 v0, p0

    iget-object v5, v0, Lsun/security/ssl/Handshaker;->clnt_random:Lsun/security/ssl/RandomCookie;

    move-object/from16 v0, p0

    iget-object v6, v0, Lsun/security/ssl/Handshaker;->svr_random:Lsun/security/ssl/RandomCookie;

    .line 738
    move-object/from16 v0, p0

    iget-object v7, v0, Lsun/security/ssl/Handshaker;->sslContext:Lsun/security/ssl/SSLContextImpl;

    invoke-virtual {v7}, Lsun/security/ssl/SSLContextImpl;->getSecureRandom()Ljava/security/SecureRandom;

    move-result-object v7

    .line 735
    invoke-direct/range {v2 .. v7}, Lsun/security/ssl/HandshakeMessage$RSA_ServerKeyExchange;-><init>(Ljava/security/PublicKey;Ljava/security/PrivateKey;Lsun/security/ssl/RandomCookie;Lsun/security/ssl/RandomCookie;Ljava/security/SecureRandom;)V

    .line 739
    .local v2, "m3":Lsun/security/ssl/HandshakeMessage$ServerKeyExchange;
    move-object/from16 v0, p0

    iget-object v3, v0, Lsun/security/ssl/ServerHandshaker;->tempPrivateKey:Ljava/security/PrivateKey;

    move-object/from16 v0, p0

    iput-object v3, v0, Lsun/security/ssl/ServerHandshaker;->privateKey:Ljava/security/PrivateKey;
    :try_end_2
    .catch Ljava/security/GeneralSecurityException; {:try_start_2 .. :try_end_2} :catch_2

    goto/16 :goto_9

    .line 740
    .end local v2    # "m3":Lsun/security/ssl/HandshakeMessage$ServerKeyExchange;
    :catch_2
    move-exception v13

    .line 742
    .local v13, "e":Ljava/security/GeneralSecurityException;
    const-string/jumbo v3, "Error generating RSA server key exchange"

    .line 741
    invoke-static {v3, v13}, Lsun/security/ssl/ServerHandshaker;->throwSSLException(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 743
    const/4 v2, 0x0

    .local v2, "m3":Lsun/security/ssl/HandshakeMessage$ServerKeyExchange;
    goto/16 :goto_9

    .line 747
    .end local v2    # "m3":Lsun/security/ssl/HandshakeMessage$ServerKeyExchange;
    .end local v13    # "e":Ljava/security/GeneralSecurityException;
    :cond_31
    const/4 v2, 0x0

    .restart local v2    # "m3":Lsun/security/ssl/HandshakeMessage$ServerKeyExchange;
    goto/16 :goto_9

    .line 753
    .end local v2    # "m3":Lsun/security/ssl/HandshakeMessage$ServerKeyExchange;
    :pswitch_3
    :try_start_3
    new-instance v2, Lsun/security/ssl/HandshakeMessage$DH_ServerKeyExchange;

    move-object/from16 v0, p0

    iget-object v3, v0, Lsun/security/ssl/ServerHandshaker;->dh:Lsun/security/ssl/DHCrypt;

    .line 754
    move-object/from16 v0, p0

    iget-object v4, v0, Lsun/security/ssl/ServerHandshaker;->privateKey:Ljava/security/PrivateKey;

    .line 755
    move-object/from16 v0, p0

    iget-object v5, v0, Lsun/security/ssl/Handshaker;->clnt_random:Lsun/security/ssl/RandomCookie;

    iget-object v5, v5, Lsun/security/ssl/RandomCookie;->random_bytes:[B

    .line 756
    move-object/from16 v0, p0

    iget-object v6, v0, Lsun/security/ssl/Handshaker;->svr_random:Lsun/security/ssl/RandomCookie;

    iget-object v6, v6, Lsun/security/ssl/RandomCookie;->random_bytes:[B

    .line 757
    move-object/from16 v0, p0

    iget-object v7, v0, Lsun/security/ssl/Handshaker;->sslContext:Lsun/security/ssl/SSLContextImpl;

    invoke-virtual {v7}, Lsun/security/ssl/SSLContextImpl;->getSecureRandom()Ljava/security/SecureRandom;

    move-result-object v7

    .line 758
    move-object/from16 v0, p0

    iget-object v8, v0, Lsun/security/ssl/ServerHandshaker;->preferableSignatureAlgorithm:Lsun/security/ssl/SignatureAndHashAlgorithm;

    .line 759
    move-object/from16 v0, p0

    iget-object v9, v0, Lsun/security/ssl/Handshaker;->protocolVersion:Lsun/security/ssl/ProtocolVersion;

    .line 753
    invoke-direct/range {v2 .. v9}, Lsun/security/ssl/HandshakeMessage$DH_ServerKeyExchange;-><init>(Lsun/security/ssl/DHCrypt;Ljava/security/PrivateKey;[B[BLjava/security/SecureRandom;Lsun/security/ssl/SignatureAndHashAlgorithm;Lsun/security/ssl/ProtocolVersion;)V
    :try_end_3
    .catch Ljava/security/GeneralSecurityException; {:try_start_3 .. :try_end_3} :catch_3

    .local v2, "m3":Lsun/security/ssl/HandshakeMessage$ServerKeyExchange;
    goto/16 :goto_9

    .line 760
    .end local v2    # "m3":Lsun/security/ssl/HandshakeMessage$ServerKeyExchange;
    :catch_3
    move-exception v13

    .line 761
    .restart local v13    # "e":Ljava/security/GeneralSecurityException;
    const-string/jumbo v3, "Error generating DH server key exchange"

    invoke-static {v3, v13}, Lsun/security/ssl/ServerHandshaker;->throwSSLException(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 762
    const/4 v2, 0x0

    .local v2, "m3":Lsun/security/ssl/HandshakeMessage$ServerKeyExchange;
    goto/16 :goto_9

    .line 766
    .end local v2    # "m3":Lsun/security/ssl/HandshakeMessage$ServerKeyExchange;
    .end local v13    # "e":Ljava/security/GeneralSecurityException;
    :pswitch_4
    new-instance v2, Lsun/security/ssl/HandshakeMessage$DH_ServerKeyExchange;

    move-object/from16 v0, p0

    iget-object v3, v0, Lsun/security/ssl/ServerHandshaker;->dh:Lsun/security/ssl/DHCrypt;

    move-object/from16 v0, p0

    iget-object v4, v0, Lsun/security/ssl/Handshaker;->protocolVersion:Lsun/security/ssl/ProtocolVersion;

    invoke-direct {v2, v3, v4}, Lsun/security/ssl/HandshakeMessage$DH_ServerKeyExchange;-><init>(Lsun/security/ssl/DHCrypt;Lsun/security/ssl/ProtocolVersion;)V

    .line 767
    .local v2, "m3":Lsun/security/ssl/HandshakeMessage$ServerKeyExchange;
    goto/16 :goto_9

    .line 772
    .end local v2    # "m3":Lsun/security/ssl/HandshakeMessage$ServerKeyExchange;
    :pswitch_5
    :try_start_4
    new-instance v2, Lsun/security/ssl/HandshakeMessage$ECDH_ServerKeyExchange;

    move-object/from16 v0, p0

    iget-object v3, v0, Lsun/security/ssl/ServerHandshaker;->ecdh:Lsun/security/ssl/ECDHCrypt;

    .line 773
    move-object/from16 v0, p0

    iget-object v4, v0, Lsun/security/ssl/ServerHandshaker;->privateKey:Ljava/security/PrivateKey;

    .line 774
    move-object/from16 v0, p0

    iget-object v5, v0, Lsun/security/ssl/Handshaker;->clnt_random:Lsun/security/ssl/RandomCookie;

    iget-object v5, v5, Lsun/security/ssl/RandomCookie;->random_bytes:[B

    .line 775
    move-object/from16 v0, p0

    iget-object v6, v0, Lsun/security/ssl/Handshaker;->svr_random:Lsun/security/ssl/RandomCookie;

    iget-object v6, v6, Lsun/security/ssl/RandomCookie;->random_bytes:[B

    .line 776
    move-object/from16 v0, p0

    iget-object v7, v0, Lsun/security/ssl/Handshaker;->sslContext:Lsun/security/ssl/SSLContextImpl;

    invoke-virtual {v7}, Lsun/security/ssl/SSLContextImpl;->getSecureRandom()Ljava/security/SecureRandom;

    move-result-object v7

    .line 777
    move-object/from16 v0, p0

    iget-object v8, v0, Lsun/security/ssl/ServerHandshaker;->preferableSignatureAlgorithm:Lsun/security/ssl/SignatureAndHashAlgorithm;

    .line 778
    move-object/from16 v0, p0

    iget-object v9, v0, Lsun/security/ssl/Handshaker;->protocolVersion:Lsun/security/ssl/ProtocolVersion;

    .line 772
    invoke-direct/range {v2 .. v9}, Lsun/security/ssl/HandshakeMessage$ECDH_ServerKeyExchange;-><init>(Lsun/security/ssl/ECDHCrypt;Ljava/security/PrivateKey;[B[BLjava/security/SecureRandom;Lsun/security/ssl/SignatureAndHashAlgorithm;Lsun/security/ssl/ProtocolVersion;)V
    :try_end_4
    .catch Ljava/security/GeneralSecurityException; {:try_start_4 .. :try_end_4} :catch_4

    .restart local v2    # "m3":Lsun/security/ssl/HandshakeMessage$ServerKeyExchange;
    goto/16 :goto_9

    .line 779
    .end local v2    # "m3":Lsun/security/ssl/HandshakeMessage$ServerKeyExchange;
    :catch_4
    move-exception v13

    .line 781
    .restart local v13    # "e":Ljava/security/GeneralSecurityException;
    const-string/jumbo v3, "Error generating ECDH server key exchange"

    .line 780
    invoke-static {v3, v13}, Lsun/security/ssl/ServerHandshaker;->throwSSLException(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 782
    const/4 v2, 0x0

    .local v2, "m3":Lsun/security/ssl/HandshakeMessage$ServerKeyExchange;
    goto/16 :goto_9

    .line 788
    .end local v2    # "m3":Lsun/security/ssl/HandshakeMessage$ServerKeyExchange;
    .end local v13    # "e":Ljava/security/GeneralSecurityException;
    :pswitch_6
    const/4 v2, 0x0

    .line 789
    .restart local v2    # "m3":Lsun/security/ssl/HandshakeMessage$ServerKeyExchange;
    goto/16 :goto_9

    .line 831
    .end local v2    # "m3":Lsun/security/ssl/HandshakeMessage$ServerKeyExchange;
    .restart local v18    # "localSignAlgs":Ljava/util/Collection;, "Ljava/util/Collection<Lsun/security/ssl/SignatureAndHashAlgorithm;>;"
    :cond_32
    invoke-static/range {v18 .. v18}, Lsun/security/ssl/SignatureAndHashAlgorithm;->getHashAlgorithmNames(Ljava/util/Collection;)Ljava/util/Set;

    move-result-object v16

    .line 833
    .local v16, "localHashAlgs":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface/range {v16 .. v16}, Ljava/util/Set;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_33

    .line 834
    new-instance v3, Ljavax/net/ssl/SSLHandshakeException;

    .line 835
    const-string/jumbo v4, "No supported signature algorithm"

    .line 834
    invoke-direct {v3, v4}, Ljavax/net/ssl/SSLHandshakeException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 837
    :cond_33
    move-object/from16 v0, p0

    iget-object v3, v0, Lsun/security/ssl/Handshaker;->handshakeHash:Lsun/security/ssl/HandshakeHash;

    move-object/from16 v0, v16

    invoke-virtual {v3, v0}, Lsun/security/ssl/HandshakeHash;->restrictCertificateVerifyAlgs(Ljava/util/Set;)V

    .line 840
    .end local v16    # "localHashAlgs":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v18    # "localSignAlgs":Ljava/util/Collection;, "Ljava/util/Collection<Lsun/security/ssl/SignatureAndHashAlgorithm;>;"
    :cond_34
    move-object/from16 v0, p0

    iget-object v3, v0, Lsun/security/ssl/Handshaker;->sslContext:Lsun/security/ssl/SSLContextImpl;

    invoke-virtual {v3}, Lsun/security/ssl/SSLContextImpl;->getX509TrustManager()Ljavax/net/ssl/X509TrustManager;

    move-result-object v3

    invoke-interface {v3}, Ljavax/net/ssl/X509TrustManager;->getAcceptedIssuers()[Ljava/security/cert/X509Certificate;

    move-result-object v10

    .line 841
    .local v10, "caCerts":[Ljava/security/cert/X509Certificate;
    new-instance v21, Lsun/security/ssl/HandshakeMessage$CertificateRequest;

    move-object/from16 v0, p0

    iget-object v3, v0, Lsun/security/ssl/Handshaker;->keyExchange:Lsun/security/ssl/CipherSuite$KeyExchange;

    .line 842
    move-object/from16 v0, p0

    iget-object v4, v0, Lsun/security/ssl/Handshaker;->protocolVersion:Lsun/security/ssl/ProtocolVersion;

    .line 841
    move-object/from16 v0, v21

    move-object/from16 v1, v18

    invoke-direct {v0, v10, v3, v1, v4}, Lsun/security/ssl/HandshakeMessage$CertificateRequest;-><init>([Ljava/security/cert/X509Certificate;Lsun/security/ssl/CipherSuite$KeyExchange;Ljava/util/Collection;Lsun/security/ssl/ProtocolVersion;)V

    .line 844
    .local v21, "m4":Lsun/security/ssl/HandshakeMessage$CertificateRequest;
    sget-object v3, Lsun/security/ssl/ServerHandshaker;->debug:Lsun/security/ssl/Debug;

    if-eqz v3, :cond_35

    const-string/jumbo v3, "handshake"

    invoke-static {v3}, Lsun/security/ssl/Debug;->isOn(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_35

    .line 845
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    move-object/from16 v0, v21

    invoke-virtual {v0, v3}, Lsun/security/ssl/HandshakeMessage$CertificateRequest;->print(Ljava/io/PrintStream;)V

    .line 847
    :cond_35
    move-object/from16 v0, p0

    iget-object v3, v0, Lsun/security/ssl/Handshaker;->output:Lsun/security/ssl/HandshakeOutStream;

    move-object/from16 v0, v21

    invoke-virtual {v0, v3}, Lsun/security/ssl/HandshakeMessage;->write(Lsun/security/ssl/HandshakeOutStream;)V

    .line 857
    .end local v10    # "caCerts":[Ljava/security/cert/X509Certificate;
    .end local v21    # "m4":Lsun/security/ssl/HandshakeMessage$CertificateRequest;
    :cond_36
    :goto_a
    new-instance v22, Lsun/security/ssl/HandshakeMessage$ServerHelloDone;

    invoke-direct/range {v22 .. v22}, Lsun/security/ssl/HandshakeMessage$ServerHelloDone;-><init>()V

    .line 859
    .local v22, "m5":Lsun/security/ssl/HandshakeMessage$ServerHelloDone;
    sget-object v3, Lsun/security/ssl/ServerHandshaker;->debug:Lsun/security/ssl/Debug;

    if-eqz v3, :cond_37

    const-string/jumbo v3, "handshake"

    invoke-static {v3}, Lsun/security/ssl/Debug;->isOn(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_37

    .line 860
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    move-object/from16 v0, v22

    invoke-virtual {v0, v3}, Lsun/security/ssl/HandshakeMessage$ServerHelloDone;->print(Ljava/io/PrintStream;)V

    .line 862
    :cond_37
    move-object/from16 v0, p0

    iget-object v3, v0, Lsun/security/ssl/Handshaker;->output:Lsun/security/ssl/HandshakeOutStream;

    move-object/from16 v0, v22

    invoke-virtual {v0, v3}, Lsun/security/ssl/HandshakeMessage;->write(Lsun/security/ssl/HandshakeOutStream;)V

    .line 870
    move-object/from16 v0, p0

    iget-object v3, v0, Lsun/security/ssl/Handshaker;->output:Lsun/security/ssl/HandshakeOutStream;

    invoke-virtual {v3}, Lsun/security/ssl/HandshakeOutStream;->flush()V

    .line 276
    return-void

    .line 849
    .end local v22    # "m5":Lsun/security/ssl/HandshakeMessage$ServerHelloDone;
    :cond_38
    move-object/from16 v0, p0

    iget-object v3, v0, Lsun/security/ssl/Handshaker;->protocolVersion:Lsun/security/ssl/ProtocolVersion;

    iget v3, v3, Lsun/security/ssl/ProtocolVersion;->v:I

    sget-object v4, Lsun/security/ssl/ProtocolVersion;->TLS12:Lsun/security/ssl/ProtocolVersion;

    iget v4, v4, Lsun/security/ssl/ProtocolVersion;->v:I

    if-lt v3, v4, :cond_36

    .line 850
    move-object/from16 v0, p0

    iget-object v3, v0, Lsun/security/ssl/Handshaker;->handshakeHash:Lsun/security/ssl/HandshakeHash;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lsun/security/ssl/HandshakeHash;->setCertificateVerifyAlg(Ljava/lang/String;)V

    goto :goto_a

    .line 725
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
    .param p1, "mesg"    # Lsun/security/ssl/DHClientKeyExchange;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1365
    sget-object v0, Lsun/security/ssl/ServerHandshaker;->debug:Lsun/security/ssl/Debug;

    if-eqz v0, :cond_0

    const-string/jumbo v0, "handshake"

    invoke-static {v0}, Lsun/security/ssl/Debug;->isOn(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1366
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {p1, v0}, Lsun/security/ssl/DHClientKeyExchange;->print(Ljava/io/PrintStream;)V

    .line 1368
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
    .param p1, "mesg"    # Lsun/security/ssl/ECDHClientKeyExchange;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1374
    sget-object v0, Lsun/security/ssl/ServerHandshaker;->debug:Lsun/security/ssl/Debug;

    if-eqz v0, :cond_0

    const-string/jumbo v0, "handshake"

    invoke-static {v0}, Lsun/security/ssl/Debug;->isOn(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1375
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {p1, v0}, Lsun/security/ssl/ECDHClientKeyExchange;->print(Ljava/io/PrintStream;)V

    .line 1377
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
    .param p1, "mesg"    # Lsun/security/ssl/KerberosClientKeyExchange;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1336
    sget-object v1, Lsun/security/ssl/ServerHandshaker;->debug:Lsun/security/ssl/Debug;

    if-eqz v1, :cond_0

    const-string/jumbo v1, "handshake"

    invoke-static {v1}, Lsun/security/ssl/Debug;->isOn(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1337
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {p1, v1}, Lsun/security/ssl/KerberosClientKeyExchange;->print(Ljava/io/PrintStream;)V

    .line 1341
    :cond_0
    iget-object v1, p0, Lsun/security/ssl/Handshaker;->session:Lsun/security/ssl/SSLSessionImpl;

    invoke-virtual {p1}, Lsun/security/ssl/KerberosClientKeyExchange;->getPeerPrincipal()Ljava/security/Principal;

    move-result-object v2

    invoke-virtual {v1, v2}, Lsun/security/ssl/SSLSessionImpl;->setPeerPrincipal(Ljava/security/Principal;)V

    .line 1342
    iget-object v1, p0, Lsun/security/ssl/Handshaker;->session:Lsun/security/ssl/SSLSessionImpl;

    invoke-virtual {p1}, Lsun/security/ssl/KerberosClientKeyExchange;->getLocalPrincipal()Ljava/security/Principal;

    move-result-object v2

    invoke-virtual {v1, v2}, Lsun/security/ssl/SSLSessionImpl;->setLocalPrincipal(Ljava/security/Principal;)V

    .line 1344
    invoke-virtual {p1}, Lsun/security/ssl/KerberosClientKeyExchange;->getUnencryptedPreMasterSecret()[B

    move-result-object v0

    .line 1345
    .local v0, "b":[B
    new-instance v1, Ljavax/crypto/spec/SecretKeySpec;

    const-string/jumbo v2, "TlsPremasterSecret"

    invoke-direct {v1, v0, v2}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    return-object v1
.end method

.method private clientKeyExchange(Lsun/security/ssl/RSAClientKeyExchange;)Ljavax/crypto/SecretKey;
    .locals 1
    .param p1, "mesg"    # Lsun/security/ssl/RSAClientKeyExchange;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1598
    sget-object v0, Lsun/security/ssl/ServerHandshaker;->debug:Lsun/security/ssl/Debug;

    if-eqz v0, :cond_0

    const-string/jumbo v0, "handshake"

    invoke-static {v0}, Lsun/security/ssl/Debug;->isOn(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1599
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {p1, v0}, Lsun/security/ssl/RSAClientKeyExchange;->print(Ljava/io/PrintStream;)V

    .line 1601
    :cond_0
    iget-object v0, p1, Lsun/security/ssl/RSAClientKeyExchange;->preMaster:Ljavax/crypto/SecretKey;

    return-object v0
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
    .line 1522
    iget-object v1, p0, Lsun/security/ssl/Handshaker;->output:Lsun/security/ssl/HandshakeOutStream;

    invoke-virtual {v1}, Lsun/security/ssl/HandshakeOutStream;->flush()V

    .line 1524
    new-instance v0, Lsun/security/ssl/HandshakeMessage$Finished;

    iget-object v1, p0, Lsun/security/ssl/Handshaker;->protocolVersion:Lsun/security/ssl/ProtocolVersion;

    iget-object v2, p0, Lsun/security/ssl/Handshaker;->handshakeHash:Lsun/security/ssl/HandshakeHash;

    .line 1525
    iget-object v3, p0, Lsun/security/ssl/Handshaker;->session:Lsun/security/ssl/SSLSessionImpl;

    invoke-virtual {v3}, Lsun/security/ssl/SSLSessionImpl;->getMasterSecret()Ljavax/crypto/SecretKey;

    move-result-object v4

    iget-object v5, p0, Lsun/security/ssl/Handshaker;->cipherSuite:Lsun/security/ssl/CipherSuite;

    const/4 v3, 0x2

    .line 1524
    invoke-direct/range {v0 .. v5}, Lsun/security/ssl/HandshakeMessage$Finished;-><init>(Lsun/security/ssl/ProtocolVersion;Lsun/security/ssl/HandshakeHash;ILjavax/crypto/SecretKey;Lsun/security/ssl/CipherSuite;)V

    .line 1532
    .local v0, "mesg":Lsun/security/ssl/HandshakeMessage$Finished;
    invoke-virtual {p0, v0, p1}, Lsun/security/ssl/Handshaker;->sendChangeCipherSpec(Lsun/security/ssl/HandshakeMessage$Finished;Z)V

    .line 1537
    iget-boolean v1, p0, Lsun/security/ssl/Handshaker;->secureRenegotiation:Z

    if-eqz v1, :cond_0

    .line 1538
    invoke-virtual {v0}, Lsun/security/ssl/HandshakeMessage$Finished;->getVerifyData()[B

    move-result-object v1

    iput-object v1, p0, Lsun/security/ssl/Handshaker;->serverVerifyData:[B

    .line 1547
    :cond_0
    if-eqz p1, :cond_1

    .line 1548
    const/16 v1, 0x14

    iput v1, p0, Lsun/security/ssl/Handshaker;->state:I

    .line 1520
    :cond_1
    return-void
.end method

.method private setupEphemeralDHKeys(Z)V
    .locals 3
    .param p1, "export"    # Z

    .prologue
    .line 1182
    new-instance v1, Lsun/security/ssl/DHCrypt;

    if-eqz p1, :cond_0

    const/16 v0, 0x200

    :goto_0
    iget-object v2, p0, Lsun/security/ssl/Handshaker;->sslContext:Lsun/security/ssl/SSLContextImpl;

    invoke-virtual {v2}, Lsun/security/ssl/SSLContextImpl;->getSecureRandom()Ljava/security/SecureRandom;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lsun/security/ssl/DHCrypt;-><init>(ILjava/security/SecureRandom;)V

    iput-object v1, p0, Lsun/security/ssl/ServerHandshaker;->dh:Lsun/security/ssl/DHCrypt;

    .line 1174
    return-void

    .line 1182
    :cond_0
    const/16 v0, 0x300

    goto :goto_0
.end method

.method private setupEphemeralECDHKeys()Z
    .locals 8

    .prologue
    const/4 v4, 0x0

    .line 1189
    const/4 v1, -0x1

    .line 1190
    .local v1, "index":I
    iget-object v3, p0, Lsun/security/ssl/ServerHandshaker;->supportedCurves:Lsun/security/ssl/SupportedEllipticCurvesExtension;

    if-eqz v3, :cond_2

    .line 1193
    iget-object v3, p0, Lsun/security/ssl/ServerHandshaker;->supportedCurves:Lsun/security/ssl/SupportedEllipticCurvesExtension;

    invoke-virtual {v3}, Lsun/security/ssl/SupportedEllipticCurvesExtension;->curveIds()[I

    move-result-object v5

    array-length v6, v5

    move v3, v4

    :goto_0
    if-ge v3, v6, :cond_0

    aget v0, v5, v3

    .line 1194
    .local v0, "curveId":I
    invoke-static {v0}, Lsun/security/ssl/SupportedEllipticCurvesExtension;->isSupported(I)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 1195
    move v1, v0

    .line 1199
    .end local v0    # "curveId":I
    :cond_0
    if-gez v1, :cond_3

    .line 1201
    return v4

    .line 1193
    .restart local v0    # "curveId":I
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1205
    .end local v0    # "curveId":I
    :cond_2
    sget-object v3, Lsun/security/ssl/SupportedEllipticCurvesExtension;->DEFAULT:Lsun/security/ssl/SupportedEllipticCurvesExtension;

    invoke-virtual {v3}, Lsun/security/ssl/SupportedEllipticCurvesExtension;->curveIds()[I

    move-result-object v3

    aget v1, v3, v4

    .line 1207
    :cond_3
    invoke-static {v1}, Lsun/security/ssl/SupportedEllipticCurvesExtension;->getCurveOid(I)Ljava/lang/String;

    move-result-object v2

    .line 1208
    .local v2, "oid":Ljava/lang/String;
    new-instance v3, Lsun/security/ssl/ECDHCrypt;

    iget-object v4, p0, Lsun/security/ssl/Handshaker;->sslContext:Lsun/security/ssl/SSLContextImpl;

    invoke-virtual {v4}, Lsun/security/ssl/SSLContextImpl;->getSecureRandom()Ljava/security/SecureRandom;

    move-result-object v4

    invoke-direct {v3, v2, v4}, Lsun/security/ssl/ECDHCrypt;-><init>(Ljava/lang/String;Ljava/security/SecureRandom;)V

    iput-object v3, p0, Lsun/security/ssl/ServerHandshaker;->ecdh:Lsun/security/ssl/ECDHCrypt;

    .line 1209
    const/4 v3, 0x1

    return v3
.end method

.method private setupEphemeralRSAKeys(Z)Z
    .locals 3
    .param p1, "export"    # Z

    .prologue
    .line 1159
    iget-object v1, p0, Lsun/security/ssl/Handshaker;->sslContext:Lsun/security/ssl/SSLContextImpl;

    invoke-virtual {v1}, Lsun/security/ssl/SSLContextImpl;->getEphemeralKeyManager()Lsun/security/ssl/EphemeralKeyManager;

    move-result-object v1

    .line 1160
    iget-object v2, p0, Lsun/security/ssl/Handshaker;->sslContext:Lsun/security/ssl/SSLContextImpl;

    invoke-virtual {v2}, Lsun/security/ssl/SSLContextImpl;->getSecureRandom()Ljava/security/SecureRandom;

    move-result-object v2

    .line 1159
    invoke-virtual {v1, p1, v2}, Lsun/security/ssl/EphemeralKeyManager;->getRSAKeyPair(ZLjava/security/SecureRandom;)Ljava/security/KeyPair;

    move-result-object v0

    .line 1161
    .local v0, "kp":Ljava/security/KeyPair;
    if-nez v0, :cond_0

    .line 1162
    const/4 v1, 0x0

    return v1

    .line 1164
    :cond_0
    invoke-virtual {v0}, Ljava/security/KeyPair;->getPublic()Ljava/security/PublicKey;

    move-result-object v1

    iput-object v1, p0, Lsun/security/ssl/ServerHandshaker;->tempPublicKey:Ljava/security/PublicKey;

    .line 1165
    invoke-virtual {v0}, Ljava/security/KeyPair;->getPrivate()Ljava/security/PrivateKey;

    move-result-object v1

    iput-object v1, p0, Lsun/security/ssl/ServerHandshaker;->tempPrivateKey:Ljava/security/PrivateKey;

    .line 1166
    const/4 v1, 0x1

    return v1
.end method

.method private setupKerberosKeys()Z
    .locals 14

    .prologue
    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 1277
    iget-object v6, p0, Lsun/security/ssl/ServerHandshaker;->kerberosKeys:[Ljavax/crypto/SecretKey;

    if-eqz v6, :cond_0

    .line 1278
    return v7

    .line 1281
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Lsun/security/ssl/Handshaker;->getAccSE()Ljava/security/AccessControlContext;

    move-result-object v0

    .line 1284
    .local v0, "acc":Ljava/security/AccessControlContext;
    new-instance v6, Lsun/security/ssl/ServerHandshaker$2;

    invoke-direct {v6, p0, v0}, Lsun/security/ssl/ServerHandshaker$2;-><init>(Lsun/security/ssl/ServerHandshaker;Ljava/security/AccessControlContext;)V

    .line 1282
    invoke-static {v6}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedExceptionAction;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Ljavax/crypto/SecretKey;

    iput-object v6, p0, Lsun/security/ssl/ServerHandshaker;->kerberosKeys:[Ljavax/crypto/SecretKey;

    .line 1292
    iget-object v6, p0, Lsun/security/ssl/ServerHandshaker;->kerberosKeys:[Ljavax/crypto/SecretKey;

    if-eqz v6, :cond_2

    iget-object v6, p0, Lsun/security/ssl/ServerHandshaker;->kerberosKeys:[Ljavax/crypto/SecretKey;

    array-length v6, v6

    if-lez v6, :cond_2

    .line 1293
    sget-object v6, Lsun/security/ssl/ServerHandshaker;->debug:Lsun/security/ssl/Debug;

    if-eqz v6, :cond_1

    const-string/jumbo v6, "handshake"

    invoke-static {v6}, Lsun/security/ssl/Debug;->isOn(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 1294
    iget-object v9, p0, Lsun/security/ssl/ServerHandshaker;->kerberosKeys:[Ljavax/crypto/SecretKey;

    array-length v10, v9

    move v6, v8

    :goto_0
    if-ge v6, v10, :cond_1

    aget-object v2, v9, v6

    .line 1295
    .local v2, "k":Ljavax/crypto/SecretKey;
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

    .line 1294
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 1301
    .end local v2    # "k":Ljavax/crypto/SecretKey;
    :cond_1
    iget-object v6, p0, Lsun/security/ssl/ServerHandshaker;->kerberosKeys:[Ljavax/crypto/SecretKey;

    const/4 v9, 0x0

    aget-object v6, v6, v9

    invoke-static {v6}, Lsun/security/ssl/Krb5Helper;->getServerPrincipalName(Ljavax/crypto/SecretKey;)Ljava/lang/String;

    move-result-object v4

    .line 1302
    .local v4, "serverPrincipal":Ljava/lang/String;
    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;
    :try_end_0
    .catch Ljava/security/PrivilegedActionException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v5

    .line 1304
    .local v5, "sm":Ljava/lang/SecurityManager;
    if-eqz v5, :cond_2

    .line 1307
    :try_start_1
    const-string/jumbo v6, "accept"

    .line 1306
    invoke-static {v4, v6}, Lsun/security/ssl/Krb5Helper;->getServicePermission(Ljava/lang/String;Ljava/lang/String;)Ljava/security/Permission;

    move-result-object v6

    invoke-virtual {v5, v6, v0}, Ljava/lang/SecurityManager;->checkPermission(Ljava/security/Permission;Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/security/PrivilegedActionException; {:try_start_1 .. :try_end_1} :catch_1

    .line 1318
    .end local v4    # "serverPrincipal":Ljava/lang/String;
    .end local v5    # "sm":Ljava/lang/SecurityManager;
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

    .line 1309
    .restart local v4    # "serverPrincipal":Ljava/lang/String;
    .restart local v5    # "sm":Ljava/lang/SecurityManager;
    :catch_0
    move-exception v3

    .line 1310
    .local v3, "se":Ljava/lang/SecurityException;
    const/4 v6, 0x0

    iput-object v6, p0, Lsun/security/ssl/ServerHandshaker;->kerberosKeys:[Ljavax/crypto/SecretKey;

    .line 1312
    sget-object v6, Lsun/security/ssl/ServerHandshaker;->debug:Lsun/security/ssl/Debug;

    if-eqz v6, :cond_3

    const-string/jumbo v6, "handshake"

    invoke-static {v6}, Lsun/security/ssl/Debug;->isOn(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 1313
    sget-object v6, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string/jumbo v7, "Permission to access Kerberos secret key denied"

    invoke-virtual {v6, v7}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/security/PrivilegedActionException; {:try_start_2 .. :try_end_2} :catch_1

    .line 1315
    :cond_3
    return v8

    .end local v3    # "se":Ljava/lang/SecurityException;
    .end local v4    # "serverPrincipal":Ljava/lang/String;
    .end local v5    # "sm":Ljava/lang/SecurityManager;
    :cond_4
    move v6, v8

    .line 1318
    goto :goto_1

    .line 1319
    .end local v0    # "acc":Ljava/security/AccessControlContext;
    :catch_1
    move-exception v1

    .line 1321
    .local v1, "e":Ljava/security/PrivilegedActionException;
    sget-object v6, Lsun/security/ssl/ServerHandshaker;->debug:Lsun/security/ssl/Debug;

    if-eqz v6, :cond_5

    const-string/jumbo v6, "handshake"

    invoke-static {v6}, Lsun/security/ssl/Debug;->isOn(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 1322
    sget-object v6, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Attempt to obtain Kerberos key failed: "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 1323
    invoke-virtual {v1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v9

    .line 1322
    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1325
    :cond_5
    return v8
.end method

.method private setupPrivateKeyAndChain(Ljava/lang/String;)Z
    .locals 11
    .param p1, "algorithm"    # Ljava/lang/String;

    .prologue
    const/4 v10, 0x0

    const/4 v9, 0x0

    .line 1225
    iget-object v8, p0, Lsun/security/ssl/Handshaker;->sslContext:Lsun/security/ssl/SSLContextImpl;

    invoke-virtual {v8}, Lsun/security/ssl/SSLContextImpl;->getX509KeyManager()Ljavax/net/ssl/X509ExtendedKeyManager;

    move-result-object v3

    .line 1227
    .local v3, "km":Ljavax/net/ssl/X509ExtendedKeyManager;
    iget-object v8, p0, Lsun/security/ssl/Handshaker;->conn:Lsun/security/ssl/SSLSocketImpl;

    if-eqz v8, :cond_0

    .line 1228
    iget-object v8, p0, Lsun/security/ssl/Handshaker;->conn:Lsun/security/ssl/SSLSocketImpl;

    invoke-virtual {v3, p1, v10, v8}, Ljavax/net/ssl/X509ExtendedKeyManager;->chooseServerAlias(Ljava/lang/String;[Ljava/security/Principal;Ljava/net/Socket;)Ljava/lang/String;

    move-result-object v0

    .line 1232
    .local v0, "alias":Ljava/lang/String;
    :goto_0
    if-nez v0, :cond_1

    .line 1233
    return v9

    .line 1230
    .end local v0    # "alias":Ljava/lang/String;
    :cond_0
    iget-object v8, p0, Lsun/security/ssl/Handshaker;->engine:Lsun/security/ssl/SSLEngineImpl;

    invoke-virtual {v3, p1, v10, v8}, Ljavax/net/ssl/X509ExtendedKeyManager;->chooseEngineServerAlias(Ljava/lang/String;[Ljava/security/Principal;Ljavax/net/ssl/SSLEngine;)Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "alias":Ljava/lang/String;
    goto :goto_0

    .line 1235
    :cond_1
    invoke-virtual {v3, v0}, Ljavax/net/ssl/X509ExtendedKeyManager;->getPrivateKey(Ljava/lang/String;)Ljava/security/PrivateKey;

    move-result-object v7

    .line 1236
    .local v7, "tempPrivateKey":Ljava/security/PrivateKey;
    if-nez v7, :cond_2

    .line 1237
    return v9

    .line 1239
    :cond_2
    invoke-virtual {v3, v0}, Ljavax/net/ssl/X509ExtendedKeyManager;->getCertificateChain(Ljava/lang/String;)[Ljava/security/cert/X509Certificate;

    move-result-object v6

    .line 1240
    .local v6, "tempCerts":[Ljava/security/cert/X509Certificate;
    if-eqz v6, :cond_3

    array-length v8, v6

    if-nez v8, :cond_4

    .line 1241
    :cond_3
    return v9

    .line 1243
    :cond_4
    const-string/jumbo v8, "_"

    invoke-virtual {p1, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    aget-object v2, v8, v9

    .line 1244
    .local v2, "keyAlgorithm":Ljava/lang/String;
    aget-object v8, v6, v9

    invoke-virtual {v8}, Ljava/security/cert/Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v5

    .line 1245
    .local v5, "publicKey":Ljava/security/PublicKey;
    invoke-interface {v7}, Ljava/security/PrivateKey;->getAlgorithm()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 1246
    invoke-interface {v5}, Ljava/security/PublicKey;->getAlgorithm()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_6

    .line 1247
    :cond_5
    return v9

    .line 1252
    :cond_6
    const-string/jumbo v8, "EC"

    invoke-virtual {v2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_9

    .line 1253
    instance-of v8, v5, Ljava/security/interfaces/ECPublicKey;

    if-nez v8, :cond_7

    .line 1254
    return v9

    .line 1256
    :cond_7
    check-cast v5, Ljava/security/interfaces/ECPublicKey;

    .end local v5    # "publicKey":Ljava/security/PublicKey;
    invoke-interface {v5}, Ljava/security/interfaces/ECPublicKey;->getParams()Ljava/security/spec/ECParameterSpec;

    move-result-object v4

    .line 1257
    .local v4, "params":Ljava/security/spec/ECParameterSpec;
    invoke-static {v4}, Lsun/security/ssl/SupportedEllipticCurvesExtension;->getCurveIndex(Ljava/security/spec/ECParameterSpec;)I

    move-result v1

    .line 1258
    .local v1, "index":I
    invoke-static {v1}, Lsun/security/ssl/SupportedEllipticCurvesExtension;->isSupported(I)Z

    move-result v8

    if-nez v8, :cond_8

    .line 1259
    return v9

    .line 1261
    :cond_8
    iget-object v8, p0, Lsun/security/ssl/ServerHandshaker;->supportedCurves:Lsun/security/ssl/SupportedEllipticCurvesExtension;

    if-eqz v8, :cond_9

    iget-object v8, p0, Lsun/security/ssl/ServerHandshaker;->supportedCurves:Lsun/security/ssl/SupportedEllipticCurvesExtension;

    invoke-virtual {v8, v1}, Lsun/security/ssl/SupportedEllipticCurvesExtension;->contains(I)Z

    move-result v8

    if-eqz v8, :cond_a

    .line 1265
    .end local v1    # "index":I
    .end local v4    # "params":Ljava/security/spec/ECParameterSpec;
    :cond_9
    iput-object v7, p0, Lsun/security/ssl/ServerHandshaker;->privateKey:Ljava/security/PrivateKey;

    .line 1266
    iput-object v6, p0, Lsun/security/ssl/ServerHandshaker;->certs:[Ljava/security/cert/X509Certificate;

    .line 1267
    const/4 v8, 0x1

    return v8

    .line 1262
    .restart local v1    # "index":I
    .restart local v4    # "params":Ljava/security/spec/ECParameterSpec;
    :cond_a
    return v9
.end method

.method private setupStaticECDHKeys()V
    .locals 4

    .prologue
    .line 1215
    new-instance v0, Lsun/security/ssl/ECDHCrypt;

    iget-object v1, p0, Lsun/security/ssl/ServerHandshaker;->privateKey:Ljava/security/PrivateKey;

    iget-object v2, p0, Lsun/security/ssl/ServerHandshaker;->certs:[Ljava/security/cert/X509Certificate;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    invoke-virtual {v2}, Ljava/security/cert/Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lsun/security/ssl/ECDHCrypt;-><init>(Ljava/security/PrivateKey;Ljava/security/PublicKey;)V

    iput-object v0, p0, Lsun/security/ssl/ServerHandshaker;->ecdh:Lsun/security/ssl/ECDHCrypt;

    .line 1212
    return-void
.end method


# virtual methods
.method getKickstartMessage()Lsun/security/ssl/HandshakeMessage;
    .locals 1

    .prologue
    .line 1557
    new-instance v0, Lsun/security/ssl/HandshakeMessage$HelloRequest;

    invoke-direct {v0}, Lsun/security/ssl/HandshakeMessage$HelloRequest;-><init>()V

    return-object v0
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
    .line 1566
    invoke-static {p1}, Lsun/security/ssl/Alerts;->alertDescription(B)Ljava/lang/String;

    move-result-object v0

    .line 1568
    .local v0, "message":Ljava/lang/String;
    sget-object v1, Lsun/security/ssl/ServerHandshaker;->debug:Lsun/security/ssl/Debug;

    if-eqz v1, :cond_0

    const-string/jumbo v1, "handshake"

    invoke-static {v1}, Lsun/security/ssl/Debug;->isOn(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1569
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

    .line 1581
    :cond_0
    const/16 v1, 0x29

    if-ne p1, v1, :cond_1

    .line 1582
    iget-byte v1, p0, Lsun/security/ssl/ServerHandshaker;->doClientAuth:B

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 1583
    return-void

    .line 1586
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
    .param p1, "type"    # B
    .param p2, "message_len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v9, 0xf

    .line 153
    iget v1, p0, Lsun/security/ssl/Handshaker;->state:I

    if-lt v1, p1, :cond_0

    .line 154
    iget v1, p0, Lsun/security/ssl/Handshaker;->state:I

    const/16 v2, 0x10

    if-eq v1, v2, :cond_0

    .line 155
    if-eq p1, v9, :cond_0

    .line 156
    new-instance v1, Ljavax/net/ssl/SSLProtocolException;

    .line 157
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Handshake message sequence violation, state = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lsun/security/ssl/Handshaker;->state:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 158
    const-string/jumbo v3, ", type = "

    .line 157
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 156
    invoke-direct {v1, v2}, Ljavax/net/ssl/SSLProtocolException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 161
    :cond_0
    sparse-switch p1, :sswitch_data_0

    .line 248
    new-instance v1, Ljavax/net/ssl/SSLProtocolException;

    .line 249
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Illegal server handshake msg, "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 248
    invoke-direct {v1, v2}, Ljavax/net/ssl/SSLProtocolException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 163
    :sswitch_0
    new-instance v7, Lsun/security/ssl/HandshakeMessage$ClientHello;

    iget-object v1, p0, Lsun/security/ssl/Handshaker;->input:Lsun/security/ssl/HandshakeInStream;

    invoke-direct {v7, v1, p2}, Lsun/security/ssl/HandshakeMessage$ClientHello;-><init>(Lsun/security/ssl/HandshakeInStream;I)V

    .line 167
    .local v7, "ch":Lsun/security/ssl/HandshakeMessage$ClientHello;
    invoke-direct {p0, v7}, Lsun/security/ssl/ServerHandshaker;->clientHello(Lsun/security/ssl/HandshakeMessage$ClientHello;)V

    .line 256
    .end local v7    # "ch":Lsun/security/ssl/HandshakeMessage$ClientHello;
    :goto_0
    iget v1, p0, Lsun/security/ssl/Handshaker;->state:I

    if-ge v1, p1, :cond_1

    .line 257
    if-ne p1, v9, :cond_3

    .line 258
    add-int/lit8 v1, p1, 0x2

    iput v1, p0, Lsun/security/ssl/Handshaker;->state:I

    .line 148
    :cond_1
    :goto_1
    return-void

    .line 171
    :sswitch_1
    iget-byte v1, p0, Lsun/security/ssl/ServerHandshaker;->doClientAuth:B

    if-nez v1, :cond_2

    .line 173
    const-string/jumbo v1, "client sent unsolicited cert chain"

    .line 172
    const/16 v2, 0xa

    invoke-virtual {p0, v2, v1}, Lsun/security/ssl/Handshaker;->fatalSE(BLjava/lang/String;)V

    .line 176
    :cond_2
    new-instance v1, Lsun/security/ssl/HandshakeMessage$CertificateMsg;

    iget-object v2, p0, Lsun/security/ssl/Handshaker;->input:Lsun/security/ssl/HandshakeInStream;

    invoke-direct {v1, v2}, Lsun/security/ssl/HandshakeMessage$CertificateMsg;-><init>(Lsun/security/ssl/HandshakeInStream;)V

    invoke-direct {p0, v1}, Lsun/security/ssl/ServerHandshaker;->clientCertificate(Lsun/security/ssl/HandshakeMessage$CertificateMsg;)V

    goto :goto_0

    .line 181
    :sswitch_2
    invoke-static {}, Lsun/security/ssl/ServerHandshaker;->-getsun-security-ssl-CipherSuite$KeyExchangeSwitchesValues()[I

    move-result-object v1

    iget-object v2, p0, Lsun/security/ssl/Handshaker;->keyExchange:Lsun/security/ssl/CipherSuite$KeyExchange;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 226
    :pswitch_0
    new-instance v1, Ljavax/net/ssl/SSLProtocolException;

    .line 227
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

    .line 226
    invoke-direct {v1, v2}, Ljavax/net/ssl/SSLProtocolException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 190
    :pswitch_1
    new-instance v0, Lsun/security/ssl/RSAClientKeyExchange;

    .line 191
    iget-object v1, p0, Lsun/security/ssl/Handshaker;->protocolVersion:Lsun/security/ssl/ProtocolVersion;

    iget-object v2, p0, Lsun/security/ssl/ServerHandshaker;->clientRequestedVersion:Lsun/security/ssl/ProtocolVersion;

    .line 192
    iget-object v3, p0, Lsun/security/ssl/Handshaker;->sslContext:Lsun/security/ssl/SSLContextImpl;

    invoke-virtual {v3}, Lsun/security/ssl/SSLContextImpl;->getSecureRandom()Ljava/security/SecureRandom;

    move-result-object v3

    iget-object v4, p0, Lsun/security/ssl/Handshaker;->input:Lsun/security/ssl/HandshakeInStream;

    .line 193
    iget-object v6, p0, Lsun/security/ssl/ServerHandshaker;->privateKey:Ljava/security/PrivateKey;

    move v5, p2

    .line 190
    invoke-direct/range {v0 .. v6}, Lsun/security/ssl/RSAClientKeyExchange;-><init>(Lsun/security/ssl/ProtocolVersion;Lsun/security/ssl/ProtocolVersion;Ljava/security/SecureRandom;Lsun/security/ssl/HandshakeInStream;ILjava/security/PrivateKey;)V

    .line 194
    .local v0, "pms":Lsun/security/ssl/RSAClientKeyExchange;
    invoke-direct {p0, v0}, Lsun/security/ssl/ServerHandshaker;->clientKeyExchange(Lsun/security/ssl/RSAClientKeyExchange;)Ljavax/crypto/SecretKey;

    move-result-object v8

    .line 234
    .end local v0    # "pms":Lsun/security/ssl/RSAClientKeyExchange;
    .local v8, "preMasterSecret":Ljavax/crypto/SecretKey;
    :goto_2
    iget-object v1, p0, Lsun/security/ssl/ServerHandshaker;->clientRequestedVersion:Lsun/security/ssl/ProtocolVersion;

    invoke-virtual {p0, v8, v1}, Lsun/security/ssl/Handshaker;->calculateKeys(Ljavax/crypto/SecretKey;Lsun/security/ssl/ProtocolVersion;)V

    goto :goto_0

    .line 199
    .end local v8    # "preMasterSecret":Ljavax/crypto/SecretKey;
    :pswitch_2
    new-instance v1, Lsun/security/ssl/KerberosClientKeyExchange;

    iget-object v2, p0, Lsun/security/ssl/Handshaker;->protocolVersion:Lsun/security/ssl/ProtocolVersion;

    .line 200
    iget-object v3, p0, Lsun/security/ssl/ServerHandshaker;->clientRequestedVersion:Lsun/security/ssl/ProtocolVersion;

    .line 201
    iget-object v4, p0, Lsun/security/ssl/Handshaker;->sslContext:Lsun/security/ssl/SSLContextImpl;

    invoke-virtual {v4}, Lsun/security/ssl/SSLContextImpl;->getSecureRandom()Ljava/security/SecureRandom;

    move-result-object v4

    .line 202
    iget-object v5, p0, Lsun/security/ssl/Handshaker;->input:Lsun/security/ssl/HandshakeInStream;

    .line 203
    iget-object v6, p0, Lsun/security/ssl/ServerHandshaker;->kerberosKeys:[Ljavax/crypto/SecretKey;

    .line 199
    invoke-direct/range {v1 .. v6}, Lsun/security/ssl/KerberosClientKeyExchange;-><init>(Lsun/security/ssl/ProtocolVersion;Lsun/security/ssl/ProtocolVersion;Ljava/security/SecureRandom;Lsun/security/ssl/HandshakeInStream;[Ljavax/crypto/SecretKey;)V

    .line 198
    invoke-direct {p0, v1}, Lsun/security/ssl/ServerHandshaker;->clientKeyExchange(Lsun/security/ssl/KerberosClientKeyExchange;)Ljavax/crypto/SecretKey;

    move-result-object v8

    .restart local v8    # "preMasterSecret":Ljavax/crypto/SecretKey;
    goto :goto_2

    .line 215
    .end local v8    # "preMasterSecret":Ljavax/crypto/SecretKey;
    :pswitch_3
    new-instance v1, Lsun/security/ssl/DHClientKeyExchange;

    iget-object v2, p0, Lsun/security/ssl/Handshaker;->input:Lsun/security/ssl/HandshakeInStream;

    invoke-direct {v1, v2}, Lsun/security/ssl/DHClientKeyExchange;-><init>(Lsun/security/ssl/HandshakeInStream;)V

    .line 214
    invoke-direct {p0, v1}, Lsun/security/ssl/ServerHandshaker;->clientKeyExchange(Lsun/security/ssl/DHClientKeyExchange;)Ljavax/crypto/SecretKey;

    move-result-object v8

    .restart local v8    # "preMasterSecret":Ljavax/crypto/SecretKey;
    goto :goto_2

    .line 223
    .end local v8    # "preMasterSecret":Ljavax/crypto/SecretKey;
    :pswitch_4
    new-instance v1, Lsun/security/ssl/ECDHClientKeyExchange;

    iget-object v2, p0, Lsun/security/ssl/Handshaker;->input:Lsun/security/ssl/HandshakeInStream;

    invoke-direct {v1, v2}, Lsun/security/ssl/ECDHClientKeyExchange;-><init>(Lsun/security/ssl/HandshakeInStream;)V

    .line 222
    invoke-direct {p0, v1}, Lsun/security/ssl/ServerHandshaker;->clientKeyExchange(Lsun/security/ssl/ECDHClientKeyExchange;)Ljavax/crypto/SecretKey;

    move-result-object v8

    .restart local v8    # "preMasterSecret":Ljavax/crypto/SecretKey;
    goto :goto_2

    .line 238
    .end local v8    # "preMasterSecret":Ljavax/crypto/SecretKey;
    :sswitch_3
    new-instance v1, Lsun/security/ssl/HandshakeMessage$CertificateVerify;

    iget-object v2, p0, Lsun/security/ssl/Handshaker;->input:Lsun/security/ssl/HandshakeInStream;

    .line 239
    iget-object v3, p0, Lsun/security/ssl/Handshaker;->localSupportedSignAlgs:Ljava/util/Collection;

    iget-object v4, p0, Lsun/security/ssl/Handshaker;->protocolVersion:Lsun/security/ssl/ProtocolVersion;

    .line 238
    invoke-direct {v1, v2, v3, v4}, Lsun/security/ssl/HandshakeMessage$CertificateVerify;-><init>(Lsun/security/ssl/HandshakeInStream;Ljava/util/Collection;Lsun/security/ssl/ProtocolVersion;)V

    invoke-direct {p0, v1}, Lsun/security/ssl/ServerHandshaker;->clientCertificateVerify(Lsun/security/ssl/HandshakeMessage$CertificateVerify;)V

    goto/16 :goto_0

    .line 244
    :sswitch_4
    new-instance v1, Lsun/security/ssl/HandshakeMessage$Finished;

    iget-object v2, p0, Lsun/security/ssl/Handshaker;->protocolVersion:Lsun/security/ssl/ProtocolVersion;

    iget-object v3, p0, Lsun/security/ssl/Handshaker;->input:Lsun/security/ssl/HandshakeInStream;

    iget-object v4, p0, Lsun/security/ssl/Handshaker;->cipherSuite:Lsun/security/ssl/CipherSuite;

    invoke-direct {v1, v2, v3, v4}, Lsun/security/ssl/HandshakeMessage$Finished;-><init>(Lsun/security/ssl/ProtocolVersion;Lsun/security/ssl/HandshakeInStream;Lsun/security/ssl/CipherSuite;)V

    .line 243
    invoke-direct {p0, v1}, Lsun/security/ssl/ServerHandshaker;->clientFinished(Lsun/security/ssl/HandshakeMessage$Finished;)V

    goto/16 :goto_0

    .line 260
    :cond_3
    iput p1, p0, Lsun/security/ssl/Handshaker;->state:I

    goto/16 :goto_1

    .line 161
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0xb -> :sswitch_1
        0xf -> :sswitch_3
        0x10 -> :sswitch_2
        0x14 -> :sswitch_4
    .end sparse-switch

    .line 181
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
    .param p1, "clientAuth"    # B

    .prologue
    .line 135
    iput-byte p1, p0, Lsun/security/ssl/ServerHandshaker;->doClientAuth:B

    .line 134
    return-void
.end method

.method trySetCipherSuite(Lsun/security/ssl/CipherSuite;)Z
    .locals 9
    .param p1, "suite"    # Lsun/security/ssl/CipherSuite;

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    const/4 v6, 0x0

    .line 918
    iget-boolean v4, p0, Lsun/security/ssl/Handshaker;->resumingSession:Z

    if-eqz v4, :cond_0

    .line 919
    return v8

    .line 922
    :cond_0
    invoke-virtual {p1}, Lsun/security/ssl/CipherSuite;->isNegotiable()Z

    move-result v4

    if-nez v4, :cond_1

    .line 923
    return v6

    .line 927
    :cond_1
    iget-object v4, p0, Lsun/security/ssl/Handshaker;->protocolVersion:Lsun/security/ssl/ProtocolVersion;

    iget v4, v4, Lsun/security/ssl/ProtocolVersion;->v:I

    iget v5, p1, Lsun/security/ssl/CipherSuite;->obsoleted:I

    if-lt v4, v5, :cond_2

    .line 928
    return v6

    .line 932
    :cond_2
    iget-object v4, p0, Lsun/security/ssl/Handshaker;->protocolVersion:Lsun/security/ssl/ProtocolVersion;

    iget v4, v4, Lsun/security/ssl/ProtocolVersion;->v:I

    iget v5, p1, Lsun/security/ssl/CipherSuite;->supported:I

    if-ge v4, v5, :cond_3

    .line 933
    return v6

    .line 936
    :cond_3
    iget-object v2, p1, Lsun/security/ssl/CipherSuite;->keyExchange:Lsun/security/ssl/CipherSuite$KeyExchange;

    .line 939
    .local v2, "keyExchange":Lsun/security/ssl/CipherSuite$KeyExchange;
    iput-object v7, p0, Lsun/security/ssl/ServerHandshaker;->privateKey:Ljava/security/PrivateKey;

    .line 940
    iput-object v7, p0, Lsun/security/ssl/ServerHandshaker;->certs:[Ljava/security/cert/X509Certificate;

    .line 941
    iput-object v7, p0, Lsun/security/ssl/ServerHandshaker;->dh:Lsun/security/ssl/DHCrypt;

    .line 942
    iput-object v7, p0, Lsun/security/ssl/ServerHandshaker;->tempPrivateKey:Ljava/security/PrivateKey;

    .line 943
    iput-object v7, p0, Lsun/security/ssl/ServerHandshaker;->tempPublicKey:Ljava/security/PublicKey;

    .line 945
    const/4 v3, 0x0

    .line 946
    .local v3, "supportedSignAlgs":Ljava/util/Collection;, "Ljava/util/Collection<Lsun/security/ssl/SignatureAndHashAlgorithm;>;"
    iget-object v4, p0, Lsun/security/ssl/Handshaker;->protocolVersion:Lsun/security/ssl/ProtocolVersion;

    iget v4, v4, Lsun/security/ssl/ProtocolVersion;->v:I

    sget-object v5, Lsun/security/ssl/ProtocolVersion;->TLS12:Lsun/security/ssl/ProtocolVersion;

    iget v5, v5, Lsun/security/ssl/ProtocolVersion;->v:I

    if-lt v4, v5, :cond_4

    .line 947
    iget-object v4, p0, Lsun/security/ssl/Handshaker;->peerSupportedSignAlgs:Ljava/util/Collection;

    if-eqz v4, :cond_5

    .line 948
    iget-object v3, p0, Lsun/security/ssl/Handshaker;->peerSupportedSignAlgs:Ljava/util/Collection;

    .line 1004
    .end local v3    # "supportedSignAlgs":Ljava/util/Collection;, "Ljava/util/Collection<Lsun/security/ssl/SignatureAndHashAlgorithm;>;"
    :cond_4
    :goto_0
    invoke-static {}, Lsun/security/ssl/ServerHandshaker;->-getsun-security-ssl-CipherSuite$KeyExchangeSwitchesValues()[I

    move-result-object v4

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v5

    aget v4, v4, v5

    packed-switch v4, :pswitch_data_0

    .line 1135
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

    .line 950
    .restart local v3    # "supportedSignAlgs":Ljava/util/Collection;, "Ljava/util/Collection<Lsun/security/ssl/SignatureAndHashAlgorithm;>;"
    :cond_5
    const/4 v0, 0x0

    .line 953
    .local v0, "algorithm":Lsun/security/ssl/SignatureAndHashAlgorithm;
    invoke-static {}, Lsun/security/ssl/ServerHandshaker;->-getsun-security-ssl-CipherSuite$KeyExchangeSwitchesValues()[I

    move-result-object v4

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v5

    aget v4, v4, v5

    packed-switch v4, :pswitch_data_1

    .line 989
    .end local v0    # "algorithm":Lsun/security/ssl/SignatureAndHashAlgorithm;
    :goto_1
    :pswitch_1
    if-nez v0, :cond_6

    .line 991
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v3

    .line 1000
    .local v3, "supportedSignAlgs":Ljava/util/Collection;, "Ljava/util/Collection<Lsun/security/ssl/SignatureAndHashAlgorithm;>;"
    :goto_2
    iget-object v4, p0, Lsun/security/ssl/Handshaker;->session:Lsun/security/ssl/SSLSessionImpl;

    invoke-virtual {v4, v3}, Lsun/security/ssl/SSLSessionImpl;->setPeerSupportedSignatureAlgorithms(Ljava/util/Collection;)V

    goto :goto_0

    .line 964
    .restart local v0    # "algorithm":Lsun/security/ssl/SignatureAndHashAlgorithm;
    .local v3, "supportedSignAlgs":Ljava/util/Collection;, "Ljava/util/Collection<Lsun/security/ssl/SignatureAndHashAlgorithm;>;"
    :pswitch_2
    sget-object v4, Lsun/security/ssl/SignatureAndHashAlgorithm$HashAlgorithm;->SHA1:Lsun/security/ssl/SignatureAndHashAlgorithm$HashAlgorithm;

    iget v4, v4, Lsun/security/ssl/SignatureAndHashAlgorithm$HashAlgorithm;->value:I

    .line 965
    sget-object v5, Lsun/security/ssl/SignatureAndHashAlgorithm$SignatureAlgorithm;->RSA:Lsun/security/ssl/SignatureAndHashAlgorithm$SignatureAlgorithm;

    iget v5, v5, Lsun/security/ssl/SignatureAndHashAlgorithm$SignatureAlgorithm;->value:I

    .line 963
    invoke-static {v4, v5, v6}, Lsun/security/ssl/SignatureAndHashAlgorithm;->valueOf(III)Lsun/security/ssl/SignatureAndHashAlgorithm;

    move-result-object v0

    .local v0, "algorithm":Lsun/security/ssl/SignatureAndHashAlgorithm;
    goto :goto_1

    .line 973
    .local v0, "algorithm":Lsun/security/ssl/SignatureAndHashAlgorithm;
    :pswitch_3
    sget-object v4, Lsun/security/ssl/SignatureAndHashAlgorithm$HashAlgorithm;->SHA1:Lsun/security/ssl/SignatureAndHashAlgorithm$HashAlgorithm;

    iget v4, v4, Lsun/security/ssl/SignatureAndHashAlgorithm$HashAlgorithm;->value:I

    .line 974
    sget-object v5, Lsun/security/ssl/SignatureAndHashAlgorithm$SignatureAlgorithm;->DSA:Lsun/security/ssl/SignatureAndHashAlgorithm$SignatureAlgorithm;

    iget v5, v5, Lsun/security/ssl/SignatureAndHashAlgorithm$SignatureAlgorithm;->value:I

    .line 972
    invoke-static {v4, v5, v6}, Lsun/security/ssl/SignatureAndHashAlgorithm;->valueOf(III)Lsun/security/ssl/SignatureAndHashAlgorithm;

    move-result-object v0

    .local v0, "algorithm":Lsun/security/ssl/SignatureAndHashAlgorithm;
    goto :goto_1

    .line 982
    .local v0, "algorithm":Lsun/security/ssl/SignatureAndHashAlgorithm;
    :pswitch_4
    sget-object v4, Lsun/security/ssl/SignatureAndHashAlgorithm$HashAlgorithm;->SHA1:Lsun/security/ssl/SignatureAndHashAlgorithm$HashAlgorithm;

    iget v4, v4, Lsun/security/ssl/SignatureAndHashAlgorithm$HashAlgorithm;->value:I

    .line 983
    sget-object v5, Lsun/security/ssl/SignatureAndHashAlgorithm$SignatureAlgorithm;->ECDSA:Lsun/security/ssl/SignatureAndHashAlgorithm$SignatureAlgorithm;

    iget v5, v5, Lsun/security/ssl/SignatureAndHashAlgorithm$SignatureAlgorithm;->value:I

    .line 981
    invoke-static {v4, v5, v6}, Lsun/security/ssl/SignatureAndHashAlgorithm;->valueOf(III)Lsun/security/ssl/SignatureAndHashAlgorithm;

    move-result-object v0

    .local v0, "algorithm":Lsun/security/ssl/SignatureAndHashAlgorithm;
    goto :goto_1

    .line 994
    .end local v0    # "algorithm":Lsun/security/ssl/SignatureAndHashAlgorithm;
    :cond_6
    new-instance v3, Ljava/util/ArrayList;

    .end local v3    # "supportedSignAlgs":Ljava/util/Collection;, "Ljava/util/Collection<Lsun/security/ssl/SignatureAndHashAlgorithm;>;"
    invoke-direct {v3, v8}, Ljava/util/ArrayList;-><init>(I)V

    .line 995
    .local v3, "supportedSignAlgs":Ljava/util/Collection;, "Ljava/util/Collection<Lsun/security/ssl/SignatureAndHashAlgorithm;>;"
    invoke-interface {v3, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 1007
    .end local v3    # "supportedSignAlgs":Ljava/util/Collection;, "Ljava/util/Collection<Lsun/security/ssl/SignatureAndHashAlgorithm;>;"
    :pswitch_5
    const-string/jumbo v4, "RSA"

    invoke-direct {p0, v4}, Lsun/security/ssl/ServerHandshaker;->setupPrivateKeyAndChain(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_a

    .line 1008
    return v6

    .line 1013
    :pswitch_6
    const-string/jumbo v4, "RSA"

    invoke-direct {p0, v4}, Lsun/security/ssl/ServerHandshaker;->setupPrivateKeyAndChain(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_7

    .line 1014
    return v6

    .line 1018
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

    .line 1019
    iget-boolean v4, p1, Lsun/security/ssl/CipherSuite;->exportable:Z

    invoke-direct {p0, v4}, Lsun/security/ssl/ServerHandshaker;->setupEphemeralRSAKeys(Z)Z
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    if-nez v4, :cond_a

    .line 1020
    return v6

    .line 1023
    :catch_0
    move-exception v1

    .line 1025
    .local v1, "e":Ljava/lang/RuntimeException;
    return v6

    .line 1030
    .end local v1    # "e":Ljava/lang/RuntimeException;
    :pswitch_7
    const-string/jumbo v4, "RSA"

    invoke-direct {p0, v4}, Lsun/security/ssl/ServerHandshaker;->setupPrivateKeyAndChain(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_8

    .line 1031
    return v6

    .line 1035
    :cond_8
    iget-object v4, p0, Lsun/security/ssl/Handshaker;->protocolVersion:Lsun/security/ssl/ProtocolVersion;

    iget v4, v4, Lsun/security/ssl/ProtocolVersion;->v:I

    sget-object v5, Lsun/security/ssl/ProtocolVersion;->TLS12:Lsun/security/ssl/ProtocolVersion;

    iget v5, v5, Lsun/security/ssl/ProtocolVersion;->v:I

    if-lt v4, v5, :cond_9

    .line 1038
    const-string/jumbo v4, "RSA"

    iget-object v5, p0, Lsun/security/ssl/ServerHandshaker;->privateKey:Ljava/security/PrivateKey;

    .line 1037
    invoke-static {v3, v4, v5}, Lsun/security/ssl/SignatureAndHashAlgorithm;->getPreferableAlgorithm(Ljava/util/Collection;Ljava/lang/String;Ljava/security/PrivateKey;)Lsun/security/ssl/SignatureAndHashAlgorithm;

    move-result-object v4

    .line 1036
    iput-object v4, p0, Lsun/security/ssl/ServerHandshaker;->preferableSignatureAlgorithm:Lsun/security/ssl/SignatureAndHashAlgorithm;

    .line 1039
    iget-object v4, p0, Lsun/security/ssl/ServerHandshaker;->preferableSignatureAlgorithm:Lsun/security/ssl/SignatureAndHashAlgorithm;

    if-nez v4, :cond_9

    .line 1040
    return v6

    .line 1044
    :cond_9
    iget-boolean v4, p1, Lsun/security/ssl/CipherSuite;->exportable:Z

    invoke-direct {p0, v4}, Lsun/security/ssl/ServerHandshaker;->setupEphemeralDHKeys(Z)V

    .line 1137
    :cond_a
    :goto_3
    invoke-virtual {p0, p1}, Lsun/security/ssl/Handshaker;->setCipherSuite(Lsun/security/ssl/CipherSuite;)V

    .line 1140
    iget-object v4, p0, Lsun/security/ssl/Handshaker;->protocolVersion:Lsun/security/ssl/ProtocolVersion;

    iget v4, v4, Lsun/security/ssl/ProtocolVersion;->v:I

    sget-object v5, Lsun/security/ssl/ProtocolVersion;->TLS12:Lsun/security/ssl/ProtocolVersion;

    iget v5, v5, Lsun/security/ssl/ProtocolVersion;->v:I

    if-lt v4, v5, :cond_b

    .line 1141
    iget-object v4, p0, Lsun/security/ssl/Handshaker;->peerSupportedSignAlgs:Ljava/util/Collection;

    if-nez v4, :cond_b

    .line 1142
    invoke-virtual {p0, v3}, Lsun/security/ssl/Handshaker;->setPeerSupportedSignAlgs(Ljava/util/Collection;)V

    .line 1146
    :cond_b
    return v8

    .line 1048
    :pswitch_8
    const-string/jumbo v4, "RSA"

    invoke-direct {p0, v4}, Lsun/security/ssl/ServerHandshaker;->setupPrivateKeyAndChain(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_c

    .line 1049
    return v6

    .line 1053
    :cond_c
    iget-object v4, p0, Lsun/security/ssl/Handshaker;->protocolVersion:Lsun/security/ssl/ProtocolVersion;

    iget v4, v4, Lsun/security/ssl/ProtocolVersion;->v:I

    sget-object v5, Lsun/security/ssl/ProtocolVersion;->TLS12:Lsun/security/ssl/ProtocolVersion;

    iget v5, v5, Lsun/security/ssl/ProtocolVersion;->v:I

    if-lt v4, v5, :cond_d

    .line 1056
    const-string/jumbo v4, "RSA"

    iget-object v5, p0, Lsun/security/ssl/ServerHandshaker;->privateKey:Ljava/security/PrivateKey;

    .line 1055
    invoke-static {v3, v4, v5}, Lsun/security/ssl/SignatureAndHashAlgorithm;->getPreferableAlgorithm(Ljava/util/Collection;Ljava/lang/String;Ljava/security/PrivateKey;)Lsun/security/ssl/SignatureAndHashAlgorithm;

    move-result-object v4

    .line 1054
    iput-object v4, p0, Lsun/security/ssl/ServerHandshaker;->preferableSignatureAlgorithm:Lsun/security/ssl/SignatureAndHashAlgorithm;

    .line 1057
    iget-object v4, p0, Lsun/security/ssl/ServerHandshaker;->preferableSignatureAlgorithm:Lsun/security/ssl/SignatureAndHashAlgorithm;

    if-nez v4, :cond_d

    .line 1058
    return v6

    .line 1062
    :cond_d
    invoke-direct {p0}, Lsun/security/ssl/ServerHandshaker;->setupEphemeralECDHKeys()Z

    move-result v4

    if-nez v4, :cond_a

    .line 1063
    return v6

    .line 1068
    :pswitch_9
    iget-object v4, p0, Lsun/security/ssl/Handshaker;->protocolVersion:Lsun/security/ssl/ProtocolVersion;

    iget v4, v4, Lsun/security/ssl/ProtocolVersion;->v:I

    sget-object v5, Lsun/security/ssl/ProtocolVersion;->TLS12:Lsun/security/ssl/ProtocolVersion;

    iget v5, v5, Lsun/security/ssl/ProtocolVersion;->v:I

    if-lt v4, v5, :cond_e

    .line 1071
    const-string/jumbo v4, "DSA"

    .line 1070
    invoke-static {v3, v4}, Lsun/security/ssl/SignatureAndHashAlgorithm;->getPreferableAlgorithm(Ljava/util/Collection;Ljava/lang/String;)Lsun/security/ssl/SignatureAndHashAlgorithm;

    move-result-object v4

    .line 1069
    iput-object v4, p0, Lsun/security/ssl/ServerHandshaker;->preferableSignatureAlgorithm:Lsun/security/ssl/SignatureAndHashAlgorithm;

    .line 1072
    iget-object v4, p0, Lsun/security/ssl/ServerHandshaker;->preferableSignatureAlgorithm:Lsun/security/ssl/SignatureAndHashAlgorithm;

    if-nez v4, :cond_e

    .line 1073
    return v6

    .line 1078
    :cond_e
    const-string/jumbo v4, "DSA"

    invoke-direct {p0, v4}, Lsun/security/ssl/ServerHandshaker;->setupPrivateKeyAndChain(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_f

    .line 1079
    return v6

    .line 1081
    :cond_f
    iget-boolean v4, p1, Lsun/security/ssl/CipherSuite;->exportable:Z

    invoke-direct {p0, v4}, Lsun/security/ssl/ServerHandshaker;->setupEphemeralDHKeys(Z)V

    goto :goto_3

    .line 1085
    :pswitch_a
    iget-object v4, p0, Lsun/security/ssl/Handshaker;->protocolVersion:Lsun/security/ssl/ProtocolVersion;

    iget v4, v4, Lsun/security/ssl/ProtocolVersion;->v:I

    sget-object v5, Lsun/security/ssl/ProtocolVersion;->TLS12:Lsun/security/ssl/ProtocolVersion;

    iget v5, v5, Lsun/security/ssl/ProtocolVersion;->v:I

    if-lt v4, v5, :cond_10

    .line 1088
    const-string/jumbo v4, "ECDSA"

    .line 1087
    invoke-static {v3, v4}, Lsun/security/ssl/SignatureAndHashAlgorithm;->getPreferableAlgorithm(Ljava/util/Collection;Ljava/lang/String;)Lsun/security/ssl/SignatureAndHashAlgorithm;

    move-result-object v4

    .line 1086
    iput-object v4, p0, Lsun/security/ssl/ServerHandshaker;->preferableSignatureAlgorithm:Lsun/security/ssl/SignatureAndHashAlgorithm;

    .line 1089
    iget-object v4, p0, Lsun/security/ssl/ServerHandshaker;->preferableSignatureAlgorithm:Lsun/security/ssl/SignatureAndHashAlgorithm;

    if-nez v4, :cond_10

    .line 1090
    return v6

    .line 1095
    :cond_10
    const-string/jumbo v4, "EC_EC"

    invoke-direct {p0, v4}, Lsun/security/ssl/ServerHandshaker;->setupPrivateKeyAndChain(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_11

    .line 1096
    return v6

    .line 1098
    :cond_11
    invoke-direct {p0}, Lsun/security/ssl/ServerHandshaker;->setupEphemeralECDHKeys()Z

    move-result v4

    if-nez v4, :cond_a

    .line 1099
    return v6

    .line 1104
    :pswitch_b
    const-string/jumbo v4, "EC_RSA"

    invoke-direct {p0, v4}, Lsun/security/ssl/ServerHandshaker;->setupPrivateKeyAndChain(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_12

    .line 1105
    return v6

    .line 1107
    :cond_12
    invoke-direct {p0}, Lsun/security/ssl/ServerHandshaker;->setupStaticECDHKeys()V

    goto/16 :goto_3

    .line 1111
    :pswitch_c
    const-string/jumbo v4, "EC_EC"

    invoke-direct {p0, v4}, Lsun/security/ssl/ServerHandshaker;->setupPrivateKeyAndChain(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_13

    .line 1112
    return v6

    .line 1114
    :cond_13
    invoke-direct {p0}, Lsun/security/ssl/ServerHandshaker;->setupStaticECDHKeys()V

    goto/16 :goto_3

    .line 1119
    :pswitch_d
    invoke-direct {p0}, Lsun/security/ssl/ServerHandshaker;->setupKerberosKeys()Z

    move-result v4

    if-nez v4, :cond_a

    .line 1120
    return v6

    .line 1125
    :pswitch_e
    iget-boolean v4, p1, Lsun/security/ssl/CipherSuite;->exportable:Z

    invoke-direct {p0, v4}, Lsun/security/ssl/ServerHandshaker;->setupEphemeralDHKeys(Z)V

    goto/16 :goto_3

    .line 1129
    :pswitch_f
    invoke-direct {p0}, Lsun/security/ssl/ServerHandshaker;->setupEphemeralECDHKeys()Z

    move-result v4

    if-nez v4, :cond_a

    .line 1130
    return v6

    .line 1004
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

    .line 953
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
