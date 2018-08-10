.class public final Landroid/util/ArrayMap;
.super Ljava/lang/Object;
.source "ArrayMap.java"

# interfaces
.implements Ljava/util/Map;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/Map",
        "<TK;TV;>;"
    }
.end annotation


# static fields
.field private static final BASE_SIZE:I = 0x4

.field private static final CACHE_SIZE:I = 0xa

.field private static final CONCURRENT_MODIFICATION_EXCEPTIONS:Z = true

.field private static final DEBUG:Z = false

.field public static final EMPTY:Landroid/util/ArrayMap;

.field static final EMPTY_IMMUTABLE_INTS:[I

.field private static final TAG:Ljava/lang/String; = "ArrayMap"

.field static mBaseCache:[Ljava/lang/Object;

.field static mBaseCacheSize:I

.field static mTwiceBaseCache:[Ljava/lang/Object;

.field static mTwiceBaseCacheSize:I


# instance fields
.field mArray:[Ljava/lang/Object;

.field mCollections:Landroid/util/MapCollections;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/MapCollections",
            "<TK;TV;>;"
        }
    .end annotation
.end field

.field mHashes:[I

.field final mIdentityHashCode:Z

.field mSize:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v0, 0x0

    new-array v0, v0, [I

    sput-object v0, Landroid/util/ArrayMap;->EMPTY_IMMUTABLE_INTS:[I

    new-instance v0, Landroid/util/ArrayMap;

    const/4 v1, -0x1

    invoke-direct {v0, v1}, Landroid/util/ArrayMap;-><init>(I)V

    sput-object v0, Landroid/util/ArrayMap;->EMPTY:Landroid/util/ArrayMap;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0, v0}, Landroid/util/ArrayMap;-><init>(IZ)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/util/ArrayMap;-><init>(IZ)V

    return-void
.end method

.method public constructor <init>(IZ)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p2, p0, Landroid/util/ArrayMap;->mIdentityHashCode:Z

    if-gez p1, :cond_0

    sget-object v0, Landroid/util/ArrayMap;->EMPTY_IMMUTABLE_INTS:[I

    iput-object v0, p0, Landroid/util/ArrayMap;->mHashes:[I

    sget-object v0, Llibcore/util/EmptyArray;->OBJECT:[Ljava/lang/Object;

    iput-object v0, p0, Landroid/util/ArrayMap;->mArray:[Ljava/lang/Object;

    :goto_0
    iput v1, p0, Landroid/util/ArrayMap;->mSize:I

    return-void

    :cond_0
    if-nez p1, :cond_1

    sget-object v0, Llibcore/util/EmptyArray;->INT:[I

    iput-object v0, p0, Landroid/util/ArrayMap;->mHashes:[I

    sget-object v0, Llibcore/util/EmptyArray;->OBJECT:[Ljava/lang/Object;

    iput-object v0, p0, Landroid/util/ArrayMap;->mArray:[Ljava/lang/Object;

    goto :goto_0

    :cond_1
    invoke-direct {p0, p1}, Landroid/util/ArrayMap;->allocArrays(I)V

    goto :goto_0
.end method

.method public constructor <init>(Landroid/util/ArrayMap;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArrayMap",
            "<TK;TV;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Landroid/util/ArrayMap;-><init>()V

    if-eqz p1, :cond_0

    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->putAll(Landroid/util/ArrayMap;)V

    :cond_0
    return-void
.end method

.method private allocArrays(I)V
    .locals 5

    iget-object v2, p0, Landroid/util/ArrayMap;->mHashes:[I

    sget-object v3, Landroid/util/ArrayMap;->EMPTY_IMMUTABLE_INTS:[I

    if-ne v2, v3, :cond_0

    new-instance v2, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v3, "ArrayMap is immutable"

    invoke-direct {v2, v3}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_0
    const/16 v2, 0x8

    if-ne p1, v2, :cond_3

    const-class v3, Landroid/util/ArrayMap;

    monitor-enter v3

    :try_start_0
    sget-object v2, Landroid/util/ArrayMap;->mTwiceBaseCache:[Ljava/lang/Object;

    if-eqz v2, :cond_1

    sget-object v0, Landroid/util/ArrayMap;->mTwiceBaseCache:[Ljava/lang/Object;

    iput-object v0, p0, Landroid/util/ArrayMap;->mArray:[Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v2, 0x0

    :try_start_1
    aget-object v2, v0, v2

    check-cast v2, [Ljava/lang/Object;

    sput-object v2, Landroid/util/ArrayMap;->mTwiceBaseCache:[Ljava/lang/Object;

    const/4 v2, 0x1

    aget-object v2, v0, v2

    check-cast v2, [I

    iput-object v2, p0, Landroid/util/ArrayMap;->mHashes:[I

    const/4 v2, 0x0

    const/4 v4, 0x1

    aput-object v2, v0, v4

    const/4 v2, 0x0

    const/4 v4, 0x0

    aput-object v2, v0, v4

    sget v2, Landroid/util/ArrayMap;->mTwiceBaseCacheSize:I

    add-int/lit8 v2, v2, -0x1

    sput v2, Landroid/util/ArrayMap;->mTwiceBaseCacheSize:I
    :try_end_1
    .catch Ljava/lang/ClassCastException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    monitor-exit v3

    return-void

    :catch_0
    move-exception v1

    :try_start_2
    new-array v2, p1, [I

    iput-object v2, p0, Landroid/util/ArrayMap;->mHashes:[I

    shl-int/lit8 v2, p1, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    iput-object v2, p0, Landroid/util/ArrayMap;->mArray:[Ljava/lang/Object;

    const/4 v2, 0x0

    sput-object v2, Landroid/util/ArrayMap;->mTwiceBaseCache:[Ljava/lang/Object;

    const/4 v2, 0x0

    sput v2, Landroid/util/ArrayMap;->mTwiceBaseCacheSize:I

    const-string/jumbo v2, "ArrayMap"

    const-string/jumbo v4, "ClassCastException occured"

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v1}, Ljava/lang/ClassCastException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2

    :cond_1
    monitor-exit v3

    :cond_2
    new-array v2, p1, [I

    iput-object v2, p0, Landroid/util/ArrayMap;->mHashes:[I

    shl-int/lit8 v2, p1, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    iput-object v2, p0, Landroid/util/ArrayMap;->mArray:[Ljava/lang/Object;

    return-void

    :cond_3
    const/4 v2, 0x4

    if-ne p1, v2, :cond_2

    const-class v3, Landroid/util/ArrayMap;

    monitor-enter v3

    :try_start_3
    sget-object v2, Landroid/util/ArrayMap;->mBaseCache:[Ljava/lang/Object;

    if-eqz v2, :cond_1

    sget-object v0, Landroid/util/ArrayMap;->mBaseCache:[Ljava/lang/Object;

    iput-object v0, p0, Landroid/util/ArrayMap;->mArray:[Ljava/lang/Object;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    const/4 v2, 0x0

    :try_start_4
    aget-object v2, v0, v2

    check-cast v2, [Ljava/lang/Object;

    sput-object v2, Landroid/util/ArrayMap;->mBaseCache:[Ljava/lang/Object;

    const/4 v2, 0x1

    aget-object v2, v0, v2

    check-cast v2, [I

    iput-object v2, p0, Landroid/util/ArrayMap;->mHashes:[I

    const/4 v2, 0x0

    const/4 v4, 0x1

    aput-object v2, v0, v4

    const/4 v2, 0x0

    const/4 v4, 0x0

    aput-object v2, v0, v4

    sget v2, Landroid/util/ArrayMap;->mBaseCacheSize:I

    add-int/lit8 v2, v2, -0x1

    sput v2, Landroid/util/ArrayMap;->mBaseCacheSize:I
    :try_end_4
    .catch Ljava/lang/ClassCastException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :goto_1
    monitor-exit v3

    return-void

    :catch_1
    move-exception v1

    :try_start_5
    new-array v2, p1, [I

    iput-object v2, p0, Landroid/util/ArrayMap;->mHashes:[I

    shl-int/lit8 v2, p1, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    iput-object v2, p0, Landroid/util/ArrayMap;->mArray:[Ljava/lang/Object;

    const/4 v2, 0x0

    sput-object v2, Landroid/util/ArrayMap;->mBaseCache:[Ljava/lang/Object;

    const/4 v2, 0x0

    sput v2, Landroid/util/ArrayMap;->mBaseCacheSize:I

    const-string/jumbo v2, "ArrayMap"

    const-string/jumbo v4, "ClassCastException occured"

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v1}, Ljava/lang/ClassCastException;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.method private static binarySearchHashes([III)I
    .locals 2

    :try_start_0
    invoke-static {p0, p1, p2}, Landroid/util/ContainerHelpers;->binarySearch([III)I
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
    .locals 5

    const/16 v3, 0xa

    const/4 v4, 0x2

    array-length v1, p0

    const/16 v2, 0x8

    if-ne v1, v2, :cond_3

    const-class v2, Landroid/util/ArrayMap;

    monitor-enter v2

    :try_start_0
    sget v1, Landroid/util/ArrayMap;->mTwiceBaseCacheSize:I

    if-ge v1, v3, :cond_1

    sget-object v1, Landroid/util/ArrayMap;->mTwiceBaseCache:[Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v1, p1, v3

    const/4 v1, 0x1

    aput-object p0, p1, v1

    shl-int/lit8 v1, p2, 0x1

    add-int/lit8 v0, v1, -0x1

    :goto_0
    if-lt v0, v4, :cond_0

    const/4 v1, 0x0

    aput-object v1, p1, v0

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    sput-object p1, Landroid/util/ArrayMap;->mTwiceBaseCache:[Ljava/lang/Object;

    sget v1, Landroid/util/ArrayMap;->mTwiceBaseCacheSize:I

    add-int/lit8 v1, v1, 0x1

    sput v1, Landroid/util/ArrayMap;->mTwiceBaseCacheSize:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    :goto_1
    monitor-exit v2

    :cond_2
    return-void

    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1

    :cond_3
    array-length v1, p0

    const/4 v2, 0x4

    if-ne v1, v2, :cond_2

    const-class v2, Landroid/util/ArrayMap;

    monitor-enter v2

    :try_start_1
    sget v1, Landroid/util/ArrayMap;->mBaseCacheSize:I

    if-ge v1, v3, :cond_1

    sget-object v1, Landroid/util/ArrayMap;->mBaseCache:[Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v1, p1, v3

    const/4 v1, 0x1

    aput-object p0, p1, v1

    shl-int/lit8 v1, p2, 0x1

    add-int/lit8 v0, v1, -0x1

    :goto_2
    if-lt v0, v4, :cond_4

    const/4 v1, 0x0

    aput-object v1, p1, v0

    add-int/lit8 v0, v0, -0x1

    goto :goto_2

    :cond_4
    sput-object p1, Landroid/util/ArrayMap;->mBaseCache:[Ljava/lang/Object;

    sget v1, Landroid/util/ArrayMap;->mBaseCacheSize:I

    add-int/lit8 v1, v1, 0x1

    sput v1, Landroid/util/ArrayMap;->mBaseCacheSize:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method private getCollection()Landroid/util/MapCollections;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/MapCollections",
            "<TK;TV;>;"
        }
    .end annotation

    iget-object v0, p0, Landroid/util/ArrayMap;->mCollections:Landroid/util/MapCollections;

    if-nez v0, :cond_0

    new-instance v0, Landroid/util/ArrayMap$1;

    invoke-direct {v0, p0}, Landroid/util/ArrayMap$1;-><init>(Landroid/util/ArrayMap;)V

    iput-object v0, p0, Landroid/util/ArrayMap;->mCollections:Landroid/util/MapCollections;

    :cond_0
    iget-object v0, p0, Landroid/util/ArrayMap;->mCollections:Landroid/util/MapCollections;

    return-object v0
.end method


# virtual methods
.method public append(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)V"
        }
    .end annotation

    iget v2, p0, Landroid/util/ArrayMap;->mSize:I

    if-nez p1, :cond_0

    const/4 v1, 0x0

    :goto_0
    iget-object v3, p0, Landroid/util/ArrayMap;->mHashes:[I

    array-length v3, v3

    if-lt v2, v3, :cond_2

    new-instance v3, Ljava/lang/IllegalStateException;

    const-string/jumbo v4, "Array is full"

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_0
    iget-boolean v3, p0, Landroid/util/ArrayMap;->mIdentityHashCode:Z

    if-eqz v3, :cond_1

    invoke-static {p1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    goto :goto_0

    :cond_2
    if-lez v2, :cond_3

    iget-object v3, p0, Landroid/util/ArrayMap;->mHashes:[I

    add-int/lit8 v4, v2, -0x1

    aget v3, v3, v4

    if-le v3, v1, :cond_3

    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v3, "here"

    invoke-direct {v0, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/RuntimeException;->fillInStackTrace()Ljava/lang/Throwable;

    const-string/jumbo v3, "ArrayMap"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "New hash "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " is before end of array hash "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Landroid/util/ArrayMap;->mHashes:[I

    add-int/lit8 v6, v2, -0x1

    aget v5, v5, v6

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " at index "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " key "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    invoke-virtual {p0, p1, p2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :cond_3
    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Landroid/util/ArrayMap;->mSize:I

    iget-object v3, p0, Landroid/util/ArrayMap;->mHashes:[I

    aput v1, v3, v2

    shl-int/lit8 v2, v2, 0x1

    iget-object v3, p0, Landroid/util/ArrayMap;->mArray:[Ljava/lang/Object;

    aput-object p1, v3, v2

    iget-object v3, p0, Landroid/util/ArrayMap;->mArray:[Ljava/lang/Object;

    add-int/lit8 v4, v2, 0x1

    aput-object p2, v3, v4

    return-void
.end method

.method public clear()V
    .locals 5

    const/4 v4, 0x0

    iget v3, p0, Landroid/util/ArrayMap;->mSize:I

    if-lez v3, :cond_0

    iget-object v1, p0, Landroid/util/ArrayMap;->mHashes:[I

    iget-object v0, p0, Landroid/util/ArrayMap;->mArray:[Ljava/lang/Object;

    iget v2, p0, Landroid/util/ArrayMap;->mSize:I

    sget-object v3, Llibcore/util/EmptyArray;->INT:[I

    iput-object v3, p0, Landroid/util/ArrayMap;->mHashes:[I

    sget-object v3, Llibcore/util/EmptyArray;->OBJECT:[Ljava/lang/Object;

    iput-object v3, p0, Landroid/util/ArrayMap;->mArray:[Ljava/lang/Object;

    iput v4, p0, Landroid/util/ArrayMap;->mSize:I

    invoke-static {v1, v0, v2}, Landroid/util/ArrayMap;->freeArrays([I[Ljava/lang/Object;I)V

    :cond_0
    iget v3, p0, Landroid/util/ArrayMap;->mSize:I

    if-lez v3, :cond_1

    new-instance v3, Ljava/util/ConcurrentModificationException;

    invoke-direct {v3}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v3

    :cond_1
    return-void
.end method

.method public containsAll(Ljava/util/Collection;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<*>;)Z"
        }
    .end annotation

    invoke-static {p0, p1}, Landroid/util/MapCollections;->containsAllHelper(Ljava/util/Map;Ljava/util/Collection;)Z

    move-result v0

    return v0
.end method

.method public containsKey(Ljava/lang/Object;)Z
    .locals 2

    const/4 v0, 0x0

    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->indexOfKey(Ljava/lang/Object;)I

    move-result v1

    if-ltz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public containsValue(Ljava/lang/Object;)Z
    .locals 2

    const/4 v0, 0x0

    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->indexOfValue(Ljava/lang/Object;)I

    move-result v1

    if-ltz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public ensureCapacity(I)V
    .locals 6

    const/4 v5, 0x0

    iget v2, p0, Landroid/util/ArrayMap;->mSize:I

    iget-object v3, p0, Landroid/util/ArrayMap;->mHashes:[I

    array-length v3, v3

    if-ge v3, p1, :cond_1

    iget-object v1, p0, Landroid/util/ArrayMap;->mHashes:[I

    iget-object v0, p0, Landroid/util/ArrayMap;->mArray:[Ljava/lang/Object;

    invoke-direct {p0, p1}, Landroid/util/ArrayMap;->allocArrays(I)V

    iget v3, p0, Landroid/util/ArrayMap;->mSize:I

    if-lez v3, :cond_0

    iget-object v3, p0, Landroid/util/ArrayMap;->mHashes:[I

    invoke-static {v1, v5, v3, v5, v2}, Ljava/lang/System;->arraycopy([II[III)V

    iget-object v3, p0, Landroid/util/ArrayMap;->mArray:[Ljava/lang/Object;

    shl-int/lit8 v4, v2, 0x1

    invoke-static {v0, v5, v3, v5, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_0
    invoke-static {v1, v0, v2}, Landroid/util/ArrayMap;->freeArrays([I[Ljava/lang/Object;I)V

    :cond_1
    iget v3, p0, Landroid/util/ArrayMap;->mSize:I

    if-eq v3, v2, :cond_2

    new-instance v3, Ljava/util/ConcurrentModificationException;

    invoke-direct {v3}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v3

    :cond_2
    return-void
.end method

.method public entrySet()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;>;"
        }
    .end annotation

    invoke-direct {p0}, Landroid/util/ArrayMap;->getCollection()Landroid/util/MapCollections;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/MapCollections;->getEntrySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 11

    const/4 v10, 0x1

    const/4 v9, 0x0

    if-ne p0, p1, :cond_0

    return v10

    :cond_0
    instance-of v7, p1, Ljava/util/Map;

    if-eqz v7, :cond_6

    move-object v4, p1

    check-cast v4, Ljava/util/Map;

    invoke-virtual {p0}, Landroid/util/ArrayMap;->size()I

    move-result v7

    invoke-interface {v4}, Ljava/util/Map;->size()I

    move-result v8

    if-eq v7, v8, :cond_1

    return v9

    :cond_1
    const/4 v0, 0x0

    :goto_0
    :try_start_0
    iget v7, p0, Landroid/util/ArrayMap;->mSize:I

    if-ge v0, v7, :cond_5

    invoke-virtual {p0, v0}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p0, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v4, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    if-nez v5, :cond_3

    if-nez v6, :cond_2

    invoke-interface {v4, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    xor-int/lit8 v7, v7, 0x1

    if-eqz v7, :cond_4

    :cond_2
    return v9

    :cond_3
    invoke-virtual {v5, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v7

    if-nez v7, :cond_4

    return v9

    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :catch_0
    move-exception v1

    return v9

    :catch_1
    move-exception v2

    return v9

    :cond_5
    return v10

    :cond_6
    return v9
.end method

.method public erase()V
    .locals 5

    const/4 v4, 0x0

    iget v3, p0, Landroid/util/ArrayMap;->mSize:I

    if-lez v3, :cond_1

    iget v3, p0, Landroid/util/ArrayMap;->mSize:I

    shl-int/lit8 v0, v3, 0x1

    iget-object v1, p0, Landroid/util/ArrayMap;->mArray:[Ljava/lang/Object;

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    const/4 v3, 0x0

    aput-object v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    iput v4, p0, Landroid/util/ArrayMap;->mSize:I

    :cond_1
    return-void
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

    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->indexOfKey(Ljava/lang/Object;)I

    move-result v0

    if-ltz v0, :cond_0

    iget-object v1, p0, Landroid/util/ArrayMap;->mArray:[Ljava/lang/Object;

    shl-int/lit8 v2, v0, 0x1

    add-int/lit8 v2, v2, 0x1

    aget-object v1, v1, v2

    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public hashCode()I
    .locals 9

    iget-object v1, p0, Landroid/util/ArrayMap;->mHashes:[I

    iget-object v0, p0, Landroid/util/ArrayMap;->mArray:[Ljava/lang/Object;

    const/4 v3, 0x0

    const/4 v2, 0x0

    const/4 v5, 0x1

    iget v4, p0, Landroid/util/ArrayMap;->mSize:I

    :goto_0
    if-ge v2, v4, :cond_1

    aget-object v6, v0, v5

    aget v8, v1, v2

    if-nez v6, :cond_0

    const/4 v7, 0x0

    :goto_1
    xor-int/2addr v7, v8

    add-int/2addr v3, v7

    add-int/lit8 v2, v2, 0x1

    add-int/lit8 v5, v5, 0x2

    goto :goto_0

    :cond_0
    invoke-virtual {v6}, Ljava/lang/Object;->hashCode()I

    move-result v7

    goto :goto_1

    :cond_1
    return v3
.end method

.method indexOf(Ljava/lang/Object;I)I
    .locals 6

    iget v0, p0, Landroid/util/ArrayMap;->mSize:I

    if-nez v0, :cond_0

    const/4 v4, -0x1

    return v4

    :cond_0
    iget-object v4, p0, Landroid/util/ArrayMap;->mHashes:[I

    invoke-static {v4, v0, p2}, Landroid/util/ArrayMap;->binarySearchHashes([III)I

    move-result v3

    if-gez v3, :cond_1

    return v3

    :cond_1
    iget-object v4, p0, Landroid/util/ArrayMap;->mArray:[Ljava/lang/Object;

    shl-int/lit8 v5, v3, 0x1

    aget-object v4, v4, v5

    invoke-virtual {p1, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    return v3

    :cond_2
    add-int/lit8 v1, v3, 0x1

    :goto_0
    if-ge v1, v0, :cond_4

    iget-object v4, p0, Landroid/util/ArrayMap;->mHashes:[I

    aget v4, v4, v1

    if-ne v4, p2, :cond_4

    iget-object v4, p0, Landroid/util/ArrayMap;->mArray:[Ljava/lang/Object;

    shl-int/lit8 v5, v1, 0x1

    aget-object v4, v4, v5

    invoke-virtual {p1, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    return v1

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_4
    add-int/lit8 v2, v3, -0x1

    :goto_1
    if-ltz v2, :cond_6

    iget-object v4, p0, Landroid/util/ArrayMap;->mHashes:[I

    aget v4, v4, v2

    if-ne v4, p2, :cond_6

    iget-object v4, p0, Landroid/util/ArrayMap;->mArray:[Ljava/lang/Object;

    shl-int/lit8 v5, v2, 0x1

    aget-object v4, v4, v5

    invoke-virtual {p1, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    return v2

    :cond_5
    add-int/lit8 v2, v2, -0x1

    goto :goto_1

    :cond_6
    not-int v4, v1

    return v4
.end method

.method public indexOfKey(Ljava/lang/Object;)I
    .locals 1

    if-nez p1, :cond_0

    invoke-virtual {p0}, Landroid/util/ArrayMap;->indexOfNull()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    iget-boolean v0, p0, Landroid/util/ArrayMap;->mIdentityHashCode:Z

    if-eqz v0, :cond_1

    invoke-static {p1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v0

    :goto_1
    invoke-virtual {p0, p1, v0}, Landroid/util/ArrayMap;->indexOf(Ljava/lang/Object;I)I

    move-result v0

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_1
.end method

.method indexOfNull()I
    .locals 6

    const/4 v5, 0x0

    iget v0, p0, Landroid/util/ArrayMap;->mSize:I

    if-nez v0, :cond_0

    const/4 v4, -0x1

    return v4

    :cond_0
    iget-object v4, p0, Landroid/util/ArrayMap;->mHashes:[I

    invoke-static {v4, v0, v5}, Landroid/util/ArrayMap;->binarySearchHashes([III)I

    move-result v3

    if-gez v3, :cond_1

    return v3

    :cond_1
    iget-object v4, p0, Landroid/util/ArrayMap;->mArray:[Ljava/lang/Object;

    shl-int/lit8 v5, v3, 0x1

    aget-object v4, v4, v5

    if-nez v4, :cond_2

    return v3

    :cond_2
    add-int/lit8 v1, v3, 0x1

    :goto_0
    if-ge v1, v0, :cond_4

    iget-object v4, p0, Landroid/util/ArrayMap;->mHashes:[I

    aget v4, v4, v1

    if-nez v4, :cond_4

    iget-object v4, p0, Landroid/util/ArrayMap;->mArray:[Ljava/lang/Object;

    shl-int/lit8 v5, v1, 0x1

    aget-object v4, v4, v5

    if-nez v4, :cond_3

    return v1

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_4
    add-int/lit8 v2, v3, -0x1

    :goto_1
    if-ltz v2, :cond_6

    iget-object v4, p0, Landroid/util/ArrayMap;->mHashes:[I

    aget v4, v4, v2

    if-nez v4, :cond_6

    iget-object v4, p0, Landroid/util/ArrayMap;->mArray:[Ljava/lang/Object;

    shl-int/lit8 v5, v2, 0x1

    aget-object v4, v4, v5

    if-nez v4, :cond_5

    return v2

    :cond_5
    add-int/lit8 v2, v2, -0x1

    goto :goto_1

    :cond_6
    not-int v4, v1

    return v4
.end method

.method indexOfValue(Ljava/lang/Object;)I
    .locals 4

    iget v3, p0, Landroid/util/ArrayMap;->mSize:I

    mul-int/lit8 v0, v3, 0x2

    iget-object v1, p0, Landroid/util/ArrayMap;->mArray:[Ljava/lang/Object;

    if-nez p1, :cond_1

    const/4 v2, 0x1

    :goto_0
    if-ge v2, v0, :cond_3

    aget-object v3, v1, v2

    if-nez v3, :cond_0

    shr-int/lit8 v3, v2, 0x1

    return v3

    :cond_0
    add-int/lit8 v2, v2, 0x2

    goto :goto_0

    :cond_1
    const/4 v2, 0x1

    :goto_1
    if-ge v2, v0, :cond_3

    aget-object v3, v1, v2

    invoke-virtual {p1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    shr-int/lit8 v3, v2, 0x1

    return v3

    :cond_2
    add-int/lit8 v2, v2, 0x2

    goto :goto_1

    :cond_3
    const/4 v3, -0x1

    return v3
.end method

.method public isEmpty()Z
    .locals 2

    const/4 v0, 0x0

    iget v1, p0, Landroid/util/ArrayMap;->mSize:I

    if-gtz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public keyAt(I)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TK;"
        }
    .end annotation

    iget-object v0, p0, Landroid/util/ArrayMap;->mArray:[Ljava/lang/Object;

    shl-int/lit8 v1, p1, 0x1

    aget-object v0, v0, v1

    return-object v0
.end method

.method public keySet()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<TK;>;"
        }
    .end annotation

    invoke-direct {p0}, Landroid/util/ArrayMap;->getCollection()Landroid/util/MapCollections;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/MapCollections;->getKeySet()Ljava/util/Set;

    move-result-object v0

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

    const/4 v9, 0x0

    iget v6, p0, Landroid/util/ArrayMap;->mSize:I

    if-nez p1, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0}, Landroid/util/ArrayMap;->indexOfNull()I

    move-result v1

    :goto_0
    if-ltz v1, :cond_2

    shl-int/lit8 v7, v1, 0x1

    add-int/lit8 v1, v7, 0x1

    iget-object v7, p0, Landroid/util/ArrayMap;->mArray:[Ljava/lang/Object;

    aget-object v5, v7, v1

    iget-object v7, p0, Landroid/util/ArrayMap;->mArray:[Ljava/lang/Object;

    aput-object p2, v7, v1

    return-object v5

    :cond_0
    iget-boolean v7, p0, Landroid/util/ArrayMap;->mIdentityHashCode:Z

    if-eqz v7, :cond_1

    invoke-static {p1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v0

    :goto_1
    invoke-virtual {p0, p1, v0}, Landroid/util/ArrayMap;->indexOf(Ljava/lang/Object;I)I

    move-result v1

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_1

    :cond_2
    not-int v1, v1

    iget-object v7, p0, Landroid/util/ArrayMap;->mHashes:[I

    array-length v7, v7

    if-lt v6, v7, :cond_7

    const/16 v7, 0x8

    if-lt v6, v7, :cond_3

    shr-int/lit8 v7, v6, 0x1

    add-int v2, v6, v7

    :goto_2
    iget-object v4, p0, Landroid/util/ArrayMap;->mHashes:[I

    iget-object v3, p0, Landroid/util/ArrayMap;->mArray:[Ljava/lang/Object;

    invoke-direct {p0, v2}, Landroid/util/ArrayMap;->allocArrays(I)V

    iget v7, p0, Landroid/util/ArrayMap;->mSize:I

    if-eq v6, v7, :cond_5

    new-instance v7, Ljava/util/ConcurrentModificationException;

    invoke-direct {v7}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v7

    :cond_3
    const/4 v7, 0x4

    if-lt v6, v7, :cond_4

    const/16 v2, 0x8

    goto :goto_2

    :cond_4
    const/4 v2, 0x4

    goto :goto_2

    :cond_5
    iget-object v7, p0, Landroid/util/ArrayMap;->mHashes:[I

    array-length v7, v7

    if-lez v7, :cond_6

    iget-object v7, p0, Landroid/util/ArrayMap;->mHashes:[I

    array-length v8, v4

    invoke-static {v4, v9, v7, v9, v8}, Ljava/lang/System;->arraycopy([II[III)V

    iget-object v7, p0, Landroid/util/ArrayMap;->mArray:[Ljava/lang/Object;

    array-length v8, v3

    invoke-static {v3, v9, v7, v9, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_6
    invoke-static {v4, v3, v6}, Landroid/util/ArrayMap;->freeArrays([I[Ljava/lang/Object;I)V

    :cond_7
    if-ge v1, v6, :cond_8

    iget-object v7, p0, Landroid/util/ArrayMap;->mHashes:[I

    iget-object v8, p0, Landroid/util/ArrayMap;->mHashes:[I

    add-int/lit8 v9, v1, 0x1

    sub-int v10, v6, v1

    invoke-static {v7, v1, v8, v9, v10}, Ljava/lang/System;->arraycopy([II[III)V

    iget-object v7, p0, Landroid/util/ArrayMap;->mArray:[Ljava/lang/Object;

    shl-int/lit8 v8, v1, 0x1

    iget-object v9, p0, Landroid/util/ArrayMap;->mArray:[Ljava/lang/Object;

    add-int/lit8 v10, v1, 0x1

    shl-int/lit8 v10, v10, 0x1

    iget v11, p0, Landroid/util/ArrayMap;->mSize:I

    sub-int/2addr v11, v1

    shl-int/lit8 v11, v11, 0x1

    invoke-static {v7, v8, v9, v10, v11}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_8
    iget v7, p0, Landroid/util/ArrayMap;->mSize:I

    if-ne v6, v7, :cond_9

    iget-object v7, p0, Landroid/util/ArrayMap;->mHashes:[I

    array-length v7, v7

    if-lt v1, v7, :cond_a

    :cond_9
    new-instance v7, Ljava/util/ConcurrentModificationException;

    invoke-direct {v7}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v7

    :cond_a
    iget-object v7, p0, Landroid/util/ArrayMap;->mHashes:[I

    aput v0, v7, v1

    iget-object v7, p0, Landroid/util/ArrayMap;->mArray:[Ljava/lang/Object;

    shl-int/lit8 v8, v1, 0x1

    aput-object p1, v7, v8

    iget-object v7, p0, Landroid/util/ArrayMap;->mArray:[Ljava/lang/Object;

    shl-int/lit8 v8, v1, 0x1

    add-int/lit8 v8, v8, 0x1

    aput-object p2, v7, v8

    iget v7, p0, Landroid/util/ArrayMap;->mSize:I

    add-int/lit8 v7, v7, 0x1

    iput v7, p0, Landroid/util/ArrayMap;->mSize:I

    return-object v12
.end method

.method public putAll(Landroid/util/ArrayMap;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArrayMap",
            "<+TK;+TV;>;)V"
        }
    .end annotation

    const/4 v5, 0x0

    iget v0, p1, Landroid/util/ArrayMap;->mSize:I

    iget v2, p0, Landroid/util/ArrayMap;->mSize:I

    add-int/2addr v2, v0

    invoke-virtual {p0, v2}, Landroid/util/ArrayMap;->ensureCapacity(I)V

    iget v2, p0, Landroid/util/ArrayMap;->mSize:I

    if-nez v2, :cond_1

    if-lez v0, :cond_0

    iget-object v2, p1, Landroid/util/ArrayMap;->mHashes:[I

    iget-object v3, p0, Landroid/util/ArrayMap;->mHashes:[I

    invoke-static {v2, v5, v3, v5, v0}, Ljava/lang/System;->arraycopy([II[III)V

    iget-object v2, p1, Landroid/util/ArrayMap;->mArray:[Ljava/lang/Object;

    iget-object v3, p0, Landroid/util/ArrayMap;->mArray:[Ljava/lang/Object;

    shl-int/lit8 v4, v0, 0x1

    invoke-static {v2, v5, v3, v5, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput v0, p0, Landroid/util/ArrayMap;->mSize:I

    :cond_0
    return-void

    :cond_1
    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    invoke-virtual {p1, v1}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p1, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public putAll(Ljava/util/Map;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<+TK;+TV;>;)V"
        }
    .end annotation

    iget v2, p0, Landroid/util/ArrayMap;->mSize:I

    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v3

    add-int/2addr v2, v3

    invoke-virtual {p0, v2}, Landroid/util/ArrayMap;->ensureCapacity(I)V

    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    return-void
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

    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->indexOfKey(Ljava/lang/Object;)I

    move-result v0

    if-ltz v0, :cond_0

    invoke-virtual {p0, v0}, Landroid/util/ArrayMap;->removeAt(I)Ljava/lang/Object;

    move-result-object v1

    return-object v1

    :cond_0
    const/4 v1, 0x0

    return-object v1
.end method

.method public removeAll(Ljava/util/Collection;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<*>;)Z"
        }
    .end annotation

    invoke-static {p0, p1}, Landroid/util/MapCollections;->removeAllHelper(Ljava/util/Map;Ljava/util/Collection;)Z

    move-result v0

    return v0
.end method

.method public removeAt(I)Ljava/lang/Object;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TV;"
        }
    .end annotation

    const/4 v11, 0x0

    const/16 v9, 0x8

    const/4 v8, 0x0

    iget-object v6, p0, Landroid/util/ArrayMap;->mArray:[Ljava/lang/Object;

    shl-int/lit8 v7, p1, 0x1

    add-int/lit8 v7, v7, 0x1

    aget-object v4, v6, v7

    iget v5, p0, Landroid/util/ArrayMap;->mSize:I

    const/4 v6, 0x1

    if-gt v5, v6, :cond_1

    iget-object v6, p0, Landroid/util/ArrayMap;->mHashes:[I

    iget-object v7, p0, Landroid/util/ArrayMap;->mArray:[Ljava/lang/Object;

    invoke-static {v6, v7, v5}, Landroid/util/ArrayMap;->freeArrays([I[Ljava/lang/Object;I)V

    sget-object v6, Llibcore/util/EmptyArray;->INT:[I

    iput-object v6, p0, Landroid/util/ArrayMap;->mHashes:[I

    sget-object v6, Llibcore/util/EmptyArray;->OBJECT:[Ljava/lang/Object;

    iput-object v6, p0, Landroid/util/ArrayMap;->mArray:[Ljava/lang/Object;

    const/4 v1, 0x0

    :cond_0
    :goto_0
    iget v6, p0, Landroid/util/ArrayMap;->mSize:I

    if-eq v5, v6, :cond_7

    new-instance v6, Ljava/util/ConcurrentModificationException;

    invoke-direct {v6}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v6

    :cond_1
    add-int/lit8 v1, v5, -0x1

    iget-object v6, p0, Landroid/util/ArrayMap;->mHashes:[I

    array-length v6, v6

    if-le v6, v9, :cond_5

    iget v6, p0, Landroid/util/ArrayMap;->mSize:I

    iget-object v7, p0, Landroid/util/ArrayMap;->mHashes:[I

    array-length v7, v7

    div-int/lit8 v7, v7, 0x3

    if-ge v6, v7, :cond_5

    if-le v5, v9, :cond_2

    shr-int/lit8 v6, v5, 0x1

    add-int v0, v5, v6

    :goto_1
    iget-object v3, p0, Landroid/util/ArrayMap;->mHashes:[I

    iget-object v2, p0, Landroid/util/ArrayMap;->mArray:[Ljava/lang/Object;

    invoke-direct {p0, v0}, Landroid/util/ArrayMap;->allocArrays(I)V

    iget v6, p0, Landroid/util/ArrayMap;->mSize:I

    if-eq v5, v6, :cond_3

    new-instance v6, Ljava/util/ConcurrentModificationException;

    invoke-direct {v6}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v6

    :cond_2
    const/16 v0, 0x8

    goto :goto_1

    :cond_3
    if-lez p1, :cond_4

    iget-object v6, p0, Landroid/util/ArrayMap;->mHashes:[I

    invoke-static {v3, v8, v6, v8, p1}, Ljava/lang/System;->arraycopy([II[III)V

    iget-object v6, p0, Landroid/util/ArrayMap;->mArray:[Ljava/lang/Object;

    shl-int/lit8 v7, p1, 0x1

    invoke-static {v2, v8, v6, v8, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_4
    if-ge p1, v1, :cond_0

    add-int/lit8 v6, p1, 0x1

    iget-object v7, p0, Landroid/util/ArrayMap;->mHashes:[I

    sub-int v8, v1, p1

    invoke-static {v3, v6, v7, p1, v8}, Ljava/lang/System;->arraycopy([II[III)V

    add-int/lit8 v6, p1, 0x1

    shl-int/lit8 v6, v6, 0x1

    iget-object v7, p0, Landroid/util/ArrayMap;->mArray:[Ljava/lang/Object;

    shl-int/lit8 v8, p1, 0x1

    sub-int v9, v1, p1

    shl-int/lit8 v9, v9, 0x1

    invoke-static {v2, v6, v7, v8, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0

    :cond_5
    if-ge p1, v1, :cond_6

    iget-object v6, p0, Landroid/util/ArrayMap;->mHashes:[I

    add-int/lit8 v7, p1, 0x1

    iget-object v8, p0, Landroid/util/ArrayMap;->mHashes:[I

    sub-int v9, v1, p1

    invoke-static {v6, v7, v8, p1, v9}, Ljava/lang/System;->arraycopy([II[III)V

    iget-object v6, p0, Landroid/util/ArrayMap;->mArray:[Ljava/lang/Object;

    add-int/lit8 v7, p1, 0x1

    shl-int/lit8 v7, v7, 0x1

    iget-object v8, p0, Landroid/util/ArrayMap;->mArray:[Ljava/lang/Object;

    shl-int/lit8 v9, p1, 0x1

    sub-int v10, v1, p1

    shl-int/lit8 v10, v10, 0x1

    invoke-static {v6, v7, v8, v9, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_6
    iget-object v6, p0, Landroid/util/ArrayMap;->mArray:[Ljava/lang/Object;

    shl-int/lit8 v7, v1, 0x1

    aput-object v11, v6, v7

    iget-object v6, p0, Landroid/util/ArrayMap;->mArray:[Ljava/lang/Object;

    shl-int/lit8 v7, v1, 0x1

    add-int/lit8 v7, v7, 0x1

    aput-object v11, v6, v7

    goto/16 :goto_0

    :cond_7
    iput v1, p0, Landroid/util/ArrayMap;->mSize:I

    return-object v4
.end method

.method public retainAll(Ljava/util/Collection;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<*>;)Z"
        }
    .end annotation

    invoke-static {p0, p1}, Landroid/util/MapCollections;->retainAllHelper(Ljava/util/Map;Ljava/util/Collection;)Z

    move-result v0

    return v0
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

    iget-object v1, p0, Landroid/util/ArrayMap;->mArray:[Ljava/lang/Object;

    aget-object v0, v1, p1

    iget-object v1, p0, Landroid/util/ArrayMap;->mArray:[Ljava/lang/Object;

    aput-object p2, v1, p1

    return-object v0
.end method

.method public size()I
    .locals 1

    iget v0, p0, Landroid/util/ArrayMap;->mSize:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    invoke-virtual {p0}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_0

    const-string/jumbo v4, "{}"

    return-object v4

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    iget v4, p0, Landroid/util/ArrayMap;->mSize:I

    mul-int/lit8 v4, v4, 0x1c

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    const/16 v4, 0x7b

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    :goto_0
    iget v4, p0, Landroid/util/ArrayMap;->mSize:I

    if-ge v1, v4, :cond_4

    if-lez v1, :cond_1

    const-string/jumbo v4, ", "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    invoke-virtual {p0, v1}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v2

    if-eq v2, p0, :cond_2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :goto_1
    const/16 v4, 0x3d

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    if-eq v3, p0, :cond_3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    const-string/jumbo v4, "(this Map)"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_3
    const-string/jumbo v4, "(this Map)"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_4
    const/16 v4, 0x7d

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method

.method public validate()V
    .locals 11

    iget v0, p0, Landroid/util/ArrayMap;->mSize:I

    const/4 v8, 0x1

    if-gt v0, v8, :cond_0

    return-void

    :cond_0
    iget-object v8, p0, Landroid/util/ArrayMap;->mHashes:[I

    const/4 v9, 0x0

    aget v1, v8, v9

    const/4 v2, 0x0

    const/4 v5, 0x1

    :goto_0
    if-ge v5, v0, :cond_5

    iget-object v8, p0, Landroid/util/ArrayMap;->mHashes:[I

    aget v4, v8, v5

    if-eq v4, v1, :cond_2

    move v1, v4

    move v2, v5

    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_2
    iget-object v8, p0, Landroid/util/ArrayMap;->mArray:[Ljava/lang/Object;

    shl-int/lit8 v9, v5, 0x1

    aget-object v3, v8, v9

    add-int/lit8 v6, v5, -0x1

    :goto_1
    if-lt v6, v2, :cond_1

    iget-object v8, p0, Landroid/util/ArrayMap;->mArray:[Ljava/lang/Object;

    shl-int/lit8 v9, v6, 0x1

    aget-object v7, v8, v9

    if-ne v3, v7, :cond_3

    new-instance v8, Ljava/lang/IllegalArgumentException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "Duplicate key in ArrayMap: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v8

    :cond_3
    if-eqz v3, :cond_4

    if-eqz v7, :cond_4

    invoke-virtual {v3, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    new-instance v8, Ljava/lang/IllegalArgumentException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "Duplicate key in ArrayMap: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v8

    :cond_4
    add-int/lit8 v6, v6, -0x1

    goto :goto_1

    :cond_5
    return-void
.end method

.method public valueAt(I)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TV;"
        }
    .end annotation

    iget-object v0, p0, Landroid/util/ArrayMap;->mArray:[Ljava/lang/Object;

    shl-int/lit8 v1, p1, 0x1

    add-int/lit8 v1, v1, 0x1

    aget-object v0, v0, v1

    return-object v0
.end method

.method public values()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<TV;>;"
        }
    .end annotation

    invoke-direct {p0}, Landroid/util/ArrayMap;->getCollection()Landroid/util/MapCollections;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/MapCollections;->getValues()Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method
