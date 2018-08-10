.class public final Landroid/view/DisplayListCanvas;
.super Landroid/view/RecordingCanvas;
.source "DisplayListCanvas.java"


# static fields
.field private static final MAX_BITMAP_SIZE:I = 0x6400000

.field private static final POOL_LIMIT:I = 0x19

.field private static final sPool:Landroid/util/Pools$SynchronizedPool;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Pools$SynchronizedPool",
            "<",
            "Landroid/view/DisplayListCanvas;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mHeight:I

.field mNode:Landroid/view/RenderNode;

.field private mWidth:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroid/util/Pools$SynchronizedPool;

    const/16 v1, 0x19

    invoke-direct {v0, v1}, Landroid/util/Pools$SynchronizedPool;-><init>(I)V

    sput-object v0, Landroid/view/DisplayListCanvas;->sPool:Landroid/util/Pools$SynchronizedPool;

    return-void
.end method

.method private constructor <init>(Landroid/view/RenderNode;II)V
    .locals 2

    iget-wide v0, p1, Landroid/view/RenderNode;->mNativeRenderNode:J

    invoke-static {v0, v1, p2, p3}, Landroid/view/DisplayListCanvas;->nCreateDisplayListCanvas(JII)J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Landroid/view/RecordingCanvas;-><init>(J)V

    const/4 v0, 0x0

    iput v0, p0, Landroid/view/DisplayListCanvas;->mDensity:I

    return-void
.end method

.method private static native nCallDrawGLFunction(JJLjava/lang/Runnable;)V
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method private static native nCreateDisplayListCanvas(JII)J
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native nDrawCircle(JJJJJ)V
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native nDrawLayer(JJ)V
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native nDrawRenderNode(JJ)V
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native nDrawRoundRect(JJJJJJJJ)V
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native nFinishRecording(J)J
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native nGetMaximumTextureHeight()I
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native nGetMaximumTextureWidth()I
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native nInsertReorderBarrier(JZ)V
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native nResetDisplayListCanvas(JJII)V
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method static obtain(Landroid/view/RenderNode;II)Landroid/view/DisplayListCanvas;
    .locals 7

    if-nez p0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "node cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    sget-object v0, Landroid/view/DisplayListCanvas;->sPool:Landroid/util/Pools$SynchronizedPool;

    invoke-virtual {v0}, Landroid/util/Pools$SynchronizedPool;->acquire()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/DisplayListCanvas;

    if-nez v6, :cond_1

    new-instance v6, Landroid/view/DisplayListCanvas;

    invoke-direct {v6, p0, p1, p2}, Landroid/view/DisplayListCanvas;-><init>(Landroid/view/RenderNode;II)V

    :goto_0
    iput-object p0, v6, Landroid/view/DisplayListCanvas;->mNode:Landroid/view/RenderNode;

    iput p1, v6, Landroid/view/DisplayListCanvas;->mWidth:I

    iput p2, v6, Landroid/view/DisplayListCanvas;->mHeight:I

    return-object v6

    :cond_1
    iget-wide v0, v6, Landroid/view/DisplayListCanvas;->mNativeCanvasWrapper:J

    iget-wide v2, p0, Landroid/view/RenderNode;->mNativeRenderNode:J

    move v4, p1

    move v5, p2

    invoke-static/range {v0 .. v5}, Landroid/view/DisplayListCanvas;->nResetDisplayListCanvas(JJII)V

    goto :goto_0
.end method


# virtual methods
.method public callDrawGLFunction2(J)V
    .locals 3

    iget-wide v0, p0, Landroid/view/DisplayListCanvas;->mNativeCanvasWrapper:J

    const/4 v2, 0x0

    invoke-static {v0, v1, p1, p2, v2}, Landroid/view/DisplayListCanvas;->nCallDrawGLFunction(JJLjava/lang/Runnable;)V

    return-void
.end method

