.class public Lcom/android/server/wm/MultiWindowStackColorLayer;
.super Ljava/lang/Object;
.source "MultiWindowStackColorLayer.java"

# interfaces
.implements Lcom/android/server/wm/IMultiWindowStackColorLayer;


# static fields
.field private static DEBUG_STACK_COLOR_LAYER:Z = false

.field private static final FOCUSED_TINT_COLOR:I = -0x272728

.field private static SAFE_DEBUG:Z

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mAlpha:F

.field private mAnimatingForMinimizedDockedStack:Z

.field private final mBounds:Landroid/graphics/Rect;

.field private mColor:I

.field private mColorFilter:Landroid/graphics/PorterDuffColorFilter;

.field private mDestroyed:Z

.field private mDisplayId:I

.field private mDuration:J

.field private mEffectType:I

.field private mHasColorChanged:Z

.field private mHasColorDrawn:Z

.field private mHasSurfaceSizeChanged:Z

.field private final mLastBounds:Landroid/graphics/Rect;

.field private mLastLayer:I

.field private final mLastSurfaceBounds:Landroid/graphics/Rect;

.field private mLayer:I

.field private mName:Ljava/lang/String;

.field private mPaint:Landroid/graphics/Paint;

.field private mService:Lcom/android/server/wm/WindowManagerService;

.field private mShowing:Z

.field private mStack:Lcom/android/server/wm/TaskStack;

.field private mStartAlpha:F

.field private mStartTime:J

.field private mSurface:Landroid/view/Surface;

.field private final mSurfaceBounds:Landroid/graphics/Rect;

.field private mSurfaceControl:Landroid/view/SurfaceControl;

.field private mTargetAlpha:F

.field private final mTmpBounds:Landroid/graphics/Rect;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/server/wm/MultiWindowStackColorLayer;->DEBUG_STACK_COLOR_LAYER:Z

    invoke-static {}, Landroid/os/Debug;->semIsProductDev()Z

    move-result v0

    sput-boolean v0, Lcom/android/server/wm/MultiWindowStackColorLayer;->SAFE_DEBUG:Z

    const-string/jumbo v0, "WindowManager"

    sput-object v0, Lcom/android/server/wm/MultiWindowStackColorLayer;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 5

    const/4 v4, 0x0

    const/4 v3, 0x0

    const/4 v2, -0x1

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v4, p0, Lcom/android/server/wm/MultiWindowStackColorLayer;->mService:Lcom/android/server/wm/WindowManagerService;

    new-instance v0, Landroid/view/Surface;

    invoke-direct {v0}, Landroid/view/Surface;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/MultiWindowStackColorLayer;->mSurface:Landroid/view/Surface;

    iput v3, p0, Lcom/android/server/wm/MultiWindowStackColorLayer;->mAlpha:F

    iput v2, p0, Lcom/android/server/wm/MultiWindowStackColorLayer;->mLayer:I

    iput v2, p0, Lcom/android/server/wm/MultiWindowStackColorLayer;->mLastLayer:I

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/MultiWindowStackColorLayer;->mSurfaceBounds:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/MultiWindowStackColorLayer;->mLastSurfaceBounds:Landroid/graphics/Rect;

    iput-boolean v1, p0, Lcom/android/server/wm/MultiWindowStackColorLayer;->mShowing:Z

    iput-boolean v1, p0, Lcom/android/server/wm/MultiWindowStackColorLayer;->mAnimatingForMinimizedDockedStack:Z

    iput v3, p0, Lcom/android/server/wm/MultiWindowStackColorLayer;->mStartAlpha:F

    iput v3, p0, Lcom/android/server/wm/MultiWindowStackColorLayer;->mTargetAlpha:F

    iput-boolean v1, p0, Lcom/android/server/wm/MultiWindowStackColorLayer;->mDestroyed:Z

    iput v2, p0, Lcom/android/server/wm/MultiWindowStackColorLayer;->mDisplayId:I

    iput v2, p0, Lcom/android/server/wm/MultiWindowStackColorLayer;->mColor:I

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/MultiWindowStackColorLayer;->mTmpBounds:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/MultiWindowStackColorLayer;->mBounds:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/MultiWindowStackColorLayer;->mLastBounds:Landroid/graphics/Rect;

    iput v1, p0, Lcom/android/server/wm/MultiWindowStackColorLayer;->mEffectType:I

    iput-object v4, p0, Lcom/android/server/wm/MultiWindowStackColorLayer;->mStack:Lcom/android/server/wm/TaskStack;

    iput-boolean v1, p0, Lcom/android/server/wm/MultiWindowStackColorLayer;->mHasSurfaceSizeChanged:Z

    iput-boolean v1, p0, Lcom/android/server/wm/MultiWindowStackColorLayer;->mHasColorChanged:Z

    iput-boolean v1, p0, Lcom/android/server/wm/MultiWindowStackColorLayer;->mHasColorDrawn:Z

    iput-object v4, p0, Lcom/android/server/wm/MultiWindowStackColorLayer;->mName:Ljava/lang/String;

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/MultiWindowStackColorLayer;->mPaint:Landroid/graphics/Paint;

    return-void
.end method

