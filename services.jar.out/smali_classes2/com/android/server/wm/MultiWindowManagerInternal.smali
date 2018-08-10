.class public Lcom/android/server/wm/MultiWindowManagerInternal;
.super Ljava/lang/Object;
.source "MultiWindowManagerInternal.java"

# interfaces
.implements Lcom/samsung/android/multiwindow/MultiWindowManagerInternalFuncs;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wm/MultiWindowManagerInternal$H;
    }
.end annotation


# static fields
.field private static final DEBUG:Z

.field public static final MULTIWINDOW_DEPRESS_DIVIDER_VISIBLE_TIMEOUT_DURATION:I = 0x7d0

.field public static final MULTIWINDOW_DISMISS_GUIDE_WINDOW_FROM_TAP_OUTSIDE_DURATION:I = 0xbb8

.field public static final MULTIWINDOW_DOCKING_CANCEL_FREEFORM_TIMEOUT_DURATION:I = 0x2bc

.field public static final MULTIWINDOW_FREEFORM_RELAUNCH_ANIM_TIMEOUT_DURATON:I = 0x1388

.field public static final MULTIWINDOW_IME_ADJUST_DRAWN_TIMEOUT:I = 0x3e8

.field public static final MULTIWINDOW_MOVE_FREEFORM_TASK_TIMEOUT_DURATON:I = 0xbb8

.field public static final MULTIWINDOW_SPLIT_RESIZE_TIMEOUT_DURATION:I = 0x7d0

.field public static final MULTIWINDOW_SWAP_ANIMATION_TIMEOUT_DURATION:I = 0x1388

.field private static final TAG:Ljava/lang/String; = "MultiWindowManagerInternal"


# instance fields
.field mAnimatingDockedStackForResizableHome:Z

.field mCanAnimateExpandDockedStack:Z

.field private mCurrentInputMethodClient:Lcom/android/server/wm/WindowState;

.field mDoDockedTaskToBack:Z

.field private mEnsureDockedViewInternal:Lcom/android/server/wm/EnsureDockedViewInternal;

.field private mForceSnapshotList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mFreeformController:Lcom/android/server/wm/FreeformStackWindowController;

.field final mH:Lcom/android/server/wm/MultiWindowManagerInternal$H;

.field private final mMinimizeDockedStackDimlayerController:Lcom/android/server/wm/MinimizeDockedStackDimlayerController;

.field private mMultiWindowService:Lcom/samsung/android/multiwindow/IMultiWindowManager;

.field private final mScreenFreezeController:Lcom/android/server/wm/ScreenFreezeAnimationController;

.field private mSnapWindowInternal:Lcom/android/server/wm/SnapWindowInternal;

.field private final mTmpRect:Landroid/graphics/Rect;

.field private final mTmpRect2:Landroid/graphics/Rect;

.field private final mTmpRect3:Landroid/graphics/Rect;

.field private final mTmpRegion:Landroid/graphics/Region;

.field private final mWindowManager:Lcom/android/server/wm/WindowManagerService;

.field private tmpStackIds:I


# direct methods
.method static synthetic -get0(Lcom/android/server/wm/MultiWindowManagerInternal;)Lcom/android/server/wm/FreeformStackWindowController;
    .locals 1

    iget-object v0, p0, Lcom/android/server/wm/MultiWindowManagerInternal;->mFreeformController:Lcom/android/server/wm/FreeformStackWindowController;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/server/wm/MultiWindowManagerInternal;)Lcom/samsung/android/multiwindow/IMultiWindowManager;
    .locals 1

    iget-object v0, p0, Lcom/android/server/wm/MultiWindowManagerInternal;->mMultiWindowService:Lcom/samsung/android/multiwindow/IMultiWindowManager;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/server/wm/MultiWindowManagerInternal;)Lcom/android/server/wm/ScreenFreezeAnimationController;
    .locals 1

    iget-object v0, p0, Lcom/android/server/wm/MultiWindowManagerInternal;->mScreenFreezeController:Lcom/android/server/wm/ScreenFreezeAnimationController;

    return-object v0
.end method

.method static synthetic -get3(Lcom/android/server/wm/MultiWindowManagerInternal;)Lcom/android/server/wm/WindowManagerService;
    .locals 1

    iget-object v0, p0, Lcom/android/server/wm/MultiWindowManagerInternal;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, Landroid/os/Debug;->semIsProductDev()Z

    move-result v0

    sput-boolean v0, Lcom/android/server/wm/MultiWindowManagerInternal;->DEBUG:Z

    return-void
.end method

