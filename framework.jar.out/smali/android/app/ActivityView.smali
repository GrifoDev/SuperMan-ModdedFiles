.class public Landroid/app/ActivityView;
.super Landroid/view/ViewGroup;
.source "ActivityView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/ActivityView$1;,
        Landroid/app/ActivityView$ActivityContainerCallback;,
        Landroid/app/ActivityView$ActivityContainerWrapper;,
        Landroid/app/ActivityView$ActivityViewCallback;,
        Landroid/app/ActivityView$ActivityViewSurfaceTextureListener;,
        Landroid/app/ActivityView$SerialExecutor;
    }
.end annotation


# static fields
.field private static final CPU_COUNT:I

.field private static final DEBUG:Z = false

.field private static final KEEP_ALIVE:I = 0x1

.field private static final MAXIMUM_POOL_SIZE:I

.field private static final MINIMUM_POOL_SIZE:I = 0x1

.field private static final MSG_SET_SURFACE:I = 0x1

.field private static final TAG:Ljava/lang/String; = "ActivityView"

.field private static final sExecutor:Ljava/util/concurrent/Executor;

.field private static final sPoolWorkQueue:Ljava/util/concurrent/BlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingQueue",
            "<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private static final sThreadFactory:Ljava/util/concurrent/ThreadFactory;


# instance fields
.field private mActivity:Landroid/app/Activity;

.field private mActivityContainer:Landroid/app/ActivityView$ActivityContainerWrapper;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mActivityContainerLock"
    .end annotation
.end field

.field private mActivityContainerLock:Ljava/lang/Object;

.field private mActivityViewCallback:Landroid/app/ActivityView$ActivityViewCallback;

.field private final mDensityDpi:I

.field private final mExecutor:Landroid/app/ActivityView$SerialExecutor;

.field private mHeight:I

.field private mLastVisibility:I

.field private mSurface:Landroid/view/Surface;

.field private final mTextureView:Landroid/view/TextureView;

.field private mWidth:I


# direct methods
.method static synthetic -get0(Landroid/app/ActivityView;)Landroid/app/ActivityView$ActivityContainerWrapper;
    .locals 1

    iget-object v0, p0, Landroid/app/ActivityView;->mActivityContainer:Landroid/app/ActivityView$ActivityContainerWrapper;

    return-object v0
.end method

