.class public Lsun/misc/FDBigInt;
.super Ljava/lang/Object;
.source "FDBigInt.java"


# static fields
.field static final synthetic -assertionsDisabled:Z


# instance fields
.field data:[I

.field nWords:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const-class v0, Lsun/misc/FDBigInt;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    sput-boolean v0, Lsun/misc/FDBigInt;->-assertionsDisabled:Z

    .line 32
    return-void

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public constructor <init>(I)V
    .locals 2
    .param p1, "v"    # I

    .prologue
    const/4 v0, 0x1

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput v0, p0, Lsun/misc/FDBigInt;->nWords:I

    .line 39
    new-array v0, v0, [I

    iput-object v0, p0, Lsun/misc/FDBigInt;->data:[I

    .line 40
    iget-object v0, p0, Lsun/misc/FDBigInt;->data:[I

    const/4 v1, 0x0

    aput p1, v0, v1

    .line 37
    return-void
.end method

.method public constructor <init>(J)V
    .locals 7
    .param p1, "v"    # J

    .prologue
    const/4 v1, 0x2

    const/4 v4, 0x0

    const/4 v0, 0x1

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    new-array v2, v1, [I

    iput-object v2, p0, Lsun/misc/FDBigInt;->data:[I

    .line 45
    iget-object v2, p0, Lsun/misc/FDBigInt;->data:[I

    long-to-int v3, p1

    aput v3, v2, v4

    .line 46
    iget-object v2, p0, Lsun/misc/FDBigInt;->data:[I

    const/16 v3, 0x20

    ushr-long v4, p1, v3

    long-to-int v3, v4

    aput v3, v2, v0

    .line 47
    iget-object v2, p0, Lsun/misc/FDBigInt;->data:[I

    aget v2, v2, v0

    if-nez v2, :cond_0

    :goto_0
    iput v0, p0, Lsun/misc/FDBigInt;->nWords:I

    .line 43
    return-void

    :cond_0
    move v0, v1

    .line 47
    goto :goto_0
.end method

.method public constructor <init>(J[CII)V
    .locals 13
    .param p1, "seed"    # J
    .param p3, "digit"    # [C
    .param p4, "nd0"    # I
    .param p5, "nd"    # I

    .prologue
    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    add-int/lit8 v9, p5, 0x8

    div-int/lit8 v7, v9, 0x9

    .line 62
    .local v7, "n":I
    const/4 v9, 0x2

    if-ge v7, v9, :cond_0

    const/4 v7, 0x2

    .line 63
    :cond_0
    new-array v9, v7, [I

    iput-object v9, p0, Lsun/misc/FDBigInt;->data:[I

    .line 64
    iget-object v9, p0, Lsun/misc/FDBigInt;->data:[I

    long-to-int v10, p1

    const/4 v11, 0x0

    aput v10, v9, v11

    .line 65
    iget-object v9, p0, Lsun/misc/FDBigInt;->data:[I

    const/16 v10, 0x20

    ushr-long v10, p1, v10

    long-to-int v10, v10

    const/4 v11, 0x1

    aput v10, v9, v11

    .line 66
    iget-object v9, p0, Lsun/misc/FDBigInt;->data:[I

    const/4 v10, 0x1

    aget v9, v9, v10

    if-nez v9, :cond_1

    const/4 v9, 0x1

    :goto_0
    iput v9, p0, Lsun/misc/FDBigInt;->nWords:I

    .line 67
    move/from16 v3, p4

    .line 68
    .local v3, "i":I
    add-int/lit8 v6, p5, -0x5

    .local v6, "limit":I
    move v4, v3

    .line 70
    .end local v3    # "i":I
    .local v4, "i":I
    :goto_1
    if-ge v4, v6, :cond_3

    .line 71
    add-int/lit8 v5, v4, 0x5

    .line 72
    .local v5, "ilim":I
    add-int/lit8 v3, v4, 0x1

    .end local v4    # "i":I
    .restart local v3    # "i":I
    aget-char v9, p3, v4

    add-int/lit8 v8, v9, -0x30

    .local v8, "v":I
    move v4, v3

    .line 73
    .end local v3    # "i":I
    .restart local v4    # "i":I
    :goto_2
    if-ge v4, v5, :cond_2

    .line 74
    mul-int/lit8 v9, v8, 0xa

    add-int/lit8 v3, v4, 0x1

    .end local v4    # "i":I
    .restart local v3    # "i":I
    aget-char v10, p3, v4

    add-int/2addr v9, v10

    add-int/lit8 v8, v9, -0x30

    move v4, v3

    .end local v3    # "i":I
    .restart local v4    # "i":I
    goto :goto_2

    .line 66
    .end local v4    # "i":I
    .end local v5    # "ilim":I
    .end local v6    # "limit":I
    .end local v8    # "v":I
    :cond_1
    const/4 v9, 0x2

    goto :goto_0

    .line 76
    .restart local v4    # "i":I
    .restart local v5    # "ilim":I
    .restart local v6    # "limit":I
    .restart local v8    # "v":I
    :cond_2
    const v9, 0x186a0

    invoke-virtual {p0, v9, v8}, Lsun/misc/FDBigInt;->multaddMe(II)V

    goto :goto_1

    .line 78
    .end local v5    # "ilim":I
    .end local v8    # "v":I
    :cond_3
    const/4 v2, 0x1

    .line 79
    .local v2, "factor":I
    const/4 v8, 0x0

    .line 80
    .restart local v8    # "v":I
    :goto_3
    move/from16 v0, p5

    if-ge v4, v0, :cond_4

    .line 81
    mul-int/lit8 v9, v8, 0xa

    add-int/lit8 v3, v4, 0x1

    .end local v4    # "i":I
    .restart local v3    # "i":I
    aget-char v10, p3, v4

    add-int/2addr v9, v10

    add-int/lit8 v8, v9, -0x30

    .line 82
    mul-int/lit8 v2, v2, 0xa

    move v4, v3

    .end local v3    # "i":I
    .restart local v4    # "i":I
    goto :goto_3

    .line 84
    :cond_4
    const/4 v9, 0x1

    if-eq v2, v9, :cond_5

    .line 85
    invoke-virtual {p0, v2, v8}, Lsun/misc/FDBigInt;->multaddMe(II)V

    .line 60
    :cond_5
    return-void
.end method

.method public constructor <init>(Lsun/misc/FDBigInt;)V
    .locals 4
    .param p1, "other"    # Lsun/misc/FDBigInt;

    .prologue
    const/4 v3, 0x0

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    iget v0, p1, Lsun/misc/FDBigInt;->nWords:I

    iput v0, p0, Lsun/misc/FDBigInt;->nWords:I

    new-array v0, v0, [I

    iput-object v0, p0, Lsun/misc/FDBigInt;->data:[I

    .line 52
    iget-object v0, p1, Lsun/misc/FDBigInt;->data:[I

    iget-object v1, p0, Lsun/misc/FDBigInt;->data:[I

    iget v2, p0, Lsun/misc/FDBigInt;->nWords:I

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy([II[III)V

    .line 50
    return-void
.end method

.method private constructor <init>([II)V
    .locals 0
    .param p1, "d"    # [I
    .param p2, "n"    # I

    .prologue
    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    iput-object p1, p0, Lsun/misc/FDBigInt;->data:[I

    .line 57
    iput p2, p0, Lsun/misc/FDBigInt;->nWords:I

    .line 55
    return-void
.end method

.method private static dataInRangeIsZero(IILsun/misc/FDBigInt;)Z
    .locals 3
    .param p0, "i"    # I
    .param p1, "m"    # I
    .param p2, "other"    # Lsun/misc/FDBigInt;

    .prologue
    const/4 v2, 0x0

    move v0, p0

    .line 341
    .end local p0    # "i":I
    .local v0, "i":I
    :goto_0
    if-ge v0, p1, :cond_1

    .line 342
    iget-object v1, p2, Lsun/misc/FDBigInt;->data:[I

    add-int/lit8 p0, v0, 0x1

    .end local v0    # "i":I
    .restart local p0    # "i":I
    aget v1, v1, v0

    if-eqz v1, :cond_0

    .line 343
    return v2

    :cond_0
    move v0, p0

    .end local p0    # "i":I
    .restart local v0    # "i":I
    goto :goto_0

    .line 344
    :cond_1
    const/4 v1, 0x1

    return v1
.end method


# virtual methods
.method public add(Lsun/misc/FDBigInt;)Lsun/misc/FDBigInt;
    .locals 14
    .param p1, "other"    # Lsun/misc/FDBigInt;

    .prologue
    .line 279
    const-wide/16 v2, 0x0

    .line 282
    .local v2, "c":J
    iget v10, p0, Lsun/misc/FDBigInt;->nWords:I

    iget v11, p1, Lsun/misc/FDBigInt;->nWords:I

    if-lt v10, v11, :cond_1

    .line 283
    iget-object v0, p0, Lsun/misc/FDBigInt;->data:[I

    .line 284
    .local v0, "a":[I
    iget v7, p0, Lsun/misc/FDBigInt;->nWords:I

    .line 285
    .local v7, "n":I
    iget-object v1, p1, Lsun/misc/FDBigInt;->data:[I

    .line 286
    .local v1, "b":[I
    iget v6, p1, Lsun/misc/FDBigInt;->nWords:I

    .line 293
    .local v6, "m":I
    :goto_0
    new-array v8, v7, [I

    .line 294
    .local v8, "r":[I
    const/4 v4, 0x0

    .local v4, "i":I
    move v5, v4

    .end local v4    # "i":I
    .local v5, "i":I
    :goto_1
    if-ge v5, v7, :cond_2

    .line 295
    aget v10, v0, v5

    int-to-long v10, v10

    const-wide v12, 0xffffffffL

    and-long/2addr v10, v12

    add-long/2addr v2, v10

    .line 296
    if-ge v5, v6, :cond_0

    .line 297
    aget v10, v1, v5

    int-to-long v10, v10

    const-wide v12, 0xffffffffL

    and-long/2addr v10, v12

    add-long/2addr v2, v10

    .line 299
    :cond_0
    long-to-int v10, v2

    aput v10, v8, v5

    .line 300
    const/16 v10, 0x20

    shr-long/2addr v2, v10

    .line 294
    add-int/lit8 v4, v5, 0x1

    .end local v5    # "i":I
    .restart local v4    # "i":I
    move v5, v4

    .end local v4    # "i":I
    .restart local v5    # "i":I
    goto :goto_1

    .line 288
    .end local v0    # "a":[I
    .end local v1    # "b":[I
    .end local v5    # "i":I
    .end local v6    # "m":I
    .end local v7    # "n":I
    .end local v8    # "r":[I
    :cond_1
    iget-object v0, p1, Lsun/misc/FDBigInt;->data:[I

    .line 289
    .restart local v0    # "a":[I
    iget v7, p1, Lsun/misc/FDBigInt;->nWords:I

    .line 290
    .restart local v7    # "n":I
    iget-object v1, p0, Lsun/misc/FDBigInt;->data:[I

    .line 291
    .restart local v1    # "b":[I
    iget v6, p0, Lsun/misc/FDBigInt;->nWords:I

    .restart local v6    # "m":I
    goto :goto_0

    .line 302
    .restart local v5    # "i":I
    .restart local v8    # "r":[I
    :cond_2
    const-wide/16 v10, 0x0

    cmp-long v10, v2, v10

    if-eqz v10, :cond_3

    .line 304
    array-length v10, v8

    add-int/lit8 v10, v10, 0x1

    new-array v9, v10, [I

    .line 305
    .local v9, "s":[I
    array-length v10, v8

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-static {v8, v11, v9, v12, v10}, Ljava/lang/System;->arraycopy([II[III)V

    .line 306
    add-int/lit8 v4, v5, 0x1

    .end local v5    # "i":I
    .restart local v4    # "i":I
    long-to-int v10, v2

    aput v10, v9, v5

    .line 307
    new-instance v10, Lsun/misc/FDBigInt;

    invoke-direct {v10, v9, v4}, Lsun/misc/FDBigInt;-><init>([II)V

    return-object v10

    .line 309
    .end local v4    # "i":I
    .end local v9    # "s":[I
    .restart local v5    # "i":I
    :cond_3
    new-instance v10, Lsun/misc/FDBigInt;

    invoke-direct {v10, v8, v5}, Lsun/misc/FDBigInt;-><init>([II)V

    return-object v10
.end method

.method public cmp(Lsun/misc/FDBigInt;)I
    .locals 8
    .param p1, "other"    # Lsun/misc/FDBigInt;

    .prologue
    const/4 v7, 0x1

    const/4 v6, -0x1

    .line 356
    iget v4, p0, Lsun/misc/FDBigInt;->nWords:I

    iget v5, p1, Lsun/misc/FDBigInt;->nWords:I

    if-le v4, v5, :cond_1

    .line 359
    iget v4, p1, Lsun/misc/FDBigInt;->nWords:I

    add-int/lit8 v3, v4, -0x1

    .line 360
    .local v3, "j":I
    iget v4, p0, Lsun/misc/FDBigInt;->nWords:I

    add-int/lit8 v2, v4, -0x1

    .local v2, "i":I
    :goto_0
    if-le v2, v3, :cond_4

    .line 361
    iget-object v4, p0, Lsun/misc/FDBigInt;->data:[I

    aget v4, v4, v2

    if-eqz v4, :cond_0

    return v7

    .line 360
    :cond_0
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 362
    .end local v2    # "i":I
    .end local v3    # "j":I
    :cond_1
    iget v4, p0, Lsun/misc/FDBigInt;->nWords:I

    iget v5, p1, Lsun/misc/FDBigInt;->nWords:I

    if-ge v4, v5, :cond_3

    .line 365
    iget v4, p0, Lsun/misc/FDBigInt;->nWords:I

    add-int/lit8 v3, v4, -0x1

    .line 366
    .restart local v3    # "j":I
    iget v4, p1, Lsun/misc/FDBigInt;->nWords:I

    add-int/lit8 v2, v4, -0x1

    .restart local v2    # "i":I
    :goto_1
    if-le v2, v3, :cond_4

    .line 367
    iget-object v4, p1, Lsun/misc/FDBigInt;->data:[I

    aget v4, v4, v2

    if-eqz v4, :cond_2

    return v6

    .line 366
    :cond_2
    add-int/lit8 v2, v2, -0x1

    goto :goto_1

    .line 369
    .end local v2    # "i":I
    .end local v3    # "j":I
    :cond_3
    iget v4, p0, Lsun/misc/FDBigInt;->nWords:I

    add-int/lit8 v2, v4, -0x1

    .line 371
    .restart local v2    # "i":I
    :cond_4
    :goto_2
    if-lez v2, :cond_5

    .line 372
    iget-object v4, p0, Lsun/misc/FDBigInt;->data:[I

    aget v4, v4, v2

    iget-object v5, p1, Lsun/misc/FDBigInt;->data:[I

    aget v5, v5, v2

    if-eq v4, v5, :cond_6

    .line 376
    :cond_5
    iget-object v4, p0, Lsun/misc/FDBigInt;->data:[I

    aget v0, v4, v2

    .line 377
    .local v0, "a":I
    iget-object v4, p1, Lsun/misc/FDBigInt;->data:[I

    aget v1, v4, v2

    .line 378
    .local v1, "b":I
    if-gez v0, :cond_8

    .line 380
    if-gez v1, :cond_7

    .line 381
    sub-int v4, v0, v1

    return v4

    .line 371
    .end local v0    # "a":I
    .end local v1    # "b":I
    :cond_6
    add-int/lit8 v2, v2, -0x1

    goto :goto_2

    .line 383
    .restart local v0    # "a":I
    .restart local v1    # "b":I
    :cond_7
    return v7

    .line 387
    :cond_8
    if-gez v1, :cond_9

    .line 389
    return v6

    .line 391
    :cond_9
    sub-int v4, v0, v1

    return v4
.end method

.method public longValue()J
    .locals 6

    .prologue
    const-wide v4, 0xffffffffL

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 467
    sget-boolean v0, Lsun/misc/FDBigInt;->-assertionsDisabled:Z

    if-nez v0, :cond_1

    iget v0, p0, Lsun/misc/FDBigInt;->nWords:I

    if-lez v0, :cond_0

    move v0, v1

    :goto_0
    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/AssertionError;

    iget v1, p0, Lsun/misc/FDBigInt;->nWords:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    :cond_0
    move v0, v2

    goto :goto_0

    .line 469
    :cond_1
    iget v0, p0, Lsun/misc/FDBigInt;->nWords:I

    if-ne v0, v1, :cond_2

    .line 470
    iget-object v0, p0, Lsun/misc/FDBigInt;->data:[I

    aget v0, v0, v2

    int-to-long v0, v0

    and-long/2addr v0, v4

    return-wide v0

    .line 472
    :cond_2
    sget-boolean v0, Lsun/misc/FDBigInt;->-assertionsDisabled:Z

    if-nez v0, :cond_3

    iget v0, p0, Lsun/misc/FDBigInt;->nWords:I

    const/4 v3, 0x2

    invoke-static {v3, v0, p0}, Lsun/misc/FDBigInt;->dataInRangeIsZero(IILsun/misc/FDBigInt;)Z

    move-result v0

    if-nez v0, :cond_3

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 473
    :cond_3
    sget-boolean v0, Lsun/misc/FDBigInt;->-assertionsDisabled:Z

    if-nez v0, :cond_5

    iget-object v0, p0, Lsun/misc/FDBigInt;->data:[I

    aget v0, v0, v1

    if-ltz v0, :cond_4

    move v0, v1

    :goto_1
    if-nez v0, :cond_5

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_4
    move v0, v2

    goto :goto_1

    .line 474
    :cond_5
    iget-object v0, p0, Lsun/misc/FDBigInt;->data:[I

    aget v0, v0, v1

    int-to-long v0, v0

    const/16 v3, 0x20

    shl-long/2addr v0, v3

    iget-object v3, p0, Lsun/misc/FDBigInt;->data:[I

    aget v2, v3, v2

    int-to-long v2, v2

    and-long/2addr v2, v4

    or-long/2addr v0, v2

    return-wide v0
.end method

.method public lshiftMe(I)V
    .locals 12
    .param p1, "c"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 95
    if-gtz p1, :cond_1

    .line 96
    if-nez p1, :cond_0

    .line 97
    return-void

    .line 99
    :cond_0
    new-instance v8, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v9, "negative shift count"

    invoke-direct {v8, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 101
    :cond_1
    shr-int/lit8 v7, p1, 0x5

    .line 102
    .local v7, "wordcount":I
    and-int/lit8 v1, p1, 0x1f

    .line 103
    .local v1, "bitcount":I
    rsub-int/lit8 v0, v1, 0x20

    .line 104
    .local v0, "anticount":I
    iget-object v4, p0, Lsun/misc/FDBigInt;->data:[I

    .line 105
    .local v4, "t":[I
    iget-object v2, p0, Lsun/misc/FDBigInt;->data:[I

    .line 106
    .local v2, "s":[I
    iget v8, p0, Lsun/misc/FDBigInt;->nWords:I

    add-int/2addr v8, v7

    add-int/lit8 v8, v8, 0x1

    array-length v9, v4

    if-le v8, v9, :cond_2

    .line 108
    iget v8, p0, Lsun/misc/FDBigInt;->nWords:I

    add-int/2addr v8, v7

    add-int/lit8 v8, v8, 0x1

    new-array v4, v8, [I

    .line 110
    :cond_2
    iget v8, p0, Lsun/misc/FDBigInt;->nWords:I

    add-int v5, v8, v7

    .line 111
    .local v5, "target":I
    iget v8, p0, Lsun/misc/FDBigInt;->nWords:I

    add-int/lit8 v3, v8, -0x1

    .line 112
    .local v3, "src":I
    if-nez v1, :cond_3

    .line 114
    iget v8, p0, Lsun/misc/FDBigInt;->nWords:I

    invoke-static {v2, v10, v4, v7, v8}, Ljava/lang/System;->arraycopy([II[III)V

    .line 115
    add-int/lit8 v5, v7, -0x1

    move v6, v5

    .line 123
    .end local v5    # "target":I
    .local v6, "target":I
    :goto_0
    if-ltz v6, :cond_5

    .line 124
    add-int/lit8 v5, v6, -0x1

    .end local v6    # "target":I
    .restart local v5    # "target":I
    aput v10, v4, v6

    move v6, v5

    .end local v5    # "target":I
    .restart local v6    # "target":I
    goto :goto_0

    .line 117
    .end local v6    # "target":I
    .restart local v5    # "target":I
    :cond_3
    add-int/lit8 v6, v5, -0x1

    .end local v5    # "target":I
    .restart local v6    # "target":I
    aget v8, v2, v3

    ushr-int/2addr v8, v0

    aput v8, v4, v5

    .line 118
    :goto_1
    if-lt v3, v11, :cond_4

    .line 119
    add-int/lit8 v5, v6, -0x1

    .end local v6    # "target":I
    .restart local v5    # "target":I
    aget v8, v2, v3

    shl-int/2addr v8, v1

    add-int/lit8 v3, v3, -0x1

    aget v9, v2, v3

    ushr-int/2addr v9, v0

    or-int/2addr v8, v9

    aput v8, v4, v6

    move v6, v5

    .end local v5    # "target":I
    .restart local v6    # "target":I
    goto :goto_1

    .line 121
    :cond_4
    add-int/lit8 v5, v6, -0x1

    .end local v6    # "target":I
    .restart local v5    # "target":I
    aget v8, v2, v3

    shl-int/2addr v8, v1

    aput v8, v4, v6

    move v6, v5

    .end local v5    # "target":I
    .restart local v6    # "target":I
    goto :goto_0

    .line 126
    :cond_5
    iput-object v4, p0, Lsun/misc/FDBigInt;->data:[I

    .line 127
    iget v8, p0, Lsun/misc/FDBigInt;->nWords:I

    add-int/lit8 v9, v7, 0x1

    add-int/2addr v8, v9

    iput v8, p0, Lsun/misc/FDBigInt;->nWords:I

    .line 130
    :goto_2
    iget v8, p0, Lsun/misc/FDBigInt;->nWords:I

    if-le v8, v11, :cond_6

    iget-object v8, p0, Lsun/misc/FDBigInt;->data:[I

    iget v9, p0, Lsun/misc/FDBigInt;->nWords:I

    add-int/lit8 v9, v9, -0x1

    aget v8, v8, v9

    if-nez v8, :cond_6

    .line 131
    iget v8, p0, Lsun/misc/FDBigInt;->nWords:I

    add-int/lit8 v8, v8, -0x1

    iput v8, p0, Lsun/misc/FDBigInt;->nWords:I

    goto :goto_2

    .line 94
    :cond_6
    return-void
.end method

.method public mult(I)Lsun/misc/FDBigInt;
    .locals 12
    .param p1, "iv"    # I

    .prologue
    const-wide v10, 0xffffffffL

    .line 197
    int-to-long v4, p1

    .line 202
    .local v4, "v":J
    iget-object v6, p0, Lsun/misc/FDBigInt;->data:[I

    iget v7, p0, Lsun/misc/FDBigInt;->nWords:I

    add-int/lit8 v7, v7, -0x1

    aget v6, v6, v7

    int-to-long v6, v6

    and-long/2addr v6, v10

    mul-long/2addr v6, v4

    const-wide/32 v8, 0xfffffff

    cmp-long v6, v6, v8

    if-lez v6, :cond_0

    iget v6, p0, Lsun/misc/FDBigInt;->nWords:I

    add-int/lit8 v6, v6, 0x1

    :goto_0
    new-array v1, v6, [I

    .line 203
    .local v1, "r":[I
    const-wide/16 v2, 0x0

    .line 204
    .local v2, "p":J
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget v6, p0, Lsun/misc/FDBigInt;->nWords:I

    if-ge v0, v6, :cond_1

    .line 205
    iget-object v6, p0, Lsun/misc/FDBigInt;->data:[I

    aget v6, v6, v0

    int-to-long v6, v6

    and-long/2addr v6, v10

    mul-long/2addr v6, v4

    add-long/2addr v2, v6

    .line 206
    long-to-int v6, v2

    aput v6, v1, v0

    .line 207
    const/16 v6, 0x20

    ushr-long/2addr v2, v6

    .line 204
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 202
    .end local v0    # "i":I
    .end local v1    # "r":[I
    .end local v2    # "p":J
    :cond_0
    iget v6, p0, Lsun/misc/FDBigInt;->nWords:I

    goto :goto_0

    .line 209
    .restart local v0    # "i":I
    .restart local v1    # "r":[I
    .restart local v2    # "p":J
    :cond_1
    const-wide/16 v6, 0x0

    cmp-long v6, v2, v6

    if-nez v6, :cond_2

    .line 210
    new-instance v6, Lsun/misc/FDBigInt;

    iget v7, p0, Lsun/misc/FDBigInt;->nWords:I

    invoke-direct {v6, v1, v7}, Lsun/misc/FDBigInt;-><init>([II)V

    return-object v6

    .line 212
    :cond_2
    iget v6, p0, Lsun/misc/FDBigInt;->nWords:I

    long-to-int v7, v2

    aput v7, v1, v6

    .line 213
    new-instance v6, Lsun/misc/FDBigInt;

    iget v7, p0, Lsun/misc/FDBigInt;->nWords:I

    add-int/lit8 v7, v7, 0x1

    invoke-direct {v6, v1, v7}, Lsun/misc/FDBigInt;-><init>([II)V

    return-object v6
.end method

.method public mult(Lsun/misc/FDBigInt;)Lsun/misc/FDBigInt;
    .locals 14
    .param p1, "other"    # Lsun/misc/FDBigInt;

    .prologue
    const-wide v12, 0xffffffffL

    .line 249
    iget v5, p0, Lsun/misc/FDBigInt;->nWords:I

    iget v8, p1, Lsun/misc/FDBigInt;->nWords:I

    add-int/2addr v5, v8

    new-array v4, v5, [I

    .line 253
    .local v4, "r":[I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v5, p0, Lsun/misc/FDBigInt;->nWords:I

    if-ge v0, v5, :cond_1

    .line 254
    iget-object v5, p0, Lsun/misc/FDBigInt;->data:[I

    aget v5, v5, v0

    int-to-long v8, v5

    and-long v6, v8, v12

    .line 255
    .local v6, "v":J
    const-wide/16 v2, 0x0

    .line 257
    .local v2, "p":J
    const/4 v1, 0x0

    .local v1, "j":I
    :goto_1
    iget v5, p1, Lsun/misc/FDBigInt;->nWords:I

    if-ge v1, v5, :cond_0

    .line 258
    add-int v5, v0, v1

    aget v5, v4, v5

    int-to-long v8, v5

    and-long/2addr v8, v12

    iget-object v5, p1, Lsun/misc/FDBigInt;->data:[I

    aget v5, v5, v1

    int-to-long v10, v5

    and-long/2addr v10, v12

    mul-long/2addr v10, v6

    add-long/2addr v8, v10

    add-long/2addr v2, v8

    .line 259
    add-int v5, v0, v1

    long-to-int v8, v2

    aput v8, v4, v5

    .line 260
    const/16 v5, 0x20

    ushr-long/2addr v2, v5

    .line 257
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 262
    :cond_0
    add-int v5, v0, v1

    long-to-int v8, v2

    aput v8, v4, v5

    .line 253
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 265
    .end local v1    # "j":I
    .end local v2    # "p":J
    .end local v6    # "v":J
    :cond_1
    array-length v5, v4

    add-int/lit8 v0, v5, -0x1

    :goto_2
    if-lez v0, :cond_2

    .line 266
    aget v5, v4, v0

    if-eqz v5, :cond_3

    .line 268
    :cond_2
    new-instance v5, Lsun/misc/FDBigInt;

    add-int/lit8 v8, v0, 0x1

    invoke-direct {v5, v4, v8}, Lsun/misc/FDBigInt;-><init>([II)V

    return-object v5

    .line 265
    :cond_3
    add-int/lit8 v0, v0, -0x1

    goto :goto_2
.end method

.method public multaddMe(II)V
    .locals 12
    .param p1, "iv"    # I
    .param p2, "addend"    # I

    .prologue
    .line 224
    int-to-long v4, p1

    .line 228
    .local v4, "v":J
    iget-object v1, p0, Lsun/misc/FDBigInt;->data:[I

    const/4 v6, 0x0

    aget v1, v1, v6

    int-to-long v6, v1

    const-wide v8, 0xffffffffL

    and-long/2addr v6, v8

    mul-long/2addr v6, v4

    int-to-long v8, p2

    const-wide v10, 0xffffffffL

    and-long/2addr v8, v10

    add-long v2, v6, v8

    .line 229
    .local v2, "p":J
    iget-object v1, p0, Lsun/misc/FDBigInt;->data:[I

    long-to-int v6, v2

    const/4 v7, 0x0

    aput v6, v1, v7

    .line 230
    const/16 v1, 0x20

    ushr-long/2addr v2, v1

    .line 231
    const/4 v0, 0x1

    .local v0, "i":I
    :goto_0
    iget v1, p0, Lsun/misc/FDBigInt;->nWords:I

    if-ge v0, v1, :cond_0

    .line 232
    iget-object v1, p0, Lsun/misc/FDBigInt;->data:[I

    aget v1, v1, v0

    int-to-long v6, v1

    const-wide v8, 0xffffffffL

    and-long/2addr v6, v8

    mul-long/2addr v6, v4

    add-long/2addr v2, v6

    .line 233
    iget-object v1, p0, Lsun/misc/FDBigInt;->data:[I

    long-to-int v6, v2

    aput v6, v1, v0

    .line 234
    const/16 v1, 0x20

    ushr-long/2addr v2, v1

    .line 231
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 236
    :cond_0
    const-wide/16 v6, 0x0

    cmp-long v1, v2, v6

    if-eqz v1, :cond_1

    .line 237
    iget-object v1, p0, Lsun/misc/FDBigInt;->data:[I

    iget v6, p0, Lsun/misc/FDBigInt;->nWords:I

    long-to-int v7, v2

    aput v7, v1, v6

    .line 238
    iget v1, p0, Lsun/misc/FDBigInt;->nWords:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lsun/misc/FDBigInt;->nWords:I

    .line 223
    :cond_1
    return-void
.end method

.method public normalizeMe()I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    const/high16 v5, -0x10000000

    .line 148
    const/4 v3, 0x0

    .line 149
    .local v3, "wordcount":I
    const/4 v0, 0x0

    .line 150
    .local v0, "bitcount":I
    const/4 v2, 0x0

    .line 151
    .local v2, "v":I
    iget v4, p0, Lsun/misc/FDBigInt;->nWords:I

    add-int/lit8 v1, v4, -0x1

    .local v1, "src":I
    :goto_0
    if-ltz v1, :cond_0

    iget-object v4, p0, Lsun/misc/FDBigInt;->data:[I

    aget v2, v4, v1

    if-nez v2, :cond_0

    .line 152
    add-int/lit8 v3, v3, 0x1

    .line 151
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 154
    :cond_0
    if-gez v1, :cond_1

    .line 156
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v5, "zero value"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 164
    :cond_1
    iget v4, p0, Lsun/misc/FDBigInt;->nWords:I

    sub-int/2addr v4, v3

    iput v4, p0, Lsun/misc/FDBigInt;->nWords:I

    .line 170
    and-int v4, v2, v5

    if-eqz v4, :cond_2

    .line 173
    const/16 v0, 0x20

    :goto_1
    and-int v4, v2, v5

    if-eqz v4, :cond_4

    .line 174
    ushr-int/lit8 v2, v2, 0x1

    .line 173
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    .line 176
    :cond_2
    :goto_2
    const v4, 0xfffff

    if-gt v2, v4, :cond_3

    .line 178
    shl-int/lit8 v2, v2, 0x8

    .line 179
    add-int/lit8 v0, v0, 0x8

    goto :goto_2

    .line 181
    :cond_3
    :goto_3
    const v4, 0x7ffffff

    if-gt v2, v4, :cond_4

    .line 182
    shl-int/lit8 v2, v2, 0x1

    .line 183
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 186
    :cond_4
    if-eqz v0, :cond_5

    .line 187
    invoke-virtual {p0, v0}, Lsun/misc/FDBigInt;->lshiftMe(I)V

    .line 188
    :cond_5
    return v0
.end method

.method public quoRemIteration(Lsun/misc/FDBigInt;)I
    .locals 18
    .param p1, "S"    # Lsun/misc/FDBigInt;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 412
    move-object/from16 v0, p0

    iget v12, v0, Lsun/misc/FDBigInt;->nWords:I

    move-object/from16 v0, p1

    iget v13, v0, Lsun/misc/FDBigInt;->nWords:I

    if-eq v12, v13, :cond_0

    .line 413
    new-instance v12, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v13, "disparate values"

    invoke-direct {v12, v13}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v12

    .line 418
    :cond_0
    move-object/from16 v0, p0

    iget v12, v0, Lsun/misc/FDBigInt;->nWords:I

    add-int/lit8 v5, v12, -0x1

    .line 419
    .local v5, "n":I
    move-object/from16 v0, p0

    iget-object v12, v0, Lsun/misc/FDBigInt;->data:[I

    aget v12, v12, v5

    int-to-long v12, v12

    const-wide v14, 0xffffffffL

    and-long/2addr v12, v14

    move-object/from16 v0, p1

    iget-object v14, v0, Lsun/misc/FDBigInt;->data:[I

    aget v14, v14, v5

    int-to-long v14, v14

    div-long v8, v12, v14

    .line 420
    .local v8, "q":J
    const-wide/16 v2, 0x0

    .line 421
    .local v2, "diff":J
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    if-gt v4, v5, :cond_1

    .line 422
    move-object/from16 v0, p0

    iget-object v12, v0, Lsun/misc/FDBigInt;->data:[I

    aget v12, v12, v4

    int-to-long v12, v12

    const-wide v14, 0xffffffffL

    and-long/2addr v12, v14

    move-object/from16 v0, p1

    iget-object v14, v0, Lsun/misc/FDBigInt;->data:[I

    aget v14, v14, v4

    int-to-long v14, v14

    const-wide v16, 0xffffffffL

    and-long v14, v14, v16

    mul-long/2addr v14, v8

    sub-long/2addr v12, v14

    add-long/2addr v2, v12

    .line 423
    move-object/from16 v0, p0

    iget-object v12, v0, Lsun/misc/FDBigInt;->data:[I

    long-to-int v13, v2

    aput v13, v12, v4

    .line 424
    const/16 v12, 0x20

    shr-long/2addr v2, v12

    .line 421
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 426
    :cond_1
    const-wide/16 v12, 0x0

    cmp-long v12, v2, v12

    if-eqz v12, :cond_6

    .line 430
    const-wide/16 v10, 0x0

    .line 431
    .local v10, "sum":J
    :goto_1
    const-wide/16 v12, 0x0

    cmp-long v12, v10, v12

    if-nez v12, :cond_6

    .line 432
    const-wide/16 v10, 0x0

    .line 433
    const/4 v4, 0x0

    :goto_2
    if-gt v4, v5, :cond_2

    .line 434
    move-object/from16 v0, p0

    iget-object v12, v0, Lsun/misc/FDBigInt;->data:[I

    aget v12, v12, v4

    int-to-long v12, v12

    const-wide v14, 0xffffffffL

    and-long/2addr v12, v14

    move-object/from16 v0, p1

    iget-object v14, v0, Lsun/misc/FDBigInt;->data:[I

    aget v14, v14, v4

    int-to-long v14, v14

    const-wide v16, 0xffffffffL

    and-long v14, v14, v16

    add-long/2addr v12, v14

    add-long/2addr v10, v12

    .line 435
    move-object/from16 v0, p0

    iget-object v12, v0, Lsun/misc/FDBigInt;->data:[I

    long-to-int v13, v10

    aput v13, v12, v4

    .line 436
    const/16 v12, 0x20

    shr-long/2addr v10, v12

    .line 433
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 447
    :cond_2
    sget-boolean v12, Lsun/misc/FDBigInt;->-assertionsDisabled:Z

    if-nez v12, :cond_5

    const-wide/16 v12, 0x0

    cmp-long v12, v10, v12

    if-eqz v12, :cond_3

    const-wide/16 v12, 0x1

    cmp-long v12, v10, v12

    if-nez v12, :cond_4

    :cond_3
    const/4 v12, 0x1

    :goto_3
    if-nez v12, :cond_5

    new-instance v12, Ljava/lang/AssertionError;

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    invoke-direct {v12, v13}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v12

    :cond_4
    const/4 v12, 0x0

    goto :goto_3

    .line 448
    :cond_5
    const-wide/16 v12, 0x1

    sub-long/2addr v8, v12

    goto :goto_1

    .line 454
    .end local v10    # "sum":J
    :cond_6
    const-wide/16 v6, 0x0

    .line 455
    .local v6, "p":J
    const/4 v4, 0x0

    :goto_4
    if-gt v4, v5, :cond_7

    .line 456
    move-object/from16 v0, p0

    iget-object v12, v0, Lsun/misc/FDBigInt;->data:[I

    aget v12, v12, v4

    int-to-long v12, v12

    const-wide v14, 0xffffffffL

    and-long/2addr v12, v14

    const-wide/16 v14, 0xa

    mul-long/2addr v12, v14

    add-long/2addr v6, v12

    .line 457
    move-object/from16 v0, p0

    iget-object v12, v0, Lsun/misc/FDBigInt;->data:[I

    long-to-int v13, v6

    aput v13, v12, v4

    .line 458
    const/16 v12, 0x20

    shr-long/2addr v6, v12

    .line 455
    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    .line 460
    :cond_7
    sget-boolean v12, Lsun/misc/FDBigInt;->-assertionsDisabled:Z

    if-nez v12, :cond_9

    const-wide/16 v12, 0x0

    cmp-long v12, v6, v12

    if-nez v12, :cond_8

    const/4 v12, 0x1

    :goto_5
    if-nez v12, :cond_9

    new-instance v12, Ljava/lang/AssertionError;

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    invoke-direct {v12, v13}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v12

    :cond_8
    const/4 v12, 0x0

    goto :goto_5

    .line 461
    :cond_9
    long-to-int v12, v8

    return v12
.end method

.method public sub(Lsun/misc/FDBigInt;)Lsun/misc/FDBigInt;
    .locals 12
    .param p1, "other"    # Lsun/misc/FDBigInt;

    .prologue
    const-wide v10, 0xffffffffL

    const/4 v7, 0x0

    .line 318
    iget v8, p0, Lsun/misc/FDBigInt;->nWords:I

    new-array v6, v8, [I

    .line 320
    .local v6, "r":[I
    iget v4, p0, Lsun/misc/FDBigInt;->nWords:I

    .line 321
    .local v4, "n":I
    iget v3, p1, Lsun/misc/FDBigInt;->nWords:I

    .line 322
    .local v3, "m":I
    const/4 v5, 0x0

    .line 323
    .local v5, "nzeros":I
    const-wide/16 v0, 0x0

    .line 324
    .local v0, "c":J
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v4, :cond_2

    .line 325
    iget-object v8, p0, Lsun/misc/FDBigInt;->data:[I

    aget v8, v8, v2

    int-to-long v8, v8

    and-long/2addr v8, v10

    add-long/2addr v0, v8

    .line 326
    if-ge v2, v3, :cond_0

    .line 327
    iget-object v8, p1, Lsun/misc/FDBigInt;->data:[I

    aget v8, v8, v2

    int-to-long v8, v8

    and-long/2addr v8, v10

    sub-long/2addr v0, v8

    .line 329
    :cond_0
    long-to-int v8, v0

    aput v8, v6, v2

    if-nez v8, :cond_1

    .line 330
    add-int/lit8 v5, v5, 0x1

    .line 333
    :goto_1
    const/16 v8, 0x20

    shr-long/2addr v0, v8

    .line 324
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 332
    :cond_1
    const/4 v5, 0x0

    goto :goto_1

    .line 335
    :cond_2
    sget-boolean v8, Lsun/misc/FDBigInt;->-assertionsDisabled:Z

    if-nez v8, :cond_4

    const-wide/16 v8, 0x0

    cmp-long v8, v0, v8

    if-nez v8, :cond_3

    const/4 v7, 0x1

    :cond_3
    if-nez v7, :cond_4

    new-instance v7, Ljava/lang/AssertionError;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v7

    .line 336
    :cond_4
    sget-boolean v7, Lsun/misc/FDBigInt;->-assertionsDisabled:Z

    if-nez v7, :cond_5

    invoke-static {v2, v3, p1}, Lsun/misc/FDBigInt;->dataInRangeIsZero(IILsun/misc/FDBigInt;)Z

    move-result v7

    if-nez v7, :cond_5

    new-instance v7, Ljava/lang/AssertionError;

    invoke-direct {v7}, Ljava/lang/AssertionError;-><init>()V

    throw v7

    .line 337
    :cond_5
    new-instance v7, Lsun/misc/FDBigInt;

    sub-int v8, v4, v5

    invoke-direct {v7, v6, v8}, Lsun/misc/FDBigInt;-><init>([II)V

    return-object v7
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 479
    new-instance v1, Ljava/lang/StringBuffer;

    const/16 v2, 0x1e

    invoke-direct {v1, v2}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 480
    .local v1, "r":Ljava/lang/StringBuffer;
    const/16 v2, 0x5b

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 481
    iget v2, p0, Lsun/misc/FDBigInt;->nWords:I

    add-int/lit8 v2, v2, -0x1

    iget-object v3, p0, Lsun/misc/FDBigInt;->data:[I

    array-length v3, v3

    add-int/lit8 v3, v3, -0x1

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 482
    .local v0, "i":I
    iget v2, p0, Lsun/misc/FDBigInt;->nWords:I

    iget-object v3, p0, Lsun/misc/FDBigInt;->data:[I

    array-length v3, v3

    if-le v2, v3, :cond_0

    .line 483
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lsun/misc/FDBigInt;->data:[I

    array-length v3, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "<"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lsun/misc/FDBigInt;->nWords:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "!)"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 485
    :cond_0
    :goto_0
    if-lez v0, :cond_1

    .line 486
    iget-object v2, p0, Lsun/misc/FDBigInt;->data:[I

    aget v2, v2, v0

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 487
    const/16 v2, 0x20

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 485
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 489
    :cond_1
    iget-object v2, p0, Lsun/misc/FDBigInt;->data:[I

    aget v2, v2, v4

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 490
    const/16 v2, 0x5d

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 491
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v1}, Ljava/lang/String;-><init>(Ljava/lang/StringBuffer;)V

    return-object v2
.end method
