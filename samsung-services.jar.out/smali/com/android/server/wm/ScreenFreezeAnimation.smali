.class public Lcom/android/server/wm/ScreenFreezeAnimation;
.super Ljava/lang/Object;
.source "ScreenFreezeAnimation.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wm/ScreenFreezeAnimation$ScreenFreezeSurface;
    }
.end annotation


# static fields
.field static final DEBUG:Z = false

.field public static final MW_ANIMATION_FREEFORM_RESIZED:I = 0x3

.field public static final MW_ANIMATION_SPLIT_RESIZED:I = 0x1

.field public static final MW_ANIMATION_SPLIT_SWITCHED:I = 0x2

.field public static final MW_ANIMATION_UNSET:I = -0x1

.field private static final STATE_ANIM_READY:I = 0x1

.field private static final STATE_ANIM_RUNNING:I = 0x2

.field private static final STATE_ANIM_TIMEOUT:I = 0x3

.field private static final STATE_FREEZING_SCREEN:I = 0x0

.field private static final STATE_INITIALIZING:I = -0x1

.field static final TAG:Ljava/lang/String; = "ScreenFreezeAnimation"


# instance fields
.field mAnimRunning:Z

.field mAnimation:Landroid/view/animation/Animation;

.field final mContext:Landroid/content/Context;

.field private mFreezeAnimState:I

.field mFreezeSurface:Lcom/android/server/wm/ScreenFreezeAnimation$ScreenFreezeSurface;

.field private final mInternal:Lcom/android/server/wm/MultiWindowManagerInternal;

.field mNextScreenFreezeAnimation:I

.field private final mService:Lcom/android/server/wm/WindowManagerService;

.field final mSession:Landroid/view/SurfaceSession;

.field mStartTime:J

.field mTargetAppList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/wm/AppWindowToken;",
            ">;"
        }
    .end annotation
.end field

.field mTransformation:Landroid/view/animation/Transformation;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/SurfaceSession;Lcom/android/server/wm/WindowManagerService;Lcom/android/server/wm/MultiWindowManagerInternal;)V
    .locals 2

    const/4 v1, 0x0

    const/4 v0, -0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v0, p0, Lcom/android/server/wm/ScreenFreezeAnimation;->mNextScreenFreezeAnimation:I

    iput v0, p0, Lcom/android/server/wm/ScreenFreezeAnimation;->mFreezeAnimState:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/wm/ScreenFreezeAnimation;->mAnimRunning:Z

    iput-object v1, p0, Lcom/android/server/wm/ScreenFreezeAnimation;->mAnimation:Landroid/view/animation/Animation;

    iput-object v1, p0, Lcom/android/server/wm/ScreenFreezeAnimation;->mFreezeSurface:Lcom/android/server/wm/ScreenFreezeAnimation$ScreenFreezeSurface;

    new-instance v0, Landroid/view/animation/Transformation;

    invoke-direct {v0}, Landroid/view/animation/Transformation;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/ScreenFreezeAnimation;->mTransformation:Landroid/view/animation/Transformation;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/ScreenFreezeAnimation;->mTargetAppList:Ljava/util/ArrayList;

    iput-object p1, p0, Lcom/android/server/wm/ScreenFreezeAnimation;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/server/wm/ScreenFreezeAnimation;->mSession:Landroid/view/SurfaceSession;

    iput-object p3, p0, Lcom/android/server/wm/ScreenFreezeAnimation;->mService:Lcom/android/server/wm/WindowManagerService;

    iput-object p4, p0, Lcom/android/server/wm/ScreenFreezeAnimation;->mInternal:Lcom/android/server/wm/MultiWindowManagerInternal;

    return-void
.end method

