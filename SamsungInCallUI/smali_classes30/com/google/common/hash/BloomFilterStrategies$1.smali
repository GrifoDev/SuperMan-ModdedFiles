.class final enum Lcom/google/common/hash/BloomFilterStrategies$1;
.super Lcom/google/common/hash/BloomFilterStrategies;
.source "BloomFilterStrategies.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/hash/BloomFilterStrategies;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4008
    name = null
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/google/common/hash/BloomFilterStrategies;-><init>(Ljava/lang/String;ILcom/google/common/hash/BloomFilterStrategies$1;)V

    return-void
.end method


# virtual methods
.method public mightContain(Ljava/lang/Object;Lcom/google/common/hash/Funnel;ILcom/google/common/hash/BloomFilterStrategies$BitArray;)Z
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Lcom/google/common/hash/Funnel",
            "<-TT;>;I",
            "Lcom/google/common/hash/BloomFilterStrategies$BitArray;",
            ")Z"
        }
    .end annotation

    invoke-virtual {p4}, Lcom/google/common/hash/BloomFilterStrategies$BitArray;->bitSize()J

    move-result-wide v0

    invoke-static {}, Lcom/google/common/hash/Hashing;->murmur3_128()Lcom/google/common/hash/HashFunction;

    move-result-object v8

    invoke-interface {v8, p1, p2}, Lcom/google/common/hash/HashFunction;->hashObject(Ljava/lang/Object;Lcom/google/common/hash/Funnel;)Lcom/google/common/hash/HashCode;

    move-result-object v8

    invoke-virtual {v8}, Lcom/google/common/hash/HashCode;->asLong()J

    move-result-wide v6

    long-to-int v3, v6

    const/16 v8, 0x20

    ushr-long v8, v6, v8

    long-to-int v4, v8

    const/4 v5, 0x1

    :goto_0
    if-gt v5, p3, :cond_2

    mul-int v8, v5, v4

    add-int v2, v3, v8

    if-gez v2, :cond_0

    xor-int/lit8 v2, v2, -0x1

    :cond_0
    int-to-long v8, v2

    rem-long/2addr v8, v0

    invoke-virtual {p4, v8, v9}, Lcom/google/common/hash/BloomFilterStrategies$BitArray;->get(J)Z

    move-result v8

    if-nez v8, :cond_1

    const/4 v8, 0x0

    :goto_1
    return v8

    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_2
    const/4 v8, 0x1

    goto :goto_1
.end method

.method public put(Ljava/lang/Object;Lcom/google/common/hash/Funnel;ILcom/google/common/hash/BloomFilterStrategies$BitArray;)Z
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Lcom/google/common/hash/Funnel",
            "<-TT;>;I",
            "Lcom/google/common/hash/BloomFilterStrategies$BitArray;",
            ")Z"
        }
    .end annotation

    invoke-virtual/range {p4 .. p4}, Lcom/google/common/hash/BloomFilterStrategies$BitArray;->bitSize()J

    move-result-wide v2

    invoke-static {}, Lcom/google/common/hash/Hashing;->murmur3_128()Lcom/google/common/hash/HashFunction;

    move-result-object v11

    move-object/from16 v0, p2

    invoke-interface {v11, p1, v0}, Lcom/google/common/hash/HashFunction;->hashObject(Ljava/lang/Object;Lcom/google/common/hash/Funnel;)Lcom/google/common/hash/HashCode;

    move-result-object v11

    invoke-virtual {v11}, Lcom/google/common/hash/HashCode;->asLong()J

    move-result-wide v8

    long-to-int v6, v8

    const/16 v11, 0x20

    ushr-long v12, v8, v11

    long-to-int v7, v12

    const/4 v4, 0x0

    const/4 v10, 0x1

    :goto_0
    move/from16 v0, p3

    if-gt v10, v0, :cond_1

    mul-int v11, v10, v7

    add-int v5, v6, v11

    if-gez v5, :cond_0

    xor-int/lit8 v5, v5, -0x1

    :cond_0
    int-to-long v12, v5

    rem-long/2addr v12, v2

    move-object/from16 v0, p4

    invoke-virtual {v0, v12, v13}, Lcom/google/common/hash/BloomFilterStrategies$BitArray;->set(J)Z

    move-result v11

    or-int/2addr v4, v11

    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    :cond_1
    return v4
.end method
