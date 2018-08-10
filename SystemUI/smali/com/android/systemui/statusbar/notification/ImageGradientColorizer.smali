.class public Lcom/android/systemui/statusbar/notification/ImageGradientColorizer;
.super Ljava/lang/Object;
.source "ImageGradientColorizer.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public colorize(Landroid/graphics/drawable/Drawable;IZ)Landroid/graphics/Bitmap;
    .locals 34

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v30

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v15

    move/from16 v0, v30

    invoke-static {v0, v15}, Ljava/lang/Math;->min(II)I

    move-result v23

    sub-int v3, v30, v23

    div-int/lit8 v31, v3, 0x2

    sub-int v3, v15, v23

    div-int/lit8 v16, v3, 0x2

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    move/from16 v0, v31

    neg-int v3, v0

    move/from16 v0, v16

    neg-int v4, v0

    sub-int v5, v30, v31

    sub-int v6, v15, v16

    move-object/from16 v0, p1

    invoke-virtual {v0, v3, v4, v5, v6}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    move/from16 v0, v23

    move/from16 v1, v23

    invoke-static {v0, v1, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v21

    new-instance v11, Landroid/graphics/Canvas;

    move-object/from16 v0, v21

    invoke-direct {v11, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    const v19, 0x3e59b3d0    # 0.2126f

    const v18, 0x3f371759    # 0.7152f

    const v17, 0x3d93dd98    # 0.0722f

    invoke-static/range {p2 .. p2}, Landroid/graphics/Color;->red(I)I

    move-result v29

    invoke-static/range {p2 .. p2}, Landroid/graphics/Color;->green(I)I

    move-result v27

    invoke-static/range {p2 .. p2}, Landroid/graphics/Color;->blue(I)I

    move-result v25

    move/from16 v0, v29

    int-to-float v3, v0

    const/high16 v4, 0x437f0000    # 255.0f

    div-float v28, v3, v4

    move/from16 v0, v27

    int-to-float v3, v0

    const/high16 v4, 0x437f0000    # 255.0f

    div-float v26, v3, v4

    move/from16 v0, v25

    int-to-float v3, v0

    const/high16 v4, 0x437f0000    # 255.0f

    div-float v24, v3, v4

    const v3, 0x3e59b3d0    # 0.2126f

    mul-float v3, v3, v28

    const v4, 0x3f371759    # 0.7152f

    mul-float v4, v4, v26

    add-float/2addr v3, v4

    const v4, 0x3d93dd98    # 0.0722f

    mul-float v4, v4, v24

    add-float/2addr v3, v4

    const/high16 v4, 0x437f0000    # 255.0f

    mul-float v10, v3, v4

    new-instance v20, Landroid/graphics/ColorMatrix;

    const/16 v3, 0x14

    new-array v3, v3, [F

    const v4, 0x3e59b3d0    # 0.2126f

    const/4 v5, 0x0

    aput v4, v3, v5

    const v4, 0x3f371759    # 0.7152f

    const/4 v5, 0x1

    aput v4, v3, v5

    const v4, 0x3d93dd98    # 0.0722f

    const/4 v5, 0x2

    aput v4, v3, v5

    const/4 v4, 0x0

    const/4 v5, 0x3

    aput v4, v3, v5

    move/from16 v0, v29

    int-to-float v4, v0

    sub-float/2addr v4, v10

    const/4 v5, 0x4

    aput v4, v3, v5

    const v4, 0x3e59b3d0    # 0.2126f

    const/4 v5, 0x5

    aput v4, v3, v5

    const v4, 0x3f371759    # 0.7152f

    const/4 v5, 0x6

    aput v4, v3, v5

    const v4, 0x3d93dd98    # 0.0722f

    const/4 v5, 0x7

    aput v4, v3, v5

    const/4 v4, 0x0

    const/16 v5, 0x8

    aput v4, v3, v5

    move/from16 v0, v27

    int-to-float v4, v0

    sub-float/2addr v4, v10

    const/16 v5, 0x9

    aput v4, v3, v5

    const v4, 0x3e59b3d0    # 0.2126f

    const/16 v5, 0xa

    aput v4, v3, v5

    const v4, 0x3f371759    # 0.7152f

    const/16 v5, 0xb

    aput v4, v3, v5

    const v4, 0x3d93dd98    # 0.0722f

    const/16 v5, 0xc

    aput v4, v3, v5

    const/4 v4, 0x0

    const/16 v5, 0xd

    aput v4, v3, v5

    move/from16 v0, v25

    int-to-float v4, v0

    sub-float/2addr v4, v10

    const/16 v5, 0xe

    aput v4, v3, v5

    const/4 v4, 0x0

    const/16 v5, 0xf

    aput v4, v3, v5

    const/4 v4, 0x0

    const/16 v5, 0x10

    aput v4, v3, v5

    const/4 v4, 0x0

    const/16 v5, 0x11

    aput v4, v3, v5

    const/high16 v4, 0x3f800000    # 1.0f

    const/16 v5, 0x12

    aput v4, v3, v5

    const/4 v4, 0x0

    const/16 v5, 0x13

    aput v4, v3, v5

    move-object/from16 v0, v20

    invoke-direct {v0, v3}, Landroid/graphics/ColorMatrix;-><init>([F)V

    new-instance v22, Landroid/graphics/Paint;

    const/4 v3, 0x1

    move-object/from16 v0, v22

    invoke-direct {v0, v3}, Landroid/graphics/Paint;-><init>(I)V

    new-instance v2, Landroid/graphics/LinearGradient;

    const/4 v3, 0x0

    const/4 v4, 0x0

    move/from16 v0, v23

    int-to-float v5, v0

    const/4 v6, 0x0

    const/4 v7, 0x3

    new-array v7, v7, [I

    const/4 v8, 0x0

    const/4 v9, 0x0

    aput v8, v7, v9

    const/high16 v8, 0x3f800000    # 1.0f

    const/high16 v9, 0x3f800000    # 1.0f

    const/high16 v32, 0x3f800000    # 1.0f

    const/high16 v33, 0x3f000000    # 0.5f

    move/from16 v0, v33

    move/from16 v1, v32

    invoke-static {v0, v8, v9, v1}, Landroid/graphics/Color;->argb(FFFF)I

    move-result v8

    const/4 v9, 0x1

    aput v8, v7, v9

    const/high16 v8, -0x1000000

    const/4 v9, 0x2

    aput v8, v7, v9

    const/4 v8, 0x3

    new-array v8, v8, [F

    fill-array-data v8, :array_0

    sget-object v9, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    invoke-direct/range {v2 .. v9}, Landroid/graphics/LinearGradient;-><init>(FFFF[I[FLandroid/graphics/Shader$TileMode;)V

    move-object/from16 v0, v22

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    move/from16 v0, v23

    move/from16 v1, v23

    invoke-static {v0, v1, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v13

    new-instance v14, Landroid/graphics/Canvas;

    invoke-direct {v14, v13}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/drawable/Drawable;->clearColorFilter()V

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    if-eqz p3, :cond_0

    move/from16 v0, v23

    int-to-float v3, v0

    const/4 v4, 0x0

    invoke-virtual {v14, v3, v4}, Landroid/graphics/Canvas;->translate(FF)V

    const/high16 v3, -0x40800000    # -1.0f

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-virtual {v14, v3, v4}, Landroid/graphics/Canvas;->scale(FF)V

    :cond_0
    new-instance v3, Landroid/graphics/PorterDuffXfermode;

    sget-object v4, Landroid/graphics/PorterDuff$Mode;->DST_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v3, v4}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    move-object/from16 v0, v22

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    move-object/from16 v0, v22

    invoke-virtual {v14, v0}, Landroid/graphics/Canvas;->drawPaint(Landroid/graphics/Paint;)V

    new-instance v12, Landroid/graphics/Paint;

    const/4 v3, 0x1

    invoke-direct {v12, v3}, Landroid/graphics/Paint;-><init>(I)V

    new-instance v3, Landroid/graphics/ColorMatrixColorFilter;

    move-object/from16 v0, v20

    invoke-direct {v3, v0}, Landroid/graphics/ColorMatrixColorFilter;-><init>(Landroid/graphics/ColorMatrix;)V

    invoke-virtual {v12, v3}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    const/16 v3, 0x7f

    invoke-virtual {v12, v3}, Landroid/graphics/Paint;->setAlpha(I)V

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v11, v13, v3, v4, v12}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    new-instance v2, Landroid/graphics/LinearGradient;

    const/4 v3, 0x0

    const/4 v4, 0x0

    move/from16 v0, v23

    int-to-float v5, v0

    const/4 v6, 0x0

    const/4 v7, 0x3

    new-array v7, v7, [I

    const/4 v8, 0x0

    const/4 v9, 0x0

    aput v8, v7, v9

    const/high16 v8, 0x3f800000    # 1.0f

    const/high16 v9, 0x3f800000    # 1.0f

    const/high16 v32, 0x3f800000    # 1.0f

    const/high16 v33, 0x3f000000    # 0.5f

    move/from16 v0, v33

    move/from16 v1, v32

    invoke-static {v0, v8, v9, v1}, Landroid/graphics/Color;->argb(FFFF)I

    move-result v8

    const/4 v9, 0x1

    aput v8, v7, v9

    const/high16 v8, -0x1000000

    const/4 v9, 0x2

    aput v8, v7, v9

    const/4 v8, 0x3

    new-array v8, v8, [F

    fill-array-data v8, :array_1

    sget-object v9, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    invoke-direct/range {v2 .. v9}, Landroid/graphics/LinearGradient;-><init>(FFFF[I[FLandroid/graphics/Shader$TileMode;)V

    move-object/from16 v0, v22

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    move-object/from16 v0, v22

    invoke-virtual {v14, v0}, Landroid/graphics/Canvas;->drawPaint(Landroid/graphics/Paint;)V

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v11, v13, v3, v4, v5}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    return-object v21

    :array_0
    .array-data 4
        0x0
        0x3ecccccd    # 0.4f
        0x3f800000    # 1.0f
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x3f19999a    # 0.6f
        0x3f800000    # 1.0f
    .end array-data
.end method