.method private setScreenFreezeAnimation(I)Z
    .locals 6

    const/4 v1, 0x0

    const/4 v3, -0x1

    const/4 v5, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/android/server/wm/ScreenFreezeAnimation;->mFreezeSurface:Lcom/android/server/wm/ScreenFreezeAnimation$ScreenFreezeSurface;

    if-nez v0, :cond_0

    return v1

    :cond_0
    if-ne p1, v5, :cond_1

    iget-object v0, p0, Lcom/android/server/wm/ScreenFreezeAnimation;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mMultiWindowManagerInternal:Lcom/android/server/wm/IMultiWindowManagerInternalBridge;

    const/16 v1, 0xc9

    invoke-interface {v0, v1, v3, v2, v2}, Lcom/android/server/wm/IMultiWindowManagerInternalBridge;->loadMultiWindowTransitionLocked(IILandroid/graphics/Rect;Landroid/graphics/Rect;)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wm/ScreenFreezeAnimation;->mAnimation:Landroid/view/animation/Animation;

    iget-object v0, p0, Lcom/android/server/wm/ScreenFreezeAnimation;->mAnimation:Landroid/view/animation/Animation;

    iget-object v1, p0, Lcom/android/server/wm/ScreenFreezeAnimation;->mFreezeSurface:Lcom/android/server/wm/ScreenFreezeAnimation$ScreenFreezeSurface;

    iget-object v1, v1, Lcom/android/server/wm/ScreenFreezeAnimation$ScreenFreezeSurface;->mRect:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->centerX()I

    move-result v1

    iget-object v2, p0, Lcom/android/server/wm/ScreenFreezeAnimation;->mFreezeSurface:Lcom/android/server/wm/ScreenFreezeAnimation$ScreenFreezeSurface;

    iget-object v2, v2, Lcom/android/server/wm/ScreenFreezeAnimation$ScreenFreezeSurface;->mRect:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->centerY()I

    move-result v2

    iget-object v3, p0, Lcom/android/server/wm/ScreenFreezeAnimation;->mFreezeSurface:Lcom/android/server/wm/ScreenFreezeAnimation$ScreenFreezeSurface;

    iget-object v3, v3, Lcom/android/server/wm/ScreenFreezeAnimation$ScreenFreezeSurface;->mRect:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->centerX()I

    move-result v3

    iget-object v4, p0, Lcom/android/server/wm/ScreenFreezeAnimation;->mFreezeSurface:Lcom/android/server/wm/ScreenFreezeAnimation$ScreenFreezeSurface;

    iget-object v4, v4, Lcom/android/server/wm/ScreenFreezeAnimation$ScreenFreezeSurface;->mRect:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->centerY()I

    move-result v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/view/animation/Animation;->initialize(IIII)V

    return v5

    :cond_1
    const/4 v0, 0x2

    if-eq p1, v0, :cond_2

    const/4 v0, 0x3

    if-ne p1, v0, :cond_3

    :cond_2
    iget-object v0, p0, Lcom/android/server/wm/ScreenFreezeAnimation;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mMultiWindowManagerInternal:Lcom/android/server/wm/IMultiWindowManagerInternalBridge;

    const/16 v1, 0xca

    invoke-interface {v0, v1, v3, v2, v2}, Lcom/android/server/wm/IMultiWindowManagerInternalBridge;->loadMultiWindowTransitionLocked(IILandroid/graphics/Rect;Landroid/graphics/Rect;)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wm/ScreenFreezeAnimation;->mAnimation:Landroid/view/animation/Animation;

    iget-object v0, p0, Lcom/android/server/wm/ScreenFreezeAnimation;->mAnimation:Landroid/view/animation/Animation;

    iget-object v1, p0, Lcom/android/server/wm/ScreenFreezeAnimation;->mFreezeSurface:Lcom/android/server/wm/ScreenFreezeAnimation$ScreenFreezeSurface;

    iget-object v1, v1, Lcom/android/server/wm/ScreenFreezeAnimation$ScreenFreezeSurface;->mRect:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->centerX()I

    move-result v1

    iget-object v2, p0, Lcom/android/server/wm/ScreenFreezeAnimation;->mFreezeSurface:Lcom/android/server/wm/ScreenFreezeAnimation$ScreenFreezeSurface;

    iget-object v2, v2, Lcom/android/server/wm/ScreenFreezeAnimation$ScreenFreezeSurface;->mRect:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->centerY()I

    move-result v2

    iget-object v3, p0, Lcom/android/server/wm/ScreenFreezeAnimation;->mFreezeSurface:Lcom/android/server/wm/ScreenFreezeAnimation$ScreenFreezeSurface;

    iget-object v3, v3, Lcom/android/server/wm/ScreenFreezeAnimation$ScreenFreezeSurface;->mRect:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->centerX()I

    move-result v3

    iget-object v4, p0, Lcom/android/server/wm/ScreenFreezeAnimation;->mFreezeSurface:Lcom/android/server/wm/ScreenFreezeAnimation$ScreenFreezeSurface;

    iget-object v4, v4, Lcom/android/server/wm/ScreenFreezeAnimation$ScreenFreezeSurface;->mRect:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->centerY()I

    move-result v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/view/animation/Animation;->initialize(IIII)V

    return v5

    :cond_3
    return v1
