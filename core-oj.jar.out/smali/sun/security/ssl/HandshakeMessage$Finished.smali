.class final Lsun/security/ssl/HandshakeMessage$Finished;
.super Lsun/security/ssl/HandshakeMessage;
.source "HandshakeMessage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lsun/security/ssl/HandshakeMessage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Finished"
.end annotation


# static fields
.field static final CLIENT:I = 0x1

.field static final SERVER:I = 0x2

.field private static final SSL_CLIENT:[B

.field private static final SSL_SERVER:[B


# instance fields
.field private cipherSuite:Lsun/security/ssl/CipherSuite;

.field private protocolVersion:Lsun/security/ssl/ProtocolVersion;

.field private verifyData:[B


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v1, 0x4

    new-array v0, v1, [B

    fill-array-data v0, :array_0

    sput-object v0, Lsun/security/ssl/HandshakeMessage$Finished;->SSL_CLIENT:[B

    new-array v0, v1, [B

    fill-array-data v0, :array_1

    sput-object v0, Lsun/security/ssl/HandshakeMessage$Finished;->SSL_SERVER:[B

    return-void

    :array_0
    .array-data 1
        0x43t
        0x4ct
        0x4et
        0x54t
    .end array-data

    :array_1
    .array-data 1
        0x53t
        0x52t
        0x56t
        0x52t
    .end array-data
.end method

.method constructor <init>(Lsun/security/ssl/ProtocolVersion;Lsun/security/ssl/HandshakeHash;ILjavax/crypto/SecretKey;Lsun/security/ssl/CipherSuite;)V
    .locals 1

    invoke-direct {p0}, Lsun/security/ssl/HandshakeMessage;-><init>()V

    iput-object p1, p0, Lsun/security/ssl/HandshakeMessage$Finished;->protocolVersion:Lsun/security/ssl/ProtocolVersion;

    iput-object p5, p0, Lsun/security/ssl/HandshakeMessage$Finished;->cipherSuite:Lsun/security/ssl/CipherSuite;

    invoke-direct {p0, p2, p3, p4}, Lsun/security/ssl/HandshakeMessage$Finished;->getFinished(Lsun/security/ssl/HandshakeHash;ILjavax/crypto/SecretKey;)[B

    move-result-object v0

    iput-object v0, p0, Lsun/security/ssl/HandshakeMessage$Finished;->verifyData:[B

    return-void
.end method

.method constructor <init>(Lsun/security/ssl/ProtocolVersion;Lsun/security/ssl/HandshakeInStream;Lsun/security/ssl/CipherSuite;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0}, Lsun/security/ssl/HandshakeMessage;-><init>()V

    iput-object p1, p0, Lsun/security/ssl/HandshakeMessage$Finished;->protocolVersion:Lsun/security/ssl/ProtocolVersion;

    iput-object p3, p0, Lsun/security/ssl/HandshakeMessage$Finished;->cipherSuite:Lsun/security/ssl/CipherSuite;

    iget v1, p1, Lsun/security/ssl/ProtocolVersion;->v:I

    sget-object v2, Lsun/security/ssl/ProtocolVersion;->TLS10:Lsun/security/ssl/ProtocolVersion;

    iget v2, v2, Lsun/security/ssl/ProtocolVersion;->v:I

    if-lt v1, v2, :cond_0

    const/16 v0, 0xc

    :goto_0
    new-array v1, v0, [B

    iput-object v1, p0, Lsun/security/ssl/HandshakeMessage$Finished;->verifyData:[B

    iget-object v1, p0, Lsun/security/ssl/HandshakeMessage$Finished;->verifyData:[B

    invoke-virtual {p2, v1}, Ljava/io/InputStream;->read([B)I

    return-void

    :cond_0
    const/16 v0, 0x24

    goto :goto_0
.end method

.method private getFinished(Lsun/security/ssl/HandshakeHash;ILjavax/crypto/SecretKey;)[B
    .locals 22

    const/4 v4, 0x1

    move/from16 v0, p2

    if-ne v0, v4, :cond_0

    sget-object v20, Lsun/security/ssl/HandshakeMessage$Finished;->SSL_CLIENT:[B

    const-string/jumbo v5, "client finished"

    :goto_0
    move-object/from16 v0, p0

    iget-object v4, v0, Lsun/security/ssl/HandshakeMessage$Finished;->protocolVersion:Lsun/security/ssl/ProtocolVersion;

    iget v4, v4, Lsun/security/ssl/ProtocolVersion;->v:I

    sget-object v7, Lsun/security/ssl/ProtocolVersion;->TLS10:Lsun/security/ssl/ProtocolVersion;

    iget v7, v7, Lsun/security/ssl/ProtocolVersion;->v:I

    if-lt v4, v7, :cond_4

    :try_start_0
    move-object/from16 v0, p0

    iget-object v4, v0, Lsun/security/ssl/HandshakeMessage$Finished;->protocolVersion:Lsun/security/ssl/ProtocolVersion;

    iget v4, v4, Lsun/security/ssl/ProtocolVersion;->v:I

    sget-object v7, Lsun/security/ssl/ProtocolVersion;->TLS12:Lsun/security/ssl/ProtocolVersion;

    iget v7, v7, Lsun/security/ssl/ProtocolVersion;->v:I

    if-lt v4, v7, :cond_2

    invoke-virtual/range {p1 .. p1}, Lsun/security/ssl/HandshakeHash;->getFinishedHash()[B

    move-result-object v6

    const-string/jumbo v17, "SunTls12Prf"

    move-object/from16 v0, p0

    iget-object v4, v0, Lsun/security/ssl/HandshakeMessage$Finished;->cipherSuite:Lsun/security/ssl/CipherSuite;

    iget-object v0, v4, Lsun/security/ssl/CipherSuite;->prfAlg:Lsun/security/ssl/CipherSuite$PRF;

    move-object/from16 v16, v0

    :goto_1
    invoke-virtual/range {v16 .. v16}, Lsun/security/ssl/CipherSuite$PRF;->getPRFHashAlg()Ljava/lang/String;

    move-result-object v8

    invoke-virtual/range {v16 .. v16}, Lsun/security/ssl/CipherSuite$PRF;->getPRFHashLength()I

    move-result v9

    invoke-virtual/range {v16 .. v16}, Lsun/security/ssl/CipherSuite$PRF;->getPRFBlockSize()I

    move-result v10

    new-instance v3, Lsun/security/internal/spec/TlsPrfParameterSpec;

    const/16 v7, 0xc

    move-object/from16 v4, p3

    invoke-direct/range {v3 .. v10}, Lsun/security/internal/spec/TlsPrfParameterSpec;-><init>(Ljavax/crypto/SecretKey;Ljava/lang/String;[BILjava/lang/String;II)V

    invoke-static/range {v17 .. v17}, Lsun/security/ssl/JsseJce;->getKeyGenerator(Ljava/lang/String;)Ljavax/crypto/KeyGenerator;

    move-result-object v14

    invoke-virtual {v14, v3}, Ljavax/crypto/KeyGenerator;->init(Ljava/security/spec/AlgorithmParameterSpec;)V

    invoke-virtual {v14}, Ljavax/crypto/KeyGenerator;->generateKey()Ljavax/crypto/SecretKey;

    move-result-object v18

    const-string/jumbo v4, "RAW"

    invoke-interface/range {v18 .. v18}, Ljavax/crypto/SecretKey;->getFormat()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    new-instance v4, Ljava/security/ProviderException;

    const-string/jumbo v7, "Invalid PRF output, format must be RAW"

    invoke-direct {v4, v7}, Ljava/security/ProviderException;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v12

    new-instance v4, Ljava/lang/RuntimeException;

    const-string/jumbo v7, "PRF failed"

    invoke-direct {v4, v7, v12}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4

    :cond_0
    const/4 v4, 0x2

    move/from16 v0, p2

    if-ne v0, v4, :cond_1

    sget-object v20, Lsun/security/ssl/HandshakeMessage$Finished;->SSL_SERVER:[B

    const-string/jumbo v5, "server finished"

    goto :goto_0

    :cond_1
    new-instance v4, Ljava/lang/RuntimeException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v21, "Invalid sender: "

    move-object/from16 v0, v21

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move/from16 v0, p2

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v4, v7}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_2
    :try_start_1
    invoke-virtual/range {p1 .. p1}, Lsun/security/ssl/HandshakeHash;->getMD5Clone()Ljava/security/MessageDigest;

    move-result-object v15

    invoke-virtual/range {p1 .. p1}, Lsun/security/ssl/HandshakeHash;->getSHAClone()Ljava/security/MessageDigest;

    move-result-object v19

    const/16 v4, 0x24

    new-array v6, v4, [B

    const/4 v4, 0x0

    const/16 v7, 0x10

    invoke-virtual {v15, v6, v4, v7}, Ljava/security/MessageDigest;->digest([BII)I

    const/16 v4, 0x10

    const/16 v7, 0x14

    move-object/from16 v0, v19

    invoke-virtual {v0, v6, v4, v7}, Ljava/security/MessageDigest;->digest([BII)I

    const-string/jumbo v17, "SunTlsPrf"

    sget-object v16, Lsun/security/ssl/CipherSuite$PRF;->P_NONE:Lsun/security/ssl/CipherSuite$PRF;

    goto/16 :goto_1

    :cond_3
    invoke-interface/range {v18 .. v18}, Ljavax/crypto/SecretKey;->getEncoded()[B
    :try_end_1
    .catch Ljava/security/GeneralSecurityException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v13

    return-object v13

    :cond_4
    invoke-virtual/range {p1 .. p1}, Lsun/security/ssl/HandshakeHash;->getMD5Clone()Ljava/security/MessageDigest;

    move-result-object v15

    invoke-virtual/range {p1 .. p1}, Lsun/security/ssl/HandshakeHash;->getSHAClone()Ljava/security/MessageDigest;

    move-result-object v19

    sget-object v4, Lsun/security/ssl/HandshakeMessage$Finished;->MD5_pad1:[B

    sget-object v7, Lsun/security/ssl/HandshakeMessage$Finished;->MD5_pad2:[B

    move-object/from16 v0, v20

    move-object/from16 v1, p3

    invoke-static {v15, v0, v4, v7, v1}, Lsun/security/ssl/HandshakeMessage$Finished;->updateDigest(Ljava/security/MessageDigest;[B[B[BLjavax/crypto/SecretKey;)V

    sget-object v4, Lsun/security/ssl/HandshakeMessage$Finished;->SHA_pad1:[B

    sget-object v7, Lsun/security/ssl/HandshakeMessage$Finished;->SHA_pad2:[B

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    move-object/from16 v2, p3

    invoke-static {v0, v1, v4, v7, v2}, Lsun/security/ssl/HandshakeMessage$Finished;->updateDigest(Ljava/security/MessageDigest;[B[B[BLjavax/crypto/SecretKey;)V

    const/16 v4, 0x24

    new-array v13, v4, [B

    const/4 v4, 0x0

    const/16 v7, 0x10

    :try_start_2
    invoke-virtual {v15, v13, v4, v7}, Ljava/security/MessageDigest;->digest([BII)I

    const/16 v4, 0x10

    const/16 v7, 0x14

    move-object/from16 v0, v19

    invoke-virtual {v0, v13, v4, v7}, Ljava/security/MessageDigest;->digest([BII)I
    :try_end_2
    .catch Ljava/security/DigestException; {:try_start_2 .. :try_end_2} :catch_1

    return-object v13

    :catch_1
    move-exception v11

    new-instance v4, Ljava/lang/RuntimeException;

    const-string/jumbo v7, "Digest failed"

    invoke-direct {v4, v7, v11}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4
.end method

.method private static updateDigest(Ljava/security/MessageDigest;[B[B[BLjavax/crypto/SecretKey;)V
    .locals 0

    invoke-virtual {p0, p1}, Ljava/security/MessageDigest;->update([B)V

    invoke-static {p0, p2, p3, p4}, Lsun/security/ssl/HandshakeMessage$CertificateVerify;->-wrap0(Ljava/security/MessageDigest;[B[BLjavax/crypto/SecretKey;)V

    return-void
.end method


# virtual methods
.method getVerifyData()[B
    .locals 1

    iget-object v0, p0, Lsun/security/ssl/HandshakeMessage$Finished;->verifyData:[B

    return-object v0
.end method

.method messageLength()I
    .locals 1

    iget-object v0, p0, Lsun/security/ssl/HandshakeMessage$Finished;->verifyData:[B

    array-length v0, v0

    return v0
.end method

.method messageType()I
    .locals 1

    const/16 v0, 0x14

    return v0
.end method

.method print(Ljava/io/PrintStream;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string/jumbo v0, "*** Finished"

    invoke-virtual {p1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    sget-object v0, Lsun/security/ssl/HandshakeMessage$Finished;->debug:Lsun/security/ssl/Debug;

    if-eqz v0, :cond_0

    const-string/jumbo v0, "verbose"

    invoke-static {v0}, Lsun/security/ssl/Debug;->isOn(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "verify_data"

    iget-object v1, p0, Lsun/security/ssl/HandshakeMessage$Finished;->verifyData:[B

    invoke-static {p1, v0, v1}, Lsun/security/ssl/Debug;->println(Ljava/io/PrintStream;Ljava/lang/String;[B)V

    const-string/jumbo v0, "***"

    invoke-virtual {p1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method send(Lsun/security/ssl/HandshakeOutStream;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lsun/security/ssl/HandshakeMessage$Finished;->verifyData:[B

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    return-void
.end method

.method verify(Lsun/security/ssl/HandshakeHash;ILjavax/crypto/SecretKey;)Z
    .locals 2

    invoke-direct {p0, p1, p2, p3}, Lsun/security/ssl/HandshakeMessage$Finished;->getFinished(Lsun/security/ssl/HandshakeHash;ILjavax/crypto/SecretKey;)[B

    move-result-object v0

    iget-object v1, p0, Lsun/security/ssl/HandshakeMessage$Finished;->verifyData:[B

    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v1

    return v1
.end method
