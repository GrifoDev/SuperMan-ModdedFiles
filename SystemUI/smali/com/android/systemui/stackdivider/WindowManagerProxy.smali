.class public Lcom/android/systemui/stackdivider/WindowManagerProxy;
.super Ljava/lang/Object;
.source "WindowManagerProxy.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/stackdivider/WindowManagerProxy$1;,
        Lcom/android/systemui/stackdivider/WindowManagerProxy$2;,
        Lcom/android/systemui/stackdivider/WindowManagerProxy$3;,
        Lcom/android/systemui/stackdivider/WindowManagerProxy$4;,
        Lcom/android/systemui/stackdivider/WindowManagerProxy$5;,
        Lcom/android/systemui/stackdivider/WindowManagerProxy$6;,
        Lcom/android/systemui/stackdivider/WindowManagerProxy$7;
    }
.end annotation


# static fields
.field private static final sInstance:Lcom/android/systemui/stackdivider/WindowManagerProxy;


# instance fields
.field private mDimLayerAlpha:F

.field private final mDimLayerRunnable:Ljava/lang/Runnable;

.field private mDimLayerTargetStack:I

.field private mDimLayerVisible:Z

.field private final mDismissRunnable:Ljava/lang/Runnable;

.field private final mDockedRect:Landroid/graphics/Rect;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mDockedRect"
    .end annotation
.end field

.field private final mExecutor:Ljava/util/concurrent/ExecutorService;

.field private final mMaximizeRunnable:Ljava/lang/Runnable;

.field private mMinimizeDimLayerAlpha:F

.field private final mMinimizeDimLayerRunnable:Ljava/lang/Runnable;

.field private mMinimizeDimLayerVisible:Z

.field private mMinimizeLayerTargetStack:I

.field private final mMultiWindowManager:Lcom/samsung/android/multiwindow/MultiWindowManager;

.field private final mResizeRunnable:Ljava/lang/Runnable;

.field private final mSetTouchableRegionRunnable:Ljava/lang/Runnable;

.field private final mSwapRunnable:Ljava/lang/Runnable;

.field private mTempDockSide:I

.field private final mTempDockedInsetRect:Landroid/graphics/Rect;

.field private final mTempDockedTaskRect:Landroid/graphics/Rect;

.field private final mTempOtherInsetRect:Landroid/graphics/Rect;

.field private final mTempOtherTaskRect:Landroid/graphics/Rect;

.field private mTmpDockSide:I

.field private final mTmpRect1:Landroid/graphics/Rect;

.field private final mTmpRect2:Landroid/graphics/Rect;

.field private final mTmpRect3:Landroid/graphics/Rect;

.field private final mTmpRect4:Landroid/graphics/Rect;

.field private final mTmpRect5:Landroid/graphics/Rect;

.field private final mTouchableRegion:Landroid/graphics/Rect;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mDockedRect"
    .end annotation
.end field


# direct methods
.method static synthetic -get0(Lcom/android/systemui/stackdivider/WindowManagerProxy;)F
    .locals 1

    iget v0, p0, Lcom/android/systemui/stackdivider/WindowManagerProxy;->mDimLayerAlpha:F

    return v0
.end method

.method static synthetic -get1(Lcom/android/systemui/stackdivider/WindowManagerProxy;)I
    .locals 1

    iget v0, p0, Lcom/android/systemui/stackdivider/WindowManagerProxy;->mDimLayerTargetStack:I

    return v0
.end method

.method static synthetic -get10(Lcom/android/systemui/stackdivider/WindowManagerProxy;)Landroid/graphics/Rect;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/stackdivider/WindowManagerProxy;->mTempDockedTaskRect:Landroid/graphics/Rect;

    return-object v0
.end method

.method static synthetic -get11(Lcom/android/systemui/stackdivider/WindowManagerProxy;)Landroid/graphics/Rect;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/stackdivider/WindowManagerProxy;->mTempOtherInsetRect:Landroid/graphics/Rect;

    return-object v0
.end method