.end method


# virtual methods
.method public addScreenFreezeAnimationTarget(Lcom/android/server/wm/AppWindowToken;)Z
    .locals 1

    iget-object v0, p0, Lcom/android/server/wm/ScreenFreezeAnimation;->mTargetAppList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/wm/ScreenFreezeAnimation;->mTargetAppList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public clearScreenFreezAnimation()V
    .locals 3

    const/4 v2, -0x1

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/android/server/wm/ScreenFreezeAnimation;->mTargetAppList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lcom/android/server/wm/ScreenFreezeAnimation;->mAnimation:Landroid/view/animation/Animation;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/wm/ScreenFreezeAnimation;->mAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v0}, Landroid/view/animation/Animation;->cancel()V

    iput-object v1, p0, Lcom/android/server/wm/ScreenFreezeAnimation;->mAnimation:Landroid/view/animation/Animation;

    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/ScreenFreezeAnimation;->mFreezeSurface:Lcom/android/server/wm/ScreenFreezeAnimation$ScreenFreezeSurface;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/wm/ScreenFreezeAnimation;->mFreezeSurface:Lcom/android/server/wm/ScreenFreezeAnimation$ScreenFreezeSurface;

    invoke-virtual {v0}, Lcom/android/server/wm/ScreenFreezeAnimation$ScreenFreezeSurface;->kill()V

    iput-object v1, p0, Lcom/android/server/wm/ScreenFreezeAnimation;->mFreezeSurface:Lcom/android/server/wm/ScreenFreezeAnimation$ScreenFreezeSurface;

    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/wm/ScreenFreezeAnimation;->mAnimRunning:Z

    iput v2, p0, Lcom/android/server/wm/ScreenFreezeAnimation;->mNextScreenFreezeAnimation:I

    iput v2, p0, Lcom/android/server/wm/ScreenFreezeAnimation;->mFreezeAnimState:I

    iget-object v0, p0, Lcom/android/server/wm/ScreenFreezeAnimation;->mInternal:Lcom/android/server/wm/MultiWindowManagerInternal;

    invoke-virtual {v0}, Lcom/android/server/wm/MultiWindowManagerInternal;->notifyScreenFreezeAnimationFinished()V

    return-void
.end method

.method public createFreezeSurface(Z)V
    .locals 1

    const/4 v0, -0x1

    invoke-virtual {p0, p1, v0}, Lcom/android/server/wm/ScreenFreezeAnimation;->createFreezeSurface(ZI)V

    return-void
.end method