.method private adjustAlpha(F)V
    .locals 5

    const/4 v4, 0x0

    sget-boolean v1, Lcom/android/server/wm/MultiWindowStackColorLayer;->DEBUG_STACK_COLOR_LAYER:Z

    if-eqz v1, :cond_0

    sget-object v1, Lcom/android/server/wm/MultiWindowStackColorLayer;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setAlpha alpha="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/android/server/wm/MultiWindowStackColorLayer;->mSurfaceControl:Landroid/view/SurfaceControl;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/server/wm/MultiWindowStackColorLayer;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {v1, p1}, Landroid/view/SurfaceControl;->setAlpha(F)V

    sget-boolean v1, Lcom/android/server/wm/MultiWindowStackColorLayer;->SAFE_DEBUG:Z

    if-eqz v1, :cond_1

    sget-object v1, Lcom/android/server/wm/MultiWindowStackColorLayer;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "adjustAlpha: alpha = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    cmpl-float v1, p1, v4

    if-nez v1, :cond_5

    iget-boolean v1, p0, Lcom/android/server/wm/MultiWindowStackColorLayer;->mShowing:Z

    if-eqz v1, :cond_5

    sget-boolean v1, Lcom/android/server/wm/MultiWindowStackColorLayer;->DEBUG_STACK_COLOR_LAYER:Z

    if-eqz v1, :cond_2

    sget-object v1, Lcom/android/server/wm/MultiWindowStackColorLayer;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "setAlpha hiding"

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    iget-object v1, p0, Lcom/android/server/wm/MultiWindowStackColorLayer;->mSurfaceControl:Landroid/view/SurfaceControl;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/android/server/wm/MultiWindowStackColorLayer;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {v1}, Landroid/view/SurfaceControl;->hide()V

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/wm/MultiWindowStackColorLayer;->mShowing:Z

    sget-boolean v1, Lcom/android/server/wm/MultiWindowStackColorLayer;->DEBUG_STACK_COLOR_LAYER:Z

    if-nez v1, :cond_3

    sget-boolean v1, Lcom/android/server/wm/MultiWindowStackColorLayer;->SAFE_DEBUG:Z

    if-eqz v1, :cond_4

    :cond_3
    sget-object v1, Lcom/android/server/wm/MultiWindowStackColorLayer;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "adjustAlpha: mShowing = false"

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    :goto_0
    return-void

    :cond_5
    cmpl-float v1, p1, v4

    if-lez v1, :cond_4

    iget-boolean v1, p0, Lcom/android/server/wm/MultiWindowStackColorLayer;->mShowing:Z

    if-nez v1, :cond_4

    sget-boolean v1, Lcom/android/server/wm/MultiWindowStackColorLayer;->DEBUG_STACK_COLOR_LAYER:Z

    if-eqz v1, :cond_6

    sget-object v1, Lcom/android/server/wm/MultiWindowStackColorLayer;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "setAlpha showing"

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    iget-object v1, p0, Lcom/android/server/wm/MultiWindowStackColorLayer;->mSurfaceControl:Landroid/view/SurfaceControl;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/android/server/wm/MultiWindowStackColorLayer;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {v1}, Landroid/view/SurfaceControl;->show()V

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/wm/MultiWindowStackColorLayer;->mShowing:Z

    sget-boolean v1, Lcom/android/server/wm/MultiWindowStackColorLayer;->DEBUG_STACK_COLOR_LAYER:Z

    if-nez v1, :cond_7

    sget-boolean v1, Lcom/android/server/wm/MultiWindowStackColorLayer;->SAFE_DEBUG:Z

    if-eqz v1, :cond_4

    :cond_7
    sget-object v1, Lcom/android/server/wm/MultiWindowStackColorLayer;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "adjustAlpha: mShowing, alpha = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-object v1, Lcom/android/server/wm/MultiWindowStackColorLayer;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "Failure setting alpha immediately"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private alignSurfaceToBounds()V
    .locals 11

    const/high16 v10, 0x3f800000    # 1.0f

    const-wide/high16 v8, 0x3ff8000000000000L    # 1.5

    const/4 v3, 0x0

    iget-object v6, p0, Lcom/android/server/wm/MultiWindowStackColorLayer;->mService:Lcom/android/server/wm/WindowManagerService;

    iget v7, p0, Lcom/android/server/wm/MultiWindowStackColorLayer;->mDisplayId:I

    invoke-virtual {v6, v7}, Lcom/android/server/wm/WindowManagerService;->getEasyOneHandScaleSpecLocked(I)Landroid/view/MagnificationSpec;

    move-result-object v3

    iget-object v6, p0, Lcom/android/server/wm/MultiWindowStackColorLayer;->mStack:Lcom/android/server/wm/TaskStack;

    invoke-virtual {v6}, Lcom/android/server/wm/TaskStack;->isFullscreen()Z

    move-result v6

    if-eqz v6, :cond_0

    if-eqz v3, :cond_4

    iget v6, v3, Landroid/view/MagnificationSpec;->scale:F

    cmpg-float v6, v6, v10

    if-gez v6, :cond_4

    :cond_0
    iget-object v6, p0, Lcom/android/server/wm/MultiWindowStackColorLayer;->mSurfaceBounds:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->left:I

    int-to-float v4, v6

    iget-object v6, p0, Lcom/android/server/wm/MultiWindowStackColorLayer;->mSurfaceBounds:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->top:I

    int-to-float v5, v6

    if-eqz v3, :cond_1

    iget v6, v3, Landroid/view/MagnificationSpec;->scale:F

    cmpg-float v6, v6, v10

    if-gez v6, :cond_1

    iget v6, v3, Landroid/view/MagnificationSpec;->offsetX:F

    iget v7, v3, Landroid/view/MagnificationSpec;->scale:F

    mul-float/2addr v7, v4

    add-float v4, v6, v7

    iget v6, v3, Landroid/view/MagnificationSpec;->offsetY:F

    iget v7, v3, Landroid/view/MagnificationSpec;->scale:F

    mul-float/2addr v7, v5

    add-float v5, v6, v7

    :cond_1
    :goto_0
    iget-object v6, p0, Lcom/android/server/wm/MultiWindowStackColorLayer;->mSurfaceControl:Landroid/view/SurfaceControl;

    if-eqz v6, :cond_3

    iget-object v6, p0, Lcom/android/server/wm/MultiWindowStackColorLayer;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {v6, v4, v5}, Landroid/view/SurfaceControl;->setPosition(FF)V

    sget-boolean v6, Lcom/android/server/wm/MultiWindowStackColorLayer;->DEBUG_STACK_COLOR_LAYER:Z

    if-eqz v6, :cond_2

    sget-object v6, Lcom/android/server/wm/MultiWindowStackColorLayer;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "alignSurfaceToBounds: mSurfaceControl xPos = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, ", yPos = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    iget-object v6, p0, Lcom/android/server/wm/MultiWindowStackColorLayer;->mLastSurfaceBounds:Landroid/graphics/Rect;

    iget-object v7, p0, Lcom/android/server/wm/MultiWindowStackColorLayer;->mSurfaceBounds:Landroid/graphics/Rect;

    invoke-virtual {v6, v7}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    :cond_3
    return-void

    :cond_4
    iget-object v6, p0, Lcom/android/server/wm/MultiWindowStackColorLayer;->mStack:Lcom/android/server/wm/TaskStack;

    invoke-virtual {v6}, Lcom/android/server/wm/TaskStack;->getDisplayInfo()Landroid/view/DisplayInfo;

    move-result-object v2

    iget v6, v2, Landroid/view/DisplayInfo;->logicalWidth:I

    int-to-double v6, v6

    mul-double/2addr v6, v8

    double-to-int v1, v6

    iget v6, v2, Landroid/view/DisplayInfo;->logicalHeight:I

    int-to-double v6, v6

    mul-double/2addr v6, v8

    double-to-int v0, v6

    mul-int/lit8 v6, v1, -0x1

    div-int/lit8 v6, v6, 0x6

    int-to-float v4, v6

    mul-int/lit8 v6, v0, -0x1

    div-int/lit8 v6, v6, 0x6

    int-to-float v5, v6

    goto :goto_0
.end method