.method static synthetic -get1(Landroid/app/ActivityView;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Landroid/app/ActivityView;->mActivityContainerLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic -get2(Landroid/app/ActivityView;)Landroid/app/ActivityView$ActivityViewCallback;
    .locals 1

    iget-object v0, p0, Landroid/app/ActivityView;->mActivityViewCallback:Landroid/app/ActivityView$ActivityViewCallback;

    return-object v0
.end method

.method static synthetic -get3(Landroid/app/ActivityView;)I
    .locals 1

    iget v0, p0, Landroid/app/ActivityView;->mDensityDpi:I

    return v0
.end method

.method static synthetic -get4(Landroid/app/ActivityView;)I
    .locals 1

    iget v0, p0, Landroid/app/ActivityView;->mHeight:I

    return v0
.end method

.method static synthetic -get5(Landroid/app/ActivityView;)Landroid/view/Surface;
    .locals 1

    iget-object v0, p0, Landroid/app/ActivityView;->mSurface:Landroid/view/Surface;

    return-object v0
.end method

.method static synthetic -get6(Landroid/app/ActivityView;)I
    .locals 1

    iget v0, p0, Landroid/app/ActivityView;->mWidth:I

    return v0
.end method

.method static synthetic -get7()Ljava/util/concurrent/Executor;
    .locals 1

    sget-object v0, Landroid/app/ActivityView;->sExecutor:Ljava/util/concurrent/Executor;

    return-object v0
.end method

.method static synthetic -set0(Landroid/app/ActivityView;I)I
    .locals 0

    iput p1, p0, Landroid/app/ActivityView;->mHeight:I

    return p1
.end method

.method static synthetic -set1(Landroid/app/ActivityView;Landroid/view/Surface;)Landroid/view/Surface;
    .locals 0

    iput-object p1, p0, Landroid/app/ActivityView;->mSurface:Landroid/view/Surface;

    return-object p1
.end method

.method static synthetic -set2(Landroid/app/ActivityView;I)I
    .locals 0

    iput p1, p0, Landroid/app/ActivityView;->mWidth:I

    return p1
.end method

.method static synthetic -wrap0(Landroid/app/ActivityView;Landroid/view/Surface;IIIZ)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Landroid/app/ActivityView;->setSurfaceAsync(Landroid/view/Surface;IIIZ)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 9

    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->availableProcessors()I

    move-result v0

    sput v0, Landroid/app/ActivityView;->CPU_COUNT:I

    sget v0, Landroid/app/ActivityView;->CPU_COUNT:I

    mul-int/lit8 v0, v0, 0x2

    add-int/lit8 v0, v0, 0x1

    sput v0, Landroid/app/ActivityView;->MAXIMUM_POOL_SIZE:I

    new-instance v0, Landroid/app/ActivityView$1;

    invoke-direct {v0}, Landroid/app/ActivityView$1;-><init>()V

    sput-object v0, Landroid/app/ActivityView;->sThreadFactory:Ljava/util/concurrent/ThreadFactory;

    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>(I)V

    sput-object v0, Landroid/app/ActivityView;->sPoolWorkQueue:Ljava/util/concurrent/BlockingQueue;

    new-instance v1, Ljava/util/concurrent/ThreadPoolExecutor;

    sget v3, Landroid/app/ActivityView;->MAXIMUM_POOL_SIZE:I

    const-wide/16 v4, 0x1

    sget-object v6, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    sget-object v7, Landroid/app/ActivityView;->sPoolWorkQueue:Ljava/util/concurrent/BlockingQueue;

    sget-object v8, Landroid/app/ActivityView;->sThreadFactory:Ljava/util/concurrent/ThreadFactory;

    const/4 v2, 0x1

    invoke-direct/range {v1 .. v8}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    sput-object v1, Landroid/app/ActivityView;->sExecutor:Ljava/util/concurrent/Executor;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/app/ActivityView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroid/app/ActivityView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 8

    const/4 v7, 0x0

    invoke-direct {p0, p1, p2, p3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    new-instance v3, Landroid/app/ActivityView$SerialExecutor;

    invoke-direct {v3, v7}, Landroid/app/ActivityView$SerialExecutor;-><init>(Landroid/app/ActivityView$SerialExecutor;)V

    iput-object v3, p0, Landroid/app/ActivityView;->mExecutor:Landroid/app/ActivityView$SerialExecutor;

    new-instance v3, Ljava/lang/Object;

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    iput-object v3, p0, Landroid/app/ActivityView;->mActivityContainerLock:Ljava/lang/Object;

    :goto_0
    instance-of v3, p1, Landroid/content/ContextWrapper;

    if-eqz v3, :cond_0

    instance-of v3, p1, Landroid/app/Activity;

    if-eqz v3, :cond_1

    move-object v3, p1

    check-cast v3, Landroid/app/Activity;

    iput-object v3, p0, Landroid/app/ActivityView;->mActivity:Landroid/app/Activity;

    :cond_0
    iget-object v3, p0, Landroid/app/ActivityView;->mActivity:Landroid/app/Activity;

    if-nez v3, :cond_2

    new-instance v3, Ljava/lang/IllegalStateException;

    const-string/jumbo v4, "The ActivityView\'s Context is not an Activity."

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_1
    check-cast p1, Landroid/content/ContextWrapper;

    invoke-virtual {p1}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object p1

    goto :goto_0

    :cond_2
    :try_start_0
    new-instance v3, Landroid/app/ActivityView$ActivityContainerWrapper;

    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v4

    iget-object v5, p0, Landroid/app/ActivityView;->mActivity:Landroid/app/Activity;

    invoke-virtual {v5}, Landroid/app/Activity;->getActivityToken()Landroid/os/IBinder;

    move-result-object v5

    new-instance v6, Landroid/app/ActivityView$ActivityContainerCallback;

    invoke-direct {v6, p0}, Landroid/app/ActivityView$ActivityContainerCallback;-><init>(Landroid/app/ActivityView;)V

    invoke-interface {v4, v5, v6}, Landroid/app/IActivityManager;->createVirtualActivityContainer(Landroid/os/IBinder;Landroid/app/IActivityContainerCallback;)Landroid/app/IActivityContainer;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/app/ActivityView$ActivityContainerWrapper;-><init>(Landroid/app/IActivityContainer;)V

    iput-object v3, p0, Landroid/app/ActivityView;->mActivityContainer:Landroid/app/ActivityView$ActivityContainerWrapper;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    new-instance v3, Landroid/view/TextureView;

    invoke-direct {v3, p1}, Landroid/view/TextureView;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Landroid/app/ActivityView;->mTextureView:Landroid/view/TextureView;

    iget-object v3, p0, Landroid/app/ActivityView;->mTextureView:Landroid/view/TextureView;

    new-instance v4, Landroid/app/ActivityView$ActivityViewSurfaceTextureListener;

    invoke-direct {v4, p0, v7}, Landroid/app/ActivityView$ActivityViewSurfaceTextureListener;-><init>(Landroid/app/ActivityView;Landroid/app/ActivityView$ActivityViewSurfaceTextureListener;)V

    invoke-virtual {v3, v4}, Landroid/view/TextureView;->setSurfaceTextureListener(Landroid/view/TextureView$SurfaceTextureListener;)V

    iget-object v3, p0, Landroid/app/ActivityView;->mTextureView:Landroid/view/TextureView;

    invoke-virtual {p0, v3}, Landroid/app/ActivityView;->addView(Landroid/view/View;)V

    iget-object v3, p0, Landroid/app/ActivityView;->mActivity:Landroid/app/Activity;

    const-string/jumbo v4, "window"

    invoke-virtual {v3, v4}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/WindowManager;

    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    iget v3, v1, Landroid/util/DisplayMetrics;->densityDpi:I

    iput v3, p0, Landroid/app/ActivityView;->mDensityDpi:I

    invoke-virtual {p0}, Landroid/app/ActivityView;->getVisibility()I

    move-result v3

    iput v3, p0, Landroid/app/ActivityView;->mLastVisibility:I

    return-void

    :catch_0
    move-exception v0

    new-instance v3, Ljava/lang/RuntimeException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "ActivityView: Unable to create ActivityContainer. "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method private injectInputEvent(Landroid/view/InputEvent;)Z
    .locals 1

    iget-object v0, p0, Landroid/app/ActivityView;->mActivityContainer:Landroid/app/ActivityView$ActivityContainerWrapper;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/app/ActivityView;->mActivityContainer:Landroid/app/ActivityView$ActivityContainerWrapper;

    invoke-virtual {v0, p1}, Landroid/app/ActivityView$ActivityContainerWrapper;->injectEvent(Landroid/view/InputEvent;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private setSurfaceAsync(Landroid/view/Surface;IIIZ)V
    .locals 8

    iget-object v7, p0, Landroid/app/ActivityView;->mExecutor:Landroid/app/ActivityView$SerialExecutor;

    new-instance v0, Landroid/app/ActivityView$2;

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    invoke-direct/range {v0 .. v6}, Landroid/app/ActivityView$2;-><init>(Landroid/app/ActivityView;Landroid/view/Surface;IIIZ)V

    invoke-virtual {v7, v0}, Landroid/app/ActivityView$SerialExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method


# virtual methods
.method public isAttachedToDisplay()Z
    .locals 1

    iget-object v0, p0, Landroid/app/ActivityView;->mSurface:Landroid/view/Surface;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onAttachedToWindow()V
    .locals 0

    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 0

    return-void
.end method

.method public onGenericMotionEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->isFromSource(I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Landroid/app/ActivityView;->injectInputEvent(Landroid/view/InputEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onGenericMotionEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method protected onLayout(ZIIII)V
    .locals 4

    const/4 v3, 0x0

    iget-object v0, p0, Landroid/app/ActivityView;->mTextureView:Landroid/view/TextureView;

    sub-int v1, p4, p2

    sub-int v2, p5, p3

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/view/TextureView;->layout(IIII)V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    invoke-direct {p0, p1}, Landroid/app/ActivityView;->injectInputEvent(Landroid/view/InputEvent;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method protected onVisibilityChanged(Landroid/view/View;I)V
    .locals 6

    const/16 v2, 0x8

    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->onVisibilityChanged(Landroid/view/View;I)V

    iget-object v0, p0, Landroid/app/ActivityView;->mSurface:Landroid/view/Surface;

    if-eqz v0, :cond_1

    if-eq p2, v2, :cond_0

    iget v0, p0, Landroid/app/ActivityView;->mLastVisibility:I

    if-ne v0, v2, :cond_1

    :cond_0
    if-ne p2, v2, :cond_2

    const/4 v1, 0x0

    :goto_0
    iget v2, p0, Landroid/app/ActivityView;->mWidth:I

    iget v3, p0, Landroid/app/ActivityView;->mHeight:I

    iget v4, p0, Landroid/app/ActivityView;->mDensityDpi:I

    const/4 v5, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Landroid/app/ActivityView;->setSurfaceAsync(Landroid/view/Surface;IIIZ)V

    :cond_1
    iput p2, p0, Landroid/app/ActivityView;->mLastVisibility:I

    return-void

    :cond_2
    iget-object v1, p0, Landroid/app/ActivityView;->mSurface:Landroid/view/Surface;

    goto :goto_0
.end method

.method public release()V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Landroid/app/ActivityView;->mActivityContainer:Landroid/app/ActivityView$ActivityContainerWrapper;

    if-nez v0, :cond_0

    const-string/jumbo v0, "ActivityView"

    const-string/jumbo v1, "Duplicate call to release"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-object v1, p0, Landroid/app/ActivityView;->mActivityContainerLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Landroid/app/ActivityView;->mActivityContainer:Landroid/app/ActivityView$ActivityContainerWrapper;

    invoke-virtual {v0}, Landroid/app/ActivityView$ActivityContainerWrapper;->release()V

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/app/ActivityView;->mActivityContainer:Landroid/app/ActivityView$ActivityContainerWrapper;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    iget-object v0, p0, Landroid/app/ActivityView;->mSurface:Landroid/view/Surface;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/app/ActivityView;->mSurface:Landroid/view/Surface;

    invoke-virtual {v0}, Landroid/view/Surface;->release()V

    iput-object v2, p0, Landroid/app/ActivityView;->mSurface:Landroid/view/Surface;

    :cond_1
    iget-object v0, p0, Landroid/app/ActivityView;->mTextureView:Landroid/view/TextureView;

    invoke-virtual {v0, v2}, Landroid/view/TextureView;->setSurfaceTextureListener(Landroid/view/TextureView$SurfaceTextureListener;)V

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public setCallback(Landroid/app/ActivityView$ActivityViewCallback;)V
    .locals 1

    iput-object p1, p0, Landroid/app/ActivityView;->mActivityViewCallback:Landroid/app/ActivityView$ActivityViewCallback;

    iget-object v0, p0, Landroid/app/ActivityView;->mSurface:Landroid/view/Surface;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/app/ActivityView;->mActivityViewCallback:Landroid/app/ActivityView$ActivityViewCallback;

    invoke-virtual {v0, p0}, Landroid/app/ActivityView$ActivityViewCallback;->onSurfaceAvailable(Landroid/app/ActivityView;)V

    :cond_0
    return-void
.end method

.method public startActivity(Landroid/app/PendingIntent;)V
    .locals 3

    iget-object v1, p0, Landroid/app/ActivityView;->mActivityContainer:Landroid/app/ActivityView$ActivityContainerWrapper;

    if-nez v1, :cond_0

    new-instance v1, Ljava/lang/IllegalStateException;

    const-string/jumbo v2, "Attempt to call startActivity after release"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    iget-object v1, p0, Landroid/app/ActivityView;->mSurface:Landroid/view/Surface;

    if-nez v1, :cond_1

    new-instance v1, Ljava/lang/IllegalStateException;

    const-string/jumbo v2, "Surface not yet created."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    invoke-virtual {p1}, Landroid/app/PendingIntent;->getTarget()Landroid/content/IIntentSender;

    move-result-object v0

    iget-object v1, p0, Landroid/app/ActivityView;->mActivityContainer:Landroid/app/ActivityView$ActivityContainerWrapper;

    invoke-virtual {v1, v0}, Landroid/app/ActivityView$ActivityContainerWrapper;->startActivityIntentSender(Landroid/content/IIntentSender;)I

    move-result v1

    const/16 v2, -0x60

    if-ne v1, v2, :cond_2

    new-instance v1, Landroid/os/OperationCanceledException;

    invoke-direct {v1}, Landroid/os/OperationCanceledException;-><init>()V

    throw v1

    :cond_2
    return-void
.end method

.method public startActivity(Landroid/content/Intent;)V
    .locals 2

    iget-object v0, p0, Landroid/app/ActivityView;->mActivityContainer:Landroid/app/ActivityView$ActivityContainerWrapper;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Attempt to call startActivity after release"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Landroid/app/ActivityView;->mSurface:Landroid/view/Surface;

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Surface not yet created."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iget-object v0, p0, Landroid/app/ActivityView;->mActivityContainer:Landroid/app/ActivityView$ActivityContainerWrapper;

    invoke-virtual {v0, p1}, Landroid/app/ActivityView$ActivityContainerWrapper;->startActivity(Landroid/content/Intent;)I

    move-result v0

    const/16 v1, -0x60

    if-ne v0, v1, :cond_2

    new-instance v0, Landroid/os/OperationCanceledException;

    invoke-direct {v0}, Landroid/os/OperationCanceledException;-><init>()V

    throw v0

    :cond_2
    return-void
.end method

.method public startActivity(Landroid/content/IntentSender;)V
    .locals 3

    iget-object v1, p0, Landroid/app/ActivityView;->mActivityContainer:Landroid/app/ActivityView$ActivityContainerWrapper;

    if-nez v1, :cond_0

    new-instance v1, Ljava/lang/IllegalStateException;

    const-string/jumbo v2, "Attempt to call startActivity after release"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    iget-object v1, p0, Landroid/app/ActivityView;->mSurface:Landroid/view/Surface;

    if-nez v1, :cond_1

    new-instance v1, Ljava/lang/IllegalStateException;

    const-string/jumbo v2, "Surface not yet created."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    invoke-virtual {p1}, Landroid/content/IntentSender;->getTarget()Landroid/content/IIntentSender;

    move-result-object v0

    iget-object v1, p0, Landroid/app/ActivityView;->mActivityContainer:Landroid/app/ActivityView$ActivityContainerWrapper;

    invoke-virtual {v1, v0}, Landroid/app/ActivityView$ActivityContainerWrapper;->startActivityIntentSender(Landroid/content/IIntentSender;)I

    move-result v1

    const/16 v2, -0x60

    if-ne v1, v2, :cond_2

    new-instance v1, Landroid/os/OperationCanceledException;

    invoke-direct {v1}, Landroid/os/OperationCanceledException;-><init>()V

    throw v1

    :cond_2
    return-void
.end method
