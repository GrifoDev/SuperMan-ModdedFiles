.class public Lcom/android/server/wm/WindowAnimator;
.super Ljava/lang/Object;
.source "WindowAnimator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wm/WindowAnimator$DisplayContentsAnimator;
    }
.end annotation


# static fields
.field static final KEYGUARD_ANIMATING_OUT:I = 0x2

.field private static final KEYGUARD_ANIM_TIMEOUT_MS:J = 0x3e8L

.field static final KEYGUARD_NOT_SHOWN:I = 0x0

.field static final KEYGUARD_SHOWN:I = 0x1

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mAnimTransactionSequence:I

.field private mAnimating:Z

.field final mAnimationFrameCallback:Landroid/view/Choreographer$FrameCallback;

.field mAppWindowAnimating:Z

.field private mAppWindowAnimatingStarted:Z

.field mBulkUpdateParams:I

.field final mContext:Landroid/content/Context;

.field mCurrentTime:J

.field mDisplayContentsAnimators:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/android/server/wm/WindowAnimator$DisplayContentsAnimator;",
            ">;"
        }
    .end annotation
.end field

.field mForceHiding:I

.field private mForceHidingFloatingMultiWindow:Z

.field mInitialized:Z

.field mKeyguardGoingAway:Z

.field mKeyguardGoingAwayFlags:I

.field mLastWindowFreezeSource:Ljava/lang/Object;

.field private mPersonaManager:Lcom/android/server/pm/PersonaManagerService;

.field final mPolicy:Landroid/view/WindowManagerPolicy;

.field mPostKeyguardExitAnimation:Landroid/view/animation/Animation;

.field private mRemoveReplacedWindows:Z

.field final mService:Lcom/android/server/wm/WindowManagerService;

.field mWindowDetachedWallpaper:Lcom/android/server/wm/WindowState;

.field private final mWindowPlacerLocked:Lcom/android/server/wm/WindowSurfacePlacer;


# direct methods
.method static synthetic -wrap0(Lcom/android/server/wm/WindowAnimator;J)V
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/android/server/wm/WindowAnimator;->animateLocked(J)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    const-string/jumbo v0, "WindowManager"

    sput-object v0, Lcom/android/server/wm/WindowAnimator;->TAG:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Lcom/android/server/wm/WindowManagerService;)V
    .locals 3

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/wm/WindowAnimator;->mWindowDetachedWallpaper:Lcom/android/server/wm/WindowState;

    iput v2, p0, Lcom/android/server/wm/WindowAnimator;->mBulkUpdateParams:I

    new-instance v0, Landroid/util/SparseArray;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Landroid/util/SparseArray;-><init>(I)V

    iput-object v0, p0, Lcom/android/server/wm/WindowAnimator;->mDisplayContentsAnimators:Landroid/util/SparseArray;

    iput-boolean v2, p0, Lcom/android/server/wm/WindowAnimator;->mInitialized:Z

    iput v2, p0, Lcom/android/server/wm/WindowAnimator;->mForceHiding:I

    iput-boolean v2, p0, Lcom/android/server/wm/WindowAnimator;->mRemoveReplacedWindows:Z

    iput-boolean v2, p0, Lcom/android/server/wm/WindowAnimator;->mForceHidingFloatingMultiWindow:Z

    iput-boolean v2, p0, Lcom/android/server/wm/WindowAnimator;->mAppWindowAnimatingStarted:Z

    iput-object p1, p0, Lcom/android/server/wm/WindowAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, p1, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    iput-object v0, p0, Lcom/android/server/wm/WindowAnimator;->mContext:Landroid/content/Context;

    iget-object v0, p1, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    iput-object v0, p0, Lcom/android/server/wm/WindowAnimator;->mPolicy:Landroid/view/WindowManagerPolicy;

    iget-object v0, p1, Lcom/android/server/wm/WindowManagerService;->mWindowPlacerLocked:Lcom/android/server/wm/WindowSurfacePlacer;

    iput-object v0, p0, Lcom/android/server/wm/WindowAnimator;->mWindowPlacerLocked:Lcom/android/server/wm/WindowSurfacePlacer;

    new-instance v0, Lcom/android/server/wm/WindowAnimator$1;

    invoke-direct {v0, p0}, Lcom/android/server/wm/WindowAnimator$1;-><init>(Lcom/android/server/wm/WindowAnimator;)V

    iput-object v0, p0, Lcom/android/server/wm/WindowAnimator;->mAnimationFrameCallback:Landroid/view/Choreographer$FrameCallback;

    return-void
.end method