.method private constructSurface(Lcom/android/server/wm/WindowManagerService;)V
    .locals 8

    invoke-static {}, Landroid/view/SurfaceControl;->openTransaction()V

    :try_start_0
    sget-boolean v0, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_SURFACE_TRACE:Z

    if-eqz v0, :cond_2

    new-instance v0, Lcom/android/server/wm/WindowSurfaceController$SurfaceTrace;

    iget-object v1, p1, Lcom/android/server/wm/WindowManagerService;->mFxSession:Landroid/view/SurfaceSession;

    const-string/jumbo v2, "StackColorSurface"

    iget v3, p0, Lcom/android/server/wm/MultiWindowStackColorLayer;->mEffectType:I

    or-int/lit8 v6, v3, 0x4

    const/16 v3, 0x10

    const/16 v4, 0x10

    const/4 v5, -0x3

    invoke-direct/range {v0 .. v6}, Lcom/android/server/wm/WindowSurfaceController$SurfaceTrace;-><init>(Landroid/view/SurfaceSession;Ljava/lang/String;IIII)V

    iput-object v0, p0, Lcom/android/server/wm/MultiWindowStackColorLayer;->mSurfaceControl:Landroid/view/SurfaceControl;

    :goto_0
    sget-boolean v0, Lcom/android/server/wm/WindowManagerDebugConfig;->SHOW_TRANSACTIONS:Z

    if-nez v0, :cond_0

    sget-boolean v0, Lcom/android/server/wm/WindowManagerDebugConfig;->SHOW_SURFACE_ALLOC:Z

    if-eqz v0, :cond_1

    :cond_0
    sget-object v0, Lcom/android/server/wm/MultiWindowStackColorLayer;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "  MULTIWINDOW_STACKCOLORLAYER "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/wm/MultiWindowStackColorLayer;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ": CREATE"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    iget-object v0, p0, Lcom/android/server/wm/MultiWindowStackColorLayer;->mSurfaceControl:Landroid/view/SurfaceControl;

    iget v1, p0, Lcom/android/server/wm/MultiWindowStackColorLayer;->mDisplayId:I

    invoke-virtual {v0, v1}, Landroid/view/SurfaceControl;->setLayerStack(I)V

    invoke-direct {p0}, Lcom/android/server/wm/MultiWindowStackColorLayer;->alignSurfaceToBounds()V

    iget v0, p0, Lcom/android/server/wm/MultiWindowStackColorLayer;->mAlpha:F

    invoke-direct {p0, v0}, Lcom/android/server/wm/MultiWindowStackColorLayer;->adjustAlpha(F)V

    invoke-virtual {p0}, Lcom/android/server/wm/MultiWindowStackColorLayer;->adjustLayer()V

    iget-object v0, p0, Lcom/android/server/wm/MultiWindowStackColorLayer;->mSurface:Landroid/view/Surface;

    iget-object v1, p0, Lcom/android/server/wm/MultiWindowStackColorLayer;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {v0, v1}, Landroid/view/Surface;->copyFrom(Landroid/view/SurfaceControl;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Landroid/view/SurfaceControl;->closeTransaction()V

    :goto_1
    return-void

    :cond_2
    :try_start_1
    new-instance v0, Landroid/view/SurfaceControl;

    iget-object v1, p1, Lcom/android/server/wm/WindowManagerService;->mFxSession:Landroid/view/SurfaceSession;

    iget-object v2, p0, Lcom/android/server/wm/MultiWindowStackColorLayer;->mName:Ljava/lang/String;

    iget v3, p0, Lcom/android/server/wm/MultiWindowStackColorLayer;->mEffectType:I

    or-int/lit8 v6, v3, 0x4

    const/16 v3, 0x10

    const/16 v4, 0x10

    const/4 v5, -0x3

    invoke-direct/range {v0 .. v6}, Landroid/view/SurfaceControl;-><init>(Landroid/view/SurfaceSession;Ljava/lang/String;IIII)V

    iput-object v0, p0, Lcom/android/server/wm/MultiWindowStackColorLayer;->mSurfaceControl:Landroid/view/SurfaceControl;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v7

    :try_start_2
    const-string/jumbo v0, "WindowManager"

    const-string/jumbo v1, "Exception creating MultiWindowStackColorLayer surface"

    invoke-static {v0, v1, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-static {}, Landroid/view/SurfaceControl;->closeTransaction()V

    goto :goto_1

    :catchall_0
    move-exception v0

    invoke-static {}, Landroid/view/SurfaceControl;->closeTransaction()V

    throw v0
.end method

.method private drawColor(I)V
    .locals 8

    const/4 v7, 0x0

    iget-boolean v5, p0, Lcom/android/server/wm/MultiWindowStackColorLayer;->mHasSurfaceSizeChanged:Z

    if-nez v5, :cond_0

    iget-boolean v5, p0, Lcom/android/server/wm/MultiWindowStackColorLayer;->mHasColorChanged:Z

    if-eqz v5, :cond_3

    :cond_0
    new-instance v4, Landroid/graphics/Rect;

    iget-object v5, p0, Lcom/android/server/wm/MultiWindowStackColorLayer;->mSurfaceBounds:Landroid/graphics/Rect;

    invoke-direct {v4, v5}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    const/4 v1, 0x0

    iget-object v5, p0, Lcom/android/server/wm/MultiWindowStackColorLayer;->mSurface:Landroid/view/Surface;

    if-eqz v5, :cond_1

    :try_start_0
    iget-object v5, p0, Lcom/android/server/wm/MultiWindowStackColorLayer;->mSurface:Landroid/view/Surface;

    invoke-virtual {v5, v4}, Landroid/view/Surface;->lockCanvas(Landroid/graphics/Rect;)Landroid/graphics/Canvas;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/view/Surface$OutOfResourcesException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    :cond_1
    :goto_0
    if-nez v1, :cond_4

    sget-boolean v5, Lcom/android/server/wm/MultiWindowStackColorLayer;->DEBUG_STACK_COLOR_LAYER:Z

    if-eqz v5, :cond_2

    sget-object v5, Lcom/android/server/wm/MultiWindowStackColorLayer;->TAG:Ljava/lang/String;

    const-string/jumbo v6, "drawColor: c == null"

    invoke-static {v5, v6}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    return-void

    :cond_3
    return-void

    :cond_4
    iget-object v5, p0, Lcom/android/server/wm/MultiWindowStackColorLayer;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v5, p1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v5, p0, Lcom/android/server/wm/MultiWindowStackColorLayer;->mPaint:Landroid/graphics/Paint;

    const/high16 v6, 0x437f0000    # 255.0f

    invoke-static {v6}, Ljava/lang/Math;->round(F)I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setAlpha(I)V

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, v4}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    sget-object v5, Landroid/graphics/Region$Op;->REPLACE:Landroid/graphics/Region$Op;

    invoke-virtual {v1, v0, v5}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/Rect;Landroid/graphics/Region$Op;)Z

    sget-object v5, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v1, v7, v5}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    iget-object v5, p0, Lcom/android/server/wm/MultiWindowStackColorLayer;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v5}, Landroid/graphics/Canvas;->drawPaint(Landroid/graphics/Paint;)V

    iput-boolean v7, p0, Lcom/android/server/wm/MultiWindowStackColorLayer;->mHasSurfaceSizeChanged:Z

    iput-boolean v7, p0, Lcom/android/server/wm/MultiWindowStackColorLayer;->mHasColorChanged:Z

    const/4 v5, 0x1

    iput-boolean v5, p0, Lcom/android/server/wm/MultiWindowStackColorLayer;->mHasColorDrawn:Z

    iget-object v5, p0, Lcom/android/server/wm/MultiWindowStackColorLayer;->mSurface:Landroid/view/Surface;

    invoke-virtual {v5, v1}, Landroid/view/Surface;->unlockCanvasAndPost(Landroid/graphics/Canvas;)V

    return-void

    :catch_0
    move-exception v3

    goto :goto_0

    :catch_1
    move-exception v2

    goto :goto_0
