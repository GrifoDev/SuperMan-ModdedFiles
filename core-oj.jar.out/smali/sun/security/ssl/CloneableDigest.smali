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
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    invoke-direct {p0, p3}, Ljava/security/MessageDigest;-><init>(Ljava/lang/String;)V

    new-array v1, p2, [Ljava/security/MessageDigest;

    iput-object v1, p0, Lsun/security/ssl/CloneableDigest;->digests:[Ljava/security/MessageDigest;

    iget-object v1, p0, Lsun/security/ssl/CloneableDigest;->digests:[Ljava/security/MessageDigest;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v0, 0x1

    :goto_0
    if-ge v0, p2, :cond_0

    iget-object v1, p0, Lsun/security/ssl/CloneableDigest;->digests:[Ljava/security/MessageDigest;

    invoke-static {p3}, Lsun/security/ssl/JsseJce;->getMessageDigest(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v2

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private checkState()V
    .locals 0

    return-void
.end method

.method private digestReset()V
    .locals 2

    const/4 v0, 0x1

    :goto_0
    iget-object v1, p0, Lsun/security/ssl/CloneableDigest;->digests:[Ljava/security/MessageDigest;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lsun/security/ssl/CloneableDigest;->digests:[Ljava/security/MessageDigest;

    aget-object v1, v1, v0

    if-eqz v1, :cond_0

    iget-object v1, p0, Lsun/security/ssl/CloneableDigest;->digests:[Ljava/security/MessageDigest;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Ljava/security/MessageDigest;->reset()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method static getDigest(Ljava/lang/String;I)Ljava/security/MessageDigest;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    invoke-static {p0}, Lsun/security/ssl/JsseJce;->getMessageDigest(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    :try_start_0
    invoke-virtual {v0}, Ljava/security/MessageDigest;->clone()Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v1

    new-instance v2, Lsun/security/ssl/CloneableDigest;

    invoke-direct {v2, v0, p1, p0}, Lsun/security/ssl/CloneableDigest;-><init>(Ljava/security/MessageDigest;ILjava/lang/String;)V

    return-object v2
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 4

    const/4 v3, 0x0

    invoke-direct {p0}, Lsun/security/ssl/CloneableDigest;->checkState()V

    iget-object v2, p0, Lsun/security/ssl/CloneableDigest;->digests:[Ljava/security/MessageDigest;

    array-length v2, v2

    add-int/lit8 v1, v2, -0x1

    :goto_0
    if-ltz v1, :cond_1

    iget-object v2, p0, Lsun/security/ssl/CloneableDigest;->digests:[Ljava/security/MessageDigest;

    aget-object v2, v2, v1

    if-eqz v2, :cond_0

    iget-object v2, p0, Lsun/security/ssl/CloneableDigest;->digests:[Ljava/security/MessageDigest;

    aget-object v0, v2, v1

    iget-object v2, p0, Lsun/security/ssl/CloneableDigest;->digests:[Ljava/security/MessageDigest;

    aput-object v3, v2, v1

    return-object v0

    :cond_0
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_1
    new-instance v2, Ljava/lang/InternalError;

    invoke-direct {v2}, Ljava/lang/InternalError;-><init>()V

    throw v2
.end method

.method protected engineDigest([BII)I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/DigestException;
        }
    .end annotation

    invoke-direct {p0}, Lsun/security/ssl/CloneableDigest;->checkState()V

    iget-object v1, p0, Lsun/security/ssl/CloneableDigest;->digests:[Ljava/security/MessageDigest;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-virtual {v1, p1, p2, p3}, Ljava/security/MessageDigest;->digest([BII)I

    move-result v0

    invoke-direct {p0}, Lsun/security/ssl/CloneableDigest;->digestReset()V

    return v0
.end method

.method protected engineDigest()[B
    .locals 3

    invoke-direct {p0}, Lsun/security/ssl/CloneableDigest;->checkState()V

    iget-object v1, p0, Lsun/security/ssl/CloneableDigest;->digests:[Ljava/security/MessageDigest;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-virtual {v1}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v0

    invoke-direct {p0}, Lsun/security/ssl/CloneableDigest;->digestReset()V

    return-object v0
.end method

.method protected engineGetDigestLength()I
    .locals 2

    invoke-direct {p0}, Lsun/security/ssl/CloneableDigest;->checkState()V

    iget-object v0, p0, Lsun/security/ssl/CloneableDigest;->digests:[Ljava/security/MessageDigest;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {v0}, Ljava/security/MessageDigest;->getDigestLength()I

    move-result v0

    return v0
.end method

.method protected engineReset()V
    .locals 2

    invoke-direct {p0}, Lsun/security/ssl/CloneableDigest;->checkState()V

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lsun/security/ssl/CloneableDigest;->digests:[Ljava/security/MessageDigest;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lsun/security/ssl/CloneableDigest;->digests:[Ljava/security/MessageDigest;

    aget-object v1, v1, v0

    if-eqz v1, :cond_0

    iget-object v1, p0, Lsun/security/ssl/CloneableDigest;->digests:[Ljava/security/MessageDigest;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Ljava/security/MessageDigest;->reset()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected engineUpdate(B)V
    .locals 2

    invoke-direct {p0}, Lsun/security/ssl/CloneableDigest;->checkState()V

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lsun/security/ssl/CloneableDigest;->digests:[Ljava/security/MessageDigest;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lsun/security/ssl/CloneableDigest;->digests:[Ljava/security/MessageDigest;

    aget-object v1, v1, v0

    if-eqz v1, :cond_0

    iget-object v1, p0, Lsun/security/ssl/CloneableDigest;->digests:[Ljava/security/MessageDigest;

    aget-object v1, v1, v0

    invoke-virtual {v1, p1}, Ljava/security/MessageDigest;->update(B)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected engineUpdate([BII)V
    .locals 2

    invoke-direct {p0}, Lsun/security/ssl/CloneableDigest;->checkState()V

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lsun/security/ssl/CloneableDigest;->digests:[Ljava/security/MessageDigest;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lsun/security/ssl/CloneableDigest;->digests:[Ljava/security/MessageDigest;

    aget-object v1, v1, v0

    if-eqz v1, :cond_0

    iget-object v1, p0, Lsun/security/ssl/CloneableDigest;->digests:[Ljava/security/MessageDigest;

    aget-object v1, v1, v0

    invoke-virtual {v1, p1, p2, p3}, Ljava/security/MessageDigest;->update([BII)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