.method public drawCircle(Landroid/graphics/CanvasProperty;Landroid/graphics/CanvasProperty;Landroid/graphics/CanvasProperty;Landroid/graphics/CanvasProperty;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/CanvasProperty",
            "<",
            "Ljava/lang/Float;",
            ">;",
            "Landroid/graphics/CanvasProperty",
            "<",
            "Ljava/lang/Float;",
            ">;",
            "Landroid/graphics/CanvasProperty",
            "<",
            "Ljava/lang/Float;",
            ">;",
            "Landroid/graphics/CanvasProperty",
            "<",
            "Landroid/graphics/Paint;",
            ">;)V"
        }
    .end annotation

    iget-wide v0, p0, Landroid/view/DisplayListCanvas;->mNativeCanvasWrapper:J

    invoke-virtual {p1}, Landroid/graphics/CanvasProperty;->getNativeContainer()J

    move-result-wide v2

    invoke-virtual {p2}, Landroid/graphics/CanvasProperty;->getNativeContainer()J

    move-result-wide v4

    invoke-virtual {p3}, Landroid/graphics/CanvasProperty;->getNativeContainer()J

    move-result-wide v6

    invoke-virtual {p4}, Landroid/graphics/CanvasProperty;->getNativeContainer()J

    move-result-wide v8

    invoke-static/range {v0 .. v9}, Landroid/view/DisplayListCanvas;->nDrawCircle(JJJJJ)V

    return-void
.end method

.method public drawGLFunctor2(JLjava/lang/Runnable;)V
    .locals 3

    iget-wide v0, p0, Landroid/view/DisplayListCanvas;->mNativeCanvasWrapper:J

    invoke-static {v0, v1, p1, p2, p3}, Landroid/view/DisplayListCanvas;->nCallDrawGLFunction(JJLjava/lang/Runnable;)V

    return-void
.end method

.method drawHardwareLayer(Landroid/view/HardwareLayer;)V
    .locals 4

    iget-wide v0, p0, Landroid/view/DisplayListCanvas;->mNativeCanvasWrapper:J

    invoke-virtual {p1}, Landroid/view/HardwareLayer;->getLayerHandle()J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Landroid/view/DisplayListCanvas;->nDrawLayer(JJ)V

    return-void
.end method

.method public drawRenderNode(Landroid/view/RenderNode;)V
    .locals 4

    iget-wide v0, p0, Landroid/view/DisplayListCanvas;->mNativeCanvasWrapper:J

    invoke-virtual {p1}, Landroid/view/RenderNode;->getNativeDisplayList()J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Landroid/view/DisplayListCanvas;->nDrawRenderNode(JJ)V

    return-void
.end method

.method public drawRoundRect(Landroid/graphics/CanvasProperty;Landroid/graphics/CanvasProperty;Landroid/graphics/CanvasProperty;Landroid/graphics/CanvasProperty;Landroid/graphics/CanvasProperty;Landroid/graphics/CanvasProperty;Landroid/graphics/CanvasProperty;)V
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/CanvasProperty",
            "<",
            "Ljava/lang/Float;",
            ">;",
            "Landroid/graphics/CanvasProperty",
            "<",
            "Ljava/lang/Float;",
            ">;",
            "Landroid/graphics/CanvasProperty",
            "<",
            "Ljava/lang/Float;",
            ">;",
            "Landroid/graphics/CanvasProperty",
            "<",
            "Ljava/lang/Float;",
            ">;",
            "Landroid/graphics/CanvasProperty",
            "<",
            "Ljava/lang/Float;",
            ">;",
            "Landroid/graphics/CanvasProperty",
            "<",
            "Ljava/lang/Float;",
            ">;",
            "Landroid/graphics/CanvasProperty",
            "<",
            "Landroid/graphics/Paint;",
            ">;)V"
        }
    .end annotation

    move-object/from16 v0, p0

    iget-wide v2, v0, Landroid/view/DisplayListCanvas;->mNativeCanvasWrapper:J

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/CanvasProperty;->getNativeContainer()J

    move-result-wide v4

    invoke-virtual/range {p2 .. p2}, Landroid/graphics/CanvasProperty;->getNativeContainer()J

    move-result-wide v6

    invoke-virtual/range {p3 .. p3}, Landroid/graphics/CanvasProperty;->getNativeContainer()J

    move-result-wide v8

    invoke-virtual/range {p4 .. p4}, Landroid/graphics/CanvasProperty;->getNativeContainer()J

    move-result-wide v10

    invoke-virtual/range {p5 .. p5}, Landroid/graphics/CanvasProperty;->getNativeContainer()J

    move-result-wide v12

    invoke-virtual/range {p6 .. p6}, Landroid/graphics/CanvasProperty;->getNativeContainer()J

    move-result-wide v14

    invoke-virtual/range {p7 .. p7}, Landroid/graphics/CanvasProperty;->getNativeContainer()J

    move-result-wide v16

    invoke-static/range {v2 .. v17}, Landroid/view/DisplayListCanvas;->nDrawRoundRect(JJJJJJJJ)V

    return-void