.method private animateLocked(J)V
    .locals 41

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/wm/WindowAnimator;->mInitialized:Z

    move/from16 v36, v0

    if-nez v36, :cond_0

    return-void

    :cond_0
    const-wide/32 v36, 0xf4240

    div-long v36, p1, v36

    move-wide/from16 v0, v36

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/server/wm/WindowAnimator;->mCurrentTime:J

    const/16 v36, 0x8

    move/from16 v0, v36

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/wm/WindowAnimator;->mBulkUpdateParams:I

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/wm/WindowAnimator;->mAnimating:Z

    move/from16 v31, v0

    const/16 v36, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v36

    invoke-virtual {v0, v1}, Lcom/android/server/wm/WindowAnimator;->setAnimating(Z)V

    const/16 v36, 0x0

    move/from16 v0, v36

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/wm/WindowAnimator;->mAppWindowAnimating:Z

    sget-boolean v36, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_WINDOW_TRACE:Z

    if-eqz v36, :cond_1

    sget-object v36, Lcom/android/server/wm/WindowAnimator;->TAG:Ljava/lang/String;

    new-instance v37, Ljava/lang/StringBuilder;

    invoke-direct/range {v37 .. v37}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v38, "!!! animate: entry time="

    invoke-virtual/range {v37 .. v38}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/server/wm/WindowAnimator;->mCurrentTime:J

    move-wide/from16 v38, v0

    invoke-virtual/range {v37 .. v39}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v37

    invoke-virtual/range {v37 .. v37}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v37

    invoke-static/range {v36 .. v37}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    sget-boolean v36, Lcom/android/server/wm/WindowManagerDebugConfig;->SHOW_TRANSACTIONS:Z

    if-eqz v36, :cond_2

    sget-object v36, Lcom/android/server/wm/WindowAnimator;->TAG:Ljava/lang/String;

    const-string/jumbo v37, ">>> OPEN TRANSACTION animateLocked"

    invoke-static/range {v36 .. v37}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    invoke-static {}, Landroid/view/SurfaceControl;->openTransaction()V

    invoke-static {}, Landroid/view/SurfaceControl;->setAnimationTransaction()V

    :try_start_0
    invoke-static {}, Lcom/android/server/SamsungCoreServices;->getMultiScreenService()Lcom/android/server/am/IMultiScreenManagerServiceBridge;

    move-result-object v36

    invoke-interface/range {v36 .. v36}, Lcom/android/server/am/IMultiScreenManagerServiceBridge;->updateVirtualScreenPosition()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowAnimator;->mDisplayContentsAnimators:Landroid/util/SparseArray;

    move-object/from16 v36, v0

    invoke-virtual/range {v36 .. v36}, Landroid/util/SparseArray;->size()I

    move-result v19

    const/16 v16, 0x0

    :goto_0
    move/from16 v0, v16

    move/from16 v1, v19

    if-ge v0, v1, :cond_10

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowAnimator;->mDisplayContentsAnimators:Landroid/util/SparseArray;

    move-object/from16 v36, v0

    move-object/from16 v0, v36

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v11

    move-object/from16 v0, p0

    invoke-direct {v0, v11}, Lcom/android/server/wm/WindowAnimator;->updateAppWindowsLocked(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowAnimator;->mDisplayContentsAnimators:Landroid/util/SparseArray;

    move-object/from16 v36, v0

    move-object/from16 v0, v36

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/server/wm/WindowAnimator$DisplayContentsAnimator;

    iget-object v0, v9, Lcom/android/server/wm/WindowAnimator$DisplayContentsAnimator;->mScreenRotationAnimation:Lcom/android/server/wm/ScreenRotationAnimation;

    move-object/from16 v21, v0

    if-eqz v21, :cond_3

    invoke-virtual/range {v21 .. v21}, Lcom/android/server/wm/ScreenRotationAnimation;->isAnimating()Z

    move-result v36

    if-eqz v36, :cond_3

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/server/wm/WindowAnimator;->mCurrentTime:J

    move-wide/from16 v36, v0

    move-object/from16 v0, v21

    move-wide/from16 v1, v36

    invoke-virtual {v0, v1, v2}, Lcom/android/server/wm/ScreenRotationAnimation;->stepAnimationLocked(J)Z

    move-result v36

    if-eqz v36, :cond_5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v36, v0

    move-object/from16 v0, v36

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mMultiWindowManagerInternal:Lcom/android/server/wm/IMultiWindowManagerInternalBridge;

    move-object/from16 v36, v0

    const/16 v37, 0x1

    invoke-interface/range {v36 .. v37}, Lcom/android/server/wm/IMultiWindowManagerInternalBridge;->rotationAnimationStateChangedLocked(Z)V

    const/16 v36, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v36

    invoke-virtual {v0, v1}, Lcom/android/server/wm/WindowAnimator;->setAnimating(Z)V

    :cond_3
    :goto_1
    move-object/from16 v0, p0

    invoke-direct {v0, v11}, Lcom/android/server/wm/WindowAnimator;->updateWindowsLocked(I)V

    move-object/from16 v0, p0

    invoke-direct {v0, v11}, Lcom/android/server/wm/WindowAnimator;->updateWallpaperLocked(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v36, v0

    move-object/from16 v0, v36

    invoke-virtual {v0, v11}, Lcom/android/server/wm/WindowManagerService;->getWindowListLocked(I)Lcom/android/server/wm/WindowList;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Lcom/android/server/wm/WindowList;->size()I

    move-result v4

    sget-boolean v36, Lcom/samsung/android/framework/feature/MultiWindowFeatures;->SAMSUNG_MULTIWINDOW_DYNAMIC_ENABLED:Z

    if-eqz v36, :cond_b

    const/16 v17, 0x0

    :goto_2
    move/from16 v0, v17

    if-ge v0, v4, :cond_c

    move-object/from16 v0, v34

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v32

    check-cast v32, Lcom/android/server/wm/WindowState;

    move-object/from16 v0, v32

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mAttachedWindow:Lcom/android/server/wm/WindowState;

    move-object/from16 v36, v0

    if-eqz v36, :cond_9

    :cond_4
    add-int/lit8 v17, v17, 0x1

    goto :goto_2

    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v36, v0

    move-object/from16 v0, v36

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mMultiWindowManagerInternal:Lcom/android/server/wm/IMultiWindowManagerInternalBridge;

    move-object/from16 v36, v0

    const/16 v37, 0x0

    invoke-interface/range {v36 .. v37}, Lcom/android/server/wm/IMultiWindowManagerInternalBridge;->rotationAnimationStateChangedLocked(Z)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v36, v0

    move-object/from16 v0, v36

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mMultiWindowManagerInternal:Lcom/android/server/wm/IMultiWindowManagerInternalBridge;

    move-object/from16 v36, v0

    const/16 v37, 0x0

    invoke-interface/range {v36 .. v37}, Lcom/android/server/wm/IMultiWindowManagerInternalBridge;->setOrientationChanging(Z)V

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/wm/WindowAnimator;->mBulkUpdateParams:I

    move/from16 v36, v0

    or-int/lit8 v36, v36, 0x1

    move/from16 v0, v36

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/wm/WindowAnimator;->mBulkUpdateParams:I

    invoke-virtual/range {v21 .. v21}, Lcom/android/server/wm/ScreenRotationAnimation;->kill()V

    const/16 v36, 0x0

    move-object/from16 v0, v36

    iput-object v0, v9, Lcom/android/server/wm/WindowAnimator$DisplayContentsAnimator;->mScreenRotationAnimation:Lcom/android/server/wm/ScreenRotationAnimation;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v36, v0

    move-object/from16 v0, v36

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mAccessibilityController:Lcom/android/server/wm/AccessibilityController;

    move-object/from16 v36, v0

    if-eqz v36, :cond_3

    if-nez v11, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v36, v0

    move-object/from16 v0, v36

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mAccessibilityController:Lcom/android/server/wm/AccessibilityController;

    move-object/from16 v36, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v37, v0

    invoke-virtual/range {v37 .. v37}, Lcom/android/server/wm/WindowManagerService;->getDefaultDisplayContentLocked()Lcom/android/server/wm/DisplayContent;

    move-result-object v37

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v38, v0

    move-object/from16 v0, v38

    iget v0, v0, Lcom/android/server/wm/WindowManagerService;->mRotation:I

    move/from16 v38, v0

    invoke-virtual/range {v36 .. v38}, Lcom/android/server/wm/AccessibilityController;->onRotationChangedLocked(Lcom/android/server/wm/DisplayContent;I)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_1

    :catch_0
    move-exception v14

    :try_start_1
    sget-object v36, Lcom/android/server/wm/WindowAnimator;->TAG:Ljava/lang/String;

    const-string/jumbo v37, "Unhandled exception in Window Manager"

    move-object/from16 v0, v36

    move-object/from16 v1, v37

    invoke-static {v0, v1, v14}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Landroid/view/SurfaceControl;->closeTransaction()V

    sget-boolean v36, Lcom/android/server/wm/WindowManagerDebugConfig;->SHOW_TRANSACTIONS:Z

    if-eqz v36, :cond_6

    sget-object v36, Lcom/android/server/wm/WindowAnimator;->TAG:Ljava/lang/String;

    const-string/jumbo v37, "<<< CLOSE TRANSACTION animateLocked"

    invoke-static/range {v36 .. v37}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    :goto_3
    const/4 v15, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v36, v0

    move-object/from16 v0, v36

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mDisplayContents:Landroid/util/SparseArray;

    move-object/from16 v36, v0

    invoke-virtual/range {v36 .. v36}, Landroid/util/SparseArray;->size()I

    move-result v19

    const/4 v12, 0x0

    :goto_4
    move/from16 v0, v19

    if-ge v12, v0, :cond_20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v36, v0

    move-object/from16 v0, v36

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mDisplayContents:Landroid/util/SparseArray;

    move-object/from16 v36, v0

    move-object/from16 v0, v36

    invoke-virtual {v0, v12}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v10}, Lcom/android/server/wm/DisplayContent;->getDisplayId()I

    move-result v36

    move-object/from16 v0, p0

    move/from16 v1, v36

    invoke-virtual {v0, v1}, Lcom/android/server/wm/WindowAnimator;->getPendingLayoutChanges(I)I

    move-result v20

    and-int/lit8 v36, v20, 0x4

    if-eqz v36, :cond_7

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/wm/WindowAnimator;->mBulkUpdateParams:I

    move/from16 v36, v0

    or-int/lit8 v36, v36, 0x20

    move/from16 v0, v36

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/wm/WindowAnimator;->mBulkUpdateParams:I

    :cond_7
    if-eqz v20, :cond_8

    const/4 v15, 0x1

    :cond_8
    add-int/lit8 v12, v12, 0x1

    goto :goto_4

    :cond_9
    :try_start_2
    move-object/from16 v0, v32

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    move-object/from16 v36, v0

    const/16 v37, 0x1

    invoke-virtual/range {v36 .. v37}, Lcom/android/server/wm/WindowStateAnimator;->prepareSurfaceLocked(Z)V

    move-object/from16 v0, v32

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mChildWindows:Lcom/android/server/wm/WindowList;

    move-object/from16 v36, v0

    invoke-interface/range {v36 .. v36}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_5
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v36

    if-eqz v36, :cond_4

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/wm/WindowState;

    iget-object v0, v7, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    move-object/from16 v36, v0

    const/16 v37, 0x1

    invoke-virtual/range {v36 .. v37}, Lcom/android/server/wm/WindowStateAnimator;->prepareSurfaceLocked(Z)V
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_5

    :catchall_0
    move-exception v36

    invoke-static {}, Landroid/view/SurfaceControl;->closeTransaction()V

    sget-boolean v37, Lcom/android/server/wm/WindowManagerDebugConfig;->SHOW_TRANSACTIONS:Z

    if-eqz v37, :cond_a

    sget-object v37, Lcom/android/server/wm/WindowAnimator;->TAG:Ljava/lang/String;

    const-string/jumbo v38, "<<< CLOSE TRANSACTION animateLocked"

    invoke-static/range {v37 .. v38}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_a
    throw v36

    :cond_b
    const/16 v17, 0x0

    :goto_6
    move/from16 v0, v17

    if-ge v0, v4, :cond_c

    :try_start_3
    move-object/from16 v0, v34

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v36

    check-cast v36, Lcom/android/server/wm/WindowState;

    move-object/from16 v0, v36

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    move-object/from16 v36, v0

    const/16 v37, 0x1

    invoke-virtual/range {v36 .. v37}, Lcom/android/server/wm/WindowStateAnimator;->prepareSurfaceLocked(Z)V

    add-int/lit8 v17, v17, 0x1

    goto :goto_6

    :cond_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v36, v0

    move-object/from16 v0, v36

    invoke-virtual {v0, v11}, Lcom/android/server/wm/WindowManagerService;->getDisplayContentLocked(I)Lcom/android/server/wm/DisplayContent;

    move-result-object v36

    invoke-virtual/range {v36 .. v36}, Lcom/android/server/wm/DisplayContent;->getDockedStackLocked()Lcom/android/server/wm/TaskStack;

    move-result-object v36

    if-eqz v36, :cond_f

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v36, v0

    move-object/from16 v0, v36

    invoke-virtual {v0, v11}, Lcom/android/server/wm/WindowManagerService;->getDisplayContentLocked(I)Lcom/android/server/wm/DisplayContent;

    move-result-object v36

    invoke-virtual/range {v36 .. v36}, Lcom/android/server/wm/DisplayContent;->getDockedDividerController()Lcom/android/server/wm/DockedStackDividerController;

    move-result-object v36

    invoke-virtual/range {v36 .. v36}, Lcom/android/server/wm/DockedStackDividerController;->isResizing()Z

    move-result v36

    if-eqz v36, :cond_d

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v36, v0

    move-object/from16 v0, v36

    invoke-virtual {v0, v11}, Lcom/android/server/wm/WindowManagerService;->getDisplayContentLocked(I)Lcom/android/server/wm/DisplayContent;

    move-result-object v36

    invoke-virtual/range {v36 .. v36}, Lcom/android/server/wm/DisplayContent;->getDockedDividerController()Lcom/android/server/wm/DockedStackDividerController;

    move-result-object v36

    invoke-virtual/range {v36 .. v36}, Lcom/android/server/wm/DockedStackDividerController;->isMinimizedDock()Z

    move-result v36

    if-eqz v36, :cond_f

    :cond_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v36, v0

    move-object/from16 v0, v36

    invoke-virtual {v0, v11}, Lcom/android/server/wm/WindowManagerService;->getDisplayContentLocked(I)Lcom/android/server/wm/DisplayContent;

    move-result-object v36

    invoke-virtual/range {v36 .. v36}, Lcom/android/server/wm/DisplayContent;->getStacks()Ljava/util/ArrayList;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/util/ArrayList;->size()I

    move-result v36

    add-int/lit8 v23, v36, -0x1

    :goto_7
    if-ltz v23, :cond_f

    move-object/from16 v0, v24

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Lcom/android/server/wm/TaskStack;

    invoke-virtual/range {v22 .. v22}, Lcom/android/server/wm/TaskStack;->getColorLayerSurface()Lcom/android/server/wm/IMultiWindowStackColorLayer;

    move-result-object v36

    if-eqz v36, :cond_e

    invoke-virtual/range {v22 .. v22}, Lcom/android/server/wm/TaskStack;->getColorLayerSurface()Lcom/android/server/wm/IMultiWindowStackColorLayer;

    move-result-object v36

    invoke-interface/range {v36 .. v36}, Lcom/android/server/wm/IMultiWindowStackColorLayer;->isShowing()Z

    move-result v36

    if-eqz v36, :cond_e

    invoke-virtual/range {v22 .. v22}, Lcom/android/server/wm/TaskStack;->getColorLayerSurface()Lcom/android/server/wm/IMultiWindowStackColorLayer;

    move-result-object v36

    invoke-interface/range {v36 .. v36}, Lcom/android/server/wm/IMultiWindowStackColorLayer;->isBoundsOutOfScreen()Z

    move-result v36

    if-eqz v36, :cond_e

    invoke-virtual/range {v22 .. v22}, Lcom/android/server/wm/TaskStack;->getColorLayerSurface()Lcom/android/server/wm/IMultiWindowStackColorLayer;

    move-result-object v36

    invoke-interface/range {v36 .. v36}, Lcom/android/server/wm/IMultiWindowStackColorLayer;->adjustLayer()V

    invoke-virtual/range {v22 .. v22}, Lcom/android/server/wm/TaskStack;->updateColorLayerSurface()V

    :cond_e
    add-int/lit8 v23, v23, -0x1

    goto :goto_7

    :cond_f
    add-int/lit8 v16, v16, 0x1

    goto/16 :goto_0

    :cond_10
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v36, v0

    move-object/from16 v0, v36

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mMultiWindowManagerInternal:Lcom/android/server/wm/IMultiWindowManagerInternalBridge;

    move-object/from16 v36, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/server/wm/WindowAnimator;->mCurrentTime:J

    move-wide/from16 v38, v0

    move-object/from16 v0, v36

    move-wide/from16 v1, v38

    invoke-interface {v0, v1, v2}, Lcom/android/server/wm/IMultiWindowManagerInternalBridge;->stepAnimationLocked(J)Z

    move-result v36

    if-eqz v36, :cond_11

    const/16 v36, 0x1

    move/from16 v0, v36

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/wm/WindowAnimator;->mAnimating:Z

    :cond_11
    const/16 v16, 0x0

    :goto_8
    move/from16 v0, v16

    move/from16 v1, v19

    if-ge v0, v1, :cond_1c

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowAnimator;->mDisplayContentsAnimators:Landroid/util/SparseArray;

    move-object/from16 v36, v0

    move-object/from16 v0, v36

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v11

    move-object/from16 v0, p0

    invoke-direct {v0, v11}, Lcom/android/server/wm/WindowAnimator;->testTokenMayBeDrawnLocked(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowAnimator;->mDisplayContentsAnimators:Landroid/util/SparseArray;

    move-object/from16 v36, v0

    move-object/from16 v0, v36

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v36

    check-cast v36, Lcom/android/server/wm/WindowAnimator$DisplayContentsAnimator;

    move-object/from16 v0, v36

    iget-object v0, v0, Lcom/android/server/wm/WindowAnimator$DisplayContentsAnimator;->mScreenRotationAnimation:Lcom/android/server/wm/ScreenRotationAnimation;

    move-object/from16 v21, v0

    if-eqz v21, :cond_12

    invoke-virtual/range {v21 .. v21}, Lcom/android/server/wm/ScreenRotationAnimation;->updateSurfacesInTransaction()V

    :cond_12
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v36, v0

    move-object/from16 v0, v36

    invoke-virtual {v0, v11}, Lcom/android/server/wm/WindowManagerService;->getDisplayContentLocked(I)Lcom/android/server/wm/DisplayContent;

    move-result-object v36

    invoke-virtual/range {v36 .. v36}, Lcom/android/server/wm/DisplayContent;->animateDimLayers()Z

    move-result v36

    move-object/from16 v0, p0

    move/from16 v1, v36

    invoke-virtual {v0, v1}, Lcom/android/server/wm/WindowAnimator;->orAnimating(Z)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v36, v0

    move-object/from16 v0, v36

    invoke-virtual {v0, v11}, Lcom/android/server/wm/WindowManagerService;->getDisplayContentLocked(I)Lcom/android/server/wm/DisplayContent;

    move-result-object v36

    invoke-virtual/range {v36 .. v36}, Lcom/android/server/wm/DisplayContent;->getDockedDividerController()Lcom/android/server/wm/DockedStackDividerController;

    move-result-object v36

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/server/wm/WindowAnimator;->mCurrentTime:J

    move-wide/from16 v38, v0

    move-object/from16 v0, v36

    move-wide/from16 v1, v38

    invoke-virtual {v0, v1, v2}, Lcom/android/server/wm/DockedStackDividerController;->animate(J)Z

    move-result v36

    move-object/from16 v0, p0

    move/from16 v1, v36

    invoke-virtual {v0, v1}, Lcom/android/server/wm/WindowAnimator;->orAnimating(Z)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v36, v0

    move-object/from16 v0, v36

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mAccessibilityController:Lcom/android/server/wm/AccessibilityController;

    move-object/from16 v36, v0

    if-eqz v36, :cond_13

    if-nez v11, :cond_13

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v36, v0

    move-object/from16 v0, v36

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mAccessibilityController:Lcom/android/server/wm/AccessibilityController;

    move-object/from16 v36, v0

    invoke-virtual/range {v36 .. v36}, Lcom/android/server/wm/AccessibilityController;->drawMagnifiedRegionBorderIfNeededLocked()V

    :cond_13
    sget-boolean v36, Lcom/samsung/android/framework/feature/MultiWindowFeatures;->SAMSUNG_MULTIWINDOW_DYNAMIC_ENABLED:Z

    if-eqz v36, :cond_1b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v36, v0

    move-object/from16 v0, v36

    invoke-virtual {v0, v11}, Lcom/android/server/wm/WindowManagerService;->getDisplayContentLocked(I)Lcom/android/server/wm/DisplayContent;

    move-result-object v36

    invoke-virtual/range {v36 .. v36}, Lcom/android/server/wm/DisplayContent;->getTasks()Ljava/util/ArrayList;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/util/ArrayList;->size()I

    move-result v36

    add-int/lit8 v26, v36, -0x1

    :goto_9
    if-ltz v26, :cond_1b

    move-object/from16 v0, v27

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Lcom/android/server/wm/Task;

    move-object/from16 v0, v25

    iget-object v0, v0, Lcom/android/server/wm/Task;->mBackgroundControl:Landroid/view/SurfaceControl;

    move-object/from16 v36, v0

    if-nez v36, :cond_14

    :goto_a
    add-int/lit8 v26, v26, -0x1

    goto :goto_9

    :cond_14
    const/16 v30, 0x0

    move-object/from16 v0, v25

    iget-object v0, v0, Lcom/android/server/wm/Task;->mAppTokens:Lcom/android/server/wm/AppTokenList;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Lcom/android/server/wm/AppTokenList;->size()I

    move-result v36

    add-int/lit8 v28, v36, -0x1

    :goto_b
    if-ltz v28, :cond_17

    move-object/from16 v0, v29

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/android/server/wm/AppTokenList;->get(I)Ljava/lang/Object;

    move-result-object v35

    check-cast v35, Lcom/android/server/wm/AppWindowToken;

    move-object/from16 v0, v35

    iget-object v0, v0, Lcom/android/server/wm/AppWindowToken;->allAppWindows:Lcom/android/server/wm/WindowList;

    move-object/from16 v36, v0

    invoke-interface/range {v36 .. v36}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v33

    :cond_15
    invoke-interface/range {v33 .. v33}, Ljava/util/Iterator;->hasNext()Z

    move-result v36

    if-eqz v36, :cond_16

    invoke-interface/range {v33 .. v33}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v32

    check-cast v32, Lcom/android/server/wm/WindowState;

    move-object/from16 v0, v32

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    move-object/from16 v36, v0

    move-object/from16 v0, v36

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    move/from16 v36, v0

    const/16 v37, 0x1

    move/from16 v0, v36

    move/from16 v1, v37

    if-ne v0, v1, :cond_15

    move-object/from16 v0, v32

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    move-object/from16 v36, v0

    move-object/from16 v0, v36

    iget-boolean v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mLastHidden:Z

    move/from16 v36, v0

    if-nez v36, :cond_16

    move-object/from16 v30, v32

    :cond_16
    add-int/lit8 v28, v28, -0x1

    goto :goto_b

    :cond_17
    if-eqz v30, :cond_1a

    move-object/from16 v0, v30

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    move-object/from16 v36, v0

    move-object/from16 v0, v36

    iget v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mLastLayer:I

    move/from16 v18, v0

    move-object/from16 v0, v30

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mChildWindows:Lcom/android/server/wm/WindowList;

    move-object/from16 v36, v0

    invoke-interface/range {v36 .. v36}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_18
    :goto_c
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v36

    if-eqz v36, :cond_19

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/wm/WindowState;

    iget-object v0, v5, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    move-object/from16 v36, v0

    move-object/from16 v0, v36

    iget v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mLastLayer:I

    move/from16 v36, v0

    move/from16 v0, v18

    move/from16 v1, v36

    if-le v0, v1, :cond_18

    invoke-virtual {v5}, Lcom/android/server/wm/WindowState;->isDrawnLw()Z

    move-result v36

    if-eqz v36, :cond_18

    iget-object v0, v5, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    move-object/from16 v36, v0

    move-object/from16 v0, v36

    iget v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mLastLayer:I

    move/from16 v18, v0

    goto :goto_c

    :cond_19
    move-object/from16 v0, v25

    iget-object v0, v0, Lcom/android/server/wm/Task;->mBackgroundControl:Landroid/view/SurfaceControl;

    move-object/from16 v36, v0

    add-int/lit8 v37, v18, -0x2

    invoke-virtual/range {v36 .. v37}, Landroid/view/SurfaceControl;->setLayer(I)V

    move-object/from16 v0, v25

    iget-object v0, v0, Lcom/android/server/wm/Task;->mBackgroundControl:Landroid/view/SurfaceControl;

    move-object/from16 v36, v0

    invoke-virtual/range {v36 .. v36}, Landroid/view/SurfaceControl;->show()V

    goto/16 :goto_a

    :cond_1a
    move-object/from16 v0, v25

    iget-object v0, v0, Lcom/android/server/wm/Task;->mBackgroundControl:Landroid/view/SurfaceControl;

    move-object/from16 v36, v0

    invoke-virtual/range {v36 .. v36}, Landroid/view/SurfaceControl;->hide()V

    goto/16 :goto_a

    :cond_1b
    add-int/lit8 v16, v16, 0x1

    goto/16 :goto_8

    :cond_1c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v36, v0

    move-object/from16 v0, v36

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mDragState:Lcom/android/server/wm/DragState;

    move-object/from16 v36, v0

    if-eqz v36, :cond_1d

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/wm/WindowAnimator;->mAnimating:Z

    move/from16 v36, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v37, v0

    move-object/from16 v0, v37

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mDragState:Lcom/android/server/wm/DragState;

    move-object/from16 v37, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/server/wm/WindowAnimator;->mCurrentTime:J

    move-wide/from16 v38, v0

    invoke-virtual/range {v37 .. v39}, Lcom/android/server/wm/DragState;->stepAnimationLocked(J)Z

    move-result v37

    or-int v36, v36, v37

    move/from16 v0, v36

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/wm/WindowAnimator;->mAnimating:Z

    :cond_1d
    invoke-static {}, Lcom/android/server/SamsungCoreServices;->getMultiScreenService()Lcom/android/server/am/IMultiScreenManagerServiceBridge;

    move-result-object v36

    invoke-interface/range {v36 .. v36}, Lcom/android/server/am/IMultiScreenManagerServiceBridge;->clearVirtualScreenPosition()V

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/wm/WindowAnimator;->mAnimating:Z

    move/from16 v36, v0

    if-eqz v36, :cond_1e

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v36, v0

    invoke-virtual/range {v36 .. v36}, Lcom/android/server/wm/WindowManagerService;->scheduleAnimationLocked()V

    :cond_1e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v36, v0

    move-object/from16 v0, v36

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mWatermark:Lcom/android/server/wm/Watermark;

    move-object/from16 v36, v0

    if-eqz v36, :cond_1f

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v36, v0

    move-object/from16 v0, v36

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mWatermark:Lcom/android/server/wm/Watermark;

    move-object/from16 v36, v0

    invoke-virtual/range {v36 .. v36}, Lcom/android/server/wm/Watermark;->drawIfNeeded()V
    :try_end_3
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :cond_1f
    invoke-static {}, Landroid/view/SurfaceControl;->closeTransaction()V

    sget-boolean v36, Lcom/android/server/wm/WindowManagerDebugConfig;->SHOW_TRANSACTIONS:Z

    if-eqz v36, :cond_6

    sget-object v36, Lcom/android/server/wm/WindowAnimator;->TAG:Ljava/lang/String;

    const-string/jumbo v37, "<<< CLOSE TRANSACTION animateLocked"

    invoke-static/range {v36 .. v37}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    :cond_20
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/wm/WindowAnimator;->mBulkUpdateParams:I

    move/from16 v36, v0

    if-eqz v36, :cond_21

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowAnimator;->mWindowPlacerLocked:Lcom/android/server/wm/WindowSurfacePlacer;

    move-object/from16 v36, v0

    invoke-virtual/range {v36 .. v36}, Lcom/android/server/wm/WindowSurfacePlacer;->copyAnimToLayoutParamsLocked()Z

    move-result v13

    :cond_21
    if-nez v15, :cond_22

    if-eqz v13, :cond_23

    :cond_22
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowAnimator;->mWindowPlacerLocked:Lcom/android/server/wm/WindowSurfacePlacer;

    move-object/from16 v36, v0

    invoke-virtual/range {v36 .. v36}, Lcom/android/server/wm/WindowSurfacePlacer;->requestTraversal()V

    :cond_23
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/wm/WindowAnimator;->mAnimating:Z

    move/from16 v36, v0

    if-eqz v36, :cond_24

    if-eqz v31, :cond_28

    :cond_24
    :goto_d
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/wm/WindowAnimator;->mAnimating:Z

    move/from16 v36, v0

    if-nez v36, :cond_25

    if-eqz v31, :cond_25

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowAnimator;->mWindowPlacerLocked:Lcom/android/server/wm/WindowSurfacePlacer;

    move-object/from16 v36, v0

    invoke-virtual/range {v36 .. v36}, Lcom/android/server/wm/WindowSurfacePlacer;->requestTraversal()V

    const-wide/16 v36, 0x20

    invoke-static/range {v36 .. v37}, Landroid/os/Trace;->isTagEnabled(J)Z

    move-result v36

    if-eqz v36, :cond_25

    const-string/jumbo v36, "animating"

    const-wide/16 v38, 0x20

    const/16 v37, 0x0

    move-wide/from16 v0, v38

    move-object/from16 v2, v36

    move/from16 v3, v37

    invoke-static {v0, v1, v2, v3}, Landroid/os/Trace;->asyncTraceEnd(JLjava/lang/String;I)V

    :cond_25
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/wm/WindowAnimator;->mRemoveReplacedWindows:Z

    move/from16 v36, v0

    if-eqz v36, :cond_26

    invoke-direct/range {p0 .. p0}, Lcom/android/server/wm/WindowAnimator;->removeReplacedWindowsLocked()V

    :cond_26
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v36, v0

    invoke-virtual/range {v36 .. v36}, Lcom/android/server/wm/WindowManagerService;->stopUsingSavedSurfaceLocked()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v36, v0

    invoke-virtual/range {v36 .. v36}, Lcom/android/server/wm/WindowManagerService;->destroyPreservedSurfaceLocked()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v36, v0

    move-object/from16 v0, v36

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mWindowPlacerLocked:Lcom/android/server/wm/WindowSurfacePlacer;

    move-object/from16 v36, v0

    invoke-virtual/range {v36 .. v36}, Lcom/android/server/wm/WindowSurfacePlacer;->destroyPendingSurfaces()V

    sget-boolean v36, Lcom/samsung/android/framework/feature/MultiWindowFeatures;->SAMSUNG_MULTIWINDOW_DYNAMIC_ENABLED:Z

    if-eqz v36, :cond_29

    const/16 v16, 0x0

    :goto_e
    move/from16 v0, v16

    move/from16 v1, v19

    if-ge v0, v1, :cond_29

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v36, v0

    move-object/from16 v0, v36

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mDisplayContents:Landroid/util/SparseArray;

    move-object/from16 v36, v0

    move-object/from16 v0, v36

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/server/wm/DisplayContent;

    if-eqz v10, :cond_27

    invoke-virtual {v10}, Lcom/android/server/wm/DisplayContent;->drawFreeformRoundedDimIfNeeded()V

    :cond_27
    add-int/lit8 v16, v16, 0x1

    goto :goto_e

    :cond_28
    const-wide/16 v36, 0x20

    invoke-static/range {v36 .. v37}, Landroid/os/Trace;->isTagEnabled(J)Z

    move-result v36

    if-eqz v36, :cond_24

    const-string/jumbo v36, "animating"

    const-wide/16 v38, 0x20

    const/16 v37, 0x0

    move-wide/from16 v0, v38

    move-object/from16 v2, v36

    move/from16 v3, v37

    invoke-static {v0, v1, v2, v3}, Landroid/os/Trace;->asyncTraceBegin(JLjava/lang/String;I)V

    goto/16 :goto_d

    :cond_29
    sget-boolean v36, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_WINDOW_TRACE:Z

    if-eqz v36, :cond_2a

    sget-object v36, Lcom/android/server/wm/WindowAnimator;->TAG:Ljava/lang/String;

    new-instance v37, Ljava/lang/StringBuilder;

    invoke-direct/range {v37 .. v37}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v38, "!!! animate: exit mAnimating="

    invoke-virtual/range {v37 .. v38}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/wm/WindowAnimator;->mAnimating:Z

    move/from16 v38, v0

    invoke-virtual/range {v37 .. v38}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v37

    const-string/jumbo v38, " mBulkUpdateParams="

    invoke-virtual/range {v37 .. v38}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/wm/WindowAnimator;->mBulkUpdateParams:I

    move/from16 v38, v0

    invoke-static/range {v38 .. v38}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v38

    invoke-virtual/range {v37 .. v38}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    const-string/jumbo v38, " mPendingLayoutChanges(DEFAULT_DISPLAY)="

    invoke-virtual/range {v37 .. v38}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    const/16 v38, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v38

    invoke-virtual {v0, v1}, Lcom/android/server/wm/WindowAnimator;->getPendingLayoutChanges(I)I

    move-result v38

    invoke-static/range {v38 .. v38}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v38

    invoke-virtual/range {v37 .. v38}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    invoke-virtual/range {v37 .. v37}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v37

    invoke-static/range {v36 .. v37}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2a
    return-void
.end method

.method private static bulkUpdateParamsToString(I)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    and-int/lit8 v1, p0, 0x1

    if-eqz v1, :cond_0

    const-string/jumbo v1, " UPDATE_ROTATION"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    and-int/lit8 v1, p0, 0x2

    if-eqz v1, :cond_1

    const-string/jumbo v1, " WALLPAPER_MAY_CHANGE"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    and-int/lit8 v1, p0, 0x4

    if-eqz v1, :cond_2

    const-string/jumbo v1, " FORCE_HIDING_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    and-int/lit8 v1, p0, 0x8

    if-eqz v1, :cond_3

    const-string/jumbo v1, " ORIENTATION_CHANGE_COMPLETE"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_3
    and-int/lit8 v1, p0, 0x10

    if-eqz v1, :cond_4

    const-string/jumbo v1, " TURN_ON_SCREEN"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_4
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private forceHidingToString()Ljava/lang/String;
    .locals 2

    iget v0, p0, Lcom/android/server/wm/WindowAnimator;->mForceHiding:I

    packed-switch v0, :pswitch_data_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "KEYGUARD STATE UNKNOWN "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/wm/WindowAnimator;->mForceHiding:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_0
    const-string/jumbo v0, "KEYGUARD_NOT_SHOWN"

    return-object v0

    :pswitch_1
    const-string/jumbo v0, "KEYGUARD_SHOWN"

    return-object v0

    :pswitch_2
    const-string/jumbo v0, "KEYGUARD_ANIMATING_OUT"

    return-object v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private getDisplayContentsAnimatorLocked(I)Lcom/android/server/wm/WindowAnimator$DisplayContentsAnimator;
    .locals 3

    const/4 v2, 0x0

    iget-object v1, p0, Lcom/android/server/wm/WindowAnimator;->mDisplayContentsAnimators:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/WindowAnimator$DisplayContentsAnimator;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/server/wm/WindowAnimator$DisplayContentsAnimator;

    invoke-direct {v0, p0, v2}, Lcom/android/server/wm/WindowAnimator$DisplayContentsAnimator;-><init>(Lcom/android/server/wm/WindowAnimator;Lcom/android/server/wm/WindowAnimator$DisplayContentsAnimator;)V

    iget-object v1, p0, Lcom/android/server/wm/WindowAnimator;->mDisplayContentsAnimators:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_0
    return-object v0
.end method

.method private isinWhitelist(Ljava/lang/String;)Z
    .locals 7

    const/4 v6, 0x1

    const/4 v3, 0x0

    new-array v1, v6, [Ljava/lang/String;

    const-string/jumbo v2, "ContainerKeyguard"

    aput-object v2, v1, v3

    array-length v4, v1

    move v2, v3

    :goto_0
    if-ge v2, v4, :cond_1

    aget-object v0, v1, v2

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_0

    return v6

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return v3
.end method

.method private removeReplacedWindowsLocked()V
    .locals 7

    const/4 v6, 0x0

    sget-boolean v4, Lcom/android/server/wm/WindowManagerDebugConfig;->SHOW_TRANSACTIONS:Z

    if-eqz v4, :cond_0

    sget-object v4, Lcom/android/server/wm/WindowAnimator;->TAG:Ljava/lang/String;

    const-string/jumbo v5, ">>> OPEN TRANSACTION removeReplacedWindows"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-static {}, Landroid/view/SurfaceControl;->openTransaction()V

    :try_start_0
    iget-object v4, p0, Lcom/android/server/wm/WindowAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v4, v4, Lcom/android/server/wm/WindowManagerService;->mDisplayContents:Landroid/util/SparseArray;

    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    move-result v4

    add-int/lit8 v1, v4, -0x1

    :goto_0
    if-ltz v1, :cond_2

    iget-object v4, p0, Lcom/android/server/wm/WindowAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v4, v4, Lcom/android/server/wm/WindowManagerService;->mDisplayContents:Landroid/util/SparseArray;

    invoke-virtual {v4, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/DisplayContent;

    iget-object v4, p0, Lcom/android/server/wm/WindowAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->getDisplayId()I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/android/server/wm/WindowManagerService;->getWindowListLocked(I)Lcom/android/server/wm/WindowList;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/wm/WindowList;->size()I

    move-result v4

    add-int/lit8 v2, v4, -0x1

    :goto_1
    if-ltz v2, :cond_1

    invoke-virtual {v3, v2}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/wm/WindowState;

    invoke-virtual {v4}, Lcom/android/server/wm/WindowState;->maybeRemoveReplacedWindow()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    add-int/lit8 v2, v2, -0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_2
    invoke-static {}, Landroid/view/SurfaceControl;->closeTransaction()V

    sget-boolean v4, Lcom/android/server/wm/WindowManagerDebugConfig;->SHOW_TRANSACTIONS:Z

    if-eqz v4, :cond_3

    sget-object v4, Lcom/android/server/wm/WindowAnimator;->TAG:Ljava/lang/String;

    const-string/jumbo v5, "<<< CLOSE TRANSACTION removeReplacedWindows"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    iput-boolean v6, p0, Lcom/android/server/wm/WindowAnimator;->mRemoveReplacedWindows:Z

    return-void

    :catchall_0
    move-exception v4

    invoke-static {}, Landroid/view/SurfaceControl;->closeTransaction()V

    sget-boolean v5, Lcom/android/server/wm/WindowManagerDebugConfig;->SHOW_TRANSACTIONS:Z

    if-eqz v5, :cond_4

    sget-object v5, Lcom/android/server/wm/WindowAnimator;->TAG:Ljava/lang/String;

    const-string/jumbo v6, "<<< CLOSE TRANSACTION removeReplacedWindows"

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    throw v4
.end method

.method private shouldForceHide(Lcom/android/server/wm/WindowState;)Z
    .locals 13

    iget-object v11, p0, Lcom/android/server/wm/WindowAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v5, v11, Lcom/android/server/wm/WindowManagerService;->mInputMethodTarget:Lcom/android/server/wm/WindowState;

    if-eqz v5, :cond_7

    invoke-virtual {v5}, Lcom/android/server/wm/WindowState;->isVisibleNow()Z

    move-result v11

    if-eqz v11, :cond_7

    invoke-virtual {v5}, Lcom/android/server/wm/WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v11

    iget v11, v11, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v12, 0x80000

    and-int/2addr v11, v12

    if-nez v11, :cond_5

    iget-object v11, p0, Lcom/android/server/wm/WindowAnimator;->mPolicy:Landroid/view/WindowManagerPolicy;

    iget-object v12, v5, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v11, v5, v12}, Landroid/view/WindowManagerPolicy;->canBeForceHidden(Landroid/view/WindowManagerPolicy$WindowState;Landroid/view/WindowManager$LayoutParams;)Z

    move-result v11

    if-eqz v11, :cond_6

    const/4 v8, 0x0

    :goto_0
    iget-object v11, p0, Lcom/android/server/wm/WindowAnimator;->mPolicy:Landroid/view/WindowManagerPolicy;

    invoke-interface {v11}, Landroid/view/WindowManagerPolicy;->getWinShowWhenLockedLw()Landroid/view/WindowManagerPolicy$WindowState;

    move-result-object v10

    check-cast v10, Lcom/android/server/wm/WindowState;

    if-nez v10, :cond_8

    const/4 v1, 0x0

    :goto_1
    iget-object v2, p1, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    iget-boolean v11, p1, Lcom/android/server/wm/WindowState;->mIsImWindow:Z

    if-nez v11, :cond_0

    if-ne v5, p1, :cond_9

    :cond_0
    move v0, v8

    :goto_2
    iget-object v11, p1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v11, v11, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v12, 0x80000

    and-int/2addr v11, v12

    if-eqz v11, :cond_a

    iget-boolean v11, p1, Lcom/android/server/wm/WindowState;->mTurnOnScreen:Z

    :goto_3
    or-int/2addr v0, v11

    iget-object v11, p0, Lcom/android/server/wm/WindowAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v11, v11, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    check-cast v11, Lcom/android/server/policy/PhoneWindowManager;

    invoke-virtual {v11}, Lcom/android/server/policy/PhoneWindowManager;->getSamsungPolicy()Lcom/android/server/policy/SamsungWindowManagerPolicy;

    move-result-object v11

    invoke-interface {v11}, Lcom/android/server/policy/SamsungWindowManagerPolicy;->getAppsShowWhenLockedLw()Ljava/util/ArrayList;

    move-result-object v11

    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->getAppToken()Landroid/view/IApplicationToken;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v11

    or-int/2addr v0, v11

    if-eqz v1, :cond_2

    iget-object v11, p1, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    if-eq v1, v11, :cond_1

    iget-object v11, p1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v11, v11, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v12, 0x80000

    and-int/2addr v11, v12

    if-eqz v11, :cond_b

    :cond_1
    const/4 v11, 0x1

    :goto_4
    or-int/2addr v0, v11

    :cond_2
    iget-object v11, p0, Lcom/android/server/wm/WindowAnimator;->mPolicy:Landroid/view/WindowManagerPolicy;

    invoke-interface {v11}, Landroid/view/WindowManagerPolicy;->isKeyguardShowingOrOccluded()Z

    move-result v11

    if-eqz v11, :cond_f

    iget v11, p0, Lcom/android/server/wm/WindowAnimator;->mForceHiding:I

    const/4 v12, 0x2

    if-eq v11, v12, :cond_e

    const/4 v7, 0x1

    :goto_5
    iget-object v11, p1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v11, v11, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v12, 0x7f2

    if-ne v11, v12, :cond_11

    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v11

    invoke-virtual {v11}, Lcom/android/server/wm/DisplayContent;->getDockedStackLocked()Lcom/android/server/wm/TaskStack;

    move-result-object v11

    if-eqz v11, :cond_10

    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v11

    invoke-virtual {v11}, Lcom/android/server/wm/DisplayContent;->getDockedDividerController()Lcom/android/server/wm/DockedStackDividerController;

    move-result-object v11

    invoke-virtual {v11}, Lcom/android/server/wm/DockedStackDividerController;->shouldHideDivider()Z

    move-result v3

    :goto_6
    const/4 v4, 0x0

    iget-object v11, p0, Lcom/android/server/wm/WindowAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v11, v11, Lcom/android/server/wm/WindowManagerService;->mBridge:Lcom/android/server/wm/IWindowManagerServiceBridge;

    invoke-interface {v11, p1, v7, v0}, Lcom/android/server/wm/IWindowManagerServiceBridge;->shouldForceHideIfNeeded(Lcom/android/server/wm/WindowState;ZZ)Z

    move-result v4

    iget-object v11, p1, Lcom/android/server/wm/WindowState;->mSession:Lcom/android/server/wm/Session;

    iget v11, v11, Lcom/android/server/wm/Session;->mUid:I

    invoke-static {v11}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v9

    if-nez v7, :cond_3

    const/16 v11, 0x64

    if-lt v9, v11, :cond_3

    const/16 v11, 0xc8

    if-gt v9, v11, :cond_3

    invoke-static {v9}, Lcom/samsung/android/knox/SemPersonaManager;->isSecureFolderId(I)Z

    move-result v11

    if-eqz v11, :cond_12

    :cond_3
    :goto_7
    if-eqz v7, :cond_4

    if-eqz v0, :cond_16

    :cond_4
    if-nez v3, :cond_17

    :goto_8
    return v4

    :cond_5
    const/4 v8, 0x1

    goto/16 :goto_0

    :cond_6
    const/4 v8, 0x1

    goto/16 :goto_0

    :cond_7
    const/4 v8, 0x0

    goto/16 :goto_0

    :cond_8
    iget-object v1, v10, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    goto/16 :goto_1

    :cond_9
    const/4 v0, 0x0

    goto/16 :goto_2

    :cond_a
    const/4 v11, 0x0

    goto/16 :goto_3

    :cond_b
    iget-object v11, p1, Lcom/android/server/wm/WindowState;->mAttachedWindow:Lcom/android/server/wm/WindowState;

    if-eqz v11, :cond_c

    iget-object v11, p1, Lcom/android/server/wm/WindowState;->mAttachedWindow:Lcom/android/server/wm/WindowState;

    iget-object v11, v11, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v11, v11, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v12, 0x80000

    and-int/2addr v11, v12

    if-nez v11, :cond_1

    :cond_c
    iget-object v11, p1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v11, v11, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    and-int/lit16 v11, v11, 0x100

    if-eqz v11, :cond_d

    const/4 v11, 0x1

    goto :goto_4

    :cond_d
    const/4 v11, 0x0

    goto/16 :goto_4

    :cond_e
    const/4 v7, 0x0

    goto :goto_5

    :cond_f
    const/4 v7, 0x0

    goto :goto_5

    :cond_10
    const/4 v3, 0x1

    goto :goto_6

    :cond_11
    const/4 v3, 0x0

    goto :goto_6

    :cond_12
    invoke-virtual {p0}, Lcom/android/server/wm/WindowAnimator;->getPersonaManagerLocked()Lcom/android/server/pm/PersonaManagerService;

    move-result-object v11

    if-eqz v11, :cond_13

    invoke-virtual {p0}, Lcom/android/server/wm/WindowAnimator;->getPersonaManagerLocked()Lcom/android/server/pm/PersonaManagerService;

    move-result-object v11

    sget-object v12, Lcom/samsung/android/knox/SemPersonaState;->LOCKED:Lcom/samsung/android/knox/SemPersonaState;

    invoke-virtual {v11, v12, v9}, Lcom/android/server/pm/PersonaManagerService;->inState(Lcom/samsung/android/knox/SemPersonaState;I)Z

    move-result v11

    if-eqz v11, :cond_13

    invoke-virtual {p0}, Lcom/android/server/wm/WindowAnimator;->getPersonaManagerLocked()Lcom/android/server/pm/PersonaManagerService;

    move-result-object v11

    invoke-virtual {v11, v9}, Lcom/android/server/pm/PersonaManagerService;->isKnoxKeyguardShown(I)Z

    move-result v11

    if-eqz v11, :cond_14

    :cond_13
    const/4 v6, 0x0

    :goto_9
    if-eqz v6, :cond_3

    iget-object v11, p1, Lcom/android/server/wm/WindowState;->mLastTitle:Ljava/lang/CharSequence;

    invoke-interface {v11}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {p0, v11}, Lcom/android/server/wm/WindowAnimator;->isinWhitelist(Ljava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_3

    iget-object v11, p1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v11, v11, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v12, 0x80000

    and-int/2addr v11, v12

    if-nez v11, :cond_3

    const/4 v7, 0x1

    goto :goto_7

    :cond_14
    invoke-virtual {p0}, Lcom/android/server/wm/WindowAnimator;->getPersonaManagerLocked()Lcom/android/server/pm/PersonaManagerService;

    move-result-object v11

    invoke-virtual {v11, v9}, Lcom/android/server/pm/PersonaManagerService;->isUserHasTrust(I)Z

    move-result v11

    if-eqz v11, :cond_15

    const/4 v11, 0x0

    :goto_a
    move v6, v11

    goto :goto_9

    :cond_15
    const/4 v11, 0x1

    goto :goto_a

    :cond_16
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->getDisplayId()I

    move-result v11

    if-nez v11, :cond_4

    const/4 v4, 0x1

    goto/16 :goto_8

    :cond_17
    const/4 v4, 0x1

    goto/16 :goto_8
.end method

.method private testTokenMayBeDrawnLocked(I)V
    .locals 12

    iget-object v9, p0, Lcom/android/server/wm/WindowAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v9, p1}, Lcom/android/server/wm/WindowManagerService;->getDisplayContentLocked(I)Lcom/android/server/wm/DisplayContent;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/server/wm/DisplayContent;->getTasks()Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v2, :cond_4

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/server/wm/Task;

    iget-object v7, v9, Lcom/android/server/wm/Task;->mAppTokens:Lcom/android/server/wm/AppTokenList;

    invoke-virtual {v7}, Lcom/android/server/wm/AppTokenList;->size()I

    move-result v3

    const/4 v6, 0x0

    :goto_1
    if-ge v6, v3, :cond_3

    invoke-virtual {v7, v6}, Lcom/android/server/wm/AppTokenList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/wm/AppWindowToken;

    iget-object v1, v8, Lcom/android/server/wm/AppWindowToken;->mAppAnimator:Lcom/android/server/wm/AppWindowAnimator;

    iget-boolean v0, v8, Lcom/android/server/wm/AppWindowToken;->allDrawn:Z

    iget-boolean v9, v1, Lcom/android/server/wm/AppWindowAnimator;->allDrawn:Z

    if-eq v0, v9, :cond_1

    iput-boolean v0, v1, Lcom/android/server/wm/AppWindowAnimator;->allDrawn:Z

    if-eqz v0, :cond_1

    iget-boolean v9, v1, Lcom/android/server/wm/AppWindowAnimator;->freezingScreen:Z

    if-eqz v9, :cond_2

    invoke-virtual {v1}, Lcom/android/server/wm/AppWindowAnimator;->showAllWindowsLocked()Z

    iget-object v9, p0, Lcom/android/server/wm/WindowAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    const/4 v10, 0x0

    const/4 v11, 0x1

    invoke-virtual {v9, v8, v10, v11}, Lcom/android/server/wm/WindowManagerService;->unsetAppFreezingScreenLocked(Lcom/android/server/wm/AppWindowToken;ZZ)V

    sget-boolean v9, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_ORIENTATION:Z

    if-eqz v9, :cond_0

    sget-object v9, Lcom/android/server/wm/WindowAnimator;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "Setting mOrientationChangeComplete=true because wtoken "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, " numInteresting="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v11, v8, Lcom/android/server/wm/AppWindowToken;->numInterestingWindows:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, " numDrawn="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v11, v8, Lcom/android/server/wm/AppWindowToken;->numDrawnWindows:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const-string/jumbo v9, "testTokenMayBeDrawnLocked: freezingScreen"

    const/4 v10, 0x4

    invoke-virtual {p0, v1, v10, v9, p1}, Lcom/android/server/wm/WindowAnimator;->setAppLayoutChanges(Lcom/android/server/wm/AppWindowAnimator;ILjava/lang/String;I)V

    :cond_1
    :goto_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_2
    const-string/jumbo v9, "testTokenMayBeDrawnLocked"

    const/16 v10, 0x8

    invoke-virtual {p0, v1, v10, v9, p1}, Lcom/android/server/wm/WindowAnimator;->setAppLayoutChanges(Lcom/android/server/wm/AppWindowAnimator;ILjava/lang/String;I)V

    iget-object v9, p0, Lcom/android/server/wm/WindowAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v9, v9, Lcom/android/server/wm/WindowManagerService;->mOpeningApps:Landroid/util/ArraySet;

    invoke-virtual {v9, v8}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_1

    invoke-virtual {v1}, Lcom/android/server/wm/AppWindowAnimator;->showAllWindowsLocked()Z

    move-result v9

    invoke-virtual {p0, v9}, Lcom/android/server/wm/WindowAnimator;->orAnimating(Z)V

    goto :goto_2

    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_0

    :cond_4
    return-void
.end method

.method private updateAppWindowsLocked(I)V
    .locals 14

    iget-object v11, p0, Lcom/android/server/wm/WindowAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v11, p1}, Lcom/android/server/wm/WindowManagerService;->getDisplayContentLocked(I)Lcom/android/server/wm/DisplayContent;

    move-result-object v11

    invoke-virtual {v11}, Lcom/android/server/wm/DisplayContent;->getStacks()Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v11

    add-int/lit8 v5, v11, -0x1

    :goto_0
    if-ltz v5, :cond_7

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/wm/TaskStack;

    invoke-virtual {v4}, Lcom/android/server/wm/TaskStack;->getTasks()Ljava/util/ArrayList;

    move-result-object v8

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v11

    add-int/lit8 v7, v11, -0x1

    :goto_1
    if-ltz v7, :cond_3

    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/server/wm/Task;

    iget-object v10, v11, Lcom/android/server/wm/Task;->mAppTokens:Lcom/android/server/wm/AppTokenList;

    invoke-virtual {v10}, Lcom/android/server/wm/AppTokenList;->size()I

    move-result v11

    add-int/lit8 v9, v11, -0x1

    :goto_2
    if-ltz v9, :cond_2

    invoke-virtual {v10, v9}, Lcom/android/server/wm/AppTokenList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/server/wm/AppWindowToken;

    iget-object v0, v11, Lcom/android/server/wm/AppWindowToken;->mAppAnimator:Lcom/android/server/wm/AppWindowAnimator;

    iget-boolean v11, v0, Lcom/android/server/wm/AppWindowAnimator;->animating:Z

    iput-boolean v11, v0, Lcom/android/server/wm/AppWindowAnimator;->wasAnimating:Z

    iget-wide v12, p0, Lcom/android/server/wm/WindowAnimator;->mCurrentTime:J

    invoke-virtual {v0, v12, v13, p1}, Lcom/android/server/wm/AppWindowAnimator;->stepAnimationLocked(JI)Z

    move-result v11

    if-eqz v11, :cond_1

    const/4 v11, 0x1

    iput-boolean v11, v0, Lcom/android/server/wm/AppWindowAnimator;->animating:Z

    const/4 v11, 0x1

    invoke-virtual {p0, v11}, Lcom/android/server/wm/WindowAnimator;->setAnimating(Z)V

    const/4 v11, 0x1

    iput-boolean v11, p0, Lcom/android/server/wm/WindowAnimator;->mAppWindowAnimating:Z

    const/4 v11, 0x1

    iput-boolean v11, p0, Lcom/android/server/wm/WindowAnimator;->mAppWindowAnimatingStarted:Z

    :cond_0
    :goto_3
    add-int/lit8 v9, v9, -0x1

    goto :goto_2

    :cond_1
    iget-boolean v11, v0, Lcom/android/server/wm/AppWindowAnimator;->wasAnimating:Z

    if-eqz v11, :cond_0

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "appToken "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, v0, Lcom/android/server/wm/AppWindowAnimator;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, " done"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x4

    invoke-virtual {p0, v0, v12, v11, p1}, Lcom/android/server/wm/WindowAnimator;->setAppLayoutChanges(Lcom/android/server/wm/AppWindowAnimator;ILjava/lang/String;I)V

    sget-boolean v11, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_ANIM:Z

    if-eqz v11, :cond_0

    sget-object v11, Lcom/android/server/wm/WindowAnimator;->TAG:Ljava/lang/String;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "updateWindowsApps...: done animating "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-object v13, v0, Lcom/android/server/wm/AppWindowAnimator;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    :cond_2
    add-int/lit8 v7, v7, -0x1

    goto :goto_1

    :cond_3
    iget-object v1, v4, Lcom/android/server/wm/TaskStack;->mExitingAppTokens:Lcom/android/server/wm/AppTokenList;

    invoke-virtual {v1}, Lcom/android/server/wm/AppTokenList;->size()I

    move-result v2

    const/4 v3, 0x0

    :goto_4
    if-ge v3, v2, :cond_6

    invoke-virtual {v1, v3}, Lcom/android/server/wm/AppTokenList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/server/wm/AppWindowToken;

    iget-object v0, v11, Lcom/android/server/wm/AppWindowToken;->mAppAnimator:Lcom/android/server/wm/AppWindowAnimator;

    iget-boolean v11, v0, Lcom/android/server/wm/AppWindowAnimator;->animating:Z

    iput-boolean v11, v0, Lcom/android/server/wm/AppWindowAnimator;->wasAnimating:Z

    iget-wide v12, p0, Lcom/android/server/wm/WindowAnimator;->mCurrentTime:J

    invoke-virtual {v0, v12, v13, p1}, Lcom/android/server/wm/AppWindowAnimator;->stepAnimationLocked(JI)Z

    move-result v11

    if-eqz v11, :cond_5

    const/4 v11, 0x1

    invoke-virtual {p0, v11}, Lcom/android/server/wm/WindowAnimator;->setAnimating(Z)V

    const/4 v11, 0x1

    iput-boolean v11, p0, Lcom/android/server/wm/WindowAnimator;->mAppWindowAnimating:Z

    const/4 v11, 0x1

    iput-boolean v11, p0, Lcom/android/server/wm/WindowAnimator;->mAppWindowAnimatingStarted:Z

    :cond_4
    :goto_5
    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    :cond_5
    iget-boolean v11, v0, Lcom/android/server/wm/AppWindowAnimator;->wasAnimating:Z

    if-eqz v11, :cond_4

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "exiting appToken "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, v0, Lcom/android/server/wm/AppWindowAnimator;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, " done"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x4

    invoke-virtual {p0, v0, v12, v11, p1}, Lcom/android/server/wm/WindowAnimator;->setAppLayoutChanges(Lcom/android/server/wm/AppWindowAnimator;ILjava/lang/String;I)V

    sget-boolean v11, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_ANIM:Z

    if-eqz v11, :cond_4

    sget-object v11, Lcom/android/server/wm/WindowAnimator;->TAG:Ljava/lang/String;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "updateWindowsApps...: done animating exiting "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-object v13, v0, Lcom/android/server/wm/AppWindowAnimator;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    :cond_6
    add-int/lit8 v5, v5, -0x1

    goto/16 :goto_0

    :cond_7
    iget-boolean v11, p0, Lcom/android/server/wm/WindowAnimator;->mAppWindowAnimatingStarted:Z

    if-eqz v11, :cond_8

    iget-boolean v11, p0, Lcom/android/server/wm/WindowAnimator;->mAppWindowAnimating:Z

    if-eqz v11, :cond_9

    :cond_8
    :goto_6
    return-void

    :cond_9
    const/4 v11, 0x0

    iput-boolean v11, p0, Lcom/android/server/wm/WindowAnimator;->mAppWindowAnimatingStarted:Z

    iget-object v11, p0, Lcom/android/server/wm/WindowAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v11, v11, Lcom/android/server/wm/WindowManagerService;->mMultiWindowManagerInternal:Lcom/android/server/wm/IMultiWindowManagerInternalBridge;

    invoke-interface {v11}, Lcom/android/server/wm/IMultiWindowManagerInternalBridge;->notifyMultiWindowAppTransitionFinishedLocked()V

    goto :goto_6
.end method

.method private updateWallpaperLocked(I)V
    .locals 12

    const/high16 v10, 0x100000

    iget-object v9, p0, Lcom/android/server/wm/WindowAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v9, p1}, Lcom/android/server/wm/WindowManagerService;->getDisplayContentLocked(I)Lcom/android/server/wm/DisplayContent;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/server/wm/DisplayContent;->resetAnimationBackgroundAnimator()V

    iget-object v9, p0, Lcom/android/server/wm/WindowAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v9, p1}, Lcom/android/server/wm/WindowManagerService;->getWindowListLocked(I)Lcom/android/server/wm/WindowList;

    move-result-object v8

    const/4 v2, 0x0

    invoke-virtual {v8}, Lcom/android/server/wm/WindowList;->size()I

    move-result v9

    add-int/lit8 v4, v9, -0x1

    :goto_0
    if-ltz v4, :cond_7

    invoke-virtual {v8, v4}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/wm/WindowState;

    iget-object v7, v6, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    iget-object v9, v7, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceController:Lcom/android/server/wm/WindowSurfaceController;

    if-eqz v9, :cond_4

    invoke-virtual {v7}, Lcom/android/server/wm/WindowStateAnimator;->hasSurface()Z

    move-result v9

    if-eqz v9, :cond_4

    iget-object v9, v6, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v3, v9, Landroid/view/WindowManager$LayoutParams;->flags:I

    iget-boolean v9, v7, Lcom/android/server/wm/WindowStateAnimator;->mAnimating:Z

    if-eqz v9, :cond_2

    iget-object v9, v7, Lcom/android/server/wm/WindowStateAnimator;->mAnimation:Landroid/view/animation/Animation;

    if-eqz v9, :cond_1

    and-int v9, v3, v10

    if-eqz v9, :cond_0

    iget-object v9, v7, Lcom/android/server/wm/WindowStateAnimator;->mAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v9}, Landroid/view/animation/Animation;->getDetachWallpaper()Z

    move-result v9

    if-eqz v9, :cond_0

    move-object v2, v6

    :cond_0
    iget-object v9, v7, Lcom/android/server/wm/WindowStateAnimator;->mAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v9}, Landroid/view/animation/Animation;->getBackgroundColor()I

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v6}, Lcom/android/server/wm/WindowState;->getStack()Lcom/android/server/wm/TaskStack;

    move-result-object v5

    if-eqz v5, :cond_1

    invoke-virtual {v5, v7, v1}, Lcom/android/server/wm/TaskStack;->setAnimationBackground(Lcom/android/server/wm/WindowStateAnimator;I)V

    :cond_1
    const/4 v9, 0x1

    invoke-virtual {p0, v9}, Lcom/android/server/wm/WindowAnimator;->setAnimating(Z)V

    :cond_2
    iget-object v0, v7, Lcom/android/server/wm/WindowStateAnimator;->mAppAnimator:Lcom/android/server/wm/AppWindowAnimator;

    if-eqz v0, :cond_4

    iget-object v9, v0, Lcom/android/server/wm/AppWindowAnimator;->animation:Landroid/view/animation/Animation;

    if-eqz v9, :cond_4

    iget-boolean v9, v0, Lcom/android/server/wm/AppWindowAnimator;->animating:Z

    if-eqz v9, :cond_4

    and-int v9, v3, v10

    if-eqz v9, :cond_3

    iget-object v9, v0, Lcom/android/server/wm/AppWindowAnimator;->animation:Landroid/view/animation/Animation;

    invoke-virtual {v9}, Landroid/view/animation/Animation;->getDetachWallpaper()Z

    move-result v9

    if-eqz v9, :cond_3

    move-object v2, v6

    :cond_3
    iget-object v9, v0, Lcom/android/server/wm/AppWindowAnimator;->animation:Landroid/view/animation/Animation;

    invoke-virtual {v9}, Landroid/view/animation/Animation;->getBackgroundColor()I

    move-result v1

    if-eqz v1, :cond_4

    invoke-virtual {v6}, Lcom/android/server/wm/WindowState;->getStack()Lcom/android/server/wm/TaskStack;

    move-result-object v5

    sget-boolean v9, Lcom/samsung/android/framework/feature/MultiWindowFeatures;->SAMSUNG_MULTIWINDOW_DYNAMIC_ENABLED:Z

    if-eqz v9, :cond_6

    if-eqz v5, :cond_4

    invoke-virtual {v6}, Lcom/android/server/wm/WindowState;->inFreeformWorkspace()Z

    move-result v9

    if-eqz v9, :cond_5

    :cond_4
    :goto_1
    add-int/lit8 v4, v4, -0x1

    goto :goto_0

    :cond_5
    invoke-virtual {v5, v7, v1}, Lcom/android/server/wm/TaskStack;->setAnimationBackground(Lcom/android/server/wm/WindowStateAnimator;I)V

    goto :goto_1

    :cond_6
    if-eqz v5, :cond_4

    invoke-virtual {v5, v7, v1}, Lcom/android/server/wm/TaskStack;->setAnimationBackground(Lcom/android/server/wm/WindowStateAnimator;I)V

    goto :goto_1

    :cond_7
    iget-object v9, p0, Lcom/android/server/wm/WindowAnimator;->mWindowDetachedWallpaper:Lcom/android/server/wm/WindowState;

    if-eq v9, v2, :cond_8

    invoke-static {}, Lcom/android/server/SamsungCoreServices;->getMultiScreenService()Lcom/android/server/am/IMultiScreenManagerServiceBridge;

    move-result-object v9

    invoke-interface {v9, p1}, Lcom/android/server/am/IMultiScreenManagerServiceBridge;->isVirtualScreen(I)Z

    move-result v9

    if-eqz v9, :cond_9

    :cond_8
    :goto_2
    return-void

    :cond_9
    sget-boolean v9, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_WALLPAPER:Z

    if-eqz v9, :cond_a

    sget-object v9, Lcom/android/server/wm/WindowAnimator;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "Detached wallpaper changed from "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/android/server/wm/WindowAnimator;->mWindowDetachedWallpaper:Lcom/android/server/wm/WindowState;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, " to "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_a
    iput-object v2, p0, Lcom/android/server/wm/WindowAnimator;->mWindowDetachedWallpaper:Lcom/android/server/wm/WindowState;

    iget v9, p0, Lcom/android/server/wm/WindowAnimator;->mBulkUpdateParams:I

    or-int/lit8 v9, v9, 0x2

    iput v9, p0, Lcom/android/server/wm/WindowAnimator;->mBulkUpdateParams:I

    goto :goto_2
