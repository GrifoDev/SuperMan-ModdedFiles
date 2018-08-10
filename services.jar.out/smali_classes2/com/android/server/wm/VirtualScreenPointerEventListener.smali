.class public Lcom/android/server/wm/VirtualScreenPointerEventListener;
.super Ljava/lang/Object;
.source "VirtualScreenPointerEventListener.java"

# interfaces
.implements Landroid/view/WindowManagerPolicy$PointerEventListener;


# static fields
.field private static final GAP:I = 0x1

.field private static final MAXIMUM_VELOCITY:I = 0x1f40

.field private static final SHOULD_GO_VIRTUAL_DISPLAY_MINIMUM_OFFSET:I = 0x64

.field private static final SNAP_VELOCITY:I = 0xbb8

.field private static final TAG:Ljava/lang/String; = "WindowManager"

.field private static final TAG_LOCAL:Ljava/lang/String; = "VirtualScreenPointerEventListener"


# instance fields
.field private mAnimateRequested:Z

.field private mAppToken:Lcom/android/server/wm/AppWindowToken;

.field private mDisplayContent:Lcom/android/server/wm/DisplayContent;

.field private mDisplaySize:Landroid/graphics/Rect;

.field private mDragEnded:Z

.field private mGoToVirtualDisplay:Z

.field private mInitX:I

.field private mInitY:I

.field private mLastX:I

.field private mLastY:I

.field private mMoved:Z

.field private mRequestDisplayId:I

.field private final mService:Lcom/android/server/wm/WindowManagerService;

.field private mStarted:Z

.field private mVelocityTracker:Landroid/view/VelocityTracker;