.method public createFreezeSurface(ZI)V
    .locals 15

    iget-object v0, p0, Lcom/android/server/wm/ScreenFreezeAnimation;->mFreezeSurface:Lcom/android/server/wm/ScreenFreezeAnimation$ScreenFreezeSurface;

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/server/wm/ScreenFreezeAnimation;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerService;->getDefaultDisplayInfoLocked()Landroid/view/DisplayInfo;

    move-result-object v11

    iget-object v0, p0, Lcom/android/server/wm/ScreenFreezeAnimation;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mBridge:Lcom/android/server/wm/IWindowManagerServiceBridge;

    invoke-interface {v0}, Lcom/android/server/wm/IWindowManagerServiceBridge;->isKnoxDesktopModeLocked()Z

    move-result v0

    if-eqz v0, :cond_4

    iget v0, v11, Landroid/view/DisplayInfo;->rotation:I

    if-eqz v0, :cond_0

    iget v0, v11, Landroid/view/DisplayInfo;->rotation:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_3

    :cond_0
    iget v4, v11, Landroid/view/DisplayInfo;->logicalHeight:I

    iget v5, v11, Landroid/view/DisplayInfo;->logicalWidth:I

    :goto_0
    iget v0, v11, Landroid/view/DisplayInfo;->rotation:I

    add-int/lit8 v0, v0, 0x1

    rem-int/lit8 v7, v0, 0x4

    :goto_1
    const/4 v14, 0x0

    if-lez p2, :cond_7

    add-int/lit8 v14, p2, 0x1

    :goto_2
    :try_start_0
    new-instance v0, Lcom/android/server/wm/ScreenFreezeAnimation$ScreenFreezeSurface;

    iget-object v1, p0, Lcom/android/server/wm/ScreenFreezeAnimation;->mSession:Landroid/view/SurfaceSession;

    iget v6, v11, Landroid/view/DisplayInfo;->layerStack:I

    add-int/lit8 v10, v14, -0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v9, 0x0

    move/from16 v8, p1

    invoke-direct/range {v0 .. v10}, Lcom/android/server/wm/ScreenFreezeAnimation$ScreenFreezeSurface;-><init>(Landroid/view/SurfaceSession;IIIIIIZII)V

    iput-object v0, p0, Lcom/android/server/wm/ScreenFreezeAnimation;->mFreezeSurface:Lcom/android/server/wm/ScreenFreezeAnimation$ScreenFreezeSurface;
    :try_end_0
    .catch Landroid/view/Surface$OutOfResourcesException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_3
    iget-object v0, p0, Lcom/android/server/wm/ScreenFreezeAnimation;->mFreezeSurface:Lcom/android/server/wm/ScreenFreezeAnimation$ScreenFreezeSurface;

    if-eqz v0, :cond_2

    if-lez p2, :cond_1

    iget-object v0, p0, Lcom/android/server/wm/ScreenFreezeAnimation;->mFreezeSurface:Lcom/android/server/wm/ScreenFreezeAnimation$ScreenFreezeSurface;

    invoke-virtual {v0, v14}, Lcom/android/server/wm/ScreenFreezeAnimation$ScreenFreezeSurface;->setLayerForSurface(I)V

    :cond_1
    iget-object v0, p0, Lcom/android/server/wm/ScreenFreezeAnimation;->mFreezeSurface:Lcom/android/server/wm/ScreenFreezeAnimation$ScreenFreezeSurface;

    invoke-virtual {v0}, Lcom/android/server/wm/ScreenFreezeAnimation$ScreenFreezeSurface;->show()V

    iget-object v0, p0, Lcom/android/server/wm/ScreenFreezeAnimation;->mInternal:Lcom/android/server/wm/MultiWindowManagerInternal;

    invoke-virtual {v0}, Lcom/android/server/wm/MultiWindowManagerInternal;->getHandler()Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v13

    iget-object v0, p0, Lcom/android/server/wm/ScreenFreezeAnimation;->mInternal:Lcom/android/server/wm/MultiWindowManagerInternal;

    invoke-virtual {v0}, Lcom/android/server/wm/MultiWindowManagerInternal;->getHandler()Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/android/server/wm/ScreenFreezeAnimation;->mInternal:Lcom/android/server/wm/MultiWindowManagerInternal;

    invoke-virtual {v0}, Lcom/android/server/wm/MultiWindowManagerInternal;->getHandler()Landroid/os/Handler;

    move-result-object v0

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v13, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    :cond_2
    return-void

    :cond_3
    iget v4, v11, Landroid/view/DisplayInfo;->logicalWidth:I

    iget v5, v11, Landroid/view/DisplayInfo;->logicalHeight:I

    goto :goto_0

    :cond_4
    iget v0, v11, Landroid/view/DisplayInfo;->rotation:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_5

    iget v0, v11, Landroid/view/DisplayInfo;->rotation:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_6

    :cond_5
    iget v4, v11, Landroid/view/DisplayInfo;->logicalHeight:I

    iget v5, v11, Landroid/view/DisplayInfo;->logicalWidth:I

    :goto_4
    iget v7, v11, Landroid/view/DisplayInfo;->rotation:I

    goto :goto_1

    :cond_6
    iget v4, v11, Landroid/view/DisplayInfo;->logicalWidth:I

    iget v5, v11, Landroid/view/DisplayInfo;->logicalHeight:I

    goto :goto_4

    :cond_7
    iget-object v0, p0, Lcom/android/server/wm/ScreenFreezeAnimation;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    const/16 v1, 0x7e2

    invoke-interface {v0, v1}, Landroid/view/WindowManagerPolicy;->windowTypeToLayerLw(I)I

    move-result v0

    mul-int/lit16 v0, v0, 0x2710

    add-int/lit16 v14, v0, 0x3e8

    goto :goto_2

    :catch_0
    move-exception v12

    const-string/jumbo v0, "ScreenFreezeAnimation"

    const-string/jumbo v1, "Unable to allocate screen freeze surface"

    invoke-static {v0, v1, v12}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3
