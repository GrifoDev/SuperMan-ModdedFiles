.class public Landroid/graphics/Canvas;
.super Landroid/graphics/BaseCanvas;
.source "Canvas.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/graphics/Canvas$EdgeType;,
        Landroid/graphics/Canvas$NoImagePreloadHolder;,
        Landroid/graphics/Canvas$VertexMode;
    }
.end annotation


# static fields
.field public static final ALL_SAVE_FLAG:I = 0x1f

.field public static final CLIP_SAVE_FLAG:I = 0x2

.field public static final CLIP_TO_LAYER_SAVE_FLAG:I = 0x10

.field public static final FULL_COLOR_LAYER_SAVE_FLAG:I = 0x8

.field public static final HAS_ALPHA_LAYER_SAVE_FLAG:I = 0x4

.field public static final MATRIX_SAVE_FLAG:I = 0x1

.field private static final MAXMIMUM_BITMAP_SIZE:I = 0x7ffe

.field private static final NATIVE_ALLOCATION_SIZE:J = 0x20dL

.field public static sCompatibilityRestore:Z

.field public static sCompatibilitySetBitmap:Z


# instance fields
.field private mBitmap:Landroid/graphics/Bitmap;

.field private mDrawFilter:Landroid/graphics/DrawFilter;

.field private mFinalizer:Ljava/lang/Runnable;


# direct methods
.method static synthetic -wrap0()J
    .locals 2

    invoke-static {}, Landroid/graphics/Canvas;->nGetNativeFinalizer()J

    move-result-wide v0

    return-wide v0
.end method

.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-boolean v0, Landroid/graphics/Canvas;->sCompatibilityRestore:Z

    sput-boolean v0, Landroid/graphics/Canvas;->sCompatibilitySetBitmap:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    const/4 v1, 0x0

    invoke-direct {p0}, Landroid/graphics/BaseCanvas;-><init>()V

    invoke-virtual {p0}, Landroid/graphics/Canvas;->isHardwareAccelerated()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {v1}, Landroid/graphics/Canvas;->nInitRaster(Landroid/graphics/Bitmap;)J

    move-result-wide v0

    iput-wide v0, p0, Landroid/graphics/Canvas;->mNativeCanvasWrapper:J

    sget-object v0, Landroid/graphics/Canvas$NoImagePreloadHolder;->sRegistry:Llibcore/util/NativeAllocationRegistry;

    iget-wide v2, p0, Landroid/graphics/Canvas;->mNativeCanvasWrapper:J

    invoke-virtual {v0, p0, v2, v3}, Llibcore/util/NativeAllocationRegistry;->registerNativeAllocation(Ljava/lang/Object;J)Ljava/lang/Runnable;

    move-result-object v0

    iput-object v0, p0, Landroid/graphics/Canvas;->mFinalizer:Ljava/lang/Runnable;

    :goto_0
    return-void

    :cond_0
    iput-object v1, p0, Landroid/graphics/Canvas;->mFinalizer:Ljava/lang/Runnable;

    goto :goto_0
.end method

.method public constructor <init>(J)V
    .locals 5

    invoke-direct {p0}, Landroid/graphics/BaseCanvas;-><init>()V

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    :cond_0
    iput-wide p1, p0, Landroid/graphics/Canvas;->mNativeCanvasWrapper:J

    sget-object v0, Landroid/graphics/Canvas$NoImagePreloadHolder;->sRegistry:Llibcore/util/NativeAllocationRegistry;

    iget-wide v2, p0, Landroid/graphics/Canvas;->mNativeCanvasWrapper:J

    invoke-virtual {v0, p0, v2, v3}, Llibcore/util/NativeAllocationRegistry;->registerNativeAllocation(Ljava/lang/Object;J)Ljava/lang/Runnable;

    move-result-object v0

    iput-object v0, p0, Landroid/graphics/Canvas;->mFinalizer:Ljava/lang/Runnable;

    invoke-static {}, Landroid/graphics/Bitmap;->getDefaultDensity()I

    move-result v0

    iput v0, p0, Landroid/graphics/Canvas;->mDensity:I

    return-void
.end method

.method public constructor <init>(Landroid/graphics/Bitmap;)V
    .locals 4

    invoke-direct {p0}, Landroid/graphics/BaseCanvas;-><init>()V

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->isMutable()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Immutable bitmap passed to Canvas constructor"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-virtual {p0, p1}, Landroid/graphics/Canvas;->throwIfCannotDraw(Landroid/graphics/Bitmap;)V

    invoke-static {p1}, Landroid/graphics/Canvas;->nInitRaster(Landroid/graphics/Bitmap;)J

    move-result-wide v0

    iput-wide v0, p0, Landroid/graphics/Canvas;->mNativeCanvasWrapper:J

    sget-object v0, Landroid/graphics/Canvas$NoImagePreloadHolder;->sRegistry:Llibcore/util/NativeAllocationRegistry;

    iget-wide v2, p0, Landroid/graphics/Canvas;->mNativeCanvasWrapper:J

    invoke-virtual {v0, p0, v2, v3}, Llibcore/util/NativeAllocationRegistry;->registerNativeAllocation(Ljava/lang/Object;J)Ljava/lang/Runnable;

    move-result-object v0

    iput-object v0, p0, Landroid/graphics/Canvas;->mFinalizer:Ljava/lang/Runnable;

    iput-object p1, p0, Landroid/graphics/Canvas;->mBitmap:Landroid/graphics/Bitmap;

    iget v0, p1, Landroid/graphics/Bitmap;->mDensity:I

    iput v0, p0, Landroid/graphics/Canvas;->mDensity:I

    return-void
.end method

.method public static freeCaches()V
    .locals 0

    invoke-static {}, Landroid/graphics/Canvas;->nFreeCaches()V

    return-void
.end method

.method public static freeTextLayoutCaches()V
    .locals 0

    invoke-static {}, Landroid/graphics/Canvas;->nFreeTextLayoutCaches()V

    return-void
