.class public Lcom/android/contacts/common/util/BitmapUtil;
.super Ljava/lang/Object;
.source "BitmapUtil.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    return-void
.end method

.method public static decodeBitmapFromBytes([BI)Landroid/graphics/Bitmap;
    .locals 3
    .param p0, "bytes"    # [B
    .param p1, "sampleSize"    # I

    .prologue
    .line 86
    const/4 v1, 0x1

    if-gt p1, v1, :cond_0

    .line 87
    const/4 v0, 0x0

    .line 92
    .local v0, "options":Landroid/graphics/BitmapFactory$Options;
    :goto_0
    const/4 v1, 0x0

    array-length v2, p0

    invoke-static {p0, v1, v2, v0}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v1

    return-object v1

    .line 89
    .end local v0    # "options":Landroid/graphics/BitmapFactory$Options;
    :cond_0
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 90
    .restart local v0    # "options":Landroid/graphics/BitmapFactory$Options;
    iput p1, v0, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    goto :goto_0
.end method

.method public static findOptimalSampleSize(II)I
    .locals 5
    .param p0, "originalSmallerExtent"    # I
    .param p1, "targetExtent"    # I

    .prologue
    const/4 v1, 0x1

    .line 63
    if-ge p1, v1, :cond_1

    .line 78
    :cond_0
    return v1

    .line 64
    :cond_1
    if-lt p0, v1, :cond_0

    .line 71
    move v0, p0

    .line 72
    .local v0, "extent":I
    const/4 v1, 0x1

    .line 73
    .local v1, "sampleSize":I
    :goto_0
    shr-int/lit8 v2, v0, 0x1

    int-to-float v2, v2

    int-to-float v3, p1

    const v4, 0x3f4ccccd    # 0.8f

    mul-float/2addr v3, v4

    cmpl-float v2, v2, v3

    if-ltz v2, :cond_0

    .line 74
    shl-int/lit8 v1, v1, 0x1

    .line 75
    shr-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public static getRotatedDrawable(Landroid/content/res/Resources;IF)Landroid/graphics/drawable/Drawable;
    .locals 7
    .param p0, "resources"    # Landroid/content/res/Resources;
    .param p1, "resourceId"    # I
    .param p2, "angle"    # F

    .prologue
    const/4 v6, 0x0

    .line 107
    invoke-static {p0, p1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 109
    .local v0, "original":Landroid/graphics/Bitmap;
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    sget-object v5, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 108
    invoke-static {v3, v4, v5}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 112
    .local v1, "rotated":Landroid/graphics/Bitmap;
    new-instance v2, Landroid/graphics/Canvas;

    invoke-direct {v2, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 113
    .local v2, "tempCanvas":Landroid/graphics/Canvas;
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    int-to-float v4, v4

    invoke-virtual {v2, p2, v3, v4}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 114
    const/4 v3, 0x0

    invoke-virtual {v2, v0, v6, v6, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 116
    new-instance v3, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v3, p0, v1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    return-object v3
.end method

.method public static getRoundedBitmap(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;
    .locals 17
    .param p0, "input"    # Landroid/graphics/Bitmap;
    .param p1, "targetWidth"    # I
    .param p2, "targetHeight"    # I

    .prologue
    .line 130
    if-nez p0, :cond_0

    .line 131
    const/4 v8, 0x0

    .line 165
    :goto_0
    return-object v8

    .line 133
    :cond_0
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v4

    .line 134
    .local v4, "inputConfig":Landroid/graphics/Bitmap$Config;
    if-eqz v4, :cond_1

    .end local v4    # "inputConfig":Landroid/graphics/Bitmap$Config;
    :goto_1
    move/from16 v0, p1

    move/from16 v1, p2

    invoke-static {v0, v1, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v8

    .line 136
    .local v8, "result":Landroid/graphics/Bitmap;
    new-instance v2, Landroid/graphics/Canvas;

    invoke-direct {v2, v8}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 137
    .local v2, "canvas":Landroid/graphics/Canvas;
    new-instance v7, Landroid/graphics/Paint;

    invoke-direct {v7}, Landroid/graphics/Paint;-><init>()V

    .line 138
    .local v7, "paint":Landroid/graphics/Paint;
    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-virtual {v2, v13, v14, v15, v0}, Landroid/graphics/Canvas;->drawARGB(IIII)V

    .line 139
    const/4 v13, 0x1

    invoke-virtual {v7, v13}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 140
    new-instance v3, Landroid/graphics/RectF;

    const/4 v13, 0x0

    const/4 v14, 0x0

    move/from16 v0, p1

    int-to-float v15, v0

    move/from16 v0, p2

    int-to-float v0, v0

    move/from16 v16, v0

    move/from16 v0, v16

    invoke-direct {v3, v13, v14, v15, v0}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 141
    .local v3, "dst":Landroid/graphics/RectF;
    invoke-virtual {v2, v3, v7}, Landroid/graphics/Canvas;->drawOval(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 145
    new-instance v13, Landroid/graphics/PorterDuffXfermode;

    sget-object v14, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v13, v14}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v7, v13}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 147
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    .line 148
    .local v6, "inputWidth":I
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    .line 152
    .local v5, "inputHeight":I
    int-to-float v13, v6

    move/from16 v0, p1

    int-to-float v14, v0

    div-float/2addr v13, v14

    int-to-float v14, v5

    move/from16 v0, p2

    int-to-float v15, v0

    div-float/2addr v14, v15

    invoke-static {v13, v14}, Ljava/lang/Math;->min(FF)F

    move-result v9

    .line 155
    .local v9, "scaleBy":F
    move/from16 v0, p1

    int-to-float v13, v0

    mul-float/2addr v13, v9

    const/high16 v14, 0x40000000    # 2.0f

    div-float/2addr v13, v14

    float-to-int v11, v13

    .line 156
    .local v11, "xCropAmountHalved":I
    move/from16 v0, p2

    int-to-float v13, v0

    mul-float/2addr v13, v9

    const/high16 v14, 0x40000000    # 2.0f

    div-float/2addr v13, v14

    float-to-int v12, v13

    .line 158
    .local v12, "yCropAmountHalved":I
    new-instance v10, Landroid/graphics/Rect;

    div-int/lit8 v13, v6, 0x2

    sub-int/2addr v13, v11

    div-int/lit8 v14, v5, 0x2

    sub-int/2addr v14, v12

    div-int/lit8 v15, v6, 0x2

    add-int/2addr v15, v11

    div-int/lit8 v16, v5, 0x2

    add-int v16, v16, v12

    move/from16 v0, v16

    invoke-direct {v10, v13, v14, v15, v0}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 164
    .local v10, "src":Landroid/graphics/Rect;
    move-object/from16 v0, p0

    invoke-virtual {v2, v0, v10, v3, v7}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    goto/16 :goto_0

    .line 134
    .end local v2    # "canvas":Landroid/graphics/Canvas;
    .end local v3    # "dst":Landroid/graphics/RectF;
    .end local v5    # "inputHeight":I
    .end local v6    # "inputWidth":I
    .end local v7    # "paint":Landroid/graphics/Paint;
    .end local v8    # "result":Landroid/graphics/Bitmap;
    .end local v9    # "scaleBy":F
    .end local v10    # "src":Landroid/graphics/Rect;
    .end local v11    # "xCropAmountHalved":I
    .end local v12    # "yCropAmountHalved":I
    .restart local v4    # "inputConfig":Landroid/graphics/Bitmap$Config;
    :cond_1
    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    goto/16 :goto_1
.end method

.method public static getSmallerExtentFromBytes([B)I
    .locals 3
    .param p0, "bytes"    # [B

    .prologue
    .line 43
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 46
    .local v0, "options":Landroid/graphics/BitmapFactory$Options;
    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 47
    const/4 v1, 0x0

    array-length v2, p0

    invoke-static {p0, v1, v2, v0}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 50
    iget v1, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    iget v2, v0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    return v1
.end method