.end method

.method public executeScreenFreezeAniamtion()V
    .locals 1

    invoke-virtual {p0}, Lcom/android/server/wm/ScreenFreezeAnimation;->isAnimationSet()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/server/wm/ScreenFreezeAnimation;->setAnimationReady()V

    iget-object v0, p0, Lcom/android/server/wm/ScreenFreezeAnimation;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerService;->requestTraversal()V

    :cond_0
    return-void
.end method

.method getScreenFreezeAnimation()I
    .locals 1

    iget v0, p0, Lcom/android/server/wm/ScreenFreezeAnimation;->mNextScreenFreezeAnimation:I

    return v0
.end method

.method goodToGo()V
    .locals 1

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/wm/ScreenFreezeAnimation;->mNextScreenFreezeAnimation:I

    const/4 v0, 0x2

    iput v0, p0, Lcom/android/server/wm/ScreenFreezeAnimation;->mFreezeAnimState:I

    return-void
.end method

.method public handleMultiWindowTransitionReady()I
    .locals 8

    const/4 v2, 0x0

    iget-object v6, p0, Lcom/android/server/wm/ScreenFreezeAnimation;->mTargetAppList:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v3, 0x1

    iget-object v6, p0, Lcom/android/server/wm/ScreenFreezeAnimation;->mFreezeSurface:Lcom/android/server/wm/ScreenFreezeAnimation$ScreenFreezeSurface;

    if-nez v6, :cond_0

    invoke-virtual {p0}, Lcom/android/server/wm/ScreenFreezeAnimation;->isTimeout()Z

    move-result v6

    if-eqz v6, :cond_2

    :cond_0
    if-eqz v3, :cond_1

    invoke-virtual {p0}, Lcom/android/server/wm/ScreenFreezeAnimation;->getScreenFreezeAnimation()I

    move-result v1

    invoke-virtual {p0}, Lcom/android/server/wm/ScreenFreezeAnimation;->goodToGo()V

    iget-object v6, p0, Lcom/android/server/wm/ScreenFreezeAnimation;->mInternal:Lcom/android/server/wm/MultiWindowManagerInternal;

    invoke-virtual {v6}, Lcom/android/server/wm/MultiWindowManagerInternal;->getHandler()Landroid/os/Handler;

    move-result-object v6

    const/4 v7, 0x6

    invoke-virtual {v6, v7}, Landroid/os/Handler;->removeMessages(I)V

    const/4 v6, -0x1

    if-eq v1, v6, :cond_5

    iget-object v6, p0, Lcom/android/server/wm/ScreenFreezeAnimation;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v6}, Lcom/android/server/wm/WindowManagerService;->okToDisplay()Z

    move-result v6

    if-eqz v6, :cond_5

    invoke-direct {p0, v1}, Lcom/android/server/wm/ScreenFreezeAnimation;->setScreenFreezeAnimation(I)Z

    :goto_0
    iget-object v6, p0, Lcom/android/server/wm/ScreenFreezeAnimation;->mTargetAppList:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->clear()V

    const/4 v2, 0x3

    iget-object v6, p0, Lcom/android/server/wm/ScreenFreezeAnimation;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v6}, Lcom/android/server/wm/WindowManagerService;->getDefaultDisplayContentLocked()Lcom/android/server/wm/DisplayContent;

    move-result-object v6

    const/4 v7, 0x1

    iput-boolean v7, v6, Lcom/android/server/wm/DisplayContent;->layoutNeeded:Z

    :cond_1
    return v2

    :cond_2
    const/4 v4, 0x0

    :goto_1
    if-ge v4, v0, :cond_0

    if-eqz v3, :cond_0

    iget-object v6, p0, Lcom/android/server/wm/ScreenFreezeAnimation;->mTargetAppList:Ljava/util/ArrayList;

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/wm/AppWindowToken;

    iget-boolean v6, v5, Lcom/android/server/wm/AppWindowToken;->allDrawn:Z

    if-nez v6, :cond_3

    iget-boolean v6, v5, Lcom/android/server/wm/AppWindowToken;->startingDisplayed:Z

    if-eqz v6, :cond_4

    :cond_3
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_4
    iget-boolean v6, v5, Lcom/android/server/wm/AppWindowToken;->startingMoved:Z

    if-nez v6, :cond_3

    const/4 v3, 0x0

    goto :goto_2

    :cond_5
    invoke-virtual {p0}, Lcom/android/server/wm/ScreenFreezeAnimation;->clearScreenFreezAnimation()V

    goto :goto_0
