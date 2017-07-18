.class final Lcom/google/common/hash/Hashing$ConcatenatedHashFunction;
.super Lcom/google/common/hash/AbstractCompositeHashFunction;
.source "Hashing.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/hash/Hashing;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ConcatenatedHashFunction"
.end annotation


# instance fields
.field private final bits:I


# direct methods
.method private varargs constructor <init>([Lcom/google/common/hash/HashFunction;)V
    .locals 11

    const/4 v6, 0x1

    const/4 v7, 0x0

    invoke-direct {p0, p1}, Lcom/google/common/hash/AbstractCompositeHashFunction;-><init>([Lcom/google/common/hash/HashFunction;)V

    const/4 v1, 0x0

    move-object v0, p1

    array-length v4, v0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v4, :cond_1

    aget-object v2, v0, v3

    invoke-interface {v2}, Lcom/google/common/hash/HashFunction;->bits()I

    move-result v5

    add-int/2addr v1, v5

    invoke-interface {v2}, Lcom/google/common/hash/HashFunction;->bits()I

    move-result v5

    rem-int/lit8 v5, v5, 0x8

    if-nez v5, :cond_0

    move v5, v6

    :goto_1
    const-string v8, "the number of bits (%s) in hashFunction (%s) must be divisible by 8"

    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/Object;

    invoke-interface {v2}, Lcom/google/common/hash/HashFunction;->bits()I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v9, v7

    aput-object v2, v9, v6

    invoke-static {v5, v8, v9}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;[Ljava/lang/Object;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    move v5, v7

    goto :goto_1

    :cond_1
    iput v1, p0, Lcom/google/common/hash/Hashing$ConcatenatedHashFunction;->bits:I

    return-void
.end method

.method synthetic constructor <init>([Lcom/google/common/hash/HashFunction;Lcom/google/common/hash/Hashing$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/common/hash/Hashing$ConcatenatedHashFunction;-><init>([Lcom/google/common/hash/HashFunction;)V

    return-void
.end method


# virtual methods
.method public bits()I
    .locals 1

    iget v0, p0, Lcom/google/common/hash/Hashing$ConcatenatedHashFunction;->bits:I

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    instance-of v1, p1, Lcom/google/common/hash/Hashing$ConcatenatedHashFunction;

    if-eqz v1, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/google/common/hash/Hashing$ConcatenatedHashFunction;

    iget-object v1, p0, Lcom/google/common/hash/Hashing$ConcatenatedHashFunction;->functions:[Lcom/google/common/hash/HashFunction;

    iget-object v2, v0, Lcom/google/common/hash/Hashing$ConcatenatedHashFunction;->functions:[Lcom/google/common/hash/HashFunction;

    invoke-static {v1, v2}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, Lcom/google/common/hash/Hashing$ConcatenatedHashFunction;->functions:[Lcom/google/common/hash/HashFunction;

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/google/common/hash/Hashing$ConcatenatedHashFunction;->bits:I

    add-int/2addr v0, v1

    return v0
.end method

.method makeHash([Lcom/google/common/hash/Hasher;)Lcom/google/common/hash/HashCode;
    .locals 8

    iget v7, p0, Lcom/google/common/hash/Hashing$ConcatenatedHashFunction;->bits:I

    div-int/lit8 v7, v7, 0x8

    new-array v1, v7, [B

    const/4 v3, 0x0

    move-object v0, p1

    array-length v5, v0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v5, :cond_0

    aget-object v2, v0, v4

    invoke-interface {v2}, Lcom/google/common/hash/Hasher;->hash()Lcom/google/common/hash/HashCode;

    move-result-object v6

    invoke-virtual {v6}, Lcom/google/common/hash/HashCode;->bits()I

    move-result v7

    div-int/lit8 v7, v7, 0x8

    invoke-virtual {v6, v1, v3, v7}, Lcom/google/common/hash/HashCode;->writeBytesTo([BII)I

    move-result v7

    add-int/2addr v3, v7

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    invoke-static {v1}, Lcom/google/common/hash/HashCode;->fromBytesNoCopy([B)Lcom/google/common/hash/HashCode;

    move-result-object v7

    return-object v7
.end method