.end method

.method private updateWindowsLocked(I)V
    .locals 38

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/wm/WindowAnimator;->mAnimTransactionSequence:I

    move/from16 v32, v0

    add-int/lit8 v32, v32, 0x1

    move/from16 v0, v32

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/wm/WindowAnimator;->mAnimTransactionSequence:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/android/server/wm/WindowManagerService;->getWindowListLocked(I)Lcom/android/server/wm/WindowList;

    move-result-object v31

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/wm/WindowAnimator;->mKeyguardGoingAwayFlags:I

    move/from16 v32, v0

    and-int/lit8 v32, v32, 0x1

    if-eqz v32, :cond_0

    const/16 v18, 0x1

    :goto_0
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/wm/WindowAnimator;->mKeyguardGoingAwayFlags:I

    move/from16 v32, v0

    and-int/lit8 v32, v32, 0x2

    if-eqz v32, :cond_1

    const/16 v17, 0x1

    :goto_1
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/wm/WindowAnimator;->mKeyguardGoingAwayFlags:I

    move/from16 v32, v0

    and-int/lit8 v32, v32, 0x4

    if-eqz v32, :cond_2

    const/16 v19, 0x1

    :goto_2
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/wm/WindowAnimator;->mKeyguardGoingAway:Z

    move/from16 v32, v0

    if-eqz v32, :cond_5

    invoke-virtual/range {v31 .. v31}, Lcom/android/server/wm/WindowList;->size()I

    move-result v32

    add-int/lit8 v16, v32, -0x1

    :goto_3
    if-ltz v16, :cond_5

    move-object/from16 v0, v31

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v29

    check-cast v29, Lcom/android/server/wm/WindowState;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowAnimator;->mPolicy:Landroid/view/WindowManagerPolicy;

    move-object/from16 v32, v0

    move-object/from16 v0, v29

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    move-object/from16 v33, v0

    invoke-interface/range {v32 .. v33}, Landroid/view/WindowManagerPolicy;->isKeyguardHostWindow(Landroid/view/WindowManager$LayoutParams;)Z

    move-result v32

    if-nez v32, :cond_3

    add-int/lit8 v16, v16, -0x1

    goto :goto_3

    :cond_0
    const/16 v18, 0x0

    goto :goto_0

    :cond_1
    const/16 v17, 0x0

    goto :goto_1

    :cond_2
    const/16 v19, 0x0

    goto :goto_2

    :cond_3
    move-object/from16 v0, v29

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    move-object/from16 v30, v0

    move-object/from16 v0, v29

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    move/from16 v32, v0

    move/from16 v0, v32

    and-int/lit16 v0, v0, 0x400

    move/from16 v32, v0

    if-eqz v32, :cond_10

    move-object/from16 v0, v30

    iget-boolean v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mAnimating:Z

    move/from16 v32, v0

    if-nez v32, :cond_5

    sget-boolean v32, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_KEYGUARD:Z

    if-eqz v32, :cond_4

    sget-object v32, Lcom/android/server/wm/WindowAnimator;->TAG:Ljava/lang/String;

    const-string/jumbo v33, "updateWindowsLocked: creating delay animation"

    invoke-static/range {v32 .. v33}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    new-instance v32, Landroid/view/animation/AlphaAnimation;

    const/high16 v33, 0x3f800000    # 1.0f

    const/high16 v34, 0x3f800000    # 1.0f

    invoke-direct/range {v32 .. v34}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    move-object/from16 v0, v32

    move-object/from16 v1, v30

    iput-object v0, v1, Lcom/android/server/wm/WindowStateAnimator;->mAnimation:Landroid/view/animation/Animation;

    move-object/from16 v0, v30

    iget-object v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mAnimation:Landroid/view/animation/Animation;

    move-object/from16 v32, v0

    const-wide/16 v34, 0x3e8

    move-object/from16 v0, v32

    move-wide/from16 v1, v34

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    const/16 v32, 0x0

    move/from16 v0, v32

    move-object/from16 v1, v30

    iput-boolean v0, v1, Lcom/android/server/wm/WindowStateAnimator;->mAnimationIsEntrance:Z

    const-wide/16 v32, -0x1

    move-wide/from16 v0, v32

    move-object/from16 v2, v30

    iput-wide v0, v2, Lcom/android/server/wm/WindowStateAnimator;->mAnimationStartTime:J

    const/16 v32, 0x1

    move/from16 v0, v32

    move-object/from16 v1, v30

    iput-boolean v0, v1, Lcom/android/server/wm/WindowStateAnimator;->mKeyguardGoingAwayAnimation:Z

    move/from16 v0, v19

    move-object/from16 v1, v30

    iput-boolean v0, v1, Lcom/android/server/wm/WindowStateAnimator;->mKeyguardGoingAwayWithWallpaper:Z

    :cond_5
    :goto_4
    const/16 v32, 0x0

    move/from16 v0, v32

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/wm/WindowAnimator;->mForceHiding:I

    const/16 v27, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v25, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mWallpaperControllerLocked:Lcom/android/server/wm/WallpaperController;

    move-object/from16 v26, v0

    const/4 v15, 0x0

    const/4 v12, 0x0

    if-nez p1, :cond_6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/android/server/wm/WindowManagerService;->getDisplayContentLocked(I)Lcom/android/server/wm/DisplayContent;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Lcom/android/server/wm/DisplayContent;->getDockedDividerController()Lcom/android/server/wm/DockedStackDividerController;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Lcom/android/server/wm/DockedStackDividerController;->isMinimizedDock()Z

    move-result v12

    :cond_6
    invoke-virtual/range {v31 .. v31}, Lcom/android/server/wm/WindowList;->size()I

    move-result v32

    add-int/lit8 v16, v32, -0x1

    :goto_5
    if-ltz v16, :cond_36

    move-object/from16 v0, v31

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v29

    check-cast v29, Lcom/android/server/wm/WindowState;

    move-object/from16 v0, v29

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    move-object/from16 v30, v0

    move-object/from16 v0, v29

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    iget v14, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowAnimator;->mPolicy:Landroid/view/WindowManagerPolicy;

    move-object/from16 v32, v0

    move-object/from16 v0, v29

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    move-object/from16 v33, v0

    move-object/from16 v0, v32

    move-object/from16 v1, v29

    move-object/from16 v2, v33

    invoke-interface {v0, v1, v2}, Landroid/view/WindowManagerPolicy;->canBeForceHidden(Landroid/view/WindowManagerPolicy$WindowState;Landroid/view/WindowManager$LayoutParams;)Z

    move-result v10

    move-object/from16 v0, p0

    move-object/from16 v1, v29

    invoke-direct {v0, v1}, Lcom/android/server/wm/WindowAnimator;->shouldForceHide(Lcom/android/server/wm/WindowState;)Z

    move-result v21

    invoke-virtual/range {v30 .. v30}, Lcom/android/server/wm/WindowStateAnimator;->hasSurface()Z

    move-result v32

    if-eqz v32, :cond_34

    move-object/from16 v0, v30

    iget-boolean v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mWasAnimating:Z

    move/from16 v28, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/server/wm/WindowAnimator;->mCurrentTime:J

    move-wide/from16 v32, v0

    move-object/from16 v0, v30

    move-wide/from16 v1, v32

    invoke-virtual {v0, v1, v2}, Lcom/android/server/wm/WindowStateAnimator;->stepAnimationLocked(J)Z

    move-result v20

    move/from16 v0, v20

    move-object/from16 v1, v30

    iput-boolean v0, v1, Lcom/android/server/wm/WindowStateAnimator;->mWasAnimating:Z

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/android/server/wm/WindowAnimator;->orAnimating(Z)V

    sget-boolean v32, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_WALLPAPER:Z

    if-eqz v32, :cond_7

    sget-object v32, Lcom/android/server/wm/WindowAnimator;->TAG:Ljava/lang/String;

    new-instance v33, Ljava/lang/StringBuilder;

    invoke-direct/range {v33 .. v33}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v33

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v33

    const-string/jumbo v34, ": wasAnimating="

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    move-object/from16 v0, v33

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v33

    const-string/jumbo v34, ", nowAnimating="

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    move-object/from16 v0, v33

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v33

    invoke-static/range {v32 .. v33}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7
    if-eqz v28, :cond_8

    move-object/from16 v0, v30

    iget-boolean v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mAnimating:Z

    move/from16 v32, v0

    if-eqz v32, :cond_12

    :cond_8
    :goto_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mBridge:Lcom/android/server/wm/IWindowManagerServiceBridge;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    move-object/from16 v1, v29

    move/from16 v2, p1

    invoke-interface {v0, v1, v2}, Lcom/android/server/wm/IWindowManagerServiceBridge;->updateWindowLockedIfNeeded(Lcom/android/server/wm/WindowState;I)Z

    move-result v32

    if-eqz v32, :cond_13

    sget-boolean v32, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_KEYGUARD:Z

    if-nez v32, :cond_9

    sget-boolean v32, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_VISIBILITY:Z

    if-eqz v32, :cond_a

    :cond_9
    sget-object v32, Lcom/android/server/wm/WindowAnimator;->TAG:Ljava/lang/String;

    new-instance v33, Ljava/lang/StringBuilder;

    invoke-direct/range {v33 .. v33}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v34, "make invisible or uphold invisible: "

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    move-object/from16 v0, v33

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v33

    invoke-static/range {v32 .. v33}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_a
    :goto_7
    move-object/from16 v0, v29

    iget-object v9, v0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    move-object/from16 v0, v30

    iget v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mDrawState:I

    move/from16 v32, v0

    const/16 v33, 0x3

    move/from16 v0, v32

    move/from16 v1, v33

    if-ne v0, v1, :cond_c

    if-eqz v9, :cond_b

    iget-boolean v0, v9, Lcom/android/server/wm/AppWindowToken;->allDrawn:Z

    move/from16 v32, v0

    if-eqz v32, :cond_c

    :cond_b
    invoke-virtual/range {v30 .. v30}, Lcom/android/server/wm/WindowStateAnimator;->performShowLocked()Z

    move-result v32

    if-eqz v32, :cond_c

    const/16 v32, 0x8

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, v32

    invoke-virtual {v0, v1, v2}, Lcom/android/server/wm/WindowAnimator;->setPendingLayoutChanges(II)V

    sget-boolean v32, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_LAYOUT_REPEATS:Z

    if-eqz v32, :cond_c

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowAnimator;->mWindowPlacerLocked:Lcom/android/server/wm/WindowSurfacePlacer;

    move-object/from16 v32, v0

    const-string/jumbo v33, "updateWindowsAndWallpaperLocked 5"

    invoke-virtual/range {p0 .. p1}, Lcom/android/server/wm/WindowAnimator;->getPendingLayoutChanges(I)I

    move-result v34

    invoke-virtual/range {v32 .. v34}, Lcom/android/server/wm/WindowSurfacePlacer;->debugLayoutRepeats(Ljava/lang/String;I)V

    :cond_c
    move-object/from16 v0, v30

    iget-object v7, v0, Lcom/android/server/wm/WindowStateAnimator;->mAppAnimator:Lcom/android/server/wm/AppWindowAnimator;

    if-eqz v7, :cond_e

    iget-object v0, v7, Lcom/android/server/wm/AppWindowAnimator;->thumbnail:Landroid/view/SurfaceControl;

    move-object/from16 v32, v0

    if-eqz v32, :cond_e

    iget v0, v7, Lcom/android/server/wm/AppWindowAnimator;->thumbnailTransactionSeq:I

    move/from16 v32, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/wm/WindowAnimator;->mAnimTransactionSequence:I

    move/from16 v33, v0

    move/from16 v0, v32

    move/from16 v1, v33

    if-eq v0, v1, :cond_d

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/wm/WindowAnimator;->mAnimTransactionSequence:I

    move/from16 v32, v0

    move/from16 v0, v32

    iput v0, v7, Lcom/android/server/wm/AppWindowAnimator;->thumbnailTransactionSeq:I

    const/16 v32, 0x0

    move/from16 v0, v32

    iput v0, v7, Lcom/android/server/wm/AppWindowAnimator;->thumbnailLayer:I

    :cond_d
    iget v0, v7, Lcom/android/server/wm/AppWindowAnimator;->thumbnailLayer:I

    move/from16 v32, v0

    move-object/from16 v0, v30

    iget v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mAnimLayer:I

    move/from16 v33, v0

    move/from16 v0, v32

    move/from16 v1, v33

    if-ge v0, v1, :cond_e

    move-object/from16 v0, v30

    iget v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mAnimLayer:I

    move/from16 v32, v0

    move/from16 v0, v32

    iput v0, v7, Lcom/android/server/wm/AppWindowAnimator;->thumbnailLayer:I

    :cond_e
    move-object/from16 v0, v29

    iget-boolean v0, v0, Lcom/android/server/wm/WindowState;->mIsWallpaper:Z

    move/from16 v32, v0

    if-eqz v32, :cond_f

    move-object/from16 v25, v29

    :cond_f
    :goto_8
    add-int/lit8 v16, v16, -0x1

    goto/16 :goto_5

    :cond_10
    sget-boolean v32, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_KEYGUARD:Z

    if-eqz v32, :cond_11

    sget-object v32, Lcom/android/server/wm/WindowAnimator;->TAG:Ljava/lang/String;

    const-string/jumbo v33, "updateWindowsLocked: StatusBar is no longer keyguard"

    invoke-static/range {v32 .. v33}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_11
    const/16 v32, 0x0

    move/from16 v0, v32

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/wm/WindowAnimator;->mKeyguardGoingAway:Z

    invoke-virtual/range {v30 .. v30}, Lcom/android/server/wm/WindowStateAnimator;->clearAnimation()V

    goto/16 :goto_4

    :cond_12
    move-object/from16 v0, v26

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/android/server/wm/WallpaperController;->isWallpaperTarget(Lcom/android/server/wm/WindowState;)Z

    move-result v32

    if-eqz v32, :cond_8

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/wm/WindowAnimator;->mBulkUpdateParams:I

    move/from16 v32, v0

    or-int/lit8 v32, v32, 0x2

    move/from16 v0, v32

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/wm/WindowAnimator;->mBulkUpdateParams:I

    const/16 v32, 0x0

    const/16 v33, 0x4

    move-object/from16 v0, p0

    move/from16 v1, v32

    move/from16 v2, v33

    invoke-virtual {v0, v1, v2}, Lcom/android/server/wm/WindowAnimator;->setPendingLayoutChanges(II)V

    sget-boolean v32, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_LAYOUT_REPEATS:Z

    if-eqz v32, :cond_8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowAnimator;->mWindowPlacerLocked:Lcom/android/server/wm/WindowSurfacePlacer;

    move-object/from16 v32, v0

    const-string/jumbo v33, "updateWindowsAndWallpaperLocked 2"

    const/16 v34, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v34

    invoke-virtual {v0, v1}, Lcom/android/server/wm/WindowAnimator;->getPendingLayoutChanges(I)I

    move-result v34

    invoke-virtual/range {v32 .. v34}, Lcom/android/server/wm/WindowSurfacePlacer;->debugLayoutRepeats(Ljava/lang/String;I)V

    goto/16 :goto_6

    :cond_13
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowAnimator;->mPolicy:Landroid/view/WindowManagerPolicy;

    move-object/from16 v32, v0

    move-object/from16 v0, v29

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    move-object/from16 v33, v0

    invoke-interface/range {v32 .. v33}, Landroid/view/WindowManagerPolicy;->isForceHiding(Landroid/view/WindowManager$LayoutParams;)Z

    move-result v32

    if-eqz v32, :cond_1d

    if-nez v28, :cond_1a

    if-eqz v20, :cond_1a

    sget-boolean v32, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_KEYGUARD:Z

    if-nez v32, :cond_14

    sget-boolean v32, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_ANIM:Z

    if-nez v32, :cond_14

    sget-boolean v32, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_VISIBILITY:Z

    if-eqz v32, :cond_15

    :cond_14
    sget-object v32, Lcom/android/server/wm/WindowAnimator;->TAG:Ljava/lang/String;

    new-instance v33, Ljava/lang/StringBuilder;

    invoke-direct/range {v33 .. v33}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v34, "Animation started that could impact force hide: "

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    move-object/from16 v0, v33

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v33

    invoke-static/range {v32 .. v33}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_15
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/wm/WindowAnimator;->mBulkUpdateParams:I

    move/from16 v32, v0

    or-int/lit8 v32, v32, 0x4

    move/from16 v0, v32

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/wm/WindowAnimator;->mBulkUpdateParams:I

    const/16 v32, 0x4

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, v32

    invoke-virtual {v0, v1, v2}, Lcom/android/server/wm/WindowAnimator;->setPendingLayoutChanges(II)V

    sget-boolean v32, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_LAYOUT_REPEATS:Z

    if-eqz v32, :cond_16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowAnimator;->mWindowPlacerLocked:Lcom/android/server/wm/WindowSurfacePlacer;

    move-object/from16 v32, v0

    const-string/jumbo v33, "updateWindowsAndWallpaperLocked 3"

    invoke-virtual/range {p0 .. p1}, Lcom/android/server/wm/WindowAnimator;->getPendingLayoutChanges(I)I

    move-result v34

    invoke-virtual/range {v32 .. v34}, Lcom/android/server/wm/WindowSurfacePlacer;->debugLayoutRepeats(Ljava/lang/String;I)V

    :cond_16
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v32, v0

    const/16 v33, 0x1

    move/from16 v0, v33

    move-object/from16 v1, v32

    iput-boolean v0, v1, Lcom/android/server/wm/WindowManagerService;->mFocusMayChange:Z

    :cond_17
    :goto_9
    invoke-virtual/range {v29 .. v29}, Lcom/android/server/wm/WindowState;->isReadyForDisplay()Z

    move-result v32

    if-eqz v32, :cond_18

    if-eqz v20, :cond_1b

    move-object/from16 v0, v29

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    iget-boolean v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mKeyguardGoingAwayAnimation:Z

    move/from16 v32, v0

    if-eqz v32, :cond_1b

    const/16 v32, 0x2

    move/from16 v0, v32

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/wm/WindowAnimator;->mForceHiding:I

    :cond_18
    :goto_a
    sget-boolean v32, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_KEYGUARD:Z

    if-nez v32, :cond_19

    sget-boolean v32, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_VISIBILITY:Z

    if-eqz v32, :cond_a

    :cond_19
    sget-object v32, Lcom/android/server/wm/WindowAnimator;->TAG:Ljava/lang/String;

    new-instance v33, Ljava/lang/StringBuilder;

    invoke-direct/range {v33 .. v33}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v34, "Force hide "

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-direct/range {p0 .. p0}, Lcom/android/server/wm/WindowAnimator;->forceHidingToString()Ljava/lang/String;

    move-result-object v34

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    const-string/jumbo v34, " hasSurface="

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    move-object/from16 v0, v29

    iget-boolean v0, v0, Lcom/android/server/wm/WindowState;->mHasSurface:Z

    move/from16 v34, v0

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v33

    const-string/jumbo v34, " policyVis="

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    move-object/from16 v0, v29

    iget-boolean v0, v0, Lcom/android/server/wm/WindowState;->mPolicyVisibility:Z

    move/from16 v34, v0

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v33

    const-string/jumbo v34, " destroying="

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    move-object/from16 v0, v29

    iget-boolean v0, v0, Lcom/android/server/wm/WindowState;->mDestroying:Z

    move/from16 v34, v0

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v33

    const-string/jumbo v34, " attHidden="

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    move-object/from16 v0, v29

    iget-boolean v0, v0, Lcom/android/server/wm/WindowState;->mAttachedHidden:Z

    move/from16 v34, v0

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v33

    const-string/jumbo v34, " vis="

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    move-object/from16 v0, v29

    iget v0, v0, Lcom/android/server/wm/WindowState;->mViewVisibility:I

    move/from16 v34, v0

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v33

    const-string/jumbo v34, " hidden="

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    move-object/from16 v0, v29

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mRootToken:Lcom/android/server/wm/WindowToken;

    move-object/from16 v34, v0

    move-object/from16 v0, v34

    iget-boolean v0, v0, Lcom/android/server/wm/WindowToken;->hidden:Z

    move/from16 v34, v0

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v33

    const-string/jumbo v34, " anim="

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    move-object/from16 v0, v29

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    move-object/from16 v34, v0

    move-object/from16 v0, v34

    iget-object v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mAnimation:Landroid/view/animation/Animation;

    move-object/from16 v34, v0

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v33

    invoke-static/range {v32 .. v33}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_7

    :cond_1a
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/wm/WindowAnimator;->mKeyguardGoingAway:Z

    move/from16 v32, v0

    if-eqz v32, :cond_17

    if-nez v20, :cond_17

    sget-object v32, Lcom/android/server/wm/WindowAnimator;->TAG:Ljava/lang/String;

    const-string/jumbo v33, "Timeout waiting for animation to startup"

    invoke-static/range {v32 .. v33}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowAnimator;->mPolicy:Landroid/view/WindowManagerPolicy;

    move-object/from16 v32, v0

    const-wide/16 v34, 0x0

    const-wide/16 v36, 0x0

    move-object/from16 v0, v32

    move-wide/from16 v1, v34

    move-wide/from16 v3, v36

    invoke-interface {v0, v1, v2, v3, v4}, Landroid/view/WindowManagerPolicy;->startKeyguardExitAnimation(JJ)V

    const/16 v32, 0x0

    move/from16 v0, v32

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/wm/WindowAnimator;->mKeyguardGoingAway:Z

    goto/16 :goto_9

    :cond_1b
    invoke-virtual/range {v29 .. v29}, Lcom/android/server/wm/WindowState;->isDrawnLw()Z

    move-result v32

    if-eqz v32, :cond_1c

    const/16 v32, 0x1

    :goto_b
    move/from16 v0, v32

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/wm/WindowAnimator;->mForceHiding:I

    goto/16 :goto_a

    :cond_1c
    const/16 v32, 0x0

    goto :goto_b

    :cond_1d
    if-eqz v10, :cond_a

    if-eqz v21, :cond_21

    const/16 v32, 0x0

    const/16 v33, 0x0

    move-object/from16 v0, v29

    move/from16 v1, v32

    move/from16 v2, v33

    invoke-virtual {v0, v1, v2}, Lcom/android/server/wm/WindowState;->hideLw(ZZ)Z

    move-result v32

    if-eqz v32, :cond_f

    sget-boolean v32, Lcom/samsung/android/framework/feature/MultiWindowFeatures;->SAMSUNG_MULTIWINDOW_DYNAMIC_ENABLED:Z

    if-eqz v32, :cond_1f

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mMultiWindowManagerInternal:Lcom/android/server/wm/IMultiWindowManagerInternalBridge;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    move-object/from16 v1, v29

    invoke-interface {v0, v1}, Lcom/android/server/wm/IMultiWindowManagerInternalBridge;->canBeForceHiddenFloatingMultiWindow(Lcom/android/server/wm/WindowState;)Z

    move-result v32

    if-eqz v32, :cond_1f

    if-nez v15, :cond_1e

    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    :cond_1e
    move-object/from16 v0, v29

    invoke-virtual {v15, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1f
    sget-object v32, Lcom/android/server/wm/WindowAnimator;->TAG:Ljava/lang/String;

    new-instance v33, Ljava/lang/StringBuilder;

    invoke-direct/range {v33 .. v33}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v34, "Now policy hidden: "

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    move-object/from16 v0, v33

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v33

    invoke-static/range {v32 .. v33}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_20
    :goto_c
    const/high16 v32, 0x100000

    and-int v32, v32, v14

    if-eqz v32, :cond_a

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/wm/WindowAnimator;->mBulkUpdateParams:I

    move/from16 v32, v0

    or-int/lit8 v32, v32, 0x2

    move/from16 v0, v32

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/wm/WindowAnimator;->mBulkUpdateParams:I

    const/16 v32, 0x0

    const/16 v33, 0x4

    move-object/from16 v0, p0

    move/from16 v1, v32

    move/from16 v2, v33

    invoke-virtual {v0, v1, v2}, Lcom/android/server/wm/WindowAnimator;->setPendingLayoutChanges(II)V

    sget-boolean v32, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_LAYOUT_REPEATS:Z

    if-eqz v32, :cond_a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowAnimator;->mWindowPlacerLocked:Lcom/android/server/wm/WindowSurfacePlacer;

    move-object/from16 v32, v0

    const-string/jumbo v33, "updateWindowsAndWallpaperLocked 4"

    const/16 v34, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v34

    invoke-virtual {v0, v1}, Lcom/android/server/wm/WindowAnimator;->getPendingLayoutChanges(I)I

    move-result v34

    invoke-virtual/range {v32 .. v34}, Lcom/android/server/wm/WindowSurfacePlacer;->debugLayoutRepeats(Ljava/lang/String;I)V

    goto/16 :goto_7

    :cond_21
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowAnimator;->mPostKeyguardExitAnimation:Landroid/view/animation/Animation;

    move-object/from16 v32, v0

    if-eqz v32, :cond_22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowAnimator;->mPostKeyguardExitAnimation:Landroid/view/animation/Animation;

    move-object/from16 v32, v0

    invoke-virtual/range {v32 .. v32}, Landroid/view/animation/Animation;->hasEnded()Z

    move-result v32

    if-eqz v32, :cond_27

    :cond_22
    const/4 v8, 0x0

    :goto_d
    invoke-virtual/range {v29 .. v29}, Lcom/android/server/wm/WindowState;->isAdjustedForMinimizedDock()Z

    move-result v32

    if-nez v32, :cond_23

    move-object/from16 v0, v29

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    move/from16 v32, v0

    const/16 v33, 0x7f2

    move/from16 v0, v32

    move/from16 v1, v33

    if-ne v0, v1, :cond_24

    if-eqz v12, :cond_24

    :cond_23
    const/4 v8, 0x0

    :cond_24
    invoke-static {}, Lcom/android/server/SamsungCoreServices;->getMultiScreenService()Lcom/android/server/am/IMultiScreenManagerServiceBridge;

    move-result-object v32

    invoke-virtual/range {v29 .. v29}, Lcom/android/server/wm/WindowState;->getDisplayId()I

    move-result v33

    invoke-interface/range {v32 .. v33}, Lcom/android/server/am/IMultiScreenManagerServiceBridge;->isVirtualScreen(I)Z

    move-result v32

    if-eqz v32, :cond_25

    invoke-static {}, Lcom/android/server/SamsungCoreServices;->getMultiScreenService()Lcom/android/server/am/IMultiScreenManagerServiceBridge;

    move-result-object v32

    invoke-virtual/range {v29 .. v29}, Lcom/android/server/wm/WindowState;->getDisplayId()I

    move-result v33

    invoke-interface/range {v32 .. v33}, Lcom/android/server/am/IMultiScreenManagerServiceBridge;->isVisibleVirtualScreen(I)Z

    move-result v32

    if-eqz v32, :cond_29

    :cond_25
    const/16 v32, 0x0

    const/16 v33, 0x0

    move-object/from16 v0, v29

    move/from16 v1, v32

    move/from16 v2, v33

    invoke-virtual {v0, v1, v2}, Lcom/android/server/wm/WindowState;->showLw(ZZ)Z

    move-result v32

    if-nez v32, :cond_26

    if-eqz v8, :cond_f

    :cond_26
    invoke-virtual/range {v29 .. v29}, Lcom/android/server/wm/WindowState;->isVisibleNow()Z

    move-result v24

    if-nez v24, :cond_2a

    const/16 v32, 0x0

    const/16 v33, 0x0

    move-object/from16 v0, v29

    move/from16 v1, v32

    move/from16 v2, v33

    invoke-virtual {v0, v1, v2}, Lcom/android/server/wm/WindowState;->hideLw(ZZ)Z

    goto/16 :goto_8

    :cond_27
    move-object/from16 v0, v30

    iget-boolean v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mKeyguardGoingAwayAnimation:Z

    move/from16 v32, v0

    if-nez v32, :cond_22

    invoke-virtual/range {v29 .. v29}, Lcom/android/server/wm/WindowState;->hasDrawnLw()Z

    move-result v32

    if-eqz v32, :cond_22

    move-object/from16 v0, v29

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mAttachedWindow:Lcom/android/server/wm/WindowState;

    move-object/from16 v32, v0

    if-nez v32, :cond_22

    move-object/from16 v0, v29

    iget-boolean v0, v0, Lcom/android/server/wm/WindowState;->mIsImWindow:Z

    move/from16 v32, v0

    if-nez v32, :cond_22

    if-nez p1, :cond_22

    move-object/from16 v0, v29

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    move/from16 v32, v0

    const/16 v33, 0x8b2

    move/from16 v0, v32

    move/from16 v1, v33

    if-eq v0, v1, :cond_22

    move-object/from16 v0, v29

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    move/from16 v32, v0

    const/16 v33, 0x7d9

    move/from16 v0, v32

    move/from16 v1, v33

    if-eq v0, v1, :cond_22

    move-object/from16 v0, v29

    iget-boolean v0, v0, Lcom/android/server/wm/WindowState;->mIsImWindow:Z

    move/from16 v32, v0

    if-eqz v32, :cond_28

    const/4 v8, 0x0

    goto/16 :goto_d

    :cond_28
    const/4 v8, 0x1

    goto/16 :goto_d

    :cond_29
    invoke-virtual/range {v30 .. v30}, Lcom/android/server/wm/WindowStateAnimator;->isAnimationSet()Z

    move-result v32

    if-nez v32, :cond_25

    const/16 v32, 0x0

    const/16 v33, 0x0

    move-object/from16 v0, v29

    move/from16 v1, v32

    move/from16 v2, v33

    invoke-virtual {v0, v1, v2}, Lcom/android/server/wm/WindowState;->hideLw(ZZ)Z

    sget-boolean v32, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_VISIBILITY:Z

    if-eqz v32, :cond_f

    sget-object v32, Lcom/android/server/wm/WindowAnimator;->TAG:Ljava/lang/String;

    new-instance v33, Ljava/lang/StringBuilder;

    invoke-direct/range {v33 .. v33}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v34, "Hide VirtualScreen is not visible "

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    move-object/from16 v0, v33

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v33

    invoke-static/range {v32 .. v33}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_8

    :cond_2a
    sget-boolean v32, Lcom/samsung/android/framework/feature/MultiWindowFeatures;->SAMSUNG_MULTIWINDOW_DYNAMIC_ENABLED:Z

    if-eqz v32, :cond_2c

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/wm/WindowAnimator;->mForceHidingFloatingMultiWindow:Z

    move/from16 v32, v0

    if-eqz v32, :cond_2c

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mMultiWindowManagerInternal:Lcom/android/server/wm/IMultiWindowManagerInternalBridge;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    move-object/from16 v1, v29

    invoke-interface {v0, v1}, Lcom/android/server/wm/IMultiWindowManagerInternalBridge;->canBeForceHiddenFloatingMultiWindow(Lcom/android/server/wm/WindowState;)Z

    move-result v32

    if-eqz v32, :cond_2c

    if-nez v15, :cond_2b

    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    :cond_2b
    move-object/from16 v0, v29

    invoke-virtual {v15, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2c
    sget-object v32, Lcom/android/server/wm/WindowAnimator;->TAG:Ljava/lang/String;

    new-instance v33, Ljava/lang/StringBuilder;

    invoke-direct/range {v33 .. v33}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v34, "Now policy shown: "

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    move-object/from16 v0, v33

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v33

    invoke-static/range {v32 .. v33}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/wm/WindowAnimator;->mBulkUpdateParams:I

    move/from16 v32, v0

    and-int/lit8 v32, v32, 0x4

    if-eqz v32, :cond_32

    move-object/from16 v0, v29

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mAttachedWindow:Lcom/android/server/wm/WindowState;

    move-object/from16 v32, v0

    if-nez v32, :cond_32

    if-nez v23, :cond_2d

    new-instance v23, Ljava/util/ArrayList;

    invoke-direct/range {v23 .. v23}, Ljava/util/ArrayList;-><init>()V

    :cond_2d
    move-object/from16 v0, v23

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/high16 v32, 0x100000

    and-int v32, v32, v14

    if-eqz v32, :cond_2e

    const/16 v27, 0x1

    :cond_2e
    move-object/from16 v0, v29

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    move/from16 v32, v0

    const/16 v33, 0x3

    move/from16 v0, v32

    move/from16 v1, v33

    if-ne v0, v1, :cond_2f

    const/16 v22, 0x1

    :cond_2f
    :goto_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    iget-object v11, v0, Lcom/android/server/wm/WindowManagerService;->mCurrentFocus:Lcom/android/server/wm/WindowState;

    if-eqz v11, :cond_30

    iget v0, v11, Lcom/android/server/wm/WindowState;->mLayer:I

    move/from16 v32, v0

    move-object/from16 v0, v29

    iget v0, v0, Lcom/android/server/wm/WindowState;->mLayer:I

    move/from16 v33, v0

    move/from16 v0, v32

    move/from16 v1, v33

    if-ge v0, v1, :cond_20

    :cond_30
    sget-boolean v32, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_FOCUS_LIGHT:Z

    if-eqz v32, :cond_31

    sget-object v32, Lcom/android/server/wm/WindowAnimator;->TAG:Ljava/lang/String;

    const-string/jumbo v33, "updateWindowsLocked: setting mFocusMayChange true"

    invoke-static/range {v32 .. v33}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_31
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v32, v0

    const/16 v33, 0x1

    move/from16 v0, v33

    move-object/from16 v1, v32

    iput-boolean v0, v1, Lcom/android/server/wm/WindowManagerService;->mFocusMayChange:Z

    goto/16 :goto_c

    :cond_32
    if-eqz v8, :cond_2f

    sget-boolean v32, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_KEYGUARD:Z

    if-eqz v32, :cond_33

    sget-object v32, Lcom/android/server/wm/WindowAnimator;->TAG:Ljava/lang/String;

    new-instance v33, Ljava/lang/StringBuilder;

    invoke-direct/range {v33 .. v33}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v34, "Applying existing Keyguard exit animation to new window: win="

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    move-object/from16 v0, v33

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v33

    invoke-static/range {v32 .. v33}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_33
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowAnimator;->mPolicy:Landroid/view/WindowManagerPolicy;

    move-object/from16 v32, v0

    const/16 v33, 0x0

    move-object/from16 v0, v32

    move/from16 v1, v33

    move/from16 v2, v18

    invoke-interface {v0, v1, v2}, Landroid/view/WindowManagerPolicy;->createForceHideEnterAnimation(ZZ)Landroid/view/animation/Animation;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowAnimator;->mPostKeyguardExitAnimation:Landroid/view/animation/Animation;

    move-object/from16 v32, v0

    invoke-virtual/range {v32 .. v32}, Landroid/view/animation/Animation;->getStartTime()J

    move-result-wide v32

    const/16 v34, 0x1

    move-object/from16 v0, v30

    move-wide/from16 v1, v32

    move/from16 v3, v34

    invoke-virtual {v0, v6, v1, v2, v3}, Lcom/android/server/wm/WindowStateAnimator;->setAnimation(Landroid/view/animation/Animation;JI)V

    const/16 v32, 0x1

    move/from16 v0, v32

    move-object/from16 v1, v30

    iput-boolean v0, v1, Lcom/android/server/wm/WindowStateAnimator;->mKeyguardGoingAwayAnimation:Z

    move/from16 v0, v19

    move-object/from16 v1, v30

    iput-boolean v0, v1, Lcom/android/server/wm/WindowStateAnimator;->mKeyguardGoingAwayWithWallpaper:Z

    goto/16 :goto_e

    :cond_34
    if-eqz v10, :cond_a

    if-eqz v21, :cond_35

    const/16 v32, 0x0

    const/16 v33, 0x0

    move-object/from16 v0, v29

    move/from16 v1, v32

    move/from16 v2, v33

    invoke-virtual {v0, v1, v2}, Lcom/android/server/wm/WindowState;->hideLw(ZZ)Z

    goto/16 :goto_7

    :cond_35
    const/16 v32, 0x0

    const/16 v33, 0x0

    move-object/from16 v0, v29

    move/from16 v1, v32

    move/from16 v2, v33

    invoke-virtual {v0, v1, v2}, Lcom/android/server/wm/WindowState;->showLw(ZZ)Z

    goto/16 :goto_7

    :cond_36
    if-eqz v23, :cond_40

    if-nez v17, :cond_3e

    const/4 v13, 0x1

    invoke-virtual/range {v23 .. v23}, Ljava/util/ArrayList;->size()I

    move-result v32

    add-int/lit8 v16, v32, -0x1

    :goto_f
    if-ltz v16, :cond_3f

    move-object/from16 v0, v23

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v30

    check-cast v30, Lcom/android/server/wm/WindowStateAnimator;

    const/4 v6, 0x0

    move-object/from16 v0, v30

    iget-object v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    move-object/from16 v32, v0

    invoke-virtual/range {v32 .. v32}, Lcom/android/server/wm/WindowState;->isAdjustedForMinimizedDock()Z

    move-result v32

    if-nez v32, :cond_37

    move-object/from16 v0, v30

    iget-object v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    move/from16 v32, v0

    const/16 v33, 0x7f2

    move/from16 v0, v32

    move/from16 v1, v33

    if-ne v0, v1, :cond_3a

    if-eqz v12, :cond_3a

    :cond_37
    :goto_10
    if-eqz v6, :cond_3d

    invoke-virtual {v6}, Landroid/view/animation/Animation;->getDuration()J

    move-result-wide v32

    const-wide/16 v34, 0x0

    cmp-long v32, v32, v34

    if-eqz v32, :cond_3d

    sget-boolean v32, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_KEYGUARD:Z

    if-eqz v32, :cond_38

    sget-object v32, Lcom/android/server/wm/WindowAnimator;->TAG:Ljava/lang/String;

    new-instance v33, Ljava/lang/StringBuilder;

    invoke-direct/range {v33 .. v33}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v34, "Starting keyguard exit animation on window "

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    move-object/from16 v0, v30

    iget-object v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    move-object/from16 v34, v0

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v33

    invoke-static/range {v32 .. v33}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_38
    const/16 v32, 0x1

    move-object/from16 v0, v30

    move/from16 v1, v32

    invoke-virtual {v0, v6, v1}, Lcom/android/server/wm/WindowStateAnimator;->setAnimation(Landroid/view/animation/Animation;I)V

    const/16 v32, 0x1

    move/from16 v0, v32

    move-object/from16 v1, v30

    iput-boolean v0, v1, Lcom/android/server/wm/WindowStateAnimator;->mKeyguardGoingAwayAnimation:Z

    move/from16 v0, v19

    move-object/from16 v1, v30

    iput-boolean v0, v1, Lcom/android/server/wm/WindowStateAnimator;->mKeyguardGoingAwayWithWallpaper:Z

    if-eqz v13, :cond_39

    move-object/from16 v0, p0

    iput-object v6, v0, Lcom/android/server/wm/WindowAnimator;->mPostKeyguardExitAnimation:Landroid/view/animation/Animation;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowAnimator;->mPostKeyguardExitAnimation:Landroid/view/animation/Animation;

    move-object/from16 v32, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/server/wm/WindowAnimator;->mCurrentTime:J

    move-wide/from16 v34, v0

    move-object/from16 v0, v32

    move-wide/from16 v1, v34

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setStartTime(J)V

    const/4 v13, 0x0

    :cond_39
    :goto_11
    add-int/lit8 v16, v16, -0x1

    goto/16 :goto_f

    :cond_3a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowAnimator;->mPolicy:Landroid/view/WindowManagerPolicy;

    move-object/from16 v33, v0

    if-eqz v27, :cond_3b

    if-eqz v22, :cond_3c

    :cond_3b
    const/16 v32, 0x0

    :goto_12
    move-object/from16 v0, v33

    move/from16 v1, v32

    move/from16 v2, v18

    invoke-interface {v0, v1, v2}, Landroid/view/WindowManagerPolicy;->createForceHideEnterAnimation(ZZ)Landroid/view/animation/Animation;

    move-result-object v6

    goto :goto_10

    :cond_3c
    const/16 v32, 0x1

    goto :goto_12

    :cond_3d
    if-eqz v13, :cond_39

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/wm/WindowAnimator;->mKeyguardGoingAway:Z

    move/from16 v32, v0

    if-eqz v32, :cond_39

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowAnimator;->mPolicy:Landroid/view/WindowManagerPolicy;

    move-object/from16 v32, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/server/wm/WindowAnimator;->mCurrentTime:J

    move-wide/from16 v34, v0

    const-wide/16 v36, 0x0

    move-object/from16 v0, v32

    move-wide/from16 v1, v34

    move-wide/from16 v3, v36

    invoke-interface {v0, v1, v2, v3, v4}, Landroid/view/WindowManagerPolicy;->startKeyguardExitAnimation(JJ)V

    const/16 v32, 0x0

    move/from16 v0, v32

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/wm/WindowAnimator;->mKeyguardGoingAway:Z

    const/4 v13, 0x0

    goto :goto_11

    :cond_3e
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/wm/WindowAnimator;->mKeyguardGoingAway:Z

    move/from16 v32, v0

    if-eqz v32, :cond_3f

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowAnimator;->mPolicy:Landroid/view/WindowManagerPolicy;

    move-object/from16 v32, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/server/wm/WindowAnimator;->mCurrentTime:J

    move-wide/from16 v34, v0

    const-wide/16 v36, 0x0

    move-object/from16 v0, v32

    move-wide/from16 v1, v34

    move-wide/from16 v3, v36

    invoke-interface {v0, v1, v2, v3, v4}, Landroid/view/WindowManagerPolicy;->startKeyguardExitAnimation(JJ)V

    const/16 v32, 0x0

    move/from16 v0, v32

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/wm/WindowAnimator;->mKeyguardGoingAway:Z

    :cond_3f
    if-nez v27, :cond_40

    if-eqz v25, :cond_40

    if-eqz v17, :cond_43

    :cond_40
    :goto_13
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowAnimator;->mPostKeyguardExitAnimation:Landroid/view/animation/Animation;

    move-object/from16 v32, v0

    if-eqz v32, :cond_41

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/wm/WindowAnimator;->mKeyguardGoingAway:Z

    move/from16 v32, v0

    if-eqz v32, :cond_45

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowAnimator;->mPolicy:Landroid/view/WindowManagerPolicy;

    move-object/from16 v32, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/server/wm/WindowAnimator;->mCurrentTime:J

    move-wide/from16 v34, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowAnimator;->mPostKeyguardExitAnimation:Landroid/view/animation/Animation;

    move-object/from16 v33, v0

    invoke-virtual/range {v33 .. v33}, Landroid/view/animation/Animation;->getStartOffset()J

    move-result-wide v36

    add-long v34, v34, v36

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowAnimator;->mPostKeyguardExitAnimation:Landroid/view/animation/Animation;

    move-object/from16 v33, v0

    invoke-virtual/range {v33 .. v33}, Landroid/view/animation/Animation;->getDuration()J

    move-result-wide v36

    move-object/from16 v0, v32

    move-wide/from16 v1, v34

    move-wide/from16 v3, v36

    invoke-interface {v0, v1, v2, v3, v4}, Landroid/view/WindowManagerPolicy;->startKeyguardExitAnimation(JJ)V

    const/16 v32, 0x0

    move/from16 v0, v32

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/wm/WindowAnimator;->mKeyguardGoingAway:Z

    :cond_41
    :goto_14
    sget-boolean v32, Lcom/samsung/android/framework/feature/MultiWindowFeatures;->SAMSUNG_MULTIWINDOW_DYNAMIC_ENABLED:Z

    if-eqz v32, :cond_42

    if-eqz v15, :cond_42

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mMultiWindowManagerInternal:Lcom/android/server/wm/IMultiWindowManagerInternalBridge;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    invoke-interface {v0, v15}, Lcom/android/server/wm/IMultiWindowManagerInternalBridge;->applyForceHidingAnimation(Ljava/util/ArrayList;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mMultiWindowManagerInternal:Lcom/android/server/wm/IMultiWindowManagerInternalBridge;

    move-object/from16 v32, v0

    invoke-interface/range {v32 .. v32}, Lcom/android/server/wm/IMultiWindowManagerInternalBridge;->isForceHidingFloatingMultiWindow()Z

    move-result v32

    move/from16 v0, v32

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/wm/WindowAnimator;->mForceHidingFloatingMultiWindow:Z

    :cond_42
    return-void

    :cond_43
    sget-boolean v32, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_KEYGUARD:Z

    if-eqz v32, :cond_44

    sget-object v32, Lcom/android/server/wm/WindowAnimator;->TAG:Ljava/lang/String;

    const-string/jumbo v33, "updateWindowsLocked: wallpaper animating away"

    invoke-static/range {v32 .. v33}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_44
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowAnimator;->mPolicy:Landroid/view/WindowManagerPolicy;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    move/from16 v1, v18

    invoke-interface {v0, v1}, Landroid/view/WindowManagerPolicy;->createForceHideWallpaperExitAnimation(Z)Landroid/view/animation/Animation;

    move-result-object v6

    if-eqz v6, :cond_40

    move-object/from16 v0, v25

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    invoke-virtual {v0, v6}, Lcom/android/server/wm/WindowStateAnimator;->setAnimation(Landroid/view/animation/Animation;)V

    goto/16 :goto_13

    :cond_45
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowAnimator;->mPostKeyguardExitAnimation:Landroid/view/animation/Animation;

    move-object/from16 v32, v0

    invoke-virtual/range {v32 .. v32}, Landroid/view/animation/Animation;->hasEnded()Z

    move-result v32

    if-nez v32, :cond_46

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/server/wm/WindowAnimator;->mCurrentTime:J

    move-wide/from16 v32, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowAnimator;->mPostKeyguardExitAnimation:Landroid/view/animation/Animation;

    move-object/from16 v34, v0

    invoke-virtual/range {v34 .. v34}, Landroid/view/animation/Animation;->getStartTime()J

    move-result-wide v34

    sub-long v32, v32, v34

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowAnimator;->mPostKeyguardExitAnimation:Landroid/view/animation/Animation;

    move-object/from16 v34, v0

    invoke-virtual/range {v34 .. v34}, Landroid/view/animation/Animation;->getDuration()J

    move-result-wide v34

    cmp-long v32, v32, v34

    if-lez v32, :cond_41

    :cond_46
    sget-boolean v32, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_KEYGUARD:Z

    if-eqz v32, :cond_47

    sget-object v32, Lcom/android/server/wm/WindowAnimator;->TAG:Ljava/lang/String;

    const-string/jumbo v33, "Done with Keyguard exit animations."

    invoke-static/range {v32 .. v33}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_47
    const/16 v32, 0x0

    move-object/from16 v0, v32

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/wm/WindowAnimator;->mPostKeyguardExitAnimation:Landroid/view/animation/Animation;

    goto/16 :goto_14
.end method


# virtual methods
.method addDisplayLocked(I)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/server/wm/WindowAnimator;->getDisplayContentsAnimatorLocked(I)Lcom/android/server/wm/WindowAnimator$DisplayContentsAnimator;

    if-nez p1, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/wm/WindowAnimator;->mInitialized:Z

    :cond_0
    return-void
.end method

.method public dumpLocked(Ljava/io/PrintWriter;Ljava/lang/String;Z)V
    .locals 10

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "  "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "  "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v2, 0x0

    :goto_0
    iget-object v8, p0, Lcom/android/server/wm/WindowAnimator;->mDisplayContentsAnimators:Landroid/util/SparseArray;

    invoke-virtual {v8}, Landroid/util/SparseArray;->size()I

    move-result v8

    if-ge v2, v8, :cond_3

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v8, "DisplayContentsAnimator #"

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v8, p0, Lcom/android/server/wm/WindowAnimator;->mDisplayContentsAnimators:Landroid/util/SparseArray;

    invoke-virtual {v8, v2}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v8

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->print(I)V

    const-string/jumbo v8, ":"

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v8, p0, Lcom/android/server/wm/WindowAnimator;->mDisplayContentsAnimators:Landroid/util/SparseArray;

    invoke-virtual {v8, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/WindowAnimator$DisplayContentsAnimator;

    iget-object v8, p0, Lcom/android/server/wm/WindowAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v9, p0, Lcom/android/server/wm/WindowAnimator;->mDisplayContentsAnimators:Landroid/util/SparseArray;

    invoke-virtual {v9, v2}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v9

    invoke-virtual {v8, v9}, Lcom/android/server/wm/WindowManagerService;->getWindowListLocked(I)Lcom/android/server/wm/WindowList;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/server/wm/WindowList;->size()I

    move-result v0

    const/4 v3, 0x0

    :goto_1
    if-ge v3, v0, :cond_0

    invoke-virtual {v7, v3}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/wm/WindowState;

    iget-object v6, v8, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v8, "Window #"

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(I)V

    const-string/jumbo v8, ": "

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_0
    iget-object v8, v1, Lcom/android/server/wm/WindowAnimator$DisplayContentsAnimator;->mScreenRotationAnimation:Lcom/android/server/wm/ScreenRotationAnimation;

    if-eqz v8, :cond_2

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v8, "mScreenRotationAnimation:"

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v8, v1, Lcom/android/server/wm/WindowAnimator$DisplayContentsAnimator;->mScreenRotationAnimation:Lcom/android/server/wm/ScreenRotationAnimation;

    invoke-virtual {v8, v5, p1}, Lcom/android/server/wm/ScreenRotationAnimation;->printTo(Ljava/lang/String;Ljava/io/PrintWriter;)V

    :cond_1
    :goto_2
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    if-eqz p3, :cond_1

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v8, "no ScreenRotationAnimation "

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_2

    :cond_3
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    if-eqz p3, :cond_4

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v8, "mAnimTransactionSequence="

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v8, p0, Lcom/android/server/wm/WindowAnimator;->mAnimTransactionSequence:I

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->print(I)V

    const-string/jumbo v8, " mForceHiding="

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/server/wm/WindowAnimator;->forceHidingToString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v8, "mCurrentTime="

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-wide v8, p0, Lcom/android/server/wm/WindowAnimator;->mCurrentTime:J

    invoke-static {v8, v9}, Landroid/util/TimeUtils;->formatUptime(J)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_4
    iget v8, p0, Lcom/android/server/wm/WindowAnimator;->mBulkUpdateParams:I

    if-eqz v8, :cond_5

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v8, "mBulkUpdateParams=0x"

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v8, p0, Lcom/android/server/wm/WindowAnimator;->mBulkUpdateParams:I

    invoke-static {v8}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v8, p0, Lcom/android/server/wm/WindowAnimator;->mBulkUpdateParams:I

    invoke-static {v8}, Lcom/android/server/wm/WindowAnimator;->bulkUpdateParamsToString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_5
    iget-object v8, p0, Lcom/android/server/wm/WindowAnimator;->mWindowDetachedWallpaper:Lcom/android/server/wm/WindowState;

    if-eqz v8, :cond_6

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v8, "mWindowDetachedWallpaper="

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v8, p0, Lcom/android/server/wm/WindowAnimator;->mWindowDetachedWallpaper:Lcom/android/server/wm/WindowState;

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    :cond_6
    return-void
.end method

.method getPendingLayoutChanges(I)I
    .locals 3

    const/4 v1, 0x0

    if-gez p1, :cond_0

    return v1

    :cond_0
    iget-object v2, p0, Lcom/android/server/wm/WindowAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v2, p1}, Lcom/android/server/wm/WindowManagerService;->getDisplayContentLocked(I)Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    if-eqz v0, :cond_1

    iget v1, v0, Lcom/android/server/wm/DisplayContent;->pendingLayoutChanges:I

    :cond_1
    return v1
.end method

.method getPersonaManagerLocked()Lcom/android/server/pm/PersonaManagerService;
    .locals 2

    iget-object v1, p0, Lcom/android/server/wm/WindowAnimator;->mPersonaManager:Lcom/android/server/pm/PersonaManagerService;

    if-nez v1, :cond_0

    const-string/jumbo v1, "persona"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/knox/ISemPersonaManager$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/knox/ISemPersonaManager;

    move-result-object v1

    check-cast v1, Lcom/android/server/pm/PersonaManagerService;

    iput-object v1, p0, Lcom/android/server/wm/WindowAnimator;->mPersonaManager:Lcom/android/server/pm/PersonaManagerService;

    :cond_0
    iget-object v1, p0, Lcom/android/server/wm/WindowAnimator;->mPersonaManager:Lcom/android/server/pm/PersonaManagerService;

    return-object v1
.end method

.method getScreenRotationAnimationLocked(I)Lcom/android/server/wm/ScreenRotationAnimation;
    .locals 1

    if-gez p1, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    invoke-direct {p0, p1}, Lcom/android/server/wm/WindowAnimator;->getDisplayContentsAnimatorLocked(I)Lcom/android/server/wm/WindowAnimator$DisplayContentsAnimator;

    move-result-object v0

    iget-object v0, v0, Lcom/android/server/wm/WindowAnimator$DisplayContentsAnimator;->mScreenRotationAnimation:Lcom/android/server/wm/ScreenRotationAnimation;

    return-object v0
.end method

.method isAnimating()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/wm/WindowAnimator;->mAnimating:Z

    return v0
.end method

.method orAnimating(Z)V
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/wm/WindowAnimator;->mAnimating:Z

    or-int/2addr v0, p1

    iput-boolean v0, p0, Lcom/android/server/wm/WindowAnimator;->mAnimating:Z

    return-void
.end method

.method removeDisplayLocked(I)V
    .locals 4

    const/4 v3, 0x0

    const/4 v2, 0x0

    iget-object v1, p0, Lcom/android/server/wm/WindowAnimator;->mDisplayContentsAnimators:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/WindowAnimator$DisplayContentsAnimator;

    if-eqz v0, :cond_0

    iget-object v1, v0, Lcom/android/server/wm/WindowAnimator$DisplayContentsAnimator;->mScreenRotationAnimation:Lcom/android/server/wm/ScreenRotationAnimation;

    if-eqz v1, :cond_0

    iget-object v1, v0, Lcom/android/server/wm/WindowAnimator$DisplayContentsAnimator;->mScreenRotationAnimation:Lcom/android/server/wm/ScreenRotationAnimation;

    invoke-virtual {v1}, Lcom/android/server/wm/ScreenRotationAnimation;->kill()V

    iput-object v2, v0, Lcom/android/server/wm/WindowAnimator$DisplayContentsAnimator;->mScreenRotationAnimation:Lcom/android/server/wm/ScreenRotationAnimation;

    iget-object v1, p0, Lcom/android/server/wm/WindowAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mMultiWindowManagerInternal:Lcom/android/server/wm/IMultiWindowManagerInternalBridge;

    invoke-interface {v1, v3}, Lcom/android/server/wm/IMultiWindowManagerInternalBridge;->rotationAnimationStateChangedLocked(Z)V

    iget-object v1, p0, Lcom/android/server/wm/WindowAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mMultiWindowManagerInternal:Lcom/android/server/wm/IMultiWindowManagerInternalBridge;

    invoke-interface {v1, v3}, Lcom/android/server/wm/IMultiWindowManagerInternalBridge;->setOrientationChanging(Z)V

    :cond_0
    iget-object v1, p0, Lcom/android/server/wm/WindowAnimator;->mDisplayContentsAnimators:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->delete(I)V

    invoke-static {}, Lcom/android/server/SamsungCoreServices;->getMultiScreenService()Lcom/android/server/am/IMultiScreenManagerServiceBridge;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/android/server/am/IMultiScreenManagerServiceBridge;->cleanupVirtualScreen(I)V

    return-void
.end method

.method requestRemovalOfReplacedWindows(Lcom/android/server/wm/WindowState;)V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/wm/WindowAnimator;->mRemoveReplacedWindows:Z

    return-void
.end method

.method setAnimating(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/wm/WindowAnimator;->mAnimating:Z

    return-void
.end method

.method setAppLayoutChanges(Lcom/android/server/wm/AppWindowAnimator;ILjava/lang/String;I)V
    .locals 4

    iget-object v2, p1, Lcom/android/server/wm/AppWindowAnimator;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    iget-object v1, v2, Lcom/android/server/wm/AppWindowToken;->allAppWindows:Lcom/android/server/wm/WindowList;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowList;->size()I

    move-result v2

    add-int/lit8 v0, v2, -0x1

    :goto_0
    if-ltz v0, :cond_0

    invoke-virtual {v1, v0}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/WindowState;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowState;->getDisplayId()I

    move-result v2

    if-ne p4, v2, :cond_1

    invoke-virtual {p0, p4, p2}, Lcom/android/server/wm/WindowAnimator;->setPendingLayoutChanges(II)V

    sget-boolean v2, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_LAYOUT_REPEATS:Z

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/server/wm/WindowAnimator;->mWindowPlacerLocked:Lcom/android/server/wm/WindowSurfacePlacer;

    invoke-virtual {p0, p4}, Lcom/android/server/wm/WindowAnimator;->getPendingLayoutChanges(I)I

    move-result v3

    invoke-virtual {v2, p3, v3}, Lcom/android/server/wm/WindowSurfacePlacer;->debugLayoutRepeats(Ljava/lang/String;I)V

    :cond_0
    return-void

    :cond_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0
.end method

.method setPendingLayoutChanges(II)V
    .locals 2

    if-gez p1, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lcom/android/server/wm/WindowAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v1, p1}, Lcom/android/server/wm/WindowManagerService;->getDisplayContentLocked(I)Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    if-eqz v0, :cond_1

    iget v1, v0, Lcom/android/server/wm/DisplayContent;->pendingLayoutChanges:I

    or-int/2addr v1, p2

    iput v1, v0, Lcom/android/server/wm/DisplayContent;->pendingLayoutChanges:I

    :cond_1
    return-void
.end method

.method setScreenRotationAnimationLocked(ILcom/android/server/wm/ScreenRotationAnimation;)V
    .locals 1

    if-ltz p1, :cond_0

    invoke-direct {p0, p1}, Lcom/android/server/wm/WindowAnimator;->getDisplayContentsAnimatorLocked(I)Lcom/android/server/wm/WindowAnimator$DisplayContentsAnimator;

    move-result-object v0

    iput-object p2, v0, Lcom/android/server/wm/WindowAnimator$DisplayContentsAnimator;->mScreenRotationAnimation:Lcom/android/server/wm/ScreenRotationAnimation;

    :cond_0
    return-void
.end method