.method static synthetic -get12(Lcom/android/systemui/stackdivider/WindowManagerProxy;)Landroid/graphics/Rect;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/stackdivider/WindowManagerProxy;->mTempOtherTaskRect:Landroid/graphics/Rect;

    return-object v0
.end method

.method static synthetic -get13(Lcom/android/systemui/stackdivider/WindowManagerProxy;)I
    .locals 1

    iget v0, p0, Lcom/android/systemui/stackdivider/WindowManagerProxy;->mTmpDockSide:I

    return v0
.end method

.method static synthetic -get14(Lcom/android/systemui/stackdivider/WindowManagerProxy;)Landroid/graphics/Rect;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/stackdivider/WindowManagerProxy;->mTmpRect1:Landroid/graphics/Rect;

    return-object v0
.end method

.method static synthetic -get15(Lcom/android/systemui/stackdivider/WindowManagerProxy;)Landroid/graphics/Rect;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/stackdivider/WindowManagerProxy;->mTmpRect2:Landroid/graphics/Rect;

    return-object v0
.end method

.method static synthetic -get16(Lcom/android/systemui/stackdivider/WindowManagerProxy;)Landroid/graphics/Rect;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/stackdivider/WindowManagerProxy;->mTmpRect3:Landroid/graphics/Rect;

    return-object v0
.end method

.method static synthetic -get17(Lcom/android/systemui/stackdivider/WindowManagerProxy;)Landroid/graphics/Rect;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/stackdivider/WindowManagerProxy;->mTmpRect4:Landroid/graphics/Rect;

    return-object v0
.end method

.method static synthetic -get18(Lcom/android/systemui/stackdivider/WindowManagerProxy;)Landroid/graphics/Rect;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/stackdivider/WindowManagerProxy;->mTmpRect5:Landroid/graphics/Rect;

    return-object v0
.end method

.method static synthetic -get19(Lcom/android/systemui/stackdivider/WindowManagerProxy;)Landroid/graphics/Rect;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/stackdivider/WindowManagerProxy;->mTouchableRegion:Landroid/graphics/Rect;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/systemui/stackdivider/WindowManagerProxy;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/stackdivider/WindowManagerProxy;->mDimLayerVisible:Z

    return v0
.end method

.method static synthetic -get3(Lcom/android/systemui/stackdivider/WindowManagerProxy;)Landroid/graphics/Rect;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/stackdivider/WindowManagerProxy;->mDockedRect:Landroid/graphics/Rect;

    return-object v0
.end method

.method static synthetic -get4(Lcom/android/systemui/stackdivider/WindowManagerProxy;)F
    .locals 1

    iget v0, p0, Lcom/android/systemui/stackdivider/WindowManagerProxy;->mMinimizeDimLayerAlpha:F

    return v0
.end method