.method public constructor <init>(Lcom/android/server/wm/WindowManagerService;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/wm/MultiWindowManagerInternal;->mCurrentInputMethodClient:Lcom/android/server/wm/WindowState;

    iput-boolean v1, p0, Lcom/android/server/wm/MultiWindowManagerInternal;->mDoDockedTaskToBack:Z

    iput-boolean v1, p0, Lcom/android/server/wm/MultiWindowManagerInternal;->mAnimatingDockedStackForResizableHome:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/wm/MultiWindowManagerInternal;->mCanAnimateExpandDockedStack:Z

    new-instance v0, Landroid/graphics/Region;

    invoke-direct {v0}, Landroid/graphics/Region;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/MultiWindowManagerInternal;->mTmpRegion:Landroid/graphics/Region;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/MultiWindowManagerInternal;->mTmpRect:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/MultiWindowManagerInternal;->mTmpRect2:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/MultiWindowManagerInternal;->mTmpRect3:Landroid/graphics/Rect;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/MultiWindowManagerInternal;->mForceSnapshotList:Ljava/util/ArrayList;

    new-instance v0, Lcom/android/server/wm/MultiWindowManagerInternal$H;

    invoke-direct {v0, p0}, Lcom/android/server/wm/MultiWindowManagerInternal$H;-><init>(Lcom/android/server/wm/MultiWindowManagerInternal;)V

    iput-object v0, p0, Lcom/android/server/wm/MultiWindowManagerInternal;->mH:Lcom/android/server/wm/MultiWindowManagerInternal$H;

    iput v1, p0, Lcom/android/server/wm/MultiWindowManagerInternal;->tmpStackIds:I

    iput-object p1, p0, Lcom/android/server/wm/MultiWindowManagerInternal;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    new-instance v0, Lcom/android/server/wm/FreeformStackWindowController;

    invoke-direct {v0, p1, p0}, Lcom/android/server/wm/FreeformStackWindowController;-><init>(Lcom/android/server/wm/WindowManagerService;Lcom/android/server/wm/MultiWindowManagerInternal;)V

    iput-object v0, p0, Lcom/android/server/wm/MultiWindowManagerInternal;->mFreeformController:Lcom/android/server/wm/FreeformStackWindowController;

    new-instance v0, Lcom/android/server/wm/ScreenFreezeAnimationController;

    iget-object v1, p0, Lcom/android/server/wm/MultiWindowManagerInternal;->mH:Lcom/android/server/wm/MultiWindowManagerInternal$H;

    invoke-direct {v0, p1, v1}, Lcom/android/server/wm/ScreenFreezeAnimationController;-><init>(Lcom/android/server/wm/WindowManagerService;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/server/wm/MultiWindowManagerInternal;->mScreenFreezeController:Lcom/android/server/wm/ScreenFreezeAnimationController;

    new-instance v0, Lcom/android/server/wm/SnapWindowInternal;

    invoke-direct {v0, p1}, Lcom/android/server/wm/SnapWindowInternal;-><init>(Lcom/android/server/wm/WindowManagerService;)V

    iput-object v0, p0, Lcom/android/server/wm/MultiWindowManagerInternal;->mSnapWindowInternal:Lcom/android/server/wm/SnapWindowInternal;

    new-instance v0, Lcom/android/server/wm/EnsureDockedViewInternal;

    iget-object v1, p0, Lcom/android/server/wm/MultiWindowManagerInternal;->mH:Lcom/android/server/wm/MultiWindowManagerInternal$H;

    invoke-direct {v0, p1, v1}, Lcom/android/server/wm/EnsureDockedViewInternal;-><init>(Lcom/android/server/wm/WindowManagerService;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/server/wm/MultiWindowManagerInternal;->mEnsureDockedViewInternal:Lcom/android/server/wm/EnsureDockedViewInternal;

    new-instance v0, Lcom/android/server/wm/MinimizeDockedStackDimlayerController;

    invoke-direct {v0, p1}, Lcom/android/server/wm/MinimizeDockedStackDimlayerController;-><init>(Lcom/android/server/wm/WindowManagerService;)V

    iput-object v0, p0, Lcom/android/server/wm/MultiWindowManagerInternal;->mMinimizeDockedStackDimlayerController:Lcom/android/server/wm/MinimizeDockedStackDimlayerController;

    return-void
.end method

.method private isEasyOneHandWindow(I)Z
    .locals 2

    const/4 v0, 0x1

    const/16 v1, 0x8ca

    if-eq p1, v1, :cond_0

    const/16 v1, 0x8ce

    if-ne p1, v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private logByFreeformDraggingToSplit(Lcom/android/server/wm/Task;Ljava/lang/String;)V
    .locals 6

    const/4 v5, 0x2

    const/4 v4, 0x0

    const/4 v3, 0x1

    new-array v1, v5, [Ljava/lang/String;

    const-string/jumbo v2, "SPBY"

    aput-object v2, v1, v4

    const-string/jumbo v2, "SPPA"

    aput-object v2, v1, v3

    new-array v0, v5, [Ljava/lang/String;

    iget-object v2, p0, Lcom/android/server/wm/MultiWindowManagerInternal;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v2, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    monitor-enter v3

    :try_start_0
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    const-string/jumbo v2, "FreeformDragging"

    const/4 v4, 0x0

    aput-object v2, v0, v4

    invoke-virtual {p1}, Lcom/android/server/wm/Task;->getTopVisibleAppMainWindow()Lcom/android/server/wm/WindowState;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {p1}, Lcom/android/server/wm/Task;->getTopVisibleAppMainWindow()Lcom/android/server/wm/WindowState;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/wm/WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {p1}, Lcom/android/server/wm/Task;->getTopVisibleAppMainWindow()Lcom/android/server/wm/WindowState;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/wm/WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    iget-object v2, v2, Landroid/view/WindowManager$LayoutParams;->packageName:Ljava/lang/String;

    const/4 v4, 0x1

    aput-object v2, v0, v4

    :cond_0
    const/4 v2, 0x1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v5, v0, v2

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "|"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v0, v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v3

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    invoke-virtual {p0, v1, v0}, Lcom/android/server/wm/MultiWindowManagerInternal;->logMultiWindowBehavior([Ljava/lang/String;[Ljava/lang/String;)V

    return-void

    :catchall_0
    move-exception v2

    monitor-exit v3

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v2
.end method


# virtual methods
.method adjustBoundsAfterResolutionChanged(IIIILandroid/graphics/Rect;)V
    .locals 3

    const/high16 v2, 0x3f000000    # 0.5f

    if-lez p1, :cond_0

    iget v0, p5, Landroid/graphics/Rect;->left:I

    mul-int/2addr v0, p2

    int-to-float v0, v0

    int-to-float v1, p1

    div-float/2addr v0, v1

    add-float/2addr v0, v2

    float-to-int v0, v0

    iput v0, p5, Landroid/graphics/Rect;->left:I

    iget v0, p5, Landroid/graphics/Rect;->right:I

    mul-int/2addr v0, p2

    int-to-float v0, v0

    int-to-float v1, p1

    div-float/2addr v0, v1

    add-float/2addr v0, v2

    float-to-int v0, v0

    iput v0, p5, Landroid/graphics/Rect;->right:I

    :cond_0
    if-lez p3, :cond_1

    iget v0, p5, Landroid/graphics/Rect;->top:I

    mul-int/2addr v0, p4

    int-to-float v0, v0

    int-to-float v1, p3

    div-float/2addr v0, v1

    add-float/2addr v0, v2

    float-to-int v0, v0

    iput v0, p5, Landroid/graphics/Rect;->top:I

    iget v0, p5, Landroid/graphics/Rect;->bottom:I

    mul-int/2addr v0, p4

    int-to-float v0, v0

    int-to-float v1, p3

    div-float/2addr v0, v1

    add-float/2addr v0, v2

    float-to-int v0, v0

    iput v0, p5, Landroid/graphics/Rect;->bottom:I

    :cond_1
    return-void
.end method

.method adjustBoundsForNaviBarForConfigChange(ILandroid/graphics/Rect;ILandroid/graphics/Rect;)V
    .locals 14

    iget-object v10, p0, Lcom/android/server/wm/MultiWindowManagerInternal;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v10}, Lcom/android/server/wm/WindowManagerService;->hasNavigationBar()Z

    move-result v10

    if-eqz v10, :cond_0

    move/from16 v0, p3

    if-ne p1, v0, :cond_1

    :cond_0
    return-void

    :cond_1
    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iget-object v10, p0, Lcom/android/server/wm/MultiWindowManagerInternal;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v10}, Lcom/android/server/wm/WindowManagerService;->getDefaultDisplayContentLocked()Lcom/android/server/wm/DisplayContent;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/android/server/wm/DisplayContent;->getLogicalDisplayRect(Landroid/graphics/Rect;)V

    invoke-virtual {v1}, Lcom/android/server/wm/DisplayContent;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v10

    iget v8, v10, Landroid/content/res/Configuration;->orientation:I

    iget-object v10, p0, Lcom/android/server/wm/MultiWindowManagerInternal;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v10}, Lcom/android/server/wm/WindowManagerService;->getDockedStackSide()I

    move-result v10

    const/4 v11, -0x1

    if-ne v10, v11, :cond_2

    move-object/from16 v0, p4

    invoke-static {v0, v2, v8}, Lcom/android/server/wm/TaskStack;->getDockSideUnchecked(Landroid/graphics/Rect;Landroid/graphics/Rect;I)I

    move-result v10

    const/4 v11, -0x1

    if-ne v10, v11, :cond_2

    return-void

    :cond_2
    const/4 v10, 0x3

    if-eq p1, v10, :cond_3

    const/4 v10, 0x1

    if-ne p1, v10, :cond_8

    :cond_3
    const/4 v10, 0x3

    move/from16 v0, p3

    if-eq v0, v10, :cond_4

    const/4 v10, 0x1

    move/from16 v0, p3

    if-ne v0, v10, :cond_8

    :cond_4
    invoke-virtual {v4, v2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    :goto_0
    new-instance v7, Landroid/graphics/Rect;

    invoke-direct {v7, v4}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    new-instance v6, Landroid/graphics/Rect;

    invoke-direct {v6, v2}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    new-instance v9, Landroid/graphics/Rect;

    invoke-direct {v9}, Landroid/graphics/Rect;-><init>()V

    const/4 v3, 0x0

    iget-object v10, p0, Lcom/android/server/wm/MultiWindowManagerInternal;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v10, v10, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v11

    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v12

    invoke-interface {v10, p1, v11, v12, v9}, Landroid/view/WindowManagerPolicy;->getNonDecorInsetsLw(IIILandroid/graphics/Rect;)V

    packed-switch p1, :pswitch_data_0

    :pswitch_0
    iget v10, v7, Landroid/graphics/Rect;->bottom:I

    iget v11, v9, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v10, v11

    iput v10, v7, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, p2

    invoke-virtual {v0, v7}, Landroid/graphics/Rect;->contains(Landroid/graphics/Rect;)Z

    move-result v10

    if-eqz v10, :cond_5

    const/4 v3, 0x1

    :cond_5
    :goto_1
    const/4 v5, 0x0

    iget-object v10, p0, Lcom/android/server/wm/MultiWindowManagerInternal;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v10, v10, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v11

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v12

    move/from16 v0, p3

    invoke-interface {v10, v0, v11, v12, v9}, Landroid/view/WindowManagerPolicy;->getNonDecorInsetsLw(IIILandroid/graphics/Rect;)V

    packed-switch p3, :pswitch_data_1

    :pswitch_1
    iget v10, v6, Landroid/graphics/Rect;->bottom:I

    iget v11, v9, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v10, v11

    iput v10, v6, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, p4

    invoke-virtual {v0, v6}, Landroid/graphics/Rect;->contains(Landroid/graphics/Rect;)Z

    move-result v10

    if-eqz v10, :cond_6

    const/4 v5, 0x1

    :cond_6
    if-nez v3, :cond_d

    if-eqz v5, :cond_d

    move-object/from16 v0, p4

    iget v10, v0, Landroid/graphics/Rect;->top:I

    invoke-virtual {v6}, Landroid/graphics/Rect;->height()I

    move-result v11

    sub-int/2addr v10, v11

    move-object/from16 v0, p4

    iput v10, v0, Landroid/graphics/Rect;->top:I

    :cond_7
    :goto_2
    return-void

    :cond_8
    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v10

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v11

    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-virtual {v4, v12, v13, v10, v11}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_0

    :pswitch_2
    iget v10, v9, Landroid/graphics/Rect;->left:I

    iput v10, v7, Landroid/graphics/Rect;->right:I

    move-object/from16 v0, p2

    invoke-virtual {v0, v7}, Landroid/graphics/Rect;->contains(Landroid/graphics/Rect;)Z

    move-result v10

    if-eqz v10, :cond_5

    const/4 v3, 0x1

    goto :goto_1

    :pswitch_3
    iget v10, v7, Landroid/graphics/Rect;->right:I

    iget v11, v9, Landroid/graphics/Rect;->right:I

    sub-int/2addr v10, v11

    iput v10, v7, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, p2

    invoke-virtual {v0, v7}, Landroid/graphics/Rect;->contains(Landroid/graphics/Rect;)Z

    move-result v10

    if-eqz v10, :cond_5

    const/4 v3, 0x1

    goto :goto_1

    :pswitch_4
    iget v10, v9, Landroid/graphics/Rect;->left:I

    iput v10, v6, Landroid/graphics/Rect;->right:I

    move-object/from16 v0, p4

    invoke-virtual {v0, v6}, Landroid/graphics/Rect;->contains(Landroid/graphics/Rect;)Z

    move-result v10

    if-eqz v10, :cond_9

    const/4 v5, 0x1

    :cond_9
    if-nez v3, :cond_a

    if-eqz v5, :cond_a

    move-object/from16 v0, p4

    iget v10, v0, Landroid/graphics/Rect;->right:I

    invoke-virtual {v6}, Landroid/graphics/Rect;->width()I

    move-result v11

    add-int/2addr v10, v11

    move-object/from16 v0, p4

    iput v10, v0, Landroid/graphics/Rect;->right:I

    goto :goto_2

    :cond_a
    if-eqz v3, :cond_7

    xor-int/lit8 v10, v5, 0x1

    if-eqz v10, :cond_7

    move-object/from16 v0, p4

    iget v10, v0, Landroid/graphics/Rect;->left:I

    invoke-virtual {v6}, Landroid/graphics/Rect;->width()I

    move-result v11

    add-int/2addr v10, v11

    move-object/from16 v0, p4

    iput v10, v0, Landroid/graphics/Rect;->left:I

    goto :goto_2

    :pswitch_5
    iget v10, v6, Landroid/graphics/Rect;->right:I

    iget v11, v9, Landroid/graphics/Rect;->right:I

    sub-int/2addr v10, v11

    iput v10, v6, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, p4

    invoke-virtual {v0, v6}, Landroid/graphics/Rect;->contains(Landroid/graphics/Rect;)Z

    move-result v10

    if-eqz v10, :cond_b

    const/4 v5, 0x1

    :cond_b
    if-nez v3, :cond_c

    if-eqz v5, :cond_c

    move-object/from16 v0, p4

    iget v10, v0, Landroid/graphics/Rect;->left:I

    invoke-virtual {v6}, Landroid/graphics/Rect;->width()I

    move-result v11

    sub-int/2addr v10, v11

    move-object/from16 v0, p4

    iput v10, v0, Landroid/graphics/Rect;->left:I

    goto/16 :goto_2

    :cond_c
    if-eqz v3, :cond_7

    xor-int/lit8 v10, v5, 0x1

    if-eqz v10, :cond_7

    move-object/from16 v0, p4

    iget v10, v0, Landroid/graphics/Rect;->right:I

    invoke-virtual {v6}, Landroid/graphics/Rect;->width()I

    move-result v11

    sub-int/2addr v10, v11

    move-object/from16 v0, p4

    iput v10, v0, Landroid/graphics/Rect;->right:I

    goto/16 :goto_2

    :cond_d
    if-eqz v3, :cond_7

    xor-int/lit8 v10, v5, 0x1

    if-eqz v10, :cond_7

    move-object/from16 v0, p4

    iget v10, v0, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v6}, Landroid/graphics/Rect;->height()I

    move-result v11

    sub-int/2addr v10, v11

    move-object/from16 v0, p4

    iput v10, v0, Landroid/graphics/Rect;->bottom:I

    goto/16 :goto_2

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_0
        :pswitch_2
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_5
        :pswitch_1
        :pswitch_4
    .end packed-switch
.end method

.method adjustBoundsToMagnificationSpec(Landroid/graphics/Rect;)V
    .locals 7

    const/high16 v6, 0x3f000000    # 0.5f

    iget-object v3, p0, Lcom/android/server/wm/MultiWindowManagerInternal;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-boolean v3, v3, Lcom/android/server/wm/WindowManagerService;->mReduceScreenRunning:Z

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/server/wm/MultiWindowManagerInternal;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v4, p0, Lcom/android/server/wm/MultiWindowManagerInternal;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v4}, Lcom/android/server/wm/WindowManagerService;->getDefaultDisplayContentLocked()Lcom/android/server/wm/DisplayContent;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/server/wm/DisplayContent;->getDisplayId()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/android/server/wm/WindowManagerService;->getEasyOneHandScaleSpecLocked(I)Landroid/view/MagnificationSpec;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Landroid/view/MagnificationSpec;->isNop()Z

    move-result v3

    xor-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_0

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v3

    int-to-float v3, v3

    iget v4, v2, Landroid/view/MagnificationSpec;->scale:F

    mul-float/2addr v3, v4

    add-float/2addr v3, v6

    float-to-int v1, v3

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v3

    int-to-float v3, v3

    iget v4, v2, Landroid/view/MagnificationSpec;->scale:F

    mul-float/2addr v3, v4

    add-float/2addr v3, v6

    float-to-int v0, v3

    iget v3, v2, Landroid/view/MagnificationSpec;->offsetX:F

    iget v4, p1, Landroid/graphics/Rect;->left:I

    int-to-float v4, v4

    iget v5, v2, Landroid/view/MagnificationSpec;->scale:F

    mul-float/2addr v4, v5

    add-float/2addr v3, v4

    add-float/2addr v3, v6

    float-to-int v3, v3

    iput v3, p1, Landroid/graphics/Rect;->left:I

    iget v3, v2, Landroid/view/MagnificationSpec;->offsetY:F

    iget v4, p1, Landroid/graphics/Rect;->top:I

    int-to-float v4, v4

    iget v5, v2, Landroid/view/MagnificationSpec;->scale:F

    mul-float/2addr v4, v5

    add-float/2addr v3, v4

    add-float/2addr v3, v6

    float-to-int v3, v3

    iput v3, p1, Landroid/graphics/Rect;->top:I

    iget v3, p1, Landroid/graphics/Rect;->left:I

    add-int/2addr v3, v1

    iput v3, p1, Landroid/graphics/Rect;->right:I

    iget v3, p1, Landroid/graphics/Rect;->top:I

    add-int/2addr v3, v0

    iput v3, p1, Landroid/graphics/Rect;->bottom:I

    :cond_0
    return-void
.end method

.method adjustForMinimalTaskDimensions(Landroid/graphics/Rect;Lcom/android/server/wm/MinimalTaskDimensionsInfo;I)V
    .locals 7

    const/4 v6, 0x4

    const/4 v5, -0x1

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-boolean v4, p2, Lcom/android/server/wm/MinimalTaskDimensionsInfo;->mIsDexCompatEnabled:Z

    if-eqz v4, :cond_1

    return-void

    :cond_1
    iget v3, p2, Lcom/android/server/wm/MinimalTaskDimensionsInfo;->mMinWidth:I

    iget v2, p2, Lcom/android/server/wm/MinimalTaskDimensionsInfo;->mMinHeight:I

    iget v4, p2, Lcom/android/server/wm/MinimalTaskDimensionsInfo;->mStackId:I

    if-eq v4, v6, :cond_3

    if-ne v3, v5, :cond_2

    iget v3, p2, Lcom/android/server/wm/MinimalTaskDimensionsInfo;->mDefaultMinSizeOfResizeableTask:I

    :cond_2
    if-ne v2, v5, :cond_3

    iget v2, p2, Lcom/android/server/wm/MinimalTaskDimensionsInfo;->mDefaultMinSizeOfResizeableTask:I

    :cond_3
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v4

    if-le v3, v4, :cond_4

    const/4 v1, 0x1

    :goto_0
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v4

    if-le v2, v4, :cond_5

    const/4 v0, 0x1

    :goto_1
    if-nez v1, :cond_6

    move v4, v0

    :goto_2
    if-nez v4, :cond_7

    return-void

    :cond_4
    const/4 v1, 0x0

    goto :goto_0

    :cond_5
    const/4 v0, 0x0

    goto :goto_1

    :cond_6
    const/4 v4, 0x1

    goto :goto_2

    :cond_7
    if-eqz v1, :cond_8

    const/4 v4, 0x3

    if-ne p3, v4, :cond_a

    iget v4, p1, Landroid/graphics/Rect;->right:I

    sub-int/2addr v4, v3

    iput v4, p1, Landroid/graphics/Rect;->left:I

    :cond_8
    :goto_3
    if-eqz v0, :cond_9

    if-ne p3, v6, :cond_b

    iget v4, p1, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v4, v2

    iput v4, p1, Landroid/graphics/Rect;->top:I

    :cond_9
    :goto_4
    return-void

    :cond_a
    iget v4, p1, Landroid/graphics/Rect;->left:I

    add-int/2addr v4, v3

    iput v4, p1, Landroid/graphics/Rect;->right:I

    goto :goto_3

    :cond_b
    iget v4, p1, Landroid/graphics/Rect;->top:I

    add-int/2addr v4, v2

    iput v4, p1, Landroid/graphics/Rect;->bottom:I

    goto :goto_4
.end method

.method public animatingDockedStackForResizableHome(Z)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/wm/MultiWindowManagerInternal;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    monitor-enter v1

    :try_start_0
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    iput-boolean p1, p0, Lcom/android/server/wm/MultiWindowManagerInternal;->mAnimatingDockedStackForResizableHome:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v0
.end method

.method public applayHiddenFloatingMultiWindowAnimation(Landroid/view/WindowManagerPolicy$WindowState;)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/wm/MultiWindowManagerInternal;->mFreeformController:Lcom/android/server/wm/FreeformStackWindowController;

    check-cast p1, Lcom/android/server/wm/WindowState;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/FreeformStackWindowController;->applayHiddenFloatingMultiWindowAnimation(Lcom/android/server/wm/WindowState;)V

    return-void
.end method

.method public canBeHiddenFloatingMultiWindow(Landroid/view/WindowManagerPolicy$WindowState;Z)Z
    .locals 2

    move-object v0, p1

    check-cast v0, Lcom/android/server/wm/WindowState;

    if-eqz p2, :cond_0

    iget-object v1, v0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    if-eqz v1, :cond_0

    iget-object v1, v0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    iget-boolean v1, v1, Lcom/android/server/wm/AppWindowToken;->hidden:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    return v1

    :cond_0
    iget-object v1, p0, Lcom/android/server/wm/MultiWindowManagerInternal;->mFreeformController:Lcom/android/server/wm/FreeformStackWindowController;

    invoke-virtual {v1, v0}, Lcom/android/server/wm/FreeformStackWindowController;->canBeHiddenFloatingMultiWindow(Lcom/android/server/wm/WindowState;)Z

    move-result v1

    return v1
.end method

.method public clearForceSnapshotList()V
    .locals 1

    iget-object v0, p0, Lcom/android/server/wm/MultiWindowManagerInternal;->mForceSnapshotList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    return-void
.end method

.method public doNotAnimateExpandDockedStack()V
    .locals 2

    iget-object v0, p0, Lcom/android/server/wm/MultiWindowManagerInternal;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    monitor-enter v1

    :try_start_0
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/wm/MultiWindowManagerInternal;->mCanAnimateExpandDockedStack:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v0
.end method

.method dumpLocked(Ljava/io/PrintWriter;Z)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/wm/MultiWindowManagerInternal;->mScreenFreezeController:Lcom/android/server/wm/ScreenFreezeAnimationController;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/ScreenFreezeAnimationController;->dumpLocked(Ljava/io/PrintWriter;)V

    return-void
.end method

.method excludeImeRegionLocked(Lcom/android/server/wm/DisplayContent;Landroid/graphics/Region;)V
    .locals 2

    new-instance v0, Lcom/android/server/wm/-$Lambda$7tmWKHXp6WpBTrKLnPP4XUXTioE$1;

    invoke-direct {v0, p0, p2}, Lcom/android/server/wm/-$Lambda$7tmWKHXp6WpBTrKLnPP4XUXTioE$1;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lcom/android/server/wm/DisplayContent;->forAllImeWindows(Lcom/android/internal/util/ToBooleanFunction;Z)Z

    return-void
.end method

.method getCurrentInputMethodClientLocked()Lcom/android/server/wm/WindowState;
    .locals 1

    iget-object v0, p0, Lcom/android/server/wm/MultiWindowManagerInternal;->mCurrentInputMethodClient:Lcom/android/server/wm/WindowState;

    return-object v0
.end method

.method public getEnsureDockedViewInternal()Lcom/android/server/wm/EnsureDockedViewInternal;
    .locals 1

    iget-object v0, p0, Lcom/android/server/wm/MultiWindowManagerInternal;->mEnsureDockedViewInternal:Lcom/android/server/wm/EnsureDockedViewInternal;

    return-object v0
.end method

.method public getFreeformStackWindowController()Lcom/android/server/wm/FreeformStackWindowController;
    .locals 1

    iget-object v0, p0, Lcom/android/server/wm/MultiWindowManagerInternal;->mFreeformController:Lcom/android/server/wm/FreeformStackWindowController;

    return-object v0
.end method

.method public getImeTargetFreeformTaskId()I
    .locals 3

    iget-object v1, p0, Lcom/android/server/wm/MultiWindowManagerInternal;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v1, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    monitor-enter v2

    :try_start_0
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    iget-object v1, p0, Lcom/android/server/wm/MultiWindowManagerInternal;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mInputMethodWindow:Lcom/android/server/wm/WindowState;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/wm/MultiWindowManagerInternal;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mInputMethodTarget:Lcom/android/server/wm/WindowState;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/wm/MultiWindowManagerInternal;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mInputMethodWindow:Lcom/android/server/wm/WindowState;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowState;->isVisibleNow()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/wm/MultiWindowManagerInternal;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mInputMethodTarget:Lcom/android/server/wm/WindowState;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowState;->getTask()Lcom/android/server/wm/Task;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/server/wm/Task;->inFreeformWorkspace()Z

    move-result v1

    if-eqz v1, :cond_0

    iget v1, v0, Lcom/android/server/wm/Task;->mTaskId:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v2

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return v1

    :cond_0
    monitor-exit v2

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    const/4 v1, -0x1

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v2

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method public getLaunchBoundsForMetaKeyEvent(Landroid/view/WindowManagerPolicy$WindowState;I)Landroid/graphics/Rect;
    .locals 1

    sget-object v0, Lcom/samsung/android/multiwindow/MultiWindowManager$MetaKeyBoundsChecker;->sInvalidBounds:Landroid/graphics/Rect;

    return-object v0
.end method

.method public getMinimizeDockedStackDimlayerController()Lcom/android/server/wm/MinimizeDockedStackDimlayerController;
    .locals 1

    iget-object v0, p0, Lcom/android/server/wm/MultiWindowManagerInternal;->mMinimizeDockedStackDimlayerController:Lcom/android/server/wm/MinimizeDockedStackDimlayerController;

    return-object v0
.end method

.method public getScreenFreezeAnimationController()Lcom/android/server/wm/ScreenFreezeAnimationController;
    .locals 1

    iget-object v0, p0, Lcom/android/server/wm/MultiWindowManagerInternal;->mScreenFreezeController:Lcom/android/server/wm/ScreenFreezeAnimationController;

    return-object v0
.end method

.method getSmallestWidthDpForBounds(Landroid/graphics/Rect;Lcom/android/server/wm/MinimalTaskDimensionsInfo;)I
    .locals 17

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/wm/MultiWindowManagerInternal;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v12}, Lcom/android/server/wm/WindowManagerService;->getDefaultDisplayContentLocked()Lcom/android/server/wm/DisplayContent;

    move-result-object v6

    if-nez v6, :cond_0

    const-string/jumbo v12, "MultiWindowManagerInternal"

    const-string/jumbo v13, "DefaultDisplayContent is null. Return smallestWidth 0"

    invoke-static {v12, v13}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v12, 0x0

    return v12

    :cond_0
    invoke-virtual {v6}, Lcom/android/server/wm/DisplayContent;->getDisplayInfo()Landroid/view/DisplayInfo;

    move-result-object v5

    iget v3, v6, Lcom/android/server/wm/DisplayContent;->mBaseDisplayWidth:I

    iget v2, v6, Lcom/android/server/wm/DisplayContent;->mBaseDisplayHeight:I

    const v8, 0x7fffffff

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/wm/MultiWindowManagerInternal;->mTmpRect:Landroid/graphics/Rect;

    move-object/from16 v0, p1

    invoke-virtual {v12, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    iget v12, v5, Landroid/view/DisplayInfo;->rotation:I

    const/4 v13, 0x1

    if-eq v12, v13, :cond_1

    iget v12, v5, Landroid/view/DisplayInfo;->rotation:I

    const/4 v13, 0x3

    if-ne v12, v13, :cond_4

    :cond_1
    const/4 v10, 0x1

    :goto_0
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/wm/MultiWindowManagerInternal;->mTmpRect2:Landroid/graphics/Rect;

    if-eqz v10, :cond_5

    move v13, v2

    :goto_1
    if-eqz v10, :cond_6

    move v12, v3

    :goto_2
    const/4 v15, 0x0

    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-virtual {v14, v15, v0, v13, v12}, Landroid/graphics/Rect;->set(IIII)V

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/wm/MultiWindowManagerInternal;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v12, v12, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    iget v13, v5, Landroid/view/DisplayInfo;->rotation:I

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/wm/MultiWindowManagerInternal;->mTmpRect2:Landroid/graphics/Rect;

    invoke-virtual {v14}, Landroid/graphics/Rect;->width()I

    move-result v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/wm/MultiWindowManagerInternal;->mTmpRect2:Landroid/graphics/Rect;

    invoke-virtual {v15}, Landroid/graphics/Rect;->height()I

    move-result v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/MultiWindowManagerInternal;->mTmpRect3:Landroid/graphics/Rect;

    move-object/from16 v16, v0

    invoke-interface/range {v12 .. v16}, Landroid/view/WindowManagerPolicy;->getStableInsetsLw(IIILandroid/graphics/Rect;)V

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/wm/MultiWindowManagerInternal;->mTmpRect3:Landroid/graphics/Rect;

    const/4 v13, 0x0

    iput v13, v12, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/wm/MultiWindowManagerInternal;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/wm/MultiWindowManagerInternal;->mTmpRect2:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/wm/MultiWindowManagerInternal;->mTmpRect3:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/wm/MultiWindowManagerInternal;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v12, v13, v14, v15}, Lcom/android/server/wm/WindowManagerService;->intersectDisplayInsetBounds(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    new-instance v4, Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/wm/MultiWindowManagerInternal;->mTmpRect:Landroid/graphics/Rect;

    invoke-direct {v4, v12}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    const/4 v11, 0x0

    :goto_3
    const/4 v12, 0x4

    if-ge v11, v12, :cond_b

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/wm/MultiWindowManagerInternal;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v12, v4}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    iget v12, v5, Landroid/view/DisplayInfo;->rotation:I

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/wm/MultiWindowManagerInternal;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v6, v12, v11, v13}, Lcom/android/server/wm/DisplayContent;->rotateBounds(IILandroid/graphics/Rect;)V

    const/4 v12, 0x1

    if-eq v11, v12, :cond_2

    const/4 v12, 0x3

    if-ne v11, v12, :cond_7

    :cond_2
    const/4 v10, 0x1

    :goto_4
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/wm/MultiWindowManagerInternal;->mTmpRect2:Landroid/graphics/Rect;

    if-eqz v10, :cond_8

    move v13, v2

    :goto_5
    if-eqz v10, :cond_9

    move v12, v3

    :goto_6
    const/4 v15, 0x0

    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-virtual {v14, v15, v0, v13, v12}, Landroid/graphics/Rect;->set(IIII)V

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/wm/MultiWindowManagerInternal;->mTmpRect2:Landroid/graphics/Rect;

    invoke-virtual {v12}, Landroid/graphics/Rect;->width()I

    move-result v12

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/wm/MultiWindowManagerInternal;->mTmpRect2:Landroid/graphics/Rect;

    invoke-virtual {v13}, Landroid/graphics/Rect;->height()I

    move-result v13

    if-gt v12, v13, :cond_a

    const/4 v9, 0x1

    :goto_7
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/wm/MultiWindowManagerInternal;->mTmpRect:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/wm/MultiWindowManagerInternal;->mTmpRect2:Landroid/graphics/Rect;

    invoke-static {v12, v13, v9}, Lcom/android/server/wm/TaskStack;->getDockSideUnchecked(Landroid/graphics/Rect;Landroid/graphics/Rect;I)I

    move-result v7

    if-eqz p2, :cond_3

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/wm/MultiWindowManagerInternal;->mTmpRect:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-virtual {v0, v12, v1, v7}, Lcom/android/server/wm/MultiWindowManagerInternal;->adjustForMinimalTaskDimensions(Landroid/graphics/Rect;Lcom/android/server/wm/MinimalTaskDimensionsInfo;I)V

    :cond_3
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/wm/MultiWindowManagerInternal;->mTmpRect:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/wm/MultiWindowManagerInternal;->mTmpRect2:Landroid/graphics/Rect;

    invoke-virtual {v12, v13}, Landroid/graphics/Rect;->intersect(Landroid/graphics/Rect;)Z

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/wm/MultiWindowManagerInternal;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v12}, Landroid/graphics/Rect;->width()I

    move-result v12

    invoke-static {v12, v8}, Ljava/lang/Math;->min(II)I

    move-result v8

    add-int/lit8 v11, v11, 0x1

    goto :goto_3

    :cond_4
    const/4 v10, 0x0

    goto/16 :goto_0

    :cond_5
    move v13, v3

    goto/16 :goto_1

    :cond_6
    move v12, v2

    goto/16 :goto_2

    :cond_7
    const/4 v10, 0x0

    goto :goto_4

    :cond_8
    move v13, v3

    goto :goto_5

    :cond_9
    move v12, v2

    goto :goto_6

    :cond_a
    const/4 v9, 0x2

    goto :goto_7

    :cond_b
    int-to-float v12, v8

    invoke-virtual {v6}, Lcom/android/server/wm/DisplayContent;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v13

    iget v13, v13, Landroid/util/DisplayMetrics;->density:F

    div-float/2addr v12, v13

    float-to-int v12, v12

    return v12
