.class Ljava/io/ObjectOutputStream$HandleTable;
.super Ljava/lang/Object;
.source "ObjectOutputStream.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/io/ObjectOutputStream;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "HandleTable"
.end annotation


# instance fields
.field private final loadFactor:F

.field private next:[I

.field private objs:[Ljava/lang/Object;

.field private size:I

.field private spine:[I

.field private threshold:I


# direct methods
.method constructor <init>(IF)V
    .locals 1
    .param p1, "initialCapacity"    # I
    .param p2, "loadFactor"    # F

    .prologue
    .line 2332
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2333
    iput p2, p0, Ljava/io/ObjectOutputStream$HandleTable;->loadFactor:F

    .line 2334
    new-array v0, p1, [I

    iput-object v0, p0, Ljava/io/ObjectOutputStream$HandleTable;->spine:[I

    .line 2335
    new-array v0, p1, [I

    iput-object v0, p0, Ljava/io/ObjectOutputStream$HandleTable;->next:[I

    .line 2336
    new-array v0, p1, [Ljava/lang/Object;

    iput-object v0, p0, Ljava/io/ObjectOutputStream$HandleTable;->objs:[Ljava/lang/Object;

    .line 2337
    int-to-float v0, p1

    mul-float/2addr v0, p2

    float-to-int v0, v0

    iput v0, p0, Ljava/io/ObjectOutputStream$HandleTable;->threshold:I

    .line 2338
    invoke-virtual {p0}, Ljava/io/ObjectOutputStream$HandleTable;->clear()V

    .line 2332
    return-void
.end method

.method private growEntries()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 2417
    iget-object v3, p0, Ljava/io/ObjectOutputStream$HandleTable;->next:[I

    array-length v3, v3

    shl-int/lit8 v3, v3, 0x1

    add-int/lit8 v0, v3, 0x1

    .line 2418
    .local v0, "newLength":I
    new-array v1, v0, [I

    .line 2419
    .local v1, "newNext":[I
    iget-object v3, p0, Ljava/io/ObjectOutputStream$HandleTable;->next:[I

    iget v4, p0, Ljava/io/ObjectOutputStream$HandleTable;->size:I

    invoke-static {v3, v5, v1, v5, v4}, Ljava/lang/System;->arraycopy([II[III)V

    .line 2420
    iput-object v1, p0, Ljava/io/ObjectOutputStream$HandleTable;->next:[I

    .line 2422
    new-array v2, v0, [Ljava/lang/Object;

    .line 2423
    .local v2, "newObjs":[Ljava/lang/Object;
    iget-object v3, p0, Ljava/io/ObjectOutputStream$HandleTable;->objs:[Ljava/lang/Object;

    iget v4, p0, Ljava/io/ObjectOutputStream$HandleTable;->size:I

    invoke-static {v3, v5, v2, v5, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2424
    iput-object v2, p0, Ljava/io/ObjectOutputStream$HandleTable;->objs:[Ljava/lang/Object;

    .line 2416
    return-void
.end method

.method private growSpine()V
    .locals 3

    .prologue
    .line 2405
    iget-object v1, p0, Ljava/io/ObjectOutputStream$HandleTable;->spine:[I

    array-length v1, v1

    shl-int/lit8 v1, v1, 0x1

    add-int/lit8 v1, v1, 0x1

    new-array v1, v1, [I

    iput-object v1, p0, Ljava/io/ObjectOutputStream$HandleTable;->spine:[I

    .line 2406
    iget-object v1, p0, Ljava/io/ObjectOutputStream$HandleTable;->spine:[I

    array-length v1, v1

    int-to-float v1, v1

    iget v2, p0, Ljava/io/ObjectOutputStream$HandleTable;->loadFactor:F

    mul-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, p0, Ljava/io/ObjectOutputStream$HandleTable;->threshold:I

    .line 2407
    iget-object v1, p0, Ljava/io/ObjectOutputStream$HandleTable;->spine:[I

    const/4 v2, -0x1

    invoke-static {v1, v2}, Ljava/util/Arrays;->fill([II)V

    .line 2408
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v1, p0, Ljava/io/ObjectOutputStream$HandleTable;->size:I

    if-ge v0, v1, :cond_0

    .line 2409
    iget-object v1, p0, Ljava/io/ObjectOutputStream$HandleTable;->objs:[Ljava/lang/Object;

    aget-object v1, v1, v0

    invoke-direct {p0, v1, v0}, Ljava/io/ObjectOutputStream$HandleTable;->insert(Ljava/lang/Object;I)V

    .line 2408
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2404
    :cond_0
    return-void
.end method

.method private hash(Ljava/lang/Object;)I
    .locals 2
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    .line 2431
    invoke-static {p1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v0

    const v1, 0x7fffffff

    and-int/2addr v0, v1

    return v0
.end method

.method private insert(Ljava/lang/Object;I)V
    .locals 3
    .param p1, "obj"    # Ljava/lang/Object;
    .param p2, "handle"    # I

    .prologue
    .line 2394
    invoke-direct {p0, p1}, Ljava/io/ObjectOutputStream$HandleTable;->hash(Ljava/lang/Object;)I

    move-result v1

    iget-object v2, p0, Ljava/io/ObjectOutputStream$HandleTable;->spine:[I

    array-length v2, v2

    rem-int v0, v1, v2

    .line 2395
    .local v0, "index":I
    iget-object v1, p0, Ljava/io/ObjectOutputStream$HandleTable;->objs:[Ljava/lang/Object;

    aput-object p1, v1, p2

    .line 2396
    iget-object v1, p0, Ljava/io/ObjectOutputStream$HandleTable;->next:[I

    iget-object v2, p0, Ljava/io/ObjectOutputStream$HandleTable;->spine:[I

    aget v2, v2, v0

    aput v2, v1, p2

    .line 2397
    iget-object v1, p0, Ljava/io/ObjectOutputStream$HandleTable;->spine:[I

    aput p2, v1, v0

    .line 2393
    return-void
.end method


# virtual methods
.method assign(Ljava/lang/Object;)I
    .locals 2
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    .line 2346
    iget v0, p0, Ljava/io/ObjectOutputStream$HandleTable;->size:I

    iget-object v1, p0, Ljava/io/ObjectOutputStream$HandleTable;->next:[I

    array-length v1, v1

    if-lt v0, v1, :cond_0

    .line 2347
    invoke-direct {p0}, Ljava/io/ObjectOutputStream$HandleTable;->growEntries()V

    .line 2349
    :cond_0
    iget v0, p0, Ljava/io/ObjectOutputStream$HandleTable;->size:I

    iget v1, p0, Ljava/io/ObjectOutputStream$HandleTable;->threshold:I

    if-lt v0, v1, :cond_1

    .line 2350
    invoke-direct {p0}, Ljava/io/ObjectOutputStream$HandleTable;->growSpine()V

    .line 2352
    :cond_1
    iget v0, p0, Ljava/io/ObjectOutputStream$HandleTable;->size:I

    invoke-direct {p0, p1, v0}, Ljava/io/ObjectOutputStream$HandleTable;->insert(Ljava/lang/Object;I)V

    .line 2353
    iget v0, p0, Ljava/io/ObjectOutputStream$HandleTable;->size:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Ljava/io/ObjectOutputStream$HandleTable;->size:I

    return v0
.end method

.method clear()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 2377
    iget-object v0, p0, Ljava/io/ObjectOutputStream$HandleTable;->spine:[I

    const/4 v1, -0x1

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([II)V

    .line 2378
    iget-object v0, p0, Ljava/io/ObjectOutputStream$HandleTable;->objs:[Ljava/lang/Object;

    iget v1, p0, Ljava/io/ObjectOutputStream$HandleTable;->size:I

    const/4 v2, 0x0

    invoke-static {v0, v3, v1, v2}, Ljava/util/Arrays;->fill([Ljava/lang/Object;IILjava/lang/Object;)V

    .line 2379
    iput v3, p0, Ljava/io/ObjectOutputStream$HandleTable;->size:I

    .line 2376
    return-void
.end method

.method lookup(Ljava/lang/Object;)I
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v4, -0x1

    .line 2361
    iget v2, p0, Ljava/io/ObjectOutputStream$HandleTable;->size:I

    if-nez v2, :cond_0

    .line 2362
    return v4

    .line 2364
    :cond_0
    invoke-direct {p0, p1}, Ljava/io/ObjectOutputStream$HandleTable;->hash(Ljava/lang/Object;)I

    move-result v2

    iget-object v3, p0, Ljava/io/ObjectOutputStream$HandleTable;->spine:[I

    array-length v3, v3

    rem-int v1, v2, v3

    .line 2365
    .local v1, "index":I
    iget-object v2, p0, Ljava/io/ObjectOutputStream$HandleTable;->spine:[I

    aget v0, v2, v1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_2

    .line 2366
    iget-object v2, p0, Ljava/io/ObjectOutputStream$HandleTable;->objs:[Ljava/lang/Object;

    aget-object v2, v2, v0

    if-ne v2, p1, :cond_1

    .line 2367
    return v0

    .line 2365
    :cond_1
    iget-object v2, p0, Ljava/io/ObjectOutputStream$HandleTable;->next:[I

    aget v0, v2, v0

    goto :goto_0

    .line 2370
    :cond_2
    return v4
.end method

.method size()I
    .locals 1

    .prologue
    .line 2386
    iget v0, p0, Ljava/io/ObjectOutputStream$HandleTable;->size:I

    return v0
.end method