.end method

.method finishRecording()J
    .locals 2

    iget-wide v0, p0, Landroid/view/DisplayListCanvas;->mNativeCanvasWrapper:J

    invoke-static {v0, v1}, Landroid/view/DisplayListCanvas;->nFinishRecording(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public getHeight()I
    .locals 1

    iget v0, p0, Landroid/view/DisplayListCanvas;->mHeight:I

    return v0
.end method

.method public getMaximumBitmapHeight()I
    .locals 1

    invoke-static {}, Landroid/view/DisplayListCanvas;->nGetMaximumTextureHeight()I

    move-result v0

    return v0
.end method

.method public getMaximumBitmapWidth()I
    .locals 1

    invoke-static {}, Landroid/view/DisplayListCanvas;->nGetMaximumTextureWidth()I

    move-result v0

    return v0
.end method

.method public getWidth()I
    .locals 1

    iget v0, p0, Landroid/view/DisplayListCanvas;->mWidth:I

    return v0
.end method

.method public insertInorderBarrier()V
    .locals 3

    iget-wide v0, p0, Landroid/view/DisplayListCanvas;->mNativeCanvasWrapper:J

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/view/DisplayListCanvas;->nInsertReorderBarrier(JZ)V

    return-void
.end method

.method public insertReorderBarrier()V
    .locals 3

    iget-wide v0, p0, Landroid/view/DisplayListCanvas;->mNativeCanvasWrapper:J

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/view/DisplayListCanvas;->nInsertReorderBarrier(JZ)V

    return-void
.end method

.method public isHardwareAccelerated()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public isOpaque()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isRecordingFor(Ljava/lang/Object;)Z
    .locals 1

    iget-object v0, p0, Landroid/view/DisplayListCanvas;->mNode:Landroid/view/RenderNode;

    if-ne p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method recycle()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/view/DisplayListCanvas;->mNode:Landroid/view/RenderNode;

    sget-object v0, Landroid/view/DisplayListCanvas;->sPool:Landroid/util/Pools$SynchronizedPool;

    invoke-virtual {v0, p0}, Landroid/util/Pools$SynchronizedPool;->release(Ljava/lang/Object;)Z

    return-void
.end method

.method public setBitmap(Landroid/graphics/Bitmap;)V
    .locals 1

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public setDensity(I)V
    .locals 0

    return-void
.end method

.method protected throwIfCannotDraw(Landroid/graphics/Bitmap;)V
    .locals 4

    invoke-super {p0, p1}, Landroid/view/RecordingCanvas;->throwIfCannotDraw(Landroid/graphics/Bitmap;)V

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getByteCount()I

    move-result v0

    const/high16 v1, 0x6400000

    if-le v0, v1, :cond_0

    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Canvas: trying to draw too large("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "bytes) bitmap."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    return-void
.end method