.end method

.method private durationEndsEarlier(J)Z
    .locals 7

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    add-long/2addr v0, p1

    iget-wide v2, p0, Lcom/android/server/wm/MultiWindowStackColorLayer;->mStartTime:J

    iget-wide v4, p0, Lcom/android/server/wm/MultiWindowStackColorLayer;->mDuration:J

    add-long/2addr v2, v4

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private setAlpha(F)V
    .locals 3

    iget v0, p0, Lcom/android/server/wm/MultiWindowStackColorLayer;->mAlpha:F

    cmpl-float v0, v0, p1

    if-nez v0, :cond_0

    return-void

    :cond_0
    iput p1, p0, Lcom/android/server/wm/MultiWindowStackColorLayer;->mAlpha:F

    iget-object v0, p0, Lcom/android/server/wm/MultiWindowStackColorLayer;->mSurfaceBounds:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/android/server/wm/MultiWindowStackColorLayer;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/server/wm/MultiWindowStackColorLayer;->mAnimatingForMinimizedDockedStack:Z

    if-eqz v0, :cond_2

    :cond_1
    :goto_0
    iget v0, p0, Lcom/android/server/wm/MultiWindowStackColorLayer;->mAlpha:F

    invoke-direct {p0, v0}, Lcom/android/server/wm/MultiWindowStackColorLayer;->adjustAlpha(F)V

    return-void

    :cond_2
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/wm/MultiWindowStackColorLayer;->mAlpha:F

    sget-boolean v0, Lcom/android/server/wm/MultiWindowStackColorLayer;->SAFE_DEBUG:Z

    if-eqz v0, :cond_1

    sget-object v0, Lcom/android/server/wm/MultiWindowStackColorLayer;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setAlpha: mAlpha == "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/wm/MultiWindowStackColorLayer;->mAlpha:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", mAnimatingForMinimizedDockedStack = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/server/wm/MultiWindowStackColorLayer;->mAnimatingForMinimizedDockedStack:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method public adjustLayer()V
    .locals 2

    iget v0, p0, Lcom/android/server/wm/MultiWindowStackColorLayer;->mLastLayer:I

    iget v1, p0, Lcom/android/server/wm/MultiWindowStackColorLayer;->mLayer:I

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/android/server/wm/MultiWindowStackColorLayer;->mSurfaceControl:Landroid/view/SurfaceControl;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/wm/MultiWindowStackColorLayer;->mSurfaceControl:Landroid/view/SurfaceControl;

    iget v1, p0, Lcom/android/server/wm/MultiWindowStackColorLayer;->mLayer:I

    invoke-virtual {v0, v1}, Landroid/view/SurfaceControl;->setLayer(I)V

    :cond_0
    iget v0, p0, Lcom/android/server/wm/MultiWindowStackColorLayer;->mLayer:I

    iput v0, p0, Lcom/android/server/wm/MultiWindowStackColorLayer;->mLastLayer:I

    :cond_1
    return-void
.end method

.method public destroySurface()V
    .locals 4

    const/4 v3, 0x0

    sget-boolean v0, Lcom/android/server/wm/MultiWindowStackColorLayer;->DEBUG_STACK_COLOR_LAYER:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/server/wm/MultiWindowStackColorLayer;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "destroySurface."

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    sget-boolean v0, Lcom/android/server/wm/MultiWindowStackColorLayer;->SAFE_DEBUG:Z

    if-eqz v0, :cond_1

    sget-object v0, Lcom/android/server/wm/MultiWindowStackColorLayer;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "destroySurface: DEBUG -> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0xa

    invoke-static {v2}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    iget-object v0, p0, Lcom/android/server/wm/MultiWindowStackColorLayer;->mSurfaceControl:Landroid/view/SurfaceControl;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/server/wm/MultiWindowStackColorLayer;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {v0}, Landroid/view/SurfaceControl;->destroy()V

    iput-object v3, p0, Lcom/android/server/wm/MultiWindowStackColorLayer;->mSurfaceControl:Landroid/view/SurfaceControl;

    :cond_2
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/wm/MultiWindowStackColorLayer;->mDestroyed:Z

    return-void
.end method

.method public getBounds()Landroid/graphics/Rect;
    .locals 1

    iget-object v0, p0, Lcom/android/server/wm/MultiWindowStackColorLayer;->mBounds:Landroid/graphics/Rect;

    return-object v0
.end method

.method public getColor()I
    .locals 1

    iget v0, p0, Lcom/android/server/wm/MultiWindowStackColorLayer;->mColor:I

    return v0
.end method

.method public getDockedSide()I
    .locals 1

    iget-object v0, p0, Lcom/android/server/wm/MultiWindowStackColorLayer;->mStack:Lcom/android/server/wm/TaskStack;

    invoke-virtual {v0}, Lcom/android/server/wm/TaskStack;->getDockSide()I

    move-result v0

    return v0
.end method

.method public getLayer()I
    .locals 1

    iget v0, p0, Lcom/android/server/wm/MultiWindowStackColorLayer;->mLayer:I

    return v0
.end method

.method public getSurfaceBounds()Landroid/graphics/Rect;
    .locals 1

    iget-object v0, p0, Lcom/android/server/wm/MultiWindowStackColorLayer;->mSurfaceBounds:Landroid/graphics/Rect;

    return-object v0
.end method

.method public getTargetAlpha()F
    .locals 1

    iget v0, p0, Lcom/android/server/wm/MultiWindowStackColorLayer;->mTargetAlpha:F

    return v0
.end method

.method public hasSurfacePosChanged()Z
    .locals 2

    iget-object v0, p0, Lcom/android/server/wm/MultiWindowStackColorLayer;->mBounds:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/android/server/wm/MultiWindowStackColorLayer;->mSurfaceBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public hide()V
    .locals 2

    iget-boolean v0, p0, Lcom/android/server/wm/MultiWindowStackColorLayer;->mShowing:Z

    if-eqz v0, :cond_1

    sget-boolean v0, Lcom/android/server/wm/MultiWindowStackColorLayer;->DEBUG_STACK_COLOR_LAYER:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/server/wm/MultiWindowStackColorLayer;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "hide: immediate"

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const-wide/16 v0, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/server/wm/MultiWindowStackColorLayer;->hide(J)V

    :cond_1
    return-void
