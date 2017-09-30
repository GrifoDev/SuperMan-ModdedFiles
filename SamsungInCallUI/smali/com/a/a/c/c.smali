.class Lcom/a/a/c/c;
.super Ljava/lang/Object;


# instance fields
.field protected a:I

.field protected b:[B

.field protected c:I

.field protected d:I

.field protected e:[[I

.field protected f:[I

.field protected g:[I

.field protected h:[I

.field protected i:[I


# direct methods
.method public constructor <init>([BII)V
    .locals 7

    const/4 v1, 0x0

    const/16 v6, 0x100

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-array v0, v6, [I

    iput-object v0, p0, Lcom/a/a/c/c;->f:[I

    new-array v0, v6, [I

    iput-object v0, p0, Lcom/a/a/c/c;->g:[I

    new-array v0, v6, [I

    iput-object v0, p0, Lcom/a/a/c/c;->h:[I

    const/16 v0, 0x20

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/a/a/c/c;->i:[I

    iput-object p1, p0, Lcom/a/a/c/c;->b:[B

    iput p2, p0, Lcom/a/a/c/c;->c:I

    iput p3, p0, Lcom/a/a/c/c;->d:I

    new-array v0, v6, [[I

    iput-object v0, p0, Lcom/a/a/c/c;->e:[[I

    move v0, v1

    :goto_0
    if-ge v0, v6, :cond_0

    iget-object v2, p0, Lcom/a/a/c/c;->e:[[I

    const/4 v3, 0x4

    new-array v3, v3, [I

    aput-object v3, v2, v0

    iget-object v2, p0, Lcom/a/a/c/c;->e:[[I

    aget-object v2, v2, v0

    const/4 v3, 0x1

    const/4 v4, 0x2

    shl-int/lit8 v5, v0, 0xc

    div-int/lit16 v5, v5, 0x100

    aput v5, v2, v4

    aput v5, v2, v3

    aput v5, v2, v1

    iget-object v2, p0, Lcom/a/a/c/c;->h:[I

    aput v6, v2, v0

    iget-object v2, p0, Lcom/a/a/c/c;->g:[I

    aput v1, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public a(III)I
    .locals 12

    const/4 v11, 0x2

    const/4 v10, 0x1

    const/4 v9, 0x0

    const/4 v6, -0x1

    const/16 v5, 0x100

    const/16 v3, 0x3e8

    iget-object v0, p0, Lcom/a/a/c/c;->f:[I

    aget v4, v0, p2

    add-int/lit8 v0, v4, -0x1

    move v1, v6

    move v2, v3

    move v7, v0

    move v3, v4

    :goto_0
    if-lt v3, v5, :cond_0

    if-ltz v7, :cond_9

    :cond_0
    if-ge v3, v5, :cond_c

    iget-object v0, p0, Lcom/a/a/c/c;->e:[[I

    aget-object v8, v0, v3

    aget v0, v8, v10

    sub-int/2addr v0, p2

    if-lt v0, v2, :cond_1

    move v3, v2

    move v4, v5

    move v2, v1

    :goto_1
    if-ltz v7, :cond_a

    iget-object v0, p0, Lcom/a/a/c/c;->e:[[I

    aget-object v8, v0, v7

    aget v0, v8, v10

    sub-int v0, p2, v0

    if-lt v0, v3, :cond_5

    move v1, v2

    move v7, v6

    move v2, v3

    move v3, v4

    goto :goto_0

    :cond_1
    add-int/lit8 v4, v3, 0x1

    if-gez v0, :cond_2

    neg-int v0, v0

    :cond_2
    aget v3, v8, v9

    sub-int/2addr v3, p1

    if-gez v3, :cond_3

    neg-int v3, v3

    :cond_3
    add-int/2addr v3, v0

    if-ge v3, v2, :cond_b

    aget v0, v8, v11

    sub-int/2addr v0, p3

    if-gez v0, :cond_4

    neg-int v0, v0

    :cond_4
    add-int/2addr v3, v0

    if-ge v3, v2, :cond_b

    const/4 v0, 0x3

    aget v0, v8, v0

    move v2, v0

    goto :goto_1

    :cond_5
    add-int/lit8 v7, v7, -0x1

    if-gez v0, :cond_6

    neg-int v0, v0

    :cond_6
    aget v1, v8, v9

    sub-int/2addr v1, p1

    if-gez v1, :cond_7

    neg-int v1, v1

    :cond_7
    add-int/2addr v1, v0

    if-ge v1, v3, :cond_a

    aget v0, v8, v11

    sub-int/2addr v0, p3

    if-gez v0, :cond_8

    neg-int v0, v0

    :cond_8
    add-int/2addr v0, v1

    if-ge v0, v3, :cond_a

    const/4 v1, 0x3

    aget v2, v8, v1

    move v1, v2

    move v3, v4

    move v2, v0

    goto :goto_0

    :cond_9
    return v1

    :cond_a
    move v1, v2

    move v2, v3

    move v3, v4

    goto :goto_0

    :cond_b
    move v3, v2

    move v2, v1

    goto :goto_1

    :cond_c
    move v4, v3

    move v3, v2

    move v2, v1

    goto :goto_1
.end method

.method protected a(IIIII)V
    .locals 11

    sub-int v0, p2, p1

    const/4 v1, -0x1

    if-ge v0, v1, :cond_5

    const/4 v0, -0x1

    move v5, v0

    :goto_0
    add-int v0, p2, p1

    const/16 v1, 0x100

    if-le v0, v1, :cond_0

    const/16 v0, 0x100

    :cond_0
    add-int/lit8 v3, p2, 0x1

    add-int/lit8 v2, p2, -0x1

    const/4 v1, 0x1

    move v4, v2

    move v2, v3

    :goto_1
    if-lt v2, v0, :cond_1

    if-le v4, v5, :cond_2

    :cond_1
    iget-object v6, p0, Lcom/a/a/c/c;->i:[I

    add-int/lit8 v3, v1, 0x1

    aget v6, v6, v1

    if-ge v2, v0, :cond_4

    iget-object v7, p0, Lcom/a/a/c/c;->e:[[I

    add-int/lit8 v1, v2, 0x1

    aget-object v2, v7, v2

    const/4 v7, 0x0

    :try_start_0
    aget v8, v2, v7

    const/4 v9, 0x0

    aget v9, v2, v9

    sub-int/2addr v9, p3

    mul-int/2addr v9, v6

    const/high16 v10, 0x40000

    div-int/2addr v9, v10

    sub-int/2addr v8, v9

    aput v8, v2, v7

    const/4 v7, 0x1

    aget v8, v2, v7

    const/4 v9, 0x1

    aget v9, v2, v9

    sub-int/2addr v9, p4

    mul-int/2addr v9, v6

    const/high16 v10, 0x40000

    div-int/2addr v9, v10

    sub-int/2addr v8, v9

    aput v8, v2, v7

    const/4 v7, 0x2

    aget v8, v2, v7

    const/4 v9, 0x2

    aget v9, v2, v9

    sub-int v9, v9, p5

    mul-int/2addr v9, v6

    const/high16 v10, 0x40000

    div-int/2addr v9, v10

    sub-int/2addr v8, v9

    aput v8, v2, v7
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :goto_2
    if-le v4, v5, :cond_3

    iget-object v7, p0, Lcom/a/a/c/c;->e:[[I

    add-int/lit8 v2, v4, -0x1

    aget-object v4, v7, v4

    const/4 v7, 0x0

    :try_start_1
    aget v8, v4, v7

    const/4 v9, 0x0

    aget v9, v4, v9

    sub-int/2addr v9, p3

    mul-int/2addr v9, v6

    const/high16 v10, 0x40000

    div-int/2addr v9, v10

    sub-int/2addr v8, v9

    aput v8, v4, v7

    const/4 v7, 0x1

    aget v8, v4, v7

    const/4 v9, 0x1

    aget v9, v4, v9

    sub-int/2addr v9, p4

    mul-int/2addr v9, v6

    const/high16 v10, 0x40000

    div-int/2addr v9, v10

    sub-int/2addr v8, v9

    aput v8, v4, v7

    const/4 v7, 0x2

    aget v8, v4, v7

    const/4 v9, 0x2

    aget v9, v4, v9

    sub-int v9, v9, p5

    mul-int/2addr v6, v9

    const/high16 v9, 0x40000

    div-int/2addr v6, v9

    sub-int v6, v8, v6

    aput v6, v4, v7
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move v4, v2

    move v2, v1

    move v1, v3

    goto :goto_1

    :catch_0
    move-exception v4

    move v4, v2

    move v2, v1

    move v1, v3

    goto :goto_1

    :cond_2
    return-void

    :catch_1
    move-exception v2

    goto :goto_2

    :cond_3
    move v2, v1

    move v1, v3

    goto :goto_1

    :cond_4
    move v1, v2

    goto :goto_2

    :cond_5
    move v5, v0

    goto/16 :goto_0
.end method

.method public a()[B
    .locals 10

    const/16 v9, 0x100

    const/4 v1, 0x0

    const/16 v0, 0x300

    new-array v3, v0, [B

    new-array v4, v9, [I

    move v0, v1

    :goto_0
    if-ge v0, v9, :cond_0

    iget-object v2, p0, Lcom/a/a/c/c;->e:[[I

    aget-object v2, v2, v0

    const/4 v5, 0x3

    aget v2, v2, v5

    aput v0, v4, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    move v0, v1

    move v2, v1

    :goto_1
    if-ge v0, v9, :cond_1

    aget v5, v4, v0

    add-int/lit8 v6, v2, 0x1

    iget-object v7, p0, Lcom/a/a/c/c;->e:[[I

    aget-object v7, v7, v5

    aget v7, v7, v1

    int-to-byte v7, v7

    aput-byte v7, v3, v2

    add-int/lit8 v7, v6, 0x1

    iget-object v2, p0, Lcom/a/a/c/c;->e:[[I

    aget-object v2, v2, v5

    const/4 v8, 0x1

    aget v2, v2, v8

    int-to-byte v2, v2

    aput-byte v2, v3, v6

    add-int/lit8 v2, v7, 0x1

    iget-object v6, p0, Lcom/a/a/c/c;->e:[[I

    aget-object v5, v6, v5

    const/4 v6, 0x2

    aget v5, v5, v6

    int-to-byte v5, v5

    aput-byte v5, v3, v7

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    return-object v3
.end method

.method protected b(III)I
    .locals 9

    const/4 v7, 0x0

    const v5, 0x7fffffff

    const/4 v6, -0x1

    move v2, v5

    move v4, v6

    move v3, v7

    :goto_0
    const/16 v0, 0x100

    if-ge v3, v0, :cond_3

    iget-object v0, p0, Lcom/a/a/c/c;->e:[[I

    aget-object v8, v0, v3

    aget v0, v8, v7

    sub-int/2addr v0, p1

    if-gez v0, :cond_0

    neg-int v0, v0

    :cond_0
    const/4 v1, 0x1

    aget v1, v8, v1

    sub-int/2addr v1, p2

    if-gez v1, :cond_1

    neg-int v1, v1

    :cond_1
    add-int/2addr v1, v0

    const/4 v0, 0x2

    aget v0, v8, v0

    sub-int/2addr v0, p3

    if-gez v0, :cond_2

    neg-int v0, v0

    :cond_2
    add-int/2addr v1, v0

    if-ge v1, v2, :cond_5

    move v0, v1

    move v2, v3

    :goto_1
    iget-object v4, p0, Lcom/a/a/c/c;->g:[I

    aget v4, v4, v3

    shr-int/lit8 v4, v4, 0xc

    sub-int/2addr v1, v4

    if-ge v1, v5, :cond_4

    move v4, v3

    :goto_2
    iget-object v5, p0, Lcom/a/a/c/c;->h:[I

    aget v5, v5, v3

    shr-int/lit8 v5, v5, 0xa

    iget-object v6, p0, Lcom/a/a/c/c;->h:[I

    aget v8, v6, v3

    sub-int/2addr v8, v5

    aput v8, v6, v3

    iget-object v6, p0, Lcom/a/a/c/c;->g:[I

    aget v8, v6, v3

    shl-int/lit8 v5, v5, 0xa

    add-int/2addr v5, v8

    aput v5, v6, v3

    add-int/lit8 v3, v3, 0x1

    move v5, v1

    move v6, v4

    move v4, v2

    move v2, v0

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/a/a/c/c;->h:[I

    aget v1, v0, v4

    add-int/lit8 v1, v1, 0x40

    aput v1, v0, v4

    iget-object v0, p0, Lcom/a/a/c/c;->g:[I

    aget v1, v0, v4

    const/high16 v2, 0x10000

    sub-int/2addr v1, v2

    aput v1, v0, v4

    return v6

    :cond_4
    move v1, v5

    move v4, v6

    goto :goto_2

    :cond_5
    move v0, v2

    move v2, v4

    goto :goto_1
.end method

.method public b()V
    .locals 14

    const/16 v13, 0x100

    const/4 v12, 0x3

    const/4 v11, 0x2

    const/4 v10, 0x1

    const/4 v6, 0x0

    move v4, v6

    move v5, v6

    move v3, v6

    :goto_0
    if-ge v3, v13, :cond_4

    iget-object v0, p0, Lcom/a/a/c/c;->e:[[I

    aget-object v7, v0, v3

    aget v0, v7, v10

    add-int/lit8 v2, v3, 0x1

    move v1, v3

    :goto_1
    if-ge v2, v13, :cond_1

    iget-object v8, p0, Lcom/a/a/c/c;->e:[[I

    aget-object v8, v8, v2

    aget v9, v8, v10

    if-ge v9, v0, :cond_0

    aget v0, v8, v10

    move v1, v2

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    iget-object v2, p0, Lcom/a/a/c/c;->e:[[I

    aget-object v2, v2, v1

    if-eq v3, v1, :cond_2

    aget v1, v2, v6

    aget v8, v7, v6

    aput v8, v2, v6

    aput v1, v7, v6

    aget v1, v2, v10

    aget v8, v7, v10

    aput v8, v2, v10

    aput v1, v7, v10

    aget v1, v2, v11

    aget v8, v7, v11

    aput v8, v2, v11

    aput v1, v7, v11

    aget v1, v2, v12

    aget v8, v7, v12

    aput v8, v2, v12

    aput v1, v7, v12

    :cond_2
    if-eq v0, v5, :cond_6

    iget-object v1, p0, Lcom/a/a/c/c;->f:[I

    add-int v2, v4, v3

    shr-int/lit8 v2, v2, 0x1

    aput v2, v1, v5

    add-int/lit8 v1, v5, 0x1

    :goto_2
    if-ge v1, v0, :cond_3

    iget-object v2, p0, Lcom/a/a/c/c;->f:[I

    aput v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_3
    move v1, v0

    move v0, v3

    :goto_3
    add-int/lit8 v3, v3, 0x1

    move v4, v0

    move v5, v1

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lcom/a/a/c/c;->f:[I

    add-int/lit16 v1, v4, 0xff

    shr-int/lit8 v1, v1, 0x1

    aput v1, v0, v5

    add-int/lit8 v0, v5, 0x1

    :goto_4
    if-ge v0, v13, :cond_5

    iget-object v1, p0, Lcom/a/a/c/c;->f:[I

    const/16 v2, 0xff

    aput v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    :cond_5
    return-void

    :cond_6
    move v0, v4

    move v1, v5

    goto :goto_3
.end method

.method protected b(IIIII)V
    .locals 6

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/a/a/c/c;->e:[[I

    aget-object v0, v0, p2

    aget v1, v0, v3

    aget v2, v0, v3

    sub-int/2addr v2, p3

    mul-int/2addr v2, p1

    div-int/lit16 v2, v2, 0x400

    sub-int/2addr v1, v2

    aput v1, v0, v3

    aget v1, v0, v4

    aget v2, v0, v4

    sub-int/2addr v2, p4

    mul-int/2addr v2, p1

    div-int/lit16 v2, v2, 0x400

    sub-int/2addr v1, v2

    aput v1, v0, v4

    aget v1, v0, v5

    aget v2, v0, v5

    sub-int/2addr v2, p5

    mul-int/2addr v2, p1

    div-int/lit16 v2, v2, 0x400

    sub-int/2addr v1, v2

    aput v1, v0, v5

    return-void
.end method

.method public c()V
    .locals 22

    move-object/from16 v0, p0

    iget v2, v0, Lcom/a/a/c/c;->c:I

    const/16 v3, 0x5e5

    if-ge v2, v3, :cond_0

    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/a/a/c/c;->d:I

    :cond_0
    move-object/from16 v0, p0

    iget v2, v0, Lcom/a/a/c/c;->d:I

    add-int/lit8 v2, v2, -0x1

    div-int/lit8 v2, v2, 0x3

    add-int/lit8 v2, v2, 0x1e

    move-object/from16 v0, p0

    iput v2, v0, Lcom/a/a/c/c;->a:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/a/a/c/c;->b:[B

    move-object/from16 v19, v0

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/a/a/c/c;->c:I

    move/from16 v20, v0

    move-object/from16 v0, p0

    iget v2, v0, Lcom/a/a/c/c;->c:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/a/a/c/c;->d:I

    mul-int/lit8 v3, v3, 0x3

    div-int v21, v2, v3

    div-int/lit8 v15, v21, 0x64

    const/16 v4, 0x400

    const/16 v6, 0x800

    const/16 v2, 0x20

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/a/a/c/c;->i:[I

    mul-int v8, v3, v3

    rsub-int v8, v8, 0x400

    mul-int/lit16 v8, v8, 0x100

    const/16 v9, 0x400

    div-int/2addr v8, v9

    mul-int/2addr v8, v4

    aput v8, v7, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    move-object/from16 v0, p0

    iget v3, v0, Lcom/a/a/c/c;->c:I

    const/16 v7, 0x5e5

    if-ge v3, v7, :cond_4

    const/4 v3, 0x3

    move v14, v3

    :goto_1
    const/4 v3, 0x0

    move/from16 v16, v5

    move v9, v2

    move/from16 v17, v6

    move/from16 v18, v3

    move v3, v4

    :goto_2
    move/from16 v0, v18

    move/from16 v1, v21

    if-ge v0, v1, :cond_8

    add-int/lit8 v2, v16, 0x0

    aget-byte v2, v19, v2

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v5, v2, 0x4

    add-int/lit8 v2, v16, 0x1

    aget-byte v2, v19, v2

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v6, v2, 0x4

    add-int/lit8 v2, v16, 0x2

    aget-byte v2, v19, v2

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v7, v2, 0x4

    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6, v7}, Lcom/a/a/c/c;->b(III)I

    move-result v4

    move-object/from16 v2, p0

    invoke-virtual/range {v2 .. v7}, Lcom/a/a/c/c;->b(IIIII)V

    if-eqz v9, :cond_2

    move-object/from16 v8, p0

    move v10, v4

    move v11, v5

    move v12, v6

    move v13, v7

    invoke-virtual/range {v8 .. v13}, Lcom/a/a/c/c;->a(IIIII)V

    :cond_2
    add-int v2, v16, v14

    move/from16 v0, v20

    if-lt v2, v0, :cond_c

    move-object/from16 v0, p0

    iget v4, v0, Lcom/a/a/c/c;->c:I

    sub-int/2addr v2, v4

    move v5, v2

    :goto_3
    add-int/lit8 v8, v18, 0x1

    if-nez v15, :cond_b

    const/4 v2, 0x1

    :goto_4
    rem-int v4, v8, v2

    if-nez v4, :cond_a

    move-object/from16 v0, p0

    iget v4, v0, Lcom/a/a/c/c;->a:I

    div-int v4, v3, v4

    sub-int v6, v3, v4

    div-int/lit8 v3, v17, 0x1e

    sub-int v7, v17, v3

    shr-int/lit8 v3, v7, 0x6

    const/4 v4, 0x1

    if-gt v3, v4, :cond_3

    const/4 v3, 0x0

    :cond_3
    const/4 v4, 0x0

    :goto_5
    if-ge v4, v3, :cond_9

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/a/a/c/c;->i:[I

    mul-int v10, v3, v3

    mul-int v11, v4, v4

    sub-int/2addr v10, v11

    mul-int/lit16 v10, v10, 0x100

    mul-int v11, v3, v3

    div-int/2addr v10, v11

    mul-int/2addr v10, v6

    aput v10, v9, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_5

    :cond_4
    move-object/from16 v0, p0

    iget v3, v0, Lcom/a/a/c/c;->c:I

    rem-int/lit16 v3, v3, 0x1f3

    if-eqz v3, :cond_5

    const/16 v3, 0x5d9

    move v14, v3

    goto/16 :goto_1

    :cond_5
    move-object/from16 v0, p0

    iget v3, v0, Lcom/a/a/c/c;->c:I

    rem-int/lit16 v3, v3, 0x1eb

    if-eqz v3, :cond_6

    const/16 v3, 0x5c1

    move v14, v3

    goto/16 :goto_1

    :cond_6
    move-object/from16 v0, p0

    iget v3, v0, Lcom/a/a/c/c;->c:I

    rem-int/lit16 v3, v3, 0x1e7

    if-eqz v3, :cond_7

    const/16 v3, 0x5b5

    move v14, v3

    goto/16 :goto_1

    :cond_7
    const/16 v3, 0x5e5

    move v14, v3

    goto/16 :goto_1

    :cond_8
    return-void

    :cond_9
    move/from16 v16, v5

    move v15, v2

    move v9, v3

    move/from16 v17, v7

    move/from16 v18, v8

    move v3, v6

    goto/16 :goto_2

    :cond_a
    move/from16 v16, v5

    move v15, v2

    move/from16 v18, v8

    goto/16 :goto_2

    :cond_b
    move v2, v15

    goto :goto_4

    :cond_c
    move v5, v2

    goto :goto_3
.end method

.method public d()[B
    .locals 1

    invoke-virtual {p0}, Lcom/a/a/c/c;->c()V

    invoke-virtual {p0}, Lcom/a/a/c/c;->e()V

    invoke-virtual {p0}, Lcom/a/a/c/c;->b()V

    invoke-virtual {p0}, Lcom/a/a/c/c;->a()[B

    move-result-object v0

    return-object v0
.end method

.method public e()V
    .locals 5

    const/4 v1, 0x0

    move v0, v1

    :goto_0
    const/16 v2, 0x100

    if-ge v0, v2, :cond_0

    iget-object v2, p0, Lcom/a/a/c/c;->e:[[I

    aget-object v2, v2, v0

    aget v3, v2, v1

    shr-int/lit8 v3, v3, 0x4

    aput v3, v2, v1

    iget-object v2, p0, Lcom/a/a/c/c;->e:[[I

    aget-object v2, v2, v0

    const/4 v3, 0x1

    aget v4, v2, v3

    shr-int/lit8 v4, v4, 0x4

    aput v4, v2, v3

    iget-object v2, p0, Lcom/a/a/c/c;->e:[[I

    aget-object v2, v2, v0

    const/4 v3, 0x2

    aget v4, v2, v3

    shr-int/lit8 v4, v4, 0x4

    aput v4, v2, v3

    iget-object v2, p0, Lcom/a/a/c/c;->e:[[I

    aget-object v2, v2, v0

    const/4 v3, 0x3

    aput v0, v2, v3

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
