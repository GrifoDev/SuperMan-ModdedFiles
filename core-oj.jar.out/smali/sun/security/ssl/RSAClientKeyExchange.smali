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

    .prologue
    .line 68
    const-string/jumbo v0, "com.sun.net.ssl.rsaPreMasterSecretFix"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lsun/security/ssl/Debug;->getBooleanProperty(Ljava/lang/String;Z)Z

    move-result v0

    .line 67
    sput-boolean v0, Lsun/security/ssl/RSAClientKeyExchange;->rsaPreMasterSecretFix:Z

    .line 51
    return-void
.end method

.method constructor <init>(Lsun/security/ssl/ProtocolVersion;Lsun/security/ssl/ProtocolVersion;Ljava/security/SecureRandom;Ljava/security/PublicKey;)V
    .locals 8
    .param p1, "protocolVersion"    # Lsun/security/ssl/ProtocolVersion;
    .param p2, "maxVersion"    # Lsun/security/ssl/ProtocolVersion;
    .param p3, "generator"    # Ljava/security/SecureRandom;
    .param p4, "publicKey"    # Ljava/security/PublicKey;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 85
    invoke-direct {p0}, Lsun/security/ssl/HandshakeMessage;-><init>()V

    .line 88
    invoke-interface {p4}, Ljava/security/PublicKey;->getAlgorithm()Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v7, "RSA"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 89
    new-instance v6, Ljavax/net/ssl/SSLKeyException;

    const-string/jumbo v7, "Public key not of type RSA"

    invoke-direct {v6, v7}, Ljavax/net/ssl/SSLKeyException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 91
    :cond_0
    iput-object p1, p0, Lsun/security/ssl/RSAClientKeyExchange;->protocolVersion:Lsun/security/ssl/ProtocolVersion;

    .line 95
    sget-boolean v6, Lsun/security/ssl/RSAClientKeyExchange;->rsaPreMasterSecretFix:Z

    if-nez v6, :cond_1

    iget v6, p2, Lsun/security/ssl/ProtocolVersion;->v:I

    sget-object v7, Lsun/security/ssl/ProtocolVersion;->TLS11:Lsun/security/ssl/ProtocolVersion;

    iget v7, v7, Lsun/security/ssl/ProtocolVersion;->v:I

    if-lt v6, v7, :cond_2

    .line 96
    :cond_1
    iget-byte v3, p2, Lsun/security/ssl/ProtocolVersion;->major:B

    .line 97
    .local v3, "major":I
    iget-byte v4, p2, Lsun/security/ssl/ProtocolVersion;->minor:B

    .line 104
    .local v4, "minor":I
    :goto_0
    :try_start_0
    iget v6, p1, Lsun/security/ssl/ProtocolVersion;->v:I

    sget-object v7, Lsun/security/ssl/ProtocolVersion;->TLS12:Lsun/security/ssl/ProtocolVersion;

    iget v7, v7, Lsun/security/ssl/ProtocolVersion;->v:I

    if-lt v6, v7, :cond_3

    .line 105
    const-string/jumbo v5, "SunTls12RsaPremasterSecret"

    .line 106
    .local v5, "s":Ljava/lang/String;
    :goto_1
    invoke-static {v5}, Lsun/security/ssl/JsseJce;->getKeyGenerator(Ljava/lang/String;)Ljavax/crypto/KeyGenerator;

    move-result-object v2

    .line 107
    .local v2, "kg":Ljavax/crypto/KeyGenerator;
    new-instance v6, Lsun/security/internal/spec/TlsRsaPremasterSecretParameterSpec;

    invoke-direct {v6, v3, v4}, Lsun/security/internal/spec/TlsRsaPremasterSecretParameterSpec;-><init>(II)V

    invoke-virtual {v2, v6, p3}, Ljavax/crypto/KeyGenerator;->init(Ljava/security/spec/AlgorithmParameterSpec;Ljava/security/SecureRandom;)V

    .line 109
    invoke-virtual {v2}, Ljavax/crypto/KeyGenerator;->generateKey()Ljavax/crypto/SecretKey;

    move-result-object v6

    iput-object v6, p0, Lsun/security/ssl/RSAClientKeyExchange;->preMaster:Ljavax/crypto/SecretKey;

    .line 111
    const-string/jumbo v6, "RSA/ECB/PKCS1Padding"

    invoke-static {v6}, Lsun/security/ssl/JsseJce;->getCipher(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v0

    .line 112
    .local v0, "cipher":Ljavax/crypto/Cipher;
    const/4 v6, 0x3

    invoke-virtual {v0, v6, p4, p3}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/SecureRandom;)V

    .line 113
    iget-object v6, p0, Lsun/security/ssl/RSAClientKeyExchange;->preMaster:Ljavax/crypto/SecretKey;

    invoke-virtual {v0, v6}, Ljavax/crypto/Cipher;->wrap(Ljava/security/Key;)[B

    move-result-object v6

    iput-object v6, p0, Lsun/security/ssl/RSAClientKeyExchange;->encrypted:[B
    :try_end_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 87
    return-void

    .line 99
    .end local v0    # "cipher":Ljavax/crypto/Cipher;
    .end local v2    # "kg":Ljavax/crypto/KeyGenerator;
    .end local v3    # "major":I
    .end local v4    # "minor":I
    .end local v5    # "s":Ljava/lang/String;
    :cond_2
    iget-byte v3, p1, Lsun/security/ssl/ProtocolVersion;->major:B

    .line 100
    .restart local v3    # "major":I
    iget-byte v4, p1, Lsun/security/ssl/ProtocolVersion;->minor:B

    .restart local v4    # "minor":I
    goto :goto_0

    .line 105
    :cond_3
    :try_start_1
    const-string/jumbo v5, "SunTlsRsaPremasterSecret"
    :try_end_1
    .catch Ljava/security/GeneralSecurityException; {:try_start_1 .. :try_end_1} :catch_0

    .restart local v5    # "s":Ljava/lang/String;
    goto :goto_1

    .line 114
    .end local v5    # "s":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 115
    .local v1, "e":Ljava/security/GeneralSecurityException;
    new-instance v6, Ljavax/net/ssl/SSLKeyException;

    .line 116
    const-string/jumbo v7, "RSA premaster secret error"

    .line 115
    invoke-direct {v6, v7}, Ljavax/net/ssl/SSLKeyException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v1}, Ljava/lang/Throwable;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v6

    check-cast v6, Ljavax/net/ssl/SSLKeyException;

    throw v6
.end method

.method constructor <init>(Lsun/security/ssl/ProtocolVersion;Lsun/security/ssl/ProtocolVersion;Ljava/security/SecureRandom;Lsun/security/ssl/HandshakeInStream;ILjava/security/PrivateKey;)V
    .locals 8
    .param p1, "currentVersion"    # Lsun/security/ssl/ProtocolVersion;
    .param p2, "maxVersion"    # Lsun/security/ssl/ProtocolVersion;
    .param p3, "generator"    # Ljava/security/SecureRandom;
    .param p4, "input"    # Lsun/security/ssl/HandshakeInStream;
    .param p5, "messageSize"    # I
    .param p6, "privateKey"    # Ljava/security/PrivateKey;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x0

    .line 124
    invoke-direct {p0}, Lsun/security/ssl/HandshakeMessage;-><init>()V

    .line 129
    invoke-interface {p6}, Ljava/security/PrivateKey;->getAlgorithm()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "RSA"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 130
    new-instance v0, Ljavax/net/ssl/SSLKeyException;

    const-string/jumbo v1, "Private key not of type RSA"

    invoke-direct {v0, v1}, Ljavax/net/ssl/SSLKeyException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 133
    :cond_0
    iget v0, p1, Lsun/security/ssl/ProtocolVersion;->v:I

    sget-object v1, Lsun/security/ssl/ProtocolVersion;->TLS10:Lsun/security/ssl/ProtocolVersion;

    iget v1, v1, Lsun/security/ssl/ProtocolVersion;->v:I

    if-lt v0, v1, :cond_2

    .line 134
    invoke-virtual {p4}, Lsun/security/ssl/HandshakeInStream;->getBytes16()[B

    move-result-object v0

    iput-object v0, p0, Lsun/security/ssl/RSAClientKeyExchange;->encrypted:[B

    .line 144
    :cond_1
    :try_start_0
    const-string/jumbo v0, "RSA/ECB/PKCS1Padding"

    invoke-static {v0}, Lsun/security/ssl/JsseJce;->getCipher(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v6

    .line 145
    .local v6, "cipher":Ljavax/crypto/Cipher;
    const/4 v0, 0x4

    invoke-virtual {v6, v0, p6}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    .line 146
    iget-object v0, p0, Lsun/security/ssl/RSAClientKeyExchange;->encrypted:[B

    .line 147
    const-string/jumbo v1, "TlsRsaPremasterSecret"

    const/4 v2, 0x3

    .line 146
    invoke-virtual {v6, v0, v1, v2}, Ljavax/crypto/Cipher;->unwrap([BLjava/lang/String;I)Ljava/security/Key;

    move-result-object v0

    check-cast v0, Ljavax/crypto/SecretKey;

    iput-object v0, p0, Lsun/security/ssl/RSAClientKeyExchange;->preMaster:Ljavax/crypto/SecretKey;

    .line 151
    iget-object v4, p0, Lsun/security/ssl/RSAClientKeyExchange;->preMaster:Ljavax/crypto/SecretKey;

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    .line 150
    invoke-direct/range {v0 .. v5}, Lsun/security/ssl/RSAClientKeyExchange;->polishPreMasterSecretKey(Lsun/security/ssl/ProtocolVersion;Lsun/security/ssl/ProtocolVersion;Ljava/security/SecureRandom;Ljavax/crypto/SecretKey;Ljava/lang/Exception;)Ljavax/crypto/SecretKey;

    move-result-object v0

    iput-object v0, p0, Lsun/security/ssl/RSAClientKeyExchange;->preMaster:Ljavax/crypto/SecretKey;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 127
    .end local v6    # "cipher":Ljavax/crypto/Cipher;
    :goto_0
    return-void

    .line 136
    :cond_2
    new-array v0, p5, [B

    iput-object v0, p0, Lsun/security/ssl/RSAClientKeyExchange;->encrypted:[B

    .line 137
    iget-object v0, p0, Lsun/security/ssl/RSAClientKeyExchange;->encrypted:[B

    invoke-virtual {p4, v0}, Ljava/io/InputStream;->read([B)I

    move-result v0

    if-eq v0, p5, :cond_1

    .line 138
    new-instance v0, Ljavax/net/ssl/SSLProtocolException;

    .line 139
    const-string/jumbo v1, "SSL: read PreMasterSecret: short read"

    .line 138
    invoke-direct {v0, v1}, Ljavax/net/ssl/SSLProtocolException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 152
    :catch_0
    move-exception v5

    .local v5, "e":Ljava/lang/Exception;
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, v7

    .line 155
    invoke-direct/range {v0 .. v5}, Lsun/security/ssl/RSAClientKeyExchange;->polishPreMasterSecretKey(Lsun/security/ssl/ProtocolVersion;Lsun/security/ssl/ProtocolVersion;Ljava/security/SecureRandom;Ljavax/crypto/SecretKey;Ljava/lang/Exception;)Ljavax/crypto/SecretKey;

    move-result-object v0

    .line 154
    iput-object v0, p0, Lsun/security/ssl/RSAClientKeyExchange;->preMaster:Ljavax/crypto/SecretKey;

    goto :goto_0
.end method

.method static generateDummySecret(Lsun/security/ssl/ProtocolVersion;)Ljavax/crypto/SecretKey;
    .locals 6
    .param p0, "version"    # Lsun/security/ssl/ProtocolVersion;

    .prologue
    .line 260
    sget-object v3, Lsun/security/ssl/RSAClientKeyExchange;->debug:Lsun/security/ssl/Debug;

    if-eqz v3, :cond_0

    const-string/jumbo v3, "handshake"

    invoke-static {v3}, Lsun/security/ssl/Debug;->isOn(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 261
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string/jumbo v4, "Generating a random fake premaster secret"

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 265
    :cond_0
    :try_start_0
    iget v3, p0, Lsun/security/ssl/ProtocolVersion;->v:I

    sget-object v4, Lsun/security/ssl/ProtocolVersion;->TLS12:Lsun/security/ssl/ProtocolVersion;

    iget v4, v4, Lsun/security/ssl/ProtocolVersion;->v:I

    if-lt v3, v4, :cond_1

    .line 266
    const-string/jumbo v2, "SunTls12RsaPremasterSecret"

    .line 267
    .local v2, "s":Ljava/lang/String;
    :goto_0
    invoke-static {v2}, Lsun/security/ssl/JsseJce;->getKeyGenerator(Ljava/lang/String;)Ljavax/crypto/KeyGenerator;

    move-result-object v1

    .line 268
    .local v1, "kg":Ljavax/crypto/KeyGenerator;
    new-instance v3, Lsun/security/internal/spec/TlsRsaPremasterSecretParameterSpec;

    .line 269
    iget-byte v4, p0, Lsun/security/ssl/ProtocolVersion;->major:B

    iget-byte v5, p0, Lsun/security/ssl/ProtocolVersion;->minor:B

    .line 268
    invoke-direct {v3, v4, v5}, Lsun/security/internal/spec/TlsRsaPremasterSecretParameterSpec;-><init>(II)V

    invoke-virtual {v1, v3}, Ljavax/crypto/KeyGenerator;->init(Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 270
    invoke-virtual {v1}, Ljavax/crypto/KeyGenerator;->generateKey()Ljavax/crypto/SecretKey;

    move-result-object v3

    return-object v3

    .line 266
    .end local v1    # "kg":Ljavax/crypto/KeyGenerator;
    .end local v2    # "s":Ljava/lang/String;
    :cond_1
    const-string/jumbo v2, "SunTlsRsaPremasterSecret"
    :try_end_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .restart local v2    # "s":Ljava/lang/String;
    goto :goto_0

    .line 271
    .end local v2    # "s":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 272
    .local v0, "e":Ljava/security/GeneralSecurityException;
    new-instance v3, Ljava/lang/RuntimeException;

    const-string/jumbo v4, "Could not generate dummy secret"

    invoke-direct {v3, v4, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3
.end method

.method private polishPreMasterSecretKey(Lsun/security/ssl/ProtocolVersion;Lsun/security/ssl/ProtocolVersion;Ljava/security/SecureRandom;Ljavax/crypto/SecretKey;Ljava/lang/Exception;)Ljavax/crypto/SecretKey;
    .locals 7
    .param p1, "currentVersion"    # Lsun/security/ssl/ProtocolVersion;
    .param p2, "clientHelloVersion"    # Lsun/security/ssl/ProtocolVersion;
    .param p3, "generator"    # Ljava/security/SecureRandom;
    .param p4, "secretKey"    # Ljavax/crypto/SecretKey;
    .param p5, "failoverException"    # Ljava/lang/Exception;

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 185
    iput-object p2, p0, Lsun/security/ssl/RSAClientKeyExchange;->protocolVersion:Lsun/security/ssl/ProtocolVersion;

    .line 187
    if-nez p5, :cond_9

    if-eqz p4, :cond_9

    .line 189
    invoke-interface {p4}, Ljavax/crypto/SecretKey;->getEncoded()[B

    move-result-object v0

    .line 190
    .local v0, "encoded":[B
    if-nez v0, :cond_3

    .line 191
    sget-object v2, Lsun/security/ssl/RSAClientKeyExchange;->debug:Lsun/security/ssl/Debug;

    if-eqz v2, :cond_0

    const-string/jumbo v2, "handshake"

    invoke-static {v2}, Lsun/security/ssl/Debug;->isOn(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 192
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    .line 193
    const-string/jumbo v3, "unable to get the plaintext of the premaster secret"

    .line 192
    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 196
    :cond_0
    invoke-static {p4}, Lsun/security/util/KeyUtil;->getKeySize(Ljava/security/Key;)I

    move-result v1

    .line 197
    .local v1, "keySize":I
    if-lez v1, :cond_2

    const/16 v2, 0x180

    if-eq v1, v2, :cond_2

    .line 198
    sget-object v2, Lsun/security/ssl/RSAClientKeyExchange;->debug:Lsun/security/ssl/Debug;

    if-eqz v2, :cond_1

    const-string/jumbo v2, "handshake"

    invoke-static {v2}, Lsun/security/ssl/Debug;->isOn(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 199
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    .line 200
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "incorrect length of premaster secret: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 201
    div-int/lit8 v4, v1, 0x8

    .line 200
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 199
    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 204
    :cond_1
    invoke-static {p2}, Lsun/security/ssl/RSAClientKeyExchange;->generateDummySecret(Lsun/security/ssl/ProtocolVersion;)Ljavax/crypto/SecretKey;

    move-result-object v2

    return-object v2

    .line 211
    :cond_2
    return-object p4

    .line 212
    .end local v1    # "keySize":I
    :cond_3
    array-length v2, v0

    const/16 v3, 0x30

    if-ne v2, v3, :cond_7

    .line 214
    iget-byte v2, p2, Lsun/security/ssl/ProtocolVersion;->major:B

    aget-byte v3, v0, v5

    if-ne v2, v3, :cond_4

    .line 215
    iget-byte v2, p2, Lsun/security/ssl/ProtocolVersion;->minor:B

    aget-byte v3, v0, v6

    if-ne v2, v3, :cond_4

    .line 217
    return-object p4

    .line 218
    :cond_4
    iget v2, p2, Lsun/security/ssl/ProtocolVersion;->v:I

    sget-object v3, Lsun/security/ssl/ProtocolVersion;->TLS10:Lsun/security/ssl/ProtocolVersion;

    iget v3, v3, Lsun/security/ssl/ProtocolVersion;->v:I

    if-gt v2, v3, :cond_5

    .line 219
    iget-byte v2, p1, Lsun/security/ssl/ProtocolVersion;->major:B

    aget-byte v3, v0, v5

    if-ne v2, v3, :cond_5

    .line 220
    iget-byte v2, p1, Lsun/security/ssl/ProtocolVersion;->minor:B

    aget-byte v3, v0, v6

    if-ne v2, v3, :cond_5

    .line 226
    iput-object p1, p0, Lsun/security/ssl/RSAClientKeyExchange;->protocolVersion:Lsun/security/ssl/ProtocolVersion;

    .line 227
    return-object p4

    .line 230
    :cond_5
    sget-object v2, Lsun/security/ssl/RSAClientKeyExchange;->debug:Lsun/security/ssl/Debug;

    if-eqz v2, :cond_6

    const-string/jumbo v2, "handshake"

    invoke-static {v2}, Lsun/security/ssl/Debug;->isOn(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 231
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Mismatching Protocol Versions, ClientHello.client_version is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 233
    const-string/jumbo v4, ", while PreMasterSecret.client_version is "

    .line 231
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 234
    aget-byte v4, v0, v5

    aget-byte v5, v0, v6

    invoke-static {v4, v5}, Lsun/security/ssl/ProtocolVersion;->valueOf(II)Lsun/security/ssl/ProtocolVersion;

    move-result-object v4

    .line 231
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 237
    :cond_6
    invoke-static {p2}, Lsun/security/ssl/RSAClientKeyExchange;->generateDummySecret(Lsun/security/ssl/ProtocolVersion;)Ljavax/crypto/SecretKey;

    move-result-object v2

    return-object v2

    .line 239
    :cond_7
    sget-object v2, Lsun/security/ssl/RSAClientKeyExchange;->debug:Lsun/security/ssl/Debug;

    if-eqz v2, :cond_8

    const-string/jumbo v2, "handshake"

    invoke-static {v2}, Lsun/security/ssl/Debug;->isOn(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 240
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    .line 241
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "incorrect length of premaster secret: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 242
    array-length v4, v0

    .line 241
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 240
    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 245
    :cond_8
    invoke-static {p2}, Lsun/security/ssl/RSAClientKeyExchange;->generateDummySecret(Lsun/security/ssl/ProtocolVersion;)Ljavax/crypto/SecretKey;

    move-result-object v2

    return-object v2

    .line 249
    .end local v0    # "encoded":[B
    :cond_9
    sget-object v2, Lsun/security/ssl/RSAClientKeyExchange;->debug:Lsun/security/ssl/Debug;

    if-eqz v2, :cond_a

    const-string/jumbo v2, "handshake"

    invoke-static {v2}, Lsun/security/ssl/Debug;->isOn(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 250
    if-eqz p5, :cond_a

    .line 251
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string/jumbo v3, "Error decrypting premaster secret:"

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 252
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {p5, v2}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintStream;)V

    .line 255
    :cond_a
    invoke-static {p2}, Lsun/security/ssl/RSAClientKeyExchange;->generateDummySecret(Lsun/security/ssl/ProtocolVersion;)Ljavax/crypto/SecretKey;

    move-result-object v2

    return-object v2
.end method


# virtual methods
.method messageLength()I
    .locals 2

    .prologue
    .line 283
    iget-object v0, p0, Lsun/security/ssl/RSAClientKeyExchange;->protocolVersion:Lsun/security/ssl/ProtocolVersion;

    iget v0, v0, Lsun/security/ssl/ProtocolVersion;->v:I

    sget-object v1, Lsun/security/ssl/ProtocolVersion;->TLS10:Lsun/security/ssl/ProtocolVersion;

    iget v1, v1, Lsun/security/ssl/ProtocolVersion;->v:I

    if-lt v0, v1, :cond_0

    .line 284
    iget-object v0, p0, Lsun/security/ssl/RSAClientKeyExchange;->encrypted:[B

    array-length v0, v0

    add-int/lit8 v0, v0, 0x2

    return v0

    .line 286
    :cond_0
    iget-object v0, p0, Lsun/security/ssl/RSAClientKeyExchange;->encrypted:[B

    array-length v0, v0

    return v0
.end method

.method messageType()I
    .locals 1

    .prologue
    .line 278
    const/16 v0, 0x10

    return v0
.end method

.method print(Ljava/io/PrintStream;)V
    .locals 2
    .param p1, "s"    # Ljava/io/PrintStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 301
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "*** ClientKeyExchange, RSA PreMasterSecret, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 302
    iget-object v1, p0, Lsun/security/ssl/RSAClientKeyExchange;->protocolVersion:Lsun/security/ssl/ProtocolVersion;

    .line 301
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 300
    return-void
.end method

.method send(Lsun/security/ssl/HandshakeOutStream;)V
    .locals 2
    .param p1, "s"    # Lsun/security/ssl/HandshakeOutStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 292
    iget-object v0, p0, Lsun/security/ssl/RSAClientKeyExchange;->protocolVersion:Lsun/security/ssl/ProtocolVersion;

    iget v0, v0, Lsun/security/ssl/ProtocolVersion;->v:I

    sget-object v1, Lsun/security/ssl/ProtocolVersion;->TLS10:Lsun/security/ssl/ProtocolVersion;

    iget v1, v1, Lsun/security/ssl/ProtocolVersion;->v:I

    if-lt v0, v1, :cond_0

    .line 293
    iget-object v0, p0, Lsun/security/ssl/RSAClientKeyExchange;->encrypted:[B

    invoke-virtual {p1, v0}, Lsun/security/ssl/HandshakeOutStream;->putBytes16([B)V

    .line 291
    :goto_0
    return-void

    .line 295
    :cond_0
    iget-object v0, p0, Lsun/security/ssl/RSAClientKeyExchange;->encrypted:[B

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    goto :goto_0
.end method
