.class final Lcom/google/common/hash/MessageDigestHashFunction;
.super Lcom/google/common/hash/AbstractStreamingHashFunction;
.source "MessageDigestHashFunction.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/hash/MessageDigestHashFunction$1;,
        Lcom/google/common/hash/MessageDigestHashFunction$MessageDigestHasher;,
        Lcom/google/common/hash/MessageDigestHashFunction$SerializedForm;
    }
.end annotation


# instance fields
.field private final bytes:I

.field private final prototype:Ljava/security/MessageDigest;

.field private final supportsClone:Z

.field private final toString:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 7
    .param p1, "algorithmName"    # Ljava/lang/String;
    .param p2, "bytes"    # I
    .param p3, "toString"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 46
    invoke-direct {p0}, Lcom/google/common/hash/AbstractStreamingHashFunction;-><init>()V

    .line 47
    invoke-static {p3}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, p0, Lcom/google/common/hash/MessageDigestHashFunction;->toString:Ljava/lang/String;

    .line 48
    invoke-static {p1}, Lcom/google/common/hash/MessageDigestHashFunction;->getMessageDigest(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v1

    iput-object v1, p0, Lcom/google/common/hash/MessageDigestHashFunction;->prototype:Ljava/security/MessageDigest;

    .line 49
    iget-object v1, p0, Lcom/google/common/hash/MessageDigestHashFunction;->prototype:Ljava/security/MessageDigest;

    invoke-virtual {v1}, Ljava/security/MessageDigest;->getDigestLength()I

    move-result v0

    .line 50
    .local v0, "maxLength":I
    const/4 v1, 0x4

    if-lt p2, v1, :cond_0

    if-gt p2, v0, :cond_0

    move v1, v2

    :goto_0
    const-string v4, "bytes (%s) must be >= 4 and < %s"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v3

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v5, v2

    invoke-static {v1, v4, v5}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 52
    iput p2, p0, Lcom/google/common/hash/MessageDigestHashFunction;->bytes:I

    .line 53
    invoke-direct {p0}, Lcom/google/common/hash/MessageDigestHashFunction;->supportsClone()Z

    move-result v1

    iput-boolean v1, p0, Lcom/google/common/hash/MessageDigestHashFunction;->supportsClone:Z

    .line 54
    return-void

    :cond_0
    move v1, v3

    .line 50
    goto :goto_0
.end method

.method constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "algorithmName"    # Ljava/lang/String;
    .param p2, "toString"    # Ljava/lang/String;

    .prologue
    .line 39
    invoke-direct {p0}, Lcom/google/common/hash/AbstractStreamingHashFunction;-><init>()V

    .line 40
    invoke-static {p1}, Lcom/google/common/hash/MessageDigestHashFunction;->getMessageDigest(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/hash/MessageDigestHashFunction;->prototype:Ljava/security/MessageDigest;

    .line 41
    iget-object v0, p0, Lcom/google/common/hash/MessageDigestHashFunction;->prototype:Ljava/security/MessageDigest;

    invoke-virtual {v0}, Ljava/security/MessageDigest;->getDigestLength()I

    move-result v0

    iput v0, p0, Lcom/google/common/hash/MessageDigestHashFunction;->bytes:I

    .line 42
    invoke-static {p2}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/google/common/hash/MessageDigestHashFunction;->toString:Ljava/lang/String;

    .line 43
    invoke-direct {p0}, Lcom/google/common/hash/MessageDigestHashFunction;->supportsClone()Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/common/hash/MessageDigestHashFunction;->supportsClone:Z

    .line 44
    return-void
.end method

.method private static getMessageDigest(Ljava/lang/String;)Ljava/security/MessageDigest;
    .locals 2
    .param p0, "algorithmName"    # Ljava/lang/String;

    .prologue
    .line 77
    :try_start_0
    invoke-static {p0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 78
    :catch_0
    move-exception v0

    .line 79
    .local v0, "e":Ljava/security/NoSuchAlgorithmException;
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1
.end method

.method private supportsClone()Z
    .locals 2

    .prologue
    .line 58
    :try_start_0
    iget-object v1, p0, Lcom/google/common/hash/MessageDigestHashFunction;->prototype:Ljava/security/MessageDigest;

    invoke-virtual {v1}, Ljava/security/MessageDigest;->clone()Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 59
    const/4 v1, 0x1

    .line 61
    :goto_0
    return v1

    .line 60
    :catch_0
    move-exception v0

    .line 61
    .local v0, "e":Ljava/lang/CloneNotSupportedException;
    const/4 v1, 0x0

    goto :goto_0
.end method


# virtual methods
.method public bits()I
    .locals 1

    .prologue
    .line 67
    iget v0, p0, Lcom/google/common/hash/MessageDigestHashFunction;->bytes:I

    mul-int/lit8 v0, v0, 0x8

    return v0
.end method

.method public newHasher()Lcom/google/common/hash/Hasher;
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 85
    iget-boolean v0, p0, Lcom/google/common/hash/MessageDigestHashFunction;->supportsClone:Z

    if-eqz v0, :cond_0

    .line 87
    :try_start_0
    new-instance v1, Lcom/google/common/hash/MessageDigestHashFunction$MessageDigestHasher;

    iget-object v0, p0, Lcom/google/common/hash/MessageDigestHashFunction;->prototype:Ljava/security/MessageDigest;

    invoke-virtual {v0}, Ljava/security/MessageDigest;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/security/MessageDigest;

    iget v2, p0, Lcom/google/common/hash/MessageDigestHashFunction;->bytes:I

    const/4 v3, 0x0

    invoke-direct {v1, v0, v2, v3}, Lcom/google/common/hash/MessageDigestHashFunction$MessageDigestHasher;-><init>(Ljava/security/MessageDigest;ILcom/google/common/hash/MessageDigestHashFunction$1;)V
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    .line 92
    :goto_0
    return-object v0

    .line 88
    :catch_0
    move-exception v0

    .line 92
    :cond_0
    new-instance v0, Lcom/google/common/hash/MessageDigestHashFunction$MessageDigestHasher;

    iget-object v1, p0, Lcom/google/common/hash/MessageDigestHashFunction;->prototype:Ljava/security/MessageDigest;

    invoke-virtual {v1}, Ljava/security/MessageDigest;->getAlgorithm()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/google/common/hash/MessageDigestHashFunction;->getMessageDigest(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v1

    iget v2, p0, Lcom/google/common/hash/MessageDigestHashFunction;->bytes:I

    invoke-direct {v0, v1, v2, v4}, Lcom/google/common/hash/MessageDigestHashFunction$MessageDigestHasher;-><init>(Ljava/security/MessageDigest;ILcom/google/common/hash/MessageDigestHashFunction$1;)V

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lcom/google/common/hash/MessageDigestHashFunction;->toString:Ljava/lang/String;

    return-object v0
.end method

.method writeReplace()Ljava/lang/Object;
    .locals 5

    .prologue
    .line 114
    new-instance v0, Lcom/google/common/hash/MessageDigestHashFunction$SerializedForm;

    iget-object v1, p0, Lcom/google/common/hash/MessageDigestHashFunction;->prototype:Ljava/security/MessageDigest;

    invoke-virtual {v1}, Ljava/security/MessageDigest;->getAlgorithm()Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Lcom/google/common/hash/MessageDigestHashFunction;->bytes:I

    iget-object v3, p0, Lcom/google/common/hash/MessageDigestHashFunction;->toString:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/common/hash/MessageDigestHashFunction$SerializedForm;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/google/common/hash/MessageDigestHashFunction$1;)V

    return-object v0
.end method