.end method

.method public getSnapWindowInternal()Lcom/android/server/wm/SnapWindowInternal;
    .locals 1

    iget-object v0, p0, Lcom/android/server/wm/MultiWindowManagerInternal;->mSnapWindowInternal:Lcom/android/server/wm/SnapWindowInternal;

    return-object v0
.end method

.method public getSpecificTargetDockedBounds(ILandroid/graphics/Rect;)V
    .locals 18

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/MultiWindowManagerInternal;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v2, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    move-object/from16 v17, v0

    monitor-enter v17

    :try_start_0
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/MultiWindowManagerInternal;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowManagerService;->getDefaultDisplayContentLocked()Lcom/android/server/wm/DisplayContent;

    move-result-object v12

    invoke-virtual {v12}, Lcom/android/server/wm/DisplayContent;->getDockedDividerController()Lcom/android/server/wm/DockedStackDividerController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/wm/DockedStackDividerController;->getContentWidth()I

    move-result v5

    invoke-virtual {v12}, Lcom/android/server/wm/DisplayContent;->getDisplayInfo()Landroid/view/DisplayInfo;

    move-result-object v2

    iget v3, v2, Landroid/view/DisplayInfo;->logicalWidth:I

    invoke-virtual {v12}, Lcom/android/server/wm/DisplayContent;->getDisplayInfo()Landroid/view/DisplayInfo;

    move-result-object v2

    iget v4, v2, Landroid/view/DisplayInfo;->logicalHeight:I

    if-ge v3, v4, :cond_0

    const/4 v13, 0x2

    :goto_0
    invoke-virtual {v12}, Lcom/android/server/wm/DisplayContent;->getDisplayInfo()Landroid/view/DisplayInfo;

    move-result-object v2

    iget v15, v2, Landroid/view/DisplayInfo;->rotation:I

    invoke-virtual {v12}, Lcom/android/server/wm/DisplayContent;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v14, v2, Landroid/content/res/Configuration;->orientation:I

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/MultiWindowManagerInternal;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    move-object/from16 v0, p2

    invoke-interface {v2, v15, v3, v4, v0}, Landroid/view/WindowManagerPolicy;->getStableInsetsLw(IIILandroid/graphics/Rect;)V

    new-instance v1, Lcom/android/internal/policy/DividerSnapAlgorithm;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/MultiWindowManagerInternal;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const/4 v6, 0x1

    if-ne v14, v6, :cond_1

    const/4 v6, 0x1

    :goto_1
    move-object/from16 v7, p2

    invoke-direct/range {v1 .. v7}, Lcom/android/internal/policy/DividerSnapAlgorithm;-><init>(Landroid/content/res/Resources;IIIZLandroid/graphics/Rect;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/16 v16, 0x0

    packed-switch p1, :pswitch_data_0

    :goto_2
    if-nez v16, :cond_2

    monitor-exit v17

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :cond_0
    const/4 v13, 0x1

    goto :goto_0

    :cond_1
    const/4 v6, 0x0

    goto :goto_1

    :pswitch_0
    :try_start_1
    invoke-virtual {v1}, Lcom/android/internal/policy/DividerSnapAlgorithm;->getMiddleTarget()Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;

    move-result-object v16

    goto :goto_2

    :pswitch_1
    invoke-virtual {v1}, Lcom/android/internal/policy/DividerSnapAlgorithm;->getFirstSplitTarget()Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;

    move-result-object v16

    goto :goto_2

    :pswitch_2
    invoke-virtual {v1}, Lcom/android/internal/policy/DividerSnapAlgorithm;->getLastSplitTarget()Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;

    move-result-object v16

    goto :goto_2

    :cond_2
    move-object/from16 v0, v16

    iget v6, v0, Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;->position:I

    move v7, v13

    move-object/from16 v8, p2

    move v9, v3

    move v10, v4

    move v11, v5

    invoke-static/range {v6 .. v11}, Lcom/android/internal/policy/DockedDividerUtils;->calculateBoundsForPosition(IILandroid/graphics/Rect;III)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v17

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :catchall_0
    move-exception v2

    monitor-exit v17

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v2

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public getStackIdsShowWhenLocked()I
    .locals 4

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/wm/MultiWindowManagerInternal;->tmpStackIds:I

    iget-object v0, p0, Lcom/android/server/wm/MultiWindowManagerInternal;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    monitor-enter v1

    :try_start_0
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    iget-object v0, p0, Lcom/android/server/wm/MultiWindowManagerInternal;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerService;->getDefaultDisplayContentLocked()Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    new-instance v2, Lcom/android/server/wm/-$Lambda$7tmWKHXp6WpBTrKLnPP4XUXTioE;

    invoke-direct {v2, p0}, Lcom/android/server/wm/-$Lambda$7tmWKHXp6WpBTrKLnPP4XUXTioE;-><init>(Ljava/lang/Object;)V

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v3}, Lcom/android/server/wm/DisplayContent;->forAllWindows(Ljava/util/function/Consumer;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    iget v0, p0, Lcom/android/server/wm/MultiWindowManagerInternal;->tmpStackIds:I

    return v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v0
.end method

.method public getTopVisibleAppWindowPackageName(I)Ljava/lang/String;
    .locals 6

    const/4 v5, 0x0

    iget-object v3, p0, Lcom/android/server/wm/MultiWindowManagerInternal;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v4, v3, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    monitor-enter v4

    :try_start_0
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    invoke-virtual {p0, p1}, Lcom/android/server/wm/MultiWindowManagerInternal;->getTopVisibleTaskLocked(I)Lcom/android/server/wm/Task;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    if-nez v1, :cond_0

    monitor-exit v4

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-object v5

    :cond_0
    :try_start_1
    invoke-virtual {v1}, Lcom/android/server/wm/Task;->getTopVisibleAppMainWindow()Lcom/android/server/wm/WindowState;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v2

    if-nez v2, :cond_1

    monitor-exit v4

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-object v5

    :cond_1
    :try_start_2
    invoke-virtual {v2}, Lcom/android/server/wm/WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v3, v0, Landroid/view/WindowManager$LayoutParams;->packageName:Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit v4

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-object v3

    :cond_2
    monitor-exit v4

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-object v5

    :catchall_0
    move-exception v3

    monitor-exit v4

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v3
.end method

.method public getTopVisibleTaskLocked(I)Lcom/android/server/wm/Task;
    .locals 1

    iget-object v0, p0, Lcom/android/server/wm/MultiWindowManagerInternal;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerService;->getDefaultDisplayContentLocked()Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/android/server/wm/MultiWindowManagerInternal;->getTopVisibleTaskLocked(ILcom/android/server/wm/DisplayContent;)Lcom/android/server/wm/Task;

    move-result-object v0

    return-object v0
.end method

.method public getTopVisibleTaskLocked(ILcom/android/server/wm/DisplayContent;)Lcom/android/server/wm/Task;
    .locals 5

    const/4 v4, 0x0

    if-eqz p2, :cond_1

    invoke-virtual {p2, p1}, Lcom/android/server/wm/DisplayContent;->getStackById(I)Lcom/android/server/wm/TaskStack;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/android/server/wm/TaskStack;->isVisible()Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, v1, Lcom/android/server/wm/TaskStack;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v3}, Lcom/android/server/wm/WindowList;->size()I

    move-result v3

    add-int/lit8 v0, v3, -0x1

    :goto_0
    if-ltz v0, :cond_1

    iget-object v3, v1, Lcom/android/server/wm/TaskStack;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v3, v0}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/Task;

    invoke-virtual {v2}, Lcom/android/server/wm/Task;->isVisible()Z

    move-result v3

    if-eqz v3, :cond_0

    return-object v2

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    return-object v4
.end method

