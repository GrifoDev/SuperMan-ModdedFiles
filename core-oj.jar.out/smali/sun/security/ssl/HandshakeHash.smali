.class final Lsun/security/ssl/HandshakeHash;
.super Ljava/lang/Object;
.source "HandshakeHash.java"


# instance fields
.field private final clonesNeeded:I

.field private cvAlg:Ljava/lang/String;

.field private cvAlgDetermined:Z

.field private data:Ljava/io/ByteArrayOutputStream;

.field private finMD:Ljava/security/MessageDigest;

.field private final isServer:Z

.field private md5:Ljava/security/MessageDigest;

.field private sha:Ljava/security/MessageDigest;

.field private version:I


# direct methods
.method constructor <init>(ZZLjava/util/Set;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZZ",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lsun/security/ssl/HandshakeHash;->version:I

    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    iput-object v0, p0, Lsun/security/ssl/HandshakeHash;->data:Ljava/io/ByteArrayOutputStream;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lsun/security/ssl/HandshakeHash;->cvAlgDetermined:Z

    iput-boolean p1, p0, Lsun/security/ssl/HandshakeHash;->isServer:Z

    if-eqz p2, :cond_0

    const/4 v0, 0x3

    :goto_0
    iput v0, p0, Lsun/security/ssl/HandshakeHash;->clonesNeeded:I

    return-void

    :cond_0
    const/4 v0, 0x2

    goto :goto_0
.end method

.method private static cloneDigest(Ljava/security/MessageDigest;)Ljava/security/MessageDigest;
    .locals 3

    :try_start_0
    invoke-virtual {p0}, Ljava/security/MessageDigest;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/security/MessageDigest;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    const-string/jumbo v2, "Could not clone digest"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method private static normalizeAlgName(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    const/4 v2, 0x3

    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p0, v0}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p0

    const-string/jumbo v0, "SHA"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-ne v0, v2, :cond_0

    const-string/jumbo v0, "SHA-1"

    return-object v0

    :cond_0
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x2d

    if-eq v0, v1, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "SHA-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_1
    return-object p0
.end method


# virtual methods
.method getAllHandshakeMessages()[B
    .locals 1

    iget-object v0, p0, Lsun/security/ssl/HandshakeHash;->data:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    return-object v0
.end method

.method getFinishedHash()[B
    .locals 3

    :try_start_0
    iget-object v1, p0, Lsun/security/ssl/HandshakeHash;->finMD:Ljava/security/MessageDigest;

    invoke-static {v1}, Lsun/security/ssl/HandshakeHash;->cloneDigest(Ljava/security/MessageDigest;)Ljava/security/MessageDigest;

    move-result-object v1

    invoke-virtual {v1}, Ljava/security/MessageDigest;->digest()[B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/Error;

    const-string/jumbo v2, "BAD"

    invoke-direct {v1, v2}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method getMD5Clone()Ljava/security/MessageDigest;
    .locals 2

    iget v0, p0, Lsun/security/ssl/HandshakeHash;->version:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "getMD5Clone() can be only be called for TLS 1.1"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Lsun/security/ssl/HandshakeHash;->md5:Ljava/security/MessageDigest;

    invoke-static {v0}, Lsun/security/ssl/HandshakeHash;->cloneDigest(Ljava/security/MessageDigest;)Ljava/security/MessageDigest;

    move-result-object v0

    return-object v0
.end method

.method getSHAClone()Ljava/security/MessageDigest;
    .locals 2

    iget v0, p0, Lsun/security/ssl/HandshakeHash;->version:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "getSHAClone() can be only be called for TLS 1.1"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Lsun/security/ssl/HandshakeHash;->sha:Ljava/security/MessageDigest;

    invoke-static {v0}, Lsun/security/ssl/HandshakeHash;->cloneDigest(Ljava/security/MessageDigest;)Ljava/security/MessageDigest;

    move-result-object v0

    return-object v0
.end method

.method protocolDetermined(Lsun/security/ssl/ProtocolVersion;)V
    .locals 5

    const/4 v4, 0x0

    iget v2, p0, Lsun/security/ssl/HandshakeHash;->version:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    return-void

    :cond_0
    sget-object v2, Lsun/security/ssl/ProtocolVersion;->TLS12:Lsun/security/ssl/ProtocolVersion;

    invoke-virtual {p1, v2}, Lsun/security/ssl/ProtocolVersion;->compareTo(Lsun/security/ssl/ProtocolVersion;)I

    move-result v2

    if-ltz v2, :cond_1

    const/4 v2, 0x2

    :goto_0
    iput v2, p0, Lsun/security/ssl/HandshakeHash;->version:I

    iget v2, p0, Lsun/security/ssl/HandshakeHash;->version:I

    packed-switch v2, :pswitch_data_0

    :goto_1
    :pswitch_0
    return-void

    :cond_1
    const/4 v2, 0x1

    goto :goto_0

    :pswitch_1
    :try_start_0
    const-string/jumbo v2, "MD5"

    iget v3, p0, Lsun/security/ssl/HandshakeHash;->clonesNeeded:I

    invoke-static {v2, v3}, Lsun/security/ssl/CloneableDigest;->getDigest(Ljava/lang/String;I)Ljava/security/MessageDigest;

    move-result-object v2

    iput-object v2, p0, Lsun/security/ssl/HandshakeHash;->md5:Ljava/security/MessageDigest;

    const-string/jumbo v2, "SHA"

    iget v3, p0, Lsun/security/ssl/HandshakeHash;->clonesNeeded:I

    invoke-static {v2, v3}, Lsun/security/ssl/CloneableDigest;->getDigest(Ljava/lang/String;I)Ljava/security/MessageDigest;

    move-result-object v2

    iput-object v2, p0, Lsun/security/ssl/HandshakeHash;->sha:Ljava/security/MessageDigest;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    iget-object v2, p0, Lsun/security/ssl/HandshakeHash;->data:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    array-length v2, v0

    invoke-virtual {p0, v0, v4, v2}, Lsun/security/ssl/HandshakeHash;->update([BII)V

    goto :goto_1

    :catch_0
    move-exception v1

    new-instance v2, Ljava/lang/RuntimeException;

    const-string/jumbo v3, "Algorithm MD5 or SHA not available"

    invoke-direct {v2, v3, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method reset()V
    .locals 2

    iget v0, p0, Lsun/security/ssl/HandshakeHash;->version:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "reset() can be only be called before protocolDetermined"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Lsun/security/ssl/HandshakeHash;->data:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->reset()V

    return-void
.end method

.method restrictCertificateVerifyAlgs(Ljava/util/Set;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iget v0, p0, Lsun/security/ssl/HandshakeHash;->version:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "setCertificateVerifyAlg() cannot be called for TLS 1.1"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    return-void
.end method

.method setCertificateVerifyAlg(Ljava/lang/String;)V
    .locals 2

    const/4 v0, 0x0

    iget-boolean v1, p0, Lsun/security/ssl/HandshakeHash;->cvAlgDetermined:Z

    if-eqz v1, :cond_0

    return-void

    :cond_0
    if-nez p1, :cond_1

    :goto_0
    iput-object v0, p0, Lsun/security/ssl/HandshakeHash;->cvAlg:Ljava/lang/String;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lsun/security/ssl/HandshakeHash;->cvAlgDetermined:Z

    return-void

    :cond_1
    invoke-static {p1}, Lsun/security/ssl/HandshakeHash;->normalizeAlgName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method setFinishedAlg(Ljava/lang/String;)V
    .locals 3

    if-nez p1, :cond_0

    new-instance v1, Ljava/lang/RuntimeException;

    const-string/jumbo v2, "setFinishedAlg\'s argument cannot be null"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    iget-object v1, p0, Lsun/security/ssl/HandshakeHash;->finMD:Ljava/security/MessageDigest;

    if-eqz v1, :cond_1

    return-void

    :cond_1
    :try_start_0
    invoke-static {p1}, Lsun/security/ssl/HandshakeHash;->normalizeAlgName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    invoke-static {v1, v2}, Lsun/security/ssl/CloneableDigest;->getDigest(Ljava/lang/String;I)Ljava/security/MessageDigest;

    move-result-object v1

    iput-object v1, p0, Lsun/security/ssl/HandshakeHash;->finMD:Ljava/security/MessageDigest;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    iget-object v1, p0, Lsun/security/ssl/HandshakeHash;->finMD:Ljava/security/MessageDigest;

    iget-object v2, p0, Lsun/security/ssl/HandshakeHash;->data:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/security/MessageDigest;->update([B)V

    return-void

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/Error;

    invoke-direct {v1, v0}, Ljava/lang/Error;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method update([BII)V
    .locals 1

    iget v0, p0, Lsun/security/ssl/HandshakeHash;->version:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lsun/security/ssl/HandshakeHash;->finMD:Ljava/security/MessageDigest;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lsun/security/ssl/HandshakeHash;->finMD:Ljava/security/MessageDigest;

    invoke-virtual {v0, p1, p2, p3}, Ljava/security/MessageDigest;->update([BII)V

    :cond_0
    iget-object v0, p0, Lsun/security/ssl/HandshakeHash;->data:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lsun/security/ssl/HandshakeHash;->md5:Ljava/security/MessageDigest;

    invoke-virtual {v0, p1, p2, p3}, Ljava/security/MessageDigest;->update([BII)V

    iget-object v0, p0, Lsun/security/ssl/HandshakeHash;->sha:Ljava/security/MessageDigest;

    invoke-virtual {v0, p1, p2, p3}, Ljava/security/MessageDigest;->update([BII)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