.method static synthetic -get5(Lcom/android/systemui/stackdivider/WindowManagerProxy;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/stackdivider/WindowManagerProxy;->mMinimizeDimLayerVisible:Z

    return v0
.end method

.method static synthetic -get6(Lcom/android/systemui/stackdivider/WindowManagerProxy;)I
    .locals 1

    iget v0, p0, Lcom/android/systemui/stackdivider/WindowManagerProxy;->mMinimizeLayerTargetStack:I

    return v0
.end method

.method static synthetic -get7(Lcom/android/systemui/stackdivider/WindowManagerProxy;)Lcom/samsung/android/multiwindow/MultiWindowManager;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/stackdivider/WindowManagerProxy;->mMultiWindowManager:Lcom/samsung/android/multiwindow/MultiWindowManager;

    return-object v0
.end method

.method static synthetic -get8(Lcom/android/systemui/stackdivider/WindowManagerProxy;)I
    .locals 1

    iget v0, p0, Lcom/android/systemui/stackdivider/WindowManagerProxy;->mTempDockSide:I

    return v0
.end method

.method static synthetic -get9(Lcom/android/systemui/stackdivider/WindowManagerProxy;)Landroid/graphics/Rect;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/stackdivider/WindowManagerProxy;->mTempDockedInsetRect:Landroid/graphics/Rect;

    return-object v0
.end method

.method static synthetic -set0(Lcom/android/systemui/stackdivider/WindowManagerProxy;I)I
    .locals 0

    iput p1, p0, Lcom/android/systemui/stackdivider/WindowManagerProxy;->mTmpDockSide:I

    return p1
.end method

.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/systemui/stackdivider/WindowManagerProxy;

    invoke-direct {v0}, Lcom/android/systemui/stackdivider/WindowManagerProxy;-><init>()V

    sput-object v0, Lcom/android/systemui/stackdivider/WindowManagerProxy;->sInstance:Lcom/android/systemui/stackdivider/WindowManagerProxy;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    const/4 v1, -0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/samsung/android/multiwindow/MultiWindowManager;

    invoke-direct {v0}, Lcom/samsung/android/multiwindow/MultiWindowManager;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/stackdivider/WindowManagerProxy;->mMultiWindowManager:Lcom/samsung/android/multiwindow/MultiWindowManager;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/stackdivider/WindowManagerProxy;->mDockedRect:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/stackdivider/WindowManagerProxy;->mTempDockedTaskRect:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/stackdivider/WindowManagerProxy;->mTempDockedInsetRect:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/stackdivider/WindowManagerProxy;->mTempOtherTaskRect:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/stackdivider/WindowManagerProxy;->mTempOtherInsetRect:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/stackdivider/WindowManagerProxy;->mTmpRect1:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/stackdivider/WindowManagerProxy;->mTmpRect2:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/stackdivider/WindowManagerProxy;->mTmpRect3:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/stackdivider/WindowManagerProxy;->mTmpRect4:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/stackdivider/WindowManagerProxy;->mTmpRect5:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/stackdivider/WindowManagerProxy;->mTouchableRegion:Landroid/graphics/Rect;

    iput v1, p0, Lcom/android/systemui/stackdivider/WindowManagerProxy;->mTempDockSide:I

    iput v1, p0, Lcom/android/systemui/stackdivider/WindowManagerProxy;->mTmpDockSide:I

    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/stackdivider/WindowManagerProxy;->mExecutor:Ljava/util/concurrent/ExecutorService;

    new-instance v0, Lcom/android/systemui/stackdivider/WindowManagerProxy$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/stackdivider/WindowManagerProxy$1;-><init>(Lcom/android/systemui/stackdivider/WindowManagerProxy;)V

    iput-object v0, p0, Lcom/android/systemui/stackdivider/WindowManagerProxy;->mResizeRunnable:Ljava/lang/Runnable;

    new-instance v0, Lcom/android/systemui/stackdivider/WindowManagerProxy$2;

    invoke-direct {v0, p0}, Lcom/android/systemui/stackdivider/WindowManagerProxy$2;-><init>(Lcom/android/systemui/stackdivider/WindowManagerProxy;)V

    iput-object v0, p0, Lcom/android/systemui/stackdivider/WindowManagerProxy;->mDismissRunnable:Ljava/lang/Runnable;

    new-instance v0, Lcom/android/systemui/stackdivider/WindowManagerProxy$3;

    invoke-direct {v0, p0}, Lcom/android/systemui/stackdivider/WindowManagerProxy$3;-><init>(Lcom/android/systemui/stackdivider/WindowManagerProxy;)V

    iput-object v0, p0, Lcom/android/systemui/stackdivider/WindowManagerProxy;->mMaximizeRunnable:Ljava/lang/Runnable;

    new-instance v0, Lcom/android/systemui/stackdivider/WindowManagerProxy$4;

    invoke-direct {v0, p0}, Lcom/android/systemui/stackdivider/WindowManagerProxy$4;-><init>(Lcom/android/systemui/stackdivider/WindowManagerProxy;)V

    iput-object v0, p0, Lcom/android/systemui/stackdivider/WindowManagerProxy;->mDimLayerRunnable:Ljava/lang/Runnable;

    new-instance v0, Lcom/android/systemui/stackdivider/WindowManagerProxy$5;

    invoke-direct {v0, p0}, Lcom/android/systemui/stackdivider/WindowManagerProxy$5;-><init>(Lcom/android/systemui/stackdivider/WindowManagerProxy;)V

    iput-object v0, p0, Lcom/android/systemui/stackdivider/WindowManagerProxy;->mSwapRunnable:Ljava/lang/Runnable;

    new-instance v0, Lcom/android/systemui/stackdivider/WindowManagerProxy$6;

    invoke-direct {v0, p0}, Lcom/android/systemui/stackdivider/WindowManagerProxy$6;-><init>(Lcom/android/systemui/stackdivider/WindowManagerProxy;)V

    iput-object v0, p0, Lcom/android/systemui/stackdivider/WindowManagerProxy;->mSetTouchableRegionRunnable:Ljava/lang/Runnable;

    new-instance v0, Lcom/android/systemui/stackdivider/WindowManagerProxy$7;

    invoke-direct {v0, p0}, Lcom/android/systemui/stackdivider/WindowManagerProxy$7;-><init>(Lcom/android/systemui/stackdivider/WindowManagerProxy;)V

    iput-object v0, p0, Lcom/android/systemui/stackdivider/WindowManagerProxy;->mMinimizeDimLayerRunnable:Ljava/lang/Runnable;

    return-void
.end method

.method public static getInstance()Lcom/android/systemui/stackdivider/WindowManagerProxy;
    .locals 1

    sget-object v0, Lcom/android/systemui/stackdivider/WindowManagerProxy;->sInstance:Lcom/android/systemui/stackdivider/WindowManagerProxy;

    return-object v0
.end method


# virtual methods
.method public dismissDockedStack()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/stackdivider/WindowManagerProxy;->mExecutor:Ljava/util/concurrent/ExecutorService;

    iget-object v1, p0, Lcom/android/systemui/stackdivider/WindowManagerProxy;->mDismissRunnable:Ljava/lang/Runnable;

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public getDockSide()I
    .locals 4

    :try_start_0
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getWindowManagerService()Landroid/view/IWindowManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/IWindowManager;->getDockedStackSide()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    :catch_0
    move-exception v0

    const-string/jumbo v1, "WindowManagerProxy"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Failed to get dock side: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, -0x1

    return v1
.end method

.method public maximizeDockedStack()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/stackdivider/WindowManagerProxy;->mExecutor:Ljava/util/concurrent/ExecutorService;

    iget-object v1, p0, Lcom/android/systemui/stackdivider/WindowManagerProxy;->mMaximizeRunnable:Ljava/lang/Runnable;

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public resizeDockedStack(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)V
    .locals 7

    const/4 v6, -0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v6}, Lcom/android/systemui/stackdivider/WindowManagerProxy;->resizeDockedStack(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;I)V

    return-void