.method getTouchExcludeRegionLocked(Lcom/android/server/wm/DisplayContent;Lcom/android/server/wm/WindowContainer;Landroid/graphics/Region;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/wm/DisplayContent;",
            "Lcom/android/server/wm/WindowContainer",
            "<",
            "Lcom/android/server/wm/WindowToken;",
            ">;",
            "Landroid/graphics/Region;",
            ")V"
        }
    .end annotation

    if-eqz p2, :cond_0

    new-instance v0, Landroid/graphics/Region;

    invoke-direct {v0}, Landroid/graphics/Region;-><init>()V

    new-instance v1, Lcom/android/server/wm/-$Lambda$7tmWKHXp6WpBTrKLnPP4XUXTioE$2;

    invoke-direct {v1, p0, p1, v0, p3}, Lcom/android/server/wm/-$Lambda$7tmWKHXp6WpBTrKLnPP4XUXTioE$2;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v2, 0x1

    invoke-virtual {p2, v1, v2}, Lcom/android/server/wm/WindowContainer;->forAllWindows(Ljava/util/function/Consumer;Z)V

    :cond_0
    return-void
.end method

.method public hasDockedStack()Z
    .locals 4

    iget-object v1, p0, Lcom/android/server/wm/MultiWindowManagerInternal;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v1, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    monitor-enter v2

    :try_start_0
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    iget-object v1, p0, Lcom/android/server/wm/MultiWindowManagerInternal;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowManagerService;->getDefaultDisplayContentLocked()Lcom/android/server/wm/DisplayContent;

    move-result-object v1

    const/4 v3, 0x3

    invoke-virtual {v1, v3}, Lcom/android/server/wm/DisplayContent;->getStackById(I)Lcom/android/server/wm/TaskStack;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    :goto_0
    monitor-exit v2

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v2

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method public isAnimatingDockedStackForResizableHome()Z
    .locals 2

    iget-object v0, p0, Lcom/android/server/wm/MultiWindowManagerInternal;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    monitor-enter v1

    :try_start_0
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    iget-boolean v0, p0, Lcom/android/server/wm/MultiWindowManagerInternal;->mAnimatingDockedStackForResizableHome:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v0
.end method

