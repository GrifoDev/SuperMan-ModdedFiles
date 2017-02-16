.class final Lsun/security/ssl/CloneableDigest;
.super Ljava/security/MessageDigest;
.source "HandshakeHash.java"

# interfaces
.implements Ljava/lang/Cloneable;


# instance fields
.field private final digests:[Ljava/security/MessageDigest;


# direct methods
.method private constructor <init>(Ljava/security/MessageDigest;ILjava/lang/String;)V
    .locals 3
    .param p1, "digest"    # Ljava/security/MessageDigest;
    .param p2, "n"    # I
    .param p3, "algorithm"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    .prologue
    .line 356
    invoke-direct {p0, p3}, Ljava/security/MessageDigest;-><init>(Ljava/lang/String;)V

    .line 357
    new-array v1, p2, [Ljava/security/MessageDigest;

    iput-object v1, p0, Lsun/security/ssl/CloneableDigest;->digests:[Ljava/security/MessageDigest;

    .line 358
    iget-object v1, p0, Lsun/security/ssl/CloneableDigest;->digests:[Ljava/security/MessageDigest;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    .line 359
    const/4 v0, 0x1

    .local v0, "i":I
    :goto_0
    if-ge v0, p2, :cond_0

    .line 360
    iget-object v1, p0, Lsun/security/ssl/CloneableDigest;->digests:[Ljava/security/MessageDigest;

    invoke-static {p3}, Lsun/security/ssl/JsseJce;->getMessageDigest(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v2

    aput-object v2, v1, v0

    .line 359
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 355
    :cond_0
    return-void
.end method

.method private checkState()V
    .locals 0

    .prologue
    .line 387
    return-void
.end method

.method private digestReset()V
    .locals 2

    .prologue
    .line 434
    const/4 v0, 0x1

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lsun/security/ssl/CloneableDigest;->digests:[Ljava/security/MessageDigest;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lsun/security/ssl/CloneableDigest;->digests:[Ljava/security/MessageDigest;

    aget-object v1, v1, v0

    if-eqz v1, :cond_0

    .line 435
    iget-object v1, p0, Lsun/security/ssl/CloneableDigest;->digests:[Ljava/security/MessageDigest;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Ljava/security/MessageDigest;->reset()V

    .line 434
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 433
    :cond_0
    return-void
.end method

.method static getDigest(Ljava/lang/String;I)Ljava/security/MessageDigest;
    .locals 3
    .param p0, "algorithm"    # Ljava/lang/String;
    .param p1, "n"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    .prologue
    .line 372
    invoke-static {p0}, Lsun/security/ssl/JsseJce;->getMessageDigest(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    .line 374
    .local v0, "digest":Ljava/security/MessageDigest;
    :try_start_0
    invoke-virtual {v0}, Ljava/security/MessageDigest;->clone()Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 376
    return-object v0

    .line 377
    :catch_0
    move-exception v1

    .line 378
    .local v1, "e":Ljava/lang/CloneNotSupportedException;
    new-instance v2, Lsun/security/ssl/CloneableDigest;

    invoke-direct {v2, v0, p1, p0}, Lsun/security/ssl/CloneableDigest;-><init>(Ljava/security/MessageDigest;ILjava/lang/String;)V

    return-object v2
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 447
    invoke-direct {p0}, Lsun/security/ssl/CloneableDigest;->checkState()V

    .line 448
    iget-object v2, p0, Lsun/security/ssl/CloneableDigest;->digests:[Ljava/security/MessageDigest;

    array-length v2, v2

    add-int/lit8 v1, v2, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_1

    .line 449
    iget-object v2, p0, Lsun/security/ssl/CloneableDigest;->digests:[Ljava/security/MessageDigest;

    aget-object v2, v2, v1

    if-eqz v2, :cond_0

    .line 450
    iget-object v2, p0, Lsun/security/ssl/CloneableDigest;->digests:[Ljava/security/MessageDigest;

    aget-object v0, v2, v1

    .line 451
    .local v0, "digest":Ljava/security/MessageDigest;
    iget-object v2, p0, Lsun/security/ssl/CloneableDigest;->digests:[Ljava/security/MessageDigest;

    aput-object v3, v2, v1

    .line 452
    return-object v0

    .line 448
    .end local v0    # "digest":Ljava/security/MessageDigest;
    :cond_0
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 456
    :cond_1
    new-instance v2, Ljava/lang/InternalError;

    invoke-direct {v2}, Ljava/lang/InternalError;-><init>()V

    throw v2
.end method

.method protected engineDigest([BII)I
    .locals 3
    .param p1, "buf"    # [B
    .param p2, "offset"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/DigestException;
        }
    .end annotation

    .prologue
    .line 422
    invoke-direct {p0}, Lsun/security/ssl/CloneableDigest;->checkState()V

    .line 423
    iget-object v1, p0, Lsun/security/ssl/CloneableDigest;->digests:[Ljava/security/MessageDigest;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-virtual {v1, p1, p2, p3}, Ljava/security/MessageDigest;->digest([BII)I

    move-result v0

    .line 424
    .local v0, "n":I
    invoke-direct {p0}, Lsun/security/ssl/CloneableDigest;->digestReset()V

    .line 425
    return v0
.end method

.method protected engineDigest()[B
    .locals 3

    .prologue
    .line 414
    invoke-direct {p0}, Lsun/security/ssl/CloneableDigest;->checkState()V

    .line 415
    iget-object v1, p0, Lsun/security/ssl/CloneableDigest;->digests:[Ljava/security/MessageDigest;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-virtual {v1}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v0

    .line 416
    .local v0, "digest":[B
    invoke-direct {p0}, Lsun/security/ssl/CloneableDigest;->digestReset()V

    .line 417
    return-object v0
.end method

.method protected engineGetDigestLength()I
    .locals 2

    .prologue
    .line 395
    invoke-direct {p0}, Lsun/security/ssl/CloneableDigest;->checkState()V

    .line 396
    iget-object v0, p0, Lsun/security/ssl/CloneableDigest;->digests:[Ljava/security/MessageDigest;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {v0}, Ljava/security/MessageDigest;->getDigestLength()I

    move-result v0

    return v0
.end method

.method protected engineReset()V
    .locals 2

    .prologue
    .line 440
    invoke-direct {p0}, Lsun/security/ssl/CloneableDigest;->checkState()V

    .line 441
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lsun/security/ssl/CloneableDigest;->digests:[Ljava/security/MessageDigest;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lsun/security/ssl/CloneableDigest;->digests:[Ljava/security/MessageDigest;

    aget-object v1, v1, v0

    if-eqz v1, :cond_0

    .line 442
    iget-object v1, p0, Lsun/security/ssl/CloneableDigest;->digests:[Ljava/security/MessageDigest;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Ljava/security/MessageDigest;->reset()V

    .line 441
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 439
    :cond_0
    return-void
.end method

.method protected engineUpdate(B)V
    .locals 2
    .param p1, "b"    # B

    .prologue
    .line 400
    invoke-direct {p0}, Lsun/security/ssl/CloneableDigest;->checkState()V

    .line 401
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lsun/security/ssl/CloneableDigest;->digests:[Ljava/security/MessageDigest;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lsun/security/ssl/CloneableDigest;->digests:[Ljava/security/MessageDigest;

    aget-object v1, v1, v0

    if-eqz v1, :cond_0

    .line 402
    iget-object v1, p0, Lsun/security/ssl/CloneableDigest;->digests:[Ljava/security/MessageDigest;

    aget-object v1, v1, v0

    invoke-virtual {v1, p1}, Ljava/security/MessageDigest;->update(B)V

    .line 401
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 399
    :cond_0
    return-void
.end method

.method protected engineUpdate([BII)V
    .locals 2
    .param p1, "b"    # [B
    .param p2, "offset"    # I
    .param p3, "len"    # I

    .prologue
    .line 407
    invoke-direct {p0}, Lsun/security/ssl/CloneableDigest;->checkState()V

    .line 408
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lsun/security/ssl/CloneableDigest;->digests:[Ljava/security/MessageDigest;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lsun/security/ssl/CloneableDigest;->digests:[Ljava/security/MessageDigest;

    aget-object v1, v1, v0

    if-eqz v1, :cond_0

    .line 409
    iget-object v1, p0, Lsun/security/ssl/CloneableDigest;->digests:[Ljava/security/MessageDigest;

    aget-object v1, v1, v0

    invoke-virtual {v1, p1, p2, p3}, Ljava/security/MessageDigest;->update([BII)V

    .line 408
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 406
    :cond_0
    return-void
.end method