.end method

.method public hide(J)V
    .locals 5

    const/4 v3, 0x0

    iget-boolean v0, p0, Lcom/android/server/wm/MultiWindowStackColorLayer;->mShowing:Z

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/android/server/wm/MultiWindowStackColorLayer;->mTargetAlpha:F

    cmpl-float v0, v0, v3

    if-nez v0, :cond_0

    invoke-direct {p0, p1, p2}, Lcom/android/server/wm/MultiWindowStackColorLayer;->durationEndsEarlier(J)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_0
    sget-boolean v0, Lcom/android/server/wm/MultiWindowStackColorLayer;->DEBUG_STACK_COLOR_LAYER:Z

    if-eqz v0, :cond_1

    sget-object v0, Lcom/android/server/wm/MultiWindowStackColorLayer;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "hide: duration="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    invoke-virtual {p0, v3, p1, p2}, Lcom/android/server/wm/MultiWindowStackColorLayer;->show(FJ)V

    :cond_2
    return-void
.end method

.method public initiate(Lcom/android/server/wm/WindowManagerService;Lcom/android/server/wm/TaskStack;IILjava/lang/String;)V
    .locals 0

    iput-object p2, p0, Lcom/android/server/wm/MultiWindowStackColorLayer;->mStack:Lcom/android/server/wm/TaskStack;

    iput p3, p0, Lcom/android/server/wm/MultiWindowStackColorLayer;->mDisplayId:I

    iput-object p1, p0, Lcom/android/server/wm/MultiWindowStackColorLayer;->mService:Lcom/android/server/wm/WindowManagerService;

    iput-object p5, p0, Lcom/android/server/wm/MultiWindowStackColorLayer;->mName:Ljava/lang/String;

    iput p4, p0, Lcom/android/server/wm/MultiWindowStackColorLayer;->mColor:I

    invoke-direct {p0, p1}, Lcom/android/server/wm/MultiWindowStackColorLayer;->constructSurface(Lcom/android/server/wm/WindowManagerService;)V

    return-void
.end method