.end method

.method private static native nClipPath(JJI)Z
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native nClipRect(JFFFFI)Z
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native nConcat(JJ)V
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native nFreeCaches()V
.end method

.method private static native nFreeTextLayoutCaches()V
.end method

.method private static native nGetClipBounds(JLandroid/graphics/Rect;)Z
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method private static native nGetHeight(J)I
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native nGetMatrix(JJ)V
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native nGetNativeFinalizer()J
.end method

.method private static native nGetSaveCount(J)I
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native nGetWidth(J)I
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native nInitRaster(Landroid/graphics/Bitmap;)J
.end method

.method private static native nIsHighContrastText(J)Z
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native nIsOpaque(J)Z
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native nQuickReject(JFFFF)Z
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native nQuickReject(JJ)Z
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native nRestore(J)Z
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native nRestoreToCount(JI)V
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native nRotate(JF)V
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native nSave(JI)I
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native nSaveLayer(JFFFFJI)I
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native nSaveLayerAlpha(JFFFFII)I
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native nScale(JFF)V
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native nSetBitmap(JLandroid/graphics/Bitmap;)V
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method private static native nSetDrawFilter(JJ)V
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native nSetHighContrastText(JZ)V
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native nSetMatrix(JJ)V
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native nSkew(JFF)V
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native nTranslate(JFF)V
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method


# virtual methods
.method public clipOutPath(Landroid/graphics/Path;)Z
    .locals 1

    sget-object v0, Landroid/graphics/Region$Op;->DIFFERENCE:Landroid/graphics/Region$Op;

    invoke-virtual {p0, p1, v0}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;Landroid/graphics/Region$Op;)Z

    move-result v0

    return v0
.end method

.method public clipOutRect(FFFF)Z
    .locals 7

    iget-wide v0, p0, Landroid/graphics/Canvas;->mNativeCanvasWrapper:J

    sget-object v2, Landroid/graphics/Region$Op;->DIFFERENCE:Landroid/graphics/Region$Op;

    iget v6, v2, Landroid/graphics/Region$Op;->nativeInt:I

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-static/range {v0 .. v6}, Landroid/graphics/Canvas;->nClipRect(JFFFFI)Z

    move-result v0

    return v0
.end method

.method public clipOutRect(IIII)Z
    .locals 7

    iget-wide v0, p0, Landroid/graphics/Canvas;->mNativeCanvasWrapper:J

    int-to-float v2, p1

    int-to-float v3, p2

    int-to-float v4, p3

    int-to-float v5, p4

    sget-object v6, Landroid/graphics/Region$Op;->DIFFERENCE:Landroid/graphics/Region$Op;

    iget v6, v6, Landroid/graphics/Region$Op;->nativeInt:I

    invoke-static/range {v0 .. v6}, Landroid/graphics/Canvas;->nClipRect(JFFFFI)Z

    move-result v0

    return v0
.end method

.method public clipOutRect(Landroid/graphics/Rect;)Z
    .locals 7

    iget-wide v0, p0, Landroid/graphics/Canvas;->mNativeCanvasWrapper:J

    iget v2, p1, Landroid/graphics/Rect;->left:I

    int-to-float v2, v2

    iget v3, p1, Landroid/graphics/Rect;->top:I

    int-to-float v3, v3

    iget v4, p1, Landroid/graphics/Rect;->right:I

    int-to-float v4, v4

    iget v5, p1, Landroid/graphics/Rect;->bottom:I

    int-to-float v5, v5

    sget-object v6, Landroid/graphics/Region$Op;->DIFFERENCE:Landroid/graphics/Region$Op;

    iget v6, v6, Landroid/graphics/Region$Op;->nativeInt:I

    invoke-static/range {v0 .. v6}, Landroid/graphics/Canvas;->nClipRect(JFFFFI)Z

    move-result v0

    return v0
.end method

.method public clipOutRect(Landroid/graphics/RectF;)Z
    .locals 7

    iget-wide v0, p0, Landroid/graphics/Canvas;->mNativeCanvasWrapper:J

    iget v2, p1, Landroid/graphics/RectF;->left:F

    iget v3, p1, Landroid/graphics/RectF;->top:F

    iget v4, p1, Landroid/graphics/RectF;->right:F

    iget v5, p1, Landroid/graphics/RectF;->bottom:F

    sget-object v6, Landroid/graphics/Region$Op;->DIFFERENCE:Landroid/graphics/Region$Op;

    iget v6, v6, Landroid/graphics/Region$Op;->nativeInt:I

    invoke-static/range {v0 .. v6}, Landroid/graphics/Canvas;->nClipRect(JFFFFI)Z

    move-result v0

    return v0
.end method

.method public clipPath(Landroid/graphics/Path;)Z
    .locals 1

    sget-object v0, Landroid/graphics/Region$Op;->INTERSECT:Landroid/graphics/Region$Op;

    invoke-virtual {p0, p1, v0}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;Landroid/graphics/Region$Op;)Z

    move-result v0

    return v0
.end method