# direct methods
.method static synthetic -get0(Lcom/android/server/wm/VirtualScreenPointerEventListener;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/wm/VirtualScreenPointerEventListener;->mDragEnded:Z

    return v0
.end method

.method static synthetic -get1(Lcom/android/server/wm/VirtualScreenPointerEventListener;)Lcom/android/server/wm/WindowManagerService;
    .locals 1

    iget-object v0, p0, Lcom/android/server/wm/VirtualScreenPointerEventListener;->mService:Lcom/android/server/wm/WindowManagerService;

    return-object v0
.end method

.method static synthetic -set0(Lcom/android/server/wm/VirtualScreenPointerEventListener;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/wm/VirtualScreenPointerEventListener;->mAnimateRequested:Z

    return p1
.end method

.method public constructor <init>(Lcom/android/server/wm/WindowManagerService;Lcom/android/server/wm/DisplayContent;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/VirtualScreenPointerEventListener;->mDisplaySize:Landroid/graphics/Rect;

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/wm/VirtualScreenPointerEventListener;->mRequestDisplayId:I

    iput-boolean v1, p0, Lcom/android/server/wm/VirtualScreenPointerEventListener;->mGoToVirtualDisplay:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/wm/VirtualScreenPointerEventListener;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/wm/VirtualScreenPointerEventListener;->mDragEnded:Z

    iput-boolean v1, p0, Lcom/android/server/wm/VirtualScreenPointerEventListener;->mMoved:Z

    iput-boolean v1, p0, Lcom/android/server/wm/VirtualScreenPointerEventListener;->mStarted:Z

    iput-boolean v1, p0, Lcom/android/server/wm/VirtualScreenPointerEventListener;->mAnimateRequested:Z

    iput-object p1, p0, Lcom/android/server/wm/VirtualScreenPointerEventListener;->mService:Lcom/android/server/wm/WindowManagerService;

    iput-object p2, p0, Lcom/android/server/wm/VirtualScreenPointerEventListener;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    return-void
.end method

.method private animateRequestScreenOffset(III)V
    .locals 4

    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/android/server/wm/VirtualScreenPointerEventListener;->mAnimateRequested:Z

    const/4 v1, 0x2

    new-array v1, v1, [I

    const/4 v2, 0x0

    aput p1, v1, v2

    aput p2, v1, v3

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v0

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/android/server/wm/-$Lambda$udi2wKN75deAQTRcIZdT4CHksM8$1;

    invoke-direct {v1, p3, p0}, Lcom/android/server/wm/-$Lambda$udi2wKN75deAQTRcIZdT4CHksM8$1;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    new-instance v1, Lcom/android/server/wm/VirtualScreenPointerEventListener$1;

    invoke-direct {v1, p0}, Lcom/android/server/wm/VirtualScreenPointerEventListener$1;-><init>(Lcom/android/server/wm/VirtualScreenPointerEventListener;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method

.method private finishDrag()V
    .locals 2

    const/4 v1, -0x1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/wm/VirtualScreenPointerEventListener;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    iput v1, p0, Lcom/android/server/wm/VirtualScreenPointerEventListener;->mLastY:I

    iput v1, p0, Lcom/android/server/wm/VirtualScreenPointerEventListener;->mLastX:I

    iput v1, p0, Lcom/android/server/wm/VirtualScreenPointerEventListener;->mInitY:I

    iput v1, p0, Lcom/android/server/wm/VirtualScreenPointerEventListener;->mInitX:I

    iput v1, p0, Lcom/android/server/wm/VirtualScreenPointerEventListener;->mRequestDisplayId:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/wm/VirtualScreenPointerEventListener;->mGoToVirtualDisplay:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/wm/VirtualScreenPointerEventListener;->mDragEnded:Z

    return-void
.end method

.method private requestScreenOffset(II)V
    .locals 6

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/android/server/wm/VirtualScreenPointerEventListener;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    monitor-enter v2

    :try_start_0
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    iget-object v0, p0, Lcom/android/server/wm/VirtualScreenPointerEventListener;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/wm/VirtualScreenPointerEventListener;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    iget-object v1, v0, Lcom/android/server/wm/AppWindowToken;->appToken:Landroid/view/IApplicationToken;

    check-cast v1, Landroid/os/IBinder;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit v2

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    sget-boolean v0, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG:Z

    if-eqz v0, :cond_1

    const-string/jumbo v0, "WindowManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "requestScreenOffset, offsetX="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", offsetY="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", caller="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/4 v3, 0x5

    invoke-static {v3}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    iget-object v0, p0, Lcom/android/server/wm/VirtualScreenPointerEventListener;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mMultiScreenManager:Lcom/android/server/am/MultiScreenManagerService;

    iget v2, p0, Lcom/android/server/wm/VirtualScreenPointerEventListener;->mRequestDisplayId:I

    const/4 v5, 0x0

    move v3, p1

    move v4, p2

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/am/MultiScreenManagerService;->setOffset(Landroid/os/IBinder;IIIZ)Z

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v2

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v0
.end method

.method private startDrag(Lcom/android/server/wm/AppWindowToken;IZ)V
    .locals 4

    const/4 v3, -0x1

    const-string/jumbo v0, "WindowManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "startDrag: atoken="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", caller="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v2, 0x5

    invoke-static {v2}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-object p1, p0, Lcom/android/server/wm/VirtualScreenPointerEventListener;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    iput v3, p0, Lcom/android/server/wm/VirtualScreenPointerEventListener;->mLastY:I

    iput v3, p0, Lcom/android/server/wm/VirtualScreenPointerEventListener;->mLastX:I

    iput v3, p0, Lcom/android/server/wm/VirtualScreenPointerEventListener;->mInitY:I

    iput v3, p0, Lcom/android/server/wm/VirtualScreenPointerEventListener;->mInitX:I

    if-eq p2, v3, :cond_0

    iput p2, p0, Lcom/android/server/wm/VirtualScreenPointerEventListener;->mRequestDisplayId:I

    :cond_0
    iput-boolean p3, p0, Lcom/android/server/wm/VirtualScreenPointerEventListener;->mGoToVirtualDisplay:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/wm/VirtualScreenPointerEventListener;->mDragEnded:Z

    return-void
.end method


# virtual methods
.method finishLocked()V
    .locals 3

    sget-boolean v0, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_VIRTUALSCREEN_DRAG:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/server/wm/VirtualScreenPointerEventListener;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "finish, caller="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v2, 0x5

    invoke-static {v2}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/wm/VirtualScreenPointerEventListener;->mStarted:Z

    sget-boolean v0, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_ORIENTATION:Z

    if-eqz v0, :cond_1

    sget-object v0, Lcom/android/server/wm/VirtualScreenPointerEventListener;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "finish, Resuming rotation after re-position"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    iget-object v0, p0, Lcom/android/server/wm/VirtualScreenPointerEventListener;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerService;->resumeRotationLocked()V

    invoke-direct {p0}, Lcom/android/server/wm/VirtualScreenPointerEventListener;->finishDrag()V

    iget-object v0, p0, Lcom/android/server/wm/VirtualScreenPointerEventListener;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    new-instance v1, Lcom/android/server/wm/-$Lambda$udi2wKN75deAQTRcIZdT4CHksM8;

    invoke-direct {v1, p0}, Lcom/android/server/wm/-$Lambda$udi2wKN75deAQTRcIZdT4CHksM8;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Lcom/android/server/wm/WindowManagerService$H;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method isDraggingLocked()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/wm/VirtualScreenPointerEventListener;->mStarted:Z

    return v0
.end method

.method synthetic lambda$-com_android_server_wm_VirtualScreenPointerEventListener_8060()V
    .locals 1

    iget-object v0, p0, Lcom/android/server/wm/VirtualScreenPointerEventListener;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mMultiScreenManager:Lcom/android/server/am/MultiScreenManagerService;

    invoke-virtual {v0}, Lcom/android/server/am/MultiScreenManagerService;->notifyFinishDragVirtualScreen()V

    return-void
.end method

.method synthetic lambda$-com_android_server_wm_VirtualScreenPointerEventListener_9724(ILandroid/animation/ValueAnimator;)V
    .locals 1

    invoke-virtual {p2}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-direct {p0, v0, p1}, Lcom/android/server/wm/VirtualScreenPointerEventListener;->requestScreenOffset(II)V

    return-void
.end method

.method public onPointerEvent(Landroid/view/MotionEvent;)V
    .locals 12

    const/4 v11, -0x1

    const/4 v10, 0x0

    const/4 v9, 0x1

    const/4 v8, 0x0

    iget-boolean v5, p0, Lcom/android/server/wm/VirtualScreenPointerEventListener;->mDragEnded:Z

    if-eqz v5, :cond_0

    iget-boolean v5, p0, Lcom/android/server/wm/VirtualScreenPointerEventListener;->mStarted:Z

    xor-int/lit8 v5, v5, 0x1

    if-eqz v5, :cond_0

    return-void

    :cond_0
    iget-object v5, p0, Lcom/android/server/wm/VirtualScreenPointerEventListener;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v5, :cond_1

    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v5

    iput-object v5, p0, Lcom/android/server/wm/VirtualScreenPointerEventListener;->mVelocityTracker:Landroid/view/VelocityTracker;

    :cond_1
    iget-object v5, p0, Lcom/android/server/wm/VirtualScreenPointerEventListener;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v5, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v5

    float-to-int v1, v5

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v5

    float-to-int v2, v5

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v5

    packed-switch v5, :pswitch_data_0

    :goto_0
    iget-boolean v5, p0, Lcom/android/server/wm/VirtualScreenPointerEventListener;->mDragEnded:Z

    if-eqz v5, :cond_2

    iget-object v5, p0, Lcom/android/server/wm/VirtualScreenPointerEventListener;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v5}, Landroid/view/VelocityTracker;->recycle()V

    iput-object v10, p0, Lcom/android/server/wm/VirtualScreenPointerEventListener;->mVelocityTracker:Landroid/view/VelocityTracker;

    iget-boolean v5, p0, Lcom/android/server/wm/VirtualScreenPointerEventListener;->mAnimateRequested:Z

    if-nez v5, :cond_2

    iget-object v5, p0, Lcom/android/server/wm/VirtualScreenPointerEventListener;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v6, v5, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    monitor-enter v6

    :try_start_0
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    invoke-virtual {p0}, Lcom/android/server/wm/VirtualScreenPointerEventListener;->finishLocked()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v6

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    :cond_2
    return-void

    :pswitch_0
    sget-boolean v5, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_VIRTUALSCREEN_DRAG:Z

    if-eqz v5, :cond_3

    sget-object v5, Lcom/android/server/wm/VirtualScreenPointerEventListener;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "ACTION_DOWN @ {"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, ", "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "}"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    iput v1, p0, Lcom/android/server/wm/VirtualScreenPointerEventListener;->mLastX:I

    iput v1, p0, Lcom/android/server/wm/VirtualScreenPointerEventListener;->mInitX:I

    iput v2, p0, Lcom/android/server/wm/VirtualScreenPointerEventListener;->mLastY:I

    iput v2, p0, Lcom/android/server/wm/VirtualScreenPointerEventListener;->mInitY:I

    goto :goto_0

    :pswitch_1
    sget-boolean v5, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_VIRTUALSCREEN_DRAG:Z

    if-eqz v5, :cond_4

    sget-object v5, Lcom/android/server/wm/VirtualScreenPointerEventListener;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "ACTION_MOVE @ {"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, ", "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "}"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    iget-object v5, p0, Lcom/android/server/wm/VirtualScreenPointerEventListener;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    if-nez v5, :cond_5

    sget-object v5, Lcom/android/server/wm/VirtualScreenPointerEventListener;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "ACTION_MOVE @ {"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, ", "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "}, mAppToken is null"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_5
    iget v5, p0, Lcom/android/server/wm/VirtualScreenPointerEventListener;->mInitX:I

    if-eq v5, v11, :cond_6

    iget v5, p0, Lcom/android/server/wm/VirtualScreenPointerEventListener;->mInitY:I

    if-ne v5, v11, :cond_9

    :cond_6
    iput v1, p0, Lcom/android/server/wm/VirtualScreenPointerEventListener;->mInitX:I

    iput v2, p0, Lcom/android/server/wm/VirtualScreenPointerEventListener;->mInitY:I

    iget-boolean v5, p0, Lcom/android/server/wm/VirtualScreenPointerEventListener;->mGoToVirtualDisplay:Z

    if-eqz v5, :cond_8

    iget-object v5, p0, Lcom/android/server/wm/VirtualScreenPointerEventListener;->mDisplaySize:Landroid/graphics/Rect;

    invoke-virtual {v5}, Landroid/graphics/Rect;->width()I

    move-result v5

    add-int/lit8 v3, v5, -0x1

    :goto_1
    invoke-direct {p0, v3, v8}, Lcom/android/server/wm/VirtualScreenPointerEventListener;->requestScreenOffset(II)V

    :cond_7
    :goto_2
    iput-boolean v9, p0, Lcom/android/server/wm/VirtualScreenPointerEventListener;->mMoved:Z

    iput v1, p0, Lcom/android/server/wm/VirtualScreenPointerEventListener;->mLastX:I

    iput v2, p0, Lcom/android/server/wm/VirtualScreenPointerEventListener;->mLastY:I

    goto/16 :goto_0

    :cond_8
    const/4 v3, 0x1

    goto :goto_1

    :cond_9
    iget v5, p0, Lcom/android/server/wm/VirtualScreenPointerEventListener;->mLastX:I

    sub-int v5, v1, v5

    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    move-result v5

    if-le v5, v9, :cond_7

    iget-boolean v5, p0, Lcom/android/server/wm/VirtualScreenPointerEventListener;->mGoToVirtualDisplay:Z

    if-eqz v5, :cond_b

    iget-object v5, p0, Lcom/android/server/wm/VirtualScreenPointerEventListener;->mDisplaySize:Landroid/graphics/Rect;

    invoke-virtual {v5}, Landroid/graphics/Rect;->width()I

    move-result v5

    add-int/2addr v5, v1

    iget v6, p0, Lcom/android/server/wm/VirtualScreenPointerEventListener;->mInitX:I

    sub-int v3, v5, v6

    :goto_3
    iget-boolean v5, p0, Lcom/android/server/wm/VirtualScreenPointerEventListener;->mGoToVirtualDisplay:Z

    if-eqz v5, :cond_a

    const/16 v5, 0x64

    if-ge v3, v5, :cond_c

    const/4 v3, 0x0

    :cond_a
    :goto_4
    invoke-direct {p0, v3, v8}, Lcom/android/server/wm/VirtualScreenPointerEventListener;->requestScreenOffset(II)V

    goto :goto_2

    :cond_b
    iget v5, p0, Lcom/android/server/wm/VirtualScreenPointerEventListener;->mInitX:I

    sub-int v3, v1, v5

    goto :goto_3

    :cond_c
    iget-object v5, p0, Lcom/android/server/wm/VirtualScreenPointerEventListener;->mDisplaySize:Landroid/graphics/Rect;

    invoke-virtual {v5}, Landroid/graphics/Rect;->width()I

    move-result v5

    if-le v3, v5, :cond_a

    iget-object v5, p0, Lcom/android/server/wm/VirtualScreenPointerEventListener;->mDisplaySize:Landroid/graphics/Rect;

    invoke-virtual {v5}, Landroid/graphics/Rect;->width()I

    move-result v5

    add-int/lit8 v3, v5, -0x1

    goto :goto_4

    :pswitch_2
    sget-boolean v5, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_VIRTUALSCREEN_DRAG:Z

    if-eqz v5, :cond_d

    sget-object v5, Lcom/android/server/wm/VirtualScreenPointerEventListener;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "ACTION_CANCEL @ {"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, ", "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "}"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_d
    :pswitch_3
    sget-boolean v5, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_VIRTUALSCREEN_DRAG:Z

    if-eqz v5, :cond_e

    sget-object v5, Lcom/android/server/wm/VirtualScreenPointerEventListener;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "ACTION_UP @ {"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, ", "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "}"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_e
    iget-boolean v5, p0, Lcom/android/server/wm/VirtualScreenPointerEventListener;->mMoved:Z

    if-eqz v5, :cond_11

    iget-object v5, p0, Lcom/android/server/wm/VirtualScreenPointerEventListener;->mVelocityTracker:Landroid/view/VelocityTracker;

    const/high16 v6, 0x45fa0000    # 8000.0f

    const/16 v7, 0x3e8

    invoke-virtual {v5, v7, v6}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    iget-object v5, p0, Lcom/android/server/wm/VirtualScreenPointerEventListener;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v5}, Landroid/view/VelocityTracker;->getXVelocity()F

    move-result v5

    float-to-int v4, v5

    iget-boolean v5, p0, Lcom/android/server/wm/VirtualScreenPointerEventListener;->mGoToVirtualDisplay:Z

    if-eqz v5, :cond_12

    iget-object v5, p0, Lcom/android/server/wm/VirtualScreenPointerEventListener;->mDisplaySize:Landroid/graphics/Rect;

    invoke-virtual {v5}, Landroid/graphics/Rect;->width()I

    move-result v5

    add-int/2addr v5, v1

    iget v6, p0, Lcom/android/server/wm/VirtualScreenPointerEventListener;->mInitX:I

    sub-int v0, v5, v6

    :goto_5
    sget-boolean v5, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_VIRTUALSCREEN_DRAG:Z

    if-eqz v5, :cond_f

    sget-object v5, Lcom/android/server/wm/VirtualScreenPointerEventListener;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "ACTION_UP @ {"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, ", "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "},"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " velocity="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, ", offsetX="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_f
    const/4 v3, 0x0

    iget-boolean v5, p0, Lcom/android/server/wm/VirtualScreenPointerEventListener;->mGoToVirtualDisplay:Z

    if-eqz v5, :cond_13

    const/16 v5, -0xbb8

    if-le v4, v5, :cond_10

    iget-object v5, p0, Lcom/android/server/wm/VirtualScreenPointerEventListener;->mDisplaySize:Landroid/graphics/Rect;

    invoke-virtual {v5}, Landroid/graphics/Rect;->width()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    if-lt v0, v5, :cond_10

    iget-object v5, p0, Lcom/android/server/wm/VirtualScreenPointerEventListener;->mDisplaySize:Landroid/graphics/Rect;

    invoke-virtual {v5}, Landroid/graphics/Rect;->width()I

    move-result v3

    if-le v0, v3, :cond_10

    move v0, v3

    :cond_10
    :goto_6
    invoke-direct {p0, v0, v3, v8}, Lcom/android/server/wm/VirtualScreenPointerEventListener;->animateRequestScreenOffset(III)V

    iput-boolean v8, p0, Lcom/android/server/wm/VirtualScreenPointerEventListener;->mMoved:Z

    :cond_11
    iput-boolean v9, p0, Lcom/android/server/wm/VirtualScreenPointerEventListener;->mDragEnded:Z

    goto/16 :goto_0

    :cond_12
    iget v5, p0, Lcom/android/server/wm/VirtualScreenPointerEventListener;->mInitX:I

    sub-int v0, v1, v5

    goto :goto_5

    :cond_13
    const/16 v5, 0xbb8

    if-gt v4, v5, :cond_14

    iget-object v5, p0, Lcom/android/server/wm/VirtualScreenPointerEventListener;->mDisplaySize:Landroid/graphics/Rect;

    invoke-virtual {v5}, Landroid/graphics/Rect;->width()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    if-lt v0, v5, :cond_15

    :cond_14
    iget-object v5, p0, Lcom/android/server/wm/VirtualScreenPointerEventListener;->mDisplaySize:Landroid/graphics/Rect;

    invoke-virtual {v5}, Landroid/graphics/Rect;->width()I

    move-result v3

    goto :goto_6

    :cond_15
    const/4 v3, 0x0

    goto :goto_6

    :catchall_0
    move-exception v5

    monitor-exit v6

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v5

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_3
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method startLocked(Lcom/android/server/wm/AppWindowToken;IZ)V
    .locals 5

    const/4 v4, 0x0

    sget-boolean v1, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_VIRTUALSCREEN_DRAG:Z

    if-eqz v1, :cond_0

    sget-object v1, Lcom/android/server/wm/VirtualScreenPointerEventListener;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "start, caller="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/4 v3, 0x5

    invoke-static {v3}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/wm/VirtualScreenPointerEventListener;->mStarted:Z

    iget-object v1, p0, Lcom/android/server/wm/VirtualScreenPointerEventListener;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v1}, Lcom/android/server/wm/DisplayContent;->getDisplayInfo()Landroid/view/DisplayInfo;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wm/VirtualScreenPointerEventListener;->mDisplaySize:Landroid/graphics/Rect;

    iget v2, v0, Landroid/view/DisplayInfo;->logicalWidth:I

    iget v3, v0, Landroid/view/DisplayInfo;->logicalHeight:I

    invoke-virtual {v1, v4, v4, v2, v3}, Landroid/graphics/Rect;->set(IIII)V

    sget-boolean v1, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_ORIENTATION:Z

    if-eqz v1, :cond_1

    sget-object v1, Lcom/android/server/wm/VirtualScreenPointerEventListener;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "start, Pausing rotation during re-position"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    iget-object v1, p0, Lcom/android/server/wm/VirtualScreenPointerEventListener;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowManagerService;->pauseRotationLocked()V

    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/wm/VirtualScreenPointerEventListener;->startDrag(Lcom/android/server/wm/AppWindowToken;IZ)V

    return-void
.end method