.end method

.method public isAnimating()Z
    .locals 2

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/server/wm/ScreenFreezeAnimation;->mFreezeSurface:Lcom/android/server/wm/ScreenFreezeAnimation$ScreenFreezeSurface;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/wm/ScreenFreezeAnimation;->mAnimation:Landroid/view/animation/Animation;

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method isAnimationReady()Z
    .locals 3

    const/4 v0, 0x1

    iget v1, p0, Lcom/android/server/wm/ScreenFreezeAnimation;->mFreezeAnimState:I

    if-eq v1, v0, :cond_0

    iget v1, p0, Lcom/android/server/wm/ScreenFreezeAnimation;->mFreezeAnimState:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method isAnimationRunning()Z
    .locals 2

    iget v0, p0, Lcom/android/server/wm/ScreenFreezeAnimation;->mFreezeAnimState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method isAnimationSet()Z
    .locals 2

    iget v0, p0, Lcom/android/server/wm/ScreenFreezeAnimation;->mNextScreenFreezeAnimation:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method isFreezingScreen()Z
    .locals 2

    const/4 v0, 0x0

    iget v1, p0, Lcom/android/server/wm/ScreenFreezeAnimation;->mFreezeAnimState:I

    if-nez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method isTimeout()Z
    .locals 2

    iget v0, p0, Lcom/android/server/wm/ScreenFreezeAnimation;->mFreezeAnimState:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method prepare()V
    .locals 1

    invoke-virtual {p0}, Lcom/android/server/wm/ScreenFreezeAnimation;->isAnimationRunning()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/wm/ScreenFreezeAnimation;->mFreezeAnimState:I

    :cond_0
    return-void
.end method

.method setAnimationReady()V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Lcom/android/server/wm/ScreenFreezeAnimation;->mFreezeAnimState:I

    return-void
.end method

.method setApplicationDrawn(Lcom/android/server/wm/AppWindowToken;)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/wm/ScreenFreezeAnimation;->mTargetAppList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/wm/ScreenFreezeAnimation;->mTargetAppList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/server/wm/ScreenFreezeAnimation;->executeScreenFreezeAniamtion()V

    :cond_0
    return-void
.end method