.method public clipPath(Landroid/graphics/Path;Landroid/graphics/Region$Op;)Z
    .locals 5
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-wide v0, p0, Landroid/graphics/Canvas;->mNativeCanvasWrapper:J

    invoke-virtual {p1}, Landroid/graphics/Path;->readOnlyNI()J

    move-result-wide v2

    iget v4, p2, Landroid/graphics/Region$Op;->nativeInt:I

    invoke-static {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->nClipPath(JJI)Z

    move-result v0

    return v0
.end method

.method public clipRect(FFFF)Z
    .locals 7

    iget-wide v0, p0, Landroid/graphics/Canvas;->mNativeCanvasWrapper:J

    sget-object v2, Landroid/graphics/Region$Op;->INTERSECT:Landroid/graphics/Region$Op;

    iget v6, v2, Landroid/graphics/Region$Op;->nativeInt:I

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-static/range {v0 .. v6}, Landroid/graphics/Canvas;->nClipRect(JFFFFI)Z

    move-result v0

    return v0
.end method

.method public clipRect(FFFFLandroid/graphics/Region$Op;)Z
    .locals 7
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-wide v0, p0, Landroid/graphics/Canvas;->mNativeCanvasWrapper:J

    iget v6, p5, Landroid/graphics/Region$Op;->nativeInt:I

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-static/range {v0 .. v6}, Landroid/graphics/Canvas;->nClipRect(JFFFFI)Z

    move-result v0

    return v0
.end method

.method public clipRect(IIII)Z
    .locals 7

    iget-wide v0, p0, Landroid/graphics/Canvas;->mNativeCanvasWrapper:J

    int-to-float v2, p1

    int-to-float v3, p2

    int-to-float v4, p3

    int-to-float v5, p4

    sget-object v6, Landroid/graphics/Region$Op;->INTERSECT:Landroid/graphics/Region$Op;

    iget v6, v6, Landroid/graphics/Region$Op;->nativeInt:I

    invoke-static/range {v0 .. v6}, Landroid/graphics/Canvas;->nClipRect(JFFFFI)Z

    move-result v0

    return v0
.end method

.method public clipRect(Landroid/graphics/Rect;)Z
    .locals 7

    iget-wide v0, p0, Landroid/graphics/Canvas;->mNativeCanvasWrapper:J

    iget v2, p1, Landroid/graphics/Rect;->left:I

    int-to-float v2, v2

    iget v3, p1, Landroid/graphics/Rect;->top:I

    int-to-float v3, v3

    iget v4, p1, Landroid/graphics/Rect;->right:I

    int-to-float v4, v4

    iget v5, p1, Landroid/graphics/Rect;->bottom:I

    int-to-float v5, v5

    sget-object v6, Landroid/graphics/Region$Op;->INTERSECT:Landroid/graphics/Region$Op;

    iget v6, v6, Landroid/graphics/Region$Op;->nativeInt:I

    invoke-static/range {v0 .. v6}, Landroid/graphics/Canvas;->nClipRect(JFFFFI)Z

    move-result v0

    return v0
.end method

.method public clipRect(Landroid/graphics/Rect;Landroid/graphics/Region$Op;)Z
    .locals 7
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-wide v0, p0, Landroid/graphics/Canvas;->mNativeCanvasWrapper:J

    iget v2, p1, Landroid/graphics/Rect;->left:I

    int-to-float v2, v2

    iget v3, p1, Landroid/graphics/Rect;->top:I

    int-to-float v3, v3

    iget v4, p1, Landroid/graphics/Rect;->right:I

    int-to-float v4, v4

    iget v5, p1, Landroid/graphics/Rect;->bottom:I

    int-to-float v5, v5

    iget v6, p2, Landroid/graphics/Region$Op;->nativeInt:I

    invoke-static/range {v0 .. v6}, Landroid/graphics/Canvas;->nClipRect(JFFFFI)Z

    move-result v0

    return v0
.end method

.method public clipRect(Landroid/graphics/RectF;)Z
    .locals 7

    iget-wide v0, p0, Landroid/graphics/Canvas;->mNativeCanvasWrapper:J

    iget v2, p1, Landroid/graphics/RectF;->left:F

    iget v3, p1, Landroid/graphics/RectF;->top:F

    iget v4, p1, Landroid/graphics/RectF;->right:F

    iget v5, p1, Landroid/graphics/RectF;->bottom:F

    sget-object v6, Landroid/graphics/Region$Op;->INTERSECT:Landroid/graphics/Region$Op;

    iget v6, v6, Landroid/graphics/Region$Op;->nativeInt:I

    invoke-static/range {v0 .. v6}, Landroid/graphics/Canvas;->nClipRect(JFFFFI)Z

    move-result v0

    return v0
.end method

.method public clipRect(Landroid/graphics/RectF;Landroid/graphics/Region$Op;)Z
    .locals 7
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-wide v0, p0, Landroid/graphics/Canvas;->mNativeCanvasWrapper:J

    iget v2, p1, Landroid/graphics/RectF;->left:F

    iget v3, p1, Landroid/graphics/RectF;->top:F

    iget v4, p1, Landroid/graphics/RectF;->right:F

    iget v5, p1, Landroid/graphics/RectF;->bottom:F

    iget v6, p2, Landroid/graphics/Region$Op;->nativeInt:I

    invoke-static/range {v0 .. v6}, Landroid/graphics/Canvas;->nClipRect(JFFFFI)Z

    move-result v0

    return v0
.end method

.method public clipRegion(Landroid/graphics/Region;)Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    return v0
.end method

.method public clipRegion(Landroid/graphics/Region;Landroid/graphics/Region$Op;)Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    return v0
.end method

.method public concat(Landroid/graphics/Matrix;)V
    .locals 4

    if-eqz p1, :cond_0

    iget-wide v0, p0, Landroid/graphics/Canvas;->mNativeCanvasWrapper:J

    iget-wide v2, p1, Landroid/graphics/Matrix;->native_instance:J

    invoke-static {v0, v1, v2, v3}, Landroid/graphics/Canvas;->nConcat(JJ)V

    :cond_0
    return-void
.end method

.method public drawARGB(IIII)V
    .locals 0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/graphics/BaseCanvas;->drawARGB(IIII)V

    return-void
.end method

.method public drawArc(FFFFFFZLandroid/graphics/Paint;)V
    .locals 0

    invoke-super/range {p0 .. p8}, Landroid/graphics/BaseCanvas;->drawArc(FFFFFFZLandroid/graphics/Paint;)V

    return-void
.end method

.method public drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V
    .locals 0

    invoke-super/range {p0 .. p5}, Landroid/graphics/BaseCanvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    return-void
.end method

.method public drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V
    .locals 0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/graphics/BaseCanvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    return-void
.end method

.method public drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V
    .locals 0

    invoke-super {p0, p1, p2, p3}, Landroid/graphics/BaseCanvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    return-void
.end method

.method public drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V
    .locals 0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/graphics/BaseCanvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    return-void
.end method

.method public drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/Paint;)V
    .locals 0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/graphics/BaseCanvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    return-void
