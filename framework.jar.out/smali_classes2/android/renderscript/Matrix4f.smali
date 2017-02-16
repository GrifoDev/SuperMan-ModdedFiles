.class public Landroid/renderscript/Matrix4f;
.super Ljava/lang/Object;
.source "Matrix4f.java"


# instance fields
.field final mMat:[F


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    const/16 v0, 0x10

    new-array v0, v0, [F

    iput-object v0, p0, Landroid/renderscript/Matrix4f;->mMat:[F

    .line 33
    invoke-virtual {p0}, Landroid/renderscript/Matrix4f;->loadIdentity()V

    .line 31
    return-void
.end method

.method public constructor <init>([F)V
    .locals 3
    .param p1, "dataArray"    # [F

    .prologue
    const/4 v2, 0x0

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    const/16 v0, 0x10

    new-array v0, v0, [F

    iput-object v0, p0, Landroid/renderscript/Matrix4f;->mMat:[F

    .line 45
    iget-object v0, p0, Landroid/renderscript/Matrix4f;->mMat:[F

    iget-object v1, p0, Landroid/renderscript/Matrix4f;->mMat:[F

    array-length v1, v1

    invoke-static {p1, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy([FI[FII)V

    .line 43
    return-void
.end method

.method private computeCofactor(II)F
    .locals 14
    .param p1, "i"    # I
    .param p2, "j"    # I

    .prologue
    .line 404
    add-int/lit8 v8, p1, 0x1

    rem-int/lit8 v0, v8, 0x4

    .line 405
    .local v0, "c0":I
    add-int/lit8 v8, p1, 0x2

    rem-int/lit8 v1, v8, 0x4

    .line 406
    .local v1, "c1":I
    add-int/lit8 v8, p1, 0x3

    rem-int/lit8 v2, v8, 0x4

    .line 407
    .local v2, "c2":I
    add-int/lit8 v8, p2, 0x1

    rem-int/lit8 v5, v8, 0x4

    .line 408
    .local v5, "r0":I
    add-int/lit8 v8, p2, 0x2

    rem-int/lit8 v6, v8, 0x4

    .line 409
    .local v6, "r1":I
    add-int/lit8 v8, p2, 0x3

    rem-int/lit8 v7, v8, 0x4

    .line 411
    .local v7, "r2":I
    iget-object v8, p0, Landroid/renderscript/Matrix4f;->mMat:[F

    mul-int/lit8 v9, v5, 0x4

    add-int/2addr v9, v0

    aget v8, v8, v9

    iget-object v9, p0, Landroid/renderscript/Matrix4f;->mMat:[F

    mul-int/lit8 v10, v6, 0x4

    add-int/2addr v10, v1

    aget v9, v9, v10

    iget-object v10, p0, Landroid/renderscript/Matrix4f;->mMat:[F

    mul-int/lit8 v11, v7, 0x4

    add-int/2addr v11, v2

    aget v10, v10, v11

    mul-float/2addr v9, v10

    .line 412
    iget-object v10, p0, Landroid/renderscript/Matrix4f;->mMat:[F

    mul-int/lit8 v11, v7, 0x4

    add-int/2addr v11, v1

    aget v10, v10, v11

    iget-object v11, p0, Landroid/renderscript/Matrix4f;->mMat:[F

    mul-int/lit8 v12, v6, 0x4

    add-int/2addr v12, v2

    aget v11, v11, v12

    mul-float/2addr v10, v11

    .line 411
    sub-float/2addr v9, v10

    mul-float/2addr v8, v9

    .line 413
    iget-object v9, p0, Landroid/renderscript/Matrix4f;->mMat:[F

    mul-int/lit8 v10, v6, 0x4

    add-int/2addr v10, v0

    aget v9, v9, v10

    iget-object v10, p0, Landroid/renderscript/Matrix4f;->mMat:[F

    mul-int/lit8 v11, v5, 0x4

    add-int/2addr v11, v1

    aget v10, v10, v11

    iget-object v11, p0, Landroid/renderscript/Matrix4f;->mMat:[F

    mul-int/lit8 v12, v7, 0x4

    add-int/2addr v12, v2

    aget v11, v11, v12

    mul-float/2addr v10, v11

    .line 414
    iget-object v11, p0, Landroid/renderscript/Matrix4f;->mMat:[F

    mul-int/lit8 v12, v7, 0x4

    add-int/2addr v12, v1

    aget v11, v11, v12

    iget-object v12, p0, Landroid/renderscript/Matrix4f;->mMat:[F

    mul-int/lit8 v13, v5, 0x4

    add-int/2addr v13, v2

    aget v12, v12, v13

    mul-float/2addr v11, v12

    .line 413
    sub-float/2addr v10, v11

    mul-float/2addr v9, v10

    .line 411
    sub-float/2addr v8, v9

    .line 415
    iget-object v9, p0, Landroid/renderscript/Matrix4f;->mMat:[F

    mul-int/lit8 v10, v7, 0x4

    add-int/2addr v10, v0

    aget v9, v9, v10

    iget-object v10, p0, Landroid/renderscript/Matrix4f;->mMat:[F

    mul-int/lit8 v11, v5, 0x4

    add-int/2addr v11, v1

    aget v10, v10, v11

    iget-object v11, p0, Landroid/renderscript/Matrix4f;->mMat:[F

    mul-int/lit8 v12, v6, 0x4

    add-int/2addr v12, v2

    aget v11, v11, v12

    mul-float/2addr v10, v11

    .line 416
    iget-object v11, p0, Landroid/renderscript/Matrix4f;->mMat:[F

    mul-int/lit8 v12, v6, 0x4

    add-int/2addr v12, v1

    aget v11, v11, v12

    iget-object v12, p0, Landroid/renderscript/Matrix4f;->mMat:[F

    mul-int/lit8 v13, v5, 0x4

    add-int/2addr v13, v2

    aget v12, v12, v13

    mul-float/2addr v11, v12

    .line 415
    sub-float/2addr v10, v11

    mul-float/2addr v9, v10

    .line 411
    add-float v4, v8, v9

    .line 418
    .local v4, "minor":F
    add-int v8, p1, p2

    and-int/lit8 v8, v8, 0x1

    if-eqz v8, :cond_0

    neg-float v3, v4

    .line 419
    .local v3, "cofactor":F
    :goto_0
    return v3

    .end local v3    # "cofactor":F
    :cond_0
    move v3, v4

    .line 418
    goto :goto_0
.end method


# virtual methods
.method public get(II)F
    .locals 2
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    .line 67
    iget-object v0, p0, Landroid/renderscript/Matrix4f;->mMat:[F

    mul-int/lit8 v1, p1, 0x4

    add-int/2addr v1, p2

    aget v0, v0, v1

    return v0
.end method

.method public getArray()[F
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Landroid/renderscript/Matrix4f;->mMat:[F

    return-object v0
.end method

.method public inverse()Z
    .locals 10

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    const/4 v7, 0x4

    .line 427
    new-instance v3, Landroid/renderscript/Matrix4f;

    invoke-direct {v3}, Landroid/renderscript/Matrix4f;-><init>()V

    .line 429
    .local v3, "result":Landroid/renderscript/Matrix4f;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v7, :cond_1

    .line 430
    const/4 v2, 0x0

    .local v2, "j":I
    :goto_1
    if-ge v2, v7, :cond_0

    .line 431
    iget-object v4, v3, Landroid/renderscript/Matrix4f;->mMat:[F

    mul-int/lit8 v5, v1, 0x4

    add-int/2addr v5, v2

    invoke-direct {p0, v1, v2}, Landroid/renderscript/Matrix4f;->computeCofactor(II)F

    move-result v6

    aput v6, v4, v5

    .line 430
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 429
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 436
    .end local v2    # "j":I
    :cond_1
    iget-object v4, p0, Landroid/renderscript/Matrix4f;->mMat:[F

    aget v4, v4, v8

    iget-object v5, v3, Landroid/renderscript/Matrix4f;->mMat:[F

    aget v5, v5, v8

    mul-float/2addr v4, v5

    iget-object v5, p0, Landroid/renderscript/Matrix4f;->mMat:[F

    aget v5, v5, v7

    iget-object v6, v3, Landroid/renderscript/Matrix4f;->mMat:[F

    aget v6, v6, v9

    mul-float/2addr v5, v6

    add-float/2addr v4, v5

    .line 437
    iget-object v5, p0, Landroid/renderscript/Matrix4f;->mMat:[F

    const/16 v6, 0x8

    aget v5, v5, v6

    iget-object v6, v3, Landroid/renderscript/Matrix4f;->mMat:[F

    const/4 v7, 0x2

    aget v6, v6, v7

    mul-float/2addr v5, v6

    .line 436
    add-float/2addr v4, v5

    .line 437
    iget-object v5, p0, Landroid/renderscript/Matrix4f;->mMat:[F

    const/16 v6, 0xc

    aget v5, v5, v6

    iget-object v6, v3, Landroid/renderscript/Matrix4f;->mMat:[F

    const/4 v7, 0x3

    aget v6, v6, v7

    mul-float/2addr v5, v6

    .line 436
    add-float v0, v4, v5

    .line 439
    .local v0, "det":F
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v4

    float-to-double v4, v4

    const-wide v6, 0x3eb0c6f7a0b5ed8dL    # 1.0E-6

    cmpg-double v4, v4, v6

    if-gez v4, :cond_2

    .line 440
    return v8

    .line 443
    :cond_2
    const/high16 v4, 0x3f800000    # 1.0f

    div-float v0, v4, v0

    .line 444
    const/4 v1, 0x0

    :goto_2
    const/16 v4, 0x10

    if-ge v1, v4, :cond_3

    .line 445
    iget-object v4, p0, Landroid/renderscript/Matrix4f;->mMat:[F

    iget-object v5, v3, Landroid/renderscript/Matrix4f;->mMat:[F

    aget v5, v5, v1

    mul-float/2addr v5, v0

    aput v5, v4, v1

    .line 444
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 448
    :cond_3
    return v9
.end method

.method public inverseTranspose()Z
    .locals 11

    .prologue
    const/16 v10, 0xc

    const/16 v9, 0x8

    const/4 v8, 0x0

    const/4 v7, 0x4

    .line 456
    new-instance v3, Landroid/renderscript/Matrix4f;

    invoke-direct {v3}, Landroid/renderscript/Matrix4f;-><init>()V

    .line 458
    .local v3, "result":Landroid/renderscript/Matrix4f;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v7, :cond_1

    .line 459
    const/4 v2, 0x0

    .local v2, "j":I
    :goto_1
    if-ge v2, v7, :cond_0

    .line 460
    iget-object v4, v3, Landroid/renderscript/Matrix4f;->mMat:[F

    mul-int/lit8 v5, v2, 0x4

    add-int/2addr v5, v1

    invoke-direct {p0, v1, v2}, Landroid/renderscript/Matrix4f;->computeCofactor(II)F

    move-result v6

    aput v6, v4, v5

    .line 459
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 458
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 464
    .end local v2    # "j":I
    :cond_1
    iget-object v4, p0, Landroid/renderscript/Matrix4f;->mMat:[F

    aget v4, v4, v8

    iget-object v5, v3, Landroid/renderscript/Matrix4f;->mMat:[F

    aget v5, v5, v8

    mul-float/2addr v4, v5

    iget-object v5, p0, Landroid/renderscript/Matrix4f;->mMat:[F

    aget v5, v5, v7

    iget-object v6, v3, Landroid/renderscript/Matrix4f;->mMat:[F

    aget v6, v6, v7

    mul-float/2addr v5, v6

    add-float/2addr v4, v5

    .line 465
    iget-object v5, p0, Landroid/renderscript/Matrix4f;->mMat:[F

    aget v5, v5, v9

    iget-object v6, v3, Landroid/renderscript/Matrix4f;->mMat:[F

    aget v6, v6, v9

    mul-float/2addr v5, v6

    .line 464
    add-float/2addr v4, v5

    .line 465
    iget-object v5, p0, Landroid/renderscript/Matrix4f;->mMat:[F

    aget v5, v5, v10

    iget-object v6, v3, Landroid/renderscript/Matrix4f;->mMat:[F

    aget v6, v6, v10

    mul-float/2addr v5, v6

    .line 464
    add-float v0, v4, v5

    .line 467
    .local v0, "det":F
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v4

    float-to-double v4, v4

    const-wide v6, 0x3eb0c6f7a0b5ed8dL    # 1.0E-6

    cmpg-double v4, v4, v6

    if-gez v4, :cond_2

    .line 468
    return v8

    .line 471
    :cond_2
    const/high16 v4, 0x3f800000    # 1.0f

    div-float v0, v4, v0

    .line 472
    const/4 v1, 0x0

    :goto_2
    const/16 v4, 0x10

    if-ge v1, v4, :cond_3

    .line 473
    iget-object v4, p0, Landroid/renderscript/Matrix4f;->mMat:[F

    iget-object v5, v3, Landroid/renderscript/Matrix4f;->mMat:[F

    aget v5, v5, v1

    mul-float/2addr v5, v0

    aput v5, v4, v1

    .line 472
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 476
    :cond_3
    const/4 v4, 0x1

    return v4
.end method

.method public load(Landroid/renderscript/Matrix3f;)V
    .locals 7
    .param p1, "src"    # Landroid/renderscript/Matrix3f;

    .prologue
    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 121
    iget-object v0, p0, Landroid/renderscript/Matrix4f;->mMat:[F

    iget-object v1, p1, Landroid/renderscript/Matrix3f;->mMat:[F

    aget v1, v1, v2

    aput v1, v0, v2

    .line 122
    iget-object v0, p0, Landroid/renderscript/Matrix4f;->mMat:[F

    iget-object v1, p1, Landroid/renderscript/Matrix3f;->mMat:[F

    aget v1, v1, v4

    aput v1, v0, v4

    .line 123
    iget-object v0, p0, Landroid/renderscript/Matrix4f;->mMat:[F

    iget-object v1, p1, Landroid/renderscript/Matrix3f;->mMat:[F

    aget v1, v1, v5

    aput v1, v0, v5

    .line 124
    iget-object v0, p0, Landroid/renderscript/Matrix4f;->mMat:[F

    aput v3, v0, v6

    .line 126
    iget-object v0, p0, Landroid/renderscript/Matrix4f;->mMat:[F

    iget-object v1, p1, Landroid/renderscript/Matrix3f;->mMat:[F

    aget v1, v1, v6

    const/4 v2, 0x4

    aput v1, v0, v2

    .line 127
    iget-object v0, p0, Landroid/renderscript/Matrix4f;->mMat:[F

    iget-object v1, p1, Landroid/renderscript/Matrix3f;->mMat:[F

    const/4 v2, 0x4

    aget v1, v1, v2

    const/4 v2, 0x5

    aput v1, v0, v2

    .line 128
    iget-object v0, p0, Landroid/renderscript/Matrix4f;->mMat:[F

    iget-object v1, p1, Landroid/renderscript/Matrix3f;->mMat:[F

    const/4 v2, 0x5

    aget v1, v1, v2

    const/4 v2, 0x6

    aput v1, v0, v2

    .line 129
    iget-object v0, p0, Landroid/renderscript/Matrix4f;->mMat:[F

    const/4 v1, 0x7

    aput v3, v0, v1

    .line 131
    iget-object v0, p0, Landroid/renderscript/Matrix4f;->mMat:[F

    iget-object v1, p1, Landroid/renderscript/Matrix3f;->mMat:[F

    const/4 v2, 0x6

    aget v1, v1, v2

    const/16 v2, 0x8

    aput v1, v0, v2

    .line 132
    iget-object v0, p0, Landroid/renderscript/Matrix4f;->mMat:[F

    iget-object v1, p1, Landroid/renderscript/Matrix3f;->mMat:[F

    const/4 v2, 0x7

    aget v1, v1, v2

    const/16 v2, 0x9

    aput v1, v0, v2

    .line 133
    iget-object v0, p0, Landroid/renderscript/Matrix4f;->mMat:[F

    iget-object v1, p1, Landroid/renderscript/Matrix3f;->mMat:[F

    const/16 v2, 0x8

    aget v1, v1, v2

    const/16 v2, 0xa

    aput v1, v0, v2

    .line 134
    iget-object v0, p0, Landroid/renderscript/Matrix4f;->mMat:[F

    const/16 v1, 0xb

    aput v3, v0, v1

    .line 136
    iget-object v0, p0, Landroid/renderscript/Matrix4f;->mMat:[F

    const/16 v1, 0xc

    aput v3, v0, v1

    .line 137
    iget-object v0, p0, Landroid/renderscript/Matrix4f;->mMat:[F

    const/16 v1, 0xd

    aput v3, v0, v1

    .line 138
    iget-object v0, p0, Landroid/renderscript/Matrix4f;->mMat:[F

    const/16 v1, 0xe

    aput v3, v0, v1

    .line 139
    iget-object v0, p0, Landroid/renderscript/Matrix4f;->mMat:[F

    const/high16 v1, 0x3f800000    # 1.0f

    const/16 v2, 0xf

    aput v1, v0, v2

    .line 120
    return-void
.end method

.method public load(Landroid/renderscript/Matrix4f;)V
    .locals 4
    .param p1, "src"    # Landroid/renderscript/Matrix4f;

    .prologue
    const/4 v3, 0x0

    .line 111
    invoke-virtual {p1}, Landroid/renderscript/Matrix4f;->getArray()[F

    move-result-object v0

    iget-object v1, p0, Landroid/renderscript/Matrix4f;->mMat:[F

    iget-object v2, p0, Landroid/renderscript/Matrix4f;->mMat:[F

    array-length v2, v2

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy([FI[FII)V

    .line 110
    return-void
.end method

.method public loadFrustum(FFFFFF)V
    .locals 4
    .param p1, "l"    # F
    .param p2, "r"    # F
    .param p3, "b"    # F
    .param p4, "t"    # F
    .param p5, "n"    # F
    .param p6, "f"    # F

    .prologue
    const/high16 v3, 0x40000000    # 2.0f

    .line 291
    invoke-virtual {p0}, Landroid/renderscript/Matrix4f;->loadIdentity()V

    .line 292
    iget-object v0, p0, Landroid/renderscript/Matrix4f;->mMat:[F

    mul-float v1, v3, p5

    sub-float v2, p2, p1

    div-float/2addr v1, v2

    const/4 v2, 0x0

    aput v1, v0, v2

    .line 293
    iget-object v0, p0, Landroid/renderscript/Matrix4f;->mMat:[F

    mul-float v1, v3, p5

    sub-float v2, p4, p3

    div-float/2addr v1, v2

    const/4 v2, 0x5

    aput v1, v0, v2

    .line 294
    iget-object v0, p0, Landroid/renderscript/Matrix4f;->mMat:[F

    add-float v1, p2, p1

    sub-float v2, p2, p1

    div-float/2addr v1, v2

    const/16 v2, 0x8

    aput v1, v0, v2

    .line 295
    iget-object v0, p0, Landroid/renderscript/Matrix4f;->mMat:[F

    add-float v1, p4, p3

    sub-float v2, p4, p3

    div-float/2addr v1, v2

    const/16 v2, 0x9

    aput v1, v0, v2

    .line 296
    iget-object v0, p0, Landroid/renderscript/Matrix4f;->mMat:[F

    add-float v1, p6, p5

    neg-float v1, v1

    sub-float v2, p6, p5

    div-float/2addr v1, v2

    const/16 v2, 0xa

    aput v1, v0, v2

    .line 297
    iget-object v0, p0, Landroid/renderscript/Matrix4f;->mMat:[F

    const/high16 v1, -0x40800000    # -1.0f

    const/16 v2, 0xb

    aput v1, v0, v2

    .line 298
    iget-object v0, p0, Landroid/renderscript/Matrix4f;->mMat:[F

    const/high16 v1, -0x40000000    # -2.0f

    mul-float/2addr v1, p6

    mul-float/2addr v1, p5

    sub-float v2, p6, p5

    div-float/2addr v1, v2

    const/16 v2, 0xe

    aput v1, v0, v2

    .line 299
    iget-object v0, p0, Landroid/renderscript/Matrix4f;->mMat:[F

    const/4 v1, 0x0

    const/16 v2, 0xf

    aput v1, v0, v2

    .line 290
    return-void
.end method

.method public loadIdentity()V
    .locals 4

    .prologue
    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    .line 84
    iget-object v0, p0, Landroid/renderscript/Matrix4f;->mMat:[F

    const/4 v1, 0x0

    aput v3, v0, v1

    .line 85
    iget-object v0, p0, Landroid/renderscript/Matrix4f;->mMat:[F

    const/4 v1, 0x1

    aput v2, v0, v1

    .line 86
    iget-object v0, p0, Landroid/renderscript/Matrix4f;->mMat:[F

    const/4 v1, 0x2

    aput v2, v0, v1

    .line 87
    iget-object v0, p0, Landroid/renderscript/Matrix4f;->mMat:[F

    const/4 v1, 0x3

    aput v2, v0, v1

    .line 89
    iget-object v0, p0, Landroid/renderscript/Matrix4f;->mMat:[F

    const/4 v1, 0x4

    aput v2, v0, v1

    .line 90
    iget-object v0, p0, Landroid/renderscript/Matrix4f;->mMat:[F

    const/4 v1, 0x5

    aput v3, v0, v1

    .line 91
    iget-object v0, p0, Landroid/renderscript/Matrix4f;->mMat:[F

    const/4 v1, 0x6

    aput v2, v0, v1

    .line 92
    iget-object v0, p0, Landroid/renderscript/Matrix4f;->mMat:[F

    const/4 v1, 0x7

    aput v2, v0, v1

    .line 94
    iget-object v0, p0, Landroid/renderscript/Matrix4f;->mMat:[F

    const/16 v1, 0x8

    aput v2, v0, v1

    .line 95
    iget-object v0, p0, Landroid/renderscript/Matrix4f;->mMat:[F

    const/16 v1, 0x9

    aput v2, v0, v1

    .line 96
    iget-object v0, p0, Landroid/renderscript/Matrix4f;->mMat:[F

    const/16 v1, 0xa

    aput v3, v0, v1

    .line 97
    iget-object v0, p0, Landroid/renderscript/Matrix4f;->mMat:[F

    const/16 v1, 0xb

    aput v2, v0, v1

    .line 99
    iget-object v0, p0, Landroid/renderscript/Matrix4f;->mMat:[F

    const/16 v1, 0xc

    aput v2, v0, v1

    .line 100
    iget-object v0, p0, Landroid/renderscript/Matrix4f;->mMat:[F

    const/16 v1, 0xd

    aput v2, v0, v1

    .line 101
    iget-object v0, p0, Landroid/renderscript/Matrix4f;->mMat:[F

    const/16 v1, 0xe

    aput v2, v0, v1

    .line 102
    iget-object v0, p0, Landroid/renderscript/Matrix4f;->mMat:[F

    const/16 v1, 0xf

    aput v3, v0, v1

    .line 83
    return-void
.end method

.method public loadMultiply(Landroid/renderscript/Matrix4f;Landroid/renderscript/Matrix4f;)V
    .locals 13
    .param p1, "lhs"    # Landroid/renderscript/Matrix4f;
    .param p2, "rhs"    # Landroid/renderscript/Matrix4f;

    .prologue
    const/4 v12, 0x4

    const/4 v11, 0x3

    const/4 v10, 0x2

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 226
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v12, :cond_1

    .line 227
    const/4 v3, 0x0

    .line 228
    .local v3, "ri0":F
    const/4 v4, 0x0

    .line 229
    .local v4, "ri1":F
    const/4 v5, 0x0

    .line 230
    .local v5, "ri2":F
    const/4 v6, 0x0

    .line 231
    .local v6, "ri3":F
    const/4 v1, 0x0

    .local v1, "j":I
    :goto_1
    if-ge v1, v12, :cond_0

    .line 232
    invoke-virtual {p2, v0, v1}, Landroid/renderscript/Matrix4f;->get(II)F

    move-result v2

    .line 233
    .local v2, "rhs_ij":F
    invoke-virtual {p1, v1, v8}, Landroid/renderscript/Matrix4f;->get(II)F

    move-result v7

    mul-float/2addr v7, v2

    add-float/2addr v3, v7

    .line 234
    invoke-virtual {p1, v1, v9}, Landroid/renderscript/Matrix4f;->get(II)F

    move-result v7

    mul-float/2addr v7, v2

    add-float/2addr v4, v7

    .line 235
    invoke-virtual {p1, v1, v10}, Landroid/renderscript/Matrix4f;->get(II)F

    move-result v7

    mul-float/2addr v7, v2

    add-float/2addr v5, v7

    .line 236
    invoke-virtual {p1, v1, v11}, Landroid/renderscript/Matrix4f;->get(II)F

    move-result v7

    mul-float/2addr v7, v2

    add-float/2addr v6, v7

    .line 231
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 238
    .end local v2    # "rhs_ij":F
    :cond_0
    invoke-virtual {p0, v0, v8, v3}, Landroid/renderscript/Matrix4f;->set(IIF)V

    .line 239
    invoke-virtual {p0, v0, v9, v4}, Landroid/renderscript/Matrix4f;->set(IIF)V

    .line 240
    invoke-virtual {p0, v0, v10, v5}, Landroid/renderscript/Matrix4f;->set(IIF)V

    .line 241
    invoke-virtual {p0, v0, v11, v6}, Landroid/renderscript/Matrix4f;->set(IIF)V

    .line 226
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 225
    .end local v1    # "j":I
    .end local v3    # "ri0":F
    .end local v4    # "ri1":F
    .end local v5    # "ri2":F
    .end local v6    # "ri3":F
    :cond_1
    return-void
.end method

.method public loadOrtho(FFFFFF)V
    .locals 4
    .param p1, "l"    # F
    .param p2, "r"    # F
    .param p3, "b"    # F
    .param p4, "t"    # F
    .param p5, "n"    # F
    .param p6, "f"    # F

    .prologue
    const/high16 v3, 0x40000000    # 2.0f

    .line 256
    invoke-virtual {p0}, Landroid/renderscript/Matrix4f;->loadIdentity()V

    .line 257
    iget-object v0, p0, Landroid/renderscript/Matrix4f;->mMat:[F

    sub-float v1, p2, p1

    div-float v1, v3, v1

    const/4 v2, 0x0

    aput v1, v0, v2

    .line 258
    iget-object v0, p0, Landroid/renderscript/Matrix4f;->mMat:[F

    sub-float v1, p4, p3

    div-float v1, v3, v1

    const/4 v2, 0x5

    aput v1, v0, v2

    .line 259
    iget-object v0, p0, Landroid/renderscript/Matrix4f;->mMat:[F

    sub-float v1, p6, p5

    const/high16 v2, -0x40000000    # -2.0f

    div-float v1, v2, v1

    const/16 v2, 0xa

    aput v1, v0, v2

    .line 260
    iget-object v0, p0, Landroid/renderscript/Matrix4f;->mMat:[F

    add-float v1, p2, p1

    neg-float v1, v1

    sub-float v2, p2, p1

    div-float/2addr v1, v2

    const/16 v2, 0xc

    aput v1, v0, v2

    .line 261
    iget-object v0, p0, Landroid/renderscript/Matrix4f;->mMat:[F

    add-float v1, p4, p3

    neg-float v1, v1

    sub-float v2, p4, p3

    div-float/2addr v1, v2

    const/16 v2, 0xd

    aput v1, v0, v2

    .line 262
    iget-object v0, p0, Landroid/renderscript/Matrix4f;->mMat:[F

    add-float v1, p6, p5

    neg-float v1, v1

    sub-float v2, p6, p5

    div-float/2addr v1, v2

    const/16 v2, 0xe

    aput v1, v0, v2

    .line 255
    return-void
.end method

.method public loadOrthoWindow(II)V
    .locals 7
    .param p1, "w"    # I
    .param p2, "h"    # I

    .prologue
    const/4 v1, 0x0

    .line 276
    int-to-float v2, p1

    int-to-float v3, p2

    const/high16 v5, -0x40800000    # -1.0f

    const/high16 v6, 0x3f800000    # 1.0f

    move-object v0, p0

    move v4, v1

    invoke-virtual/range {v0 .. v6}, Landroid/renderscript/Matrix4f;->loadOrtho(FFFFFF)V

    .line 275
    return-void
.end method

.method public loadPerspective(FFFF)V
    .locals 10
    .param p1, "fovy"    # F
    .param p2, "aspect"    # F
    .param p3, "near"    # F
    .param p4, "far"    # F

    .prologue
    .line 311
    float-to-double v6, p1

    const-wide v8, 0x400921fb54442d18L    # Math.PI

    mul-double/2addr v6, v8

    const-wide v8, 0x4076800000000000L    # 360.0

    div-double/2addr v6, v8

    double-to-float v0, v6

    float-to-double v6, v0

    invoke-static {v6, v7}, Ljava/lang/Math;->tan(D)D

    move-result-wide v6

    double-to-float v0, v6

    mul-float v4, p3, v0

    .line 312
    .local v4, "top":F
    neg-float v3, v4

    .line 313
    .local v3, "bottom":F
    mul-float v1, v3, p2

    .line 314
    .local v1, "left":F
    mul-float v2, v4, p2

    .local v2, "right":F
    move-object v0, p0

    move v5, p3

    move v6, p4

    .line 315
    invoke-virtual/range {v0 .. v6}, Landroid/renderscript/Matrix4f;->loadFrustum(FFFFFF)V

    .line 310
    return-void
.end method

.method public loadProjectionNormalized(II)V
    .locals 11
    .param p1, "w"    # I
    .param p2, "h"    # I

    .prologue
    .line 328
    new-instance v0, Landroid/renderscript/Matrix4f;

    invoke-direct {v0}, Landroid/renderscript/Matrix4f;-><init>()V

    .line 329
    .local v0, "m1":Landroid/renderscript/Matrix4f;
    new-instance v10, Landroid/renderscript/Matrix4f;

    invoke-direct {v10}, Landroid/renderscript/Matrix4f;-><init>()V

    .line 331
    .local v10, "m2":Landroid/renderscript/Matrix4f;
    if-le p1, p2, :cond_0

    .line 332
    int-to-float v1, p1

    int-to-float v3, p2

    div-float v2, v1, v3

    .line 333
    .local v2, "aspect":F
    neg-float v1, v2

    const/high16 v3, -0x40800000    # -1.0f

    const/high16 v4, 0x3f800000    # 1.0f

    const/high16 v5, 0x3f800000    # 1.0f

    const/high16 v6, 0x42c80000    # 100.0f

    invoke-virtual/range {v0 .. v6}, Landroid/renderscript/Matrix4f;->loadFrustum(FFFFFF)V

    .line 339
    :goto_0
    const/high16 v1, 0x43340000    # 180.0f

    const/4 v3, 0x0

    const/high16 v4, 0x3f800000    # 1.0f

    const/4 v5, 0x0

    invoke-virtual {v10, v1, v3, v4, v5}, Landroid/renderscript/Matrix4f;->loadRotate(FFFF)V

    .line 340
    invoke-virtual {v0, v0, v10}, Landroid/renderscript/Matrix4f;->loadMultiply(Landroid/renderscript/Matrix4f;Landroid/renderscript/Matrix4f;)V

    .line 342
    const/high16 v1, -0x40000000    # -2.0f

    const/high16 v3, 0x40000000    # 2.0f

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-virtual {v10, v1, v3, v4}, Landroid/renderscript/Matrix4f;->loadScale(FFF)V

    .line 343
    invoke-virtual {v0, v0, v10}, Landroid/renderscript/Matrix4f;->loadMultiply(Landroid/renderscript/Matrix4f;Landroid/renderscript/Matrix4f;)V

    .line 345
    const/4 v1, 0x0

    const/4 v3, 0x0

    const/high16 v4, 0x40000000    # 2.0f

    invoke-virtual {v10, v1, v3, v4}, Landroid/renderscript/Matrix4f;->loadTranslate(FFF)V

    .line 346
    invoke-virtual {v0, v0, v10}, Landroid/renderscript/Matrix4f;->loadMultiply(Landroid/renderscript/Matrix4f;Landroid/renderscript/Matrix4f;)V

    .line 348
    invoke-virtual {p0, v0}, Landroid/renderscript/Matrix4f;->load(Landroid/renderscript/Matrix4f;)V

    .line 326
    return-void

    .line 335
    .end local v2    # "aspect":F
    :cond_0
    int-to-float v1, p2

    int-to-float v3, p1

    div-float v2, v1, v3

    .line 336
    .restart local v2    # "aspect":F
    const/high16 v4, -0x40800000    # -1.0f

    const/high16 v5, 0x3f800000    # 1.0f

    neg-float v6, v2

    const/high16 v8, 0x3f800000    # 1.0f

    const/high16 v9, 0x42c80000    # 100.0f

    move-object v3, v0

    move v7, v2

    invoke-virtual/range {v3 .. v9}, Landroid/renderscript/Matrix4f;->loadFrustum(FFFFFF)V

    goto :goto_0
.end method

.method public loadRotate(FFFF)V
    .locals 14
    .param p1, "rot"    # F
    .param p2, "x"    # F
    .param p3, "y"    # F
    .param p4, "z"    # F

    .prologue
    .line 153
    iget-object v11, p0, Landroid/renderscript/Matrix4f;->mMat:[F

    const/4 v12, 0x0

    const/4 v13, 0x3

    aput v12, v11, v13

    .line 154
    iget-object v11, p0, Landroid/renderscript/Matrix4f;->mMat:[F

    const/4 v12, 0x0

    const/4 v13, 0x7

    aput v12, v11, v13

    .line 155
    iget-object v11, p0, Landroid/renderscript/Matrix4f;->mMat:[F

    const/4 v12, 0x0

    const/16 v13, 0xb

    aput v12, v11, v13

    .line 156
    iget-object v11, p0, Landroid/renderscript/Matrix4f;->mMat:[F

    const/4 v12, 0x0

    const/16 v13, 0xc

    aput v12, v11, v13

    .line 157
    iget-object v11, p0, Landroid/renderscript/Matrix4f;->mMat:[F

    const/4 v12, 0x0

    const/16 v13, 0xd

    aput v12, v11, v13

    .line 158
    iget-object v11, p0, Landroid/renderscript/Matrix4f;->mMat:[F

    const/4 v12, 0x0

    const/16 v13, 0xe

    aput v12, v11, v13

    .line 159
    iget-object v11, p0, Landroid/renderscript/Matrix4f;->mMat:[F

    const/high16 v12, 0x3f800000    # 1.0f

    const/16 v13, 0xf

    aput v12, v11, v13

    .line 160
    const v11, 0x3c8efa35

    mul-float/2addr p1, v11

    .line 161
    float-to-double v12, p1

    invoke-static {v12, v13}, Ljava/lang/Math;->cos(D)D

    move-result-wide v12

    double-to-float v0, v12

    .line 162
    .local v0, "c":F
    float-to-double v12, p1

    invoke-static {v12, v13}, Ljava/lang/Math;->sin(D)D

    move-result-wide v12

    double-to-float v4, v12

    .line 164
    .local v4, "s":F
    mul-float v11, p2, p2

    mul-float v12, p3, p3

    add-float/2addr v11, v12

    mul-float v12, p4, p4

    add-float/2addr v11, v12

    float-to-double v12, v11

    invoke-static {v12, v13}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v12

    double-to-float v1, v12

    .line 165
    .local v1, "len":F
    const/high16 v11, 0x3f800000    # 1.0f

    cmpl-float v11, v1, v11

    if-eqz v11, :cond_1

    const/4 v11, 0x1

    :goto_0
    if-nez v11, :cond_0

    .line 166
    const/high16 v11, 0x3f800000    # 1.0f

    div-float v3, v11, v1

    .line 167
    .local v3, "recipLen":F
    mul-float p2, p2, v3

    .line 168
    mul-float p3, p3, v3

    .line 169
    mul-float p4, p4, v3

    .line 171
    .end local v3    # "recipLen":F
    :cond_0
    const/high16 v11, 0x3f800000    # 1.0f

    sub-float v2, v11, v0

    .line 172
    .local v2, "nc":F
    mul-float v6, p2, p3

    .line 173
    .local v6, "xy":F
    mul-float v8, p3, p4

    .line 174
    .local v8, "yz":F
    mul-float v10, p4, p2

    .line 175
    .local v10, "zx":F
    mul-float v5, p2, v4

    .line 176
    .local v5, "xs":F
    mul-float v7, p3, v4

    .line 177
    .local v7, "ys":F
    mul-float v9, p4, v4

    .line 178
    .local v9, "zs":F
    iget-object v11, p0, Landroid/renderscript/Matrix4f;->mMat:[F

    mul-float v12, p2, p2

    mul-float/2addr v12, v2

    add-float/2addr v12, v0

    const/4 v13, 0x0

    aput v12, v11, v13

    .line 179
    iget-object v11, p0, Landroid/renderscript/Matrix4f;->mMat:[F

    mul-float v12, v6, v2

    sub-float/2addr v12, v9

    const/4 v13, 0x4

    aput v12, v11, v13

    .line 180
    iget-object v11, p0, Landroid/renderscript/Matrix4f;->mMat:[F

    mul-float v12, v10, v2

    add-float/2addr v12, v7

    const/16 v13, 0x8

    aput v12, v11, v13

    .line 181
    iget-object v11, p0, Landroid/renderscript/Matrix4f;->mMat:[F

    mul-float v12, v6, v2

    add-float/2addr v12, v9

    const/4 v13, 0x1

    aput v12, v11, v13

    .line 182
    iget-object v11, p0, Landroid/renderscript/Matrix4f;->mMat:[F

    mul-float v12, p3, p3

    mul-float/2addr v12, v2

    add-float/2addr v12, v0

    const/4 v13, 0x5

    aput v12, v11, v13

    .line 183
    iget-object v11, p0, Landroid/renderscript/Matrix4f;->mMat:[F

    mul-float v12, v8, v2

    sub-float/2addr v12, v5

    const/16 v13, 0x9

    aput v12, v11, v13

    .line 184
    iget-object v11, p0, Landroid/renderscript/Matrix4f;->mMat:[F

    mul-float v12, v10, v2

    sub-float/2addr v12, v7

    const/4 v13, 0x2

    aput v12, v11, v13

    .line 185
    iget-object v11, p0, Landroid/renderscript/Matrix4f;->mMat:[F

    mul-float v12, v8, v2

    add-float/2addr v12, v5

    const/4 v13, 0x6

    aput v12, v11, v13

    .line 186
    iget-object v11, p0, Landroid/renderscript/Matrix4f;->mMat:[F

    mul-float v12, p4, p4

    mul-float/2addr v12, v2

    add-float/2addr v12, v0

    const/16 v13, 0xa

    aput v12, v11, v13

    .line 151
    return-void

    .line 165
    .end local v2    # "nc":F
    .end local v5    # "xs":F
    .end local v6    # "xy":F
    .end local v7    # "ys":F
    .end local v8    # "yz":F
    .end local v9    # "zs":F
    .end local v10    # "zx":F
    :cond_1
    const/4 v11, 0x0

    goto :goto_0
.end method

.method public loadScale(FFF)V
    .locals 2
    .param p1, "x"    # F
    .param p2, "y"    # F
    .param p3, "z"    # F

    .prologue
    .line 197
    invoke-virtual {p0}, Landroid/renderscript/Matrix4f;->loadIdentity()V

    .line 198
    iget-object v0, p0, Landroid/renderscript/Matrix4f;->mMat:[F

    const/4 v1, 0x0

    aput p1, v0, v1

    .line 199
    iget-object v0, p0, Landroid/renderscript/Matrix4f;->mMat:[F

    const/4 v1, 0x5

    aput p2, v0, v1

    .line 200
    iget-object v0, p0, Landroid/renderscript/Matrix4f;->mMat:[F

    const/16 v1, 0xa

    aput p3, v0, v1

    .line 196
    return-void
.end method

.method public loadTranslate(FFF)V
    .locals 2
    .param p1, "x"    # F
    .param p2, "y"    # F
    .param p3, "z"    # F

    .prologue
    .line 212
    invoke-virtual {p0}, Landroid/renderscript/Matrix4f;->loadIdentity()V

    .line 213
    iget-object v0, p0, Landroid/renderscript/Matrix4f;->mMat:[F

    const/16 v1, 0xc

    aput p1, v0, v1

    .line 214
    iget-object v0, p0, Landroid/renderscript/Matrix4f;->mMat:[F

    const/16 v1, 0xd

    aput p2, v0, v1

    .line 215
    iget-object v0, p0, Landroid/renderscript/Matrix4f;->mMat:[F

    const/16 v1, 0xe

    aput p3, v0, v1

    .line 211
    return-void
.end method

.method public multiply(Landroid/renderscript/Matrix4f;)V
    .locals 1
    .param p1, "rhs"    # Landroid/renderscript/Matrix4f;

    .prologue
    .line 357
    new-instance v0, Landroid/renderscript/Matrix4f;

    invoke-direct {v0}, Landroid/renderscript/Matrix4f;-><init>()V

    .line 358
    .local v0, "tmp":Landroid/renderscript/Matrix4f;
    invoke-virtual {v0, p0, p1}, Landroid/renderscript/Matrix4f;->loadMultiply(Landroid/renderscript/Matrix4f;Landroid/renderscript/Matrix4f;)V

    .line 359
    invoke-virtual {p0, v0}, Landroid/renderscript/Matrix4f;->load(Landroid/renderscript/Matrix4f;)V

    .line 356
    return-void
.end method

.method public rotate(FFFF)V
    .locals 1
    .param p1, "rot"    # F
    .param p2, "x"    # F
    .param p3, "y"    # F
    .param p4, "z"    # F

    .prologue
    .line 371
    new-instance v0, Landroid/renderscript/Matrix4f;

    invoke-direct {v0}, Landroid/renderscript/Matrix4f;-><init>()V

    .line 372
    .local v0, "tmp":Landroid/renderscript/Matrix4f;
    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/renderscript/Matrix4f;->loadRotate(FFFF)V

    .line 373
    invoke-virtual {p0, v0}, Landroid/renderscript/Matrix4f;->multiply(Landroid/renderscript/Matrix4f;)V

    .line 370
    return-void
.end method

.method public scale(FFF)V
    .locals 1
    .param p1, "x"    # F
    .param p2, "y"    # F
    .param p3, "z"    # F

    .prologue
    .line 385
    new-instance v0, Landroid/renderscript/Matrix4f;

    invoke-direct {v0}, Landroid/renderscript/Matrix4f;-><init>()V

    .line 386
    .local v0, "tmp":Landroid/renderscript/Matrix4f;
    invoke-virtual {v0, p1, p2, p3}, Landroid/renderscript/Matrix4f;->loadScale(FFF)V

    .line 387
    invoke-virtual {p0, v0}, Landroid/renderscript/Matrix4f;->multiply(Landroid/renderscript/Matrix4f;)V

    .line 384
    return-void
.end method

.method public set(IIF)V
    .locals 2
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "v"    # F

    .prologue
    .line 77
    iget-object v0, p0, Landroid/renderscript/Matrix4f;->mMat:[F

    mul-int/lit8 v1, p1, 0x4

    add-int/2addr v1, p2

    aput p3, v0, v1

    .line 76
    return-void
.end method

.method public translate(FFF)V
    .locals 1
    .param p1, "x"    # F
    .param p2, "y"    # F
    .param p3, "z"    # F

    .prologue
    .line 399
    new-instance v0, Landroid/renderscript/Matrix4f;

    invoke-direct {v0}, Landroid/renderscript/Matrix4f;-><init>()V

    .line 400
    .local v0, "tmp":Landroid/renderscript/Matrix4f;
    invoke-virtual {v0, p1, p2, p3}, Landroid/renderscript/Matrix4f;->loadTranslate(FFF)V

    .line 401
    invoke-virtual {p0, v0}, Landroid/renderscript/Matrix4f;->multiply(Landroid/renderscript/Matrix4f;)V

    .line 398
    return-void
.end method

.method public transpose()V
    .locals 7

    .prologue
    .line 483
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/4 v3, 0x3

    if-ge v0, v3, :cond_1

    .line 484
    add-int/lit8 v1, v0, 0x1

    .local v1, "j":I
    :goto_1
    const/4 v3, 0x4

    if-ge v1, v3, :cond_0

    .line 485
    iget-object v3, p0, Landroid/renderscript/Matrix4f;->mMat:[F

    mul-int/lit8 v4, v0, 0x4

    add-int/2addr v4, v1

    aget v2, v3, v4

    .line 486
    .local v2, "temp":F
    iget-object v3, p0, Landroid/renderscript/Matrix4f;->mMat:[F

    mul-int/lit8 v4, v0, 0x4

    add-int/2addr v4, v1

    iget-object v5, p0, Landroid/renderscript/Matrix4f;->mMat:[F

    mul-int/lit8 v6, v1, 0x4

    add-int/2addr v6, v0

    aget v5, v5, v6

    aput v5, v3, v4

    .line 487
    iget-object v3, p0, Landroid/renderscript/Matrix4f;->mMat:[F

    mul-int/lit8 v4, v1, 0x4

    add-int/2addr v4, v0

    aput v2, v3, v4

    .line 484
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 483
    .end local v2    # "temp":F
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 482
    .end local v1    # "j":I
    :cond_1
    return-void
.end method
