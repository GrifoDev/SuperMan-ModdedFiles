.class final Lsun/security/ssl/RSAClientKeyExchange;
.super Lsun/security/ssl/HandshakeMessage;
.source "RSAClientKeyExchange.java"


# static fields
.field private static final PROP_NAME:Ljava/lang/String; = "com.sun.net.ssl.rsaPreMasterSecretFix"

.field private static final rsaPreMasterSecretFix:Z


# instance fields
.field private encrypted:[B

.field preMaster:Ljavax/crypto/SecretKey;

.field private protocolVersion:Lsun/security/ssl/ProtocolVersion;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string/jumbo v0, "com.sun.net.ssl.rsaPreMasterSecretFix"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lsun/security/ssl/Debug;->getBooleanProperty(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lsun/security/ssl/RSAClientKeyExchange;->rsaPreMasterSecretFix:Z

    return-void
.end method

.method constructor <init>(Lsun/security/ssl/ProtocolVersion;Lsun/security/ssl/ProtocolVersion;Ljava/security/SecureRandom;Ljava/security/PublicKey;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0}, Lsun/security/ssl/HandshakeMessage;-><init>()V

    invoke-interface {p4}, Ljava/security/PublicKey;->getAlgorithm()Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v7, "RSA"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    new-instance v6, Ljavax/net/ssl/SSLKeyException;

    const-string/jumbo v7, "Public key not of type RSA"

    invoke-direct {v6, v7}, Ljavax/net/ssl/SSLKeyException;-><init>(Ljava/lang/String;)V

    throw v6

    :cond_0
    iput-object p1, p0, Lsun/security/ssl/RSAClientKeyExchange;->protocolVersion:Lsun/security/ssl/ProtocolVersion;

    sget-boolean v6, Lsun/security/ssl/RSAClientKeyExchange;->rsaPreMasterSecretFix:Z

    if-nez v6, :cond_1

    iget v6, p2, Lsun/security/ssl/ProtocolVersion;->v:I

    sget-object v7, Lsun/security/ssl/ProtocolVersion;->TLS11:Lsun/security/ssl/ProtocolVersion;

    iget v7, v7, Lsun/security/ssl/ProtocolVersion;->v:I

    if-lt v6, v7, :cond_2

    :cond_1
    iget-byte v3, p2, Lsun/security/ssl/ProtocolVersion;->major:B

    iget-byte v4, p2, Lsun/security/ssl/ProtocolVersion;->minor:B

    :goto_0
    :try_start_0
    iget v6, p1, Lsun/security/ssl/ProtocolVersion;->v:I

    sget-object v7, Lsun/security/ssl/ProtocolVersion;->TLS12:Lsun/security/ssl/ProtocolVersion;

    iget v7, v7, Lsun/security/ssl/ProtocolVersion;->v:I

    if-lt v6, v7, :cond_3

    const-string/jumbo v5, "SunTls12RsaPremasterSecret"

    :goto_1
    invoke-static {v5}, Lsun/security/ssl/JsseJce;->getKeyGenerator(Ljava/lang/String;)Ljavax/crypto/KeyGenerator;

    move-result-object v2

    new-instance v6, Lsun/security/internal/spec/TlsRsaPremasterSecretParameterSpec;

    invoke-direct {v6, v3, v4}, Lsun/security/internal/spec/TlsRsaPremasterSecretParameterSpec;-><init>(II)V

    invoke-virtual {v2, v6, p3}, Ljavax/crypto/KeyGenerator;->init(Ljava/security/spec/AlgorithmParameterSpec;Ljava/security/SecureRandom;)V

    invoke-virtual {v2}, Ljavax/crypto/KeyGenerator;->generateKey()Ljavax/crypto/SecretKey;

    move-result-object v6

    iput-object v6, p0, Lsun/security/ssl/RSAClientKeyExchange;->preMaster:Ljavax/crypto/SecretKey;

    const-string/jumbo v6, "RSA/ECB/PKCS1Padding"

    invoke-static {v6}, Lsun/security/ssl/JsseJce;->getCipher(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v0

    const/4 v6, 0x3

    invoke-virtual {v0, v6, p4, p3}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/SecureRandom;)V

    iget-object v6, p0, Lsun/security/ssl/RSAClientKeyExchange;->preMaster:Ljavax/crypto/SecretKey;

    invoke-virtual {v0, v6}, Ljavax/crypto/Cipher;->wrap(Ljava/security/Key;)[B

    move-result-object v6

    iput-object v6, p0, Lsun/security/ssl/RSAClientKeyExchange;->encrypted:[B
    :try_end_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :cond_2
    iget-byte v3, p1, Lsun/security/ssl/ProtocolVersion;->major:B

    iget-byte v4, p1, Lsun/security/ssl/ProtocolVersion;->minor:B

    goto :goto_0

    :cond_3
    :try_start_1
    const-string/jumbo v5, "SunTlsRsaPremasterSecret"
    :try_end_1
    .catch Ljava/security/GeneralSecurityException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception v1

    new-instance v6, Ljavax/net/ssl/SSLKeyException;

    const-string/jumbo v7, "RSA premaster secret error"

    invoke-direct {v6, v7}, Ljavax/net/ssl/SSLKeyException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v1}, Ljava/lang/Throwable;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v6

    check-cast v6, Ljavax/net/ssl/SSLKeyException;

    throw v6
.end method

.method constructor <init>(Lsun/security/ssl/ProtocolVersion;Lsun/security/ssl/ProtocolVersion;Ljava/security/SecureRandom;Lsun/security/ssl/HandshakeInStream;ILjava/security/PrivateKey;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v7, 0x0

    invoke-direct {p0}, Lsun/security/ssl/HandshakeMessage;-><init>()V

    invoke-interface {p6}, Ljava/security/PrivateKey;->getAlgorithm()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "RSA"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljavax/net/ssl/SSLKeyException;

    const-string/jumbo v1, "Private key not of type RSA"

    invoke-direct {v0, v1}, Ljavax/net/ssl/SSLKeyException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget v0, p1, Lsun/security/ssl/ProtocolVersion;->v:I

    sget-object v1, Lsun/security/ssl/ProtocolVersion;->TLS10:Lsun/security/ssl/ProtocolVersion;

    iget v1, v1, Lsun/security/ssl/ProtocolVersion;->v:I

    if-lt v0, v1, :cond_2

    invoke-virtual {p4}, Lsun/security/ssl/HandshakeInStream;->getBytes16()[B

    move-result-object v0

    iput-object v0, p0, Lsun/security/ssl/RSAClientKeyExchange;->encrypted:[B

    :cond_1
    :try_start_0
    const-string/jumbo v0, "RSA/ECB/PKCS1Padding"

    invoke-static {v0}, Lsun/security/ssl/JsseJce;->getCipher(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v6

    const/4 v0, 0x4

    invoke-virtual {v6, v0, p6}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    iget-object v0, p0, Lsun/security/ssl/RSAClientKeyExchange;->encrypted:[B

    const-string/jumbo v1, "TlsRsaPremasterSecret"

    const/4 v2, 0x3

    invoke-virtual {v6, v0, v1, v2}, Ljavax/crypto/Cipher;->unwrap([BLjava/lang/String;I)Ljava/security/Key;

    move-result-object v0

    check-cast v0, Ljavax/crypto/SecretKey;

    iput-object v0, p0, Lsun/security/ssl/RSAClientKeyExchange;->preMaster:Ljavax/crypto/SecretKey;

    iget-object v4, p0, Lsun/security/ssl/RSAClientKeyExchange;->preMaster:Ljavax/crypto/SecretKey;

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v5}, Lsun/security/ssl/RSAClientKeyExchange;->polishPreMasterSecretKey(Lsun/security/ssl/ProtocolVersion;Lsun/security/ssl/ProtocolVersion;Ljava/security/SecureRandom;Ljavax/crypto/SecretKey;Ljava/lang/Exception;)Ljavax/crypto/SecretKey;

    move-result-object v0

    iput-object v0, p0, Lsun/security/ssl/RSAClientKeyExchange;->preMaster:Ljavax/crypto/SecretKey;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :cond_2
    new-array v0, p5, [B

    iput-object v0, p0, Lsun/security/ssl/RSAClientKeyExchange;->encrypted:[B

    iget-object v0, p0, Lsun/security/ssl/RSAClientKeyExchange;->encrypted:[B

    invoke-virtual {p4, v0}, Ljava/io/InputStream;->read([B)I

    move-result v0

    if-eq v0, p5, :cond_1

    new-instance v0, Ljavax/net/ssl/SSLProtocolException;

    const-string/jumbo v1, "SSL: read PreMasterSecret: short read"

    invoke-direct {v0, v1}, Ljavax/net/ssl/SSLProtocolException;-><init>(Ljava/lang/String;)V

    throw v0

    :catch_0
    move-exception v5

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, v7

    invoke-direct/range {v0 .. v5}, Lsun/security/ssl/RSAClientKeyExchange;->polishPreMasterSecretKey(Lsun/security/ssl/ProtocolVersion;Lsun/security/ssl/ProtocolVersion;Ljava/security/SecureRandom;Ljavax/crypto/SecretKey;Ljava/lang/Exception;)Ljavax/crypto/SecretKey;

    move-result-object v0

    iput-object v0, p0, Lsun/security/ssl/RSAClientKeyExchange;->preMaster:Ljavax/crypto/SecretKey;

    goto :goto_0
.end method

.method static generateDummySecret(Lsun/security/ssl/ProtocolVersion;)Ljavax/crypto/SecretKey;
    .locals 6

    sget-object v3, Lsun/security/ssl/RSAClientKeyExchange;->debug:Lsun/security/ssl/Debug;

    if-eqz v3, :cond_0

    const-string/jumbo v3, "handshake"

    invoke-static {v3}, Lsun/security/ssl/Debug;->isOn(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string/jumbo v4, "Generating a random fake premaster secret"

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_0
    :try_start_0
    iget v3, p0, Lsun/security/ssl/ProtocolVersion;->v:I

    sget-object v4, Lsun/security/ssl/ProtocolVersion;->TLS12:Lsun/security/ssl/ProtocolVersion;

    iget v4, v4, Lsun/security/ssl/ProtocolVersion;->v:I

    if-lt v3, v4, :cond_1

    const-string/jumbo v2, "SunTls12RsaPremasterSecret"

    :goto_0
    invoke-static {v2}, Lsun/security/ssl/JsseJce;->getKeyGenerator(Ljava/lang/String;)Ljavax/crypto/KeyGenerator;

    move-result-object v1

    new-instance v3, Lsun/security/internal/spec/TlsRsaPremasterSecretParameterSpec;

    iget-byte v4, p0, Lsun/security/ssl/ProtocolVersion;->major:B

    iget-byte v5, p0, Lsun/security/ssl/ProtocolVersion;->minor:B

    invoke-direct {v3, v4, v5}, Lsun/security/internal/spec/TlsRsaPremasterSecretParameterSpec;-><init>(II)V

    invoke-virtual {v1, v3}, Ljavax/crypto/KeyGenerator;->init(Ljava/security/spec/AlgorithmParameterSpec;)V

    invoke-virtual {v1}, Ljavax/crypto/KeyGenerator;->generateKey()Ljavax/crypto/SecretKey;

    move-result-object v3

    return-object v3

    :cond_1
    const-string/jumbo v2, "SunTlsRsaPremasterSecret"
    :try_end_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v3, Ljava/lang/RuntimeException;

    const-string/jumbo v4, "Could not generate dummy secret"

    invoke-direct {v3, v4, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3
.end method

.method private polishPreMasterSecretKey(Lsun/security/ssl/ProtocolVersion;Lsun/security/ssl/ProtocolVersion;Ljava/security/SecureRandom;Ljavax/crypto/SecretKey;Ljava/lang/Exception;)Ljavax/crypto/SecretKey;
    .locals 7

    const/4 v6, 0x1

    const/4 v5, 0x0

    iput-object p2, p0, Lsun/security/ssl/RSAClientKeyExchange;->protocolVersion:Lsun/security/ssl/ProtocolVersion;

    if-nez p5, :cond_9

    if-eqz p4, :cond_9

    invoke-interface {p4}, Ljavax/crypto/SecretKey;->getEncoded()[B

    move-result-object v0

    if-nez v0, :cond_3

    sget-object v2, Lsun/security/ssl/RSAClientKeyExchange;->debug:Lsun/security/ssl/Debug;

    if-eqz v2, :cond_0

    const-string/jumbo v2, "handshake"

    invoke-static {v2}, Lsun/security/ssl/Debug;->isOn(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string/jumbo v3, "unable to get the plaintext of the premaster secret"

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_0
    invoke-static {p4}, Lsun/security/util/KeyUtil;->getKeySize(Ljava/security/Key;)I

    move-result v1

    if-lez v1, :cond_2

    const/16 v2, 0x180

    if-eq v1, v2, :cond_2

    sget-object v2, Lsun/security/ssl/RSAClientKeyExchange;->debug:Lsun/security/ssl/Debug;

    if-eqz v2, :cond_1

    const-string/jumbo v2, "handshake"

    invoke-static {v2}, Lsun/security/ssl/Debug;->isOn(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "incorrect length of premaster secret: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    div-int/lit8 v4, v1, 0x8

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_1
    invoke-static {p2}, Lsun/security/ssl/RSAClientKeyExchange;->generateDummySecret(Lsun/security/ssl/ProtocolVersion;)Ljavax/crypto/SecretKey;

    move-result-object v2

    return-object v2

    :cond_2
    return-object p4

    :cond_3
    array-length v2, v0

    const/16 v3, 0x30

    if-ne v2, v3, :cond_7

    iget-byte v2, p2, Lsun/security/ssl/ProtocolVersion;->major:B

    aget-byte v3, v0, v5

    if-ne v2, v3, :cond_4

    iget-byte v2, p2, Lsun/security/ssl/ProtocolVersion;->minor:B

    aget-byte v3, v0, v6

    if-ne v2, v3, :cond_4

    return-object p4

    :cond_4
    iget v2, p2, Lsun/security/ssl/ProtocolVersion;->v:I

    sget-object v3, Lsun/security/ssl/ProtocolVersion;->TLS10:Lsun/security/ssl/ProtocolVersion;

    iget v3, v3, Lsun/security/ssl/ProtocolVersion;->v:I

    if-gt v2, v3, :cond_5

    iget-byte v2, p1, Lsun/security/ssl/ProtocolVersion;->major:B

    aget-byte v3, v0, v5

    if-ne v2, v3, :cond_5

    iget-byte v2, p1, Lsun/security/ssl/ProtocolVersion;->minor:B

    aget-byte v3, v0, v6

    if-ne v2, v3, :cond_5

    iput-object p1, p0, Lsun/security/ssl/RSAClientKeyExchange;->protocolVersion:Lsun/security/ssl/ProtocolVersion;

    return-object p4

    :cond_5
    sget-object v2, Lsun/security/ssl/RSAClientKeyExchange;->debug:Lsun/security/ssl/Debug;

    if-eqz v2, :cond_6

    const-string/jumbo v2, "handshake"

    invoke-static {v2}, Lsun/security/ssl/Debug;->isOn(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6

    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Mismatching Protocol Versions, ClientHello.client_version is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", while PreMasterSecret.client_version is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget-byte v4, v0, v5

    aget-byte v5, v0, v6

    invoke-static {v4, v5}, Lsun/security/ssl/ProtocolVersion;->valueOf(II)Lsun/security/ssl/ProtocolVersion;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_6
    invoke-static {p2}, Lsun/security/ssl/RSAClientKeyExchange;->generateDummySecret(Lsun/security/ssl/ProtocolVersion;)Ljavax/crypto/SecretKey;

    move-result-object v2

    return-object v2

    :cond_7
    sget-object v2, Lsun/security/ssl/RSAClientKeyExchange;->debug:Lsun/security/ssl/Debug;

    if-eqz v2, :cond_8

    const-string/jumbo v2, "handshake"

    invoke-static {v2}, Lsun/security/ssl/Debug;->isOn(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_8

    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "incorrect length of premaster secret: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    array-length v4, v0

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_8
    invoke-static {p2}, Lsun/security/ssl/RSAClientKeyExchange;->generateDummySecret(Lsun/security/ssl/ProtocolVersion;)Ljavax/crypto/SecretKey;

    move-result-object v2

    return-object v2

    :cond_9
    sget-object v2, Lsun/security/ssl/RSAClientKeyExchange;->debug:Lsun/security/ssl/Debug;

    if-eqz v2, :cond_a

    const-string/jumbo v2, "handshake"

    invoke-static {v2}, Lsun/security/ssl/Debug;->isOn(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_a

    if-eqz p5, :cond_a

    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string/jumbo v3, "Error decrypting premaster secret:"

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {p5, v2}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintStream;)V

    :cond_a
    invoke-static {p2}, Lsun/security/ssl/RSAClientKeyExchange;->generateDummySecret(Lsun/security/ssl/ProtocolVersion;)Ljavax/crypto/SecretKey;

    move-result-object v2

    return-object v2
.end method


# virtual methods
.method messageLength()I
    .locals 2

    iget-object v0, p0, Lsun/security/ssl/RSAClientKeyExchange;->protocolVersion:Lsun/security/ssl/ProtocolVersion;

    iget v0, v0, Lsun/security/ssl/ProtocolVersion;->v:I

    sget-object v1, Lsun/security/ssl/ProtocolVersion;->TLS10:Lsun/security/ssl/ProtocolVersion;

    iget v1, v1, Lsun/security/ssl/ProtocolVersion;->v:I

    if-lt v0, v1, :cond_0

    iget-object v0, p0, Lsun/security/ssl/RSAClientKeyExchange;->encrypted:[B

    array-length v0, v0

    add-int/lit8 v0, v0, 0x2

    return v0

    :cond_0
    iget-object v0, p0, Lsun/security/ssl/RSAClientKeyExchange;->encrypted:[B

    array-length v0, v0

    return v0
.end method

.method messageType()I
    .locals 1

    const/16 v0, 0x10

    return v0
.end method

.method print(Ljava/io/PrintStream;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "*** ClientKeyExchange, RSA PreMasterSecret, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lsun/security/ssl/RSAClientKeyExchange;->protocolVersion:Lsun/security/ssl/ProtocolVersion;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    return-void
.end method

.method send(Lsun/security/ssl/HandshakeOutStream;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lsun/security/ssl/RSAClientKeyExchange;->protocolVersion:Lsun/security/ssl/ProtocolVersion;

    iget v0, v0, Lsun/security/ssl/ProtocolVersion;->v:I

    sget-object v1, Lsun/security/ssl/ProtocolVersion;->TLS10:Lsun/security/ssl/ProtocolVersion;

    iget v1, v1, Lsun/security/ssl/ProtocolVersion;->v:I

    if-lt v0, v1, :cond_0

    iget-object v0, p0, Lsun/security/ssl/RSAClientKeyExchange;->encrypted:[B

    invoke-virtual {p1, v0}, Lsun/security/ssl/HandshakeOutStream;->putBytes16([B)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lsun/security/ssl/RSAClientKeyExchange;->encrypted:[B

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    goto :goto_0
.end method