.end method

.method public drawBitmap([IIIFFIIZLandroid/graphics/Paint;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-super/range {p0 .. p9}, Landroid/graphics/BaseCanvas;->drawBitmap([IIIFFIIZLandroid/graphics/Paint;)V

    return-void
.end method

.method public drawBitmap([IIIIIIIZLandroid/graphics/Paint;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-super/range {p0 .. p9}, Landroid/graphics/BaseCanvas;->drawBitmap([IIIIIIIZLandroid/graphics/Paint;)V

    return-void
.end method

.method public drawBitmapMesh(Landroid/graphics/Bitmap;II[FI[IILandroid/graphics/Paint;)V
    .locals 0

    invoke-super/range {p0 .. p8}, Landroid/graphics/BaseCanvas;->drawBitmapMesh(Landroid/graphics/Bitmap;II[FI[IILandroid/graphics/Paint;)V

    return-void
.end method

.method public drawCircle(FFFLandroid/graphics/Paint;)V
    .locals 0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/graphics/BaseCanvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    return-void
.end method

.method public drawColor(I)V
    .locals 0

    invoke-super {p0, p1}, Landroid/graphics/BaseCanvas;->drawColor(I)V

    return-void
.end method

.method public drawColor(ILandroid/graphics/PorterDuff$Mode;)V
    .locals 0

    invoke-super {p0, p1, p2}, Landroid/graphics/BaseCanvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    return-void
.end method

.method public drawLine(FFFFLandroid/graphics/Paint;)V
    .locals 0

    invoke-super/range {p0 .. p5}, Landroid/graphics/BaseCanvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    return-void
.end method

.method public drawLines([FIILandroid/graphics/Paint;)V
    .locals 0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/graphics/BaseCanvas;->drawLines([FIILandroid/graphics/Paint;)V

    return-void
.end method

.method public drawLines([FLandroid/graphics/Paint;)V
    .locals 0

    invoke-super {p0, p1, p2}, Landroid/graphics/BaseCanvas;->drawLines([FLandroid/graphics/Paint;)V

    return-void
.end method

.method public drawOval(FFFFLandroid/graphics/Paint;)V
    .locals 0

    invoke-super/range {p0 .. p5}, Landroid/graphics/BaseCanvas;->drawOval(FFFFLandroid/graphics/Paint;)V

    return-void
.end method

.method public drawOval(Landroid/graphics/RectF;Landroid/graphics/Paint;)V
    .locals 0

    invoke-super {p0, p1, p2}, Landroid/graphics/BaseCanvas;->drawOval(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    return-void
.end method

.method public drawPaint(Landroid/graphics/Paint;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/graphics/BaseCanvas;->drawPaint(Landroid/graphics/Paint;)V

    return-void
.end method

.method public drawPatch(Landroid/graphics/NinePatch;Landroid/graphics/Rect;Landroid/graphics/Paint;)V
    .locals 0

    invoke-super {p0, p1, p2, p3}, Landroid/graphics/BaseCanvas;->drawPatch(Landroid/graphics/NinePatch;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    return-void
.end method

.method public drawPatch(Landroid/graphics/NinePatch;Landroid/graphics/RectF;Landroid/graphics/Paint;)V
    .locals 0

    invoke-super {p0, p1, p2, p3}, Landroid/graphics/BaseCanvas;->drawPatch(Landroid/graphics/NinePatch;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    return-void
.end method

.method public drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V
    .locals 0

    invoke-super {p0, p1, p2}, Landroid/graphics/BaseCanvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    return-void
.end method

.method public drawPicture(Landroid/graphics/Picture;)V
    .locals 1

    invoke-virtual {p1}, Landroid/graphics/Picture;->endRecording()V

    invoke-virtual {p0}, Landroid/graphics/Canvas;->save()I

    move-result v0

    invoke-virtual {p1, p0}, Landroid/graphics/Picture;->draw(Landroid/graphics/Canvas;)V

    invoke-virtual {p0, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    return-void
.end method

.method public drawPicture(Landroid/graphics/Picture;Landroid/graphics/Rect;)V
    .locals 3

    invoke-virtual {p0}, Landroid/graphics/Canvas;->save()I

    iget v0, p2, Landroid/graphics/Rect;->left:I

    int-to-float v0, v0

    iget v1, p2, Landroid/graphics/Rect;->top:I

    int-to-float v1, v1

    invoke-virtual {p0, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    invoke-virtual {p1}, Landroid/graphics/Picture;->getWidth()I

    move-result v0

    if-lez v0, :cond_0

    invoke-virtual {p1}, Landroid/graphics/Picture;->getHeight()I

    move-result v0

    if-lez v0, :cond_0

    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p1}, Landroid/graphics/Picture;->getWidth()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p1}, Landroid/graphics/Picture;->getHeight()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v1, v2

    invoke-virtual {p0, v0, v1}, Landroid/graphics/Canvas;->scale(FF)V

    :cond_0
    invoke-virtual {p0, p1}, Landroid/graphics/Canvas;->drawPicture(Landroid/graphics/Picture;)V

    invoke-virtual {p0}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method public drawPicture(Landroid/graphics/Picture;Landroid/graphics/RectF;)V
    .locals 3

    invoke-virtual {p0}, Landroid/graphics/Canvas;->save()I

    iget v0, p2, Landroid/graphics/RectF;->left:F

    iget v1, p2, Landroid/graphics/RectF;->top:F

    invoke-virtual {p0, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    invoke-virtual {p1}, Landroid/graphics/Picture;->getWidth()I

    move-result v0

    if-lez v0, :cond_0

    invoke-virtual {p1}, Landroid/graphics/Picture;->getHeight()I

    move-result v0

    if-lez v0, :cond_0

    invoke-virtual {p2}, Landroid/graphics/RectF;->width()F

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/Picture;->getWidth()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    invoke-virtual {p2}, Landroid/graphics/RectF;->height()F

    move-result v1

    invoke-virtual {p1}, Landroid/graphics/Picture;->getHeight()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v1, v2

    invoke-virtual {p0, v0, v1}, Landroid/graphics/Canvas;->scale(FF)V

    :cond_0
    invoke-virtual {p0, p1}, Landroid/graphics/Canvas;->drawPicture(Landroid/graphics/Picture;)V

    invoke-virtual {p0}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method public drawPoint(FFLandroid/graphics/Paint;)V
    .locals 0

    invoke-super {p0, p1, p2, p3}, Landroid/graphics/BaseCanvas;->drawPoint(FFLandroid/graphics/Paint;)V

    return-void
.end method

.method public drawPoints([FIILandroid/graphics/Paint;)V
    .locals 0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/graphics/BaseCanvas;->drawPoints([FIILandroid/graphics/Paint;)V

    return-void
.end method

.method public drawPoints([FLandroid/graphics/Paint;)V
    .locals 0

    invoke-super {p0, p1, p2}, Landroid/graphics/BaseCanvas;->drawPoints([FLandroid/graphics/Paint;)V

    return-void
.end method

.method public drawPosText(Ljava/lang/String;[FLandroid/graphics/Paint;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-super {p0, p1, p2, p3}, Landroid/graphics/BaseCanvas;->drawPosText(Ljava/lang/String;[FLandroid/graphics/Paint;)V

    return-void
.end method

.method public drawPosText([CII[FLandroid/graphics/Paint;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-super/range {p0 .. p5}, Landroid/graphics/BaseCanvas;->drawPosText([CII[FLandroid/graphics/Paint;)V

    return-void
.end method

.method public drawRGB(III)V
    .locals 0

    invoke-super {p0, p1, p2, p3}, Landroid/graphics/BaseCanvas;->drawRGB(III)V

    return-void
.end method

.method public drawRect(FFFFLandroid/graphics/Paint;)V
    .locals 0

    invoke-super/range {p0 .. p5}, Landroid/graphics/BaseCanvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    return-void
.end method

.method public drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V
    .locals 0

    invoke-super {p0, p1, p2}, Landroid/graphics/BaseCanvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    return-void
.end method

.method public drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V
    .locals 0

    invoke-super {p0, p1, p2}, Landroid/graphics/BaseCanvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    return-void
.end method

.method public drawRoundRect(FFFFFFLandroid/graphics/Paint;)V
    .locals 0

    invoke-super/range {p0 .. p7}, Landroid/graphics/BaseCanvas;->drawRoundRect(FFFFFFLandroid/graphics/Paint;)V

    return-void
.end method

.method public drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V
    .locals 0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/graphics/BaseCanvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    return-void
.end method

.method public drawText(Ljava/lang/CharSequence;IIFFLandroid/graphics/Paint;)V
    .locals 0

    invoke-super/range {p0 .. p6}, Landroid/graphics/BaseCanvas;->drawText(Ljava/lang/CharSequence;IIFFLandroid/graphics/Paint;)V

    return-void
.end method

.method public drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V
    .locals 0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/graphics/BaseCanvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    return-void
.end method

.method public drawText(Ljava/lang/String;IIFFLandroid/graphics/Paint;)V
    .locals 0

    invoke-super/range {p0 .. p6}, Landroid/graphics/BaseCanvas;->drawText(Ljava/lang/String;IIFFLandroid/graphics/Paint;)V

    return-void
.end method

.method public drawText([CIIFFLandroid/graphics/Paint;)V
    .locals 0

    invoke-super/range {p0 .. p6}, Landroid/graphics/BaseCanvas;->drawText([CIIFFLandroid/graphics/Paint;)V

    return-void
.end method

.method public drawTextOnPath(Ljava/lang/String;Landroid/graphics/Path;FFLandroid/graphics/Paint;)V
    .locals 0

    invoke-super/range {p0 .. p5}, Landroid/graphics/BaseCanvas;->drawTextOnPath(Ljava/lang/String;Landroid/graphics/Path;FFLandroid/graphics/Paint;)V

    return-void
.end method

.method public drawTextOnPath([CIILandroid/graphics/Path;FFLandroid/graphics/Paint;)V
    .locals 0

    invoke-super/range {p0 .. p7}, Landroid/graphics/BaseCanvas;->drawTextOnPath([CIILandroid/graphics/Path;FFLandroid/graphics/Paint;)V

    return-void
.end method

.method public drawTextRun(Ljava/lang/CharSequence;IIIIFFZLandroid/graphics/Paint;)V
    .locals 0

    invoke-super/range {p0 .. p9}, Landroid/graphics/BaseCanvas;->drawTextRun(Ljava/lang/CharSequence;IIIIFFZLandroid/graphics/Paint;)V

    return-void
.end method

.method public drawTextRun([CIIIIFFZLandroid/graphics/Paint;)V
    .locals 0

    invoke-super/range {p0 .. p9}, Landroid/graphics/BaseCanvas;->drawTextRun([CIIIIFFZLandroid/graphics/Paint;)V

    return-void
.end method

.method public drawVertices(Landroid/graphics/Canvas$VertexMode;I[FI[FI[II[SIILandroid/graphics/Paint;)V
    .locals 0

    invoke-super/range {p0 .. p12}, Landroid/graphics/BaseCanvas;->drawVertices(Landroid/graphics/Canvas$VertexMode;I[FI[FI[II[SIILandroid/graphics/Paint;)V

    return-void
.end method

.method public final getClipBounds()Landroid/graphics/Rect;
    .locals 1

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {p0, v0}, Landroid/graphics/Canvas;->getClipBounds(Landroid/graphics/Rect;)Z

    return-object v0
.end method

.method public getClipBounds(Landroid/graphics/Rect;)Z
    .locals 2

    iget-wide v0, p0, Landroid/graphics/Canvas;->mNativeCanvasWrapper:J

    invoke-static {v0, v1, p1}, Landroid/graphics/Canvas;->nGetClipBounds(JLandroid/graphics/Rect;)Z

    move-result v0

    return v0
.end method

.method public getDensity()I
    .locals 1

    iget v0, p0, Landroid/graphics/Canvas;->mDensity:I

    return v0
.end method

.method public getDrawFilter()Landroid/graphics/DrawFilter;
    .locals 1

    iget-object v0, p0, Landroid/graphics/Canvas;->mDrawFilter:Landroid/graphics/DrawFilter;

    return-object v0
.end method

.method protected getGL()Ljavax/microedition/khronos/opengles/GL;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method public getHeight()I
    .locals 2

    iget-wide v0, p0, Landroid/graphics/Canvas;->mNativeCanvasWrapper:J

    invoke-static {v0, v1}, Landroid/graphics/Canvas;->nGetHeight(J)I

    move-result v0

    return v0
.end method

.method public final getMatrix()Landroid/graphics/Matrix;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    invoke-virtual {p0, v0}, Landroid/graphics/Canvas;->getMatrix(Landroid/graphics/Matrix;)V

    return-object v0
.end method

.method public getMatrix(Landroid/graphics/Matrix;)V
    .locals 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-wide v0, p0, Landroid/graphics/Canvas;->mNativeCanvasWrapper:J

    iget-wide v2, p1, Landroid/graphics/Matrix;->native_instance:J

    invoke-static {v0, v1, v2, v3}, Landroid/graphics/Canvas;->nGetMatrix(JJ)V

    return-void
.end method

.method public getMaximumBitmapHeight()I
    .locals 1

    const/16 v0, 0x7ffe

    return v0
.end method

.method public getMaximumBitmapWidth()I
    .locals 1

    const/16 v0, 0x7ffe

    return v0
.end method

.method public getNativeCanvasWrapper()J
    .locals 2

    iget-wide v0, p0, Landroid/graphics/Canvas;->mNativeCanvasWrapper:J

    return-wide v0
.end method

.method public getSaveCount()I
    .locals 2

    iget-wide v0, p0, Landroid/graphics/Canvas;->mNativeCanvasWrapper:J

    invoke-static {v0, v1}, Landroid/graphics/Canvas;->nGetSaveCount(J)I

    move-result v0

    return v0
.end method

.method public getWidth()I
    .locals 2

    iget-wide v0, p0, Landroid/graphics/Canvas;->mNativeCanvasWrapper:J

    invoke-static {v0, v1}, Landroid/graphics/Canvas;->nGetWidth(J)I

    move-result v0

    return v0
.end method

.method public insertInorderBarrier()V
    .locals 0

    return-void
.end method

.method public insertReorderBarrier()V
    .locals 0

    return-void
.end method

.method public isHardwareAccelerated()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isHighContrastText()Z
    .locals 2

    iget-wide v0, p0, Landroid/graphics/Canvas;->mNativeCanvasWrapper:J

    invoke-static {v0, v1}, Landroid/graphics/Canvas;->nIsHighContrastText(J)Z

    move-result v0

    return v0
.end method

.method public isOpaque()Z
    .locals 2

    iget-wide v0, p0, Landroid/graphics/Canvas;->mNativeCanvasWrapper:J

    invoke-static {v0, v1}, Landroid/graphics/Canvas;->nIsOpaque(J)Z

    move-result v0

    return v0
.end method

.method public isRecordingFor(Ljava/lang/Object;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public quickReject(FFFFLandroid/graphics/Canvas$EdgeType;)Z
    .locals 6

    iget-wide v0, p0, Landroid/graphics/Canvas;->mNativeCanvasWrapper:J

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-static/range {v0 .. v5}, Landroid/graphics/Canvas;->nQuickReject(JFFFF)Z

    move-result v0

    return v0
.end method

.method public quickReject(Landroid/graphics/Path;Landroid/graphics/Canvas$EdgeType;)Z
    .locals 4

    iget-wide v0, p0, Landroid/graphics/Canvas;->mNativeCanvasWrapper:J

    invoke-virtual {p1}, Landroid/graphics/Path;->readOnlyNI()J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Landroid/graphics/Canvas;->nQuickReject(JJ)Z

    move-result v0

    return v0
.end method

.method public quickReject(Landroid/graphics/RectF;Landroid/graphics/Canvas$EdgeType;)Z
    .locals 6

    iget-wide v0, p0, Landroid/graphics/Canvas;->mNativeCanvasWrapper:J

    iget v2, p1, Landroid/graphics/RectF;->left:F

    iget v3, p1, Landroid/graphics/RectF;->top:F

    iget v4, p1, Landroid/graphics/RectF;->right:F

    iget v5, p1, Landroid/graphics/RectF;->bottom:F

    invoke-static/range {v0 .. v5}, Landroid/graphics/Canvas;->nQuickReject(JFFFF)Z

    move-result v0

    return v0
.end method

.method public release()V
    .locals 3

    const/4 v2, 0x0

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/graphics/Canvas;->mNativeCanvasWrapper:J

    iget-object v0, p0, Landroid/graphics/Canvas;->mFinalizer:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/graphics/Canvas;->mFinalizer:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    iput-object v2, p0, Landroid/graphics/Canvas;->mFinalizer:Ljava/lang/Runnable;

    :cond_0
    return-void
.end method

.method public restore()V
    .locals 2

    iget-wide v0, p0, Landroid/graphics/Canvas;->mNativeCanvasWrapper:J

    invoke-static {v0, v1}, Landroid/graphics/Canvas;->nRestore(J)Z

    move-result v0

    if-nez v0, :cond_1

    sget-boolean v0, Landroid/graphics/Canvas;->sCompatibilityRestore:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/graphics/Canvas;->isHardwareAccelerated()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Underflow in restore - more restores than saves"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    return-void
.end method

.method public restoreToCount(I)V
    .locals 2

    const/4 v0, 0x1

    if-ge p1, v0, :cond_2

    sget-boolean v0, Landroid/graphics/Canvas;->sCompatibilityRestore:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/graphics/Canvas;->isHardwareAccelerated()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Underflow in restoreToCount - more restores than saves"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    const/4 p1, 0x1

    :cond_2
    iget-wide v0, p0, Landroid/graphics/Canvas;->mNativeCanvasWrapper:J

    invoke-static {v0, v1, p1}, Landroid/graphics/Canvas;->nRestoreToCount(JI)V

    return-void
.end method

.method public rotate(F)V
    .locals 2

    const/4 v0, 0x0

    cmpl-float v0, p1, v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-wide v0, p0, Landroid/graphics/Canvas;->mNativeCanvasWrapper:J

    invoke-static {v0, v1, p1}, Landroid/graphics/Canvas;->nRotate(JF)V

    return-void
.end method

.method public final rotate(FFF)V
    .locals 2

    const/4 v0, 0x0

    cmpl-float v0, p1, v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, p2, p3}, Landroid/graphics/Canvas;->translate(FF)V

    invoke-virtual {p0, p1}, Landroid/graphics/Canvas;->rotate(F)V

    neg-float v0, p2

    neg-float v1, p3

    invoke-virtual {p0, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    return-void
.end method

.method public save()I
    .locals 3

    iget-wide v0, p0, Landroid/graphics/Canvas;->mNativeCanvasWrapper:J

    const/4 v2, 0x3

    invoke-static {v0, v1, v2}, Landroid/graphics/Canvas;->nSave(JI)I

    move-result v0

    return v0
.end method

.method public save(I)I
    .locals 2

    iget-wide v0, p0, Landroid/graphics/Canvas;->mNativeCanvasWrapper:J

    invoke-static {v0, v1, p1}, Landroid/graphics/Canvas;->nSave(JI)I

    move-result v0

    return v0
.end method

.method public saveLayer(FFFFLandroid/graphics/Paint;)I
    .locals 7

    const/16 v6, 0x1f

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v6}, Landroid/graphics/Canvas;->saveLayer(FFFFLandroid/graphics/Paint;I)I

    move-result v0

    return v0
.end method

.method public saveLayer(FFFFLandroid/graphics/Paint;I)I
    .locals 9

    iget-wide v0, p0, Landroid/graphics/Canvas;->mNativeCanvasWrapper:J

    if-eqz p5, :cond_0

    invoke-virtual {p5}, Landroid/graphics/Paint;->getNativeInstance()J

    move-result-wide v6

    :goto_0
    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v8, p6

    invoke-static/range {v0 .. v8}, Landroid/graphics/Canvas;->nSaveLayer(JFFFFJI)I

    move-result v0

    return v0

    :cond_0
    const-wide/16 v6, 0x0

    goto :goto_0
.end method

.method public saveLayer(Landroid/graphics/RectF;Landroid/graphics/Paint;)I
    .locals 1

    const/16 v0, 0x1f

    invoke-virtual {p0, p1, p2, v0}, Landroid/graphics/Canvas;->saveLayer(Landroid/graphics/RectF;Landroid/graphics/Paint;I)I

    move-result v0

    return v0
.end method

.method public saveLayer(Landroid/graphics/RectF;Landroid/graphics/Paint;I)I
    .locals 7

    if-nez p1, :cond_0

    new-instance p1, Landroid/graphics/RectF;

    invoke-virtual {p0}, Landroid/graphics/Canvas;->getClipBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/graphics/RectF;-><init>(Landroid/graphics/Rect;)V

    :cond_0
    iget v1, p1, Landroid/graphics/RectF;->left:F

    iget v2, p1, Landroid/graphics/RectF;->top:F

    iget v3, p1, Landroid/graphics/RectF;->right:F

    iget v4, p1, Landroid/graphics/RectF;->bottom:F

    move-object v0, p0

    move-object v5, p2

    move v6, p3

    invoke-virtual/range {v0 .. v6}, Landroid/graphics/Canvas;->saveLayer(FFFFLandroid/graphics/Paint;I)I

    move-result v0

    return v0
.end method

.method public saveLayerAlpha(FFFFI)I
    .locals 7

    const/16 v6, 0x1f

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v6}, Landroid/graphics/Canvas;->saveLayerAlpha(FFFFII)I

    move-result v0

    return v0
.end method

.method public saveLayerAlpha(FFFFII)I
    .locals 8

    const/4 v0, 0x0

    invoke-static {v0, p5}, Ljava/lang/Math;->max(II)I

    move-result v0

    const/16 v1, 0xff

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result p5

    iget-wide v0, p0, Landroid/graphics/Canvas;->mNativeCanvasWrapper:J

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    move v7, p6

    invoke-static/range {v0 .. v7}, Landroid/graphics/Canvas;->nSaveLayerAlpha(JFFFFII)I

    move-result v0

    return v0
.end method

.method public saveLayerAlpha(Landroid/graphics/RectF;I)I
    .locals 1

    const/16 v0, 0x1f

    invoke-virtual {p0, p1, p2, v0}, Landroid/graphics/Canvas;->saveLayerAlpha(Landroid/graphics/RectF;II)I

    move-result v0

    return v0
.end method

.method public saveLayerAlpha(Landroid/graphics/RectF;II)I
    .locals 7

    if-nez p1, :cond_0

    new-instance p1, Landroid/graphics/RectF;

    invoke-virtual {p0}, Landroid/graphics/Canvas;->getClipBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/graphics/RectF;-><init>(Landroid/graphics/Rect;)V

    :cond_0
    iget v1, p1, Landroid/graphics/RectF;->left:F

    iget v2, p1, Landroid/graphics/RectF;->top:F

    iget v3, p1, Landroid/graphics/RectF;->right:F

    iget v4, p1, Landroid/graphics/RectF;->bottom:F

    move-object v0, p0

    move v5, p2

    move v6, p3

    invoke-virtual/range {v0 .. v6}, Landroid/graphics/Canvas;->saveLayerAlpha(FFFFII)I

    move-result v0

    return v0
.end method

.method public scale(FF)V
    .locals 2

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v0, p1, v1

    if-nez v0, :cond_0

    cmpl-float v0, p2, v1

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-wide v0, p0, Landroid/graphics/Canvas;->mNativeCanvasWrapper:J

    invoke-static {v0, v1, p1, p2}, Landroid/graphics/Canvas;->nScale(JFF)V

    return-void
.end method

.method public final scale(FFFF)V
    .locals 2

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v0, p1, v1

    if-nez v0, :cond_0

    cmpl-float v0, p2, v1

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, p3, p4}, Landroid/graphics/Canvas;->translate(FF)V

    invoke-virtual {p0, p1, p2}, Landroid/graphics/Canvas;->scale(FF)V

    neg-float v0, p3

    neg-float v1, p4

    invoke-virtual {p0, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    return-void
.end method

.method public setBitmap(Landroid/graphics/Bitmap;)V
    .locals 5

    const/4 v4, 0x0

    invoke-virtual {p0}, Landroid/graphics/Canvas;->isHardwareAccelerated()Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/RuntimeException;

    const-string/jumbo v2, "Can\'t set a bitmap device on a HW accelerated canvas"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    const/4 v0, 0x0

    if-eqz p1, :cond_1

    sget-boolean v1, Landroid/graphics/Canvas;->sCompatibilitySetBitmap:Z

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Landroid/graphics/Canvas;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v0

    :cond_1
    if-nez p1, :cond_3

    iget-wide v2, p0, Landroid/graphics/Canvas;->mNativeCanvasWrapper:J

    invoke-static {v2, v3, v4}, Landroid/graphics/Canvas;->nSetBitmap(JLandroid/graphics/Bitmap;)V

    const/4 v1, 0x0

    iput v1, p0, Landroid/graphics/Canvas;->mDensity:I

    :goto_0
    if-eqz v0, :cond_2

    invoke-virtual {p0, v0}, Landroid/graphics/Canvas;->setMatrix(Landroid/graphics/Matrix;)V

    :cond_2
    iput-object p1, p0, Landroid/graphics/Canvas;->mBitmap:Landroid/graphics/Bitmap;

    return-void

    :cond_3
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->isMutable()Z

    move-result v1

    if-nez v1, :cond_4

    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1}, Ljava/lang/IllegalStateException;-><init>()V

    throw v1

    :cond_4
    invoke-virtual {p0, p1}, Landroid/graphics/Canvas;->throwIfCannotDraw(Landroid/graphics/Bitmap;)V

    iget-wide v2, p0, Landroid/graphics/Canvas;->mNativeCanvasWrapper:J

    invoke-static {v2, v3, p1}, Landroid/graphics/Canvas;->nSetBitmap(JLandroid/graphics/Bitmap;)V

    iget v1, p1, Landroid/graphics/Bitmap;->mDensity:I

    iput v1, p0, Landroid/graphics/Canvas;->mDensity:I

    goto :goto_0
.end method

.method public setDensity(I)V
    .locals 1

    iget-object v0, p0, Landroid/graphics/Canvas;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/graphics/Canvas;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0, p1}, Landroid/graphics/Bitmap;->setDensity(I)V

    :cond_0
    iput p1, p0, Landroid/graphics/Canvas;->mDensity:I

    return-void
.end method

.method public setDrawFilter(Landroid/graphics/DrawFilter;)V
    .locals 4

    const-wide/16 v0, 0x0

    if-eqz p1, :cond_0

    iget-wide v0, p1, Landroid/graphics/DrawFilter;->mNativeInt:J

    :cond_0
    iput-object p1, p0, Landroid/graphics/Canvas;->mDrawFilter:Landroid/graphics/DrawFilter;

    iget-wide v2, p0, Landroid/graphics/Canvas;->mNativeCanvasWrapper:J

    invoke-static {v2, v3, v0, v1}, Landroid/graphics/Canvas;->nSetDrawFilter(JJ)V

    return-void
.end method

.method public setHighContrastText(Z)V
    .locals 2

    iget-wide v0, p0, Landroid/graphics/Canvas;->mNativeCanvasWrapper:J

    invoke-static {v0, v1, p1}, Landroid/graphics/Canvas;->nSetHighContrastText(JZ)V

    return-void
.end method

.method public setMatrix(Landroid/graphics/Matrix;)V
    .locals 4

    iget-wide v2, p0, Landroid/graphics/Canvas;->mNativeCanvasWrapper:J

    if-nez p1, :cond_0

    const-wide/16 v0, 0x0

    :goto_0
    invoke-static {v2, v3, v0, v1}, Landroid/graphics/Canvas;->nSetMatrix(JJ)V

    return-void

    :cond_0
    iget-wide v0, p1, Landroid/graphics/Matrix;->native_instance:J

    goto :goto_0
.end method

.method public setScreenDensity(I)V
    .locals 0

    iput p1, p0, Landroid/graphics/Canvas;->mScreenDensity:I

    return-void
.end method

.method public skew(FF)V
    .locals 2

    const/4 v1, 0x0

    cmpl-float v0, p1, v1

    if-nez v0, :cond_0

    cmpl-float v0, p2, v1

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-wide v0, p0, Landroid/graphics/Canvas;->mNativeCanvasWrapper:J

    invoke-static {v0, v1, p1, p2}, Landroid/graphics/Canvas;->nSkew(JFF)V

    return-void
.end method

.method public translate(FF)V
    .locals 2

    const/4 v1, 0x0

    cmpl-float v0, p1, v1

    if-nez v0, :cond_0

    cmpl-float v0, p2, v1

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-wide v0, p0, Landroid/graphics/Canvas;->mNativeCanvasWrapper:J

    invoke-static {v0, v1, p1, p2}, Landroid/graphics/Canvas;->nTranslate(JFF)V

    return-void
.end method