.method public isAnimating()Z
    .locals 2

    iget v0, p0, Lcom/android/server/wm/MultiWindowStackColorLayer;->mTargetAlpha:F

    iget v1, p0, Lcom/android/server/wm/MultiWindowStackColorLayer;->mAlpha:F

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isBoundsOutOfScreen()Z
    .locals 2

    iget-object v0, p0, Lcom/android/server/wm/MultiWindowStackColorLayer;->mStack:Lcom/android/server/wm/TaskStack;

    invoke-virtual {v0}, Lcom/android/server/wm/TaskStack;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wm/MultiWindowStackColorLayer;->mTmpBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Lcom/android/server/wm/DisplayContent;->getLogicalDisplayRect(Landroid/graphics/Rect;)V

    invoke-virtual {p0}, Lcom/android/server/wm/MultiWindowStackColorLayer;->hasSurfacePosChanged()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/wm/MultiWindowStackColorLayer;->mTmpBounds:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/android/server/wm/MultiWindowStackColorLayer;->mSurfaceBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->contains(Landroid/graphics/Rect;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method public isMinimizing()Z
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    iget v2, p0, Lcom/android/server/wm/MultiWindowStackColorLayer;->mTargetAlpha:F

    const/high16 v3, 0x3f800000    # 1.0f

    cmpl-float v2, v3, v2

    if-lez v2, :cond_0

    iget v2, p0, Lcom/android/server/wm/MultiWindowStackColorLayer;->mTargetAlpha:F

    const/4 v3, 0x0

    cmpl-float v2, v2, v3

    if-lez v2, :cond_0

    invoke-virtual {p0}, Lcom/android/server/wm/MultiWindowStackColorLayer;->isBoundsOutOfScreen()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/server/wm/MultiWindowStackColorLayer;->mBounds:Landroid/graphics/Rect;

    iget-object v3, p0, Lcom/android/server/wm/MultiWindowStackColorLayer;->mSurfaceBounds:Landroid/graphics/Rect;

    invoke-virtual {v2, v3}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    :cond_0
    move v0, v1

    :cond_1
    :goto_0
    return v0

    :cond_2
    iget-object v2, p0, Lcom/android/server/wm/MultiWindowStackColorLayer;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    iget-object v3, p0, Lcom/android/server/wm/MultiWindowStackColorLayer;->mSurfaceBounds:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v3

    if-eq v2, v3, :cond_1

    iget-object v2, p0, Lcom/android/server/wm/MultiWindowStackColorLayer;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    iget-object v3, p0, Lcom/android/server/wm/MultiWindowStackColorLayer;->mSurfaceBounds:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v3

    if-eq v2, v3, :cond_1

    move v0, v1

    goto :goto_0
.end method

.method public isShowing()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/wm/MultiWindowStackColorLayer;->mShowing:Z

    return v0
.end method

.method public isTranslucent()Z
    .locals 2

    iget v0, p0, Lcom/android/server/wm/MultiWindowStackColorLayer;->mTargetAlpha:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public printTo(Ljava/lang/String;Ljava/io/PrintWriter;)V
    .locals 2

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mSurfaceControl="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/wm/MultiWindowStackColorLayer;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    const-string/jumbo v0, " mLayer="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/wm/MultiWindowStackColorLayer;->mLayer:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    const-string/jumbo v0, " mAlpha="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/wm/MultiWindowStackColorLayer;->mAlpha:F

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(F)V

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mLastSurfaceBounds="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/wm/MultiWindowStackColorLayer;->mLastSurfaceBounds:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->toShortString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, " mSurfaceBounds="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/wm/MultiWindowStackColorLayer;->mSurfaceBounds:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->toShortString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "Last animation: "

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, " mDuration="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-wide v0, p0, Lcom/android/server/wm/MultiWindowStackColorLayer;->mDuration:J

    invoke-virtual {p2, v0, v1}, Ljava/io/PrintWriter;->print(J)V

    const-string/jumbo v0, " mStartTime="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-wide v0, p0, Lcom/android/server/wm/MultiWindowStackColorLayer;->mStartTime:J

    invoke-virtual {p2, v0, v1}, Ljava/io/PrintWriter;->print(J)V

    const-string/jumbo v0, " curTime="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    invoke-virtual {p2, v0, v1}, Ljava/io/PrintWriter;->println(J)V

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, " mStartAlpha="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/wm/MultiWindowStackColorLayer;->mStartAlpha:F

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(F)V

    const-string/jumbo v0, " mTargetAlpha="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/wm/MultiWindowStackColorLayer;->mTargetAlpha:F

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(F)V

    return-void
.end method

.method public setAnimatingForMinimizedDockedStack(Z)V
    .locals 3

    sget-boolean v0, Lcom/android/server/wm/MultiWindowStackColorLayer;->SAFE_DEBUG:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/server/wm/MultiWindowStackColorLayer;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setAnimatingForMinimizedDockedStack: isMinimizing = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iput-boolean p1, p0, Lcom/android/server/wm/MultiWindowStackColorLayer;->mAnimatingForMinimizedDockedStack:Z

    return-void
.end method

.method public setBounds(Landroid/graphics/Rect;)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/wm/MultiWindowStackColorLayer;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    iget-object v0, p0, Lcom/android/server/wm/MultiWindowStackColorLayer;->mSurfaceBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    return-void
.end method

.method public setColor(I)V
    .locals 3

    iget v0, p0, Lcom/android/server/wm/MultiWindowStackColorLayer;->mColor:I

    if-eq v0, p1, :cond_0

    iput p1, p0, Lcom/android/server/wm/MultiWindowStackColorLayer;->mColor:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/wm/MultiWindowStackColorLayer;->mHasColorChanged:Z

    sget-boolean v0, Lcom/android/server/wm/MultiWindowStackColorLayer;->DEBUG_STACK_COLOR_LAYER:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/server/wm/MultiWindowStackColorLayer;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setColor: color changed to = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public setLayer(I)V
    .locals 1

    iget v0, p0, Lcom/android/server/wm/MultiWindowStackColorLayer;->mLayer:I

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    iput p1, p0, Lcom/android/server/wm/MultiWindowStackColorLayer;->mLayer:I

    return-void
.end method

.method public setSurfacePosition(Landroid/graphics/Rect;)V
    .locals 5

    iget-object v3, p0, Lcom/android/server/wm/MultiWindowStackColorLayer;->mStack:Lcom/android/server/wm/TaskStack;

    invoke-virtual {v3}, Lcom/android/server/wm/TaskStack;->getDockSide()I

    move-result v0

    iget-object v3, p0, Lcom/android/server/wm/MultiWindowStackColorLayer;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v2

    iget-object v3, p0, Lcom/android/server/wm/MultiWindowStackColorLayer;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v1

    packed-switch v0, :pswitch_data_0

    :goto_0
    iget-object v3, p0, Lcom/android/server/wm/MultiWindowStackColorLayer;->mSurfaceBounds:Landroid/graphics/Rect;

    iget-object v4, p0, Lcom/android/server/wm/MultiWindowStackColorLayer;->mTmpBounds:Landroid/graphics/Rect;

    invoke-virtual {v3, v4}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    return-void

    :pswitch_0
    iget-object v3, p0, Lcom/android/server/wm/MultiWindowStackColorLayer;->mTmpBounds:Landroid/graphics/Rect;

    iget v4, p1, Landroid/graphics/Rect;->right:I

    sub-int/2addr v4, v2

    iput v4, v3, Landroid/graphics/Rect;->left:I

    iget-object v3, p0, Lcom/android/server/wm/MultiWindowStackColorLayer;->mTmpBounds:Landroid/graphics/Rect;

    iget v4, p1, Landroid/graphics/Rect;->right:I

    iput v4, v3, Landroid/graphics/Rect;->right:I

    iget-object v3, p0, Lcom/android/server/wm/MultiWindowStackColorLayer;->mTmpBounds:Landroid/graphics/Rect;

    iget v4, p1, Landroid/graphics/Rect;->top:I

    iput v4, v3, Landroid/graphics/Rect;->top:I

    iget-object v3, p0, Lcom/android/server/wm/MultiWindowStackColorLayer;->mTmpBounds:Landroid/graphics/Rect;

    iget v4, p1, Landroid/graphics/Rect;->bottom:I

    iput v4, v3, Landroid/graphics/Rect;->bottom:I

    goto :goto_0

    :pswitch_1
    iget-object v3, p0, Lcom/android/server/wm/MultiWindowStackColorLayer;->mTmpBounds:Landroid/graphics/Rect;

    iget v4, p1, Landroid/graphics/Rect;->left:I

    iput v4, v3, Landroid/graphics/Rect;->left:I

    iget-object v3, p0, Lcom/android/server/wm/MultiWindowStackColorLayer;->mTmpBounds:Landroid/graphics/Rect;

    iget v4, p1, Landroid/graphics/Rect;->right:I

    iput v4, v3, Landroid/graphics/Rect;->right:I

    iget-object v3, p0, Lcom/android/server/wm/MultiWindowStackColorLayer;->mTmpBounds:Landroid/graphics/Rect;

    iget v4, p1, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v4, v1

    iput v4, v3, Landroid/graphics/Rect;->top:I

    iget-object v3, p0, Lcom/android/server/wm/MultiWindowStackColorLayer;->mTmpBounds:Landroid/graphics/Rect;

    iget v4, p1, Landroid/graphics/Rect;->bottom:I

    iput v4, v3, Landroid/graphics/Rect;->bottom:I

    goto :goto_0

    :pswitch_2
    iget-object v3, p0, Lcom/android/server/wm/MultiWindowStackColorLayer;->mTmpBounds:Landroid/graphics/Rect;

    iget v4, p1, Landroid/graphics/Rect;->left:I

    iput v4, v3, Landroid/graphics/Rect;->left:I

    iget-object v3, p0, Lcom/android/server/wm/MultiWindowStackColorLayer;->mTmpBounds:Landroid/graphics/Rect;

    iget v4, p1, Landroid/graphics/Rect;->left:I

    add-int/2addr v4, v2

    iput v4, v3, Landroid/graphics/Rect;->right:I

    iget-object v3, p0, Lcom/android/server/wm/MultiWindowStackColorLayer;->mTmpBounds:Landroid/graphics/Rect;

    iget v4, p1, Landroid/graphics/Rect;->top:I

    iput v4, v3, Landroid/graphics/Rect;->top:I

    iget-object v3, p0, Lcom/android/server/wm/MultiWindowStackColorLayer;->mTmpBounds:Landroid/graphics/Rect;

    iget v4, p1, Landroid/graphics/Rect;->bottom:I

    iput v4, v3, Landroid/graphics/Rect;->bottom:I

    goto :goto_0

    :pswitch_3
    iget-object v3, p0, Lcom/android/server/wm/MultiWindowStackColorLayer;->mTmpBounds:Landroid/graphics/Rect;

    iget v4, p1, Landroid/graphics/Rect;->left:I

    iput v4, v3, Landroid/graphics/Rect;->left:I

    iget-object v3, p0, Lcom/android/server/wm/MultiWindowStackColorLayer;->mTmpBounds:Landroid/graphics/Rect;

    iget v4, p1, Landroid/graphics/Rect;->right:I

    iput v4, v3, Landroid/graphics/Rect;->right:I

    iget-object v3, p0, Lcom/android/server/wm/MultiWindowStackColorLayer;->mTmpBounds:Landroid/graphics/Rect;

    iget v4, p1, Landroid/graphics/Rect;->top:I

    iput v4, v3, Landroid/graphics/Rect;->top:I

    iget-object v3, p0, Lcom/android/server/wm/MultiWindowStackColorLayer;->mTmpBounds:Landroid/graphics/Rect;

    iget v4, p1, Landroid/graphics/Rect;->top:I

    add-int/2addr v4, v1

    iput v4, v3, Landroid/graphics/Rect;->bottom:I

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public setupSurface()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/wm/MultiWindowStackColorLayer;->mShowing:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/server/wm/MultiWindowStackColorLayer;->mAnimatingForMinimizedDockedStack:Z

    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/server/wm/MultiWindowStackColorLayer;->setupSurface(Z)Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public setupSurface(Z)Z
    .locals 9

    const/4 v8, 0x1

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iget-object v5, p0, Lcom/android/server/wm/MultiWindowStackColorLayer;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, v5}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    iget-object v5, p0, Lcom/android/server/wm/MultiWindowStackColorLayer;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v5, v5, Lcom/android/server/wm/WindowManagerService;->mMultiWindowManagerInternal:Lcom/android/server/wm/IMultiWindowManagerInternalBridge;

    invoke-interface {v5, v0}, Lcom/android/server/wm/IMultiWindowManagerInternalBridge;->adjustBoundsToMagnificationSpec(Landroid/graphics/Rect;)V

    iget-object v5, p0, Lcom/android/server/wm/MultiWindowStackColorLayer;->mLastBounds:Landroid/graphics/Rect;

    invoke-virtual {v5, v0}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v2

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v1

    iget v5, v0, Landroid/graphics/Rect;->left:I

    int-to-float v3, v5

    iget v5, v0, Landroid/graphics/Rect;->top:I

    int-to-float v4, v5

    iget-object v5, p0, Lcom/android/server/wm/MultiWindowStackColorLayer;->mSurfaceControl:Landroid/view/SurfaceControl;

    if-eqz v5, :cond_1

    if-eqz p1, :cond_1

    iget-object v5, p0, Lcom/android/server/wm/MultiWindowStackColorLayer;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {v5, v3, v4}, Landroid/view/SurfaceControl;->setPosition(FF)V

    iget-object v5, p0, Lcom/android/server/wm/MultiWindowStackColorLayer;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {v5, v2, v1}, Landroid/view/SurfaceControl;->setSize(II)V

    iput-boolean v8, p0, Lcom/android/server/wm/MultiWindowStackColorLayer;->mHasSurfaceSizeChanged:Z

    sget-boolean v5, Lcom/android/server/wm/MultiWindowStackColorLayer;->DEBUG_STACK_COLOR_LAYER:Z

    if-eqz v5, :cond_0

    sget-object v5, Lcom/android/server/wm/MultiWindowStackColorLayer;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "setupSurface: mSurfaceControl = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/server/wm/MultiWindowStackColorLayer;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-direct {p0}, Lcom/android/server/wm/MultiWindowStackColorLayer;->alignSurfaceToBounds()V

    iget-object v5, p0, Lcom/android/server/wm/MultiWindowStackColorLayer;->mLastBounds:Landroid/graphics/Rect;

    invoke-virtual {v5, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    return v8

    :cond_1
    const/4 v5, 0x0

    return v5
.end method

.method public shouldUpdateSurface()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/wm/MultiWindowStackColorLayer;->mHasSurfaceSizeChanged:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/server/wm/MultiWindowStackColorLayer;->mHasColorChanged:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/server/wm/MultiWindowStackColorLayer;->mHasColorDrawn:Z

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public show()V
    .locals 4

    invoke-virtual {p0}, Lcom/android/server/wm/MultiWindowStackColorLayer;->isAnimating()Z

    move-result v0

    if-eqz v0, :cond_1

    sget-boolean v0, Lcom/android/server/wm/MultiWindowStackColorLayer;->DEBUG_STACK_COLOR_LAYER:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/server/wm/MultiWindowStackColorLayer;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "show: immediate"

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget v0, p0, Lcom/android/server/wm/MultiWindowStackColorLayer;->mTargetAlpha:F

    const-wide/16 v2, 0x0

    invoke-virtual {p0, v0, v2, v3}, Lcom/android/server/wm/MultiWindowStackColorLayer;->show(FJ)V

    :cond_1
    return-void
.end method

.method public show(FJ)V
    .locals 8

    const/16 v7, 0xa

    const/4 v6, 0x0

    sget-boolean v1, Lcom/android/server/wm/MultiWindowStackColorLayer;->DEBUG_STACK_COLOR_LAYER:Z

    if-eqz v1, :cond_0

    sget-object v1, Lcom/android/server/wm/MultiWindowStackColorLayer;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "show: alpha="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " duration="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ", mDestroyed="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, p0, Lcom/android/server/wm/MultiWindowStackColorLayer;->mDestroyed:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    sget-boolean v1, Lcom/android/server/wm/MultiWindowStackColorLayer;->SAFE_DEBUG:Z

    if-eqz v1, :cond_2

    cmpl-float v1, p1, v6

    if-nez v1, :cond_1

    invoke-virtual {p0}, Lcom/android/server/wm/MultiWindowStackColorLayer;->isBoundsOutOfScreen()Z

    move-result v1

    if-eqz v1, :cond_1

    sget-object v1, Lcom/android/server/wm/MultiWindowStackColorLayer;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "show: alpha = 0, isBoundsOutOfScreen, DEBUG -> "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v7}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    cmpl-float v1, p1, v6

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/server/wm/MultiWindowStackColorLayer;->mSurfaceBounds:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    const/16 v4, 0x10

    if-ne v1, v4, :cond_2

    sget-object v1, Lcom/android/server/wm/MultiWindowStackColorLayer;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "show: alpha = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ", mSurfaceBounds = (16,16), DEBUG -> "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v7}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    iget-boolean v1, p0, Lcom/android/server/wm/MultiWindowStackColorLayer;->mDestroyed:Z

    if-eqz v1, :cond_3

    sget-object v1, Lcom/android/server/wm/MultiWindowStackColorLayer;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "show: no Surface"

    invoke-static {v1, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    iput v6, p0, Lcom/android/server/wm/MultiWindowStackColorLayer;->mAlpha:F

    iput v6, p0, Lcom/android/server/wm/MultiWindowStackColorLayer;->mTargetAlpha:F

    return-void

    :cond_3
    iget-object v1, p0, Lcom/android/server/wm/MultiWindowStackColorLayer;->mSurfaceControl:Landroid/view/SurfaceControl;

    if-nez v1, :cond_4

    iget-object v1, p0, Lcom/android/server/wm/MultiWindowStackColorLayer;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-direct {p0, v1}, Lcom/android/server/wm/MultiWindowStackColorLayer;->constructSurface(Lcom/android/server/wm/WindowManagerService;)V

    :cond_4
    iget-object v1, p0, Lcom/android/server/wm/MultiWindowStackColorLayer;->mLastSurfaceBounds:Landroid/graphics/Rect;

    iget-object v4, p0, Lcom/android/server/wm/MultiWindowStackColorLayer;->mSurfaceBounds:Landroid/graphics/Rect;

    invoke-virtual {v1, v4}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    iget-boolean v1, p0, Lcom/android/server/wm/MultiWindowStackColorLayer;->mHasColorDrawn:Z

    if-eqz v1, :cond_6

    :cond_5
    invoke-direct {p0}, Lcom/android/server/wm/MultiWindowStackColorLayer;->alignSurfaceToBounds()V

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/wm/MultiWindowStackColorLayer;->mHasColorDrawn:Z

    :cond_6
    iget v1, p0, Lcom/android/server/wm/MultiWindowStackColorLayer;->mColor:I

    invoke-direct {p0, v1}, Lcom/android/server/wm/MultiWindowStackColorLayer;->drawColor(I)V

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    invoke-virtual {p0}, Lcom/android/server/wm/MultiWindowStackColorLayer;->isAnimating()Z

    move-result v0

    if-eqz v0, :cond_7

    iget v1, p0, Lcom/android/server/wm/MultiWindowStackColorLayer;->mTargetAlpha:F

    cmpl-float v1, v1, p1

    if-nez v1, :cond_8

    invoke-direct {p0, p2, p3}, Lcom/android/server/wm/MultiWindowStackColorLayer;->durationEndsEarlier(J)Z

    move-result v1

    if-nez v1, :cond_8

    :cond_7
    if-nez v0, :cond_9

    iget v1, p0, Lcom/android/server/wm/MultiWindowStackColorLayer;->mAlpha:F

    cmpl-float v1, v1, p1

    if-eqz v1, :cond_9

    :cond_8
    const-wide/16 v4, 0x0

    cmp-long v1, p2, v4

    if-gtz v1, :cond_c

    invoke-direct {p0, p1}, Lcom/android/server/wm/MultiWindowStackColorLayer;->setAlpha(F)V

    :cond_9
    :goto_0
    iput p1, p0, Lcom/android/server/wm/MultiWindowStackColorLayer;->mTargetAlpha:F

    sget-boolean v1, Lcom/android/server/wm/MultiWindowStackColorLayer;->DEBUG_STACK_COLOR_LAYER:Z

    if-nez v1, :cond_a

    sget-boolean v1, Lcom/android/server/wm/MultiWindowStackColorLayer;->SAFE_DEBUG:Z

    if-eqz v1, :cond_b

    :cond_a
    sget-object v1, Lcom/android/server/wm/MultiWindowStackColorLayer;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "show: mStartAlpha="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/server/wm/MultiWindowStackColorLayer;->mStartAlpha:F

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " mStartTime="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-wide v6, p0, Lcom/android/server/wm/MultiWindowStackColorLayer;->mStartTime:J

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " mTargetAlpha="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/server/wm/MultiWindowStackColorLayer;->mTargetAlpha:F

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_b
    return-void

    :cond_c
    iget v1, p0, Lcom/android/server/wm/MultiWindowStackColorLayer;->mAlpha:F

    iput v1, p0, Lcom/android/server/wm/MultiWindowStackColorLayer;->mStartAlpha:F

    iput-wide v2, p0, Lcom/android/server/wm/MultiWindowStackColorLayer;->mStartTime:J

    iput-wide p2, p0, Lcom/android/server/wm/MultiWindowStackColorLayer;->mDuration:J

    goto :goto_0
.end method

.method public stepAnimation()Z
    .locals 9

    const/4 v8, 0x0

    iget-boolean v4, p0, Lcom/android/server/wm/MultiWindowStackColorLayer;->mDestroyed:Z

    if-eqz v4, :cond_0

    sget-object v4, Lcom/android/server/wm/MultiWindowStackColorLayer;->TAG:Ljava/lang/String;

    const-string/jumbo v5, "stepAnimation: surface destroyed"

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    iput v8, p0, Lcom/android/server/wm/MultiWindowStackColorLayer;->mAlpha:F

    iput v8, p0, Lcom/android/server/wm/MultiWindowStackColorLayer;->mTargetAlpha:F

    const/4 v4, 0x0

    return v4

    :cond_0
    invoke-virtual {p0}, Lcom/android/server/wm/MultiWindowStackColorLayer;->isAnimating()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    iget v4, p0, Lcom/android/server/wm/MultiWindowStackColorLayer;->mTargetAlpha:F

    iget v5, p0, Lcom/android/server/wm/MultiWindowStackColorLayer;->mStartAlpha:F

    sub-float v1, v4, v5

    iget v4, p0, Lcom/android/server/wm/MultiWindowStackColorLayer;->mStartAlpha:F

    iget-wide v6, p0, Lcom/android/server/wm/MultiWindowStackColorLayer;->mStartTime:J

    sub-long v6, v2, v6

    long-to-float v5, v6

    mul-float/2addr v5, v1

    iget-wide v6, p0, Lcom/android/server/wm/MultiWindowStackColorLayer;->mDuration:J

    long-to-float v6, v6

    div-float/2addr v5, v6

    add-float v0, v4, v5

    cmpl-float v4, v1, v8

    if-lez v4, :cond_4

    iget v4, p0, Lcom/android/server/wm/MultiWindowStackColorLayer;->mTargetAlpha:F

    cmpl-float v4, v0, v4

    if-lez v4, :cond_4

    :goto_0
    iget v0, p0, Lcom/android/server/wm/MultiWindowStackColorLayer;->mTargetAlpha:F

    :cond_1
    sget-boolean v4, Lcom/android/server/wm/MultiWindowStackColorLayer;->DEBUG_STACK_COLOR_LAYER:Z

    if-eqz v4, :cond_2

    sget-object v4, Lcom/android/server/wm/MultiWindowStackColorLayer;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "stepAnimation: curTime="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " alpha="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    invoke-direct {p0, v0}, Lcom/android/server/wm/MultiWindowStackColorLayer;->setAlpha(F)V

    :cond_3
    invoke-virtual {p0}, Lcom/android/server/wm/MultiWindowStackColorLayer;->isAnimating()Z

    move-result v4

    return v4

    :cond_4
    cmpg-float v4, v1, v8

    if-gez v4, :cond_1

    iget v4, p0, Lcom/android/server/wm/MultiWindowStackColorLayer;->mTargetAlpha:F

    cmpg-float v4, v0, v4

    if-gez v4, :cond_1

    goto :goto_0
.end method
