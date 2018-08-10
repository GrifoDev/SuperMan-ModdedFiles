.class public abstract Landroid/graphics/BaseCanvas;
.super Ljava/lang/Object;
.source "BaseCanvas.java"


# instance fields
.field private mAllowHwBitmapsInSwMode:Z

.field protected mDensity:I

.field protected mNativeCanvasWrapper:J

.field protected mScreenDensity:I


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v0, p0, Landroid/graphics/BaseCanvas;->mScreenDensity:I

    iput v0, p0, Landroid/graphics/BaseCanvas;->mDensity:I

    iput-boolean v0, p0, Landroid/graphics/BaseCanvas;->mAllowHwBitmapsInSwMode:Z

    return-void
.end method

.method protected static final checkRange(III)V
    .locals 1

    or-int v0, p1, p2

    if-ltz v0, :cond_0

    add-int v0, p1, p2

    if-le v0, p0, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw v0

    :cond_1
    return-void
.end method

.method private static native nDrawArc(JFFFFFFZJ)V
.end method

.method private static native nDrawBitmap(JLandroid/graphics/Bitmap;FFFFFFFFJII)V
.end method

.method private static native nDrawBitmap(JLandroid/graphics/Bitmap;FFJIII)V
.end method

.method private static native nDrawBitmap(J[IIIFFIIZJ)V
.end method

.method private static native nDrawBitmapMatrix(JLandroid/graphics/Bitmap;JJ)V
.end method

.method private static native nDrawBitmapMesh(JLandroid/graphics/Bitmap;II[FI[IIJ)V
.end method

.method private static native nDrawCircle(JFFFJ)V
.end method

.method private static native nDrawColor(JII)V
.end method

.method private static native nDrawLine(JFFFFJ)V
.end method

.method private static native nDrawLines(J[FIIJ)V
.end method

.method private static native nDrawNinePatch(JJJFFFFJII)V
.end method

.method private static native nDrawOval(JFFFFJ)V
.end method

.method private static native nDrawPaint(JJ)V
.end method

.method private static native nDrawPath(JJJ)V
.end method

.method private static native nDrawPoint(JFFJ)V
.end method

.method private static native nDrawPoints(J[FIIJ)V
.end method

.method private static native nDrawRect(JFFFFJ)V
.end method

.method private static native nDrawRegion(JJJ)V
.end method

.method private static native nDrawRoundRect(JFFFFFFJ)V
.end method

.method private static native nDrawText(JLjava/lang/String;IIFFIJJ)V
.end method

.method private static native nDrawText(J[CIIFFIJJ)V
.end method

.method private static native nDrawTextOnPath(JLjava/lang/String;JFFIJJ)V
.end method

.method private static native nDrawTextOnPath(J[CIIJFFIJJ)V
.end method

.method private static native nDrawTextRun(JLjava/lang/String;IIIIFFZJJ)V
.end method

.method private static native nDrawTextRun(J[CIIIIFFZJJ)V
.end method

.method private static native nDrawVertices(JII[FI[FI[II[SIIJ)V
.end method

.method private throwIfHasHwBitmapInSwMode(Landroid/graphics/Paint;)V
    .locals 1

    invoke-virtual {p0}, Landroid/graphics/BaseCanvas;->isHardwareAccelerated()Z

    move-result v0

    if-nez v0, :cond_0

    if-nez p1, :cond_1

    :cond_0
    return-void

    :cond_1
    invoke-virtual {p1}, Landroid/graphics/Paint;->getShader()Landroid/graphics/Shader;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/graphics/BaseCanvas;->throwIfHasHwBitmapInSwMode(Landroid/graphics/Shader;)V

    return-void
.end method

.method private throwIfHasHwBitmapInSwMode(Landroid/graphics/Shader;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    :cond_0
    instance-of v0, p1, Landroid/graphics/BitmapShader;

    if-eqz v0, :cond_1

    move-object v0, p1

    check-cast v0, Landroid/graphics/BitmapShader;

    iget-object v0, v0, Landroid/graphics/BitmapShader;->mBitmap:Landroid/graphics/Bitmap;

    invoke-direct {p0, v0}, Landroid/graphics/BaseCanvas;->throwIfHwBitmapInSwMode(Landroid/graphics/Bitmap;)V

    :cond_1
    instance-of v0, p1, Landroid/graphics/ComposeShader;

    if-eqz v0, :cond_2

    move-object v0, p1

    check-cast v0, Landroid/graphics/ComposeShader;

    iget-object v0, v0, Landroid/graphics/ComposeShader;->mShaderA:Landroid/graphics/Shader;

    invoke-direct {p0, v0}, Landroid/graphics/BaseCanvas;->throwIfHasHwBitmapInSwMode(Landroid/graphics/Shader;)V

    check-cast p1, Landroid/graphics/ComposeShader;

    iget-object v0, p1, Landroid/graphics/ComposeShader;->mShaderB:Landroid/graphics/Shader;

    invoke-direct {p0, v0}, Landroid/graphics/BaseCanvas;->throwIfHasHwBitmapInSwMode(Landroid/graphics/Shader;)V

    :cond_2
    return-void
.end method

.method private throwIfHwBitmapInSwMode(Landroid/graphics/Bitmap;)V
    .locals 2

    iget-boolean v0, p0, Landroid/graphics/BaseCanvas;->mAllowHwBitmapsInSwMode:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroid/graphics/BaseCanvas;->isHardwareAccelerated()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v0

    sget-object v1, Landroid/graphics/Bitmap$Config;->HARDWARE:Landroid/graphics/Bitmap$Config;

    if-ne v0, v1, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Software rendering doesn\'t support hardware bitmaps"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    return-void
.end method


# virtual methods
.method public drawARGB(IIII)V
    .locals 1

    invoke-static {p1, p2, p3, p4}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/graphics/BaseCanvas;->drawColor(I)V

    return-void
.end method

.method public drawArc(FFFFFFZLandroid/graphics/Paint;)V
    .locals 12

    move-object/from16 v0, p8

    invoke-direct {p0, v0}, Landroid/graphics/BaseCanvas;->throwIfHasHwBitmapInSwMode(Landroid/graphics/Paint;)V

    iget-wide v1, p0, Landroid/graphics/BaseCanvas;->mNativeCanvasWrapper:J

    invoke-virtual/range {p8 .. p8}, Landroid/graphics/Paint;->getNativeInstance()J

    move-result-wide v10

    move v3, p1

    move v4, p2

    move v5, p3

    move/from16 v6, p4

    move/from16 v7, p5

    move/from16 v8, p6

    move/from16 v9, p7

    invoke-static/range {v1 .. v11}, Landroid/graphics/BaseCanvas;->nDrawArc(JFFFFFFZJ)V

    return-void
.end method

.method public drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V
    .locals 9

    invoke-direct {p0, p5}, Landroid/graphics/BaseCanvas;->throwIfHasHwBitmapInSwMode(Landroid/graphics/Paint;)V

    iget v1, p1, Landroid/graphics/RectF;->left:F

    iget v2, p1, Landroid/graphics/RectF;->top:F

    iget v3, p1, Landroid/graphics/RectF;->right:F

    iget v4, p1, Landroid/graphics/RectF;->bottom:F

    move-object v0, p0

    move v5, p2

    move v6, p3

    move v7, p4

    move-object v8, p5

    invoke-virtual/range {v0 .. v8}, Landroid/graphics/BaseCanvas;->drawArc(FFFFFFZLandroid/graphics/Paint;)V

    return-void
.end method

.method public drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V
    .locals 11

    invoke-virtual {p0, p1}, Landroid/graphics/BaseCanvas;->throwIfCannotDraw(Landroid/graphics/Bitmap;)V

    invoke-direct {p0, p4}, Landroid/graphics/BaseCanvas;->throwIfHasHwBitmapInSwMode(Landroid/graphics/Paint;)V

    iget-wide v1, p0, Landroid/graphics/BaseCanvas;->mNativeCanvasWrapper:J

    if-eqz p4, :cond_0

    invoke-virtual {p4}, Landroid/graphics/Paint;->getNativeInstance()J

    move-result-wide v6

    :goto_0
    iget v8, p0, Landroid/graphics/BaseCanvas;->mDensity:I

    iget v9, p0, Landroid/graphics/BaseCanvas;->mScreenDensity:I

    iget v10, p1, Landroid/graphics/Bitmap;->mDensity:I

    move-object v3, p1

    move v4, p2

    move v5, p3

    invoke-static/range {v1 .. v10}, Landroid/graphics/BaseCanvas;->nDrawBitmap(JLandroid/graphics/Bitmap;FFJIII)V

    return-void

    :cond_0
    const-wide/16 v6, 0x0

    goto :goto_0
.end method

.method public drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V
    .locals 8

    invoke-direct {p0, p3}, Landroid/graphics/BaseCanvas;->throwIfHasHwBitmapInSwMode(Landroid/graphics/Paint;)V

    iget-wide v1, p0, Landroid/graphics/BaseCanvas;->mNativeCanvasWrapper:J

    invoke-virtual {p2}, Landroid/graphics/Matrix;->ni()J

    move-result-wide v4

    if-eqz p3, :cond_0

    invoke-virtual {p3}, Landroid/graphics/Paint;->getNativeInstance()J

    move-result-wide v6

    :goto_0
    move-object v3, p1

    invoke-static/range {v1 .. v7}, Landroid/graphics/BaseCanvas;->nDrawBitmapMatrix(JLandroid/graphics/Bitmap;JJ)V

    return-void

    :cond_0
    const-wide/16 v6, 0x0

    goto :goto_0
.end method

.method public drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V
    .locals 22

    if-nez p3, :cond_0

    new-instance v3, Ljava/lang/NullPointerException;

    invoke-direct {v3}, Ljava/lang/NullPointerException;-><init>()V

    throw v3

    :cond_0
    invoke-virtual/range {p0 .. p1}, Landroid/graphics/BaseCanvas;->throwIfCannotDraw(Landroid/graphics/Bitmap;)V

    move-object/from16 v0, p0

    move-object/from16 v1, p4

    invoke-direct {v0, v1}, Landroid/graphics/BaseCanvas;->throwIfHasHwBitmapInSwMode(Landroid/graphics/Paint;)V

    if-nez p4, :cond_1

    const-wide/16 v14, 0x0

    :goto_0
    if-nez p2, :cond_2

    const/16 v21, 0x0

    const/16 v19, 0x0

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v20

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v18

    :goto_1
    move-object/from16 v0, p0

    iget-wide v3, v0, Landroid/graphics/BaseCanvas;->mNativeCanvasWrapper:J

    move/from16 v0, v19

    int-to-float v6, v0

    move/from16 v0, v21

    int-to-float v7, v0

    move/from16 v0, v20

    int-to-float v8, v0

    move/from16 v0, v18

    int-to-float v9, v0

    move-object/from16 v0, p3

    iget v5, v0, Landroid/graphics/Rect;->left:I

    int-to-float v10, v5

    move-object/from16 v0, p3

    iget v5, v0, Landroid/graphics/Rect;->top:I

    int-to-float v11, v5

    move-object/from16 v0, p3

    iget v5, v0, Landroid/graphics/Rect;->right:I

    int-to-float v12, v5

    move-object/from16 v0, p3

    iget v5, v0, Landroid/graphics/Rect;->bottom:I

    int-to-float v13, v5

    move-object/from16 v0, p0

    iget v0, v0, Landroid/graphics/BaseCanvas;->mScreenDensity:I

    move/from16 v16, v0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/graphics/Bitmap;->mDensity:I

    move/from16 v17, v0

    move-object/from16 v5, p1

    invoke-static/range {v3 .. v17}, Landroid/graphics/BaseCanvas;->nDrawBitmap(JLandroid/graphics/Bitmap;FFFFFFFFJII)V

    return-void

    :cond_1
    invoke-virtual/range {p4 .. p4}, Landroid/graphics/Paint;->getNativeInstance()J

    move-result-wide v14

    goto :goto_0

    :cond_2
    move-object/from16 v0, p2

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v19, v0

    move-object/from16 v0, p2

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v20, v0

    move-object/from16 v0, p2

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v21, v0

    move-object/from16 v0, p2

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v18, v0

    goto :goto_1
.end method

.method public drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/Paint;)V
    .locals 18

    if-nez p3, :cond_0

    new-instance v3, Ljava/lang/NullPointerException;

    invoke-direct {v3}, Ljava/lang/NullPointerException;-><init>()V

    throw v3

    :cond_0
    invoke-virtual/range {p0 .. p1}, Landroid/graphics/BaseCanvas;->throwIfCannotDraw(Landroid/graphics/Bitmap;)V

    move-object/from16 v0, p0

    move-object/from16 v1, p4

    invoke-direct {v0, v1}, Landroid/graphics/BaseCanvas;->throwIfHasHwBitmapInSwMode(Landroid/graphics/Paint;)V

    if-nez p4, :cond_1

    const-wide/16 v14, 0x0

    :goto_0
    if-nez p2, :cond_2

    const/4 v7, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    int-to-float v8, v3

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    int-to-float v9, v3

    :goto_1
    move-object/from16 v0, p0

    iget-wide v3, v0, Landroid/graphics/BaseCanvas;->mNativeCanvasWrapper:J

    move-object/from16 v0, p3

    iget v10, v0, Landroid/graphics/RectF;->left:F

    move-object/from16 v0, p3

    iget v11, v0, Landroid/graphics/RectF;->top:F

    move-object/from16 v0, p3

    iget v12, v0, Landroid/graphics/RectF;->right:F

    move-object/from16 v0, p3

    iget v13, v0, Landroid/graphics/RectF;->bottom:F

    move-object/from16 v0, p0

    iget v0, v0, Landroid/graphics/BaseCanvas;->mScreenDensity:I

    move/from16 v16, v0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/graphics/Bitmap;->mDensity:I

    move/from16 v17, v0

    move-object/from16 v5, p1

    invoke-static/range {v3 .. v17}, Landroid/graphics/BaseCanvas;->nDrawBitmap(JLandroid/graphics/Bitmap;FFFFFFFFJII)V

    return-void

    :cond_1
    invoke-virtual/range {p4 .. p4}, Landroid/graphics/Paint;->getNativeInstance()J

    move-result-wide v14

    goto :goto_0

    :cond_2
    move-object/from16 v0, p2

    iget v3, v0, Landroid/graphics/Rect;->left:I

    int-to-float v6, v3

    move-object/from16 v0, p2

    iget v3, v0, Landroid/graphics/Rect;->right:I

    int-to-float v8, v3

    move-object/from16 v0, p2

    iget v3, v0, Landroid/graphics/Rect;->top:I

    int-to-float v7, v3

    move-object/from16 v0, p2

    iget v3, v0, Landroid/graphics/Rect;->bottom:I

    int-to-float v9, v3

    goto :goto_1
.end method

.method public drawBitmap([IIIFFIIZLandroid/graphics/Paint;)V
    .locals 16
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    if-gez p6, :cond_0

    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v3, "width must be >= 0"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_0
    if-gez p7, :cond_1

    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v3, "height must be >= 0"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_1
    invoke-static/range {p3 .. p3}, Ljava/lang/Math;->abs(I)I

    move-result v2

    move/from16 v0, p6

    if-ge v2, v0, :cond_2

    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v3, "abs(stride) must be >= width"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_2
    add-int/lit8 v2, p7, -0x1

    mul-int v2, v2, p3

    add-int v14, p2, v2

    move-object/from16 v0, p1

    array-length v15, v0

    if-ltz p2, :cond_3

    add-int v2, p2, p6

    if-le v2, v15, :cond_4

    :cond_3
    new-instance v2, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v2}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw v2

    :cond_4
    if-ltz v14, :cond_3

    add-int v2, v14, p6

    if-gt v2, v15, :cond_3

    move-object/from16 v0, p0

    move-object/from16 v1, p9

    invoke-direct {v0, v1}, Landroid/graphics/BaseCanvas;->throwIfHasHwBitmapInSwMode(Landroid/graphics/Paint;)V

    if-eqz p6, :cond_5

    if-nez p7, :cond_6

    :cond_5
    return-void

    :cond_6
    move-object/from16 v0, p0

    iget-wide v2, v0, Landroid/graphics/BaseCanvas;->mNativeCanvasWrapper:J

    if-eqz p9, :cond_7

    invoke-virtual/range {p9 .. p9}, Landroid/graphics/Paint;->getNativeInstance()J

    move-result-wide v12

    :goto_0
    move-object/from16 v4, p1

    move/from16 v5, p2

    move/from16 v6, p3

    move/from16 v7, p4

    move/from16 v8, p5

    move/from16 v9, p6

    move/from16 v10, p7

    move/from16 v11, p8

    invoke-static/range {v2 .. v13}, Landroid/graphics/BaseCanvas;->nDrawBitmap(J[IIIFFIIZJ)V

    return-void

    :cond_7
    const-wide/16 v12, 0x0

    goto :goto_0
.end method

.method public drawBitmap([IIIIIIIZLandroid/graphics/Paint;)V
    .locals 10
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    int-to-float v4, p4

    int-to-float v5, p5

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    move-object/from16 v9, p9

    invoke-virtual/range {v0 .. v9}, Landroid/graphics/BaseCanvas;->drawBitmap([IIIFFIIZLandroid/graphics/Paint;)V

    return-void
.end method

.method public drawBitmapMesh(Landroid/graphics/Bitmap;II[FI[IILandroid/graphics/Paint;)V
    .locals 13

    or-int v1, p2, p3

    or-int v1, v1, p5

    or-int v1, v1, p7

    if-gez v1, :cond_0

    new-instance v1, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw v1

    :cond_0
    move-object/from16 v0, p8

    invoke-direct {p0, v0}, Landroid/graphics/BaseCanvas;->throwIfHasHwBitmapInSwMode(Landroid/graphics/Paint;)V

    if-eqz p2, :cond_1

    if-nez p3, :cond_2

    :cond_1
    return-void

    :cond_2
    add-int/lit8 v1, p2, 0x1

    add-int/lit8 v2, p3, 0x1

    mul-int v12, v1, v2

    move-object/from16 v0, p4

    array-length v1, v0

    mul-int/lit8 v2, v12, 0x2

    move/from16 v0, p5

    invoke-static {v1, v0, v2}, Landroid/graphics/BaseCanvas;->checkRange(III)V

    if-eqz p6, :cond_3

    move-object/from16 v0, p6

    array-length v1, v0

    move/from16 v0, p7

    invoke-static {v1, v0, v12}, Landroid/graphics/BaseCanvas;->checkRange(III)V

    :cond_3
    iget-wide v1, p0, Landroid/graphics/BaseCanvas;->mNativeCanvasWrapper:J

    if-eqz p8, :cond_4

    invoke-virtual/range {p8 .. p8}, Landroid/graphics/Paint;->getNativeInstance()J

    move-result-wide v10

    :goto_0
    move-object v3, p1

    move v4, p2

    move/from16 v5, p3

    move-object/from16 v6, p4

    move/from16 v7, p5

    move-object/from16 v8, p6

    move/from16 v9, p7

    invoke-static/range {v1 .. v11}, Landroid/graphics/BaseCanvas;->nDrawBitmapMesh(JLandroid/graphics/Bitmap;II[FI[IIJ)V

    return-void

    :cond_4
    const-wide/16 v10, 0x0

    goto :goto_0
.end method

.method public drawCircle(FFFLandroid/graphics/Paint;)V
    .locals 7

    invoke-direct {p0, p4}, Landroid/graphics/BaseCanvas;->throwIfHasHwBitmapInSwMode(Landroid/graphics/Paint;)V

    iget-wide v0, p0, Landroid/graphics/BaseCanvas;->mNativeCanvasWrapper:J

    invoke-virtual {p4}, Landroid/graphics/Paint;->getNativeInstance()J

    move-result-wide v5

    move v2, p1

    move v3, p2

    move v4, p3

    invoke-static/range {v0 .. v6}, Landroid/graphics/BaseCanvas;->nDrawCircle(JFFFJ)V

    return-void
.end method

.method public drawColor(I)V
    .locals 3

    iget-wide v0, p0, Landroid/graphics/BaseCanvas;->mNativeCanvasWrapper:J

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_OVER:Landroid/graphics/PorterDuff$Mode;

    iget v2, v2, Landroid/graphics/PorterDuff$Mode;->nativeInt:I

    invoke-static {v0, v1, p1, v2}, Landroid/graphics/BaseCanvas;->nDrawColor(JII)V

    return-void
.end method

.method public drawColor(ILandroid/graphics/PorterDuff$Mode;)V
    .locals 3

    iget-wide v0, p0, Landroid/graphics/BaseCanvas;->mNativeCanvasWrapper:J

    iget v2, p2, Landroid/graphics/PorterDuff$Mode;->nativeInt:I

    invoke-static {v0, v1, p1, v2}, Landroid/graphics/BaseCanvas;->nDrawColor(JII)V

    return-void
.end method

.method public drawLine(FFFFLandroid/graphics/Paint;)V
    .locals 8

    invoke-direct {p0, p5}, Landroid/graphics/BaseCanvas;->throwIfHasHwBitmapInSwMode(Landroid/graphics/Paint;)V

    iget-wide v0, p0, Landroid/graphics/BaseCanvas;->mNativeCanvasWrapper:J

    invoke-virtual {p5}, Landroid/graphics/Paint;->getNativeInstance()J

    move-result-wide v6

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-static/range {v0 .. v7}, Landroid/graphics/BaseCanvas;->nDrawLine(JFFFFJ)V

    return-void
.end method

.method public drawLines([FIILandroid/graphics/Paint;)V
    .locals 7

    invoke-direct {p0, p4}, Landroid/graphics/BaseCanvas;->throwIfHasHwBitmapInSwMode(Landroid/graphics/Paint;)V

    iget-wide v0, p0, Landroid/graphics/BaseCanvas;->mNativeCanvasWrapper:J

    invoke-virtual {p4}, Landroid/graphics/Paint;->getNativeInstance()J

    move-result-wide v5

    move-object v2, p1

    move v3, p2

    move v4, p3

    invoke-static/range {v0 .. v6}, Landroid/graphics/BaseCanvas;->nDrawLines(J[FIIJ)V

    return-void
.end method

.method public drawLines([FLandroid/graphics/Paint;)V
    .locals 2

    invoke-direct {p0, p2}, Landroid/graphics/BaseCanvas;->throwIfHasHwBitmapInSwMode(Landroid/graphics/Paint;)V

    array-length v0, p1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0, p2}, Landroid/graphics/BaseCanvas;->drawLines([FIILandroid/graphics/Paint;)V

    return-void
.end method

.method public drawOval(FFFFLandroid/graphics/Paint;)V
    .locals 8

    invoke-direct {p0, p5}, Landroid/graphics/BaseCanvas;->throwIfHasHwBitmapInSwMode(Landroid/graphics/Paint;)V

    iget-wide v0, p0, Landroid/graphics/BaseCanvas;->mNativeCanvasWrapper:J

    invoke-virtual {p5}, Landroid/graphics/Paint;->getNativeInstance()J

    move-result-wide v6

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-static/range {v0 .. v7}, Landroid/graphics/BaseCanvas;->nDrawOval(JFFFFJ)V

    return-void
.end method

.method public drawOval(Landroid/graphics/RectF;Landroid/graphics/Paint;)V
    .locals 6

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    invoke-direct {p0, p2}, Landroid/graphics/BaseCanvas;->throwIfHasHwBitmapInSwMode(Landroid/graphics/Paint;)V

    iget v1, p1, Landroid/graphics/RectF;->left:F

    iget v2, p1, Landroid/graphics/RectF;->top:F

    iget v3, p1, Landroid/graphics/RectF;->right:F

    iget v4, p1, Landroid/graphics/RectF;->bottom:F

    move-object v0, p0

    move-object v5, p2

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/BaseCanvas;->drawOval(FFFFLandroid/graphics/Paint;)V

    return-void
.end method

.method public drawPaint(Landroid/graphics/Paint;)V
    .locals 4

    iget-wide v0, p0, Landroid/graphics/BaseCanvas;->mNativeCanvasWrapper:J

    invoke-virtual {p1}, Landroid/graphics/Paint;->getNativeInstance()J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Landroid/graphics/BaseCanvas;->nDrawPaint(JJ)V

    return-void
.end method

.method public drawPatch(Landroid/graphics/NinePatch;Landroid/graphics/Rect;Landroid/graphics/Paint;)V
    .locals 17

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/NinePatch;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v16

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/graphics/BaseCanvas;->throwIfCannotDraw(Landroid/graphics/Bitmap;)V

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-direct {v0, v1}, Landroid/graphics/BaseCanvas;->throwIfHasHwBitmapInSwMode(Landroid/graphics/Paint;)V

    if-nez p3, :cond_0

    const-wide/16 v12, 0x0

    :goto_0
    move-object/from16 v0, p0

    iget-wide v2, v0, Landroid/graphics/BaseCanvas;->mNativeCanvasWrapper:J

    invoke-virtual/range {v16 .. v16}, Landroid/graphics/Bitmap;->getNativeInstance()J

    move-result-wide v4

    move-object/from16 v0, p1

    iget-wide v6, v0, Landroid/graphics/NinePatch;->mNativeChunk:J

    move-object/from16 v0, p2

    iget v8, v0, Landroid/graphics/Rect;->left:I

    int-to-float v8, v8

    move-object/from16 v0, p2

    iget v9, v0, Landroid/graphics/Rect;->top:I

    int-to-float v9, v9

    move-object/from16 v0, p2

    iget v10, v0, Landroid/graphics/Rect;->right:I

    int-to-float v10, v10

    move-object/from16 v0, p2

    iget v11, v0, Landroid/graphics/Rect;->bottom:I

    int-to-float v11, v11

    move-object/from16 v0, p0

    iget v14, v0, Landroid/graphics/BaseCanvas;->mDensity:I

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/NinePatch;->getDensity()I

    move-result v15

    invoke-static/range {v2 .. v15}, Landroid/graphics/BaseCanvas;->nDrawNinePatch(JJJFFFFJII)V

    return-void

    :cond_0
    invoke-virtual/range {p3 .. p3}, Landroid/graphics/Paint;->getNativeInstance()J

    move-result-wide v12

    goto :goto_0
.end method

.method public drawPatch(Landroid/graphics/NinePatch;Landroid/graphics/RectF;Landroid/graphics/Paint;)V
    .locals 17

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/NinePatch;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v16

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/graphics/BaseCanvas;->throwIfCannotDraw(Landroid/graphics/Bitmap;)V

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-direct {v0, v1}, Landroid/graphics/BaseCanvas;->throwIfHasHwBitmapInSwMode(Landroid/graphics/Paint;)V

    if-nez p3, :cond_0

    const-wide/16 v12, 0x0

    :goto_0
    move-object/from16 v0, p0

    iget-wide v2, v0, Landroid/graphics/BaseCanvas;->mNativeCanvasWrapper:J

    invoke-virtual/range {v16 .. v16}, Landroid/graphics/Bitmap;->getNativeInstance()J

    move-result-wide v4

    move-object/from16 v0, p1

    iget-wide v6, v0, Landroid/graphics/NinePatch;->mNativeChunk:J

    move-object/from16 v0, p2

    iget v8, v0, Landroid/graphics/RectF;->left:F

    move-object/from16 v0, p2

    iget v9, v0, Landroid/graphics/RectF;->top:F

    move-object/from16 v0, p2

    iget v10, v0, Landroid/graphics/RectF;->right:F

    move-object/from16 v0, p2

    iget v11, v0, Landroid/graphics/RectF;->bottom:F

    move-object/from16 v0, p0

    iget v14, v0, Landroid/graphics/BaseCanvas;->mDensity:I

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/NinePatch;->getDensity()I

    move-result v15

    invoke-static/range {v2 .. v15}, Landroid/graphics/BaseCanvas;->nDrawNinePatch(JJJFFFFJII)V

    return-void

    :cond_0
    invoke-virtual/range {p3 .. p3}, Landroid/graphics/Paint;->getNativeInstance()J

    move-result-wide v12

    goto :goto_0
.end method

.method public drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V
    .locals 6

    invoke-direct {p0, p2}, Landroid/graphics/BaseCanvas;->throwIfHasHwBitmapInSwMode(Landroid/graphics/Paint;)V

    iget-boolean v0, p1, Landroid/graphics/Path;->isSimplePath:Z

    if-eqz v0, :cond_0

    iget-object v0, p1, Landroid/graphics/Path;->rects:Landroid/graphics/Region;

    if-eqz v0, :cond_0

    iget-wide v0, p0, Landroid/graphics/BaseCanvas;->mNativeCanvasWrapper:J

    iget-object v2, p1, Landroid/graphics/Path;->rects:Landroid/graphics/Region;

    iget-wide v2, v2, Landroid/graphics/Region;->mNativeRegion:J

    invoke-virtual {p2}, Landroid/graphics/Paint;->getNativeInstance()J

    move-result-wide v4

    invoke-static/range {v0 .. v5}, Landroid/graphics/BaseCanvas;->nDrawRegion(JJJ)V

    :goto_0
    return-void

    :cond_0
    iget-wide v0, p0, Landroid/graphics/BaseCanvas;->mNativeCanvasWrapper:J

    invoke-virtual {p1}, Landroid/graphics/Path;->readOnlyNI()J

    move-result-wide v2

    invoke-virtual {p2}, Landroid/graphics/Paint;->getNativeInstance()J

    move-result-wide v4

    invoke-static/range {v0 .. v5}, Landroid/graphics/BaseCanvas;->nDrawPath(JJJ)V

    goto :goto_0
.end method

.method public drawPoint(FFLandroid/graphics/Paint;)V
    .locals 6

    invoke-direct {p0, p3}, Landroid/graphics/BaseCanvas;->throwIfHasHwBitmapInSwMode(Landroid/graphics/Paint;)V

    iget-wide v0, p0, Landroid/graphics/BaseCanvas;->mNativeCanvasWrapper:J

    invoke-virtual {p3}, Landroid/graphics/Paint;->getNativeInstance()J

    move-result-wide v4

    move v2, p1

    move v3, p2

    invoke-static/range {v0 .. v5}, Landroid/graphics/BaseCanvas;->nDrawPoint(JFFJ)V

    return-void
.end method

.method public drawPoints([FIILandroid/graphics/Paint;)V
    .locals 7

    invoke-direct {p0, p4}, Landroid/graphics/BaseCanvas;->throwIfHasHwBitmapInSwMode(Landroid/graphics/Paint;)V

    iget-wide v0, p0, Landroid/graphics/BaseCanvas;->mNativeCanvasWrapper:J

    invoke-virtual {p4}, Landroid/graphics/Paint;->getNativeInstance()J

    move-result-wide v5

    move-object v2, p1

    move v3, p2

    move v4, p3

    invoke-static/range {v0 .. v6}, Landroid/graphics/BaseCanvas;->nDrawPoints(J[FIIJ)V

    return-void
.end method

.method public drawPoints([FLandroid/graphics/Paint;)V
    .locals 2

    invoke-direct {p0, p2}, Landroid/graphics/BaseCanvas;->throwIfHasHwBitmapInSwMode(Landroid/graphics/Paint;)V

    array-length v0, p1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0, p2}, Landroid/graphics/BaseCanvas;->drawPoints([FIILandroid/graphics/Paint;)V

    return-void
.end method

.method public drawPosText(Ljava/lang/String;[FLandroid/graphics/Paint;)V
    .locals 6
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p3, p3}, Landroid/graphics/Paint;->set(Landroid/graphics/Paint;)V

    invoke-direct {p0, p3}, Landroid/graphics/BaseCanvas;->throwIfHasHwBitmapInSwMode(Landroid/graphics/Paint;)V

    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v2, 0x0

    move-object v0, p0

    move-object v4, p2

    move-object v5, p3

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/BaseCanvas;->drawPosText([CII[FLandroid/graphics/Paint;)V

    return-void
.end method

.method public drawPosText([CII[FLandroid/graphics/Paint;)V
    .locals 8
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    if-ltz p2, :cond_0

    add-int v0, p2, p3

    array-length v1, p1

    if-le v0, v1, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0

    :cond_1
    mul-int/lit8 v0, p3, 0x2

    array-length v1, p4

    if-gt v0, v1, :cond_0

    invoke-virtual {p5, p5}, Landroid/graphics/Paint;->set(Landroid/graphics/Paint;)V

    invoke-direct {p0, p5}, Landroid/graphics/BaseCanvas;->throwIfHasHwBitmapInSwMode(Landroid/graphics/Paint;)V

    const/4 v7, 0x0

    :goto_0
    if-ge v7, p3, :cond_2

    add-int v2, p2, v7

    mul-int/lit8 v0, v7, 0x2

    aget v4, p4, v0

    mul-int/lit8 v0, v7, 0x2

    add-int/lit8 v0, v0, 0x1

    aget v5, p4, v0

    const/4 v3, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v6, p5

    invoke-virtual/range {v0 .. v6}, Landroid/graphics/BaseCanvas;->drawText([CIIFFLandroid/graphics/Paint;)V

    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public drawRGB(III)V
    .locals 1

    invoke-static {p1, p2, p3}, Landroid/graphics/Color;->rgb(III)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/graphics/BaseCanvas;->drawColor(I)V

    return-void
.end method

.method public drawRect(FFFFLandroid/graphics/Paint;)V
    .locals 8

    invoke-direct {p0, p5}, Landroid/graphics/BaseCanvas;->throwIfHasHwBitmapInSwMode(Landroid/graphics/Paint;)V

    iget-wide v0, p0, Landroid/graphics/BaseCanvas;->mNativeCanvasWrapper:J

    invoke-virtual {p5}, Landroid/graphics/Paint;->getNativeInstance()J

    move-result-wide v6

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-static/range {v0 .. v7}, Landroid/graphics/BaseCanvas;->nDrawRect(JFFFFJ)V

    return-void
.end method

.method public drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V
    .locals 6

    invoke-direct {p0, p2}, Landroid/graphics/BaseCanvas;->throwIfHasHwBitmapInSwMode(Landroid/graphics/Paint;)V

    iget v0, p1, Landroid/graphics/Rect;->left:I

    int-to-float v1, v0

    iget v0, p1, Landroid/graphics/Rect;->top:I

    int-to-float v2, v0

    iget v0, p1, Landroid/graphics/Rect;->right:I

    int-to-float v3, v0

    iget v0, p1, Landroid/graphics/Rect;->bottom:I

    int-to-float v4, v0

    move-object v0, p0

    move-object v5, p2

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/BaseCanvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    return-void
.end method

.method public drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V
    .locals 8

    invoke-direct {p0, p2}, Landroid/graphics/BaseCanvas;->throwIfHasHwBitmapInSwMode(Landroid/graphics/Paint;)V

    iget-wide v0, p0, Landroid/graphics/BaseCanvas;->mNativeCanvasWrapper:J

    iget v2, p1, Landroid/graphics/RectF;->left:F

    iget v3, p1, Landroid/graphics/RectF;->top:F

    iget v4, p1, Landroid/graphics/RectF;->right:F

    iget v5, p1, Landroid/graphics/RectF;->bottom:F

    invoke-virtual {p2}, Landroid/graphics/Paint;->getNativeInstance()J

    move-result-wide v6

    invoke-static/range {v0 .. v7}, Landroid/graphics/BaseCanvas;->nDrawRect(JFFFFJ)V

    return-void
.end method

.method public drawRoundRect(FFFFFFLandroid/graphics/Paint;)V
    .locals 12

    move-object/from16 v0, p7

    invoke-direct {p0, v0}, Landroid/graphics/BaseCanvas;->throwIfHasHwBitmapInSwMode(Landroid/graphics/Paint;)V

    iget-wide v2, p0, Landroid/graphics/BaseCanvas;->mNativeCanvasWrapper:J

    invoke-virtual/range {p7 .. p7}, Landroid/graphics/Paint;->getNativeInstance()J

    move-result-wide v10

    move v4, p1

    move v5, p2

    move v6, p3

    move/from16 v7, p4

    move/from16 v8, p5

    move/from16 v9, p6

    invoke-static/range {v2 .. v11}, Landroid/graphics/BaseCanvas;->nDrawRoundRect(JFFFFFFJ)V

    return-void
.end method

.method public drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V
    .locals 8

    invoke-direct {p0, p4}, Landroid/graphics/BaseCanvas;->throwIfHasHwBitmapInSwMode(Landroid/graphics/Paint;)V

    iget v1, p1, Landroid/graphics/RectF;->left:F

    iget v2, p1, Landroid/graphics/RectF;->top:F

    iget v3, p1, Landroid/graphics/RectF;->right:F

    iget v4, p1, Landroid/graphics/RectF;->bottom:F

    move-object v0, p0

    move v5, p2

    move v6, p3

    move-object v7, p4

    invoke-virtual/range {v0 .. v7}, Landroid/graphics/BaseCanvas;->drawRoundRect(FFFFFFLandroid/graphics/Paint;)V

    return-void
.end method

.method public drawText(Ljava/lang/CharSequence;IIFFLandroid/graphics/Paint;)V
    .locals 14

    or-int v2, p2, p3

    sub-int v3, p3, p2

    or-int/2addr v2, v3

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v3

    sub-int v3, v3, p3

    or-int/2addr v2, v3

    if-gez v2, :cond_0

    new-instance v2, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v2}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v2

    :cond_0
    move-object/from16 v0, p6

    move-object/from16 v1, p6

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->set(Landroid/graphics/Paint;)V

    move-object/from16 v0, p6

    invoke-direct {p0, v0}, Landroid/graphics/BaseCanvas;->throwIfHasHwBitmapInSwMode(Landroid/graphics/Paint;)V

    instance-of v2, p1, Ljava/lang/String;

    if-nez v2, :cond_1

    instance-of v2, p1, Landroid/text/SpannedString;

    if-nez v2, :cond_1

    instance-of v2, p1, Landroid/text/SpannableString;

    if-eqz v2, :cond_2

    :cond_1
    iget-wide v2, p0, Landroid/graphics/BaseCanvas;->mNativeCanvasWrapper:J

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p6

    iget v9, v0, Landroid/graphics/Paint;->mBidiFlags:I

    invoke-virtual/range {p6 .. p6}, Landroid/graphics/Paint;->getNativeInstance()J

    move-result-wide v10

    move-object/from16 v0, p6

    iget-wide v12, v0, Landroid/graphics/Paint;->mNativeTypeface:J

    move/from16 v5, p2

    move/from16 v6, p3

    move/from16 v7, p4

    move/from16 v8, p5

    invoke-static/range {v2 .. v13}, Landroid/graphics/BaseCanvas;->nDrawText(JLjava/lang/String;IIFFIJJ)V

    :goto_0
    return-void

    :cond_2
    instance-of v2, p1, Landroid/text/GraphicsOperations;

    if-eqz v2, :cond_3

    move-object v2, p1

    check-cast v2, Landroid/text/GraphicsOperations;

    move-object v3, p0

    move/from16 v4, p2

    move/from16 v5, p3

    move/from16 v6, p4

    move/from16 v7, p5

    move-object/from16 v8, p6

    invoke-interface/range {v2 .. v8}, Landroid/text/GraphicsOperations;->drawText(Landroid/graphics/BaseCanvas;IIFFLandroid/graphics/Paint;)V

    goto :goto_0

    :cond_3
    sub-int v2, p3, p2

    invoke-static {v2}, Landroid/graphics/TemporaryBuffer;->obtain(I)[C

    move-result-object v4

    const/4 v2, 0x0

    move/from16 v0, p2

    move/from16 v1, p3

    invoke-static {p1, v0, v1, v4, v2}, Landroid/text/TextUtils;->getChars(Ljava/lang/CharSequence;II[CI)V

    iget-wide v2, p0, Landroid/graphics/BaseCanvas;->mNativeCanvasWrapper:J

    sub-int v6, p3, p2

    move-object/from16 v0, p6

    iget v9, v0, Landroid/graphics/Paint;->mBidiFlags:I

    invoke-virtual/range {p6 .. p6}, Landroid/graphics/Paint;->getNativeInstance()J

    move-result-wide v10

    move-object/from16 v0, p6

    iget-wide v12, v0, Landroid/graphics/Paint;->mNativeTypeface:J

    const/4 v5, 0x0

    move/from16 v7, p4

    move/from16 v8, p5

    invoke-static/range {v2 .. v13}, Landroid/graphics/BaseCanvas;->nDrawText(J[CIIFFIJJ)V

    invoke-static {v4}, Landroid/graphics/TemporaryBuffer;->recycle([C)V

    goto :goto_0
.end method

.method public drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V
    .locals 14

    move-object/from16 v0, p4

    move-object/from16 v1, p4

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->set(Landroid/graphics/Paint;)V

    move-object/from16 v0, p4

    invoke-direct {p0, v0}, Landroid/graphics/BaseCanvas;->throwIfHasHwBitmapInSwMode(Landroid/graphics/Paint;)V

    iget-wide v2, p0, Landroid/graphics/BaseCanvas;->mNativeCanvasWrapper:J

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v6

    move-object/from16 v0, p4

    iget v9, v0, Landroid/graphics/Paint;->mBidiFlags:I

    invoke-virtual/range {p4 .. p4}, Landroid/graphics/Paint;->getNativeInstance()J

    move-result-wide v10

    move-object/from16 v0, p4

    iget-wide v12, v0, Landroid/graphics/Paint;->mNativeTypeface:J

    const/4 v5, 0x0

    move-object v4, p1

    move/from16 v7, p2

    move/from16 v8, p3

    invoke-static/range {v2 .. v13}, Landroid/graphics/BaseCanvas;->nDrawText(JLjava/lang/String;IIFFIJJ)V

    return-void
.end method

.method public drawText(Ljava/lang/String;IIFFLandroid/graphics/Paint;)V
    .locals 14

    or-int v2, p2, p3

    sub-int v3, p3, p2

    or-int/2addr v2, v3

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    sub-int v3, v3, p3

    or-int/2addr v2, v3

    if-gez v2, :cond_0

    new-instance v2, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v2}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v2

    :cond_0
    move-object/from16 v0, p6

    move-object/from16 v1, p6

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->set(Landroid/graphics/Paint;)V

    move-object/from16 v0, p6

    invoke-direct {p0, v0}, Landroid/graphics/BaseCanvas;->throwIfHasHwBitmapInSwMode(Landroid/graphics/Paint;)V

    iget-wide v2, p0, Landroid/graphics/BaseCanvas;->mNativeCanvasWrapper:J

    move-object/from16 v0, p6

    iget v9, v0, Landroid/graphics/Paint;->mBidiFlags:I

    invoke-virtual/range {p6 .. p6}, Landroid/graphics/Paint;->getNativeInstance()J

    move-result-wide v10

    move-object/from16 v0, p6

    iget-wide v12, v0, Landroid/graphics/Paint;->mNativeTypeface:J

    move-object v4, p1

    move/from16 v5, p2

    move/from16 v6, p3

    move/from16 v7, p4

    move/from16 v8, p5

    invoke-static/range {v2 .. v13}, Landroid/graphics/BaseCanvas;->nDrawText(JLjava/lang/String;IIFFIJJ)V

    return-void
.end method

.method public drawText([CIIFFLandroid/graphics/Paint;)V
    .locals 14

    or-int v2, p2, p3

    add-int v3, p2, p3

    or-int/2addr v2, v3

    array-length v3, p1

    sub-int v3, v3, p2

    sub-int v3, v3, p3

    or-int/2addr v2, v3

    if-gez v2, :cond_0

    new-instance v2, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v2}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v2

    :cond_0
    move-object/from16 v0, p6

    move-object/from16 v1, p6

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->set(Landroid/graphics/Paint;)V

    move-object/from16 v0, p6

    invoke-direct {p0, v0}, Landroid/graphics/BaseCanvas;->throwIfHasHwBitmapInSwMode(Landroid/graphics/Paint;)V

    iget-wide v2, p0, Landroid/graphics/BaseCanvas;->mNativeCanvasWrapper:J

    move-object/from16 v0, p6

    iget v9, v0, Landroid/graphics/Paint;->mBidiFlags:I

    invoke-virtual/range {p6 .. p6}, Landroid/graphics/Paint;->getNativeInstance()J

    move-result-wide v10

    move-object/from16 v0, p6

    iget-wide v12, v0, Landroid/graphics/Paint;->mNativeTypeface:J

    move-object v4, p1

    move/from16 v5, p2

    move/from16 v6, p3

    move/from16 v7, p4

    move/from16 v8, p5

    invoke-static/range {v2 .. v13}, Landroid/graphics/BaseCanvas;->nDrawText(J[CIIFFIJJ)V

    return-void
.end method

.method public drawTextOnPath(Ljava/lang/String;Landroid/graphics/Path;FFLandroid/graphics/Paint;)V
    .locals 14

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_0

    move-object/from16 v0, p5

    move-object/from16 v1, p5

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->set(Landroid/graphics/Paint;)V

    move-object/from16 v0, p5

    invoke-direct {p0, v0}, Landroid/graphics/BaseCanvas;->throwIfHasHwBitmapInSwMode(Landroid/graphics/Paint;)V

    iget-wide v2, p0, Landroid/graphics/BaseCanvas;->mNativeCanvasWrapper:J

    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Path;->readOnlyNI()J

    move-result-wide v5

    move-object/from16 v0, p5

    iget v9, v0, Landroid/graphics/Paint;->mBidiFlags:I

    invoke-virtual/range {p5 .. p5}, Landroid/graphics/Paint;->getNativeInstance()J

    move-result-wide v10

    move-object/from16 v0, p5

    iget-wide v12, v0, Landroid/graphics/Paint;->mNativeTypeface:J

    move-object v4, p1

    move/from16 v7, p3

    move/from16 v8, p4

    invoke-static/range {v2 .. v13}, Landroid/graphics/BaseCanvas;->nDrawTextOnPath(JLjava/lang/String;JFFIJJ)V

    :cond_0
    return-void
.end method

.method public drawTextOnPath([CIILandroid/graphics/Path;FFLandroid/graphics/Paint;)V
    .locals 16

    if-ltz p2, :cond_0

    add-int v2, p2, p3

    move-object/from16 v0, p1

    array-length v3, v0

    if-le v2, v3, :cond_1

    :cond_0
    new-instance v2, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v2}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw v2

    :cond_1
    move-object/from16 v0, p7

    move-object/from16 v1, p7

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->set(Landroid/graphics/Paint;)V

    move-object/from16 v0, p0

    move-object/from16 v1, p7

    invoke-direct {v0, v1}, Landroid/graphics/BaseCanvas;->throwIfHasHwBitmapInSwMode(Landroid/graphics/Paint;)V

    move-object/from16 v0, p0

    iget-wide v2, v0, Landroid/graphics/BaseCanvas;->mNativeCanvasWrapper:J

    invoke-virtual/range {p4 .. p4}, Landroid/graphics/Path;->readOnlyNI()J

    move-result-wide v7

    move-object/from16 v0, p7

    iget v11, v0, Landroid/graphics/Paint;->mBidiFlags:I

    invoke-virtual/range {p7 .. p7}, Landroid/graphics/Paint;->getNativeInstance()J

    move-result-wide v12

    move-object/from16 v0, p7

    iget-wide v14, v0, Landroid/graphics/Paint;->mNativeTypeface:J

    move-object/from16 v4, p1

    move/from16 v5, p2

    move/from16 v6, p3

    move/from16 v9, p5

    move/from16 v10, p6

    invoke-static/range {v2 .. v15}, Landroid/graphics/BaseCanvas;->nDrawTextOnPath(J[CIIJFFIJJ)V

    return-void
.end method

.method public drawTextRun(Ljava/lang/CharSequence;IIIIFFZLandroid/graphics/Paint;)V
    .locals 18

    if-nez p1, :cond_0

    new-instance v4, Ljava/lang/NullPointerException;

    const-string/jumbo v5, "text is null"

    invoke-direct {v4, v5}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_0
    if-nez p9, :cond_1

    new-instance v4, Ljava/lang/NullPointerException;

    const-string/jumbo v5, "paint is null"

    invoke-direct {v4, v5}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_1
    or-int v4, p2, p3

    or-int v4, v4, p4

    or-int v4, v4, p5

    sub-int v5, p2, p4

    or-int/2addr v4, v5

    sub-int v5, p3, p2

    or-int/2addr v4, v5

    sub-int v5, p5, p3

    or-int/2addr v4, v5

    invoke-interface/range {p1 .. p1}, Ljava/lang/CharSequence;->length()I

    move-result v5

    sub-int v5, v5, p5

    or-int/2addr v4, v5

    if-gez v4, :cond_2

    new-instance v4, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v4}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v4

    :cond_2
    move-object/from16 v0, p9

    move-object/from16 v1, p9

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->set(Landroid/graphics/Paint;)V

    move-object/from16 v0, p0

    move-object/from16 v1, p9

    invoke-direct {v0, v1}, Landroid/graphics/BaseCanvas;->throwIfHasHwBitmapInSwMode(Landroid/graphics/Paint;)V

    move-object/from16 v0, p1

    instance-of v4, v0, Ljava/lang/String;

    if-nez v4, :cond_3

    move-object/from16 v0, p1

    instance-of v4, v0, Landroid/text/SpannedString;

    if-nez v4, :cond_3

    move-object/from16 v0, p1

    instance-of v4, v0, Landroid/text/SpannableString;

    if-eqz v4, :cond_4

    :cond_3
    move-object/from16 v0, p0

    iget-wide v4, v0, Landroid/graphics/BaseCanvas;->mNativeCanvasWrapper:J

    invoke-interface/range {p1 .. p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual/range {p9 .. p9}, Landroid/graphics/Paint;->getNativeInstance()J

    move-result-wide v14

    move-object/from16 v0, p9

    iget-wide v0, v0, Landroid/graphics/Paint;->mNativeTypeface:J

    move-wide/from16 v16, v0

    move/from16 v7, p2

    move/from16 v8, p3

    move/from16 v9, p4

    move/from16 v10, p5

    move/from16 v11, p6

    move/from16 v12, p7

    move/from16 v13, p8

    invoke-static/range {v4 .. v17}, Landroid/graphics/BaseCanvas;->nDrawTextRun(JLjava/lang/String;IIIIFFZJJ)V

    :goto_0
    return-void

    :cond_4
    move-object/from16 v0, p1

    instance-of v4, v0, Landroid/text/GraphicsOperations;

    if-eqz v4, :cond_5

    move-object/from16 v4, p1

    check-cast v4, Landroid/text/GraphicsOperations;

    move-object/from16 v5, p0

    move/from16 v6, p2

    move/from16 v7, p3

    move/from16 v8, p4

    move/from16 v9, p5

    move/from16 v10, p6

    move/from16 v11, p7

    move/from16 v12, p8

    move-object/from16 v13, p9

    invoke-interface/range {v4 .. v13}, Landroid/text/GraphicsOperations;->drawTextRun(Landroid/graphics/BaseCanvas;IIIIFFZLandroid/graphics/Paint;)V

    goto :goto_0

    :cond_5
    sub-int v10, p5, p4

    sub-int v8, p3, p2

    invoke-static {v10}, Landroid/graphics/TemporaryBuffer;->obtain(I)[C

    move-result-object v6

    const/4 v4, 0x0

    move-object/from16 v0, p1

    move/from16 v1, p4

    move/from16 v2, p5

    invoke-static {v0, v1, v2, v6, v4}, Landroid/text/TextUtils;->getChars(Ljava/lang/CharSequence;II[CI)V

    move-object/from16 v0, p0

    iget-wide v4, v0, Landroid/graphics/BaseCanvas;->mNativeCanvasWrapper:J

    sub-int v7, p2, p4

    invoke-virtual/range {p9 .. p9}, Landroid/graphics/Paint;->getNativeInstance()J

    move-result-wide v14

    move-object/from16 v0, p9

    iget-wide v0, v0, Landroid/graphics/Paint;->mNativeTypeface:J

    move-wide/from16 v16, v0

    const/4 v9, 0x0

    move/from16 v11, p6

    move/from16 v12, p7

    move/from16 v13, p8

    invoke-static/range {v4 .. v17}, Landroid/graphics/BaseCanvas;->nDrawTextRun(J[CIIIIFFZJJ)V

    invoke-static {v6}, Landroid/graphics/TemporaryBuffer;->recycle([C)V

    goto :goto_0
.end method

.method public drawTextRun([CIIIIFFZLandroid/graphics/Paint;)V
    .locals 16

    if-nez p1, :cond_0

    new-instance v2, Ljava/lang/NullPointerException;

    const-string/jumbo v3, "text is null"

    invoke-direct {v2, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_0
    if-nez p9, :cond_1

    new-instance v2, Ljava/lang/NullPointerException;

    const-string/jumbo v3, "paint is null"

    invoke-direct {v2, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_1
    or-int v2, p2, p3

    or-int v2, v2, p4

    or-int v2, v2, p5

    sub-int v3, p2, p4

    or-int/2addr v2, v3

    add-int v3, p4, p5

    add-int v4, p2, p3

    sub-int/2addr v3, v4

    or-int/2addr v2, v3

    move-object/from16 v0, p1

    array-length v3, v0

    add-int v4, p4, p5

    sub-int/2addr v3, v4

    or-int/2addr v2, v3

    if-gez v2, :cond_2

    new-instance v2, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v2}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v2

    :cond_2
    move-object/from16 v0, p9

    move-object/from16 v1, p9

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->set(Landroid/graphics/Paint;)V

    move-object/from16 v0, p0

    move-object/from16 v1, p9

    invoke-direct {v0, v1}, Landroid/graphics/BaseCanvas;->throwIfHasHwBitmapInSwMode(Landroid/graphics/Paint;)V

    move-object/from16 v0, p0

    iget-wide v2, v0, Landroid/graphics/BaseCanvas;->mNativeCanvasWrapper:J

    invoke-virtual/range {p9 .. p9}, Landroid/graphics/Paint;->getNativeInstance()J

    move-result-wide v12

    move-object/from16 v0, p9

    iget-wide v14, v0, Landroid/graphics/Paint;->mNativeTypeface:J

    move-object/from16 v4, p1

    move/from16 v5, p2

    move/from16 v6, p3

    move/from16 v7, p4

    move/from16 v8, p5

    move/from16 v9, p6

    move/from16 v10, p7

    move/from16 v11, p8

    invoke-static/range {v2 .. v15}, Landroid/graphics/BaseCanvas;->nDrawTextRun(J[CIIIIFFZJJ)V

    return-void
.end method

.method public drawVertices(Landroid/graphics/Canvas$VertexMode;I[FI[FI[II[SIILandroid/graphics/Paint;)V
    .locals 17

    move-object/from16 v0, p3

    array-length v2, v0

    move/from16 v0, p4

    move/from16 v1, p2

    invoke-static {v2, v0, v1}, Landroid/graphics/BaseCanvas;->checkRange(III)V

    invoke-virtual/range {p0 .. p0}, Landroid/graphics/BaseCanvas;->isHardwareAccelerated()Z

    move-result v2

    if-eqz v2, :cond_0

    return-void

    :cond_0
    if-eqz p5, :cond_1

    move-object/from16 v0, p5

    array-length v2, v0

    move/from16 v0, p6

    move/from16 v1, p2

    invoke-static {v2, v0, v1}, Landroid/graphics/BaseCanvas;->checkRange(III)V

    :cond_1
    if-eqz p7, :cond_2

    move-object/from16 v0, p7

    array-length v2, v0

    div-int/lit8 v3, p2, 0x2

    move/from16 v0, p8

    invoke-static {v2, v0, v3}, Landroid/graphics/BaseCanvas;->checkRange(III)V

    :cond_2
    if-eqz p9, :cond_3

    move-object/from16 v0, p9

    array-length v2, v0

    move/from16 v0, p10

    move/from16 v1, p11

    invoke-static {v2, v0, v1}, Landroid/graphics/BaseCanvas;->checkRange(III)V

    :cond_3
    move-object/from16 v0, p0

    move-object/from16 v1, p12

    invoke-direct {v0, v1}, Landroid/graphics/BaseCanvas;->throwIfHasHwBitmapInSwMode(Landroid/graphics/Paint;)V

    move-object/from16 v0, p0

    iget-wide v2, v0, Landroid/graphics/BaseCanvas;->mNativeCanvasWrapper:J

    move-object/from16 v0, p1

    iget v4, v0, Landroid/graphics/Canvas$VertexMode;->nativeInt:I

    invoke-virtual/range {p12 .. p12}, Landroid/graphics/Paint;->getNativeInstance()J

    move-result-wide v15

    move/from16 v5, p2

    move-object/from16 v6, p3

    move/from16 v7, p4

    move-object/from16 v8, p5

    move/from16 v9, p6

    move-object/from16 v10, p7

    move/from16 v11, p8

    move-object/from16 v12, p9

    move/from16 v13, p10

    move/from16 v14, p11

    invoke-static/range {v2 .. v16}, Landroid/graphics/BaseCanvas;->nDrawVertices(JII[FI[FI[II[SIIJ)V

    return-void
.end method

.method public isHardwareAccelerated()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isHwBitmapsInSwModeEnabled()Z
    .locals 1

    iget-boolean v0, p0, Landroid/graphics/BaseCanvas;->mAllowHwBitmapsInSwMode:Z

    return v0
.end method

.method public setHwBitmapsInSwModeEnabled(Z)V
    .locals 0

    iput-boolean p1, p0, Landroid/graphics/BaseCanvas;->mAllowHwBitmapsInSwMode:Z

    return-void
.end method

.method protected throwIfCannotDraw(Landroid/graphics/Bitmap;)V
    .locals 3

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Canvas: trying to use a recycled bitmap "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->isPremultiplied()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v0

    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    if-ne v0, v1, :cond_1

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->hasAlpha()Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Canvas: trying to use a non-premultiplied bitmap "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    invoke-direct {p0, p1}, Landroid/graphics/BaseCanvas;->throwIfHwBitmapInSwMode(Landroid/graphics/Bitmap;)V

    return-void
.end method
