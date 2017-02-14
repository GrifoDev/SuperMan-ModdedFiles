.class public Lcom/android/launcher2/theme/ThemeUtils;
.super Ljava/lang/Object;
.source "ThemeUtils.java"


# static fields
.field private static THIRD_APP_SCALE_RATE:F

.field private static mPaint:Landroid/graphics/Paint;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v1, 0x1

    const/4 v0, 0x0

    sput v0, Lcom/android/launcher2/theme/ThemeUtils;->THIRD_APP_SCALE_RATE:F

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    sput-object v0, Lcom/android/launcher2/theme/ThemeUtils;->mPaint:Landroid/graphics/Paint;

    sget-object v0, Lcom/android/launcher2/theme/ThemeUtils;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    sget-object v0, Lcom/android/launcher2/theme/ThemeUtils;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    sget-object v0, Lcom/android/launcher2/theme/ThemeUtils;->mPaint:Landroid/graphics/Paint;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setDither(Z)V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getNinepatchWithColor(Landroid/graphics/Bitmap;I)Landroid/graphics/drawable/Drawable;
    .locals 5

    const/4 v2, 0x0

    const/4 v4, 0x0

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getNinePatchChunk()[B

    move-result-object v0

    if-nez v0, :cond_0

    move-object v1, v2

    :goto_0
    return-object v1

    :cond_0
    new-instance v1, Landroid/graphics/drawable/NinePatchDrawable;

    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    invoke-direct {v1, p0, v0, v3, v2}, Landroid/graphics/drawable/NinePatchDrawable;-><init>(Landroid/graphics/Bitmap;[BLandroid/graphics/Rect;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    invoke-virtual {v1, v4, v4, v2, v3}, Landroid/graphics/drawable/NinePatchDrawable;->setBounds(IIII)V

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v1, p1, v2}, Landroid/graphics/drawable/NinePatchDrawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    goto :goto_0
.end method

.method public static load3rdAppIconBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;
    .locals 9

    const/4 v8, 0x0

    const/high16 v7, 0x40000000    # 2.0f

    if-nez p0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    sget v5, Lcom/android/launcher2/theme/ThemeUtils;->THIRD_APP_SCALE_RATE:F

    cmpl-float v5, v5, v8

    if-nez v5, :cond_1

    invoke-static {}, Lcom/android/launcher2/theme/OpenThemeManager;->getInstance()Lcom/android/launcher2/theme/OpenThemeManager;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/launcher2/theme/OpenThemeManager;->getChangeableStyle()Lcom/android/launcher2/theme/OpenThemeManager$ChangeableStyle;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/launcher2/theme/OpenThemeManager$ChangeableStyle;->getIconScale()F

    move-result v5

    sput v5, Lcom/android/launcher2/theme/ThemeUtils;->THIRD_APP_SCALE_RATE:F

    :cond_1
    if-eqz p1, :cond_3

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    if-eq v2, p2, :cond_2

    sget v5, Lcom/android/launcher2/theme/ThemeUtils;->THIRD_APP_SCALE_RATE:F

    int-to-float v6, p2

    mul-float/2addr v5, v6

    int-to-float v6, v2

    div-float v4, v5, v6

    :goto_1
    sget-object v5, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p2, p3, v5}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    new-instance v3, Landroid/graphics/Canvas;

    invoke-direct {v3, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    sget-object v5, Lcom/android/launcher2/theme/ThemeUtils;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v3, p1, v8, v8, v5}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    invoke-virtual {v3}, Landroid/graphics/Canvas;->save()I

    int-to-float v5, p2

    div-float/2addr v5, v7

    int-to-float v6, p3

    div-float/2addr v6, v7

    invoke-virtual {v3, v5, v6}, Landroid/graphics/Canvas;->translate(FF)V

    invoke-virtual {v3, v4, v4}, Landroid/graphics/Canvas;->scale(FF)V

    neg-int v5, v2

    int-to-float v5, v5

    div-float/2addr v5, v7

    neg-int v6, v1

    int-to-float v6, v6

    div-float/2addr v6, v7

    sget-object v7, Lcom/android/launcher2/theme/ThemeUtils;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v3, p0, v5, v6, v7}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    invoke-virtual {v3}, Landroid/graphics/Canvas;->restore()V

    goto :goto_0

    :cond_2
    sget v4, Lcom/android/launcher2/theme/ThemeUtils;->THIRD_APP_SCALE_RATE:F

    goto :goto_1

    :cond_3
    move-object v0, p0

    goto :goto_0
.end method

.method public static resizeBitmap(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;
    .locals 1

    const/4 v0, 0x1

    invoke-static {p0, p1, p1, v0}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public static roundBitmap(III)Landroid/graphics/Bitmap;
    .locals 6
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ResourceAsColor"
        }
    .end annotation

    const/high16 v5, 0x40000000    # 2.0f

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p1, p2, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    packed-switch p0, :pswitch_data_0

    :goto_0
    sget-object v2, Lcom/android/launcher2/theme/ThemeUtils;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v2, p0}, Landroid/graphics/Paint;->setColor(I)V

    int-to-float v2, p1

    div-float/2addr v2, v5

    int-to-float v3, p2

    div-float/2addr v3, v5

    int-to-float v4, p2

    div-float/2addr v4, v5

    sget-object v5, Lcom/android/launcher2/theme/ThemeUtils;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v2, v3, v4, v5}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    return-object v1

    :pswitch_0
    const/high16 p0, -0x1000000

    goto :goto_0

    :pswitch_1
    const p0, -0xea4643

    goto :goto_0

    :pswitch_2
    const/16 p0, -0x69db

    goto :goto_0

    :pswitch_3
    const p0, -0x1345f6

    goto :goto_0

    :pswitch_4
    const p0, -0x5829c9

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public static strokeBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 11

    const/high16 v10, 0x40000000    # 2.0f

    const/4 v9, 0x0

    const/4 v6, 0x0

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    if-lez v7, :cond_0

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    if-gtz v7, :cond_1

    :cond_0
    move-object v4, v6

    :goto_0
    return-object v4

    :cond_1
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v8

    if-le v7, v8, :cond_2

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v8

    sub-int v1, v7, v8

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    sub-int v2, v7, v8

    :goto_1
    sget-object v7, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v5, v3, v7}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v4

    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0, v4}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {v0, p0, v9, v9, v6}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    int-to-float v7, v1

    div-float/2addr v7, v10

    int-to-float v8, v2

    div-float/2addr v8, v10

    invoke-virtual {v0, p1, v7, v8, v6}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v8

    sub-int v1, v7, v8

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    sub-int v2, v7, v8

    goto :goto_1
.end method