.method public isExpandedDockedStack()Z
    .locals 2

    iget-object v0, p0, Lcom/android/server/wm/MultiWindowManagerInternal;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    monitor-enter v1

    :try_start_0
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    invoke-virtual {p0}, Lcom/android/server/wm/MultiWindowManagerInternal;->isExpandedDockedStackLocked()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit v1

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v0
.end method

.method public isExpandedDockedStackLocked()Z
    .locals 6

    const/4 v4, 0x0

    sget-boolean v5, Lcom/samsung/android/framework/feature/MultiWindowFeatures;->MULTIWINDOW_DYNAMIC_ENABLED:Z

    if-eqz v5, :cond_2

    iget-object v5, p0, Lcom/android/server/wm/MultiWindowManagerInternal;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v5}, Lcom/android/server/wm/WindowManagerService;->getDefaultDisplayContentLocked()Lcom/android/server/wm/DisplayContent;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/wm/DisplayContent;->getDockedDividerController()Lcom/android/server/wm/DockedStackDividerController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/DockedStackDividerController;->isMinimizedDock()Z

    move-result v2

    invoke-virtual {v1}, Lcom/android/server/wm/DisplayContent;->getDockedStackIgnoringVisibility()Lcom/android/server/wm/TaskStack;

    move-result-object v5

    if-eqz v5, :cond_0

    const/4 v3, 0x1

    :goto_0
    if-nez v2, :cond_1

    :goto_1
    return v3

    :cond_0
    const/4 v3, 0x0

    goto :goto_0

    :cond_1
    move v3, v4

    goto :goto_1

    :cond_2
    return v4
