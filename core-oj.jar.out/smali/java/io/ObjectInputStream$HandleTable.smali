.class Ljava/io/ObjectInputStream$HandleTable;
.super Ljava/lang/Object;
.source "ObjectInputStream.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/io/ObjectInputStream;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "HandleTable"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/io/ObjectInputStream$HandleTable$HandleList;
    }
.end annotation


# static fields
.field private static final STATUS_EXCEPTION:B = 0x3t

.field private static final STATUS_OK:B = 0x1t

.field private static final STATUS_UNKNOWN:B = 0x2t


# instance fields
.field deps:[Ljava/io/ObjectInputStream$HandleTable$HandleList;

.field entries:[Ljava/lang/Object;

.field lowDep:I

.field size:I

.field status:[B


# direct methods
.method constructor <init>(I)V
    .locals 1
    .param p1, "initialCapacity"    # I

    .prologue
    .line 3263
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3256
    const/4 v0, -0x1

    iput v0, p0, Ljava/io/ObjectInputStream$HandleTable;->lowDep:I

    .line 3258
    const/4 v0, 0x0

    iput v0, p0, Ljava/io/ObjectInputStream$HandleTable;->size:I

    .line 3264
    new-array v0, p1, [B

    iput-object v0, p0, Ljava/io/ObjectInputStream$HandleTable;->status:[B

    .line 3265
    new-array v0, p1, [Ljava/lang/Object;

    iput-object v0, p0, Ljava/io/ObjectInputStream$HandleTable;->entries:[Ljava/lang/Object;

    .line 3266
    new-array v0, p1, [Ljava/io/ObjectInputStream$HandleTable$HandleList;

    iput-object v0, p0, Ljava/io/ObjectInputStream$HandleTable;->deps:[Ljava/io/ObjectInputStream$HandleTable$HandleList;

    .line 3263
    return-void
.end method

.method private grow()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 3467
    iget-object v4, p0, Ljava/io/ObjectInputStream$HandleTable;->entries:[Ljava/lang/Object;

    array-length v4, v4

    shl-int/lit8 v4, v4, 0x1

    add-int/lit8 v0, v4, 0x1

    .line 3469
    .local v0, "newCapacity":I
    new-array v3, v0, [B

    .line 3470
    .local v3, "newStatus":[B
    new-array v2, v0, [Ljava/lang/Object;

    .line 3471
    .local v2, "newEntries":[Ljava/lang/Object;
    new-array v1, v0, [Ljava/io/ObjectInputStream$HandleTable$HandleList;

    .line 3473
    .local v1, "newDeps":[Ljava/io/ObjectInputStream$HandleTable$HandleList;
    iget-object v4, p0, Ljava/io/ObjectInputStream$HandleTable;->status:[B

    iget v5, p0, Ljava/io/ObjectInputStream$HandleTable;->size:I

    invoke-static {v4, v6, v3, v6, v5}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 3474
    iget-object v4, p0, Ljava/io/ObjectInputStream$HandleTable;->entries:[Ljava/lang/Object;

    iget v5, p0, Ljava/io/ObjectInputStream$HandleTable;->size:I

    invoke-static {v4, v6, v2, v6, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 3475
    iget-object v4, p0, Ljava/io/ObjectInputStream$HandleTable;->deps:[Ljava/io/ObjectInputStream$HandleTable$HandleList;

    iget v5, p0, Ljava/io/ObjectInputStream$HandleTable;->size:I

    invoke-static {v4, v6, v1, v6, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 3477
    iput-object v3, p0, Ljava/io/ObjectInputStream$HandleTable;->status:[B

    .line 3478
    iput-object v2, p0, Ljava/io/ObjectInputStream$HandleTable;->entries:[Ljava/lang/Object;

    .line 3479
    iput-object v1, p0, Ljava/io/ObjectInputStream$HandleTable;->deps:[Ljava/io/ObjectInputStream$HandleTable$HandleList;

    .line 3466
    return-void
.end method


# virtual methods
.method assign(Ljava/lang/Object;)I
    .locals 3
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    .line 3276
    iget v0, p0, Ljava/io/ObjectInputStream$HandleTable;->size:I

    iget-object v1, p0, Ljava/io/ObjectInputStream$HandleTable;->entries:[Ljava/lang/Object;

    array-length v1, v1

    if-lt v0, v1, :cond_0

    .line 3277
    invoke-direct {p0}, Ljava/io/ObjectInputStream$HandleTable;->grow()V

    .line 3279
    :cond_0
    iget-object v0, p0, Ljava/io/ObjectInputStream$HandleTable;->status:[B

    iget v1, p0, Ljava/io/ObjectInputStream$HandleTable;->size:I

    const/4 v2, 0x2

    aput-byte v2, v0, v1

    .line 3280
    iget-object v0, p0, Ljava/io/ObjectInputStream$HandleTable;->entries:[Ljava/lang/Object;

    iget v1, p0, Ljava/io/ObjectInputStream$HandleTable;->size:I

    aput-object p1, v0, v1

    .line 3281
    iget v0, p0, Ljava/io/ObjectInputStream$HandleTable;->size:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Ljava/io/ObjectInputStream$HandleTable;->size:I

    return v0
.end method

.method clear()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 3449
    iget-object v0, p0, Ljava/io/ObjectInputStream$HandleTable;->status:[B

    iget v1, p0, Ljava/io/ObjectInputStream$HandleTable;->size:I

    invoke-static {v0, v2, v1, v2}, Ljava/util/Arrays;->fill([BIIB)V

    .line 3450
    iget-object v0, p0, Ljava/io/ObjectInputStream$HandleTable;->entries:[Ljava/lang/Object;

    iget v1, p0, Ljava/io/ObjectInputStream$HandleTable;->size:I

    invoke-static {v0, v2, v1, v3}, Ljava/util/Arrays;->fill([Ljava/lang/Object;IILjava/lang/Object;)V

    .line 3451
    iget-object v0, p0, Ljava/io/ObjectInputStream$HandleTable;->deps:[Ljava/io/ObjectInputStream$HandleTable$HandleList;

    iget v1, p0, Ljava/io/ObjectInputStream$HandleTable;->size:I

    invoke-static {v0, v2, v1, v3}, Ljava/util/Arrays;->fill([Ljava/lang/Object;IILjava/lang/Object;)V

    .line 3452
    const/4 v0, -0x1

    iput v0, p0, Ljava/io/ObjectInputStream$HandleTable;->lowDep:I

    .line 3453
    iput v2, p0, Ljava/io/ObjectInputStream$HandleTable;->size:I

    .line 3448
    return-void
.end method

.method finish(I)V
    .locals 4
    .param p1, "handle"    # I

    .prologue
    .line 3372
    iget v2, p0, Ljava/io/ObjectInputStream$HandleTable;->lowDep:I

    if-gez v2, :cond_0

    .line 3374
    add-int/lit8 v0, p1, 0x1

    .line 3385
    .local v0, "end":I
    :goto_0
    move v1, p1

    .local v1, "i":I
    :goto_1
    if-ge v1, v0, :cond_2

    .line 3386
    iget-object v2, p0, Ljava/io/ObjectInputStream$HandleTable;->status:[B

    aget-byte v2, v2, v1

    packed-switch v2, :pswitch_data_0

    .line 3397
    new-instance v2, Ljava/lang/InternalError;

    invoke-direct {v2}, Ljava/lang/InternalError;-><init>()V

    throw v2

    .line 3375
    .end local v0    # "end":I
    .end local v1    # "i":I
    :cond_0
    iget v2, p0, Ljava/io/ObjectInputStream$HandleTable;->lowDep:I

    if-lt v2, p1, :cond_1

    .line 3377
    iget v0, p0, Ljava/io/ObjectInputStream$HandleTable;->size:I

    .line 3378
    .restart local v0    # "end":I
    const/4 v2, -0x1

    iput v2, p0, Ljava/io/ObjectInputStream$HandleTable;->lowDep:I

    goto :goto_0

    .line 3381
    .end local v0    # "end":I
    :cond_1
    return-void

    .line 3388
    .restart local v0    # "end":I
    .restart local v1    # "i":I
    :pswitch_0
    iget-object v2, p0, Ljava/io/ObjectInputStream$HandleTable;->status:[B

    const/4 v3, 0x1

    aput-byte v3, v2, v1

    .line 3389
    iget-object v2, p0, Ljava/io/ObjectInputStream$HandleTable;->deps:[Ljava/io/ObjectInputStream$HandleTable$HandleList;

    const/4 v3, 0x0

    aput-object v3, v2, v1

    .line 3385
    :pswitch_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 3370
    :cond_2
    return-void

    .line 3386
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method lookupException(I)Ljava/lang/ClassNotFoundException;
    .locals 2
    .param p1, "handle"    # I

    .prologue
    .line 3440
    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    .line 3441
    iget-object v0, p0, Ljava/io/ObjectInputStream$HandleTable;->status:[B

    aget-byte v0, v0, p1

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 3442
    iget-object v0, p0, Ljava/io/ObjectInputStream$HandleTable;->entries:[Ljava/lang/Object;

    aget-object v0, v0, p1

    check-cast v0, Ljava/lang/ClassNotFoundException;

    .line 3440
    :goto_0
    return-object v0

    .line 3442
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method lookupObject(I)Ljava/lang/Object;
    .locals 2
    .param p1, "handle"    # I

    .prologue
    .line 3429
    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    .line 3430
    iget-object v0, p0, Ljava/io/ObjectInputStream$HandleTable;->status:[B

    aget-byte v0, v0, p1

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    .line 3431
    iget-object v0, p0, Ljava/io/ObjectInputStream$HandleTable;->entries:[Ljava/lang/Object;

    aget-object v0, v0, p1

    .line 3429
    :goto_0
    return-object v0

    .line 3431
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method markDependency(II)V
    .locals 2
    .param p1, "dependent"    # I
    .param p2, "target"    # I

    .prologue
    const/4 v0, -0x1

    .line 3291
    if-eq p1, v0, :cond_0

    if-ne p2, v0, :cond_1

    .line 3292
    :cond_0
    return-void

    .line 3294
    :cond_1
    iget-object v0, p0, Ljava/io/ObjectInputStream$HandleTable;->status:[B

    aget-byte v0, v0, p1

    packed-switch v0, :pswitch_data_0

    .line 3330
    new-instance v0, Ljava/lang/InternalError;

    invoke-direct {v0}, Ljava/lang/InternalError;-><init>()V

    throw v0

    .line 3297
    :pswitch_0
    iget-object v0, p0, Ljava/io/ObjectInputStream$HandleTable;->status:[B

    aget-byte v0, v0, p2

    packed-switch v0, :pswitch_data_1

    .line 3322
    new-instance v0, Ljava/lang/InternalError;

    invoke-direct {v0}, Ljava/lang/InternalError;-><init>()V

    throw v0

    .line 3305
    :pswitch_1
    iget-object v0, p0, Ljava/io/ObjectInputStream$HandleTable;->entries:[Ljava/lang/Object;

    aget-object v0, v0, p2

    check-cast v0, Ljava/lang/ClassNotFoundException;

    .line 3304
    invoke-virtual {p0, p1, v0}, Ljava/io/ObjectInputStream$HandleTable;->markException(ILjava/lang/ClassNotFoundException;)V

    .line 3290
    :cond_2
    :goto_0
    :pswitch_2
    return-void

    .line 3310
    :pswitch_3
    iget-object v0, p0, Ljava/io/ObjectInputStream$HandleTable;->deps:[Ljava/io/ObjectInputStream$HandleTable$HandleList;

    aget-object v0, v0, p2

    if-nez v0, :cond_3

    .line 3311
    iget-object v0, p0, Ljava/io/ObjectInputStream$HandleTable;->deps:[Ljava/io/ObjectInputStream$HandleTable$HandleList;

    new-instance v1, Ljava/io/ObjectInputStream$HandleTable$HandleList;

    invoke-direct {v1}, Ljava/io/ObjectInputStream$HandleTable$HandleList;-><init>()V

    aput-object v1, v0, p2

    .line 3313
    :cond_3
    iget-object v0, p0, Ljava/io/ObjectInputStream$HandleTable;->deps:[Ljava/io/ObjectInputStream$HandleTable$HandleList;

    aget-object v0, v0, p2

    invoke-virtual {v0, p1}, Ljava/io/ObjectInputStream$HandleTable$HandleList;->add(I)V

    .line 3316
    iget v0, p0, Ljava/io/ObjectInputStream$HandleTable;->lowDep:I

    if-ltz v0, :cond_4

    iget v0, p0, Ljava/io/ObjectInputStream$HandleTable;->lowDep:I

    if-le v0, p2, :cond_2

    .line 3317
    :cond_4
    iput p2, p0, Ljava/io/ObjectInputStream$HandleTable;->lowDep:I

    goto :goto_0

    .line 3294
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_2
    .end packed-switch

    .line 3297
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_2
        :pswitch_3
        :pswitch_1
    .end packed-switch
.end method

.method markException(ILjava/lang/ClassNotFoundException;)V
    .locals 6
    .param p1, "handle"    # I
    .param p2, "ex"    # Ljava/lang/ClassNotFoundException;

    .prologue
    const/4 v5, 0x0

    .line 3341
    iget-object v3, p0, Ljava/io/ObjectInputStream$HandleTable;->status:[B

    aget-byte v3, v3, p1

    packed-switch v3, :pswitch_data_0

    .line 3361
    new-instance v3, Ljava/lang/InternalError;

    invoke-direct {v3}, Ljava/lang/InternalError;-><init>()V

    throw v3

    .line 3343
    :pswitch_0
    iget-object v3, p0, Ljava/io/ObjectInputStream$HandleTable;->status:[B

    const/4 v4, 0x3

    aput-byte v4, v3, p1

    .line 3344
    iget-object v3, p0, Ljava/io/ObjectInputStream$HandleTable;->entries:[Ljava/lang/Object;

    aput-object p2, v3, p1

    .line 3347
    iget-object v3, p0, Ljava/io/ObjectInputStream$HandleTable;->deps:[Ljava/io/ObjectInputStream$HandleTable$HandleList;

    aget-object v0, v3, p1

    .line 3348
    .local v0, "dlist":Ljava/io/ObjectInputStream$HandleTable$HandleList;
    if-eqz v0, :cond_1

    .line 3349
    invoke-virtual {v0}, Ljava/io/ObjectInputStream$HandleTable$HandleList;->size()I

    move-result v2

    .line 3350
    .local v2, "ndeps":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_0

    .line 3351
    invoke-virtual {v0, v1}, Ljava/io/ObjectInputStream$HandleTable$HandleList;->get(I)I

    move-result v3

    invoke-virtual {p0, v3, p2}, Ljava/io/ObjectInputStream$HandleTable;->markException(ILjava/lang/ClassNotFoundException;)V

    .line 3350
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 3353
    :cond_0
    iget-object v3, p0, Ljava/io/ObjectInputStream$HandleTable;->deps:[Ljava/io/ObjectInputStream$HandleTable$HandleList;

    aput-object v5, v3, p1

    .line 3340
    .end local v0    # "dlist":Ljava/io/ObjectInputStream$HandleTable$HandleList;
    .end local v1    # "i":I
    .end local v2    # "ndeps":I
    :cond_1
    :pswitch_1
    return-void

    .line 3341
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method setObject(ILjava/lang/Object;)V
    .locals 1
    .param p1, "handle"    # I
    .param p2, "obj"    # Ljava/lang/Object;

    .prologue
    .line 3409
    iget-object v0, p0, Ljava/io/ObjectInputStream$HandleTable;->status:[B

    aget-byte v0, v0, p1

    packed-switch v0, :pswitch_data_0

    .line 3419
    new-instance v0, Ljava/lang/InternalError;

    invoke-direct {v0}, Ljava/lang/InternalError;-><init>()V

    throw v0

    .line 3412
    :pswitch_0
    iget-object v0, p0, Ljava/io/ObjectInputStream$HandleTable;->entries:[Ljava/lang/Object;

    aput-object p2, v0, p1

    .line 3408
    :pswitch_1
    return-void

    .line 3409
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method size()I
    .locals 1

    .prologue
    .line 3460
    iget v0, p0, Ljava/io/ObjectInputStream$HandleTable;->size:I

    return v0
.end method
