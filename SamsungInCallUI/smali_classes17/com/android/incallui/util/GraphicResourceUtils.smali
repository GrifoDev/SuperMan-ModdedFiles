.class public Lcom/android/incallui/util/GraphicResourceUtils;
.super Ljava/lang/Object;
.source "GraphicResourceUtils.java"


# static fields
.field private static final DOMINANT_COLOR_EXTRACTION_LOOP_NUMBER:I = 0x1

.field private static final DOMINANT_COLOR_NUMER:I = 0xa

.field public static final FONT_SCALE_HUGE:D = 1.5

.field public static final FONT_SCALE_LARGE:D = 1.2

.field public static final FONT_SCALE_TINY:D = 0.8

.field private static final JANSKY_PACKAGE_NAME:Ljava/lang/String; = "com.samsung.app.jansky"

.field private static final LOG_TAG:Ljava/lang/String; = "GraphicResourceUtils"

.field private static final MINIMUM_SIZE:I = 0x64


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blur(Landroid/content/Context;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "image"    # Landroid/graphics/Bitmap;

    .prologue
    const/4 v1, 0x0

    const/4 v6, 0x1

    .line 335
    if-nez p1, :cond_0

    .line 353
    :goto_0
    return-object v1

    .line 336
    :cond_0
    if-nez p0, :cond_1

    .line 337
    const-string v4, "GraphicResourceUtils"

    const-string v5, "blur context is empty: "

    invoke-static {v4, v5}, Lcom/android/incallui/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 340
    :cond_1
    const-string v4, "GraphicResourceUtils"

    const-string v5, "blur start"

    invoke-static {v4, v5, v6}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 341
    invoke-static {p1}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 342
    .local v1, "outputBitmap":Landroid/graphics/Bitmap;
    invoke-static {p0}, Landroid/renderscript/RenderScript;->create(Landroid/content/Context;)Landroid/renderscript/RenderScript;

    move-result-object v3

    .line 343
    .local v3, "renderScript":Landroid/renderscript/RenderScript;
    invoke-static {v3, v1}, Landroid/renderscript/Allocation;->createFromBitmap(Landroid/renderscript/RenderScript;Landroid/graphics/Bitmap;)Landroid/renderscript/Allocation;

    move-result-object v2

    .line 346
    .local v2, "overlayAlloc":Landroid/renderscript/Allocation;
    invoke-virtual {v2}, Landroid/renderscript/Allocation;->getElement()Landroid/renderscript/Element;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/renderscript/ScriptIntrinsicBlur;->create(Landroid/renderscript/RenderScript;Landroid/renderscript/Element;)Landroid/renderscript/ScriptIntrinsicBlur;

    move-result-object v0

    .line 347
    .local v0, "blur":Landroid/renderscript/ScriptIntrinsicBlur;
    invoke-virtual {v0, v2}, Landroid/renderscript/ScriptIntrinsicBlur;->setInput(Landroid/renderscript/Allocation;)V

    .line 348
    const/high16 v4, 0x41c80000    # 25.0f

    invoke-virtual {v0, v4}, Landroid/renderscript/ScriptIntrinsicBlur;->setRadius(F)V

    .line 349
    invoke-virtual {v0, v2}, Landroid/renderscript/ScriptIntrinsicBlur;->forEach(Landroid/renderscript/Allocation;)V

    .line 350
    invoke-virtual {v2, v1}, Landroid/renderscript/Allocation;->copyTo(Landroid/graphics/Bitmap;)V

    .line 351
    invoke-virtual {v3}, Landroid/renderscript/RenderScript;->destroy()V

    .line 352
    const-string v4, "GraphicResourceUtils"

    const-string v5, "blur end"

    invoke-static {v4, v5, v6}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_0
.end method

.method public static cropBitmap(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;
    .locals 6
    .param p0, "bitmap"    # Landroid/graphics/Bitmap;
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    .line 311
    if-nez p0, :cond_0

    const/4 v0, 0x0

    .line 331
    :goto_0
    return-object v0

    .line 312
    :cond_0
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    .line 313
    .local v2, "originWidth":I
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    .line 315
    .local v1, "originHeight":I
    const/4 v3, 0x0

    .line 316
    .local v3, "x":I
    const/4 v4, 0x0

    .line 318
    .local v4, "y":I
    if-le v2, p1, :cond_3

    .line 319
    sub-int v5, v2, p1

    div-int/lit8 v3, v5, 0x2

    .line 324
    :cond_1
    :goto_1
    if-le v1, p2, :cond_4

    .line 325
    sub-int v5, v1, p2

    div-int/lit8 v4, v5, 0x2

    .line 330
    :cond_2
    :goto_2
    invoke-static {p0, v3, v4, p1, p2}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 331
    .local v0, "cropedBitmap":Landroid/graphics/Bitmap;
    goto :goto_0

    .line 320
    .end local v0    # "cropedBitmap":Landroid/graphics/Bitmap;
    :cond_3
    if-ge v2, p1, :cond_1

    .line 321
    move p1, v2

    goto :goto_1

    .line 326
    :cond_4
    if-ge v1, p2, :cond_2

    .line 327
    move p2, v1

    goto :goto_2
.end method

.method public static getBitmapFromDrawable(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;
    .locals 6
    .param p0, "drawable"    # Landroid/graphics/drawable/Drawable;

    .prologue
    const/4 v5, 0x0

    .line 487
    instance-of v2, p0, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v2, :cond_0

    .line 488
    check-cast p0, Landroid/graphics/drawable/BitmapDrawable;

    .end local p0    # "drawable":Landroid/graphics/drawable/Drawable;
    invoke-virtual {p0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 495
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    .local v1, "canvas":Landroid/graphics/Canvas;
    .restart local p0    # "drawable":Landroid/graphics/drawable/Drawable;
    :goto_0
    return-object v0

    .line 491
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    .end local v1    # "canvas":Landroid/graphics/Canvas;
    :cond_0
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v3

    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v2, v3, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 492
    .restart local v0    # "bitmap":Landroid/graphics/Bitmap;
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 493
    .restart local v1    # "canvas":Landroid/graphics/Canvas;
    invoke-virtual {v1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v2

    invoke-virtual {v1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v3

    invoke-virtual {p0, v5, v5, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 494
    invoke-virtual {p0, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_0
.end method

.method public static getBitmapFromSprDrawable(Landroid/content/Context;I)Landroid/graphics/Bitmap;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "drawableId"    # I

    .prologue
    .line 648
    const/4 v0, 0x0

    .line 649
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 650
    .local v2, "res":Landroid/content/res/Resources;
    const/4 v3, 0x0

    invoke-virtual {v2, p1, v3}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 652
    .local v1, "drawable":Landroid/graphics/drawable/Drawable;
    instance-of v3, v1, Lcom/samsung/android/graphics/spr/SemPathRenderingDrawable;

    if-eqz v3, :cond_0

    .line 653
    check-cast v1, Lcom/samsung/android/graphics/spr/SemPathRenderingDrawable;

    .end local v1    # "drawable":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v1}, Lcom/samsung/android/graphics/spr/SemPathRenderingDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 655
    :cond_0
    return-object v0
.end method

.method public static getCircledBitmap(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;
    .locals 12
    .param p0, "bitmap"    # Landroid/graphics/Bitmap;
    .param p1, "diameter"    # I

    .prologue
    const/high16 v11, 0x40000000    # 2.0f

    .line 210
    :try_start_0
    const-string v7, "GraphicResourceUtils"

    const-string v8, "getCircledBitmap: start"

    const/4 v9, 0x1

    invoke-static {v7, v8, v9}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 211
    const/4 v7, 0x0

    invoke-static {p0, p1, p1, v7}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object p0

    .line 212
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    sget-object v9, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v7, v8, v9}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v6

    .line 214
    .local v6, "result":Landroid/graphics/Bitmap;
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0, v6}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 215
    .local v0, "canvas":Landroid/graphics/Canvas;
    const v1, -0xffff01

    .line 216
    .local v1, "color":I
    new-instance v4, Landroid/graphics/Paint;

    invoke-direct {v4}, Landroid/graphics/Paint;-><init>()V

    .line 217
    .local v4, "paint":Landroid/graphics/Paint;
    new-instance v5, Landroid/graphics/Rect;

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v9

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v10

    invoke-direct {v5, v7, v8, v9, v10}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 219
    .local v5, "rect":Landroid/graphics/Rect;
    const/4 v7, 0x1

    invoke-virtual {v4, v7}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 220
    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual {v0, v7, v8, v9, v10}, Landroid/graphics/Canvas;->drawARGB(IIII)V

    .line 221
    invoke-virtual {v4, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 222
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    int-to-float v7, v7

    div-float/2addr v7, v11

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    int-to-float v8, v8

    div-float/2addr v8, v11

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v9

    int-to-float v9, v9

    div-float/2addr v9, v11

    invoke-virtual {v0, v7, v8, v9, v4}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 223
    new-instance v7, Landroid/graphics/PorterDuffXfermode;

    sget-object v8, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v7, v8}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v4, v7}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 224
    invoke-virtual {v0, p0, v5, v5, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 225
    const-string v7, "GraphicResourceUtils"

    const-string v8, "getCircledBitmap: end"

    const/4 v9, 0x1

    invoke-static {v7, v8, v9}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_1

    .line 232
    .end local v0    # "canvas":Landroid/graphics/Canvas;
    .end local v1    # "color":I
    .end local v4    # "paint":Landroid/graphics/Paint;
    .end local v5    # "rect":Landroid/graphics/Rect;
    .end local v6    # "result":Landroid/graphics/Bitmap;
    :goto_0
    return-object v6

    .line 227
    :catch_0
    move-exception v2

    .line 228
    .local v2, "e":Ljava/lang/Exception;
    const-string v7, "GraphicResourceUtils"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "getCircledBitmap: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/android/incallui/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 232
    .end local v2    # "e":Ljava/lang/Exception;
    :goto_1
    const/4 v6, 0x0

    goto :goto_0

    .line 229
    :catch_1
    move-exception v3

    .line 230
    .local v3, "oom":Ljava/lang/OutOfMemoryError;
    const-string v7, "GraphicResourceUtils"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "getCircledBitmap: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/android/incallui/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public static getCircledDrawable(Landroid/graphics/drawable/Drawable;I)Landroid/graphics/drawable/Drawable;
    .locals 14
    .param p0, "bitmapDrawable"    # Landroid/graphics/drawable/Drawable;
    .param p1, "diameter"    # I

    .prologue
    .line 73
    const/4 v3, 0x0

    .line 75
    .local v3, "drawable":Landroid/graphics/drawable/Drawable;
    :try_start_0
    const-string v10, "GraphicResourceUtils"

    const-string v11, "getCircledDrawable: start"

    const/4 v12, 0x1

    invoke-static {v10, v11, v12}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 76
    invoke-static {p0}, Lcom/android/incallui/util/GraphicResourceUtils;->getBitmapFromDrawable(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 77
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    const/4 v10, 0x0

    invoke-static {v0, p1, p1, v10}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 78
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v10

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v11

    sget-object v12, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v10, v11, v12}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v9

    .line 80
    .local v9, "result":Landroid/graphics/Bitmap;
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v9}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 81
    .local v1, "canvas":Landroid/graphics/Canvas;
    const v2, -0xffff01

    .line 82
    .local v2, "color":I
    new-instance v7, Landroid/graphics/Paint;

    invoke-direct {v7}, Landroid/graphics/Paint;-><init>()V

    .line 83
    .local v7, "paint":Landroid/graphics/Paint;
    new-instance v8, Landroid/graphics/Rect;

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v12

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v13

    invoke-direct {v8, v10, v11, v12, v13}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 85
    .local v8, "rect":Landroid/graphics/Rect;
    const/4 v10, 0x1

    invoke-virtual {v7, v10}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 86
    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-virtual {v1, v10, v11, v12, v13}, Landroid/graphics/Canvas;->drawARGB(IIII)V

    .line 87
    invoke-virtual {v7, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 88
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v10

    int-to-float v10, v10

    const/high16 v11, 0x40000000    # 2.0f

    div-float/2addr v10, v11

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v11

    int-to-float v11, v11

    const/high16 v12, 0x40000000    # 2.0f

    div-float/2addr v11, v12

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v12

    int-to-float v12, v12

    const/high16 v13, 0x40000000    # 2.0f

    div-float/2addr v12, v13

    invoke-virtual {v1, v10, v11, v12, v7}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 89
    new-instance v10, Landroid/graphics/PorterDuffXfermode;

    sget-object v11, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v10, v11}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v7, v10}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 90
    invoke-virtual {v1, v0, v8, v8, v7}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 91
    new-instance v4, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v4, v9}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_1

    .line 92
    .end local v3    # "drawable":Landroid/graphics/drawable/Drawable;
    .local v4, "drawable":Landroid/graphics/drawable/Drawable;
    :try_start_1
    const-string v10, "GraphicResourceUtils"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "getCircledDrawable: end "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x1

    invoke-static {v10, v11, v12}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_1} :catch_2

    move-object v3, v4

    .line 99
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    .end local v1    # "canvas":Landroid/graphics/Canvas;
    .end local v2    # "color":I
    .end local v4    # "drawable":Landroid/graphics/drawable/Drawable;
    .end local v7    # "paint":Landroid/graphics/Paint;
    .end local v8    # "rect":Landroid/graphics/Rect;
    .end local v9    # "result":Landroid/graphics/Bitmap;
    .restart local v3    # "drawable":Landroid/graphics/drawable/Drawable;
    :goto_0
    return-object v4

    .line 94
    :catch_0
    move-exception v5

    .line 95
    .local v5, "e":Ljava/lang/Exception;
    :goto_1
    const-string v10, "GraphicResourceUtils"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "getCircledDrawable: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/android/incallui/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 99
    .end local v5    # "e":Ljava/lang/Exception;
    :goto_2
    const/4 v4, 0x0

    goto :goto_0

    .line 96
    :catch_1
    move-exception v6

    .line 97
    .local v6, "oom":Ljava/lang/OutOfMemoryError;
    :goto_3
    const-string v10, "GraphicResourceUtils"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "getCircledDrawable: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/android/incallui/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 96
    .end local v3    # "drawable":Landroid/graphics/drawable/Drawable;
    .end local v6    # "oom":Ljava/lang/OutOfMemoryError;
    .restart local v0    # "bitmap":Landroid/graphics/Bitmap;
    .restart local v1    # "canvas":Landroid/graphics/Canvas;
    .restart local v2    # "color":I
    .restart local v4    # "drawable":Landroid/graphics/drawable/Drawable;
    .restart local v7    # "paint":Landroid/graphics/Paint;
    .restart local v8    # "rect":Landroid/graphics/Rect;
    .restart local v9    # "result":Landroid/graphics/Bitmap;
    :catch_2
    move-exception v6

    move-object v3, v4

    .end local v4    # "drawable":Landroid/graphics/drawable/Drawable;
    .restart local v3    # "drawable":Landroid/graphics/drawable/Drawable;
    goto :goto_3

    .line 94
    .end local v3    # "drawable":Landroid/graphics/drawable/Drawable;
    .restart local v4    # "drawable":Landroid/graphics/drawable/Drawable;
    :catch_3
    move-exception v5

    move-object v3, v4

    .end local v4    # "drawable":Landroid/graphics/drawable/Drawable;
    .restart local v3    # "drawable":Landroid/graphics/drawable/Drawable;
    goto :goto_1
.end method

.method private static getDefaultWallpaper(Landroid/content/Context;Landroid/app/WallpaperManager;)Landroid/graphics/Bitmap;
    .locals 13
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "wallpaperManager"    # Landroid/app/WallpaperManager;

    .prologue
    const/4 v12, 0x1

    .line 778
    const-string v0, "keyguard_default_wallpaper"

    .line 781
    .local v0, "DEFAULT_WALLPAPER_ID":Ljava/lang/String;
    :try_start_0
    const-class v9, Landroid/app/WallpaperManager;

    const-string v10, "getPreloadWallpaperColorCode"

    const/4 v11, 0x0

    new-array v11, v11, [Ljava/lang/Class;

    invoke-static {v9, v10, v11}, Lcom/android/incallui/wrapper/ReflectUtil;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    .line 782
    .local v4, "getPreloadWallpaperColorCode":Ljava/lang/reflect/Method;
    const/4 v9, 0x0

    new-array v9, v9, [Ljava/lang/Object;

    invoke-static {p1, v4, v9}, Lcom/android/incallui/wrapper/ReflectUtil;->invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 783
    .local v1, "colorCode":Ljava/lang/String;
    const-string v5, "keyguard_default_wallpaper"

    .line 784
    .local v5, "id":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_0

    .line 785
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "_"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 787
    :cond_0
    const-string v9, "GraphicResourceUtils"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "getDefaultWallpaperColors: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x1

    invoke-static {v9, v10, v11}, Lcom/android/incallui/Log;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 788
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v9

    const-string v10, "com.android.systemui"

    invoke-virtual {v9, v10}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v7

    .line 789
    .local v7, "systemUIRes":Landroid/content/res/Resources;
    const-string v9, "drawable"

    const-string v10, "com.android.systemui"

    invoke-virtual {v7, v5, v9, v10}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    .line 790
    .local v6, "resId":I
    const/4 v9, 0x0

    invoke-virtual {v7, v6, v9}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 791
    .local v2, "drawable":Landroid/graphics/drawable/Drawable;
    check-cast v2, Landroid/graphics/drawable/BitmapDrawable;

    .end local v2    # "drawable":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v2}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object v8

    .line 796
    .end local v1    # "colorCode":Ljava/lang/String;
    .end local v4    # "getPreloadWallpaperColorCode":Ljava/lang/reflect/Method;
    .end local v5    # "id":Ljava/lang/String;
    .end local v6    # "resId":I
    .end local v7    # "systemUIRes":Landroid/content/res/Resources;
    .local v8, "wallpaper":Landroid/graphics/Bitmap;
    :goto_0
    if-nez v8, :cond_1

    .line 797
    const-string v9, "GraphicResourceUtils"

    const-string v10, "getDefaultWallpaperColors: get keyguard_default_wallpaper"

    invoke-static {v9, v10, v12}, Lcom/android/incallui/Log;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 799
    :try_start_1
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v9

    const-string v10, "com.android.systemui"

    invoke-virtual {v9, v10}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v7

    .line 800
    .restart local v7    # "systemUIRes":Landroid/content/res/Resources;
    const-string v9, "keyguard_default_wallpaper"

    const-string v10, "drawable"

    const-string v11, "com.android.systemui"

    invoke-virtual {v7, v9, v10, v11}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    .line 801
    .restart local v6    # "resId":I
    const/4 v9, 0x0

    invoke-virtual {v7, v6, v9}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 802
    .restart local v2    # "drawable":Landroid/graphics/drawable/Drawable;
    check-cast v2, Landroid/graphics/drawable/BitmapDrawable;

    .end local v2    # "drawable":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v2}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v8

    .line 808
    .end local v6    # "resId":I
    .end local v7    # "systemUIRes":Landroid/content/res/Resources;
    :cond_1
    :goto_1
    return-object v8

    .line 792
    .end local v8    # "wallpaper":Landroid/graphics/Bitmap;
    :catch_0
    move-exception v3

    .line 793
    .local v3, "e":Ljava/lang/Exception;
    :goto_2
    const-string v9, "GraphicResourceUtils"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "getDefaultWallpaperColors: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10, v12}, Lcom/android/incallui/Log;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 794
    const/4 v8, 0x0

    .restart local v8    # "wallpaper":Landroid/graphics/Bitmap;
    goto :goto_0

    .line 803
    .end local v3    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v3

    .line 804
    .restart local v3    # "e":Ljava/lang/Exception;
    const-string v9, "GraphicResourceUtils"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "getDefaultWallpaperColors: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10, v12}, Lcom/android/incallui/Log;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 805
    const/4 v8, 0x0

    goto :goto_1

    .line 792
    .end local v3    # "e":Ljava/lang/Exception;
    .end local v8    # "wallpaper":Landroid/graphics/Bitmap;
    :catch_2
    move-exception v3

    goto :goto_2
.end method

.method public static getDensity()F
    .locals 1

    .prologue
    .line 527
    invoke-static {}, Lcom/android/incallui/InCallApp;->getInstance()Lcom/android/incallui/InCallApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/InCallApp;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    return v0
.end method

.method public static getDrawableFromBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/drawable/Drawable;
    .locals 1
    .param p0, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 499
    if-nez p0, :cond_0

    const/4 v0, 0x0

    .line 501
    :goto_0
    return-object v0

    .line 500
    :cond_0
    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v0, p0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    .line 501
    .local v0, "mDrawable":Landroid/graphics/drawable/Drawable;
    goto :goto_0
.end method

.method private static getGradientColors(Landroid/graphics/Bitmap;Z)[I
    .locals 14
    .param p0, "bitmap"    # Landroid/graphics/Bitmap;
    .param p1, "isPhotoExist"    # Z

    .prologue
    const/4 v1, 0x0

    const/16 v13, 0xa

    const v12, 0x3d4ccccd    # 0.05f

    const/4 v11, 0x1

    .line 688
    if-nez p0, :cond_0

    .line 689
    const-string v8, "GraphicResourceUtils"

    const-string v9, "getGradientColors: bitmap is null"

    invoke-static {v8, v9}, Lcom/android/incallui/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 731
    :goto_0
    return-object v1

    .line 692
    :cond_0
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    .line 693
    .local v7, "width":I
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    .line 694
    .local v2, "height":I
    const-string v8, "GraphicResourceUtils"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "perf - getGradientColors is requested: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " isPhotoExist: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9, v11}, Lcom/android/incallui/Log;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 695
    if-lez v7, :cond_1

    if-gtz v2, :cond_2

    .line 696
    :cond_1
    const-string v8, "GraphicResourceUtils"

    const-string v9, "getGradientColors: bitmap is too small"

    invoke-static {v8, v9, v11}, Lcom/android/incallui/Log;->w(Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_0

    .line 700
    :cond_2
    const v0, 0x3d4ccccd    # 0.05f

    .line 702
    .local v0, "bitmapScaleValue":F
    int-to-float v8, v7

    mul-float/2addr v8, v12

    float-to-int v6, v8

    .line 703
    .local v6, "scaledWidth":I
    if-gtz v6, :cond_3

    .line 704
    move v6, v7

    .line 706
    :cond_3
    int-to-float v8, v2

    mul-float/2addr v8, v12

    float-to-int v5, v8

    .line 707
    .local v5, "scaledHeight":I
    if-gtz v5, :cond_4

    .line 708
    move v5, v2

    .line 711
    :cond_4
    invoke-static {p0, v6, v5, v11}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 718
    .local v3, "resizedBitmap":Landroid/graphics/Bitmap;
    if-eqz p1, :cond_5

    .line 719
    invoke-static {v3, v13, v11}, Lcom/sec/android/gradient_color_extractor/CallGradient;->getGradientColorFromBitmap(Landroid/graphics/Bitmap;II)Lcom/sec/android/gradient_color_extractor/GradientColorExtractor$GradientColorResult;

    move-result-object v4

    .line 729
    .local v4, "result":Lcom/sec/android/gradient_color_extractor/GradientColorExtractor$GradientColorResult;
    :goto_1
    const-string v8, "GraphicResourceUtils"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "perf - getGradientColors is completed: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, v4, Lcom/sec/android/gradient_color_extractor/GradientColorExtractor$GradientColorResult;->gradientColor_a:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, v4, Lcom/sec/android/gradient_color_extractor/GradientColorExtractor$GradientColorResult;->gradientColor_b:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9, v11}, Lcom/android/incallui/Log;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 730
    const/4 v8, 0x2

    new-array v1, v8, [I

    const/4 v8, 0x0

    iget v9, v4, Lcom/sec/android/gradient_color_extractor/GradientColorExtractor$GradientColorResult;->gradientColor_a:I

    aput v9, v1, v8

    iget v8, v4, Lcom/sec/android/gradient_color_extractor/GradientColorExtractor$GradientColorResult;->gradientColor_b:I

    aput v8, v1, v11

    .line 731
    .local v1, "colors":[I
    goto/16 :goto_0

    .line 724
    .end local v1    # "colors":[I
    .end local v4    # "result":Lcom/sec/android/gradient_color_extractor/GradientColorExtractor$GradientColorResult;
    :cond_5
    invoke-static {v3, v13, v11}, Lcom/sec/android/gradient_color_extractor/CallGradient;->getGradientColorForWallPaperFromBitmap(Landroid/graphics/Bitmap;II)Lcom/sec/android/gradient_color_extractor/GradientColorExtractor$GradientColorResult;

    move-result-object v4

    .restart local v4    # "result":Lcom/sec/android/gradient_color_extractor/GradientColorExtractor$GradientColorResult;
    goto :goto_1
.end method

.method public static getGradientColors(Landroid/graphics/drawable/Drawable;)[I
    .locals 6
    .param p0, "drawable"    # Landroid/graphics/drawable/Drawable;

    .prologue
    const/4 v5, 0x1

    const/4 v2, 0x0

    .line 659
    if-nez p0, :cond_1

    .line 660
    const-string v3, "GraphicResourceUtils"

    const-string v4, "getGradientColors: drawable is null"

    invoke-static {v3, v4}, Lcom/android/incallui/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    move-object v1, v2

    .line 681
    .end local p0    # "drawable":Landroid/graphics/drawable/Drawable;
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    :cond_0
    :goto_0
    return-object v1

    .line 663
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    .restart local p0    # "drawable":Landroid/graphics/drawable/Drawable;
    :cond_1
    const/4 v0, 0x0

    .line 664
    .restart local v0    # "bitmap":Landroid/graphics/Bitmap;
    instance-of v3, p0, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v3, :cond_2

    .line 665
    check-cast p0, Landroid/graphics/drawable/BitmapDrawable;

    .end local p0    # "drawable":Landroid/graphics/drawable/Drawable;
    invoke-virtual {p0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 672
    :goto_1
    if-eqz v0, :cond_4

    .line 673
    invoke-static {v0, v5}, Lcom/android/incallui/util/GraphicResourceUtils;->getGradientColors(Landroid/graphics/Bitmap;Z)[I

    move-result-object v1

    .line 674
    .local v1, "colors":[I
    if-eqz v1, :cond_0

    array-length v3, v1

    const/4 v4, 0x2

    if-eq v3, v4, :cond_0

    .line 675
    const-string v3, "GraphicResourceUtils"

    const-string v4, "getGradientColors: colors\'s length is not 2"

    invoke-static {v3, v4}, Lcom/android/incallui/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    move-object v1, v2

    .line 676
    goto :goto_0

    .line 666
    .end local v1    # "colors":[I
    .restart local p0    # "drawable":Landroid/graphics/drawable/Drawable;
    :cond_2
    instance-of v3, p0, Lcom/samsung/android/graphics/spr/SemPathRenderingDrawable;

    if-eqz v3, :cond_3

    .line 667
    check-cast p0, Lcom/samsung/android/graphics/spr/SemPathRenderingDrawable;

    .end local p0    # "drawable":Landroid/graphics/drawable/Drawable;
    invoke-virtual {p0}, Lcom/samsung/android/graphics/spr/SemPathRenderingDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_1

    .line 669
    .restart local p0    # "drawable":Landroid/graphics/drawable/Drawable;
    :cond_3
    const-string v3, "GraphicResourceUtils"

    const-string v4, "getGradientColors: can not know type of drawable"

    invoke-static {v3, v4, v5}, Lcom/android/incallui/Log;->w(Ljava/lang/String;Ljava/lang/String;Z)V

    move-object v1, v2

    .line 670
    goto :goto_0

    .line 680
    .end local p0    # "drawable":Landroid/graphics/drawable/Drawable;
    :cond_4
    const-string v3, "GraphicResourceUtils"

    const-string v4, "getGradientColors: bitmap is null"

    invoke-static {v3, v4}, Lcom/android/incallui/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    move-object v1, v2

    .line 681
    goto :goto_0
.end method

.method public static getGradientDefaultColors()[I
    .locals 12

    .prologue
    const/4 v11, 0x0

    const/4 v10, 0x1

    .line 735
    const-string v7, "GraphicResourceUtils"

    const-string v8, "perf - getGradientDefaultColors is requested"

    invoke-static {v7, v8, v10}, Lcom/android/incallui/Log;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 736
    invoke-static {}, Lcom/android/incallui/InCallApp;->getInstance()Lcom/android/incallui/InCallApp;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/incallui/InCallApp;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    .line 737
    .local v1, "context":Landroid/content/Context;
    invoke-static {v1}, Landroid/app/WallpaperManager;->getInstance(Landroid/content/Context;)Landroid/app/WallpaperManager;

    move-result-object v6

    .line 738
    .local v6, "wallpaperManager":Landroid/app/WallpaperManager;
    const/4 v5, 0x0

    .line 739
    .local v5, "wallpaper":Landroid/graphics/Bitmap;
    const/4 v7, 0x2

    invoke-virtual {v6, v7}, Landroid/app/WallpaperManager;->getWallpaperFile(I)Landroid/os/ParcelFileDescriptor;

    move-result-object v3

    .line 741
    .local v3, "fd":Landroid/os/ParcelFileDescriptor;
    if-eqz v3, :cond_1

    .line 742
    :try_start_0
    const-string v7, "GraphicResourceUtils"

    const-string v8, "getGradientDefaultColors: find lock-screen-specific wallpaper"

    const/4 v9, 0x1

    invoke-static {v7, v8, v9}, Lcom/android/incallui/Log;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 743
    new-instance v4, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v4}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 744
    .local v4, "options":Landroid/graphics/BitmapFactory$Options;
    invoke-virtual {v3}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v7

    const/4 v8, 0x0

    invoke-static {v7, v8, v4}, Landroid/graphics/BitmapFactory;->decodeFileDescriptor(Ljava/io/FileDescriptor;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v5

    .line 752
    .end local v4    # "options":Landroid/graphics/BitmapFactory$Options;
    :goto_0
    new-array v7, v10, [Ljava/io/Closeable;

    aput-object v3, v7, v11

    invoke-static {v7}, Lcom/yulore/android/common/io/IOUtils;->closeQuietly([Ljava/io/Closeable;)V

    .line 754
    :goto_1
    if-nez v5, :cond_0

    .line 755
    invoke-static {v1, v6}, Lcom/android/incallui/util/GraphicResourceUtils;->getDefaultWallpaper(Landroid/content/Context;Landroid/app/WallpaperManager;)Landroid/graphics/Bitmap;

    move-result-object v5

    .line 759
    :cond_0
    if-eqz v5, :cond_2

    .line 760
    invoke-static {v5, v11}, Lcom/android/incallui/util/GraphicResourceUtils;->getGradientColors(Landroid/graphics/Bitmap;Z)[I

    move-result-object v0

    .line 764
    .local v0, "colors":[I
    :goto_2
    const-string v7, "GraphicResourceUtils"

    const-string v8, "perf - getGradientDefaultColors is completed"

    invoke-static {v7, v8, v10}, Lcom/android/incallui/Log;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 765
    return-object v0

    .line 746
    .end local v0    # "colors":[I
    :cond_1
    :try_start_1
    const-string v7, "GraphicResourceUtils"

    const-string v8, "getGradientDefaultColors: can not find lock-screen-specific wallpaper"

    const/4 v9, 0x1

    invoke-static {v7, v8, v9}, Lcom/android/incallui/Log;->i(Ljava/lang/String;Ljava/lang/String;Z)V
    :try_end_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 748
    :catch_0
    move-exception v2

    .line 749
    .local v2, "e":Ljava/lang/OutOfMemoryError;
    :try_start_2
    const-string v7, "GraphicResourceUtils"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "getWallpaper: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x1

    invoke-static {v7, v8, v9}, Lcom/android/incallui/Log;->i(Ljava/lang/String;Ljava/lang/String;Z)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 750
    const/4 v5, 0x0

    .line 752
    new-array v7, v10, [Ljava/io/Closeable;

    aput-object v3, v7, v11

    invoke-static {v7}, Lcom/yulore/android/common/io/IOUtils;->closeQuietly([Ljava/io/Closeable;)V

    goto :goto_1

    .end local v2    # "e":Ljava/lang/OutOfMemoryError;
    :catchall_0
    move-exception v7

    new-array v8, v10, [Ljava/io/Closeable;

    aput-object v3, v8, v11

    invoke-static {v8}, Lcom/yulore/android/common/io/IOUtils;->closeQuietly([Ljava/io/Closeable;)V

    throw v7

    .line 762
    :cond_2
    invoke-static {}, Lcom/android/incallui/util/GraphicResourceUtils;->getGradientFactoryColors()[I

    move-result-object v0

    .restart local v0    # "colors":[I
    goto :goto_2
.end method

.method private static getGradientFactoryColors()[I
    .locals 7

    .prologue
    const/4 v6, 0x1

    .line 769
    const-string v4, "GraphicResourceUtils"

    const-string v5, "getGradientFactoryColors"

    invoke-static {v4, v5, v6}, Lcom/android/incallui/Log;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 770
    invoke-static {}, Lcom/android/incallui/InCallApp;->getInstance()Lcom/android/incallui/InCallApp;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/incallui/InCallApp;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    .line 771
    .local v1, "context":Landroid/content/Context;
    const v4, 0x7f0f0012

    invoke-virtual {v1, v4}, Landroid/content/Context;->getColor(I)I

    move-result v3

    .line 772
    .local v3, "startColor":I
    const v4, 0x7f0f0011

    invoke-virtual {v1, v4}, Landroid/content/Context;->getColor(I)I

    move-result v2

    .line 773
    .local v2, "endColor":I
    const/4 v4, 0x2

    new-array v0, v4, [I

    const/4 v4, 0x0

    aput v3, v0, v4

    aput v2, v0, v6

    .line 774
    .local v0, "colors":[I
    return-object v0
.end method

.method public static getImageIconForNotification(Landroid/content/Context;Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;
    .locals 12
    .param p0, "mContext"    # Landroid/content/Context;
    .param p1, "mPhoto"    # Landroid/graphics/Bitmap;
    .param p2, "strokeColor"    # I

    .prologue
    .line 570
    const-string v2, "GraphicResourceUtils"

    const-string v3, "getImageIconForNotification"

    invoke-static {v2, v3}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 572
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a0367

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v7, v2

    .line 573
    .local v7, "iconSize":I
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0f0172

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v8

    .line 574
    .local v8, "sIconColor":I
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a053d

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v10

    .line 575
    .local v10, "strokeWidth":F
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    if-ge v2, v7, :cond_0

    .line 576
    const/4 v2, 0x1

    invoke-static {p1, v7, v7, v2}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 578
    :cond_0
    if-nez p2, :cond_1

    .line 579
    const p2, 0x7f0f0174

    .line 582
    :cond_1
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v2, v3, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v6

    .line 584
    .local v6, "circularBitmap":Landroid/graphics/Bitmap;
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0, v6}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 585
    .local v0, "canvas":Landroid/graphics/Canvas;
    new-instance v5, Landroid/graphics/Paint;

    invoke-direct {v5}, Landroid/graphics/Paint;-><init>()V

    .line 586
    .local v5, "paint":Landroid/graphics/Paint;
    new-instance v1, Landroid/graphics/RectF;

    const/4 v2, 0x0

    add-float/2addr v2, v10

    const/4 v3, 0x0

    add-float/2addr v3, v10

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    int-to-float v4, v4

    sub-float/2addr v4, v10

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v11

    int-to-float v11, v11

    sub-float/2addr v11, v10

    invoke-direct {v1, v2, v3, v4, v11}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 588
    .local v1, "innerRect":Landroid/graphics/RectF;
    new-instance v9, Landroid/graphics/BitmapShader;

    sget-object v2, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    sget-object v3, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    invoke-direct {v9, p1, v2, v3}, Landroid/graphics/BitmapShader;-><init>(Landroid/graphics/Bitmap;Landroid/graphics/Shader$TileMode;Landroid/graphics/Shader$TileMode;)V

    .line 590
    .local v9, "shader":Landroid/graphics/BitmapShader;
    const/4 v2, 0x1

    invoke-virtual {v5, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 591
    invoke-virtual {v5, v8}, Landroid/graphics/Paint;->setColor(I)V

    .line 592
    const/4 v2, 0x0

    const/high16 v3, 0x43b40000    # 360.0f

    const/4 v4, 0x1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 594
    invoke-virtual {v5, v10}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 595
    invoke-virtual {p0, p2}, Landroid/content/Context;->getColor(I)I

    move-result v2

    invoke-virtual {v5, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 596
    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v5, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 597
    new-instance v2, Landroid/graphics/PorterDuffXfermode;

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->SRC_OVER:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v2, v3}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v5, v2}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 598
    const/4 v2, 0x0

    const/high16 v3, 0x43b40000    # 360.0f

    const/4 v4, 0x1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 600
    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v5, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 601
    invoke-virtual {v5, v9}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 602
    new-instance v2, Landroid/graphics/PorterDuffXfermode;

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->SRC_OVER:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v2, v3}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v5, v2}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 603
    const/4 v2, 0x0

    const/high16 v3, 0x43b40000    # 360.0f

    const/4 v4, 0x1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 605
    return-object v6
.end method

.method public static getJanskyLineIcon(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .locals 9
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "icon"    # Ljava/lang/String;
    .param p2, "color"    # Ljava/lang/String;

    .prologue
    .line 505
    if-nez p1, :cond_0

    .line 506
    const-string p1, "st_ic_default"

    .line 508
    :cond_0
    if-nez p2, :cond_1

    .line 509
    const-string p2, "circle"

    .line 512
    :cond_1
    :try_start_0
    const-string v6, "com.samsung.app.jansky"

    const/4 v7, 0x0

    invoke-virtual {p0, v6, v7}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v3

    .line 513
    .local v3, "janskyContext":Landroid/content/Context;
    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const-string v7, "drawable"

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, p1, v7, v8}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 514
    .local v2, "iconResId":I
    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const-string v7, "drawable"

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, p2, v7, v8}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 515
    .local v0, "colorResId":I
    const/4 v6, 0x2

    new-array v5, v6, [Landroid/graphics/drawable/Drawable;

    .line 516
    .local v5, "layers":[Landroid/graphics/drawable/Drawable;
    const/4 v6, 0x1

    invoke-virtual {v3, v2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    aput-object v7, v5, v6

    .line 517
    const/4 v6, 0x0

    invoke-virtual {v3, v0}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    aput-object v7, v5, v6

    .line 518
    new-instance v4, Landroid/graphics/drawable/LayerDrawable;

    invoke-direct {v4, v5}, Landroid/graphics/drawable/LayerDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 523
    .end local v0    # "colorResId":I
    .end local v2    # "iconResId":I
    .end local v3    # "janskyContext":Landroid/content/Context;
    .end local v5    # "layers":[Landroid/graphics/drawable/Drawable;
    :goto_0
    return-object v4

    .line 520
    :catch_0
    move-exception v1

    .line 521
    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v6, "GraphicResourceUtils"

    const-string v7, "Cannot create Context for package: com.samsung.app.jansky"

    invoke-static {v6, v7}, Lcom/android/incallui/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 523
    const/4 v4, 0x0

    goto :goto_0
.end method

.method public static getRectBitmap(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;
    .locals 11
    .param p0, "bitmap"    # Landroid/graphics/Bitmap;
    .param p1, "diameter"    # I

    .prologue
    .line 265
    :try_start_0
    const-string v7, "GraphicResourceUtils"

    const-string v8, "getRectBitmap: start"

    const/4 v9, 0x1

    invoke-static {v7, v8, v9}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 266
    const/4 v7, 0x0

    invoke-static {p0, p1, p1, v7}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object p0

    .line 267
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    sget-object v9, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v7, v8, v9}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v6

    .line 269
    .local v6, "result":Landroid/graphics/Bitmap;
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0, v6}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 270
    .local v0, "canvas":Landroid/graphics/Canvas;
    const v1, -0xffff01

    .line 271
    .local v1, "color":I
    new-instance v4, Landroid/graphics/Paint;

    invoke-direct {v4}, Landroid/graphics/Paint;-><init>()V

    .line 272
    .local v4, "paint":Landroid/graphics/Paint;
    new-instance v5, Landroid/graphics/Rect;

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v9

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v10

    invoke-direct {v5, v7, v8, v9, v10}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 274
    .local v5, "rect":Landroid/graphics/Rect;
    const/4 v7, 0x1

    invoke-virtual {v4, v7}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 275
    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual {v0, v7, v8, v9, v10}, Landroid/graphics/Canvas;->drawARGB(IIII)V

    .line 276
    invoke-virtual {v4, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 277
    invoke-virtual {v0, v5, v4}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 278
    new-instance v7, Landroid/graphics/PorterDuffXfermode;

    sget-object v8, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v7, v8}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v4, v7}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 279
    invoke-virtual {v0, p0, v5, v5, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 280
    const-string v7, "GraphicResourceUtils"

    const-string v8, "getRectBitmap: end"

    const/4 v9, 0x1

    invoke-static {v7, v8, v9}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_1

    .line 287
    .end local v0    # "canvas":Landroid/graphics/Canvas;
    .end local v1    # "color":I
    .end local v4    # "paint":Landroid/graphics/Paint;
    .end local v5    # "rect":Landroid/graphics/Rect;
    .end local v6    # "result":Landroid/graphics/Bitmap;
    :goto_0
    return-object v6

    .line 282
    :catch_0
    move-exception v2

    .line 283
    .local v2, "e":Ljava/lang/Exception;
    const-string v7, "GraphicResourceUtils"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "getRoundRectBitmap: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/android/incallui/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 287
    .end local v2    # "e":Ljava/lang/Exception;
    :goto_1
    const/4 v6, 0x0

    goto :goto_0

    .line 284
    :catch_1
    move-exception v3

    .line 285
    .local v3, "oom":Ljava/lang/OutOfMemoryError;
    const-string v7, "GraphicResourceUtils"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "getRoundRectBitmap: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/android/incallui/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public static getRectDrawable(Landroid/graphics/drawable/Drawable;I)Landroid/graphics/drawable/Drawable;
    .locals 14
    .param p0, "bitmapDrawable"    # Landroid/graphics/drawable/Drawable;
    .param p1, "diameter"    # I

    .prologue
    .line 179
    const/4 v3, 0x0

    .line 181
    .local v3, "drawable":Landroid/graphics/drawable/Drawable;
    :try_start_0
    const-string v10, "GraphicResourceUtils"

    const-string v11, "getRectDrawable: start"

    const/4 v12, 0x1

    invoke-static {v10, v11, v12}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 182
    invoke-static {p0}, Lcom/android/incallui/util/GraphicResourceUtils;->getBitmapFromDrawable(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 183
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    const/4 v10, 0x0

    invoke-static {v0, p1, p1, v10}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 184
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v10

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v11

    sget-object v12, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v10, v11, v12}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v9

    .line 186
    .local v9, "result":Landroid/graphics/Bitmap;
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v9}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 187
    .local v1, "canvas":Landroid/graphics/Canvas;
    const v2, -0xffff01

    .line 188
    .local v2, "color":I
    new-instance v7, Landroid/graphics/Paint;

    invoke-direct {v7}, Landroid/graphics/Paint;-><init>()V

    .line 189
    .local v7, "paint":Landroid/graphics/Paint;
    new-instance v8, Landroid/graphics/Rect;

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v12

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v13

    invoke-direct {v8, v10, v11, v12, v13}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 191
    .local v8, "rect":Landroid/graphics/Rect;
    const/4 v10, 0x1

    invoke-virtual {v7, v10}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 192
    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-virtual {v1, v10, v11, v12, v13}, Landroid/graphics/Canvas;->drawARGB(IIII)V

    .line 193
    invoke-virtual {v7, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 194
    invoke-virtual {v1, v8, v7}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 195
    new-instance v10, Landroid/graphics/PorterDuffXfermode;

    sget-object v11, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v10, v11}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v7, v10}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 196
    invoke-virtual {v1, v0, v8, v8, v7}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 197
    new-instance v4, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v4, v9}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_1

    .line 198
    .end local v3    # "drawable":Landroid/graphics/drawable/Drawable;
    .local v4, "drawable":Landroid/graphics/drawable/Drawable;
    :try_start_1
    const-string v10, "GraphicResourceUtils"

    const-string v11, "getRectDrawable: end"

    const/4 v12, 0x1

    invoke-static {v10, v11, v12}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_1} :catch_2

    move-object v3, v4

    .line 205
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    .end local v1    # "canvas":Landroid/graphics/Canvas;
    .end local v2    # "color":I
    .end local v4    # "drawable":Landroid/graphics/drawable/Drawable;
    .end local v7    # "paint":Landroid/graphics/Paint;
    .end local v8    # "rect":Landroid/graphics/Rect;
    .end local v9    # "result":Landroid/graphics/Bitmap;
    .restart local v3    # "drawable":Landroid/graphics/drawable/Drawable;
    :goto_0
    return-object v4

    .line 200
    :catch_0
    move-exception v5

    .line 201
    .local v5, "e":Ljava/lang/Exception;
    :goto_1
    const-string v10, "GraphicResourceUtils"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "getCircledDrawable: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/android/incallui/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 205
    .end local v5    # "e":Ljava/lang/Exception;
    :goto_2
    const/4 v4, 0x0

    goto :goto_0

    .line 202
    :catch_1
    move-exception v6

    .line 203
    .local v6, "oom":Ljava/lang/OutOfMemoryError;
    :goto_3
    const-string v10, "GraphicResourceUtils"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "getCircledDrawable: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/android/incallui/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 202
    .end local v3    # "drawable":Landroid/graphics/drawable/Drawable;
    .end local v6    # "oom":Ljava/lang/OutOfMemoryError;
    .restart local v0    # "bitmap":Landroid/graphics/Bitmap;
    .restart local v1    # "canvas":Landroid/graphics/Canvas;
    .restart local v2    # "color":I
    .restart local v4    # "drawable":Landroid/graphics/drawable/Drawable;
    .restart local v7    # "paint":Landroid/graphics/Paint;
    .restart local v8    # "rect":Landroid/graphics/Rect;
    .restart local v9    # "result":Landroid/graphics/Bitmap;
    :catch_2
    move-exception v6

    move-object v3, v4

    .end local v4    # "drawable":Landroid/graphics/drawable/Drawable;
    .restart local v3    # "drawable":Landroid/graphics/drawable/Drawable;
    goto :goto_3

    .line 200
    .end local v3    # "drawable":Landroid/graphics/drawable/Drawable;
    .restart local v4    # "drawable":Landroid/graphics/drawable/Drawable;
    :catch_3
    move-exception v5

    move-object v3, v4

    .end local v4    # "drawable":Landroid/graphics/drawable/Drawable;
    .restart local v3    # "drawable":Landroid/graphics/drawable/Drawable;
    goto :goto_1
.end method

.method public static getRoundRectBitmap(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;
    .locals 13
    .param p0, "bitmap"    # Landroid/graphics/Bitmap;
    .param p1, "diameter"    # I

    .prologue
    const/high16 v12, 0x40800000    # 4.0f

    .line 237
    :try_start_0
    const-string v8, "GraphicResourceUtils"

    const-string v9, "getRoundRectBitmap: start"

    const/4 v10, 0x1

    invoke-static {v8, v9, v10}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 238
    const/4 v8, 0x0

    invoke-static {p0, p1, p1, v8}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object p0

    .line 239
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v8

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v9

    sget-object v10, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v8, v9, v10}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v7

    .line 241
    .local v7, "result":Landroid/graphics/Bitmap;
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0, v7}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 242
    .local v0, "canvas":Landroid/graphics/Canvas;
    const v1, -0xffff01

    .line 243
    .local v1, "color":I
    new-instance v4, Landroid/graphics/Paint;

    invoke-direct {v4}, Landroid/graphics/Paint;-><init>()V

    .line 244
    .local v4, "paint":Landroid/graphics/Paint;
    new-instance v5, Landroid/graphics/Rect;

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v10

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v11

    invoke-direct {v5, v8, v9, v10, v11}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 245
    .local v5, "rect":Landroid/graphics/Rect;
    new-instance v6, Landroid/graphics/RectF;

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v10

    int-to-float v10, v10

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v11

    int-to-float v11, v11

    invoke-direct {v6, v8, v9, v10, v11}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 247
    .local v6, "rectF":Landroid/graphics/RectF;
    const/4 v8, 0x1

    invoke-virtual {v4, v8}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 248
    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-virtual {v0, v8, v9, v10, v11}, Landroid/graphics/Canvas;->drawARGB(IIII)V

    .line 249
    invoke-virtual {v4, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 250
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v8

    int-to-float v8, v8

    div-float/2addr v8, v12

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v9

    int-to-float v9, v9

    div-float/2addr v9, v12

    invoke-virtual {v0, v6, v8, v9, v4}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 251
    new-instance v8, Landroid/graphics/PorterDuffXfermode;

    sget-object v9, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v8, v9}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v4, v8}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 252
    invoke-virtual {v0, p0, v5, v5, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 253
    const-string v8, "GraphicResourceUtils"

    const-string v9, "getRoundRectBitmap: end"

    const/4 v10, 0x1

    invoke-static {v8, v9, v10}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_1

    .line 260
    .end local v0    # "canvas":Landroid/graphics/Canvas;
    .end local v1    # "color":I
    .end local v4    # "paint":Landroid/graphics/Paint;
    .end local v5    # "rect":Landroid/graphics/Rect;
    .end local v6    # "rectF":Landroid/graphics/RectF;
    .end local v7    # "result":Landroid/graphics/Bitmap;
    :goto_0
    return-object v7

    .line 255
    :catch_0
    move-exception v2

    .line 256
    .local v2, "e":Ljava/lang/Exception;
    const-string v8, "GraphicResourceUtils"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "getRoundRectBitmap: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/android/incallui/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 260
    .end local v2    # "e":Ljava/lang/Exception;
    :goto_1
    const/4 v7, 0x0

    goto :goto_0

    .line 257
    :catch_1
    move-exception v3

    .line 258
    .local v3, "oom":Ljava/lang/OutOfMemoryError;
    const-string v8, "GraphicResourceUtils"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "getRoundRectBitmap: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/android/incallui/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public static getRoundRectDrawable(Landroid/graphics/drawable/Drawable;I)Landroid/graphics/drawable/Drawable;
    .locals 17
    .param p0, "bitmapDrawable"    # Landroid/graphics/drawable/Drawable;
    .param p1, "diameter"    # I

    .prologue
    .line 103
    const/4 v5, 0x0

    .line 105
    .local v5, "drawable":Landroid/graphics/drawable/Drawable;
    :try_start_0
    const-string v13, "GraphicResourceUtils"

    const-string v14, "getRoundRectDrawable: start"

    const/4 v15, 0x1

    invoke-static {v13, v14, v15}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 106
    invoke-static/range {p0 .. p0}, Lcom/android/incallui/util/GraphicResourceUtils;->getBitmapFromDrawable(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 107
    .local v2, "bitmap":Landroid/graphics/Bitmap;
    const/4 v13, 0x0

    move/from16 v0, p1

    move/from16 v1, p1

    invoke-static {v2, v0, v1, v13}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 108
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v13

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v14

    sget-object v15, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v13, v14, v15}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v12

    .line 110
    .local v12, "result":Landroid/graphics/Bitmap;
    new-instance v3, Landroid/graphics/Canvas;

    invoke-direct {v3, v12}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 111
    .local v3, "canvas":Landroid/graphics/Canvas;
    const v4, -0xffff01

    .line 112
    .local v4, "color":I
    new-instance v9, Landroid/graphics/Paint;

    invoke-direct {v9}, Landroid/graphics/Paint;-><init>()V

    .line 113
    .local v9, "paint":Landroid/graphics/Paint;
    new-instance v10, Landroid/graphics/Rect;

    const/4 v13, 0x0

    const/4 v14, 0x0

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v15

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v16

    move/from16 v0, v16

    invoke-direct {v10, v13, v14, v15, v0}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 114
    .local v10, "rect":Landroid/graphics/Rect;
    new-instance v11, Landroid/graphics/RectF;

    const/4 v13, 0x0

    const/4 v14, 0x0

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v15

    int-to-float v15, v15

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v16

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v16, v0

    move/from16 v0, v16

    invoke-direct {v11, v13, v14, v15, v0}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 116
    .local v11, "rectF":Landroid/graphics/RectF;
    const/4 v13, 0x1

    invoke-virtual {v9, v13}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 117
    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-virtual {v3, v13, v14, v15, v0}, Landroid/graphics/Canvas;->drawARGB(IIII)V

    .line 118
    invoke-virtual {v9, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 119
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v13

    int-to-float v13, v13

    const/high16 v14, 0x40800000    # 4.0f

    div-float/2addr v13, v14

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v14

    int-to-float v14, v14

    const/high16 v15, 0x40800000    # 4.0f

    div-float/2addr v14, v15

    invoke-virtual {v3, v11, v13, v14, v9}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 120
    new-instance v13, Landroid/graphics/PorterDuffXfermode;

    sget-object v14, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v13, v14}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v9, v13}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 121
    invoke-virtual {v3, v2, v10, v10, v9}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 122
    new-instance v6, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v6, v12}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_1

    .line 123
    .end local v5    # "drawable":Landroid/graphics/drawable/Drawable;
    .local v6, "drawable":Landroid/graphics/drawable/Drawable;
    :try_start_1
    const-string v13, "GraphicResourceUtils"

    const-string v14, "getRoundRectDrawable: end"

    const/4 v15, 0x1

    invoke-static {v13, v14, v15}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_1} :catch_2

    move-object v5, v6

    .line 131
    .end local v2    # "bitmap":Landroid/graphics/Bitmap;
    .end local v3    # "canvas":Landroid/graphics/Canvas;
    .end local v4    # "color":I
    .end local v6    # "drawable":Landroid/graphics/drawable/Drawable;
    .end local v9    # "paint":Landroid/graphics/Paint;
    .end local v10    # "rect":Landroid/graphics/Rect;
    .end local v11    # "rectF":Landroid/graphics/RectF;
    .end local v12    # "result":Landroid/graphics/Bitmap;
    .restart local v5    # "drawable":Landroid/graphics/drawable/Drawable;
    :goto_0
    return-object v6

    .line 125
    :catch_0
    move-exception v7

    .line 126
    .local v7, "e":Ljava/lang/Exception;
    :goto_1
    const-string v13, "GraphicResourceUtils"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "getCircledDrawable: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lcom/android/incallui/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 131
    .end local v7    # "e":Ljava/lang/Exception;
    :goto_2
    const/4 v6, 0x0

    goto :goto_0

    .line 127
    :catch_1
    move-exception v8

    .line 128
    .local v8, "oom":Ljava/lang/OutOfMemoryError;
    :goto_3
    const-string v13, "GraphicResourceUtils"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "getCircledDrawable: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lcom/android/incallui/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 127
    .end local v5    # "drawable":Landroid/graphics/drawable/Drawable;
    .end local v8    # "oom":Ljava/lang/OutOfMemoryError;
    .restart local v2    # "bitmap":Landroid/graphics/Bitmap;
    .restart local v3    # "canvas":Landroid/graphics/Canvas;
    .restart local v4    # "color":I
    .restart local v6    # "drawable":Landroid/graphics/drawable/Drawable;
    .restart local v9    # "paint":Landroid/graphics/Paint;
    .restart local v10    # "rect":Landroid/graphics/Rect;
    .restart local v11    # "rectF":Landroid/graphics/RectF;
    .restart local v12    # "result":Landroid/graphics/Bitmap;
    :catch_2
    move-exception v8

    move-object v5, v6

    .end local v6    # "drawable":Landroid/graphics/drawable/Drawable;
    .restart local v5    # "drawable":Landroid/graphics/drawable/Drawable;
    goto :goto_3

    .line 125
    .end local v5    # "drawable":Landroid/graphics/drawable/Drawable;
    .restart local v6    # "drawable":Landroid/graphics/drawable/Drawable;
    :catch_3
    move-exception v7

    move-object v5, v6

    .end local v6    # "drawable":Landroid/graphics/drawable/Drawable;
    .restart local v5    # "drawable":Landroid/graphics/drawable/Drawable;
    goto :goto_1
.end method

.method public static getRoundRectDrawableForBizRing(Landroid/content/Context;Landroid/graphics/drawable/Drawable;I)Landroid/graphics/drawable/Drawable;
    .locals 23
    .param p0, "mContext"    # Landroid/content/Context;
    .param p1, "bitmapDrawable"    # Landroid/graphics/drawable/Drawable;
    .param p2, "state"    # I

    .prologue
    .line 136
    const/4 v8, 0x0

    .line 138
    .local v8, "drawable":Landroid/graphics/drawable/Drawable;
    :try_start_0
    invoke-static/range {p1 .. p1}, Lcom/android/incallui/util/GraphicResourceUtils;->getBitmapFromDrawable(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    move-result-object v5

    .line 139
    .local v5, "bitmap":Landroid/graphics/Bitmap;
    const/4 v11, 0x0

    .line 140
    .local v11, "height":I
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v19

    const v20, 0x7f0a0394

    invoke-virtual/range {v19 .. v20}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v19

    move/from16 v0, v19

    float-to-int v0, v0

    move/from16 v18, v0

    .line 141
    .local v18, "width":I
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v19

    const v20, 0x7f0a0391

    invoke-virtual/range {v19 .. v20}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v19

    move/from16 v0, v19

    float-to-int v4, v0

    .line 142
    .local v4, "arcSize":I
    invoke-static/range {p2 .. p2}, Lcom/android/incallui/Call$State;->isDialing(I)Z

    move-result v19

    if-eqz v19, :cond_1

    .line 143
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v19

    const v20, 0x7f0a0393

    invoke-virtual/range {v19 .. v20}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v19

    move/from16 v0, v19

    float-to-int v11, v0

    .line 147
    :cond_0
    :goto_0
    const/16 v19, 0x0

    move/from16 v0, v18

    move/from16 v1, v19

    invoke-static {v5, v0, v11, v1}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v5

    .line 148
    sget-object v19, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    move/from16 v0, v18

    move-object/from16 v1, v19

    invoke-static {v0, v11, v1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v16

    .line 150
    .local v16, "result":Landroid/graphics/Bitmap;
    const-string v19, "GraphicResourceUtils"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "getRoundRectDrawable: bitmap.getWidth()"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    const/16 v21, 0x1

    invoke-static/range {v19 .. v21}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 151
    const-string v19, "GraphicResourceUtils"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "getRoundRectDrawable: bitmap.getHeight()"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    const/16 v21, 0x1

    invoke-static/range {v19 .. v21}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 153
    new-instance v6, Landroid/graphics/Canvas;

    move-object/from16 v0, v16

    invoke-direct {v6, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 154
    .local v6, "canvas":Landroid/graphics/Canvas;
    const/4 v7, -0x1

    .line 156
    .local v7, "color":I
    new-instance v13, Landroid/graphics/Paint;

    invoke-direct {v13}, Landroid/graphics/Paint;-><init>()V

    .line 157
    .local v13, "paint":Landroid/graphics/Paint;
    new-instance v17, Landroid/graphics/Paint;

    invoke-direct/range {v17 .. v17}, Landroid/graphics/Paint;-><init>()V

    .line 158
    .local v17, "stroke":Landroid/graphics/Paint;
    new-instance v14, Landroid/graphics/Rect;

    const/16 v19, 0x0

    const/16 v20, 0x0

    move/from16 v0, v19

    move/from16 v1, v20

    move/from16 v2, v18

    invoke-direct {v14, v0, v1, v2, v11}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 159
    .local v14, "rect":Landroid/graphics/Rect;
    new-instance v15, Landroid/graphics/RectF;

    const/16 v19, 0x0

    const/16 v20, 0x0

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v21, v0

    int-to-float v0, v11

    move/from16 v22, v0

    move/from16 v0, v19

    move/from16 v1, v20

    move/from16 v2, v21

    move/from16 v3, v22

    invoke-direct {v15, v0, v1, v2, v3}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 160
    .local v15, "rectF":Landroid/graphics/RectF;
    const/16 v19, 0x1

    move/from16 v0, v19

    invoke-virtual {v13, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 161
    invoke-virtual {v13, v7}, Landroid/graphics/Paint;->setColor(I)V

    .line 162
    sget-object v19, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    move-object/from16 v0, v19

    invoke-virtual {v13, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 163
    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    move/from16 v0, v19

    move/from16 v1, v20

    move/from16 v2, v21

    move/from16 v3, v22

    invoke-virtual {v6, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawARGB(IIII)V

    .line 164
    int-to-float v0, v4

    move/from16 v19, v0

    int-to-float v0, v4

    move/from16 v20, v0

    move/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v6, v15, v0, v1, v13}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 165
    new-instance v19, Landroid/graphics/PorterDuffXfermode;

    sget-object v20, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct/range {v19 .. v20}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    move-object/from16 v0, v19

    invoke-virtual {v13, v0}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 166
    invoke-virtual {v6, v5, v14, v14, v13}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 167
    new-instance v9, Landroid/graphics/drawable/BitmapDrawable;

    move-object/from16 v0, v16

    invoke-direct {v9, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    .end local v8    # "drawable":Landroid/graphics/drawable/Drawable;
    .local v9, "drawable":Landroid/graphics/drawable/Drawable;
    move-object v8, v9

    .line 175
    .end local v4    # "arcSize":I
    .end local v5    # "bitmap":Landroid/graphics/Bitmap;
    .end local v6    # "canvas":Landroid/graphics/Canvas;
    .end local v7    # "color":I
    .end local v9    # "drawable":Landroid/graphics/drawable/Drawable;
    .end local v11    # "height":I
    .end local v13    # "paint":Landroid/graphics/Paint;
    .end local v14    # "rect":Landroid/graphics/Rect;
    .end local v15    # "rectF":Landroid/graphics/RectF;
    .end local v16    # "result":Landroid/graphics/Bitmap;
    .end local v17    # "stroke":Landroid/graphics/Paint;
    .end local v18    # "width":I
    .restart local v8    # "drawable":Landroid/graphics/drawable/Drawable;
    :goto_1
    return-object v9

    .line 144
    .restart local v4    # "arcSize":I
    .restart local v5    # "bitmap":Landroid/graphics/Bitmap;
    .restart local v11    # "height":I
    .restart local v18    # "width":I
    :cond_1
    invoke-static/range {p2 .. p2}, Lcom/android/incallui/Call$State;->isIncoming(I)Z

    move-result v19

    if-eqz v19, :cond_0

    .line 145
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v19

    const v20, 0x7f0a0392

    invoke-virtual/range {v19 .. v20}, Landroid/content/res/Resources;->getDimension(I)F
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_1

    move-result v19

    move/from16 v0, v19

    float-to-int v11, v0

    goto/16 :goto_0

    .line 169
    .end local v4    # "arcSize":I
    .end local v5    # "bitmap":Landroid/graphics/Bitmap;
    .end local v11    # "height":I
    .end local v18    # "width":I
    :catch_0
    move-exception v10

    .line 170
    .local v10, "e":Ljava/lang/Exception;
    const-string v19, "GraphicResourceUtils"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "getCircledDrawable: "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Lcom/android/incallui/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 175
    .end local v10    # "e":Ljava/lang/Exception;
    :goto_2
    const/4 v9, 0x0

    goto :goto_1

    .line 171
    :catch_1
    move-exception v12

    .line 172
    .local v12, "oom":Ljava/lang/OutOfMemoryError;
    const-string v19, "GraphicResourceUtils"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "getCircledDrawable: "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Lcom/android/incallui/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2
.end method

.method public static getTextIconForNotification(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 14
    .param p0, "mContext"    # Landroid/content/Context;
    .param p1, "mName"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v5, 0x0

    .line 609
    const-string v1, "GraphicResourceUtils"

    const-string v4, "getTextIconForNotification"

    invoke-static {v1, v4}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 611
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v4, 0x7f0a0367

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v8, v1

    .line 612
    .local v8, "iconSize":I
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v4, 0x7f0a036a

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v12, v1

    .line 613
    .local v12, "textSize":I
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v4, 0x7f0f0174

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v10

    .line 614
    .local v10, "sTextColor":I
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v4, 0x7f0a053d

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v11

    .line 616
    .local v11, "strokeWidth":F
    new-instance v6, Landroid/graphics/Paint;

    invoke-direct {v6}, Landroid/graphics/Paint;-><init>()V

    .line 617
    .local v6, "paint":Landroid/graphics/Paint;
    new-instance v9, Landroid/graphics/RectF;

    add-float v1, v5, v11

    add-float v4, v5, v11

    int-to-float v5, v8

    sub-float/2addr v5, v11

    int-to-float v13, v8

    sub-float/2addr v13, v11

    invoke-direct {v9, v1, v4, v5, v13}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 618
    .local v9, "rect":Landroid/graphics/RectF;
    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v8, v8, v1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v7

    .line 619
    .local v7, "circularBitmap":Landroid/graphics/Bitmap;
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0, v7}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 621
    .local v0, "canvas":Landroid/graphics/Canvas;
    invoke-virtual {v6, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 622
    invoke-virtual {v6, v11}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 623
    invoke-virtual {v6, v10}, Landroid/graphics/Paint;->setColor(I)V

    .line 624
    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v6, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 625
    invoke-virtual {v0, v9, v6}, Landroid/graphics/Canvas;->drawOval(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 627
    invoke-virtual {v6, v10}, Landroid/graphics/Paint;->setColor(I)V

    .line 628
    int-to-float v1, v12

    invoke-virtual {v6, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 629
    sget-object v1, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v6, v1}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 630
    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v6, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 631
    const-string v1, "sec-roboto-light"

    invoke-static {v1, v2}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v6, v1}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 632
    if-eqz p1, :cond_0

    .line 633
    int-to-float v1, v8

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v1, v4

    float-to-int v1, v1

    int-to-float v4, v1

    int-to-float v1, v8

    int-to-float v5, v8

    const/high16 v13, 0x40800000    # 4.0f

    div-float/2addr v5, v13

    sub-float/2addr v1, v5

    float-to-int v1, v1

    int-to-float v5, v1

    move-object v1, p1

    invoke-virtual/range {v0 .. v6}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;IIFFLandroid/graphics/Paint;)V

    .line 635
    :cond_0
    return-object v7
.end method

.method public static resizeBitmap(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;
    .locals 4
    .param p0, "bitmap"    # Landroid/graphics/Bitmap;
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    .line 291
    if-nez p0, :cond_1

    const/4 p0, 0x0

    .line 307
    .end local p0    # "bitmap":Landroid/graphics/Bitmap;
    :cond_0
    :goto_0
    return-object p0

    .line 292
    .restart local p0    # "bitmap":Landroid/graphics/Bitmap;
    :cond_1
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    if-ne v1, p1, :cond_2

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    if-eq v1, p2, :cond_0

    .line 293
    :cond_2
    const/high16 v0, 0x3f800000    # 1.0f

    .line 295
    .local v0, "ratio":F
    if-le p1, p2, :cond_3

    .line 296
    int-to-float v1, p1

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    int-to-float v2, v2

    div-float v0, v1, v2

    .line 302
    :goto_1
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v1, v0

    float-to-int v1, v1

    .line 303
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v2, v0

    float-to-int v2, v2

    const/4 v3, 0x0

    .line 301
    invoke-static {p0, v1, v2, v3}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object p0

    goto :goto_0

    .line 298
    :cond_3
    int-to-float v1, p2

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    int-to-float v2, v2

    div-float v0, v1, v2

    goto :goto_1
.end method

.method public static scaleDown(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 6
    .param p0, "input"    # Landroid/graphics/Bitmap;

    .prologue
    const/high16 v5, 0x42c80000    # 100.0f

    .line 357
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    int-to-float v3, v3

    div-float v3, v5, v3

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    int-to-float v4, v4

    div-float v4, v5, v4

    invoke-static {v3, v4}, Ljava/lang/Math;->min(FF)F

    move-result v1

    .line 358
    .local v1, "ratio":F
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v3, v1

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v2

    .line 359
    .local v2, "width":I
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v3, v1

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v0

    .line 360
    .local v0, "height":I
    const/4 v3, 0x1

    invoke-static {p0, v2, v0, v3}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v3

    return-object v3
.end method

.method public static varargs setDescriptionToView(Landroid/view/View;[I)V
    .locals 6
    .param p0, "view"    # Landroid/view/View;
    .param p1, "resources"    # [I

    .prologue
    .line 463
    if-nez p0, :cond_0

    .line 472
    :goto_0
    return-void

    .line 464
    :cond_0
    const/4 v0, 0x0

    .line 465
    .local v0, "contentDescription":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 466
    .local v2, "sb":Ljava/lang/StringBuilder;
    array-length v4, p1

    const/4 v3, 0x0

    :goto_1
    if-ge v3, v4, :cond_1

    aget v1, p1, v3

    .line 467
    .local v1, "res":I
    invoke-static {}, Lcom/android/incallui/InCallApp;->getInstance()Lcom/android/incallui/InCallApp;

    move-result-object v5

    invoke-virtual {v5, v1}, Lcom/android/incallui/InCallApp;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 468
    const-string v5, " "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 466
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 470
    .end local v1    # "res":I
    :cond_1
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 471
    invoke-virtual {p0, v0}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public static varargs setDescriptionToView(Landroid/view/View;[Ljava/lang/String;)V
    .locals 6
    .param p0, "view"    # Landroid/view/View;
    .param p1, "texts"    # [Ljava/lang/String;

    .prologue
    .line 475
    if-nez p0, :cond_0

    .line 484
    :goto_0
    return-void

    .line 476
    :cond_0
    const/4 v0, 0x0

    .line 477
    .local v0, "contentDescription":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 478
    .local v1, "sb":Ljava/lang/StringBuilder;
    array-length v4, p1

    const/4 v3, 0x0

    :goto_1
    if-ge v3, v4, :cond_1

    aget-object v2, p1, v3

    .line 479
    .local v2, "text":Ljava/lang/String;
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 480
    const-string v5, " "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 478
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 482
    .end local v2    # "text":Ljava/lang/String;
    :cond_1
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 483
    invoke-virtual {p0, v0}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public static setMaximumTextSP(Landroid/widget/TextView;DI)V
    .locals 9
    .param p0, "view"    # Landroid/widget/TextView;
    .param p1, "maxScale"    # D
    .param p3, "resourceID"    # I

    .prologue
    .line 543
    if-nez p0, :cond_0

    .line 544
    const-string v6, "GraphicResourceUtils"

    const-string v7, "setMaximumTextSP() TextView is not exist"

    invoke-static {v6, v7}, Lcom/android/incallui/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 567
    :goto_0
    return-void

    .line 547
    :cond_0
    const-wide v6, 0x3fe999999999999aL    # 0.8

    cmpg-double v6, p1, v6

    if-ltz v6, :cond_1

    const-wide/high16 v6, 0x3ff8000000000000L    # 1.5

    cmpl-double v6, p1, v6

    if-lez v6, :cond_2

    .line 548
    :cond_1
    const-string v6, "GraphicResourceUtils"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "setMaximumTextSP() invalid font scale - "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1, p2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " about text - "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/incallui/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 552
    :cond_2
    invoke-static {}, Lcom/android/incallui/InCallApp;->getInstance()Lcom/android/incallui/InCallApp;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/incallui/InCallApp;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    .line 553
    .local v5, "resources":Landroid/content/res/Resources;
    invoke-virtual {v5}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v6

    iget v1, v6, Landroid/content/res/Configuration;->fontScale:F

    .line 554
    .local v1, "fontScale":F
    const/4 v4, 0x0

    .line 555
    .local v4, "px":F
    if-eqz p3, :cond_4

    invoke-virtual {v5, p3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v6

    div-float v4, v6, v1

    .line 558
    :goto_1
    invoke-virtual {v5}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    .line 559
    .local v3, "metrics":Landroid/util/DisplayMetrics;
    iget v2, v3, Landroid/util/DisplayMetrics;->density:F

    .line 560
    .local v2, "logicalDensity":F
    div-float v6, v4, v2

    invoke-static {v6}, Ljava/lang/Math;->round(F)I

    move-result v0

    .line 563
    .local v0, "fontDP":I
    double-to-float v6, p1

    cmpl-float v6, v1, v6

    if-lez v6, :cond_3

    .line 564
    double-to-float v1, p1

    .line 566
    :cond_3
    const/4 v6, 0x1

    int-to-float v7, v0

    mul-float/2addr v7, v1

    invoke-virtual {p0, v6, v7}, Landroid/widget/TextView;->setTextSize(IF)V

    goto :goto_0

    .line 556
    .end local v0    # "fontDP":I
    .end local v2    # "logicalDensity":F
    .end local v3    # "metrics":Landroid/util/DisplayMetrics;
    :cond_4
    invoke-virtual {p0}, Landroid/widget/TextView;->getTextSize()F

    move-result v6

    div-float v4, v6, v1

    goto :goto_1
.end method

.method public static setRippleColor(Landroid/view/View;I)V
    .locals 2
    .param p0, "view"    # Landroid/view/View;
    .param p1, "colorId"    # I

    .prologue
    .line 452
    if-eqz p0, :cond_0

    const/4 v1, -0x1

    if-le p1, v1, :cond_0

    .line 454
    invoke-virtual {p0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getCurrent()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 456
    .local v0, "backgroundDrawable":Landroid/graphics/drawable/Drawable;
    instance-of v1, v0, Landroid/graphics/drawable/RippleDrawable;

    if-eqz v1, :cond_0

    .line 457
    check-cast v0, Landroid/graphics/drawable/RippleDrawable;

    .end local v0    # "backgroundDrawable":Landroid/graphics/drawable/Drawable;
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/RippleDrawable;->setColor(Landroid/content/res/ColorStateList;)V

    .line 460
    :cond_0
    return-void
.end method

.method public static setRippleSize(Landroid/view/View;II)V
    .locals 11
    .param p0, "view"    # Landroid/view/View;
    .param p1, "rippleWidth"    # I
    .param p2, "rippleHeight"    # I

    .prologue
    const/4 v10, -0x1

    .line 397
    const-string v7, "GraphicResourceUtils"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "setRippleSize : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " x "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x1

    invoke-static {v7, v8, v9}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 399
    if-eqz p0, :cond_0

    .line 401
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v6

    .line 402
    .local v6, "width":I
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v5

    .line 404
    .local v5, "height":I
    if-eq v6, v10, :cond_0

    if-ne v5, v10, :cond_1

    .line 424
    .end local v5    # "height":I
    .end local v6    # "width":I
    :cond_0
    :goto_0
    return-void

    .line 408
    .restart local v5    # "height":I
    .restart local v6    # "width":I
    :cond_1
    div-int/lit8 v1, v6, 0x2

    .line 409
    .local v1, "centerX":I
    div-int/lit8 v2, v5, 0x2

    .line 410
    .local v2, "centerY":I
    div-int/lit8 v4, p1, 0x2

    .line 411
    .local v4, "half_width":I
    div-int/lit8 v3, p2, 0x2

    .line 413
    .local v3, "half_height":I
    invoke-virtual {p0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v7

    invoke-virtual {v7}, Landroid/graphics/drawable/Drawable;->getCurrent()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 415
    .local v0, "backgroundDrawable":Landroid/graphics/drawable/Drawable;
    instance-of v7, v0, Landroid/graphics/drawable/RippleDrawable;

    if-eqz v7, :cond_0

    .line 416
    sub-int v7, v1, v4

    sub-int v8, v2, v3

    add-int v9, v1, v4

    add-int v10, v2, v3

    invoke-virtual {v0, v7, v8, v9, v10}, Landroid/graphics/drawable/Drawable;->setHotspotBounds(IIII)V

    goto :goto_0
.end method

.method public static setRippleSize(Landroid/view/View;IIII)V
    .locals 9
    .param p0, "view"    # Landroid/view/View;
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "rippleWidth"    # I
    .param p4, "rippleHeight"    # I

    .prologue
    const/4 v5, -0x1

    .line 427
    if-eqz p0, :cond_0

    .line 429
    if-eq p1, v5, :cond_0

    if-ne p2, v5, :cond_1

    .line 449
    :cond_0
    :goto_0
    return-void

    .line 433
    :cond_1
    div-int/lit8 v1, p1, 0x2

    .line 434
    .local v1, "centerX":I
    div-int/lit8 v2, p2, 0x2

    .line 435
    .local v2, "centerY":I
    div-int/lit8 v4, p3, 0x2

    .line 436
    .local v4, "half_width":I
    div-int/lit8 v3, p4, 0x2

    .line 438
    .local v3, "half_height":I
    invoke-virtual {p0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->getCurrent()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 440
    .local v0, "backgroundDrawable":Landroid/graphics/drawable/Drawable;
    instance-of v5, v0, Landroid/graphics/drawable/RippleDrawable;

    if-eqz v5, :cond_0

    .line 441
    sub-int v5, v1, v4

    sub-int v6, v2, v3

    add-int v7, v1, v4

    add-int v8, v2, v3

    invoke-virtual {v0, v5, v6, v7, v8}, Landroid/graphics/drawable/Drawable;->setHotspotBounds(IIII)V

    goto :goto_0
.end method

.method public static setRippleSizeWithViewWidth(Landroid/view/View;II)V
    .locals 1
    .param p0, "view"    # Landroid/view/View;
    .param p1, "maxRippleWidth"    # I
    .param p2, "maxRippleHeight"    # I

    .prologue
    const/4 v0, 0x0

    .line 364
    invoke-static {p0, p1, p2, v0, v0}, Lcom/android/incallui/util/GraphicResourceUtils;->setRippleSizeWithViewWidth(Landroid/view/View;IIII)V

    .line 365
    return-void
.end method

.method public static setRippleSizeWithViewWidth(Landroid/view/View;IIII)V
    .locals 7
    .param p0, "view"    # Landroid/view/View;
    .param p1, "maxRippleWidth"    # I
    .param p2, "maxRippleHeight"    # I
    .param p3, "startPadding"    # I
    .param p4, "endPadding"    # I

    .prologue
    .line 368
    if-eqz p0, :cond_0

    .line 369
    invoke-virtual {p0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v6

    new-instance v0, Lcom/android/incallui/util/GraphicResourceUtils$1;

    move-object v1, p0

    move v2, p3

    move v3, p4

    move v4, p1

    move v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/android/incallui/util/GraphicResourceUtils$1;-><init>(Landroid/view/View;IIII)V

    invoke-virtual {v6, v0}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 394
    :cond_0
    return-void
.end method

.method public static setTextSizeUntilLargeSize()F
    .locals 3

    .prologue
    .line 639
    const v0, 0x3f99999a    # 1.2f

    .line 640
    .local v0, "MAX_FONT_SCALE":F
    invoke-static {}, Lcom/android/incallui/InCallApp;->getInstance()Lcom/android/incallui/InCallApp;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/incallui/InCallApp;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v1, v2, Landroid/content/res/Configuration;->fontScale:F

    .line 641
    .local v1, "fontScale":F
    cmpl-float v2, v1, v0

    if-lez v2, :cond_0

    .line 642
    move v1, v0

    .line 644
    :cond_0
    return v1
.end method
