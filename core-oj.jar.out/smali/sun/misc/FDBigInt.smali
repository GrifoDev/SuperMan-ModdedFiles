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

    const-class v0, Lsun/misc/FDBigInt;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    sput-boolean v0, Lsun/misc/FDBigInt;->-assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public constructor <init>(I)V
    .locals 2

    const/4 v0, 0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v0, p0, Lsun/misc/FDBigInt;->nWords:I

    new-array v0, v0, [I

    iput-object v0, p0, Lsun/misc/FDBigInt;->data:[I

    iget-object v0, p0, Lsun/misc/FDBigInt;->data:[I

    const/4 v1, 0x0

    aput p1, v0, v1

    return-void
.end method

.method public constructor <init>(J)V
    .locals 7

    const/4 v1, 0x2

    const/4 v4, 0x0

    const/4 v0, 0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-array v2, v1, [I

    iput-object v2, p0, Lsun/misc/FDBigInt;->data:[I

    iget-object v2, p0, Lsun/misc/FDBigInt;->data:[I

    long-to-int v3, p1

    aput v3, v2, v4

    iget-object v2, p0, Lsun/misc/FDBigInt;->data:[I

    const/16 v3, 0x20

    ushr-long v4, p1, v3

    long-to-int v3, v4

    aput v3, v2, v0

    iget-object v2, p0, Lsun/misc/FDBigInt;->data:[I

    aget v2, v2, v0

    if-nez v2, :cond_0

    :goto_0
    iput v0, p0, Lsun/misc/FDBigInt;->nWords:I

    return-void

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method public constructor <init>(J[CII)V
    .locals 13

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    add-int/lit8 v9, p5, 0x8

    div-int/lit8 v7, v9, 0x9

    const/4 v9, 0x2

    if-ge v7, v9, :cond_0

    const/4 v7, 0x2

    :cond_0
    new-array v9, v7, [I

    iput-object v9, p0, Lsun/misc/FDBigInt;->data:[I

    iget-object v9, p0, Lsun/misc/FDBigInt;->data:[I

    long-to-int v10, p1

    const/4 v11, 0x0

    aput v10, v9, v11

    iget-object v9, p0, Lsun/misc/FDBigInt;->data:[I

    const/16 v10, 0x20

    ushr-long v10, p1, v10

    long-to-int v10, v10

    const/4 v11, 0x1

    aput v10, v9, v11

    iget-object v9, p0, Lsun/misc/FDBigInt;->data:[I

    const/4 v10, 0x1

    aget v9, v9, v10

    if-nez v9, :cond_1

    const/4 v9, 0x1

    :goto_0
    iput v9, p0, Lsun/misc/FDBigInt;->nWords:I

    move/from16 v3, p4

    add-int/lit8 v6, p5, -0x5

    move v4, v3

    :goto_1
    if-ge v4, v6, :cond_3

    add-int/lit8 v5, v4, 0x5

    add-int/lit8 v3, v4, 0x1

    aget-char v9, p3, v4

    add-int/lit8 v8, v9, -0x30

    move v4, v3

    :goto_2
    if-ge v4, v5, :cond_2

    mul-int/lit8 v9, v8, 0xa

    add-int/lit8 v3, v4, 0x1

    aget-char v10, p3, v4

    add-int/2addr v9, v10

    add-int/lit8 v8, v9, -0x30

    move v4, v3

    goto :goto_2

    :cond_1
    const/4 v9, 0x2

    goto :goto_0

    :cond_2
    const v9, 0x186a0

    invoke-virtual {p0, v9, v8}, Lsun/misc/FDBigInt;->multaddMe(II)V

    goto :goto_1

    :cond_3
    const/4 v2, 0x1

    const/4 v8, 0x0

    :goto_3
    move/from16 v0, p5

    if-ge v4, v0, :cond_4

    mul-int/lit8 v9, v8, 0xa

    add-int/lit8 v3, v4, 0x1

    aget-char v10, p3, v4

    add-int/2addr v9, v10

    add-int/lit8 v8, v9, -0x30

    mul-int/lit8 v2, v2, 0xa

    move v4, v3

    goto :goto_3

    :cond_4
    const/4 v9, 0x1

    if-eq v2, v9, :cond_5

    invoke-virtual {p0, v2, v8}, Lsun/misc/FDBigInt;->multaddMe(II)V

    :cond_5
    return-void
.end method

.method public constructor <init>(Lsun/misc/FDBigInt;)V
    .locals 4

    const/4 v3, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget v0, p1, Lsun/misc/FDBigInt;->nWords:I

    iput v0, p0, Lsun/misc/FDBigInt;->nWords:I

    new-array v0, v0, [I

    iput-object v0, p0, Lsun/misc/FDBigInt;->data:[I

    iget-object v0, p1, Lsun/misc/FDBigInt;->data:[I

    iget-object v1, p0, Lsun/misc/FDBigInt;->data:[I

    iget v2, p0, Lsun/misc/FDBigInt;->nWords:I

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy([II[III)V

    return-void
.end method

.method private constructor <init>([II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lsun/misc/FDBigInt;->data:[I

    iput p2, p0, Lsun/misc/FDBigInt;->nWords:I

    return-void
.end method

.method private static dataInRangeIsZero(IILsun/misc/FDBigInt;)Z
    .locals 3

    const/4 v2, 0x0

    move v0, p0

    :goto_0
    if-ge v0, p1, :cond_1

    iget-object v1, p2, Lsun/misc/FDBigInt;->data:[I

    add-int/lit8 p0, v0, 0x1

    aget v1, v1, v0

    if-eqz v1, :cond_0

    return v2

    :cond_0
    move v0, p0

    goto :goto_0

    :cond_1
    const/4 v1, 0x1

    return v1
.end method


# virtual methods
.method public add(Lsun/misc/FDBigInt;)Lsun/misc/FDBigInt;
    .locals 14

    const-wide/16 v2, 0x0

    iget v10, p0, Lsun/misc/FDBigInt;->nWords:I

    iget v11, p1, Lsun/misc/FDBigInt;->nWords:I

    if-lt v10, v11, :cond_1

    iget-object v0, p0, Lsun/misc/FDBigInt;->data:[I

    iget v7, p0, Lsun/misc/FDBigInt;->nWords:I

    iget-object v1, p1, Lsun/misc/FDBigInt;->data:[I

    iget v6, p1, Lsun/misc/FDBigInt;->nWords:I

    :goto_0
    new-array v8, v7, [I

    const/4 v4, 0x0

    move v5, v4

    :goto_1
    if-ge v5, v7, :cond_2

    aget v10, v0, v5

    int-to-long v10, v10

    const-wide v12, 0xffffffffL

    and-long/2addr v10, v12

    add-long/2addr v2, v10

    if-ge v5, v6, :cond_0

    aget v10, v1, v5

    int-to-long v10, v10

    const-wide v12, 0xffffffffL

    and-long/2addr v10, v12

    add-long/2addr v2, v10

    :cond_0
    long-to-int v10, v2

    aput v10, v8, v5

    const/16 v10, 0x20

    shr-long/2addr v2, v10

    add-int/lit8 v4, v5, 0x1

    move v5, v4

    goto :goto_1

    :cond_1
    iget-object v0, p1, Lsun/misc/FDBigInt;->data:[I

    iget v7, p1, Lsun/misc/FDBigInt;->nWords:I

    iget-object v1, p0, Lsun/misc/FDBigInt;->data:[I

    iget v6, p0, Lsun/misc/FDBigInt;->nWords:I

    goto :goto_0

    :cond_2
    const-wide/16 v10, 0x0

    cmp-long v10, v2, v10

    if-eqz v10, :cond_3

    array-length v10, v8

    add-int/lit8 v10, v10, 0x1

    new-array v9, v10, [I

    array-length v10, v8

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-static {v8, v11, v9, v12, v10}, Ljava/lang/System;->arraycopy([II[III)V

    add-int/lit8 v4, v5, 0x1

    long-to-int v10, v2

    aput v10, v9, v5

    new-instance v10, Lsun/misc/FDBigInt;

    invoke-direct {v10, v9, v4}, Lsun/misc/FDBigInt;-><init>([II)V

    return-object v10

    :cond_3
    new-instance v10, Lsun/misc/FDBigInt;

    invoke-direct {v10, v8, v5}, Lsun/misc/FDBigInt;-><init>([II)V

    return-object v10
.end method

.method public cmp(Lsun/misc/FDBigInt;)I
    .locals 8

    const/4 v7, 0x1

    const/4 v6, -0x1

    iget v4, p0, Lsun/misc/FDBigInt;->nWords:I

    iget v5, p1, Lsun/misc/FDBigInt;->nWords:I

    if-le v4, v5, :cond_1

    iget v4, p1, Lsun/misc/FDBigInt;->nWords:I

    add-int/lit8 v3, v4, -0x1

    iget v4, p0, Lsun/misc/FDBigInt;->nWords:I

    add-int/lit8 v2, v4, -0x1

    :goto_0
    if-le v2, v3, :cond_4

    iget-object v4, p0, Lsun/misc/FDBigInt;->data:[I

    aget v4, v4, v2

    if-eqz v4, :cond_0

    return v7

    :cond_0
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    :cond_1
    iget v4, p0, Lsun/misc/FDBigInt;->nWords:I

    iget v5, p1, Lsun/misc/FDBigInt;->nWords:I

    if-ge v4, v5, :cond_3

    iget v4, p0, Lsun/misc/FDBigInt;->nWords:I

    add-int/lit8 v3, v4, -0x1

    iget v4, p1, Lsun/misc/FDBigInt;->nWords:I

    add-int/lit8 v2, v4, -0x1

    :goto_1
    if-le v2, v3, :cond_4

    iget-object v4, p1, Lsun/misc/FDBigInt;->data:[I

    aget v4, v4, v2

    if-eqz v4, :cond_2

    return v6

    :cond_2
    add-int/lit8 v2, v2, -0x1

    goto :goto_1

    :cond_3
    iget v4, p0, Lsun/misc/FDBigInt;->nWords:I

    add-int/lit8 v2, v4, -0x1

    :cond_4
    :goto_2
    if-lez v2, :cond_5

    iget-object v4, p0, Lsun/misc/FDBigInt;->data:[I

    aget v4, v4, v2

    iget-object v5, p1, Lsun/misc/FDBigInt;->data:[I

    aget v5, v5, v2

    if-eq v4, v5, :cond_6

    :cond_5
    iget-object v4, p0, Lsun/misc/FDBigInt;->data:[I

    aget v0, v4, v2

    iget-object v4, p1, Lsun/misc/FDBigInt;->data:[I

    aget v1, v4, v2

    if-gez v0, :cond_8

    if-gez v1, :cond_7

    sub-int v4, v0, v1

    return v4

    :cond_6
    add-int/lit8 v2, v2, -0x1

    goto :goto_2

    :cond_7
    return v7

    :cond_8
    if-gez v1, :cond_9

    return v6

    :cond_9
    sub-int v4, v0, v1

    return v4
.end method

.method public longValue()J
    .locals 6

    const-wide v4, 0xffffffffL

    const/4 v1, 0x1

    const/4 v2, 0x0

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

    :cond_1
    iget v0, p0, Lsun/misc/FDBigInt;->nWords:I

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lsun/misc/FDBigInt;->data:[I

    aget v0, v0, v2

    int-to-long v0, v0

    and-long/2addr v0, v4

    return-wide v0

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
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    const/4 v11, 0x1

    const/4 v10, 0x0

    if-gtz p1, :cond_1

    if-nez p1, :cond_0

    return-void

    :cond_0
    new-instance v8, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v9, "negative shift count"

    invoke-direct {v8, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v8

    :cond_1
    shr-int/lit8 v7, p1, 0x5

    and-int/lit8 v1, p1, 0x1f

    rsub-int/lit8 v0, v1, 0x20

    iget-object v4, p0, Lsun/misc/FDBigInt;->data:[I

    iget-object v2, p0, Lsun/misc/FDBigInt;->data:[I

    iget v8, p0, Lsun/misc/FDBigInt;->nWords:I

    add-int/2addr v8, v7

    add-int/lit8 v8, v8, 0x1

    array-length v9, v4

    if-le v8, v9, :cond_2

    iget v8, p0, Lsun/misc/FDBigInt;->nWords:I

    add-int/2addr v8, v7

    add-int/lit8 v8, v8, 0x1

    new-array v4, v8, [I

    :cond_2
    iget v8, p0, Lsun/misc/FDBigInt;->nWords:I

    add-int v5, v8, v7

    iget v8, p0, Lsun/misc/FDBigInt;->nWords:I

    add-int/lit8 v3, v8, -0x1

    if-nez v1, :cond_3

    iget v8, p0, Lsun/misc/FDBigInt;->nWords:I

    invoke-static {v2, v10, v4, v7, v8}, Ljava/lang/System;->arraycopy([II[III)V

    add-int/lit8 v5, v7, -0x1

    move v6, v5

    :goto_0
    if-ltz v6, :cond_5

    add-int/lit8 v5, v6, -0x1

    aput v10, v4, v6

    move v6, v5

    goto :goto_0

    :cond_3
    add-int/lit8 v6, v5, -0x1

    aget v8, v2, v3

    ushr-int/2addr v8, v0

    aput v8, v4, v5

    :goto_1
    if-lt v3, v11, :cond_4

    add-int/lit8 v5, v6, -0x1

    aget v8, v2, v3

    shl-int/2addr v8, v1

    add-int/lit8 v3, v3, -0x1

    aget v9, v2, v3

    ushr-int/2addr v9, v0

    or-int/2addr v8, v9

    aput v8, v4, v6

    move v6, v5

    goto :goto_1

    :cond_4
    add-int/lit8 v5, v6, -0x1

    aget v8, v2, v3

    shl-int/2addr v8, v1

    aput v8, v4, v6

    move v6, v5

    goto :goto_0

    :cond_5
    iput-object v4, p0, Lsun/misc/FDBigInt;->data:[I

    iget v8, p0, Lsun/misc/FDBigInt;->nWords:I

    add-int/lit8 v9, v7, 0x1

    add-int/2addr v8, v9

    iput v8, p0, Lsun/misc/FDBigInt;->nWords:I

    :goto_2
    iget v8, p0, Lsun/misc/FDBigInt;->nWords:I

    if-le v8, v11, :cond_6

    iget-object v8, p0, Lsun/misc/FDBigInt;->data:[I

    iget v9, p0, Lsun/misc/FDBigInt;->nWords:I

    add-int/lit8 v9, v9, -0x1

    aget v8, v8, v9

    if-nez v8, :cond_6

    iget v8, p0, Lsun/misc/FDBigInt;->nWords:I

    add-int/lit8 v8, v8, -0x1

    iput v8, p0, Lsun/misc/FDBigInt;->nWords:I

    goto :goto_2

    :cond_6
    return-void
.end method

.method public mult(I)Lsun/misc/FDBigInt;
    .locals 12

    const-wide v10, 0xffffffffL

    int-to-long v4, p1

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

    const-wide/16 v2, 0x0

    const/4 v0, 0x0

    :goto_1
    iget v6, p0, Lsun/misc/FDBigInt;->nWords:I

    if-ge v0, v6, :cond_1

    iget-object v6, p0, Lsun/misc/FDBigInt;->data:[I

    aget v6, v6, v0

    int-to-long v6, v6

    and-long/2addr v6, v10

    mul-long/2addr v6, v4

    add-long/2addr v2, v6

    long-to-int v6, v2

    aput v6, v1, v0

    const/16 v6, 0x20

    ushr-long/2addr v2, v6

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_0
    iget v6, p0, Lsun/misc/FDBigInt;->nWords:I

    goto :goto_0

    :cond_1
    const-wide/16 v6, 0x0

    cmp-long v6, v2, v6

    if-nez v6, :cond_2

    new-instance v6, Lsun/misc/FDBigInt;

    iget v7, p0, Lsun/misc/FDBigInt;->nWords:I

    invoke-direct {v6, v1, v7}, Lsun/misc/FDBigInt;-><init>([II)V

    return-object v6

    :cond_2
    iget v6, p0, Lsun/misc/FDBigInt;->nWords:I

    long-to-int v7, v2

    aput v7, v1, v6

    new-instance v6, Lsun/misc/FDBigInt;

    iget v7, p0, Lsun/misc/FDBigInt;->nWords:I

    add-int/lit8 v7, v7, 0x1

    invoke-direct {v6, v1, v7}, Lsun/misc/FDBigInt;-><init>([II)V

    return-object v6
.end method

.method public mult(Lsun/misc/FDBigInt;)Lsun/misc/FDBigInt;
    .locals 14

    const-wide v12, 0xffffffffL

    iget v5, p0, Lsun/misc/FDBigInt;->nWords:I

    iget v8, p1, Lsun/misc/FDBigInt;->nWords:I

    add-int/2addr v5, v8

    new-array v4, v5, [I

    const/4 v0, 0x0

    :goto_0
    iget v5, p0, Lsun/misc/FDBigInt;->nWords:I

    if-ge v0, v5, :cond_1

    iget-object v5, p0, Lsun/misc/FDBigInt;->data:[I

    aget v5, v5, v0

    int-to-long v8, v5

    and-long v6, v8, v12

    const-wide/16 v2, 0x0

    const/4 v1, 0x0

    :goto_1
    iget v5, p1, Lsun/misc/FDBigInt;->nWords:I

    if-ge v1, v5, :cond_0

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

    add-int v5, v0, v1

    long-to-int v8, v2

    aput v8, v4, v5

    const/16 v5, 0x20

    ushr-long/2addr v2, v5

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_0
    add-int v5, v0, v1

    long-to-int v8, v2

    aput v8, v4, v5

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    array-length v5, v4

    add-int/lit8 v0, v5, -0x1

    :goto_2
    if-lez v0, :cond_2

    aget v5, v4, v0

    if-eqz v5, :cond_3

    :cond_2
    new-instance v5, Lsun/misc/FDBigInt;

    add-int/lit8 v8, v0, 0x1

    invoke-direct {v5, v4, v8}, Lsun/misc/FDBigInt;-><init>([II)V

    return-object v5

    :cond_3
    add-int/lit8 v0, v0, -0x1

    goto :goto_2
.end method

.method public multaddMe(II)V
    .locals 12

    int-to-long v4, p1

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

    iget-object v1, p0, Lsun/misc/FDBigInt;->data:[I

    long-to-int v6, v2

    const/4 v7, 0x0

    aput v6, v1, v7

    const/16 v1, 0x20

    ushr-long/2addr v2, v1

    const/4 v0, 0x1

    :goto_0
    iget v1, p0, Lsun/misc/FDBigInt;->nWords:I

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lsun/misc/FDBigInt;->data:[I

    aget v1, v1, v0

    int-to-long v6, v1

    const-wide v8, 0xffffffffL

    and-long/2addr v6, v8

    mul-long/2addr v6, v4

    add-long/2addr v2, v6

    iget-object v1, p0, Lsun/misc/FDBigInt;->data:[I

    long-to-int v6, v2

    aput v6, v1, v0

    const/16 v1, 0x20

    ushr-long/2addr v2, v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    const-wide/16 v6, 0x0

    cmp-long v1, v2, v6

    if-eqz v1, :cond_1

    iget-object v1, p0, Lsun/misc/FDBigInt;->data:[I

    iget v6, p0, Lsun/misc/FDBigInt;->nWords:I

    long-to-int v7, v2

    aput v7, v1, v6

    iget v1, p0, Lsun/misc/FDBigInt;->nWords:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lsun/misc/FDBigInt;->nWords:I

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

    const/high16 v5, -0x10000000

    const/4 v3, 0x0

    const/4 v0, 0x0

    const/4 v2, 0x0

    iget v4, p0, Lsun/misc/FDBigInt;->nWords:I

    add-int/lit8 v1, v4, -0x1

    :goto_0
    if-ltz v1, :cond_0

    iget-object v4, p0, Lsun/misc/FDBigInt;->data:[I

    aget v2, v4, v1

    if-nez v2, :cond_0

    add-int/lit8 v3, v3, 0x1

    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_0
    if-gez v1, :cond_1

    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v5, "zero value"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_1
    iget v4, p0, Lsun/misc/FDBigInt;->nWords:I

    sub-int/2addr v4, v3

    iput v4, p0, Lsun/misc/FDBigInt;->nWords:I

    and-int v4, v2, v5

    if-eqz v4, :cond_2

    const/16 v0, 0x20

    :goto_1
    and-int v4, v2, v5

    if-eqz v4, :cond_4

    ushr-int/lit8 v2, v2, 0x1

    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    :cond_2
    :goto_2
    const v4, 0xfffff

    if-gt v2, v4, :cond_3

    shl-int/lit8 v2, v2, 0x8

    add-int/lit8 v0, v0, 0x8

    goto :goto_2

    :cond_3
    :goto_3
    const v4, 0x7ffffff

    if-gt v2, v4, :cond_4

    shl-int/lit8 v2, v2, 0x1

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_4
    if-eqz v0, :cond_5

    invoke-virtual {p0, v0}, Lsun/misc/FDBigInt;->lshiftMe(I)V

    :cond_5
    return v0
.end method

.method public quoRemIteration(Lsun/misc/FDBigInt;)I
    .locals 18
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    move-object/from16 v0, p0

    iget v12, v0, Lsun/misc/FDBigInt;->nWords:I

    move-object/from16 v0, p1

    iget v13, v0, Lsun/misc/FDBigInt;->nWords:I

    if-eq v12, v13, :cond_0

    new-instance v12, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v13, "disparate values"

    invoke-direct {v12, v13}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v12

    :cond_0
    move-object/from16 v0, p0

    iget v12, v0, Lsun/misc/FDBigInt;->nWords:I

    add-int/lit8 v5, v12, -0x1

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

    const-wide/16 v2, 0x0

    const/4 v4, 0x0

    :goto_0
    if-gt v4, v5, :cond_1

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

    move-object/from16 v0, p0

    iget-object v12, v0, Lsun/misc/FDBigInt;->data:[I

    long-to-int v13, v2

    aput v13, v12, v4

    const/16 v12, 0x20

    shr-long/2addr v2, v12

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    const-wide/16 v12, 0x0

    cmp-long v12, v2, v12

    if-eqz v12, :cond_6

    const-wide/16 v10, 0x0

    :goto_1
    const-wide/16 v12, 0x0

    cmp-long v12, v10, v12

    if-nez v12, :cond_6

    const-wide/16 v10, 0x0

    const/4 v4, 0x0

    :goto_2
    if-gt v4, v5, :cond_2

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

    move-object/from16 v0, p0

    iget-object v12, v0, Lsun/misc/FDBigInt;->data:[I

    long-to-int v13, v10

    aput v13, v12, v4

    const/16 v12, 0x20

    shr-long/2addr v10, v12

    add-int/lit8 v4, v4, 0x1

    goto :goto_2

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

    :cond_5
    const-wide/16 v12, 0x1

    sub-long/2addr v8, v12

    goto :goto_1

    :cond_6
    const-wide/16 v6, 0x0

    const/4 v4, 0x0

    :goto_4
    if-gt v4, v5, :cond_7

    move-object/from16 v0, p0

    iget-object v12, v0, Lsun/misc/FDBigInt;->data:[I

    aget v12, v12, v4

    int-to-long v12, v12

    const-wide v14, 0xffffffffL

    and-long/2addr v12, v14

    const-wide/16 v14, 0xa

    mul-long/2addr v12, v14

    add-long/2addr v6, v12

    move-object/from16 v0, p0

    iget-object v12, v0, Lsun/misc/FDBigInt;->data:[I

    long-to-int v13, v6

    aput v13, v12, v4

    const/16 v12, 0x20

    shr-long/2addr v6, v12

    add-int/lit8 v4, v4, 0x1

    goto :goto_4

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

    :cond_9
    long-to-int v12, v8

    return v12
.end method

.method public sub(Lsun/misc/FDBigInt;)Lsun/misc/FDBigInt;
    .locals 12

    const-wide v10, 0xffffffffL

    const/4 v7, 0x0

    iget v8, p0, Lsun/misc/FDBigInt;->nWords:I

    new-array v6, v8, [I

    iget v4, p0, Lsun/misc/FDBigInt;->nWords:I

    iget v3, p1, Lsun/misc/FDBigInt;->nWords:I

    const/4 v5, 0x0

    const-wide/16 v0, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v4, :cond_2

    iget-object v8, p0, Lsun/misc/FDBigInt;->data:[I

    aget v8, v8, v2

    int-to-long v8, v8

    and-long/2addr v8, v10

    add-long/2addr v0, v8

    if-ge v2, v3, :cond_0

    iget-object v8, p1, Lsun/misc/FDBigInt;->data:[I

    aget v8, v8, v2

    int-to-long v8, v8

    and-long/2addr v8, v10

    sub-long/2addr v0, v8

    :cond_0
    long-to-int v8, v0

    aput v8, v6, v2

    if-nez v8, :cond_1

    add-int/lit8 v5, v5, 0x1

    :goto_1
    const/16 v8, 0x20

    shr-long/2addr v0, v8

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 v5, 0x0

    goto :goto_1

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

    :cond_4
    sget-boolean v7, Lsun/misc/FDBigInt;->-assertionsDisabled:Z

    if-nez v7, :cond_5

    invoke-static {v2, v3, p1}, Lsun/misc/FDBigInt;->dataInRangeIsZero(IILsun/misc/FDBigInt;)Z

    move-result v7

    if-nez v7, :cond_5

    new-instance v7, Ljava/lang/AssertionError;

    invoke-direct {v7}, Ljava/lang/AssertionError;-><init>()V

    throw v7

    :cond_5
    new-instance v7, Lsun/misc/FDBigInt;

    sub-int v8, v4, v5

    invoke-direct {v7, v6, v8}, Lsun/misc/FDBigInt;-><init>([II)V

    return-object v7
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    const/4 v4, 0x0

    new-instance v1, Ljava/lang/StringBuffer;

    const/16 v2, 0x1e

    invoke-direct {v1, v2}, Ljava/lang/StringBuffer;-><init>(I)V

    const/16 v2, 0x5b

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    iget v2, p0, Lsun/misc/FDBigInt;->nWords:I

    add-int/lit8 v2, v2, -0x1

    iget-object v3, p0, Lsun/misc/FDBigInt;->data:[I

    array-length v3, v3

    add-int/lit8 v3, v3, -0x1

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v0

    iget v2, p0, Lsun/misc/FDBigInt;->nWords:I

    iget-object v3, p0, Lsun/misc/FDBigInt;->data:[I

    array-length v3, v3

    if-le v2, v3, :cond_0

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

    :cond_0
    :goto_0
    if-lez v0, :cond_1

    iget-object v2, p0, Lsun/misc/FDBigInt;->data:[I

    aget v2, v2, v0

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/16 v2, 0x20

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lsun/misc/FDBigInt;->data:[I

    aget v2, v2, v4

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/16 v2, 0x5d

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v1}, Ljava/lang/String;-><init>(Ljava/lang/StringBuffer;)V

    return-object v2
.end method
