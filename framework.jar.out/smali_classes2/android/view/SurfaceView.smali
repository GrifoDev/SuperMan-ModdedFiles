.class public Landroid/view/SurfaceView;
.super Landroid/view/View;
.source "SurfaceView.java"

# interfaces
.implements Landroid/view/ViewRootImpl$WindowStoppedCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/SurfaceView$1;,
        Landroid/view/SurfaceView$2;,
        Landroid/view/SurfaceView$3;,
        Landroid/view/SurfaceView$SurfaceControlWithBackground;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final DEBUG_BG:Z = true

.field private static final SUPPORT_MW_BG:Z

.field private static final SUPPORT_MW_CROP:Z

.field private static final TAG:Ljava/lang/String; = "SurfaceView"


# instance fields
.field private mAttachedToWindow:Z

.field final mCallbacks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/SurfaceHolder$Callback;",
            ">;"
        }
    .end annotation
.end field

.field final mConfiguration:Landroid/content/res/Configuration;

.field private final mCropLocation:[I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "SurfaceView"
    .end annotation
.end field

.field private final mCropRect:Landroid/graphics/Rect;
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "SurfaceView"
    .end annotation
.end field

.field mDeferredDestroySurfaceControl:Landroid/view/SurfaceControl;

.field mDrawFinished:Z

.field private final mDrawListener:Landroid/view/ViewTreeObserver$OnPreDrawListener;

.field mDrawingStopped:Z

.field mFormat:I

.field private mGlobalListenersAdded:Z

.field mHaveFrame:Z

.field private final mHitRect:Landroid/graphics/Rect;
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "SurfaceView"
    .end annotation
.end field

.field mIsCreating:Z

.field private mIsInMultiWindowMode:Z

.field mLastLockTime:J

.field mLastSurfaceHeight:I

.field mLastSurfaceWidth:I

.field mLastWindowVisibility:Z

.field final mLocation:[I

.field private mPendingReportDraws:I

.field private mRTLastReportedPosition:Landroid/graphics/Rect;

.field mRequestedFormat:I

.field mRequestedHeight:I

.field mRequestedVisible:Z

.field mRequestedWidth:I

.field private mRootHeight:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "SurfaceView"
    .end annotation
.end field

.field private mRootWidth:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "SurfaceView"
    .end annotation
.end field

.field private volatile mRtHandlingPositionUpdates:Z

.field final mScreenRect:Landroid/graphics/Rect;

.field private final mScrollChangedListener:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

.field mSubLayer:I

.field final mSurface:Landroid/view/Surface;

.field mSurfaceControl:Landroid/view/SurfaceControl;
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "SurfaceView"
    .end annotation
.end field

.field mSurfaceCreated:Z

.field private mSurfaceCreatedCount:I

.field private mSurfaceFlags:I

.field final mSurfaceFrame:Landroid/graphics/Rect;

.field mSurfaceHeight:I

.field private final mSurfaceHolder:Landroid/view/SurfaceHolder;

.field final mSurfaceLock:Ljava/util/concurrent/locks/ReentrantLock;

.field mSurfaceSession:Landroid/view/SurfaceSession;

.field mSurfaceWidth:I

.field final mTmpRect:Landroid/graphics/Rect;

.field private mTranslator:Landroid/content/res/CompatibilityInfo$Translator;

.field mViewVisibility:Z

.field mVisible:Z

.field mWindowSpaceLeft:I

.field mWindowSpaceTop:I

.field mWindowStopped:Z

.field mWindowVisibility:Z


# direct methods
.method static synthetic -get0()Z
    .locals 1

    sget-boolean v0, Landroid/view/SurfaceView;->SUPPORT_MW_BG:Z

    return v0
.end method

.method static synthetic -get1()Z
    .locals 1

    sget-boolean v0, Landroid/view/SurfaceView;->SUPPORT_MW_CROP:Z

    return v0
.end method

.method static synthetic -get2(Landroid/view/SurfaceView;)[I
    .locals 1

    iget-object v0, p0, Landroid/view/SurfaceView;->mCropLocation:[I

    return-object v0
.end method

.method static synthetic -get3(Landroid/view/SurfaceView;)Landroid/graphics/Rect;
    .locals 1

    iget-object v0, p0, Landroid/view/SurfaceView;->mCropRect:Landroid/graphics/Rect;

    return-object v0
.end method

.method static synthetic -get4(Landroid/view/SurfaceView;)Landroid/graphics/Rect;
    .locals 1

    iget-object v0, p0, Landroid/view/SurfaceView;->mHitRect:Landroid/graphics/Rect;

    return-object v0
.end method

.method static synthetic -get5(Landroid/view/SurfaceView;)Z
    .locals 1

    iget-boolean v0, p0, Landroid/view/SurfaceView;->mIsInMultiWindowMode:Z

    return v0
.end method

.method static synthetic -get6(Landroid/view/SurfaceView;)I
    .locals 1

    iget v0, p0, Landroid/view/SurfaceView;->mRootHeight:I

    return v0
.end method

.method static synthetic -get7(Landroid/view/SurfaceView;)I
    .locals 1

    iget v0, p0, Landroid/view/SurfaceView;->mRootWidth:I

    return v0
.end method

.method static synthetic -set0(Landroid/view/SurfaceView;I)I
    .locals 0

    iput p1, p0, Landroid/view/SurfaceView;->mRootHeight:I

    return p1
.end method

.method static synthetic -set1(Landroid/view/SurfaceView;I)I
    .locals 0

    iput p1, p0, Landroid/view/SurfaceView;->mRootWidth:I

    return p1
.end method

.method static synthetic -wrap0(Landroid/view/SurfaceView;)Landroid/graphics/Rect;
    .locals 1

    invoke-direct {p0}, Landroid/view/SurfaceView;->getParentSurfaceInsets()Landroid/graphics/Rect;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap1(Landroid/view/SurfaceView;Ljava/lang/Runnable;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/view/SurfaceView;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    const/4 v1, 0x1

    const-string/jumbo v0, "surfaceview.mw.bg"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Landroid/view/SurfaceView;->SUPPORT_MW_BG:Z

    const-string/jumbo v0, "surfaceview.mw.crop"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Landroid/view/SurfaceView;->SUPPORT_MW_CROP:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 7

    const/4 v6, 0x4

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, -0x1

    const/4 v2, 0x0

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    iput-boolean v2, p0, Landroid/view/SurfaceView;->mIsInMultiWindowMode:Z

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/view/SurfaceView;->mCallbacks:Ljava/util/ArrayList;

    new-array v0, v5, [I

    iput-object v0, p0, Landroid/view/SurfaceView;->mLocation:[I

    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Landroid/view/SurfaceView;->mSurfaceLock:Ljava/util/concurrent/locks/ReentrantLock;

    new-instance v0, Landroid/view/Surface;

    invoke-direct {v0}, Landroid/view/Surface;-><init>()V

    iput-object v0, p0, Landroid/view/SurfaceView;->mSurface:Landroid/view/Surface;

    iput-boolean v4, p0, Landroid/view/SurfaceView;->mDrawingStopped:Z

    iput-boolean v2, p0, Landroid/view/SurfaceView;->mDrawFinished:Z

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/view/SurfaceView;->mScreenRect:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/view/SurfaceView;->mTmpRect:Landroid/graphics/Rect;

    new-instance v0, Landroid/content/res/Configuration;

    invoke-direct {v0}, Landroid/content/res/Configuration;-><init>()V

    iput-object v0, p0, Landroid/view/SurfaceView;->mConfiguration:Landroid/content/res/Configuration;

    const/4 v0, -0x2

    iput v0, p0, Landroid/view/SurfaceView;->mSubLayer:I

    iput-boolean v2, p0, Landroid/view/SurfaceView;->mIsCreating:Z

    iput-boolean v2, p0, Landroid/view/SurfaceView;->mRtHandlingPositionUpdates:Z

    new-instance v0, Landroid/view/SurfaceView$1;

    invoke-direct {v0, p0}, Landroid/view/SurfaceView$1;-><init>(Landroid/view/SurfaceView;)V

    iput-object v0, p0, Landroid/view/SurfaceView;->mScrollChangedListener:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

    new-instance v0, Landroid/view/SurfaceView$2;

    invoke-direct {v0, p0}, Landroid/view/SurfaceView$2;-><init>(Landroid/view/SurfaceView;)V

    iput-object v0, p0, Landroid/view/SurfaceView;->mDrawListener:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    iput-boolean v2, p0, Landroid/view/SurfaceView;->mRequestedVisible:Z

    iput-boolean v2, p0, Landroid/view/SurfaceView;->mWindowVisibility:Z

    iput-boolean v2, p0, Landroid/view/SurfaceView;->mLastWindowVisibility:Z

    iput-boolean v2, p0, Landroid/view/SurfaceView;->mViewVisibility:Z

    iput-boolean v2, p0, Landroid/view/SurfaceView;->mWindowStopped:Z

    iput v2, p0, Landroid/view/SurfaceView;->mSurfaceCreatedCount:I

    iput v3, p0, Landroid/view/SurfaceView;->mRequestedWidth:I

    iput v3, p0, Landroid/view/SurfaceView;->mRequestedHeight:I

    iput v6, p0, Landroid/view/SurfaceView;->mRequestedFormat:I

    iput-boolean v2, p0, Landroid/view/SurfaceView;->mHaveFrame:Z

    iput-boolean v2, p0, Landroid/view/SurfaceView;->mSurfaceCreated:Z

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/view/SurfaceView;->mLastLockTime:J

    iput-boolean v2, p0, Landroid/view/SurfaceView;->mVisible:Z

    iput v3, p0, Landroid/view/SurfaceView;->mWindowSpaceLeft:I

    iput v3, p0, Landroid/view/SurfaceView;->mWindowSpaceTop:I

    iput v3, p0, Landroid/view/SurfaceView;->mSurfaceWidth:I

    iput v3, p0, Landroid/view/SurfaceView;->mSurfaceHeight:I

    iput v3, p0, Landroid/view/SurfaceView;->mFormat:I

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/view/SurfaceView;->mSurfaceFrame:Landroid/graphics/Rect;

    iput v3, p0, Landroid/view/SurfaceView;->mLastSurfaceWidth:I

    iput v3, p0, Landroid/view/SurfaceView;->mLastSurfaceHeight:I

    iput v6, p0, Landroid/view/SurfaceView;->mSurfaceFlags:I

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/view/SurfaceView;->mRTLastReportedPosition:Landroid/graphics/Rect;

    new-instance v0, Landroid/view/SurfaceView$3;

    invoke-direct {v0, p0}, Landroid/view/SurfaceView$3;-><init>(Landroid/view/SurfaceView;)V

    iput-object v0, p0, Landroid/view/SurfaceView;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/view/SurfaceView;->mCropRect:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/view/SurfaceView;->mHitRect:Landroid/graphics/Rect;

    new-array v0, v5, [I

    iput-object v0, p0, Landroid/view/SurfaceView;->mCropLocation:[I

    iput v3, p0, Landroid/view/SurfaceView;->mRootWidth:I

    iput v3, p0, Landroid/view/SurfaceView;->mRootHeight:I

    iget-object v0, p0, Landroid/view/SurfaceView;->mRenderNode:Landroid/view/RenderNode;

    invoke-virtual {v0, p0}, Landroid/view/RenderNode;->requestPositionUpdates(Landroid/view/SurfaceView;)V

    invoke-virtual {p0, v4}, Landroid/view/SurfaceView;->setWillNotDraw(Z)V

    return-void
.end method

.method private getParentSurfaceInsets()Landroid/graphics/Rect;
    .locals 2

    const/4 v1, 0x0

    invoke-virtual {p0}, Landroid/view/SurfaceView;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    iget-object v1, v0, Landroid/view/ViewRootImpl;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    iget-object v1, v1, Landroid/view/WindowManager$LayoutParams;->surfaceInsets:Landroid/graphics/Rect;

    return-object v1
.end method

.method private getSurfaceCallbacks()[Landroid/view/SurfaceHolder$Callback;
    .locals 3

    iget-object v2, p0, Landroid/view/SurfaceView;->mCallbacks:Ljava/util/ArrayList;

    monitor-enter v2

    :try_start_0
    iget-object v1, p0, Landroid/view/SurfaceView;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v0, v1, [Landroid/view/SurfaceHolder$Callback;

    iget-object v1, p0, Landroid/view/SurfaceView;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v2

    return-object v0

    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method private isAboveParent()Z
    .locals 2

    const/4 v0, 0x0

    iget v1, p0, Landroid/view/SurfaceView;->mSubLayer:I

    if-ltz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method private onDrawFinished()V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Landroid/view/SurfaceView;->mDeferredDestroySurfaceControl:Landroid/view/SurfaceControl;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/view/SurfaceView;->mDeferredDestroySurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {v0}, Landroid/view/SurfaceControl;->destroy()V

    iput-object v1, p0, Landroid/view/SurfaceView;->mDeferredDestroySurfaceControl:Landroid/view/SurfaceControl;

    :cond_0
    new-instance v0, Landroid/view/-$Lambda$P6MTGFSudLpwrqb6oVD8FdorW1c;

    invoke-direct {v0, p0}, Landroid/view/-$Lambda$P6MTGFSudLpwrqb6oVD8FdorW1c;-><init>(Ljava/lang/Object;)V

    invoke-direct {p0, v0}, Landroid/view/SurfaceView;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private performDrawFinished()V
    .locals 3

    iget v0, p0, Landroid/view/SurfaceView;->mPendingReportDraws:I

    if-lez v0, :cond_2

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/view/SurfaceView;->mDrawFinished:Z

    iget-boolean v0, p0, Landroid/view/SurfaceView;->mAttachedToWindow:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/view/SurfaceView;->mParent:Landroid/view/ViewParent;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/view/SurfaceView;->mParent:Landroid/view/ViewParent;

    invoke-interface {v0, p0}, Landroid/view/ViewParent;->requestTransparentRegion(Landroid/view/View;)V

    :cond_0
    invoke-virtual {p0}, Landroid/view/SurfaceView;->notifyDrawFinished()V

    invoke-virtual {p0}, Landroid/view/SurfaceView;->invalidate()V

    :cond_1
    :goto_0
    return-void

    :cond_2
    const-string/jumbo v0, "SurfaceView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "finished drawing"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " but no pending report draw (extra call"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " to draw completion runnable?)"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private runOnUiThread(Ljava/lang/Runnable;)V
    .locals 3

    invoke-virtual {p0}, Landroid/view/SurfaceView;->getHandler()Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v2

    if-eq v1, v2, :cond_0

    invoke-virtual {v0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :goto_0
    return-void

    :cond_0
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    goto :goto_0
.end method

.method private setParentSpaceRectangle(Landroid/graphics/Rect;J)V
    .locals 6

    invoke-virtual {p0}, Landroid/view/SurfaceView;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v0

    invoke-static {}, Landroid/view/SurfaceControl;->openTransaction()V

    const-wide/16 v2, 0x0

    cmp-long v1, p2, v2

    if-lez v1, :cond_0

    :try_start_0
    iget-object v1, p0, Landroid/view/SurfaceView;->mSurfaceControl:Landroid/view/SurfaceControl;

    iget-object v2, v0, Landroid/view/ViewRootImpl;->mSurface:Landroid/view/Surface;

    invoke-virtual {v1, v2, p2, p3}, Landroid/view/SurfaceControl;->deferTransactionUntil(Landroid/view/Surface;J)V

    :cond_0
    iget-object v1, p0, Landroid/view/SurfaceView;->mSurfaceControl:Landroid/view/SurfaceControl;

    iget v2, p1, Landroid/graphics/Rect;->left:I

    int-to-float v2, v2

    iget v3, p1, Landroid/graphics/Rect;->top:I

    int-to-float v3, v3

    invoke-virtual {v1, v2, v3}, Landroid/view/SurfaceControl;->setPosition(FF)V

    iget-object v1, p0, Landroid/view/SurfaceView;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v2

    int-to-float v2, v2

    iget v3, p0, Landroid/view/SurfaceView;->mSurfaceWidth:I

    int-to-float v3, v3

    div-float/2addr v2, v3

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v3

    int-to-float v3, v3

    iget v4, p0, Landroid/view/SurfaceView;->mSurfaceHeight:I

    int-to-float v4, v4

    div-float/2addr v3, v4

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v1, v2, v4, v5, v3}, Landroid/view/SurfaceControl;->setMatrix(FFFF)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Landroid/view/SurfaceControl;->closeTransaction()V

    return-void

    :catchall_0
    move-exception v1

    invoke-static {}, Landroid/view/SurfaceControl;->closeTransaction()V

    throw v1
.end method

.method private updateOpaqueFlag()V
    .locals 1

    iget v0, p0, Landroid/view/SurfaceView;->mRequestedFormat:I

    invoke-static {v0}, Landroid/graphics/PixelFormat;->formatHasAlpha(I)Z

    move-result v0

    if-nez v0, :cond_0

    iget v0, p0, Landroid/view/SurfaceView;->mSurfaceFlags:I

    or-int/lit16 v0, v0, 0x400

    iput v0, p0, Landroid/view/SurfaceView;->mSurfaceFlags:I

    :goto_0
    return-void

    :cond_0
    iget v0, p0, Landroid/view/SurfaceView;->mSurfaceFlags:I

    and-int/lit16 v0, v0, -0x401

    iput v0, p0, Landroid/view/SurfaceView;->mSurfaceFlags:I

    goto :goto_0
.end method

.method private updateRequestedVisibility()V
    .locals 1

    iget-boolean v0, p0, Landroid/view/SurfaceView;->mViewVisibility:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Landroid/view/SurfaceView;->mWindowVisibility:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Landroid/view/SurfaceView;->mWindowStopped:Z

    xor-int/lit8 v0, v0, 0x1

    :goto_0
    iput-boolean v0, p0, Landroid/view/SurfaceView;->mRequestedVisible:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method synthetic -android_view_SurfaceView-mthref-0()V
    .locals 0

    invoke-direct {p0}, Landroid/view/SurfaceView;->onDrawFinished()V

    return-void
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 2

    iget-boolean v0, p0, Landroid/view/SurfaceView;->mDrawFinished:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Landroid/view/SurfaceView;->isAboveParent()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    iget v0, p0, Landroid/view/SurfaceView;->mPrivateFlags:I

    and-int/lit16 v0, v0, 0x80

    const/16 v1, 0x80

    if-ne v0, v1, :cond_0

    sget-object v0, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    const/4 v1, 0x0

    invoke-virtual {p1, v1, v0}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    :cond_0
    invoke-super {p0, p1}, Landroid/view/View;->dispatchDraw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 2

    const/4 v1, 0x0

    iget-boolean v0, p0, Landroid/view/SurfaceView;->mDrawFinished:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Landroid/view/SurfaceView;->isAboveParent()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    iget v0, p0, Landroid/view/SurfaceView;->mPrivateFlags:I

    and-int/lit16 v0, v0, 0x80

    if-nez v0, :cond_0

    sget-object v0, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {p1, v1, v0}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    :cond_0
    invoke-super {p0, p1}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method forceDestroySurfaceControl()V
    .locals 9

    const/4 v4, 0x0

    const/4 v8, 0x0

    invoke-virtual {p0}, Landroid/view/SurfaceView;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v3

    iget-boolean v5, p0, Landroid/view/SurfaceView;->mSurfaceCreated:Z

    if-eqz v5, :cond_2

    iget-object v5, p0, Landroid/view/SurfaceView;->mSurfaceControl:Landroid/view/SurfaceControl;

    if-eqz v5, :cond_2

    if-eqz v3, :cond_2

    iget-object v5, v3, Landroid/view/ViewRootImpl;->mSurface:Landroid/view/Surface;

    if-eqz v5, :cond_2

    iget-object v5, v3, Landroid/view/ViewRootImpl;->mSurface:Landroid/view/Surface;

    invoke-virtual {v5}, Landroid/view/Surface;->isValid()Z

    move-result v5

    xor-int/lit8 v5, v5, 0x1

    if-eqz v5, :cond_2

    iput-boolean v4, p0, Landroid/view/SurfaceView;->mSurfaceCreated:Z

    :try_start_0
    iget-object v5, p0, Landroid/view/SurfaceView;->mSurface:Landroid/view/Surface;

    invoke-virtual {v5}, Landroid/view/Surface;->isValid()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-direct {p0}, Landroid/view/SurfaceView;->getSurfaceCallbacks()[Landroid/view/SurfaceHolder$Callback;

    move-result-object v1

    const-string/jumbo v5, "SurfaceView"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Secondary surfaceDestroyed "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Landroid/view/SurfaceView;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Landroid/view/SurfaceView;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    array-length v5, v1

    :goto_0
    if-ge v4, v5, :cond_0

    aget-object v0, v1, v4

    iget-object v6, p0, Landroid/view/SurfaceView;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    invoke-interface {v0, v6}, Landroid/view/SurfaceHolder$Callback;->surfaceDestroyed(Landroid/view/SurfaceHolder;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    iget-object v4, p0, Landroid/view/SurfaceView;->mSurface:Landroid/view/Surface;

    invoke-virtual {v4}, Landroid/view/Surface;->isValid()Z

    move-result v4

    if-eqz v4, :cond_1

    iget-object v4, p0, Landroid/view/SurfaceView;->mSurface:Landroid/view/Surface;

    invoke-virtual {v4}, Landroid/view/Surface;->forceScopedDisconnect()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_1
    iget-object v4, p0, Landroid/view/SurfaceView;->mSurface:Landroid/view/Surface;

    invoke-virtual {v4}, Landroid/view/Surface;->release()V

    iget-object v4, p0, Landroid/view/SurfaceView;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {v4}, Landroid/view/SurfaceControl;->destroy()V

    iput-object v8, p0, Landroid/view/SurfaceView;->mSurfaceControl:Landroid/view/SurfaceControl;

    :cond_2
    return-void

    :catch_0
    move-exception v2

    const-string/jumbo v4, "SurfaceView"

    const-string/jumbo v5, "Exception configuring surface in Secondary surfaceDestroyed."

    invoke-static {v4, v5, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method public gatherTransparentRegion(Landroid/graphics/Region;)Z
    .locals 9

    const/4 v3, 0x0

    invoke-direct {p0}, Landroid/view/SurfaceView;->isAboveParent()Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Landroid/view/SurfaceView;->mDrawFinished:Z

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_1

    :cond_0
    invoke-super {p0, p1}, Landroid/view/View;->gatherTransparentRegion(Landroid/graphics/Region;)Z

    move-result v0

    return v0

    :cond_1
    const/4 v7, 0x1

    iget v0, p0, Landroid/view/SurfaceView;->mPrivateFlags:I

    and-int/lit16 v0, v0, 0x80

    if-nez v0, :cond_4

    invoke-super {p0, p1}, Landroid/view/View;->gatherTransparentRegion(Landroid/graphics/Region;)Z

    move-result v7

    :cond_2
    :goto_0
    iget v0, p0, Landroid/view/SurfaceView;->mRequestedFormat:I

    invoke-static {v0}, Landroid/graphics/PixelFormat;->formatHasAlpha(I)Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v7, 0x0

    :cond_3
    return v7

    :cond_4
    if-eqz p1, :cond_2

    invoke-virtual {p0}, Landroid/view/SurfaceView;->getWidth()I

    move-result v8

    invoke-virtual {p0}, Landroid/view/SurfaceView;->getHeight()I

    move-result v6

    if-lez v8, :cond_2

    if-lez v6, :cond_2

    iget-object v0, p0, Landroid/view/SurfaceView;->mLocation:[I

    invoke-virtual {p0, v0}, Landroid/view/SurfaceView;->getLocationInWindow([I)V

    iget-object v0, p0, Landroid/view/SurfaceView;->mLocation:[I

    aget v1, v0, v3

    iget-object v0, p0, Landroid/view/SurfaceView;->mLocation:[I

    const/4 v3, 0x1

    aget v2, v0, v3

    add-int v3, v1, v8

    add-int v4, v2, v6

    sget-object v5, Landroid/graphics/Region$Op;->UNION:Landroid/graphics/Region$Op;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Region;->op(IIIILandroid/graphics/Region$Op;)Z

    goto :goto_0
.end method

.method public getHolder()Landroid/view/SurfaceHolder;
    .locals 1

    iget-object v0, p0, Landroid/view/SurfaceView;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    return-object v0
.end method

.method public isFixedSize()Z
    .locals 3

    const/4 v0, 0x1

    const/4 v2, -0x1

    iget v1, p0, Landroid/view/SurfaceView;->mRequestedWidth:I

    if-ne v1, v2, :cond_0

    iget v1, p0, Landroid/view/SurfaceView;->mRequestedHeight:I

    if-eq v1, v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method synthetic lambda$-android_view_SurfaceView_36958()V
    .locals 0

    invoke-direct {p0}, Landroid/view/SurfaceView;->performDrawFinished()V

    return-void
.end method

.method notifyDrawFinished()V
    .locals 2

    invoke-virtual {p0}, Landroid/view/SurfaceView;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/ViewRootImpl;->pendingDrawFinished()V

    :cond_0
    iget v1, p0, Landroid/view/SurfaceView;->mPendingReportDraws:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Landroid/view/SurfaceView;->mPendingReportDraws:I

    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 5

    const/4 v3, 0x1

    const/4 v2, 0x0

    invoke-super {p0}, Landroid/view/View;->onAttachedToWindow()V

    invoke-virtual {p0}, Landroid/view/SurfaceView;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v1

    sget-boolean v4, Landroid/view/SurfaceView;->SUPPORT_MW_BG:Z

    if-nez v4, :cond_0

    sget-boolean v4, Landroid/view/SurfaceView;->SUPPORT_MW_CROP:Z

    if-eqz v4, :cond_1

    :cond_0
    invoke-virtual {v1}, Landroid/view/ViewRootImpl;->semIsInMultiWindowMode()Z

    move-result v4

    iput-boolean v4, p0, Landroid/view/SurfaceView;->mIsInMultiWindowMode:Z

    :cond_1
    sget-boolean v4, Landroid/view/SurfaceView;->SUPPORT_MW_BG:Z

    if-eqz v4, :cond_2

    invoke-virtual {v1}, Landroid/view/ViewRootImpl;->semRequestMWBG()V

    :cond_2
    iget-object v4, v1, Landroid/view/ViewRootImpl;->mAttachedSurfaceView:Ljava/util/ArrayList;

    if-nez v4, :cond_3

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, v1, Landroid/view/ViewRootImpl;->mAttachedSurfaceView:Ljava/util/ArrayList;

    :cond_3
    iget-object v4, v1, Landroid/view/ViewRootImpl;->mAttachedSurfaceView:Ljava/util/ArrayList;

    invoke-virtual {v4, p0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4

    iget-object v4, v1, Landroid/view/ViewRootImpl;->mAttachedSurfaceView:Ljava/util/ArrayList;

    invoke-virtual {v4, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_4
    invoke-virtual {p0}, Landroid/view/SurfaceView;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v4

    invoke-virtual {v4, p0}, Landroid/view/ViewRootImpl;->addWindowStoppedCallback(Landroid/view/ViewRootImpl$WindowStoppedCallback;)V

    iput-boolean v2, p0, Landroid/view/SurfaceView;->mWindowStopped:Z

    invoke-virtual {p0}, Landroid/view/SurfaceView;->getVisibility()I

    move-result v4

    if-nez v4, :cond_5

    move v2, v3

    :cond_5
    iput-boolean v2, p0, Landroid/view/SurfaceView;->mViewVisibility:Z

    invoke-direct {p0}, Landroid/view/SurfaceView;->updateRequestedVisibility()V

    iput-boolean v3, p0, Landroid/view/SurfaceView;->mAttachedToWindow:Z

    iget-boolean v2, p0, Landroid/view/SurfaceView;->mGlobalListenersAdded:Z

    if-nez v2, :cond_6

    invoke-virtual {p0}, Landroid/view/SurfaceView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v2, p0, Landroid/view/SurfaceView;->mScrollChangedListener:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

    invoke-virtual {v0, v2}, Landroid/view/ViewTreeObserver;->addOnScrollChangedListener(Landroid/view/ViewTreeObserver$OnScrollChangedListener;)V

    iget-object v2, p0, Landroid/view/SurfaceView;->mDrawListener:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    invoke-virtual {v0, v2}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    iput-boolean v3, p0, Landroid/view/SurfaceView;->mGlobalListenersAdded:Z

    :cond_6
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 5

    const/4 v4, 0x0

    const/4 v3, 0x0

    invoke-virtual {p0}, Landroid/view/SurfaceView;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1, p0}, Landroid/view/ViewRootImpl;->removeWindowStoppedCallback(Landroid/view/ViewRootImpl$WindowStoppedCallback;)V

    iget-object v2, v1, Landroid/view/ViewRootImpl;->mAttachedSurfaceView:Ljava/util/ArrayList;

    if-eqz v2, :cond_0

    iget-object v2, v1, Landroid/view/ViewRootImpl;->mAttachedSurfaceView:Ljava/util/ArrayList;

    invoke-virtual {v2, p0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, v1, Landroid/view/ViewRootImpl;->mAttachedSurfaceView:Ljava/util/ArrayList;

    invoke-virtual {v2, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    :cond_0
    iput-boolean v3, p0, Landroid/view/SurfaceView;->mAttachedToWindow:Z

    iget-boolean v2, p0, Landroid/view/SurfaceView;->mGlobalListenersAdded:Z

    if-eqz v2, :cond_1

    invoke-virtual {p0}, Landroid/view/SurfaceView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v2, p0, Landroid/view/SurfaceView;->mScrollChangedListener:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

    invoke-virtual {v0, v2}, Landroid/view/ViewTreeObserver;->removeOnScrollChangedListener(Landroid/view/ViewTreeObserver$OnScrollChangedListener;)V

    iget-object v2, p0, Landroid/view/SurfaceView;->mDrawListener:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    invoke-virtual {v0, v2}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    iput-boolean v3, p0, Landroid/view/SurfaceView;->mGlobalListenersAdded:Z

    :cond_1
    :goto_0
    iget v2, p0, Landroid/view/SurfaceView;->mPendingReportDraws:I

    if-lez v2, :cond_2

    invoke-virtual {p0}, Landroid/view/SurfaceView;->notifyDrawFinished()V

    goto :goto_0

    :cond_2
    iput-boolean v3, p0, Landroid/view/SurfaceView;->mRequestedVisible:Z

    invoke-virtual {p0}, Landroid/view/SurfaceView;->updateSurface()V

    iget-object v2, p0, Landroid/view/SurfaceView;->mSurfaceControl:Landroid/view/SurfaceControl;

    if-eqz v2, :cond_3

    iget-object v2, p0, Landroid/view/SurfaceView;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {v2}, Landroid/view/SurfaceControl;->destroy()V

    :cond_3
    iput-object v4, p0, Landroid/view/SurfaceView;->mSurfaceControl:Landroid/view/SurfaceControl;

    iput-boolean v3, p0, Landroid/view/SurfaceView;->mHaveFrame:Z

    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 4

    const/4 v3, 0x0

    iget v2, p0, Landroid/view/SurfaceView;->mRequestedWidth:I

    if-ltz v2, :cond_0

    iget v2, p0, Landroid/view/SurfaceView;->mRequestedWidth:I

    invoke-static {v2, p1, v3}, Landroid/view/SurfaceView;->resolveSizeAndState(III)I

    move-result v1

    :goto_0
    iget v2, p0, Landroid/view/SurfaceView;->mRequestedHeight:I

    if-ltz v2, :cond_1

    iget v2, p0, Landroid/view/SurfaceView;->mRequestedHeight:I

    invoke-static {v2, p2, v3}, Landroid/view/SurfaceView;->resolveSizeAndState(III)I

    move-result v0

    :goto_1
    invoke-virtual {p0, v1, v0}, Landroid/view/SurfaceView;->setMeasuredDimension(II)V

    return-void

    :cond_0
    invoke-static {v3, p1}, Landroid/view/SurfaceView;->getDefaultSize(II)I

    move-result v1

    goto :goto_0

    :cond_1
    invoke-static {v3, p2}, Landroid/view/SurfaceView;->getDefaultSize(II)I

    move-result v0

    goto :goto_1
.end method

.method protected onWindowVisibilityChanged(I)V
    .locals 1

    const/4 v0, 0x0

    invoke-super {p0, p1}, Landroid/view/View;->onWindowVisibilityChanged(I)V

    if-nez p1, :cond_0

    const/4 v0, 0x1

    :cond_0
    iput-boolean v0, p0, Landroid/view/SurfaceView;->mWindowVisibility:Z

    invoke-direct {p0}, Landroid/view/SurfaceView;->updateRequestedVisibility()V

    invoke-virtual {p0}, Landroid/view/SurfaceView;->updateSurface()V

    return-void
.end method

.method public semSetFixedOrientation(I)V
    .locals 0

    return-void
.end method

.method public semSetFixedOrientation(IIIII)V
    .locals 0

    return-void
.end method

.method public semSetFixedOrientation(IIIIIII)V
    .locals 0

    return-void
.end method

.method protected setFrame(IIII)Z
    .locals 1

    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->setFrame(IIII)Z

    move-result v0

    invoke-virtual {p0}, Landroid/view/SurfaceView;->updateSurface()V

    return v0
.end method

.method public setSecure(Z)V
    .locals 1

    if-eqz p1, :cond_0

    iget v0, p0, Landroid/view/SurfaceView;->mSurfaceFlags:I

    or-int/lit16 v0, v0, 0x80

    iput v0, p0, Landroid/view/SurfaceView;->mSurfaceFlags:I

    :goto_0
    return-void

    :cond_0
    iget v0, p0, Landroid/view/SurfaceView;->mSurfaceFlags:I

    and-int/lit16 v0, v0, -0x81

    iput v0, p0, Landroid/view/SurfaceView;->mSurfaceFlags:I

    goto :goto_0
.end method

.method public setVisibility(I)V
    .locals 2

    const/4 v1, 0x0

    invoke-super {p0, p1}, Landroid/view/View;->setVisibility(I)V

    if-nez p1, :cond_0

    const/4 v1, 0x1

    :cond_0
    iput-boolean v1, p0, Landroid/view/SurfaceView;->mViewVisibility:Z

    iget-boolean v1, p0, Landroid/view/SurfaceView;->mWindowVisibility:Z

    if-eqz v1, :cond_2

    iget-boolean v1, p0, Landroid/view/SurfaceView;->mViewVisibility:Z

    if-eqz v1, :cond_2

    iget-boolean v1, p0, Landroid/view/SurfaceView;->mWindowStopped:Z

    xor-int/lit8 v0, v1, 0x1

    :goto_0
    iget-boolean v1, p0, Landroid/view/SurfaceView;->mRequestedVisible:Z

    if-eq v0, v1, :cond_1

    invoke-virtual {p0}, Landroid/view/SurfaceView;->requestLayout()V

    :cond_1
    iput-boolean v0, p0, Landroid/view/SurfaceView;->mRequestedVisible:Z

    invoke-virtual {p0}, Landroid/view/SurfaceView;->updateSurface()V

    return-void

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setWindowType(I)V
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p0}, Landroid/view/SurfaceView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_0

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v1, "SurfaceView#setWindowType() has never been a public API."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    const/16 v0, 0x3e8

    if-ne p1, v0, :cond_1

    const-string/jumbo v0, "SurfaceView"

    const-string/jumbo v1, "If you are calling SurfaceView#setWindowType(TYPE_APPLICATION_PANEL) just to make the SurfaceView to be placed on top of its window, you must call setZOrderOnTop(true) instead."

    new-instance v2, Ljava/lang/Throwable;

    invoke-direct {v2}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v0, v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/view/SurfaceView;->setZOrderOnTop(Z)V

    return-void

    :cond_1
    const-string/jumbo v0, "SurfaceView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "SurfaceView#setWindowType(int) is deprecated and now does nothing. type="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/Throwable;

    invoke-direct {v2}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v0, v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method public setZOrderMediaOverlay(Z)V
    .locals 1

    if-eqz p1, :cond_0

    const/4 v0, -0x1

    :goto_0
    iput v0, p0, Landroid/view/SurfaceView;->mSubLayer:I

    return-void

    :cond_0
    const/4 v0, -0x2

    goto :goto_0
.end method

.method public setZOrderOnTop(Z)V
    .locals 1

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    iput v0, p0, Landroid/view/SurfaceView;->mSubLayer:I

    :goto_0
    return-void

    :cond_0
    const/4 v0, -0x2

    iput v0, p0, Landroid/view/SurfaceView;->mSubLayer:I

    goto :goto_0
.end method

.method public final surfacePositionLost_uiRtSync(J)V
    .locals 3

    iget-object v1, p0, Landroid/view/SurfaceView;->mRTLastReportedPosition:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->setEmpty()V

    iget-object v1, p0, Landroid/view/SurfaceView;->mSurfaceControl:Landroid/view/SurfaceControl;

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Landroid/view/SurfaceView;->mSurfaceCreated:Z

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_1

    :cond_0
    return-void

    :cond_1
    iget-boolean v1, p0, Landroid/view/SurfaceView;->mRtHandlingPositionUpdates:Z

    if-eqz v1, :cond_2

    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/view/SurfaceView;->mRtHandlingPositionUpdates:Z

    iget-object v1, p0, Landroid/view/SurfaceView;->mScreenRect:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Landroid/view/SurfaceView;->mScreenRect:Landroid/graphics/Rect;

    iget-object v2, p0, Landroid/view/SurfaceView;->mRTLastReportedPosition:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_2

    :try_start_0
    iget-object v1, p0, Landroid/view/SurfaceView;->mScreenRect:Landroid/graphics/Rect;

    invoke-direct {p0, v1, p1, p2}, Landroid/view/SurfaceView;->setParentSpaceRectangle(Landroid/graphics/Rect;J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v1, "SurfaceView"

    const-string/jumbo v2, "Exception configuring surface"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method protected updateSurface()V
    .locals 34

    move-object/from16 v0, p0

    iget-boolean v2, v0, Landroid/view/SurfaceView;->mHaveFrame:Z

    if-nez v2, :cond_0

    return-void

    :cond_0
    invoke-virtual/range {p0 .. p0}, Landroid/view/SurfaceView;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v30

    if-eqz v30, :cond_1

    move-object/from16 v0, v30

    iget-object v2, v0, Landroid/view/ViewRootImpl;->mSurface:Landroid/view/Surface;

    if-nez v2, :cond_2

    :cond_1
    invoke-virtual/range {p0 .. p0}, Landroid/view/SurfaceView;->forceDestroySurfaceControl()V

    return-void

    :cond_2
    move-object/from16 v0, v30

    iget-object v2, v0, Landroid/view/ViewRootImpl;->mSurface:Landroid/view/Surface;

    invoke-virtual {v2}, Landroid/view/Surface;->isValid()Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    if-nez v2, :cond_1

    move-object/from16 v0, v30

    iget-object v2, v0, Landroid/view/ViewRootImpl;->mTranslator:Landroid/content/res/CompatibilityInfo$Translator;

    move-object/from16 v0, p0

    iput-object v2, v0, Landroid/view/SurfaceView;->mTranslator:Landroid/content/res/CompatibilityInfo$Translator;

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/view/SurfaceView;->mTranslator:Landroid/content/res/CompatibilityInfo$Translator;

    if-eqz v2, :cond_3

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/view/SurfaceView;->mSurface:Landroid/view/Surface;

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/view/SurfaceView;->mTranslator:Landroid/content/res/CompatibilityInfo$Translator;

    invoke-virtual {v2, v3}, Landroid/view/Surface;->setCompatibilityTranslator(Landroid/content/res/CompatibilityInfo$Translator;)V

    :cond_3
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/SurfaceView;->mRequestedWidth:I

    move/from16 v20, v0

    if-gtz v20, :cond_4

    invoke-virtual/range {p0 .. p0}, Landroid/view/SurfaceView;->getWidth()I

    move-result v20

    :cond_4
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/SurfaceView;->mRequestedHeight:I

    move/from16 v19, v0

    if-gtz v19, :cond_5

    invoke-virtual/range {p0 .. p0}, Landroid/view/SurfaceView;->getHeight()I

    move-result v19

    :cond_5
    move-object/from16 v0, p0

    iget v2, v0, Landroid/view/SurfaceView;->mFormat:I

    move-object/from16 v0, p0

    iget v3, v0, Landroid/view/SurfaceView;->mRequestedFormat:I

    if-eq v2, v3, :cond_15

    const/4 v15, 0x1

    :goto_0
    move-object/from16 v0, p0

    iget-boolean v2, v0, Landroid/view/SurfaceView;->mVisible:Z

    move-object/from16 v0, p0

    iget-boolean v3, v0, Landroid/view/SurfaceView;->mRequestedVisible:Z

    if-eq v2, v3, :cond_16

    const/16 v32, 0x1

    :goto_1
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/view/SurfaceView;->mSurfaceControl:Landroid/view/SurfaceControl;

    if-eqz v2, :cond_6

    if-nez v15, :cond_6

    if-eqz v32, :cond_17

    :cond_6
    move-object/from16 v0, p0

    iget-boolean v13, v0, Landroid/view/SurfaceView;->mRequestedVisible:Z

    :goto_2
    move-object/from16 v0, p0

    iget v2, v0, Landroid/view/SurfaceView;->mSurfaceWidth:I

    move/from16 v0, v20

    if-ne v2, v0, :cond_7

    move-object/from16 v0, p0

    iget v2, v0, Landroid/view/SurfaceView;->mSurfaceHeight:I

    move/from16 v0, v19

    if-eq v2, v0, :cond_18

    :cond_7
    const/16 v25, 0x1

    :goto_3
    move-object/from16 v0, p0

    iget-boolean v2, v0, Landroid/view/SurfaceView;->mWindowVisibility:Z

    move-object/from16 v0, p0

    iget-boolean v3, v0, Landroid/view/SurfaceView;->mLastWindowVisibility:Z

    if-eq v2, v3, :cond_19

    const/16 v33, 0x1

    :goto_4
    const/16 v23, 0x0

    if-nez v13, :cond_8

    if-nez v15, :cond_8

    if-nez v25, :cond_8

    if-nez v32, :cond_8

    if-eqz v33, :cond_2f

    :cond_8
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/view/SurfaceView;->mLocation:[I

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Landroid/view/SurfaceView;->getLocationInWindow([I)V

    :try_start_0
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/view/SurfaceView;->mRequestedVisible:Z

    move/from16 v31, v0

    move/from16 v0, v31

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/view/SurfaceView;->mVisible:Z

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/view/SurfaceView;->mLocation:[I

    const/4 v3, 0x0

    aget v2, v2, v3

    move-object/from16 v0, p0

    iput v2, v0, Landroid/view/SurfaceView;->mWindowSpaceLeft:I

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/view/SurfaceView;->mLocation:[I

    const/4 v3, 0x1

    aget v2, v2, v3

    move-object/from16 v0, p0

    iput v2, v0, Landroid/view/SurfaceView;->mWindowSpaceTop:I

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/SurfaceView;->mSurfaceWidth:I

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/SurfaceView;->mSurfaceHeight:I

    move-object/from16 v0, p0

    iget v2, v0, Landroid/view/SurfaceView;->mRequestedFormat:I

    move-object/from16 v0, p0

    iput v2, v0, Landroid/view/SurfaceView;->mFormat:I

    move-object/from16 v0, p0

    iget-boolean v2, v0, Landroid/view/SurfaceView;->mWindowVisibility:Z

    move-object/from16 v0, p0

    iput-boolean v2, v0, Landroid/view/SurfaceView;->mLastWindowVisibility:Z

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/view/SurfaceView;->mScreenRect:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget v3, v0, Landroid/view/SurfaceView;->mWindowSpaceLeft:I

    iput v3, v2, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/view/SurfaceView;->mScreenRect:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget v3, v0, Landroid/view/SurfaceView;->mWindowSpaceTop:I

    iput v3, v2, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/view/SurfaceView;->mScreenRect:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget v3, v0, Landroid/view/SurfaceView;->mWindowSpaceLeft:I

    invoke-virtual/range {p0 .. p0}, Landroid/view/SurfaceView;->getWidth()I

    move-result v4

    add-int/2addr v3, v4

    iput v3, v2, Landroid/graphics/Rect;->right:I

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/view/SurfaceView;->mScreenRect:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget v3, v0, Landroid/view/SurfaceView;->mWindowSpaceTop:I

    invoke-virtual/range {p0 .. p0}, Landroid/view/SurfaceView;->getHeight()I

    move-result v4

    add-int/2addr v3, v4

    iput v3, v2, Landroid/graphics/Rect;->bottom:I

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/view/SurfaceView;->mTranslator:Landroid/content/res/CompatibilityInfo$Translator;

    if-eqz v2, :cond_9

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/view/SurfaceView;->mTranslator:Landroid/content/res/CompatibilityInfo$Translator;

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/view/SurfaceView;->mScreenRect:Landroid/graphics/Rect;

    invoke-virtual {v2, v3}, Landroid/content/res/CompatibilityInfo$Translator;->translateRectInAppWindowToScreen(Landroid/graphics/Rect;)V

    :cond_9
    invoke-direct/range {p0 .. p0}, Landroid/view/SurfaceView;->getParentSurfaceInsets()Landroid/graphics/Rect;

    move-result-object v28

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/view/SurfaceView;->mScreenRect:Landroid/graphics/Rect;

    move-object/from16 v0, v28

    iget v3, v0, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, v28

    iget v4, v0, Landroid/graphics/Rect;->top:I

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Rect;->offset(II)V

    if-eqz v13, :cond_1a

    new-instance v2, Landroid/view/SurfaceSession;

    move-object/from16 v0, v30

    iget-object v3, v0, Landroid/view/ViewRootImpl;->mSurface:Landroid/view/Surface;

    invoke-direct {v2, v3}, Landroid/view/SurfaceSession;-><init>(Landroid/view/Surface;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Landroid/view/SurfaceView;->mSurfaceSession:Landroid/view/SurfaceSession;

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/view/SurfaceView;->mSurfaceControl:Landroid/view/SurfaceControl;

    move-object/from16 v0, p0

    iput-object v2, v0, Landroid/view/SurfaceView;->mDeferredDestroySurfaceControl:Landroid/view/SurfaceControl;

    invoke-direct/range {p0 .. p0}, Landroid/view/SurfaceView;->updateOpaqueFlag()V

    new-instance v2, Landroid/view/SurfaceView$SurfaceControlWithBackground;

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/SurfaceView;->mSurfaceSession:Landroid/view/SurfaceSession;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "SurfaceView - "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual/range {v30 .. v30}, Landroid/view/ViewRootImpl;->getTitle()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v5, "@"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual/range {p0 .. p0}, Landroid/view/SurfaceView;->hashCode()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v5, "@"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget v5, v0, Landroid/view/SurfaceView;->mSurfaceCreatedCount:I

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    iget v6, v0, Landroid/view/SurfaceView;->mSurfaceWidth:I

    move-object/from16 v0, p0

    iget v7, v0, Landroid/view/SurfaceView;->mSurfaceHeight:I

    move-object/from16 v0, p0

    iget v8, v0, Landroid/view/SurfaceView;->mFormat:I

    move-object/from16 v0, p0

    iget v9, v0, Landroid/view/SurfaceView;->mSurfaceFlags:I

    move-object/from16 v3, p0

    invoke-direct/range {v2 .. v9}, Landroid/view/SurfaceView$SurfaceControlWithBackground;-><init>(Landroid/view/SurfaceView;Landroid/view/SurfaceSession;Ljava/lang/String;IIII)V

    move-object/from16 v0, p0

    iput-object v2, v0, Landroid/view/SurfaceView;->mSurfaceControl:Landroid/view/SurfaceControl;

    move-object/from16 v0, p0

    iget v2, v0, Landroid/view/SurfaceView;->mSurfaceCreatedCount:I

    add-int/lit8 v2, v2, 0x1

    move-object/from16 v0, p0

    iput v2, v0, Landroid/view/SurfaceView;->mSurfaceCreatedCount:I

    :cond_a
    const/16 v22, 0x0

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/view/SurfaceView;->mSurfaceLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    xor-int/lit8 v2, v31, 0x1

    :try_start_1
    move-object/from16 v0, p0

    iput-boolean v2, v0, Landroid/view/SurfaceView;->mDrawingStopped:Z

    const/16 v16, 0x0

    sget-boolean v2, Landroid/view/SurfaceView;->SUPPORT_MW_CROP:Z

    if-eqz v2, :cond_c

    if-nez v25, :cond_b

    if-eqz v13, :cond_c

    :cond_b
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/view/SurfaceView;->mIsInMultiWindowMode:Z

    move/from16 v17, v0

    invoke-virtual/range {v30 .. v30}, Landroid/view/ViewRootImpl;->semIsInMultiWindowMode()Z

    move-result v2

    move-object/from16 v0, p0

    iput-boolean v2, v0, Landroid/view/SurfaceView;->mIsInMultiWindowMode:Z

    move-object/from16 v0, p0

    iget-boolean v2, v0, Landroid/view/SurfaceView;->mIsInMultiWindowMode:Z

    move/from16 v0, v17

    if-eq v0, v2, :cond_1b

    const/16 v16, 0x1

    :cond_c
    :goto_5
    invoke-static {}, Landroid/view/SurfaceControl;->openTransaction()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/view/SurfaceView;->mSurfaceControl:Landroid/view/SurfaceControl;

    move-object/from16 v0, p0

    iget v3, v0, Landroid/view/SurfaceView;->mSubLayer:I

    invoke-virtual {v2, v3}, Landroid/view/SurfaceControl;->setLayer(I)V

    move-object/from16 v0, p0

    iget-boolean v2, v0, Landroid/view/SurfaceView;->mViewVisibility:Z

    if-eqz v2, :cond_1c

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/view/SurfaceView;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {v2}, Landroid/view/SurfaceControl;->show()V

    :goto_6
    if-nez v25, :cond_d

    if-nez v13, :cond_d

    move-object/from16 v0, p0

    iget-boolean v2, v0, Landroid/view/SurfaceView;->mRtHandlingPositionUpdates:Z

    xor-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_e

    :cond_d
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/view/SurfaceView;->mSurfaceControl:Landroid/view/SurfaceControl;

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/view/SurfaceView;->mScreenRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    int-to-float v3, v3

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/SurfaceView;->mScreenRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    int-to-float v4, v4

    invoke-virtual {v2, v3, v4}, Landroid/view/SurfaceControl;->setPosition(FF)V

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/view/SurfaceView;->mSurfaceControl:Landroid/view/SurfaceControl;

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/view/SurfaceView;->mScreenRect:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v3

    int-to-float v3, v3

    move-object/from16 v0, p0

    iget v4, v0, Landroid/view/SurfaceView;->mSurfaceWidth:I

    int-to-float v4, v4

    div-float/2addr v3, v4

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/SurfaceView;->mScreenRect:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v4

    int-to-float v4, v4

    move-object/from16 v0, p0

    iget v5, v0, Landroid/view/SurfaceView;->mSurfaceHeight:I

    int-to-float v5, v5

    div-float/2addr v4, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {v2, v3, v5, v6, v4}, Landroid/view/SurfaceControl;->setMatrix(FFFF)V

    :cond_e
    if-eqz v25, :cond_f

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/view/SurfaceView;->mSurfaceControl:Landroid/view/SurfaceControl;

    move-object/from16 v0, p0

    iget v3, v0, Landroid/view/SurfaceView;->mSurfaceWidth:I

    move-object/from16 v0, p0

    iget v4, v0, Landroid/view/SurfaceView;->mSurfaceHeight:I

    invoke-virtual {v2, v3, v4}, Landroid/view/SurfaceControl;->setSize(II)V

    :cond_f
    sget-boolean v2, Landroid/view/SurfaceView;->SUPPORT_MW_CROP:Z

    if-eqz v2, :cond_11

    if-eqz v16, :cond_11

    move-object/from16 v0, p0

    iget-boolean v2, v0, Landroid/view/SurfaceView;->mIsInMultiWindowMode:Z

    xor-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_11

    if-nez v25, :cond_10

    if-eqz v13, :cond_11

    :cond_10
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/view/SurfaceView;->mCropRect:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_11

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/view/SurfaceView;->mCropRect:Landroid/graphics/Rect;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, -0x1

    const/4 v6, -0x1

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/graphics/Rect;->set(IIII)V

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/view/SurfaceView;->mSurfaceControl:Landroid/view/SurfaceControl;

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/view/SurfaceView;->mCropRect:Landroid/graphics/Rect;

    invoke-virtual {v2, v3}, Landroid/view/SurfaceControl;->setWindowCrop(Landroid/graphics/Rect;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_11
    :try_start_3
    invoke-static {}, Landroid/view/SurfaceControl;->closeTransaction()V

    if-nez v25, :cond_12

    if-eqz v13, :cond_13

    :cond_12
    const/16 v23, 0x1

    :cond_13
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/view/SurfaceView;->mSurfaceFrame:Landroid/graphics/Rect;

    const/4 v3, 0x0

    iput v3, v2, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/view/SurfaceView;->mSurfaceFrame:Landroid/graphics/Rect;

    const/4 v3, 0x0

    iput v3, v2, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/view/SurfaceView;->mTranslator:Landroid/content/res/CompatibilityInfo$Translator;

    if-nez v2, :cond_1e

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/view/SurfaceView;->mSurfaceFrame:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget v3, v0, Landroid/view/SurfaceView;->mSurfaceWidth:I

    iput v3, v2, Landroid/graphics/Rect;->right:I

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/view/SurfaceView;->mSurfaceFrame:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget v3, v0, Landroid/view/SurfaceView;->mSurfaceHeight:I

    iput v3, v2, Landroid/graphics/Rect;->bottom:I

    :goto_7
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/view/SurfaceView;->mSurfaceFrame:Landroid/graphics/Rect;

    iget v0, v2, Landroid/graphics/Rect;->right:I

    move/from16 v29, v0

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/view/SurfaceView;->mSurfaceFrame:Landroid/graphics/Rect;

    iget v0, v2, Landroid/graphics/Rect;->bottom:I

    move/from16 v27, v0

    move-object/from16 v0, p0

    iget v2, v0, Landroid/view/SurfaceView;->mLastSurfaceWidth:I

    move/from16 v0, v29

    if-ne v2, v0, :cond_1f

    move-object/from16 v0, p0

    iget v2, v0, Landroid/view/SurfaceView;->mLastSurfaceHeight:I

    move/from16 v0, v27

    if-eq v2, v0, :cond_20

    const/16 v22, 0x1

    :goto_8
    move/from16 v0, v29

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/SurfaceView;->mLastSurfaceWidth:I

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/SurfaceView;->mLastSurfaceHeight:I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/view/SurfaceView;->mSurfaceLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    if-eqz v31, :cond_21

    :try_start_5
    move-object/from16 v0, p0

    iget-boolean v2, v0, Landroid/view/SurfaceView;->mDrawFinished:Z

    xor-int/lit8 v2, v2, 0x1

    :goto_9
    or-int v23, v23, v2

    const/4 v12, 0x0

    move/from16 v26, v13

    move-object/from16 v0, p0

    iget-boolean v2, v0, Landroid/view/SurfaceView;->mSurfaceCreated:Z

    if-eqz v2, :cond_23

    if-nez v26, :cond_14

    if-nez v31, :cond_23

    if-eqz v32, :cond_23

    :cond_14
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Landroid/view/SurfaceView;->mSurfaceCreated:Z

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/view/SurfaceView;->mSurface:Landroid/view/Surface;

    invoke-virtual {v2}, Landroid/view/Surface;->isValid()Z

    move-result v2

    if-eqz v2, :cond_23

    invoke-direct/range {p0 .. p0}, Landroid/view/SurfaceView;->getSurfaceCallbacks()[Landroid/view/SurfaceHolder$Callback;

    move-result-object v12

    const-string/jumbo v2, "SurfaceView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "surfaceDestroyed "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/SurfaceView;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x0

    array-length v3, v12

    :goto_a
    if-ge v2, v3, :cond_22

    aget-object v11, v12, v2

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/SurfaceView;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    invoke-interface {v11, v4}, Landroid/view/SurfaceHolder$Callback;->surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    :cond_15
    const/4 v15, 0x0

    goto/16 :goto_0

    :cond_16
    const/16 v32, 0x0

    goto/16 :goto_1

    :cond_17
    const/4 v13, 0x0

    goto/16 :goto_2

    :cond_18
    const/16 v25, 0x0

    goto/16 :goto_3

    :cond_19
    const/16 v33, 0x0

    goto/16 :goto_4

    :cond_1a
    :try_start_6
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/view/SurfaceView;->mSurfaceControl:Landroid/view/SurfaceControl;
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0

    if-nez v2, :cond_a

    return-void

    :cond_1b
    const/16 v16, 0x0

    goto/16 :goto_5

    :cond_1c
    :try_start_7
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/view/SurfaceView;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {v2}, Landroid/view/SurfaceControl;->hide()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto/16 :goto_6

    :catchall_0
    move-exception v2

    :try_start_8
    invoke-static {}, Landroid/view/SurfaceControl;->closeTransaction()V

    throw v2
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    :catchall_1
    move-exception v2

    :try_start_9
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/view/SurfaceView;->mSurfaceLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v2
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_0

    :catch_0
    move-exception v14

    const-string/jumbo v2, "SurfaceView"

    const-string/jumbo v3, "Exception configuring surface"

    invoke-static {v2, v3, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1d
    :goto_b
    return-void

    :cond_1e
    :try_start_a
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/view/SurfaceView;->mTranslator:Landroid/content/res/CompatibilityInfo$Translator;

    iget v10, v2, Landroid/content/res/CompatibilityInfo$Translator;->applicationInvertedScale:F

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/view/SurfaceView;->mSurfaceFrame:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget v3, v0, Landroid/view/SurfaceView;->mSurfaceWidth:I

    int-to-float v3, v3

    mul-float/2addr v3, v10

    const/high16 v4, 0x3f000000    # 0.5f

    add-float/2addr v3, v4

    float-to-int v3, v3

    iput v3, v2, Landroid/graphics/Rect;->right:I

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/view/SurfaceView;->mSurfaceFrame:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget v3, v0, Landroid/view/SurfaceView;->mSurfaceHeight:I

    int-to-float v3, v3

    mul-float/2addr v3, v10

    const/high16 v4, 0x3f000000    # 0.5f

    add-float/2addr v3, v4

    float-to-int v3, v3

    iput v3, v2, Landroid/graphics/Rect;->bottom:I
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    goto/16 :goto_7

    :cond_1f
    const/16 v22, 0x1

    goto/16 :goto_8

    :cond_20
    const/16 v22, 0x0

    goto/16 :goto_8

    :cond_21
    const/4 v2, 0x0

    goto/16 :goto_9

    :cond_22
    :try_start_b
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/view/SurfaceView;->mSurface:Landroid/view/Surface;

    invoke-virtual {v2}, Landroid/view/Surface;->isValid()Z

    move-result v2

    if-eqz v2, :cond_23

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/view/SurfaceView;->mSurface:Landroid/view/Surface;

    invoke-virtual {v2}, Landroid/view/Surface;->forceScopedDisconnect()V

    :cond_23
    if-eqz v13, :cond_24

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/view/SurfaceView;->mSurface:Landroid/view/Surface;

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/view/SurfaceView;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {v2, v3}, Landroid/view/Surface;->copyFrom(Landroid/view/SurfaceControl;)V

    :cond_24
    if-eqz v25, :cond_25

    invoke-virtual/range {p0 .. p0}, Landroid/view/SurfaceView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v3, 0x1a

    if-ge v2, v3, :cond_25

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/view/SurfaceView;->mSurface:Landroid/view/Surface;

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/view/SurfaceView;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {v2, v3}, Landroid/view/Surface;->createFrom(Landroid/view/SurfaceControl;)V

    :cond_25
    if-eqz v31, :cond_2d

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/view/SurfaceView;->mSurface:Landroid/view/Surface;

    invoke-virtual {v2}, Landroid/view/Surface;->isValid()Z

    move-result v2

    if-eqz v2, :cond_2d

    move-object/from16 v0, p0

    iget-boolean v2, v0, Landroid/view/SurfaceView;->mSurfaceCreated:Z

    if-nez v2, :cond_28

    if-nez v26, :cond_26

    if-eqz v32, :cond_28

    :cond_26
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Landroid/view/SurfaceView;->mSurfaceCreated:Z

    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Landroid/view/SurfaceView;->mIsCreating:Z

    if-nez v12, :cond_27

    invoke-direct/range {p0 .. p0}, Landroid/view/SurfaceView;->getSurfaceCallbacks()[Landroid/view/SurfaceHolder$Callback;

    move-result-object v12

    :cond_27
    const-string/jumbo v2, "SurfaceView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "surfaceCreated "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/SurfaceView;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x0

    array-length v3, v12

    :goto_c
    if-ge v2, v3, :cond_28

    aget-object v11, v12, v2

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/SurfaceView;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    invoke-interface {v11, v4}, Landroid/view/SurfaceHolder$Callback;->surfaceCreated(Landroid/view/SurfaceHolder;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_c

    :cond_28
    if-nez v13, :cond_29

    if-nez v15, :cond_29

    if-nez v25, :cond_29

    if-nez v32, :cond_29

    if-eqz v22, :cond_2b

    :cond_29
    if-nez v12, :cond_2a

    invoke-direct/range {p0 .. p0}, Landroid/view/SurfaceView;->getSurfaceCallbacks()[Landroid/view/SurfaceHolder$Callback;

    move-result-object v12

    :cond_2a
    const-string/jumbo v2, "SurfaceView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "surfaceChanged ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v20

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v19

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ") "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/SurfaceView;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x0

    array-length v3, v12

    :goto_d
    if-ge v2, v3, :cond_2b

    aget-object v11, v12, v2

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/SurfaceView;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    move-object/from16 v0, p0

    iget v5, v0, Landroid/view/SurfaceView;->mFormat:I

    move/from16 v0, v20

    move/from16 v1, v19

    invoke-interface {v11, v4, v5, v0, v1}, Landroid/view/SurfaceHolder$Callback;->surfaceChanged(Landroid/view/SurfaceHolder;III)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_d

    :cond_2b
    if-eqz v23, :cond_2d

    if-nez v12, :cond_2c

    invoke-direct/range {p0 .. p0}, Landroid/view/SurfaceView;->getSurfaceCallbacks()[Landroid/view/SurfaceHolder$Callback;

    move-result-object v12

    :cond_2c
    move-object/from16 v0, p0

    iget v2, v0, Landroid/view/SurfaceView;->mPendingReportDraws:I

    add-int/lit8 v2, v2, 0x1

    move-object/from16 v0, p0

    iput v2, v0, Landroid/view/SurfaceView;->mPendingReportDraws:I

    invoke-virtual/range {v30 .. v30}, Landroid/view/ViewRootImpl;->drawPending()V

    new-instance v24, Lcom/android/internal/view/SurfaceCallbackHelper;

    new-instance v2, Landroid/view/-$Lambda$P6MTGFSudLpwrqb6oVD8FdorW1c$1;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Landroid/view/-$Lambda$P6MTGFSudLpwrqb6oVD8FdorW1c$1;-><init>(Ljava/lang/Object;)V

    move-object/from16 v0, v24

    invoke-direct {v0, v2}, Lcom/android/internal/view/SurfaceCallbackHelper;-><init>(Ljava/lang/Runnable;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/view/SurfaceView;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    move-object/from16 v0, v24

    invoke-virtual {v0, v2, v12}, Lcom/android/internal/view/SurfaceCallbackHelper;->dispatchSurfaceRedrawNeededAsync(Landroid/view/SurfaceHolder;[Landroid/view/SurfaceHolder$Callback;)V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_2

    :cond_2d
    const/4 v2, 0x0

    :try_start_c
    move-object/from16 v0, p0

    iput-boolean v2, v0, Landroid/view/SurfaceView;->mIsCreating:Z

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/view/SurfaceView;->mSurfaceControl:Landroid/view/SurfaceControl;

    if-eqz v2, :cond_1d

    move-object/from16 v0, p0

    iget-boolean v2, v0, Landroid/view/SurfaceView;->mSurfaceCreated:Z

    xor-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_1d

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/view/SurfaceView;->mSurface:Landroid/view/Surface;

    invoke-virtual {v2}, Landroid/view/Surface;->release()V

    move-object/from16 v0, p0

    iget-boolean v2, v0, Landroid/view/SurfaceView;->mWindowStopped:Z

    if-nez v2, :cond_1d

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/view/SurfaceView;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {v2}, Landroid/view/SurfaceControl;->destroy()V

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Landroid/view/SurfaceView;->mSurfaceControl:Landroid/view/SurfaceControl;

    goto/16 :goto_b

    :catchall_2
    move-exception v2

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-boolean v3, v0, Landroid/view/SurfaceView;->mIsCreating:Z

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/view/SurfaceView;->mSurfaceControl:Landroid/view/SurfaceControl;

    if-eqz v3, :cond_2e

    move-object/from16 v0, p0

    iget-boolean v3, v0, Landroid/view/SurfaceView;->mSurfaceCreated:Z

    xor-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_2e

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/view/SurfaceView;->mSurface:Landroid/view/Surface;

    invoke-virtual {v3}, Landroid/view/Surface;->release()V

    move-object/from16 v0, p0

    iget-boolean v3, v0, Landroid/view/SurfaceView;->mWindowStopped:Z

    if-nez v3, :cond_2e

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/view/SurfaceView;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {v3}, Landroid/view/SurfaceControl;->destroy()V

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-object v3, v0, Landroid/view/SurfaceView;->mSurfaceControl:Landroid/view/SurfaceControl;

    :cond_2e
    throw v2
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_0

    :cond_2f
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/view/SurfaceView;->mLocation:[I

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Landroid/view/SurfaceView;->getLocationInSurface([I)V

    move-object/from16 v0, p0

    iget v2, v0, Landroid/view/SurfaceView;->mWindowSpaceLeft:I

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/view/SurfaceView;->mLocation:[I

    const/4 v4, 0x0

    aget v3, v3, v4

    if-ne v2, v3, :cond_33

    move-object/from16 v0, p0

    iget v2, v0, Landroid/view/SurfaceView;->mWindowSpaceTop:I

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/view/SurfaceView;->mLocation:[I

    const/4 v4, 0x1

    aget v3, v3, v4

    if-eq v2, v3, :cond_34

    const/16 v21, 0x1

    :goto_e
    invoke-virtual/range {p0 .. p0}, Landroid/view/SurfaceView;->getWidth()I

    move-result v2

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/view/SurfaceView;->mScreenRect:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v3

    if-ne v2, v3, :cond_35

    invoke-virtual/range {p0 .. p0}, Landroid/view/SurfaceView;->getHeight()I

    move-result v2

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/view/SurfaceView;->mScreenRect:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v3

    if-eq v2, v3, :cond_36

    const/16 v18, 0x1

    :goto_f
    if-nez v21, :cond_30

    if-eqz v18, :cond_39

    :cond_30
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/view/SurfaceView;->mLocation:[I

    const/4 v3, 0x0

    aget v2, v2, v3

    move-object/from16 v0, p0

    iput v2, v0, Landroid/view/SurfaceView;->mWindowSpaceLeft:I

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/view/SurfaceView;->mLocation:[I

    const/4 v3, 0x1

    aget v2, v2, v3

    move-object/from16 v0, p0

    iput v2, v0, Landroid/view/SurfaceView;->mWindowSpaceTop:I

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/view/SurfaceView;->mLocation:[I

    invoke-virtual/range {p0 .. p0}, Landroid/view/SurfaceView;->getWidth()I

    move-result v3

    const/4 v4, 0x0

    aput v3, v2, v4

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/view/SurfaceView;->mLocation:[I

    invoke-virtual/range {p0 .. p0}, Landroid/view/SurfaceView;->getHeight()I

    move-result v3

    const/4 v4, 0x1

    aput v3, v2, v4

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/view/SurfaceView;->mLocation:[I

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Landroid/view/SurfaceView;->transformFromViewToWindowSpace([I)V

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/view/SurfaceView;->mAttachInfo:Landroid/view/View$AttachInfo;

    if-eqz v2, :cond_31

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/view/SurfaceView;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v2, v2, Landroid/view/View$AttachInfo;->mViewRootImpl:Landroid/view/ViewRootImpl;

    if-eqz v2, :cond_31

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/view/SurfaceView;->mLocation:[I

    const/4 v3, 0x0

    aget v4, v2, v3

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/view/SurfaceView;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v5, v5, Landroid/view/View$AttachInfo;->mViewRootImpl:Landroid/view/ViewRootImpl;

    iget-object v5, v5, Landroid/view/ViewRootImpl;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    iget-object v5, v5, Landroid/view/WindowManager$LayoutParams;->surfaceInsets:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->left:I

    add-int/2addr v4, v5

    aput v4, v2, v3

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/view/SurfaceView;->mLocation:[I

    const/4 v3, 0x1

    aget v4, v2, v3

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/view/SurfaceView;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v5, v5, Landroid/view/View$AttachInfo;->mViewRootImpl:Landroid/view/ViewRootImpl;

    iget-object v5, v5, Landroid/view/ViewRootImpl;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    iget-object v5, v5, Landroid/view/WindowManager$LayoutParams;->surfaceInsets:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->top:I

    add-int/2addr v4, v5

    aput v4, v2, v3

    :cond_31
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/view/SurfaceView;->mScreenRect:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget v3, v0, Landroid/view/SurfaceView;->mWindowSpaceLeft:I

    move-object/from16 v0, p0

    iget v4, v0, Landroid/view/SurfaceView;->mWindowSpaceTop:I

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/view/SurfaceView;->mLocation:[I

    const/4 v6, 0x0

    aget v5, v5, v6

    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/view/SurfaceView;->mLocation:[I

    const/4 v7, 0x1

    aget v6, v6, v7

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/graphics/Rect;->set(IIII)V

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/view/SurfaceView;->mTranslator:Landroid/content/res/CompatibilityInfo$Translator;

    if-eqz v2, :cond_32

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/view/SurfaceView;->mTranslator:Landroid/content/res/CompatibilityInfo$Translator;

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/view/SurfaceView;->mScreenRect:Landroid/graphics/Rect;

    invoke-virtual {v2, v3}, Landroid/content/res/CompatibilityInfo$Translator;->translateRectInAppWindowToScreen(Landroid/graphics/Rect;)V

    :cond_32
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/view/SurfaceView;->mSurfaceControl:Landroid/view/SurfaceControl;

    if-nez v2, :cond_37

    return-void

    :cond_33
    const/16 v21, 0x1

    goto/16 :goto_e

    :cond_34
    const/16 v21, 0x0

    goto/16 :goto_e

    :cond_35
    const/16 v18, 0x1

    goto/16 :goto_f

    :cond_36
    const/16 v18, 0x0

    goto/16 :goto_f

    :cond_37
    invoke-virtual/range {p0 .. p0}, Landroid/view/SurfaceView;->isHardwareAccelerated()Z

    move-result v2

    if-eqz v2, :cond_38

    move-object/from16 v0, p0

    iget-boolean v2, v0, Landroid/view/SurfaceView;->mRtHandlingPositionUpdates:Z

    xor-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_39

    :cond_38
    :try_start_d
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/view/SurfaceView;->mScreenRect:Landroid/graphics/Rect;

    const-wide/16 v4, -0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v4, v5}, Landroid/view/SurfaceView;->setParentSpaceRectangle(Landroid/graphics/Rect;J)V
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_1

    :cond_39
    :goto_10
    move-object/from16 v0, p0

    iget-boolean v2, v0, Landroid/view/SurfaceView;->mIsInMultiWindowMode:Z

    if-eqz v2, :cond_1d

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/view/SurfaceView;->mSurfaceControl:Landroid/view/SurfaceControl;

    instance-of v2, v2, Landroid/view/SurfaceView$SurfaceControlWithBackground;

    if-eqz v2, :cond_1d

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/view/SurfaceView;->mSurfaceControl:Landroid/view/SurfaceControl;

    check-cast v2, Landroid/view/SurfaceView$SurfaceControlWithBackground;

    invoke-static {v2}, Landroid/view/SurfaceView$SurfaceControlWithBackground;->-wrap1(Landroid/view/SurfaceView$SurfaceControlWithBackground;)V

    goto/16 :goto_b

    :catch_1
    move-exception v14

    const-string/jumbo v2, "SurfaceView"

    const-string/jumbo v3, "Exception configuring surface"

    invoke-static {v2, v3, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_10
.end method

.method public final updateSurfacePosition_renderWorker(JIIII)V
    .locals 3

    iget-object v1, p0, Landroid/view/SurfaceView;->mSurfaceControl:Landroid/view/SurfaceControl;

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Landroid/view/SurfaceView;->mSurfaceCreated:Z

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_1

    :cond_0
    return-void

    :cond_1
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/view/SurfaceView;->mRtHandlingPositionUpdates:Z

    iget-object v1, p0, Landroid/view/SurfaceView;->mRTLastReportedPosition:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    if-ne v1, p3, :cond_2

    iget-object v1, p0, Landroid/view/SurfaceView;->mRTLastReportedPosition:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    if-ne v1, p4, :cond_2

    iget-object v1, p0, Landroid/view/SurfaceView;->mRTLastReportedPosition:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->right:I

    if-ne v1, p5, :cond_2

    iget-object v1, p0, Landroid/view/SurfaceView;->mRTLastReportedPosition:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    if-ne v1, p6, :cond_2

    return-void

    :cond_2
    :try_start_0
    iget-object v1, p0, Landroid/view/SurfaceView;->mRTLastReportedPosition:Landroid/graphics/Rect;

    invoke-virtual {v1, p3, p4, p5, p6}, Landroid/graphics/Rect;->set(IIII)V

    iget-object v1, p0, Landroid/view/SurfaceView;->mRTLastReportedPosition:Landroid/graphics/Rect;

    invoke-direct {p0, v1, p1, p2}, Landroid/view/SurfaceView;->setParentSpaceRectangle(Landroid/graphics/Rect;J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v1, "SurfaceView"

    const-string/jumbo v2, "Exception from repositionChild"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public windowStopped(Z)V
    .locals 0

    iput-boolean p1, p0, Landroid/view/SurfaceView;->mWindowStopped:Z

    invoke-direct {p0}, Landroid/view/SurfaceView;->updateRequestedVisibility()V

    invoke-virtual {p0}, Landroid/view/SurfaceView;->updateSurface()V

    return-void
.end method
