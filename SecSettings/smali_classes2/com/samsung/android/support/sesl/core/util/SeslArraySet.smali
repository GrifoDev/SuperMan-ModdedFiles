.class public final Lcom/samsung/android/support/sesl/core/util/SeslArraySet;
.super Ljava/lang/Object;
.source "SeslArraySet.java"

# interfaces
.implements Ljava/util/Collection;
.implements Ljava/util/Set;


# annotations
.annotation build Landroid/support/annotation/RestrictTo;
    value = {
        .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroid/support/annotation/RestrictTo$Scope;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/Collection",
        "<TE;>;",
        "Ljava/util/Set",
        "<TE;>;"
    }
.end annotation


# static fields
.field private static final INT:[I

.field private static final OBJECT:[Ljava/lang/Object;

.field static sBaseCache:[Ljava/lang/Object;

.field static sBaseCacheSize:I

.field static sTwiceBaseCache:[Ljava/lang/Object;

.field static sTwiceBaseCacheSize:I


# instance fields
.field mArray:[Ljava/lang/Object;

.field mCollections:Lcom/samsung/android/support/sesl/core/util/SeslMapCollections;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/samsung/android/support/sesl/core/util/SeslMapCollections",
            "<TE;TE;>;"
        }
    .end annotation
.end field

.field mHashes:[I

.field final mIdentityHashCode:Z

.field mSize:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v1, 0x0

    new-array v0, v1, [I

    sput-object v0, Lcom/samsung/android/support/sesl/core/util/SeslArraySet;->INT:[I

    new-array v0, v1, [Ljava/lang/Object;

    sput-object v0, Lcom/samsung/android/support/sesl/core/util/SeslArraySet;->OBJECT:[Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0, v0}, Lcom/samsung/android/support/sesl/core/util/SeslArraySet;-><init>(IZ)V

    return-void
.end method

.method public constructor <init>(IZ)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p2, p0, Lcom/samsung/android/support/sesl/core/util/SeslArraySet;->mIdentityHashCode:Z

    if-eqz p1, :cond_0

    invoke-direct {p0, p1}, Lcom/samsung/android/support/sesl/core/util/SeslArraySet;->allocArrays(I)V

    :goto_0
    iput v1, p0, Lcom/samsung/android/support/sesl/core/util/SeslArraySet;->mSize:I

    return-void

    :cond_0
    sget-object v0, Lcom/samsung/android/support/sesl/core/util/SeslArraySet;->INT:[I

    iput-object v0, p0, Lcom/samsung/android/support/sesl/core/util/SeslArraySet;->mHashes:[I

    sget-object v0, Lcom/samsung/android/support/sesl/core/util/SeslArraySet;->OBJECT:[Ljava/lang/Object;

    iput-object v0, p0, Lcom/samsung/android/support/sesl/core/util/SeslArraySet;->mArray:[Ljava/lang/Object;

    goto :goto_0
.end method

.method private allocArrays(I)V
    .locals 6

    const/16 v4, 0x8

    if-eq p1, v4, :cond_0

    const/4 v4, 0x4

    if-eq p1, v4, :cond_2

    :goto_0
    new-array v4, p1, [I

    iput-object v4, p0, Lcom/samsung/android/support/sesl/core/util/SeslArraySet;->mHashes:[I

    new-array v4, p1, [Ljava/lang/Object;

    iput-object v4, p0, Lcom/samsung/android/support/sesl/core/util/SeslArraySet;->mArray:[Ljava/lang/Object;

    return-void

    :cond_0
    const-class v0, Lcom/samsung/android/support/sesl/core/util/SeslArraySet;

    const-class v4, Lcom/samsung/android/support/sesl/core/util/SeslArraySet;

    monitor-enter v4

    :try_start_0
    sget-object v4, Lcom/samsung/android/support/sesl/core/util/SeslArraySet;->sTwiceBaseCache:[Ljava/lang/Object;

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
    sget-object v3, Lcom/samsung/android/support/sesl/core/util/SeslArraySet;->sTwiceBaseCache:[Ljava/lang/Object;

    iput-object v3, p0, Lcom/samsung/android/support/sesl/core/util/SeslArraySet;->mArray:[Ljava/lang/Object;

    const/4 v4, 0x0

    aget-object v4, v3, v4

    check-cast v4, [Ljava/lang/Object;

    check-cast v4, [Ljava/lang/Object;

    sput-object v4, Lcom/samsung/android/support/sesl/core/util/SeslArraySet;->sTwiceBaseCache:[Ljava/lang/Object;

    const/4 v4, 0x1

    aget-object v4, v3, v4

    check-cast v4, [I

    check-cast v4, [I

    iput-object v4, p0, Lcom/samsung/android/support/sesl/core/util/SeslArraySet;->mHashes:[I

    const/4 v4, 0x0

    const/4 v5, 0x1

    aput-object v4, v3, v5

    const/4 v4, 0x0

    const/4 v5, 0x0

    aput-object v4, v3, v5

    sget v4, Lcom/samsung/android/support/sesl/core/util/SeslArraySet;->sTwiceBaseCacheSize:I

    add-int/lit8 v4, v4, -0x1

    sput v4, Lcom/samsung/android/support/sesl/core/util/SeslArraySet;->sTwiceBaseCacheSize:I

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void

    :cond_2
    const-class v0, Lcom/samsung/android/support/sesl/core/util/SeslArraySet;

    const-class v4, Lcom/samsung/android/support/sesl/core/util/SeslArraySet;

    monitor-enter v4

    :try_start_2
    sget-object v4, Lcom/samsung/android/support/sesl/core/util/SeslArraySet;->sBaseCache:[Ljava/lang/Object;

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
    sget-object v3, Lcom/samsung/android/support/sesl/core/util/SeslArraySet;->sBaseCache:[Ljava/lang/Object;

    iput-object v3, p0, Lcom/samsung/android/support/sesl/core/util/SeslArraySet;->mArray:[Ljava/lang/Object;

    const/4 v4, 0x0

    aget-object v4, v3, v4

    check-cast v4, [Ljava/lang/Object;

    check-cast v4, [Ljava/lang/Object;

    sput-object v4, Lcom/samsung/android/support/sesl/core/util/SeslArraySet;->sBaseCache:[Ljava/lang/Object;

    const/4 v4, 0x1

    aget-object v4, v3, v4

    check-cast v4, [I

    check-cast v4, [I

    iput-object v4, p0, Lcom/samsung/android/support/sesl/core/util/SeslArraySet;->mHashes:[I

    const/4 v4, 0x0

    const/4 v5, 0x1

    aput-object v4, v3, v5

    const/4 v4, 0x0

    const/4 v5, 0x0

    aput-object v4, v3, v5

    sget v4, Lcom/samsung/android/support/sesl/core/util/SeslArraySet;->sBaseCacheSize:I

    add-int/lit8 v4, v4, -0x1

    sput v4, Lcom/samsung/android/support/sesl/core/util/SeslArraySet;->sBaseCacheSize:I

    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    return-void
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
    const-class v0, Lcom/samsung/android/support/sesl/core/util/SeslArraySet;

    const-class v4, Lcom/samsung/android/support/sesl/core/util/SeslArraySet;

    monitor-enter v4

    :try_start_0
    sget v4, Lcom/samsung/android/support/sesl/core/util/SeslArraySet;->sTwiceBaseCacheSize:I

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
    sget-object v4, Lcom/samsung/android/support/sesl/core/util/SeslArraySet;->sTwiceBaseCache:[Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v4, p1, v5

    const/4 v4, 0x1

    aput-object p0, p1, v4

    add-int/lit8 v3, p2, -0x1

    :goto_2
    if-ge v3, v6, :cond_2

    sput-object p1, Lcom/samsung/android/support/sesl/core/util/SeslArraySet;->sTwiceBaseCache:[Ljava/lang/Object;

    sget v4, Lcom/samsung/android/support/sesl/core/util/SeslArraySet;->sTwiceBaseCacheSize:I

    add-int/lit8 v4, v4, 0x1

    sput v4, Lcom/samsung/android/support/sesl/core/util/SeslArraySet;->sTwiceBaseCacheSize:I

    goto :goto_1

    :cond_2
    const/4 v4, 0x0

    aput-object v4, p1, v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    add-int/lit8 v3, v3, -0x1

    goto :goto_2

    :cond_3
    const-class v0, Lcom/samsung/android/support/sesl/core/util/SeslArraySet;

    const-class v4, Lcom/samsung/android/support/sesl/core/util/SeslArraySet;

    monitor-enter v4

    :try_start_2
    sget v4, Lcom/samsung/android/support/sesl/core/util/SeslArraySet;->sBaseCacheSize:I

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
    sget-object v4, Lcom/samsung/android/support/sesl/core/util/SeslArraySet;->sBaseCache:[Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v4, p1, v5

    const/4 v4, 0x1

    aput-object p0, p1, v4

    add-int/lit8 v3, p2, -0x1

    :goto_4
    if-ge v3, v6, :cond_5

    sput-object p1, Lcom/samsung/android/support/sesl/core/util/SeslArraySet;->sBaseCache:[Ljava/lang/Object;

    sget v4, Lcom/samsung/android/support/sesl/core/util/SeslArraySet;->sBaseCacheSize:I

    add-int/lit8 v4, v4, 0x1

    sput v4, Lcom/samsung/android/support/sesl/core/util/SeslArraySet;->sBaseCacheSize:I

    goto :goto_3

    :cond_5
    const/4 v4, 0x0

    aput-object v4, p1, v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    add-int/lit8 v3, v3, -0x1

    goto :goto_4
.end method

.method private getCollection()Lcom/samsung/android/support/sesl/core/util/SeslMapCollections;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/samsung/android/support/sesl/core/util/SeslMapCollections",
            "<TE;TE;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/util/SeslArraySet;->mCollections:Lcom/samsung/android/support/sesl/core/util/SeslMapCollections;

    if-eqz v0, :cond_0

    :goto_0
    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/util/SeslArraySet;->mCollections:Lcom/samsung/android/support/sesl/core/util/SeslMapCollections;

    return-object v0

    :cond_0
    new-instance v0, Lcom/samsung/android/support/sesl/core/util/SeslArraySet$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/support/sesl/core/util/SeslArraySet$1;-><init>(Lcom/samsung/android/support/sesl/core/util/SeslArraySet;)V

    iput-object v0, p0, Lcom/samsung/android/support/sesl/core/util/SeslArraySet;->mCollections:Lcom/samsung/android/support/sesl/core/util/SeslMapCollections;

    goto :goto_0
.end method

.method private indexOf(Ljava/lang/Object;I)I
    .locals 5

    iget v0, p0, Lcom/samsung/android/support/sesl/core/util/SeslArraySet;->mSize:I

    if-eqz v0, :cond_2

    iget-object v4, p0, Lcom/samsung/android/support/sesl/core/util/SeslArraySet;->mHashes:[I

    invoke-static {v4, v0, p2}, Lcom/samsung/android/support/sesl/core/util/SeslContainerHelpers;->binarySearch([III)I

    move-result v3

    if-ltz v3, :cond_3

    iget-object v4, p0, Lcom/samsung/android/support/sesl/core/util/SeslArraySet;->mArray:[Ljava/lang/Object;

    aget-object v4, v4, v3

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
    iget-object v4, p0, Lcom/samsung/android/support/sesl/core/util/SeslArraySet;->mHashes:[I

    aget v4, v4, v1

    if-ne v4, p2, :cond_0

    iget-object v4, p0, Lcom/samsung/android/support/sesl/core/util/SeslArraySet;->mArray:[Ljava/lang/Object;

    aget-object v4, v4, v1

    invoke-virtual {p1, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_6

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_6
    return v1

    :cond_7
    iget-object v4, p0, Lcom/samsung/android/support/sesl/core/util/SeslArraySet;->mHashes:[I

    aget v4, v4, v2

    if-ne v4, p2, :cond_1

    iget-object v4, p0, Lcom/samsung/android/support/sesl/core/util/SeslArraySet;->mArray:[Ljava/lang/Object;

    aget-object v4, v4, v2

    invoke-virtual {p1, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_8

    add-int/lit8 v2, v2, -0x1

    goto :goto_1

    :cond_8
    return v2
.end method

.method private indexOfNull()I
    .locals 6

    const/4 v5, 0x0

    iget v0, p0, Lcom/samsung/android/support/sesl/core/util/SeslArraySet;->mSize:I

    if-eqz v0, :cond_2

    iget-object v4, p0, Lcom/samsung/android/support/sesl/core/util/SeslArraySet;->mHashes:[I

    invoke-static {v4, v0, v5}, Lcom/samsung/android/support/sesl/core/util/SeslContainerHelpers;->binarySearch([III)I

    move-result v3

    if-ltz v3, :cond_3

    iget-object v4, p0, Lcom/samsung/android/support/sesl/core/util/SeslArraySet;->mArray:[Ljava/lang/Object;

    aget-object v4, v4, v3

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
    iget-object v4, p0, Lcom/samsung/android/support/sesl/core/util/SeslArraySet;->mHashes:[I

    aget v4, v4, v1

    if-nez v4, :cond_0

    iget-object v4, p0, Lcom/samsung/android/support/sesl/core/util/SeslArraySet;->mArray:[Ljava/lang/Object;

    aget-object v4, v4, v1

    if-eqz v4, :cond_6

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_6
    return v1

    :cond_7
    iget-object v4, p0, Lcom/samsung/android/support/sesl/core/util/SeslArraySet;->mHashes:[I

    aget v4, v4, v2

    if-nez v4, :cond_1

    iget-object v4, p0, Lcom/samsung/android/support/sesl/core/util/SeslArraySet;->mArray:[Ljava/lang/Object;

    aget-object v4, v4, v2

    if-eqz v4, :cond_8

    add-int/lit8 v2, v2, -0x1

    goto :goto_1

    :cond_8
    return v2
.end method


# virtual methods
.method public add(Ljava/lang/Object;)Z
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)Z"
        }
    .end annotation

    const/16 v5, 0x8

    const/4 v2, 0x4

    const/4 v8, 0x0

    if-eqz p1, :cond_0

    iget-boolean v6, p0, Lcom/samsung/android/support/sesl/core/util/SeslArraySet;->mIdentityHashCode:Z

    if-nez v6, :cond_1

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v0

    :goto_0
    invoke-direct {p0, p1, v0}, Lcom/samsung/android/support/sesl/core/util/SeslArraySet;->indexOf(Ljava/lang/Object;I)I

    move-result v1

    :goto_1
    if-gez v1, :cond_2

    xor-int/lit8 v1, v1, -0x1

    iget v6, p0, Lcom/samsung/android/support/sesl/core/util/SeslArraySet;->mSize:I

    iget-object v7, p0, Lcom/samsung/android/support/sesl/core/util/SeslArraySet;->mHashes:[I

    array-length v7, v7

    if-ge v6, v7, :cond_3

    :goto_2
    iget v5, p0, Lcom/samsung/android/support/sesl/core/util/SeslArraySet;->mSize:I

    if-lt v1, v5, :cond_7

    :goto_3
    iget-object v5, p0, Lcom/samsung/android/support/sesl/core/util/SeslArraySet;->mHashes:[I

    aput v0, v5, v1

    iget-object v5, p0, Lcom/samsung/android/support/sesl/core/util/SeslArraySet;->mArray:[Ljava/lang/Object;

    aput-object p1, v5, v1

    iget v5, p0, Lcom/samsung/android/support/sesl/core/util/SeslArraySet;->mSize:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Lcom/samsung/android/support/sesl/core/util/SeslArraySet;->mSize:I

    const/4 v5, 0x1

    return v5

    :cond_0
    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/samsung/android/support/sesl/core/util/SeslArraySet;->indexOfNull()I

    move-result v1

    goto :goto_1

    :cond_1
    invoke-static {p1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v0

    goto :goto_0

    :cond_2
    return v8

    :cond_3
    iget v6, p0, Lcom/samsung/android/support/sesl/core/util/SeslArraySet;->mSize:I

    if-ge v6, v5, :cond_4

    iget v6, p0, Lcom/samsung/android/support/sesl/core/util/SeslArraySet;->mSize:I

    if-ge v6, v2, :cond_5

    :goto_4
    iget-object v4, p0, Lcom/samsung/android/support/sesl/core/util/SeslArraySet;->mHashes:[I

    iget-object v3, p0, Lcom/samsung/android/support/sesl/core/util/SeslArraySet;->mArray:[Ljava/lang/Object;

    invoke-direct {p0, v2}, Lcom/samsung/android/support/sesl/core/util/SeslArraySet;->allocArrays(I)V

    iget-object v5, p0, Lcom/samsung/android/support/sesl/core/util/SeslArraySet;->mHashes:[I

    array-length v5, v5

    if-gtz v5, :cond_6

    :goto_5
    iget v5, p0, Lcom/samsung/android/support/sesl/core/util/SeslArraySet;->mSize:I

    invoke-static {v4, v3, v5}, Lcom/samsung/android/support/sesl/core/util/SeslArraySet;->freeArrays([I[Ljava/lang/Object;I)V

    goto :goto_2

    :cond_4
    iget v5, p0, Lcom/samsung/android/support/sesl/core/util/SeslArraySet;->mSize:I

    iget v6, p0, Lcom/samsung/android/support/sesl/core/util/SeslArraySet;->mSize:I

    shr-int/lit8 v6, v6, 0x1

    add-int v2, v5, v6

    goto :goto_4

    :cond_5
    move v2, v5

    goto :goto_4

    :cond_6
    iget-object v5, p0, Lcom/samsung/android/support/sesl/core/util/SeslArraySet;->mHashes:[I

    array-length v6, v4

    invoke-static {v4, v8, v5, v8, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v5, p0, Lcom/samsung/android/support/sesl/core/util/SeslArraySet;->mArray:[Ljava/lang/Object;

    array-length v6, v3

    invoke-static {v3, v8, v5, v8, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_5

    :cond_7
    iget-object v5, p0, Lcom/samsung/android/support/sesl/core/util/SeslArraySet;->mHashes:[I

    iget-object v6, p0, Lcom/samsung/android/support/sesl/core/util/SeslArraySet;->mHashes:[I

    add-int/lit8 v7, v1, 0x1

    iget v8, p0, Lcom/samsung/android/support/sesl/core/util/SeslArraySet;->mSize:I

    sub-int/2addr v8, v1

    invoke-static {v5, v1, v6, v7, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v5, p0, Lcom/samsung/android/support/sesl/core/util/SeslArraySet;->mArray:[Ljava/lang/Object;

    iget-object v6, p0, Lcom/samsung/android/support/sesl/core/util/SeslArraySet;->mArray:[Ljava/lang/Object;

    add-int/lit8 v7, v1, 0x1

    iget v8, p0, Lcom/samsung/android/support/sesl/core/util/SeslArraySet;->mSize:I

    sub-int/2addr v8, v1

    invoke-static {v5, v1, v6, v7, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_3
.end method

.method public addAll(Ljava/util/Collection;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<+TE;>;)Z"
        }
    .end annotation

    iget v3, p0, Lcom/samsung/android/support/sesl/core/util/SeslArraySet;->mSize:I

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v4

    add-int/2addr v3, v4

    invoke-virtual {p0, v3}, Lcom/samsung/android/support/sesl/core/util/SeslArraySet;->ensureCapacity(I)V

    const/4 v1, 0x0

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_0

    return v1

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/samsung/android/support/sesl/core/util/SeslArraySet;->add(Ljava/lang/Object;)Z

    move-result v3

    or-int/2addr v1, v3

    goto :goto_0
.end method

.method public clear()V
    .locals 4

    const/4 v3, 0x0

    iget v0, p0, Lcom/samsung/android/support/sesl/core/util/SeslArraySet;->mSize:I

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/util/SeslArraySet;->mHashes:[I

    iget-object v1, p0, Lcom/samsung/android/support/sesl/core/util/SeslArraySet;->mArray:[Ljava/lang/Object;

    iget v2, p0, Lcom/samsung/android/support/sesl/core/util/SeslArraySet;->mSize:I

    invoke-static {v0, v1, v2}, Lcom/samsung/android/support/sesl/core/util/SeslArraySet;->freeArrays([I[Ljava/lang/Object;I)V

    sget-object v0, Lcom/samsung/android/support/sesl/core/util/SeslArraySet;->INT:[I

    iput-object v0, p0, Lcom/samsung/android/support/sesl/core/util/SeslArraySet;->mHashes:[I

    sget-object v0, Lcom/samsung/android/support/sesl/core/util/SeslArraySet;->OBJECT:[Ljava/lang/Object;

    iput-object v0, p0, Lcom/samsung/android/support/sesl/core/util/SeslArraySet;->mArray:[Ljava/lang/Object;

    iput v3, p0, Lcom/samsung/android/support/sesl/core/util/SeslArraySet;->mSize:I

    goto :goto_0
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 2

    const/4 v0, 0x0

    invoke-virtual {p0, p1}, Lcom/samsung/android/support/sesl/core/util/SeslArraySet;->indexOf(Ljava/lang/Object;)I

    move-result v1

    if-gez v1, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public containsAll(Ljava/util/Collection;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<*>;)Z"
        }
    .end annotation

    const/4 v2, 0x0

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_1

    const/4 v1, 0x1

    return v1

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/samsung/android/support/sesl/core/util/SeslArraySet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    return v2
.end method

.method public ensureCapacity(I)V
    .locals 5

    const/4 v4, 0x0

    iget-object v2, p0, Lcom/samsung/android/support/sesl/core/util/SeslArraySet;->mHashes:[I

    array-length v2, v2

    if-lt v2, p1, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lcom/samsung/android/support/sesl/core/util/SeslArraySet;->mHashes:[I

    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/util/SeslArraySet;->mArray:[Ljava/lang/Object;

    invoke-direct {p0, p1}, Lcom/samsung/android/support/sesl/core/util/SeslArraySet;->allocArrays(I)V

    iget v2, p0, Lcom/samsung/android/support/sesl/core/util/SeslArraySet;->mSize:I

    if-gtz v2, :cond_1

    :goto_1
    iget v2, p0, Lcom/samsung/android/support/sesl/core/util/SeslArraySet;->mSize:I

    invoke-static {v1, v0, v2}, Lcom/samsung/android/support/sesl/core/util/SeslArraySet;->freeArrays([I[Ljava/lang/Object;I)V

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lcom/samsung/android/support/sesl/core/util/SeslArraySet;->mHashes:[I

    iget v3, p0, Lcom/samsung/android/support/sesl/core/util/SeslArraySet;->mSize:I

    invoke-static {v1, v4, v2, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v2, p0, Lcom/samsung/android/support/sesl/core/util/SeslArraySet;->mArray:[Ljava/lang/Object;

    iget v3, p0, Lcom/samsung/android/support/sesl/core/util/SeslArraySet;->mSize:I

    invoke-static {v0, v4, v2, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 9

    const/4 v8, 0x1

    const/4 v7, 0x0

    if-eq p0, p1, :cond_0

    instance-of v5, p1, Ljava/util/Set;

    if-nez v5, :cond_1

    return v7

    :cond_0
    return v8

    :cond_1
    move-object v4, p1

    check-cast v4, Ljava/util/Set;

    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/core/util/SeslArraySet;->size()I

    move-result v5

    invoke-interface {v4}, Ljava/util/Set;->size()I

    move-result v6

    if-ne v5, v6, :cond_2

    const/4 v0, 0x0

    :goto_0
    :try_start_0
    iget v5, p0, Lcom/samsung/android/support/sesl/core/util/SeslArraySet;->mSize:I

    if-lt v0, v5, :cond_3

    return v8

    :cond_2
    return v7

    :cond_3
    invoke-virtual {p0, v0}, Lcom/samsung/android/support/sesl/core/util/SeslArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v4, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v5

    if-eqz v5, :cond_4

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_4
    return v7

    :catch_0
    move-exception v2

    return v7

    :catch_1
    move-exception v1

    return v7
.end method

.method public hashCode()I
    .locals 5

    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/util/SeslArraySet;->mHashes:[I

    const/4 v2, 0x0

    const/4 v1, 0x0

    iget v3, p0, Lcom/samsung/android/support/sesl/core/util/SeslArraySet;->mSize:I

    :goto_0
    if-lt v1, v3, :cond_0

    return v2

    :cond_0
    aget v4, v0, v1

    add-int/2addr v2, v4

    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public indexOf(Ljava/lang/Object;)I
    .locals 1

    if-eqz p1, :cond_0

    iget-boolean v0, p0, Lcom/samsung/android/support/sesl/core/util/SeslArraySet;->mIdentityHashCode:Z

    if-nez v0, :cond_1

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v0

    :goto_0
    invoke-direct {p0, p1, v0}, Lcom/samsung/android/support/sesl/core/util/SeslArraySet;->indexOf(Ljava/lang/Object;I)I

    move-result v0

    :goto_1
    return v0

    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/support/sesl/core/util/SeslArraySet;->indexOfNull()I

    move-result v0

    goto :goto_1

    :cond_1
    invoke-static {p1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v0

    goto :goto_0
.end method

.method public isEmpty()Z
    .locals 2

    const/4 v0, 0x0

    iget v1, p0, Lcom/samsung/android/support/sesl/core/util/SeslArraySet;->mSize:I

    if-lez v1, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<TE;>;"
        }
    .end annotation

    invoke-direct {p0}, Lcom/samsung/android/support/sesl/core/util/SeslArraySet;->getCollection()Lcom/samsung/android/support/sesl/core/util/SeslMapCollections;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/support/sesl/core/util/SeslMapCollections;->getKeySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 2

    const/4 v1, 0x0

    invoke-virtual {p0, p1}, Lcom/samsung/android/support/sesl/core/util/SeslArraySet;->indexOf(Ljava/lang/Object;)I

    move-result v0

    if-gez v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {p0, v0}, Lcom/samsung/android/support/sesl/core/util/SeslArraySet;->removeAt(I)Ljava/lang/Object;

    const/4 v1, 0x1

    return v1
.end method

.method public removeAll(Ljava/util/Collection;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<*>;)Z"
        }
    .end annotation

    const/4 v1, 0x0

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_0

    return v1

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/samsung/android/support/sesl/core/util/SeslArraySet;->remove(Ljava/lang/Object;)Z

    move-result v3

    or-int/2addr v1, v3

    goto :goto_0
.end method

.method public removeAt(I)Ljava/lang/Object;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TE;"
        }
    .end annotation

    const/16 v0, 0x8

    const/4 v7, 0x0

    iget-object v4, p0, Lcom/samsung/android/support/sesl/core/util/SeslArraySet;->mArray:[Ljava/lang/Object;

    aget-object v3, v4, p1

    iget v4, p0, Lcom/samsung/android/support/sesl/core/util/SeslArraySet;->mSize:I

    const/4 v5, 0x1

    if-le v4, v5, :cond_2

    iget-object v4, p0, Lcom/samsung/android/support/sesl/core/util/SeslArraySet;->mHashes:[I

    array-length v4, v4

    if-gt v4, v0, :cond_3

    :cond_0
    iget v4, p0, Lcom/samsung/android/support/sesl/core/util/SeslArraySet;->mSize:I

    add-int/lit8 v4, v4, -0x1

    iput v4, p0, Lcom/samsung/android/support/sesl/core/util/SeslArraySet;->mSize:I

    iget v4, p0, Lcom/samsung/android/support/sesl/core/util/SeslArraySet;->mSize:I

    if-lt p1, v4, :cond_6

    :goto_0
    iget-object v4, p0, Lcom/samsung/android/support/sesl/core/util/SeslArraySet;->mArray:[Ljava/lang/Object;

    iget v5, p0, Lcom/samsung/android/support/sesl/core/util/SeslArraySet;->mSize:I

    const/4 v6, 0x0

    aput-object v6, v4, v5

    :cond_1
    :goto_1
    return-object v3

    :cond_2
    iget-object v4, p0, Lcom/samsung/android/support/sesl/core/util/SeslArraySet;->mHashes:[I

    iget-object v5, p0, Lcom/samsung/android/support/sesl/core/util/SeslArraySet;->mArray:[Ljava/lang/Object;

    iget v6, p0, Lcom/samsung/android/support/sesl/core/util/SeslArraySet;->mSize:I

    invoke-static {v4, v5, v6}, Lcom/samsung/android/support/sesl/core/util/SeslArraySet;->freeArrays([I[Ljava/lang/Object;I)V

    sget-object v4, Lcom/samsung/android/support/sesl/core/util/SeslArraySet;->INT:[I

    iput-object v4, p0, Lcom/samsung/android/support/sesl/core/util/SeslArraySet;->mHashes:[I

    sget-object v4, Lcom/samsung/android/support/sesl/core/util/SeslArraySet;->OBJECT:[Ljava/lang/Object;

    iput-object v4, p0, Lcom/samsung/android/support/sesl/core/util/SeslArraySet;->mArray:[Ljava/lang/Object;

    iput v7, p0, Lcom/samsung/android/support/sesl/core/util/SeslArraySet;->mSize:I

    goto :goto_1

    :cond_3
    iget v4, p0, Lcom/samsung/android/support/sesl/core/util/SeslArraySet;->mSize:I

    iget-object v5, p0, Lcom/samsung/android/support/sesl/core/util/SeslArraySet;->mHashes:[I

    array-length v5, v5

    div-int/lit8 v5, v5, 0x3

    if-ge v4, v5, :cond_0

    iget v4, p0, Lcom/samsung/android/support/sesl/core/util/SeslArraySet;->mSize:I

    if-gt v4, v0, :cond_4

    :goto_2
    iget-object v2, p0, Lcom/samsung/android/support/sesl/core/util/SeslArraySet;->mHashes:[I

    iget-object v1, p0, Lcom/samsung/android/support/sesl/core/util/SeslArraySet;->mArray:[Ljava/lang/Object;

    invoke-direct {p0, v0}, Lcom/samsung/android/support/sesl/core/util/SeslArraySet;->allocArrays(I)V

    iget v4, p0, Lcom/samsung/android/support/sesl/core/util/SeslArraySet;->mSize:I

    add-int/lit8 v4, v4, -0x1

    iput v4, p0, Lcom/samsung/android/support/sesl/core/util/SeslArraySet;->mSize:I

    if-gtz p1, :cond_5

    :goto_3
    iget v4, p0, Lcom/samsung/android/support/sesl/core/util/SeslArraySet;->mSize:I

    if-ge p1, v4, :cond_1

    add-int/lit8 v4, p1, 0x1

    iget-object v5, p0, Lcom/samsung/android/support/sesl/core/util/SeslArraySet;->mHashes:[I

    iget v6, p0, Lcom/samsung/android/support/sesl/core/util/SeslArraySet;->mSize:I

    sub-int/2addr v6, p1

    invoke-static {v2, v4, v5, p1, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v4, p1, 0x1

    iget-object v5, p0, Lcom/samsung/android/support/sesl/core/util/SeslArraySet;->mArray:[Ljava/lang/Object;

    iget v6, p0, Lcom/samsung/android/support/sesl/core/util/SeslArraySet;->mSize:I

    sub-int/2addr v6, p1

    invoke-static {v1, v4, v5, p1, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_1

    :cond_4
    iget v4, p0, Lcom/samsung/android/support/sesl/core/util/SeslArraySet;->mSize:I

    iget v5, p0, Lcom/samsung/android/support/sesl/core/util/SeslArraySet;->mSize:I

    shr-int/lit8 v5, v5, 0x1

    add-int v0, v4, v5

    goto :goto_2

    :cond_5
    iget-object v4, p0, Lcom/samsung/android/support/sesl/core/util/SeslArraySet;->mHashes:[I

    invoke-static {v2, v7, v4, v7, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v4, p0, Lcom/samsung/android/support/sesl/core/util/SeslArraySet;->mArray:[Ljava/lang/Object;

    invoke-static {v1, v7, v4, v7, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_3

    :cond_6
    iget-object v4, p0, Lcom/samsung/android/support/sesl/core/util/SeslArraySet;->mHashes:[I

    add-int/lit8 v5, p1, 0x1

    iget-object v6, p0, Lcom/samsung/android/support/sesl/core/util/SeslArraySet;->mHashes:[I

    iget v7, p0, Lcom/samsung/android/support/sesl/core/util/SeslArraySet;->mSize:I

    sub-int/2addr v7, p1

    invoke-static {v4, v5, v6, p1, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v4, p0, Lcom/samsung/android/support/sesl/core/util/SeslArraySet;->mArray:[Ljava/lang/Object;

    add-int/lit8 v5, p1, 0x1

    iget-object v6, p0, Lcom/samsung/android/support/sesl/core/util/SeslArraySet;->mArray:[Ljava/lang/Object;

    iget v7, p0, Lcom/samsung/android/support/sesl/core/util/SeslArraySet;->mSize:I

    sub-int/2addr v7, p1

    invoke-static {v4, v5, v6, p1, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0
.end method

.method public retainAll(Ljava/util/Collection;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<*>;)Z"
        }
    .end annotation

    const/4 v1, 0x0

    iget v2, p0, Lcom/samsung/android/support/sesl/core/util/SeslArraySet;->mSize:I

    add-int/lit8 v0, v2, -0x1

    :goto_0
    if-gez v0, :cond_0

    return v1

    :cond_0
    iget-object v2, p0, Lcom/samsung/android/support/sesl/core/util/SeslArraySet;->mArray:[Ljava/lang/Object;

    aget-object v2, v2, v0

    invoke-interface {p1, v2}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    :goto_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    invoke-virtual {p0, v0}, Lcom/samsung/android/support/sesl/core/util/SeslArraySet;->removeAt(I)Ljava/lang/Object;

    const/4 v1, 0x1

    goto :goto_1
.end method

.method public size()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/support/sesl/core/util/SeslArraySet;->mSize:I

    return v0
.end method

.method public toArray()[Ljava/lang/Object;
    .locals 4

    const/4 v3, 0x0

    iget v1, p0, Lcom/samsung/android/support/sesl/core/util/SeslArraySet;->mSize:I

    new-array v0, v1, [Ljava/lang/Object;

    iget-object v1, p0, Lcom/samsung/android/support/sesl/core/util/SeslArraySet;->mArray:[Ljava/lang/Object;

    iget v2, p0, Lcom/samsung/android/support/sesl/core/util/SeslArraySet;->mSize:I

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v0
.end method

.method public toArray([Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)[TT;"
        }
    .end annotation

    const/4 v3, 0x0

    array-length v1, p1

    iget v2, p0, Lcom/samsung/android/support/sesl/core/util/SeslArraySet;->mSize:I

    if-lt v1, v2, :cond_0

    :goto_0
    iget-object v1, p0, Lcom/samsung/android/support/sesl/core/util/SeslArraySet;->mArray:[Ljava/lang/Object;

    iget v2, p0, Lcom/samsung/android/support/sesl/core/util/SeslArraySet;->mSize:I

    invoke-static {v1, v3, p1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v1, p1

    iget v2, p0, Lcom/samsung/android/support/sesl/core/util/SeslArraySet;->mSize:I

    if-gt v1, v2, :cond_1

    :goto_1
    return-object p1

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v1

    iget v2, p0, Lcom/samsung/android/support/sesl/core/util/SeslArraySet;->mSize:I

    invoke-static {v1, v2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/Object;

    move-object v0, v1

    check-cast v0, [Ljava/lang/Object;

    move-object p1, v0

    goto :goto_0

    :cond_1
    iget v1, p0, Lcom/samsung/android/support/sesl/core/util/SeslArraySet;->mSize:I

    const/4 v2, 0x0

    aput-object v2, p1, v1

    goto :goto_1
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/core/util/SeslArraySet;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/samsung/android/support/sesl/core/util/SeslArraySet;->mSize:I

    mul-int/lit8 v3, v3, 0xe

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const/16 v3, 0x7b

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    :goto_0
    iget v3, p0, Lcom/samsung/android/support/sesl/core/util/SeslArraySet;->mSize:I

    if-lt v1, v3, :cond_1

    const/16 v3, 0x7d

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3

    :cond_0
    const-string/jumbo v3, "{}"

    return-object v3

    :cond_1
    if-gtz v1, :cond_2

    :goto_1
    invoke-virtual {p0, v1}, Lcom/samsung/android/support/sesl/core/util/SeslArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, p0, :cond_3

    const-string/jumbo v3, "(this Set)"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    const-string/jumbo v3, ", "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_3
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_2
.end method

.method public valueAt(I)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TE;"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/util/SeslArraySet;->mArray:[Ljava/lang/Object;

    aget-object v0, v0, p1

    return-object v0
.end method