.end method

.method public resizeDockedStack(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;I)V
    .locals 2

    iget-object v1, p0, Lcom/android/systemui/stackdivider/WindowManagerProxy;->mDockedRect:Landroid/graphics/Rect;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/stackdivider/WindowManagerProxy;->mDockedRect:Landroid/graphics/Rect;

    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    if-eqz p2, :cond_0

    iget-object v0, p0, Lcom/android/systemui/stackdivider/WindowManagerProxy;->mTempDockedTaskRect:Landroid/graphics/Rect;

    invoke-virtual {v0, p2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    :goto_0
    if-eqz p3, :cond_1

    iget-object v0, p0, Lcom/android/systemui/stackdivider/WindowManagerProxy;->mTempDockedInsetRect:Landroid/graphics/Rect;

    invoke-virtual {v0, p3}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    :goto_1
    if-eqz p4, :cond_2

    iget-object v0, p0, Lcom/android/systemui/stackdivider/WindowManagerProxy;->mTempOtherTaskRect:Landroid/graphics/Rect;

    invoke-virtual {v0, p4}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    :goto_2
    if-eqz p5, :cond_3

    iget-object v0, p0, Lcom/android/systemui/stackdivider/WindowManagerProxy;->mTempOtherInsetRect:Landroid/graphics/Rect;

    invoke-virtual {v0, p5}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    :goto_3
    iput p6, p0, Lcom/android/systemui/stackdivider/WindowManagerProxy;->mTempDockSide:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    iget-object v0, p0, Lcom/android/systemui/stackdivider/WindowManagerProxy;->mExecutor:Ljava/util/concurrent/ExecutorService;

    iget-object v1, p0, Lcom/android/systemui/stackdivider/WindowManagerProxy;->mResizeRunnable:Ljava/lang/Runnable;

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void

    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/android/systemui/stackdivider/WindowManagerProxy;->mTempDockedTaskRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->setEmpty()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    :cond_1
    :try_start_2
    iget-object v0, p0, Lcom/android/systemui/stackdivider/WindowManagerProxy;->mTempDockedInsetRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->setEmpty()V

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/android/systemui/stackdivider/WindowManagerProxy;->mTempOtherTaskRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->setEmpty()V

    goto :goto_2

    :cond_3
    iget-object v0, p0, Lcom/android/systemui/stackdivider/WindowManagerProxy;->mTempOtherInsetRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->setEmpty()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_3
.end method

.method public setMinimizeDimLayer(ZIF)V
    .locals 2

    iget-object v1, p0, Lcom/android/systemui/stackdivider/WindowManagerProxy;->mDockedRect:Landroid/graphics/Rect;

    monitor-enter v1

    :try_start_0
    iput-boolean p1, p0, Lcom/android/systemui/stackdivider/WindowManagerProxy;->mMinimizeDimLayerVisible:Z

    iput p2, p0, Lcom/android/systemui/stackdivider/WindowManagerProxy;->mMinimizeLayerTargetStack:I

    iput p3, p0, Lcom/android/systemui/stackdivider/WindowManagerProxy;->mMinimizeDimLayerAlpha:F
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    iget-object v0, p0, Lcom/android/systemui/stackdivider/WindowManagerProxy;->mExecutor:Ljava/util/concurrent/ExecutorService;

    iget-object v1, p0, Lcom/android/systemui/stackdivider/WindowManagerProxy;->mMinimizeDimLayerRunnable:Ljava/lang/Runnable;

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public setResizeDimLayer(ZIF)V
    .locals 2

    iput-boolean p1, p0, Lcom/android/systemui/stackdivider/WindowManagerProxy;->mDimLayerVisible:Z

    iput p2, p0, Lcom/android/systemui/stackdivider/WindowManagerProxy;->mDimLayerTargetStack:I

    iput p3, p0, Lcom/android/systemui/stackdivider/WindowManagerProxy;->mDimLayerAlpha:F

    iget-object v0, p0, Lcom/android/systemui/stackdivider/WindowManagerProxy;->mExecutor:Ljava/util/concurrent/ExecutorService;

    iget-object v1, p0, Lcom/android/systemui/stackdivider/WindowManagerProxy;->mDimLayerRunnable:Ljava/lang/Runnable;

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public setResizing(Z)V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/stackdivider/WindowManagerProxy;->mExecutor:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/android/systemui/stackdivider/WindowManagerProxy$8;

    invoke-direct {v1, p0, p1}, Lcom/android/systemui/stackdivider/WindowManagerProxy$8;-><init>(Lcom/android/systemui/stackdivider/WindowManagerProxy;Z)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public setTouchRegion(Landroid/graphics/Rect;)V
    .locals 2

    iget-object v1, p0, Lcom/android/systemui/stackdivider/WindowManagerProxy;->mDockedRect:Landroid/graphics/Rect;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/stackdivider/WindowManagerProxy;->mTouchableRegion:Landroid/graphics/Rect;

    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    iget-object v0, p0, Lcom/android/systemui/stackdivider/WindowManagerProxy;->mExecutor:Ljava/util/concurrent/ExecutorService;

    iget-object v1, p0, Lcom/android/systemui/stackdivider/WindowManagerProxy;->mSetTouchableRegionRunnable:Ljava/lang/Runnable;

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method