.method public setScreenFreezeAnimation(Ljava/util/ArrayList;I)Ljava/util/ArrayList;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/wm/AppWindowToken;",
            ">;I)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/wm/AppWindowToken;",
            ">;"
        }
    .end annotation

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_1

    :cond_0
    return-object v5

    :cond_1
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    packed-switch p2, :pswitch_data_0

    :goto_0
    :pswitch_0
    return-object v1

    :pswitch_1
    iput p2, p0, Lcom/android/server/wm/ScreenFreezeAnimation;->mNextScreenFreezeAnimation:I

    goto :goto_0

    :pswitch_2
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/AppWindowToken;

    invoke-virtual {p0, v2}, Lcom/android/server/wm/ScreenFreezeAnimation;->addScreenFreezeAnimationTarget(Lcom/android/server/wm/AppWindowToken;)Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_3
    iput p2, p0, Lcom/android/server/wm/ScreenFreezeAnimation;->mNextScreenFreezeAnimation:I

    invoke-virtual {p0, v6}, Lcom/android/server/wm/ScreenFreezeAnimation;->createFreezeSurface(Z)V

    goto :goto_0

    :pswitch_3
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_4
    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/AppWindowToken;

    invoke-virtual {p0, v2}, Lcom/android/server/wm/ScreenFreezeAnimation;->addScreenFreezeAnimationTarget(Lcom/android/server/wm/AppWindowToken;)Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_5
    iget-object v4, p0, Lcom/android/server/wm/ScreenFreezeAnimation;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v4, v4, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    const/16 v5, 0x7d0

    invoke-interface {v4, v5}, Landroid/view/WindowManagerPolicy;->windowTypeToLayerLw(I)I

    move-result v4

    mul-int/lit16 v4, v4, 0x2710

    add-int/lit16 v0, v4, 0x3e8

    iput p2, p0, Lcom/android/server/wm/ScreenFreezeAnimation;->mNextScreenFreezeAnimation:I

    invoke-virtual {p0, v6, v0}, Lcom/android/server/wm/ScreenFreezeAnimation;->createFreezeSurface(ZI)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method setTimeout()V
    .locals 1

    const/4 v0, 0x3

    iput v0, p0, Lcom/android/server/wm/ScreenFreezeAnimation;->mFreezeAnimState:I

    iget-object v0, p0, Lcom/android/server/wm/ScreenFreezeAnimation;->mTargetAppList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    return-void
.end method

.method public stepAnimationLocked(J)Z
    .locals 3

    iget-object v1, p0, Lcom/android/server/wm/ScreenFreezeAnimation;->mFreezeSurface:Lcom/android/server/wm/ScreenFreezeAnimation$ScreenFreezeSurface;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/wm/ScreenFreezeAnimation;->mAnimation:Landroid/view/animation/Animation;

    if-nez v1, :cond_1

    :cond_0
    const/4 v1, 0x0

    return v1

    :cond_1
    iget-boolean v1, p0, Lcom/android/server/wm/ScreenFreezeAnimation;->mAnimRunning:Z

    if-nez v1, :cond_2

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/wm/ScreenFreezeAnimation;->mAnimRunning:Z

    iput-wide p1, p0, Lcom/android/server/wm/ScreenFreezeAnimation;->mStartTime:J

    iget-object v1, p0, Lcom/android/server/wm/ScreenFreezeAnimation;->mAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v1, p1, p2}, Landroid/view/animation/Animation;->setStartTime(J)V

    :cond_2
    iget-object v1, p0, Lcom/android/server/wm/ScreenFreezeAnimation;->mTransformation:Landroid/view/animation/Transformation;

    invoke-virtual {v1}, Landroid/view/animation/Transformation;->clear()V

    iget-object v1, p0, Lcom/android/server/wm/ScreenFreezeAnimation;->mAnimation:Landroid/view/animation/Animation;

    iget-object v2, p0, Lcom/android/server/wm/ScreenFreezeAnimation;->mTransformation:Landroid/view/animation/Transformation;

    invoke-virtual {v1, p1, p2, v2}, Landroid/view/animation/Animation;->getTransformation(JLandroid/view/animation/Transformation;)Z

    move-result v0

    iget-object v1, p0, Lcom/android/server/wm/ScreenFreezeAnimation;->mFreezeSurface:Lcom/android/server/wm/ScreenFreezeAnimation$ScreenFreezeSurface;

    iget-object v2, p0, Lcom/android/server/wm/ScreenFreezeAnimation;->mTransformation:Landroid/view/animation/Transformation;

    invoke-virtual {v1, v2}, Lcom/android/server/wm/ScreenFreezeAnimation$ScreenFreezeSurface;->setAnimationTransform(Landroid/view/animation/Transformation;)V

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    const-string/jumbo v0, "ScreenFreezeSurface"

    return-object v0
.end method