.end method

.method public isForceSnapshot(I)Z
    .locals 2

    iget-object v0, p0, Lcom/android/server/wm/MultiWindowManagerInternal;->mForceSnapshotList:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isMinimizedDockAndHomeStackResizable(I)Z
    .locals 3

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/server/wm/MultiWindowManagerInternal;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v2, p1}, Lcom/android/server/wm/RootWindowContainer;->getDisplayContent(I)Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v2, v0, Lcom/android/server/wm/DisplayContent;->mDividerControllerLocked:Lcom/android/server/wm/DockedStackDividerController;

    invoke-virtual {v2}, Lcom/android/server/wm/DockedStackDividerController;->isMinimizedDock()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v1, v0, Lcom/android/server/wm/DisplayContent;->mDividerControllerLocked:Lcom/android/server/wm/DockedStackDividerController;

    invoke-virtual {v1}, Lcom/android/server/wm/DockedStackDividerController;->isHomeStackResizable()Z

    move-result v1

    :cond_0
    return v1

    :cond_1
    return v1
.end method

.method public isUsingTaskPositioner()Z
    .locals 2

    iget-object v0, p0, Lcom/android/server/wm/MultiWindowManagerInternal;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    monitor-enter v1

    :try_start_0
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    iget-object v0, p0, Lcom/android/server/wm/MultiWindowManagerInternal;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mTaskPositioner:Lcom/android/server/wm/TaskPositioner;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit v1

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v0
.end method

.method synthetic lambda$-com_android_server_wm_MultiWindowManagerInternal_20609(Lcom/android/server/wm/WindowState;)V
    .locals 3

    iget-boolean v1, p1, Lcom/android/server/wm/WindowState;->mHasSurface:Z

    if-eqz v1, :cond_0

    iget-object v1, p1, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    if-eqz v1, :cond_0

    iget-object v1, p1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v1, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v2, 0x80000

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->getStackId()I

    move-result v0

    iget v1, p0, Lcom/android/server/wm/MultiWindowManagerInternal;->tmpStackIds:I

    const/4 v2, 0x1

    shl-int/2addr v2, v0

    or-int/2addr v1, v2

    iput v1, p0, Lcom/android/server/wm/MultiWindowManagerInternal;->tmpStackIds:I

    :cond_0
    return-void
.end method

