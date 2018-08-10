.class public Lcom/samsung/android/support/sesl/core/util/SeslSimpleArrayMap;
.super Ljava/lang/Object;
.source "SeslSimpleArrayMap.java"


# annotations
.annotation build Landroid/support/annotation/RestrictTo;
    value = {
        .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroid/support/annotation/RestrictTo$Scope;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field static mBaseCache:[Ljava/lang/Object;

.field static mBaseCacheSize:I

.field static mTwiceBaseCache:[Ljava/lang/Object;

.field static mTwiceBaseCacheSize:I


# instance fields
.field mArray:[Ljava/lang/Object;

.field mHashes:[I

.field mSize:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/samsung/android/support/sesl/core/util/SeslContainerHelpers;->EMPTY_INTS:[I

    iput-object v0, p0, Lcom/samsung/android/support/sesl/core/util/SeslSimpleArrayMap;->mHashes:[I

    sget-object v0, Lcom/samsung/android/support/sesl/core/util/SeslContainerHelpers;->EMPTY_OBJECTS:[Ljava/lang/Object;

    iput-object v0, p0, Lcom/samsung/android/support/sesl/core/util/SeslSimpleArrayMap;->mArray:[Ljava/lang/Object;

    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/support/sesl/core/util/SeslSimpleArrayMap;->mSize:I

    return-void
.end method

.method private allocArrays(I)V
    .locals 6

    const/16 v4, 0x8

    if-eq p1, v4, :cond_0

    const/4 v4, 0x4

    if-eq p1, v4, :cond_2

    :goto_0
    new-array v4, p1, [I

    iput-object v4, p0, Lcom/samsung/android/support/sesl/core/util/SeslSimpleArrayMap;->mHashes:[I

    shl-int/lit8 v4, p1, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    iput-object v4, p0, Lcom/samsung/android/support/sesl/core/util/SeslSimpleArrayMap;->mArray:[Ljava/lang/Object;

    return-void

    :cond_0
    const-class v0, Lcom/samsung/android/support/sesl/core/util/SeslArrayMap;

    const-class v4, Lcom/samsung/android/support/sesl/core/util/SeslArrayMap;

    monitor-enter v4

    :try_start_0
    sget-object v4, Lcom/samsung/android/support/sesl/core/util/SeslSimpleArrayMap;->mTwiceBaseCache:[Ljava/lang/Object;

    if-nez v4, :cond_1

    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_1
    :try_start_1
    sget-object v3, Lcom/samsung/android/support/sesl/core/util/SeslSimpleArrayMap;->mTwiceBaseCache:[Ljava/lang/Object;

    iput-object v3, p0, Lcom/samsung/android/support/sesl/core/util/SeslSimpleArrayMap;->mArray:[Ljava/lang/Object;

    const/4 v4, 0x0

    aget-object v4, v3, v4

    check-cast v4, [Ljava/lang/Object;

    check-cast v4, [Ljava/lang/Object;

    sput-object v4, Lcom/samsung/android/support/sesl/core/util/SeslSimpleArrayMap;->mTwiceBaseCache:[Ljava/lang/Object;

    const/4 v4, 0x1

    aget-object v4, v3, v4

    check-cast v4, [I

    check-cast v4, [I

    iput-object v4, p0, Lcom/samsung/android/support/sesl/core/util/SeslSimpleArrayMap;->mHashes:[I

    const/4 v4, 0x0

    const/4 v5, 0x1

    aput-object v4, v3, v5

    const/4 v4, 0x0

    const/4 v5, 0x0

    aput-object v4, v3, v5

    sget v4, Lcom/samsung/android/support/sesl/core/util/SeslSimpleArrayMap;->mTwiceBaseCacheSize:I

    add-int/lit8 v4, v4, -0x1

    sput v4, Lcom/samsung/android/support/sesl/core/util/SeslSimpleArrayMap;->mTwiceBaseCacheSize:I

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void

    :cond_2
    const-class v0, Lcom/samsung/android/support/sesl/core/util/SeslArrayMap;

    const-class v4, Lcom/samsung/android/support/sesl/core/util/SeslArrayMap;

    monitor-enter v4

    :try_start_2
    sget-object v4, Lcom/samsung/android/support/sesl/core/util/SeslSimpleArrayMap;->mBaseCache:[Ljava/lang/Object;

    if-nez v4, :cond_3

    monitor-exit v0

    goto :goto_0

    :catchall_1
    move-exception v2

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v2

    :cond_3
    :try_start_3
    sget-object v3, Lcom/samsung/android/support/sesl/core/util/SeslSimpleArrayMap;->mBaseCache:[Ljava/lang/Object;

    iput-object v3, p0, Lcom/samsung/android/support/sesl/core/util/SeslSimpleArrayMap;->mArray:[Ljava/lang/Object;

    const/4 v4, 0x0

    aget-object v4, v3, v4

    check-cast v4, [Ljava/lang/Object;

    check-cast v4, [Ljava/lang/Object;

    sput-object v4, Lcom/samsung/android/support/sesl/core/util/SeslSimpleArrayMap;->mBaseCache:[Ljava/lang/Object;

    const/4 v4, 0x1

    aget-object v4, v3, v4

    check-cast v4, [I

    check-cast v4, [I

    iput-object v4, p0, Lcom/samsung/android/support/sesl/core/util/SeslSimpleArrayMap;->mHashes:[I

    const/4 v4, 0x0

    const/4 v5, 0x1

    aput-object v4, v3, v5

    const/4 v4, 0x0

    const/4 v5, 0x0

    aput-object v4, v3, v5

    sget v4, Lcom/samsung/android/support/sesl/core/util/SeslSimpleArrayMap;->mBaseCacheSize:I

    add-int/lit8 v4, v4, -0x1

    sput v4, Lcom/samsung/android/support/sesl/core/util/SeslSimpleArrayMap;->mBaseCacheSize:I

    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    return-void
.end method

.method private static binarySearchHashes([III)I
    .locals 2

    :try_start_0
    invoke-static {p0, p1, p2}, Lcom/samsung/android/support/sesl/core/util/SeslContainerHelpers;->binarySearch([III)I
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    :catch_0
    move-exception v0

    new-instance v1, Ljava/util/ConcurrentModificationException;

    invoke-direct {v1}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v1
.end method

.method private static freeArrays([I[Ljava/lang/Object;I)V
    .locals 8

    const/16 v7, 0xa

    const/4 v6, 0x2

    array-length v4, p0

    const/16 v5, 0x8

    if-eq v4, v5, :cond_0

    array-length v4, p0

    const/4 v5, 0x4

    if-eq v4, v5, :cond_3

    :goto_0
    return-void

    :cond_0
    const-class v0, Lcom/samsung/android/support/sesl/core/util/SeslArrayMap;

    const-class v4, Lcom/samsung/android/support/sesl/core/util/SeslArrayMap;

    monitor-enter v4

    :try_start_0
    sget v4, Lcom/samsung/android/support/sesl/core/util/SeslSimpleArrayMap;->mTwiceBaseCacheSize:I

    if-lt v4, v7, :cond_1

    :goto_1
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_1
    :try_start_1
    sget-object v4, Lcom/samsung/android/support/sesl/core/util/SeslSimpleArrayMap;->mTwiceBaseCache:[Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v4, p1, v5

    const/4 v4, 0x1

    aput-object p0, p1, v4

    shl-int/lit8 v4, p2, 0x1

    add-int/lit8 v3, v4, -0x1

    :goto_2
    if-ge v3, v6, :cond_2

    sput-object p1, Lcom/samsung/android/support/sesl/core/util/SeslSimpleArrayMap;->mTwiceBaseCache:[Ljava/lang/Object;

    sget v4, Lcom/samsung/android/support/sesl/core/util/SeslSimpleArrayMap;->mTwiceBaseCacheSize:I

    add-int/lit8 v4, v4, 0x1

    sput v4, Lcom/samsung/android/support/sesl/core/util/SeslSimpleArrayMap;->mTwiceBaseCacheSize:I

    goto :goto_1

    :cond_2
    const/4 v4, 0x0

    aput-object v4, p1, v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    add-int/lit8 v3, v3, -0x1

    goto :goto_2

    :cond_3
    const-class v0, Lcom/samsung/android/support/sesl/core/util/SeslArrayMap;

    const-class v4, Lcom/samsung/android/support/sesl/core/util/SeslArrayMap;

    monitor-enter v4

    :try_start_2
    sget v4, Lcom/samsung/android/support/sesl/core/util/SeslSimpleArrayMap;->mBaseCacheSize:I

    if-lt v4, v7, :cond_4

    :goto_3
    monitor-exit v0

    goto :goto_0

    :catchall_1
    move-exception v2

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v2

    :cond_4
    :try_start_3
    sget-object v4, Lcom/samsung/android/support/sesl/core/util/SeslSimpleArrayMap;->mBaseCache:[Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v4, p1, v5

    const/4 v4, 0x1

    aput-object p0, p1, v4

    shl-int/lit8 v4, p2, 0x1

    add-int/lit8 v3, v4, -0x1

    :goto_4
    if-ge v3, v6, :cond_5

    sput-object p1, Lcom/samsung/android/support/sesl/core/util/SeslSimpleArrayMap;->mBaseCache:[Ljava/lang/Object;

    sget v4, Lcom/samsung/android/support/sesl/core/util/SeslSimpleArrayMap;->mBaseCacheSize:I

    add-int/lit8 v4, v4, 0x1

    sput v4, Lcom/samsung/android/support/sesl/core/util/SeslSimpleArrayMap;->mBaseCacheSize:I

    goto :goto_3

    :cond_5
    const/4 v4, 0x0

    aput-object v4, p1, v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    add-int/lit8 v3, v3, -0x1

    goto :goto_4
.end method


# virtual methods
.method public clear()V
    .locals 5

    const/4 v4, 0x0

    iget v3, p0, Lcom/samsung/android/support/sesl/core/util/SeslSimpleArrayMap;->mSize:I

    if-gtz v3, :cond_0

    :goto_0
    iget v3, p0, Lcom/samsung/android/support/sesl/core/util/SeslSimpleArrayMap;->mSize:I

    if-gtz v3, :cond_1

    return-void

    :cond_0
    iget-object v1, p0, Lcom/samsung/android/support/sesl/core/util/SeslSimpleArrayMap;->mHashes:[I

    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/util/SeslSimpleArrayMap;->mArray:[Ljava/lang/Object;

    iget v2, p0, Lcom/samsung/android/support/sesl/core/util/SeslSimpleArrayMap;->mSize:I

    sget-object v3, Lcom/samsung/android/support/sesl/core/util/SeslContainerHelpers;->EMPTY_INTS:[I

    iput-object v3, p0, Lcom/samsung/android/support/sesl/core/util/SeslSimpleArrayMap;->mHashes:[I

    sget-object v3, Lcom/samsung/android/support/sesl/core/util/SeslContainerHelpers;->EMPTY_OBJECTS:[Ljava/lang/Object;

    iput-object v3, p0, Lcom/samsung/android/support/sesl/core/util/SeslSimpleArrayMap;->mArray:[Ljava/lang/Object;

    iput v4, p0, Lcom/samsung/android/support/sesl/core/util/SeslSimpleArrayMap;->mSize:I

    invoke-static {v1, v0, v2}, Lcom/samsung/android/support/sesl/core/util/SeslSimpleArrayMap;->freeArrays([I[Ljava/lang/Object;I)V

    goto :goto_0

    :cond_1
    new-instance v3, Ljava/util/ConcurrentModificationException;

    invoke-direct {v3}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v3
.end method

.method public containsKey(Ljava/lang/Object;)Z
    .locals 2

    const/4 v0, 0x0

    invoke-virtual {p0, p1}, Lcom/samsung/android/support/sesl/core/util/SeslSimpleArrayMap;->indexOfKey(Ljava/lang/Object;)I

    move-result v1

    if-gez v1, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public containsValue(Ljava/lang/Object;)Z
    .locals 2

    const/4 v0, 0x0

    invoke-virtual {p0, p1}, Lcom/samsung/android/support/sesl/core/util/SeslSimpleArrayMap;->indexOfValue(Ljava/lang/Object;)I

    move-result v1

    if-gez v1, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public ensureCapacity(I)V
    .locals 6

    const/4 v5, 0x0

    iget v2, p0, Lcom/samsung/android/support/sesl/core/util/SeslSimpleArrayMap;->mSize:I

    iget-object v3, p0, Lcom/samsung/android/support/sesl/core/util/SeslSimpleArrayMap;->mHashes:[I

    array-length v3, v3

    if-lt v3, p1, :cond_0

    :goto_0
    iget v3, p0, Lcom/samsung/android/support/sesl/core/util/SeslSimpleArrayMap;->mSize:I

    if-ne v3, v2, :cond_2

    return-void

    :cond_0
    iget-object v1, p0, Lcom/samsung/android/support/sesl/core/util/SeslSimpleArrayMap;->mHashes:[I

    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/util/SeslSimpleArrayMap;->mArray:[Ljava/lang/Object;

    invoke-direct {p0, p1}, Lcom/samsung/android/support/sesl/core/util/SeslSimpleArrayMap;->allocArrays(I)V

    iget v3, p0, Lcom/samsung/android/support/sesl/core/util/SeslSimpleArrayMap;->mSize:I

    if-gtz v3, :cond_1

    :goto_1
    invoke-static {v1, v0, v2}, Lcom/samsung/android/support/sesl/core/util/SeslSimpleArrayMap;->freeArrays([I[Ljava/lang/Object;I)V

    goto :goto_0

    :cond_1
    iget-object v3, p0, Lcom/samsung/android/support/sesl/core/util/SeslSimpleArrayMap;->mHashes:[I

    invoke-static {v1, v5, v3, v5, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v3, p0, Lcom/samsung/android/support/sesl/core/util/SeslSimpleArrayMap;->mArray:[Ljava/lang/Object;

    shl-int/lit8 v4, v2, 0x1

    invoke-static {v0, v5, v3, v5, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_1

    :cond_2
    new-instance v3, Ljava/util/ConcurrentModificationException;

    invoke-direct {v3}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v3
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 12

    const/4 v11, 0x1

    const/4 v10, 0x0

    if-eq p0, p1, :cond_0

    instance-of v8, p1, Lcom/samsung/android/support/sesl/core/util/SeslSimpleArrayMap;

    if-nez v8, :cond_1

    instance-of v8, p1, Ljava/util/Map;

    if-nez v8, :cond_8

    return v10

    :cond_0
    return v11

    :cond_1
    move-object v4, p1

    check-cast v4, Lcom/samsung/android/support/sesl/core/util/SeslSimpleArrayMap;

    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/core/util/SeslSimpleArrayMap;->size()I

    move-result v8

    invoke-virtual {v4}, Lcom/samsung/android/support/sesl/core/util/SeslSimpleArrayMap;->size()I

    move-result v9

    if-ne v8, v9, :cond_2

    const/4 v0, 0x0

    :goto_0
    :try_start_0
    iget v8, p0, Lcom/samsung/android/support/sesl/core/util/SeslSimpleArrayMap;->mSize:I

    if-lt v0, v8, :cond_3

    return v11

    :cond_2
    return v10

    :cond_3
    invoke-virtual {p0, v0}, Lcom/samsung/android/support/sesl/core/util/SeslSimpleArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p0, v0}, Lcom/samsung/android/support/sesl/core/util/SeslSimpleArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v4, v3}, Lcom/samsung/android/support/sesl/core/util/SeslSimpleArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    if-eqz v6, :cond_4

    invoke-virtual {v6, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_7

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_4
    if-eqz v7, :cond_6

    :cond_5
    return v10

    :cond_6
    invoke-virtual {v4, v3}, Lcom/samsung/android/support/sesl/core/util/SeslSimpleArrayMap;->containsKey(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v8

    if-eqz v8, :cond_5

    goto :goto_1

    :cond_7
    return v10

    :catch_0
    move-exception v2

    return v10

    :catch_1
    move-exception v1

    return v10

    :cond_8
    move-object v5, p1

    check-cast v5, Ljava/util/Map;

    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/core/util/SeslSimpleArrayMap;->size()I

    move-result v8

    invoke-interface {v5}, Ljava/util/Map;->size()I

    move-result v9

    if-ne v8, v9, :cond_9

    const/4 v0, 0x0

    :goto_2
    :try_start_1
    iget v8, p0, Lcom/samsung/android/support/sesl/core/util/SeslSimpleArrayMap;->mSize:I

    if-lt v0, v8, :cond_a

    return v11

    :cond_9
    return v10

    :cond_a
    invoke-virtual {p0, v0}, Lcom/samsung/android/support/sesl/core/util/SeslSimpleArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p0, v0}, Lcom/samsung/android/support/sesl/core/util/SeslSimpleArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    invoke-interface {v5, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    if-eqz v6, :cond_b

    invoke-virtual {v6, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_e

    :goto_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_b
    if-eqz v7, :cond_d

    :cond_c
    return v10

    :cond_d
    invoke-interface {v5, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/ClassCastException; {:try_start_1 .. :try_end_1} :catch_3

    move-result v8

    if-eqz v8, :cond_c

    goto :goto_3

    :cond_e
    return v10

    :catch_2
    move-exception v2

    return v10

    :catch_3
    move-exception v1

    return v10
.end method

.method public get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/samsung/android/support/sesl/core/util/SeslSimpleArrayMap;->indexOfKey(Ljava/lang/Object;)I

    move-result v0

    if-gez v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_0
    iget-object v1, p0, Lcom/samsung/android/support/sesl/core/util/SeslSimpleArrayMap;->mArray:[Ljava/lang/Object;

    shl-int/lit8 v2, v0, 0x1

    add-int/lit8 v2, v2, 0x1

    aget-object v1, v1, v2

    goto :goto_0
.end method

.method public hashCode()I
    .locals 9

    iget-object v1, p0, Lcom/samsung/android/support/sesl/core/util/SeslSimpleArrayMap;->mHashes:[I

    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/util/SeslSimpleArrayMap;->mArray:[Ljava/lang/Object;

    const/4 v3, 0x0

    const/4 v2, 0x0

    const/4 v5, 0x1

    iget v4, p0, Lcom/samsung/android/support/sesl/core/util/SeslSimpleArrayMap;->mSize:I

    :goto_0
    if-lt v2, v4, :cond_0

    return v3

    :cond_0
    aget-object v6, v0, v5

    aget v8, v1, v2

    if-eqz v6, :cond_1

    invoke-virtual {v6}, Ljava/lang/Object;->hashCode()I

    move-result v7

    :goto_1
    xor-int/2addr v7, v8

    add-int/2addr v3, v7

    add-int/lit8 v2, v2, 0x1

    add-int/lit8 v5, v5, 0x2

    goto :goto_0

    :cond_1
    const/4 v7, 0x0

    goto :goto_1
.end method

.method indexOf(Ljava/lang/Object;I)I
    .locals 6

    iget v0, p0, Lcom/samsung/android/support/sesl/core/util/SeslSimpleArrayMap;->mSize:I

    if-eqz v0, :cond_2

    iget-object v4, p0, Lcom/samsung/android/support/sesl/core/util/SeslSimpleArrayMap;->mHashes:[I

    invoke-static {v4, v0, p2}, Lcom/samsung/android/support/sesl/core/util/SeslSimpleArrayMap;->binarySearchHashes([III)I

    move-result v3

    if-ltz v3, :cond_3

    iget-object v4, p0, Lcom/samsung/android/support/sesl/core/util/SeslSimpleArrayMap;->mArray:[Ljava/lang/Object;

    shl-int/lit8 v5, v3, 0x1

    aget-object v4, v4, v5

    invoke-virtual {p1, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4

    add-int/lit8 v1, v3, 0x1

    :goto_0
    if-lt v1, v0, :cond_5

    :cond_0
    add-int/lit8 v2, v3, -0x1

    :goto_1
    if-gez v2, :cond_7

    :cond_1
    xor-int/lit8 v4, v1, -0x1

    return v4

    :cond_2
    const/4 v4, -0x1

    return v4

    :cond_3
    return v3

    :cond_4
    return v3

    :cond_5
    iget-object v4, p0, Lcom/samsung/android/support/sesl/core/util/SeslSimpleArrayMap;->mHashes:[I

    aget v4, v4, v1

    if-ne v4, p2, :cond_0

    iget-object v4, p0, Lcom/samsung/android/support/sesl/core/util/SeslSimpleArrayMap;->mArray:[Ljava/lang/Object;

    shl-int/lit8 v5, v1, 0x1

    aget-object v4, v4, v5

    invoke-virtual {p1, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_6

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_6
    return v1

    :cond_7
    iget-object v4, p0, Lcom/samsung/android/support/sesl/core/util/SeslSimpleArrayMap;->mHashes:[I

    aget v4, v4, v2

    if-ne v4, p2, :cond_1

    iget-object v4, p0, Lcom/samsung/android/support/sesl/core/util/SeslSimpleArrayMap;->mArray:[Ljava/lang/Object;

    shl-int/lit8 v5, v2, 0x1

    aget-object v4, v4, v5

    invoke-virtual {p1, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_8

    add-int/lit8 v2, v2, -0x1

    goto :goto_1

    :cond_8
    return v2
.end method

.method public indexOfKey(Ljava/lang/Object;)I
    .locals 1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/support/sesl/core/util/SeslSimpleArrayMap;->indexOf(Ljava/lang/Object;I)I

    move-result v0

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/core/util/SeslSimpleArrayMap;->indexOfNull()I

    move-result v0

    goto :goto_0
.end method

.method indexOfNull()I
    .locals 6

    const/4 v5, 0x0

    iget v0, p0, Lcom/samsung/android/support/sesl/core/util/SeslSimpleArrayMap;->mSize:I

    if-eqz v0, :cond_2

    iget-object v4, p0, Lcom/samsung/android/support/sesl/core/util/SeslSimpleArrayMap;->mHashes:[I

    invoke-static {v4, v0, v5}, Lcom/samsung/android/support/sesl/core/util/SeslSimpleArrayMap;->binarySearchHashes([III)I

    move-result v3

    if-ltz v3, :cond_3

    iget-object v4, p0, Lcom/samsung/android/support/sesl/core/util/SeslSimpleArrayMap;->mArray:[Ljava/lang/Object;

    shl-int/lit8 v5, v3, 0x1

    aget-object v4, v4, v5

    if-eqz v4, :cond_4

    add-int/lit8 v1, v3, 0x1

    :goto_0
    if-lt v1, v0, :cond_5

    :cond_0
    add-int/lit8 v2, v3, -0x1

    :goto_1
    if-gez v2, :cond_7

    :cond_1
    xor-int/lit8 v4, v1, -0x1

    return v4

    :cond_2
    const/4 v4, -0x1

    return v4

    :cond_3
    return v3

    :cond_4
    return v3

    :cond_5
    iget-object v4, p0, Lcom/samsung/android/support/sesl/core/util/SeslSimpleArrayMap;->mHashes:[I

    aget v4, v4, v1

    if-nez v4, :cond_0

    iget-object v4, p0, Lcom/samsung/android/support/sesl/core/util/SeslSimpleArrayMap;->mArray:[Ljava/lang/Object;

    shl-int/lit8 v5, v1, 0x1

    aget-object v4, v4, v5

    if-eqz v4, :cond_6

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_6
    return v1

    :cond_7
    iget-object v4, p0, Lcom/samsung/android/support/sesl/core/util/SeslSimpleArrayMap;->mHashes:[I

    aget v4, v4, v2

    if-nez v4, :cond_1

    iget-object v4, p0, Lcom/samsung/android/support/sesl/core/util/SeslSimpleArrayMap;->mArray:[Ljava/lang/Object;

    shl-int/lit8 v5, v2, 0x1

    aget-object v4, v4, v5

    if-eqz v4, :cond_8

    add-int/lit8 v2, v2, -0x1

    goto :goto_1

    :cond_8
    return v2
.end method

.method indexOfValue(Ljava/lang/Object;)I
    .locals 4

    iget v3, p0, Lcom/samsung/android/support/sesl/core/util/SeslSimpleArrayMap;->mSize:I

    mul-int/lit8 v0, v3, 0x2

    iget-object v1, p0, Lcom/samsung/android/support/sesl/core/util/SeslSimpleArrayMap;->mArray:[Ljava/lang/Object;

    if-eqz p1, :cond_1

    const/4 v2, 0x1

    :goto_0
    if-lt v2, v0, :cond_3

    :cond_0
    const/4 v3, -0x1

    return v3

    :cond_1
    const/4 v2, 0x1

    :goto_1
    if-ge v2, v0, :cond_0

    aget-object v3, v1, v2

    if-eqz v3, :cond_2

    add-int/lit8 v2, v2, 0x2

    goto :goto_1

    :cond_2
    shr-int/lit8 v3, v2, 0x1

    return v3

    :cond_3
    aget-object v3, v1, v2

    invoke-virtual {p1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    add-int/lit8 v2, v2, 0x2

    goto :goto_0

    :cond_4
    shr-int/lit8 v3, v2, 0x1

    return v3
.end method

.method public isEmpty()Z
    .locals 2

    const/4 v0, 0x0

    iget v1, p0, Lcom/samsung/android/support/sesl/core/util/SeslSimpleArrayMap;->mSize:I

    if-lez v1, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public keyAt(I)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TK;"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/util/SeslSimpleArrayMap;->mArray:[Ljava/lang/Object;

    shl-int/lit8 v1, p1, 0x1

    aget-object v0, v0, v1

    return-object v0
.end method

.method public put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)TV;"
        }
    .end annotation

    const/4 v12, 0x0

    const/16 v7, 0x8

    const/4 v2, 0x4

    const/4 v9, 0x0

    iget v6, p0, Lcom/samsung/android/support/sesl/core/util/SeslSimpleArrayMap;->mSize:I

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/support/sesl/core/util/SeslSimpleArrayMap;->indexOf(Ljava/lang/Object;I)I

    move-result v1

    :goto_0
    if-gez v1, :cond_2

    xor-int/lit8 v1, v1, -0x1

    iget-object v8, p0, Lcom/samsung/android/support/sesl/core/util/SeslSimpleArrayMap;->mHashes:[I

    array-length v8, v8

    if-ge v6, v8, :cond_3

    :goto_1
    if-lt v1, v6, :cond_8

    :goto_2
    iget v7, p0, Lcom/samsung/android/support/sesl/core/util/SeslSimpleArrayMap;->mSize:I

    if-eq v6, v7, :cond_9

    :cond_0
    new-instance v7, Ljava/util/ConcurrentModificationException;

    invoke-direct {v7}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v7

    :cond_1
    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/core/util/SeslSimpleArrayMap;->indexOfNull()I

    move-result v1

    goto :goto_0

    :cond_2
    shl-int/lit8 v7, v1, 0x1

    add-int/lit8 v1, v7, 0x1

    iget-object v7, p0, Lcom/samsung/android/support/sesl/core/util/SeslSimpleArrayMap;->mArray:[Ljava/lang/Object;

    aget-object v5, v7, v1

    iget-object v7, p0, Lcom/samsung/android/support/sesl/core/util/SeslSimpleArrayMap;->mArray:[Ljava/lang/Object;

    aput-object p2, v7, v1

    return-object v5

    :cond_3
    if-ge v6, v7, :cond_4

    if-ge v6, v2, :cond_5

    :goto_3
    iget-object v4, p0, Lcom/samsung/android/support/sesl/core/util/SeslSimpleArrayMap;->mHashes:[I

    iget-object v3, p0, Lcom/samsung/android/support/sesl/core/util/SeslSimpleArrayMap;->mArray:[Ljava/lang/Object;

    invoke-direct {p0, v2}, Lcom/samsung/android/support/sesl/core/util/SeslSimpleArrayMap;->allocArrays(I)V

    iget v7, p0, Lcom/samsung/android/support/sesl/core/util/SeslSimpleArrayMap;->mSize:I

    if-ne v6, v7, :cond_6

    iget-object v7, p0, Lcom/samsung/android/support/sesl/core/util/SeslSimpleArrayMap;->mHashes:[I

    array-length v7, v7

    if-gtz v7, :cond_7

    :goto_4
    invoke-static {v4, v3, v6}, Lcom/samsung/android/support/sesl/core/util/SeslSimpleArrayMap;->freeArrays([I[Ljava/lang/Object;I)V

    goto :goto_1

    :cond_4
    shr-int/lit8 v7, v6, 0x1

    add-int v2, v6, v7

    goto :goto_3

    :cond_5
    move v2, v7

    goto :goto_3

    :cond_6
    new-instance v7, Ljava/util/ConcurrentModificationException;

    invoke-direct {v7}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v7

    :cond_7
    iget-object v7, p0, Lcom/samsung/android/support/sesl/core/util/SeslSimpleArrayMap;->mHashes:[I

    array-length v8, v4

    invoke-static {v4, v9, v7, v9, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v7, p0, Lcom/samsung/android/support/sesl/core/util/SeslSimpleArrayMap;->mArray:[Ljava/lang/Object;

    array-length v8, v3

    invoke-static {v3, v9, v7, v9, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_4

    :cond_8
    iget-object v7, p0, Lcom/samsung/android/support/sesl/core/util/SeslSimpleArrayMap;->mHashes:[I

    iget-object v8, p0, Lcom/samsung/android/support/sesl/core/util/SeslSimpleArrayMap;->mHashes:[I

    add-int/lit8 v9, v1, 0x1

    sub-int v10, v6, v1

    invoke-static {v7, v1, v8, v9, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v7, p0, Lcom/samsung/android/support/sesl/core/util/SeslSimpleArrayMap;->mArray:[Ljava/lang/Object;

    shl-int/lit8 v8, v1, 0x1

    iget-object v9, p0, Lcom/samsung/android/support/sesl/core/util/SeslSimpleArrayMap;->mArray:[Ljava/lang/Object;

    add-int/lit8 v10, v1, 0x1

    shl-int/lit8 v10, v10, 0x1

    iget v11, p0, Lcom/samsung/android/support/sesl/core/util/SeslSimpleArrayMap;->mSize:I

    sub-int/2addr v11, v1

    shl-int/lit8 v11, v11, 0x1

    invoke-static {v7, v8, v9, v10, v11}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_2

    :cond_9
    iget-object v7, p0, Lcom/samsung/android/support/sesl/core/util/SeslSimpleArrayMap;->mHashes:[I

    array-length v7, v7

    if-ge v1, v7, :cond_0

    iget-object v7, p0, Lcom/samsung/android/support/sesl/core/util/SeslSimpleArrayMap;->mHashes:[I

    aput v0, v7, v1

    iget-object v7, p0, Lcom/samsung/android/support/sesl/core/util/SeslSimpleArrayMap;->mArray:[Ljava/lang/Object;

    shl-int/lit8 v8, v1, 0x1

    aput-object p1, v7, v8

    iget-object v7, p0, Lcom/samsung/android/support/sesl/core/util/SeslSimpleArrayMap;->mArray:[Ljava/lang/Object;

    shl-int/lit8 v8, v1, 0x1

    add-int/lit8 v8, v8, 0x1

    aput-object p2, v7, v8

    iget v7, p0, Lcom/samsung/android/support/sesl/core/util/SeslSimpleArrayMap;->mSize:I

    add-int/lit8 v7, v7, 0x1

    iput v7, p0, Lcom/samsung/android/support/sesl/core/util/SeslSimpleArrayMap;->mSize:I

    return-object v12
.end method

.method public remove(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/samsung/android/support/sesl/core/util/SeslSimpleArrayMap;->indexOfKey(Ljava/lang/Object;)I

    move-result v0

    if-gez v0, :cond_0

    const/4 v1, 0x0

    return-object v1

    :cond_0
    invoke-virtual {p0, v0}, Lcom/samsung/android/support/sesl/core/util/SeslSimpleArrayMap;->removeAt(I)Ljava/lang/Object;

    move-result-object v1

    return-object v1
.end method

.method public removeAt(I)Ljava/lang/Object;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TV;"
        }
    .end annotation

    const/4 v11, 0x0

    const/16 v0, 0x8

    const/4 v8, 0x0

    iget-object v6, p0, Lcom/samsung/android/support/sesl/core/util/SeslSimpleArrayMap;->mArray:[Ljava/lang/Object;

    shl-int/lit8 v7, p1, 0x1

    add-int/lit8 v7, v7, 0x1

    aget-object v4, v6, v7

    iget v5, p0, Lcom/samsung/android/support/sesl/core/util/SeslSimpleArrayMap;->mSize:I

    const/4 v6, 0x1

    if-le v5, v6, :cond_2

    add-int/lit8 v1, v5, -0x1

    iget-object v6, p0, Lcom/samsung/android/support/sesl/core/util/SeslSimpleArrayMap;->mHashes:[I

    array-length v6, v6

    if-gt v6, v0, :cond_3

    :cond_0
    if-lt p1, v1, :cond_7

    :goto_0
    iget-object v6, p0, Lcom/samsung/android/support/sesl/core/util/SeslSimpleArrayMap;->mArray:[Ljava/lang/Object;

    shl-int/lit8 v7, v1, 0x1

    aput-object v11, v6, v7

    iget-object v6, p0, Lcom/samsung/android/support/sesl/core/util/SeslSimpleArrayMap;->mArray:[Ljava/lang/Object;

    shl-int/lit8 v7, v1, 0x1

    add-int/lit8 v7, v7, 0x1

    aput-object v11, v6, v7

    :cond_1
    :goto_1
    iget v6, p0, Lcom/samsung/android/support/sesl/core/util/SeslSimpleArrayMap;->mSize:I

    if-ne v5, v6, :cond_8

    iput v1, p0, Lcom/samsung/android/support/sesl/core/util/SeslSimpleArrayMap;->mSize:I

    return-object v4

    :cond_2
    iget-object v6, p0, Lcom/samsung/android/support/sesl/core/util/SeslSimpleArrayMap;->mHashes:[I

    iget-object v7, p0, Lcom/samsung/android/support/sesl/core/util/SeslSimpleArrayMap;->mArray:[Ljava/lang/Object;

    invoke-static {v6, v7, v5}, Lcom/samsung/android/support/sesl/core/util/SeslSimpleArrayMap;->freeArrays([I[Ljava/lang/Object;I)V

    sget-object v6, Lcom/samsung/android/support/sesl/core/util/SeslContainerHelpers;->EMPTY_INTS:[I

    iput-object v6, p0, Lcom/samsung/android/support/sesl/core/util/SeslSimpleArrayMap;->mHashes:[I

    sget-object v6, Lcom/samsung/android/support/sesl/core/util/SeslContainerHelpers;->EMPTY_OBJECTS:[Ljava/lang/Object;

    iput-object v6, p0, Lcom/samsung/android/support/sesl/core/util/SeslSimpleArrayMap;->mArray:[Ljava/lang/Object;

    const/4 v1, 0x0

    goto :goto_1

    :cond_3
    iget v6, p0, Lcom/samsung/android/support/sesl/core/util/SeslSimpleArrayMap;->mSize:I

    iget-object v7, p0, Lcom/samsung/android/support/sesl/core/util/SeslSimpleArrayMap;->mHashes:[I

    array-length v7, v7

    div-int/lit8 v7, v7, 0x3

    if-ge v6, v7, :cond_0

    if-gt v5, v0, :cond_4

    :goto_2
    iget-object v3, p0, Lcom/samsung/android/support/sesl/core/util/SeslSimpleArrayMap;->mHashes:[I

    iget-object v2, p0, Lcom/samsung/android/support/sesl/core/util/SeslSimpleArrayMap;->mArray:[Ljava/lang/Object;

    invoke-direct {p0, v0}, Lcom/samsung/android/support/sesl/core/util/SeslSimpleArrayMap;->allocArrays(I)V

    iget v6, p0, Lcom/samsung/android/support/sesl/core/util/SeslSimpleArrayMap;->mSize:I

    if-ne v5, v6, :cond_5

    if-gtz p1, :cond_6

    :goto_3
    if-ge p1, v1, :cond_1

    add-int/lit8 v6, p1, 0x1

    iget-object v7, p0, Lcom/samsung/android/support/sesl/core/util/SeslSimpleArrayMap;->mHashes:[I

    sub-int v8, v1, p1

    invoke-static {v3, v6, v7, p1, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v6, p1, 0x1

    shl-int/lit8 v6, v6, 0x1

    iget-object v7, p0, Lcom/samsung/android/support/sesl/core/util/SeslSimpleArrayMap;->mArray:[Ljava/lang/Object;

    shl-int/lit8 v8, p1, 0x1

    sub-int v9, v1, p1

    shl-int/lit8 v9, v9, 0x1

    invoke-static {v2, v6, v7, v8, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_1

    :cond_4
    shr-int/lit8 v6, v5, 0x1

    add-int v0, v5, v6

    goto :goto_2

    :cond_5
    new-instance v6, Ljava/util/ConcurrentModificationException;

    invoke-direct {v6}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v6

    :cond_6
    iget-object v6, p0, Lcom/samsung/android/support/sesl/core/util/SeslSimpleArrayMap;->mHashes:[I

    invoke-static {v3, v8, v6, v8, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v6, p0, Lcom/samsung/android/support/sesl/core/util/SeslSimpleArrayMap;->mArray:[Ljava/lang/Object;

    shl-int/lit8 v7, p1, 0x1

    invoke-static {v2, v8, v6, v8, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_3

    :cond_7
    iget-object v6, p0, Lcom/samsung/android/support/sesl/core/util/SeslSimpleArrayMap;->mHashes:[I

    add-int/lit8 v7, p1, 0x1

    iget-object v8, p0, Lcom/samsung/android/support/sesl/core/util/SeslSimpleArrayMap;->mHashes:[I

    sub-int v9, v1, p1

    invoke-static {v6, v7, v8, p1, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v6, p0, Lcom/samsung/android/support/sesl/core/util/SeslSimpleArrayMap;->mArray:[Ljava/lang/Object;

    add-int/lit8 v7, p1, 0x1

    shl-int/lit8 v7, v7, 0x1

    iget-object v8, p0, Lcom/samsung/android/support/sesl/core/util/SeslSimpleArrayMap;->mArray:[Ljava/lang/Object;

    shl-int/lit8 v9, p1, 0x1

    sub-int v10, v1, p1

    shl-int/lit8 v10, v10, 0x1

    invoke-static {v6, v7, v8, v9, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto/16 :goto_0

    :cond_8
    new-instance v6, Ljava/util/ConcurrentModificationException;

    invoke-direct {v6}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v6
.end method

.method public setValueAt(ILjava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITV;)TV;"
        }
    .end annotation

    shl-int/lit8 v1, p1, 0x1

    add-int/lit8 p1, v1, 0x1

    iget-object v1, p0, Lcom/samsung/android/support/sesl/core/util/SeslSimpleArrayMap;->mArray:[Ljava/lang/Object;

    aget-object v0, v1, p1

    iget-object v1, p0, Lcom/samsung/android/support/sesl/core/util/SeslSimpleArrayMap;->mArray:[Ljava/lang/Object;

    aput-object p2, v1, p1

    return-object v0
.end method

.method public size()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/support/sesl/core/util/SeslSimpleArrayMap;->mSize:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/core/util/SeslSimpleArrayMap;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/samsung/android/support/sesl/core/util/SeslSimpleArrayMap;->mSize:I

    mul-int/lit8 v4, v4, 0x1c

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    const/16 v4, 0x7b

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    :goto_0
    iget v4, p0, Lcom/samsung/android/support/sesl/core/util/SeslSimpleArrayMap;->mSize:I

    if-lt v1, v4, :cond_1

    const/16 v4, 0x7d

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4

    :cond_0
    const-string/jumbo v4, "{}"

    return-object v4

    :cond_1
    if-gtz v1, :cond_2

    :goto_1
    invoke-virtual {p0, v1}, Lcom/samsung/android/support/sesl/core/util/SeslSimpleArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, p0, :cond_3

    const-string/jumbo v4, "(this Map)"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_2
    const/16 v4, 0x3d

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Lcom/samsung/android/support/sesl/core/util/SeslSimpleArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    if-ne v3, p0, :cond_4

    const-string/jumbo v4, "(this Map)"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    const-string/jumbo v4, ", "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_3
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_4
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_3
.end method

.method public valueAt(I)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TV;"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/util/SeslSimpleArrayMap;->mArray:[Ljava/lang/Object;

    shl-int/lit8 v1, p1, 0x1

    add-int/lit8 v1, v1, 0x1

    aget-object v0, v0, v1

    return-object v0
.end method
