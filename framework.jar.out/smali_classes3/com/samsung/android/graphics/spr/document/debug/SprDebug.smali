.class public Lcom/samsung/android/graphics/spr/document/debug/SprDebug;
.super Ljava/lang/Object;
.source "SprDebug.java"


# static fields
.field public static final DEBUG_HIGH:I = 0x3

.field public static final DEBUG_LOW:I = 0x1

.field public static final DEBUG_MID:I = 0x2

.field public static IsDebug:Z

.field private static mDebugLevel:Ljava/lang/Integer;

.field private static mTextOutlinePaint:Landroid/graphics/Paint;

.field private static mTextPaint:Landroid/graphics/Paint;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    sput-boolean v5, Lcom/samsung/android/graphics/spr/document/debug/SprDebug;->IsDebug:Z

    sput-object v3, Lcom/samsung/android/graphics/spr/document/debug/SprDebug;->mDebugLevel:Ljava/lang/Integer;

    sput-object v3, Lcom/samsung/android/graphics/spr/document/debug/SprDebug;->mTextPaint:Landroid/graphics/Paint;

    sput-object v3, Lcom/samsung/android/graphics/spr/document/debug/SprDebug;->mTextOutlinePaint:Landroid/graphics/Paint;

    const-string/jumbo v3, "eng"

    sget-object v6, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    :try_start_0
    const-string/jumbo v3, "android.os.SystemProperties"

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string/jumbo v3, "getInt"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Class;

    const-class v7, Ljava/lang/String;

    const/4 v8, 0x0

    aput-object v7, v6, v8

    sget-object v7, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v8, 0x1

    aput-object v7, v6, v8

    invoke-virtual {v0, v3, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const-string/jumbo v6, "persist.sys.spr.debug"

    const/4 v7, 0x0

    aput-object v6, v3, v7

    const/4 v6, 0x0

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/4 v7, 0x1

    aput-object v6, v3, v7

    invoke-virtual {v2, v0, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    sput-object v3, Lcom/samsung/android/graphics/spr/document/debug/SprDebug;->mDebugLevel:Ljava/lang/Integer;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    sget-object v3, Lcom/samsung/android/graphics/spr/document/debug/SprDebug;->mDebugLevel:Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-lt v3, v4, :cond_1

    move v3, v4

    :goto_1
    sput-boolean v3, Lcom/samsung/android/graphics/spr/document/debug/SprDebug;->IsDebug:Z

    return-void

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    sput-object v3, Lcom/samsung/android/graphics/spr/document/debug/SprDebug;->mDebugLevel:Ljava/lang/Integer;

    goto :goto_0

    :cond_0
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    sput-object v3, Lcom/samsung/android/graphics/spr/document/debug/SprDebug;->mDebugLevel:Ljava/lang/Integer;

    goto :goto_0

    :cond_1
    move v3, v5

    goto :goto_1
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static drawDebugInfo(Landroid/graphics/Canvas;Lcom/samsung/android/graphics/spr/document/SprDocument;III)V
    .locals 2

    sget-object v0, Lcom/samsung/android/graphics/spr/document/debug/SprDebug;->mDebugLevel:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x2

    if-lt v0, v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/samsung/android/graphics/spr/document/SprDocument;->isNinePatch()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string/jumbo v0, "N"

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/samsung/android/graphics/spr/document/SprDocument;->hashCode()I

    move-result v1

    rem-int/lit16 v1, v1, 0x2710

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x14

    invoke-static {p0, v0, v1}, Lcom/samsung/android/graphics/spr/document/debug/SprDebug;->drawText(Landroid/graphics/Canvas;Ljava/lang/String;I)V

    iget-object v0, p1, Lcom/samsung/android/graphics/spr/document/SprDocument;->mName:Ljava/lang/String;

    const/16 v1, 0x28

    invoke-static {p0, v0, v1}, Lcom/samsung/android/graphics/spr/document/debug/SprDebug;->drawText(Landroid/graphics/Canvas;Ljava/lang/String;I)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x3c

    invoke-static {p0, v0, v1}, Lcom/samsung/android/graphics/spr/document/debug/SprDebug;->drawText(Landroid/graphics/Canvas;Ljava/lang/String;I)V

    sget-object v0, Lcom/samsung/android/graphics/spr/document/debug/SprDebug;->mDebugLevel:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x3

    if-lt v0, v1, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/samsung/android/graphics/spr/document/SprDocument;->getLoadingTime()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "ms E:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/samsung/android/graphics/spr/document/SprDocument;->getTotalElementCount()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " S:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/samsung/android/graphics/spr/document/SprDocument;->getTotalSegmentCount()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " A:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/samsung/android/graphics/spr/document/SprDocument;->getTotalAttributeCount()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x50

    invoke-static {p0, v0, v1}, Lcom/samsung/android/graphics/spr/document/debug/SprDebug;->drawText(Landroid/graphics/Canvas;Ljava/lang/String;I)V

    :cond_0
    return-void

    :cond_1
    invoke-virtual {p1}, Lcom/samsung/android/graphics/spr/document/SprDocument;->isIntrinsic()Z

    move-result v0

    if-eqz v0, :cond_2

    const-string/jumbo v0, ""

    goto/16 :goto_0

    :cond_2
    const-string/jumbo v0, "C"

    goto/16 :goto_0
.end method

.method public static drawRect(Landroid/graphics/Canvas;Lcom/samsung/android/graphics/spr/document/SprDocument;II)V
    .locals 6

    new-instance v5, Landroid/graphics/Paint;

    invoke-direct {v5}, Landroid/graphics/Paint;-><init>()V

    const/4 v0, 0x1

    invoke-virtual {v5, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    sget-object v0, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v5, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    const/high16 v0, 0x40a00000    # 5.0f

    invoke-virtual {v5, v0}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    const/high16 v0, -0x10000

    invoke-virtual {v5, v0}, Landroid/graphics/Paint;->setColor(I)V

    iget v1, p1, Lcom/samsung/android/graphics/spr/document/SprDocument;->mLeft:F

    iget v2, p1, Lcom/samsung/android/graphics/spr/document/SprDocument;->mTop:F

    iget v0, p1, Lcom/samsung/android/graphics/spr/document/SprDocument;->mLeft:F

    int-to-float v3, p2

    add-float/2addr v3, v0

    iget v0, p1, Lcom/samsung/android/graphics/spr/document/SprDocument;->mTop:F

    int-to-float v4, p3

    add-float/2addr v4, v0

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    return-void
.end method

.method private static drawText(Landroid/graphics/Canvas;Ljava/lang/String;I)V
    .locals 5

    const/4 v4, 0x1

    const/high16 v3, 0x41a00000    # 20.0f

    const/high16 v2, 0x40a00000    # 5.0f

    sget-object v0, Lcom/samsung/android/graphics/spr/document/debug/SprDebug;->mTextOutlinePaint:Landroid/graphics/Paint;

    if-nez v0, :cond_0

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    sput-object v0, Lcom/samsung/android/graphics/spr/document/debug/SprDebug;->mTextOutlinePaint:Landroid/graphics/Paint;

    sget-object v0, Lcom/samsung/android/graphics/spr/document/debug/SprDebug;->mTextOutlinePaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    sget-object v0, Lcom/samsung/android/graphics/spr/document/debug/SprDebug;->mTextOutlinePaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setTextSize(F)V

    sget-object v0, Lcom/samsung/android/graphics/spr/document/debug/SprDebug;->mTextOutlinePaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    sget-object v0, Lcom/samsung/android/graphics/spr/document/debug/SprDebug;->mTextOutlinePaint:Landroid/graphics/Paint;

    const/high16 v1, -0x1000000

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    sget-object v0, Lcom/samsung/android/graphics/spr/document/debug/SprDebug;->mTextOutlinePaint:Landroid/graphics/Paint;

    const/high16 v1, 0x40800000    # 4.0f

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    :cond_0
    sget-object v0, Lcom/samsung/android/graphics/spr/document/debug/SprDebug;->mTextPaint:Landroid/graphics/Paint;

    if-nez v0, :cond_1

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    sput-object v0, Lcom/samsung/android/graphics/spr/document/debug/SprDebug;->mTextPaint:Landroid/graphics/Paint;

    sget-object v0, Lcom/samsung/android/graphics/spr/document/debug/SprDebug;->mTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    sget-object v0, Lcom/samsung/android/graphics/spr/document/debug/SprDebug;->mTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setTextSize(F)V

    sget-object v0, Lcom/samsung/android/graphics/spr/document/debug/SprDebug;->mTextPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    sget-object v0, Lcom/samsung/android/graphics/spr/document/debug/SprDebug;->mTextPaint:Landroid/graphics/Paint;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    :cond_1
    int-to-float v0, p2

    sget-object v1, Lcom/samsung/android/graphics/spr/document/debug/SprDebug;->mTextOutlinePaint:Landroid/graphics/Paint;

    invoke-virtual {p0, p1, v2, v0, v1}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    int-to-float v0, p2

    sget-object v1, Lcom/samsung/android/graphics/spr/document/debug/SprDebug;->mTextPaint:Landroid/graphics/Paint;

    invoke-virtual {p0, p1, v2, v0, v1}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    return-void
.end method

.method public static preDraw(Lcom/samsung/android/graphics/spr/document/shape/SprObjectBase;)V
    .locals 4

    const/16 v3, 0xff

    const/high16 v2, 0x40000000    # 2.0f

    sget-object v0, Lcom/samsung/android/graphics/spr/document/debug/SprDebug;->mDebugLevel:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x3

    if-lt v0, v1, :cond_0

    iget-object v0, p0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectBase;->strokePaint:Landroid/graphics/Paint;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectBase;->isVisibleStroke:Z

    iget-object v0, p0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectBase;->strokePaint:Landroid/graphics/Paint;

    const/4 v1, 0x0

    invoke-static {v3, v1, v3}, Landroid/graphics/Color;->rgb(III)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectBase;->strokePaint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result v0

    cmpg-float v0, v0, v2

    if-gez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectBase;->strokePaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    :cond_0
    return-void
.end method


# virtual methods
.method public dumpPNG(Lcom/samsung/android/graphics/spr/document/SprDocument;III)V
    .locals 11

    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p2, p3, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v6

    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v6}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    const/4 v4, 0x0

    move-object v0, p1

    move v2, p2

    move v3, p3

    move v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/android/graphics/spr/document/SprDocument;->draw(Landroid/graphics/Canvas;IIII)V

    :try_start_0
    new-instance v7, Ljava/io/File;

    const-string/jumbo v0, "/sdcard/spr_debug"

    invoke-direct {v7, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7}, Ljava/io/File;->mkdir()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {v7}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    new-instance v10, Ljava/io/FileOutputStream;

    new-instance v0, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/samsung/android/graphics/spr/document/SprDocument;->hashCode()I

    move-result v3

    rem-int/lit16 v3, v3, 0x2710

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ".png"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v7, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {v10, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    sget-object v0, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v2, 0x5a

    invoke-virtual {v6, v0, v2, v10}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    invoke-virtual {v10}, Ljava/io/OutputStream;->close()V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_0
    return-void

    :catch_0
    move-exception v9

    invoke-virtual {v9}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception v8

    invoke-virtual {v8}, Ljava/io/FileNotFoundException;->printStackTrace()V

    goto :goto_0
.end method