.method synthetic lambda$-com_android_server_wm_MultiWindowManagerInternal_21278(Lcom/android/server/wm/DisplayContent;Landroid/graphics/Region;Landroid/graphics/Region;Lcom/android/server/wm/WindowState;)V
    .locals 2

    invoke-virtual {p4}, Lcom/android/server/wm/WindowState;->isVisibleLw()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p4, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_1

    :cond_0
    return-void

    :cond_1
    iget-object v0, p1, Lcom/android/server/wm/DisplayContent;->mTapExcludedWindows:Ljava/util/ArrayList;

    invoke-virtual {v0, p4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p4, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v1, 0x7f2

    if-ne v0, v1, :cond_3

    :cond_2
    return-void

    :cond_3
    iget-object v0, p4, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v1, 0x8fe

    if-eq v0, v1, :cond_2

    iget-object v0, p4, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    invoke-direct {p0, v0}, Lcom/android/server/wm/MultiWindowManagerInternal;->isEasyOneHandWindow(I)Z

    move-result v0

    if-eqz v0, :cond_4

    return-void

    :cond_4
    invoke-virtual {p4, p2}, Lcom/android/server/wm/WindowState;->getTouchableRegion(Landroid/graphics/Region;)V

    sget-object v0, Landroid/graphics/Region$Op;->UNION:Landroid/graphics/Region$Op;

    invoke-virtual {p3, p2, v0}, Landroid/graphics/Region;->op(Landroid/graphics/Region;Landroid/graphics/Region$Op;)Z

    return-void
.end method

.method synthetic lambda$-com_android_server_wm_MultiWindowManagerInternal_33923(Landroid/graphics/Region;Lcom/android/server/wm/WindowState;)Z
    .locals 2

    invoke-virtual {p2}, Lcom/android/server/wm/WindowState;->isVisibleNow()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/wm/MultiWindowManagerInternal;->mTmpRegion:Landroid/graphics/Region;

    invoke-virtual {p2, v0}, Lcom/android/server/wm/WindowState;->getTouchableRegion(Landroid/graphics/Region;)V

    iget-object v0, p0, Lcom/android/server/wm/MultiWindowManagerInternal;->mTmpRegion:Landroid/graphics/Region;

    sget-object v1, Landroid/graphics/Region$Op;->DIFFERENCE:Landroid/graphics/Region$Op;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Region;->op(Landroid/graphics/Region;Landroid/graphics/Region$Op;)Z

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public logMultiWindowBehavior(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const-string/jumbo v0, "com.samsung.android.multiwindow"

    invoke-virtual {p0, v0, p1, p2}, Lcom/android/server/wm/MultiWindowManagerInternal;->logMultiWindowBehavior(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public logMultiWindowBehavior(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    const/4 v3, 0x1

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v2, "app_id"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v2, "feature"

    invoke-virtual {v0, v2, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v2, "extra"

    invoke-virtual {v0, v2, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/wm/MultiWindowManagerInternal;->mH:Lcom/android/server/wm/MultiWindowManagerInternal$H;

    invoke-virtual {v2, v3}, Lcom/android/server/wm/MultiWindowManagerInternal$H;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    iput v3, v1, Landroid/os/Message;->arg1:I

    invoke-virtual {v1, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    iget-object v2, p0, Lcom/android/server/wm/MultiWindowManagerInternal;->mH:Lcom/android/server/wm/MultiWindowManagerInternal$H;

    invoke-virtual {v2, v1}, Lcom/android/server/wm/MultiWindowManagerInternal$H;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public logMultiWindowBehavior(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V
    .locals 4

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v2, "app_id"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v2, "feature"

    invoke-virtual {v0, v2, p2}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    const-string/jumbo v2, "extra"

    invoke-virtual {v0, v2, p3}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/wm/MultiWindowManagerInternal;->mH:Lcom/android/server/wm/MultiWindowManagerInternal$H;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/android/server/wm/MultiWindowManagerInternal$H;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    const/4 v2, 0x2

    iput v2, v1, Landroid/os/Message;->arg1:I

    invoke-virtual {v1, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    iget-object v2, p0, Lcom/android/server/wm/MultiWindowManagerInternal;->mH:Lcom/android/server/wm/MultiWindowManagerInternal$H;

    invoke-virtual {v2, v1}, Lcom/android/server/wm/MultiWindowManagerInternal$H;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public logMultiWindowBehavior([Ljava/lang/String;[Ljava/lang/String;)V
    .locals 1

    const-string/jumbo v0, "com.samsung.android.multiwindow"

    invoke-virtual {p0, v0, p1, p2}, Lcom/android/server/wm/MultiWindowManagerInternal;->logMultiWindowBehavior(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    return-void
.end method

.method public makeForceSnapshotList(I)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/wm/MultiWindowManagerInternal;->mForceSnapshotList:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public moveTaskToDockedOrFullscreenStack(Lcom/android/server/wm/Task;I)V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v1, 0x3

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v3, 0x1

    const/4 v8, 0x0

    iget-object v0, p0, Lcom/android/server/wm/MultiWindowManagerInternal;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerService;->getDockedStackSide()I

    move-result v7

    const/4 v0, -0x1

    if-eq v7, v0, :cond_6

    if-eq v7, v3, :cond_0

    const/4 v0, 0x2

    if-ne v7, v0, :cond_3

    :cond_0
    if-nez p2, :cond_3

    :cond_1
    invoke-virtual {p0, v3}, Lcom/android/server/wm/MultiWindowManagerInternal;->getTopVisibleAppWindowPackageName(I)Ljava/lang/String;

    move-result-object v8

    iget-object v0, p0, Lcom/android/server/wm/MultiWindowManagerInternal;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mActivityManager:Landroid/app/IActivityManager;

    iget v1, p1, Lcom/android/server/wm/Task;->mTaskId:I

    move v2, p2

    move v4, v3

    invoke-interface/range {v0 .. v6}, Landroid/app/IActivityManager;->moveTaskToDockedStackForShowRecents(IIZZLandroid/graphics/Rect;Z)Z

    :goto_0
    const-string/jumbo v0, "FFAC"

    const-string/jumbo v1, "ChangeToSplit"

    invoke-virtual {p0, v0, v1}, Lcom/android/server/wm/MultiWindowManagerInternal;->logMultiWindowBehavior(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    if-eqz v8, :cond_2

    invoke-direct {p0, p1, v8}, Lcom/android/server/wm/MultiWindowManagerInternal;->logByFreeformDraggingToSplit(Lcom/android/server/wm/Task;Ljava/lang/String;)V

    :cond_2
    return-void

    :cond_3
    if-eq v7, v1, :cond_4

    const/4 v0, 0x4

    if-ne v7, v0, :cond_5

    :cond_4
    if-eq p2, v3, :cond_1

    :cond_5
    invoke-virtual {p0, v1}, Lcom/android/server/wm/MultiWindowManagerInternal;->getTopVisibleAppWindowPackageName(I)Ljava/lang/String;

    move-result-object v8

    iget-object v0, p0, Lcom/android/server/wm/MultiWindowManagerInternal;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mActivityManager:Landroid/app/IActivityManager;

    iget v1, p1, Lcom/android/server/wm/Task;->mTaskId:I

    invoke-interface {v0, v1, v3, v3}, Landroid/app/IActivityManager;->moveTaskToStack(IIZ)V

    goto :goto_0

    :cond_6
    iget-object v0, p0, Lcom/android/server/wm/MultiWindowManagerInternal;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    monitor-enter v1

    :try_start_0
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/server/wm/MultiWindowManagerInternal;->getTopVisibleTaskLocked(I)Lcom/android/server/wm/Task;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v9

    monitor-exit v1

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    if-eqz v9, :cond_7

    invoke-virtual {v9}, Lcom/android/server/wm/Task;->isResizeable()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_8

    :cond_7
    iget-object v0, p0, Lcom/android/server/wm/MultiWindowManagerInternal;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mActivityManager:Landroid/app/IActivityManager;

    iget v1, p1, Lcom/android/server/wm/Task;->mTaskId:I

    invoke-interface {v0, v1, v3, v3}, Landroid/app/IActivityManager;->moveTaskToStack(IIZ)V

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit v1

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v0

    :cond_8
    invoke-virtual {p0, v3}, Lcom/android/server/wm/MultiWindowManagerInternal;->getTopVisibleAppWindowPackageName(I)Ljava/lang/String;

    move-result-object v8

    if-ne p2, v3, :cond_9

    iget-object v0, p0, Lcom/android/server/wm/MultiWindowManagerInternal;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mActivityManager:Landroid/app/IActivityManager;

    iget v1, v9, Lcom/android/server/wm/Task;->mTaskId:I

    move v2, v6

    move v4, v3

    invoke-interface/range {v0 .. v6}, Landroid/app/IActivityManager;->moveTaskToDockedStackForShowRecents(IIZZLandroid/graphics/Rect;Z)Z

    iget-object v0, p0, Lcom/android/server/wm/MultiWindowManagerInternal;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mActivityManager:Landroid/app/IActivityManager;

    iget v1, p1, Lcom/android/server/wm/Task;->mTaskId:I

    invoke-interface {v0, v1, v3, v3}, Landroid/app/IActivityManager;->moveTaskToStack(IIZ)V

    goto :goto_1

    :cond_9
    iget-object v0, p0, Lcom/android/server/wm/MultiWindowManagerInternal;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mActivityManager:Landroid/app/IActivityManager;

    iget v1, p1, Lcom/android/server/wm/Task;->mTaskId:I

    move v2, p2

    move v4, v3

    invoke-interface/range {v0 .. v6}, Landroid/app/IActivityManager;->moveTaskToDockedStackForShowRecents(IIZZLandroid/graphics/Rect;Z)Z

    goto :goto_1
.end method

.method public notifyDockedTaskToBackTransitionFinished()V
    .locals 3

    iget-object v0, p0, Lcom/android/server/wm/MultiWindowManagerInternal;->mH:Lcom/android/server/wm/MultiWindowManagerInternal$H;

    iget-object v1, p0, Lcom/android/server/wm/MultiWindowManagerInternal;->mH:Lcom/android/server/wm/MultiWindowManagerInternal$H;

    const/16 v2, 0xcc

    invoke-virtual {v1, v2}, Lcom/android/server/wm/MultiWindowManagerInternal$H;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/wm/MultiWindowManagerInternal$H;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method onConfigurationChanged()V
    .locals 1

    iget-object v0, p0, Lcom/android/server/wm/MultiWindowManagerInternal;->mFreeformController:Lcom/android/server/wm/FreeformStackWindowController;

    invoke-virtual {v0}, Lcom/android/server/wm/FreeformStackWindowController;->loadResource()V

    return-void
.end method

.method public prepareDockedTaskToBack()V
    .locals 2

    iget-object v0, p0, Lcom/android/server/wm/MultiWindowManagerInternal;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    monitor-enter v1

    :try_start_0
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/wm/MultiWindowManagerInternal;->mDoDockedTaskToBack:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v0
.end method

.method public resizeTaskWithRelaunchAnim(Landroid/view/IApplicationToken;Landroid/graphics/Rect;)V
    .locals 4

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lcom/android/server/wm/MultiWindowManagerInternal;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v1, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    monitor-enter v2

    :try_start_0
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    iget-object v1, p0, Lcom/android/server/wm/MultiWindowManagerInternal;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    invoke-interface {p1}, Landroid/view/IApplicationToken;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/android/server/wm/RootWindowContainer;->getAppWindowToken(Landroid/os/IBinder;)Lcom/android/server/wm/AppWindowToken;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit v2

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    invoke-virtual {p0, v0, p2}, Lcom/android/server/wm/MultiWindowManagerInternal;->resizeTaskWithRelaunchAnim(Lcom/android/server/wm/AppWindowToken;Landroid/graphics/Rect;)V

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v2

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method public resizeTaskWithRelaunchAnim(Lcom/android/server/wm/AppWindowToken;Landroid/graphics/Rect;)V
    .locals 8

    iget-object v5, p0, Lcom/android/server/wm/MultiWindowManagerInternal;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v5}, Lcom/android/server/wm/WindowManagerService;->deferSurfaceLayout()V

    if-eqz p1, :cond_1

    :try_start_0
    invoke-virtual {p1}, Lcom/android/server/wm/AppWindowToken;->getTask()Lcom/android/server/wm/Task;

    move-result-object v2

    :goto_0
    if-eqz v2, :cond_3

    invoke-virtual {v2}, Lcom/android/server/wm/Task;->inFreeformWorkspace()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-static {}, Lcom/android/server/am/ActivityManagerPerformance;->getBooster()Lcom/android/server/am/ActivityManagerPerformance;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v5, 0x0

    const/4 v6, 0x1

    invoke-virtual {v0, v5, v6}, Lcom/android/server/am/ActivityManagerPerformance;->onActivityRelaunchLocked(Lcom/android/server/am/ActivityRecord;Z)V

    :cond_0
    iget-object v5, p0, Lcom/android/server/wm/MultiWindowManagerInternal;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v6, p1, Lcom/android/server/wm/AppWindowToken;->token:Landroid/os/IBinder;

    const/4 v7, 0x1

    invoke-virtual {v5, v6, v7}, Lcom/android/server/wm/WindowManagerService;->setWillReplaceWindow(Landroid/os/IBinder;Z)V

    iget-object v5, p0, Lcom/android/server/wm/MultiWindowManagerInternal;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v5, v5, Lcom/android/server/wm/WindowManagerService;->mActivityManager:Landroid/app/IActivityManager;

    iget v6, v2, Lcom/android/server/wm/Task;->mTaskId:I

    const/4 v7, 0x0

    invoke-interface {v5, v6, p2, v7}, Landroid/app/IActivityManager;->resizeTask(ILandroid/graphics/Rect;I)V

    iget-object v5, p0, Lcom/android/server/wm/MultiWindowManagerInternal;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v6, v5, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    monitor-enter v6
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    :try_start_1
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    iget-object v5, p1, Lcom/android/server/wm/AppWindowToken;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/WindowState;

    invoke-virtual {v3}, Lcom/android/server/wm/WindowState;->onObstructMovedByResize()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v5

    :try_start_2
    monitor-exit v6

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v5
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    :catch_0
    move-exception v1

    :try_start_3
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    iget-object v5, p0, Lcom/android/server/wm/MultiWindowManagerInternal;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v5}, Lcom/android/server/wm/WindowManagerService;->continueSurfaceLayout()V

    :goto_2
    return-void

    :cond_1
    const/4 v2, 0x0

    goto :goto_0

    :cond_2
    :try_start_4
    monitor-exit v6

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    iget-object v5, p0, Lcom/android/server/wm/MultiWindowManagerInternal;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v6, p1, Lcom/android/server/wm/AppWindowToken;->token:Landroid/os/IBinder;

    invoke-virtual {p1}, Lcom/android/server/wm/AppWindowToken;->isRelaunching()Z

    move-result v7

    invoke-virtual {v5, v6, v7}, Lcom/android/server/wm/WindowManagerService;->scheduleClearWillReplaceWindows(Landroid/os/IBinder;Z)V

    iget-object v5, p0, Lcom/android/server/wm/MultiWindowManagerInternal;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v6, v5, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    monitor-enter v6
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    :try_start_5
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    iget-object v5, p0, Lcom/android/server/wm/MultiWindowManagerInternal;->mScreenFreezeController:Lcom/android/server/wm/ScreenFreezeAnimationController;

    invoke-virtual {v5, v2}, Lcom/android/server/wm/ScreenFreezeAnimationController;->prepareFreeformResizeAnimLocked(Lcom/android/server/wm/Task;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :try_start_6
    monitor-exit v6

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    :cond_3
    iget-object v5, p0, Lcom/android/server/wm/MultiWindowManagerInternal;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v5}, Lcom/android/server/wm/WindowManagerService;->continueSurfaceLayout()V

    goto :goto_2

    :catchall_1
    move-exception v5

    :try_start_7
    monitor-exit v6

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v5
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    :catchall_2
    move-exception v5

    iget-object v6, p0, Lcom/android/server/wm/MultiWindowManagerInternal;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v6}, Lcom/android/server/wm/WindowManagerService;->continueSurfaceLayout()V

    throw v5
.end method

.method public setCurrentInputMethodClient(Landroid/os/IBinder;)V
    .locals 4

    iget-object v1, p0, Lcom/android/server/wm/MultiWindowManagerInternal;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v1, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    monitor-enter v2

    :try_start_0
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    iget-object v1, p0, Lcom/android/server/wm/MultiWindowManagerInternal;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    invoke-virtual {v1, p1}, Lcom/android/server/wm/WindowHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/WindowState;

    if-eqz v0, :cond_1

    iget-object v1, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v1, v1, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v3, 0x3e9

    if-eq v1, v3, :cond_0

    iget-object v1, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v1, v1, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v3, 0x3e8

    if-ne v1, v3, :cond_2

    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/android/server/wm/MultiWindowManagerInternal;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v1, Lcom/android/server/wm/WindowManagerService;->mCurrentFocus:Lcom/android/server/wm/WindowState;

    :cond_1
    iput-object v0, p0, Lcom/android/server/wm/MultiWindowManagerInternal;->mCurrentInputMethodClient:Lcom/android/server/wm/WindowState;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v2

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :cond_2
    :try_start_1
    iget-object v1, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v1, v1, Landroid/view/WindowManager$LayoutParams;->type:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v3, 0x3

    if-ne v1, v3, :cond_1

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v2

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method public setMultiWindowManagerService(Lcom/samsung/android/multiwindow/IMultiWindowManager;)V
    .locals 1

    iput-object p1, p0, Lcom/android/server/wm/MultiWindowManagerInternal;->mMultiWindowService:Lcom/samsung/android/multiwindow/IMultiWindowManager;

    iget-object v0, p0, Lcom/android/server/wm/MultiWindowManagerInternal;->mFreeformController:Lcom/android/server/wm/FreeformStackWindowController;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/FreeformStackWindowController;->setMultiWindowManagerService(Lcom/samsung/android/multiwindow/IMultiWindowManager;)V

    return-void
.end method

.method public setTaskSnapShotForPairedTask(IILandroid/app/ActivityManager$TaskSnapshot;)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/wm/MultiWindowManagerInternal;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mTaskSnapshotController:Lcom/android/server/wm/TaskSnapshotController;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/wm/TaskSnapshotController;->setTaskSnapShotForPairedTask(IILandroid/app/ActivityManager$TaskSnapshot;)V

    return-void
.end method

.method public shouldBeHiddenIfNeeded(Landroid/view/WindowManagerPolicy$WindowState;)Z
    .locals 1

    iget-object v0, p0, Lcom/android/server/wm/MultiWindowManagerInternal;->mFreeformController:Lcom/android/server/wm/FreeformStackWindowController;

    check-cast p1, Lcom/android/server/wm/WindowState;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/FreeformStackWindowController;->shouldBeHiddenIfNeeded(Lcom/android/server/wm/WindowState;)Z

    move-result v0

    return v0
.end method

.method public startResizingFreeformTask(II)Z
    .locals 8

    iget-object v0, p0, Lcom/android/server/wm/MultiWindowManagerInternal;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v7, v0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    monitor-enter v7

    :try_start_0
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    iget-object v0, p0, Lcom/android/server/wm/MultiWindowManagerInternal;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerService;->getDefaultDisplayContentLocked()Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/android/server/wm/DisplayContent;->findTaskForResizePoint(II)Lcom/android/server/wm/Task;

    move-result-object v6

    if-eqz v6, :cond_0

    iget-object v0, p0, Lcom/android/server/wm/MultiWindowManagerInternal;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v6}, Lcom/android/server/wm/Task;->getTopVisibleAppMainWindow()Lcom/android/server/wm/WindowState;

    move-result-object v1

    invoke-virtual {v6}, Lcom/android/server/wm/Task;->preserveOrientationOnResize()Z

    move-result v3

    int-to-float v4, p1

    int-to-float v5, p2

    const/4 v2, 0x1

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/wm/WindowManagerService;->startPositioningLocked(Lcom/android/server/wm/WindowState;ZZFF)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit v7

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return v0

    :cond_0
    monitor-exit v7

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    const/4 v0, 0x0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit v7

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v0
.end method
