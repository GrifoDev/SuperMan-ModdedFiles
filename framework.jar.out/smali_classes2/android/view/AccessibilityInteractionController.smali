.class final Landroid/view/AccessibilityInteractionController;
.super Ljava/lang/Object;
.source "AccessibilityInteractionController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/AccessibilityInteractionController$AccessibilityNodePrefetcher;,
        Landroid/view/AccessibilityInteractionController$AddNodeInfosForViewId;,
        Landroid/view/AccessibilityInteractionController$PrivateHandler;
    }
.end annotation


# static fields
.field private static final ENFORCE_NODE_TREE_CONSISTENT:Z


# instance fields
.field private mAddNodeInfosForViewId:Landroid/view/AccessibilityInteractionController$AddNodeInfosForViewId;

.field private final mHandler:Landroid/os/Handler;

.field private final mMyLooperThreadId:J

.field private final mMyProcessId:I

.field private final mPrefetcher:Landroid/view/AccessibilityInteractionController$AccessibilityNodePrefetcher;

.field private final mTempAccessibilityNodeInfoList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/accessibility/AccessibilityNodeInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final mTempArrayList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private final mTempPoint:Landroid/graphics/Point;

.field private final mTempRect:Landroid/graphics/Rect;

.field private final mTempRect1:Landroid/graphics/Rect;

.field private final mTempRect2:Landroid/graphics/Rect;

.field private final mViewRootImpl:Landroid/view/ViewRootImpl;


# direct methods
.method static synthetic -get0(Landroid/view/AccessibilityInteractionController;)Landroid/view/ViewRootImpl;
    .locals 1

    iget-object v0, p0, Landroid/view/AccessibilityInteractionController;->mViewRootImpl:Landroid/view/ViewRootImpl;

    return-object v0
.end method

.method static synthetic -wrap0(Landroid/view/AccessibilityInteractionController;Landroid/view/View;)Z
    .locals 1

    invoke-direct {p0, p1}, Landroid/view/AccessibilityInteractionController;->isShown(Landroid/view/View;)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap1(Landroid/view/AccessibilityInteractionController;Landroid/os/Message;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/view/AccessibilityInteractionController;->findAccessibilityNodeInfoByAccessibilityIdUiThread(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic -wrap2(Landroid/view/AccessibilityInteractionController;Landroid/os/Message;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/view/AccessibilityInteractionController;->findAccessibilityNodeInfosByTextUiThread(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic -wrap3(Landroid/view/AccessibilityInteractionController;Landroid/os/Message;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/view/AccessibilityInteractionController;->findAccessibilityNodeInfosByViewIdUiThread(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic -wrap4(Landroid/view/AccessibilityInteractionController;Landroid/os/Message;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/view/AccessibilityInteractionController;->findFocusUiThread(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic -wrap5(Landroid/view/AccessibilityInteractionController;Landroid/os/Message;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/view/AccessibilityInteractionController;->focusSearchUiThread(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic -wrap6(Landroid/view/AccessibilityInteractionController;Landroid/os/Message;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/view/AccessibilityInteractionController;->performAccessibilityActionUiThread(Landroid/os/Message;)V

    return-void
.end method

.method public constructor <init>(Landroid/view/ViewRootImpl;)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Landroid/view/AccessibilityInteractionController;->mTempAccessibilityNodeInfoList:Ljava/util/ArrayList;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Landroid/view/AccessibilityInteractionController;->mTempArrayList:Ljava/util/ArrayList;

    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    iput-object v1, p0, Landroid/view/AccessibilityInteractionController;->mTempPoint:Landroid/graphics/Point;

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Landroid/view/AccessibilityInteractionController;->mTempRect:Landroid/graphics/Rect;

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Landroid/view/AccessibilityInteractionController;->mTempRect1:Landroid/graphics/Rect;

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Landroid/view/AccessibilityInteractionController;->mTempRect2:Landroid/graphics/Rect;

    iget-object v1, p1, Landroid/view/ViewRootImpl;->mHandler:Landroid/view/ViewRootImpl$ViewRootHandler;

    invoke-virtual {v1}, Landroid/view/ViewRootImpl$ViewRootHandler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getId()J

    move-result-wide v2

    iput-wide v2, p0, Landroid/view/AccessibilityInteractionController;->mMyLooperThreadId:J

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v1

    iput v1, p0, Landroid/view/AccessibilityInteractionController;->mMyProcessId:I

    new-instance v1, Landroid/view/AccessibilityInteractionController$PrivateHandler;

    invoke-direct {v1, p0, v0}, Landroid/view/AccessibilityInteractionController$PrivateHandler;-><init>(Landroid/view/AccessibilityInteractionController;Landroid/os/Looper;)V

    iput-object v1, p0, Landroid/view/AccessibilityInteractionController;->mHandler:Landroid/os/Handler;

    iput-object p1, p0, Landroid/view/AccessibilityInteractionController;->mViewRootImpl:Landroid/view/ViewRootImpl;

    new-instance v1, Landroid/view/AccessibilityInteractionController$AccessibilityNodePrefetcher;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Landroid/view/AccessibilityInteractionController$AccessibilityNodePrefetcher;-><init>(Landroid/view/AccessibilityInteractionController;Landroid/view/AccessibilityInteractionController$AccessibilityNodePrefetcher;)V

    iput-object v1, p0, Landroid/view/AccessibilityInteractionController;->mPrefetcher:Landroid/view/AccessibilityInteractionController$AccessibilityNodePrefetcher;

    return-void
.end method

.method private adjustIsVisibleToUserIfNeeded(Landroid/view/accessibility/AccessibilityNodeInfo;Landroid/graphics/Region;)V
    .locals 2

    if-eqz p2, :cond_0

    if-nez p1, :cond_1

    :cond_0
    return-void

    :cond_1
    iget-object v0, p0, Landroid/view/AccessibilityInteractionController;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->getBoundsInScreen(Landroid/graphics/Rect;)V

    invoke-virtual {p2, v0}, Landroid/graphics/Region;->quickReject(Landroid/graphics/Rect;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setVisibleToUser(Z)V

    :cond_2
    return-void
.end method

.method private adjustIsVisibleToUserIfNeeded(Ljava/util/List;Landroid/graphics/Region;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/view/accessibility/AccessibilityNodeInfo;",
            ">;",
            "Landroid/graphics/Region;",
            ")V"
        }
    .end annotation

    if-eqz p2, :cond_0

    if-nez p1, :cond_1

    :cond_0
    return-void

    :cond_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_2

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-direct {p0, v1, p2}, Landroid/view/AccessibilityInteractionController;->adjustIsVisibleToUserIfNeeded(Landroid/view/accessibility/AccessibilityNodeInfo;Landroid/graphics/Region;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method private applyAppScaleAndMagnificationSpecIfNeeded(Landroid/view/accessibility/AccessibilityNodeInfo;Landroid/view/MagnificationSpec;)V
    .locals 19

    if-nez p1, :cond_0

    return-void

    :cond_0
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/view/AccessibilityInteractionController;->mViewRootImpl:Landroid/view/ViewRootImpl;

    iget-object v15, v15, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget v2, v15, Landroid/view/View$AttachInfo;->mApplicationScale:F

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v2, v1}, Landroid/view/AccessibilityInteractionController;->shouldApplyAppScaleAndMagnificationSpec(FLandroid/view/MagnificationSpec;)Z

    move-result v15

    if-nez v15, :cond_1

    return-void

    :cond_1
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/AccessibilityInteractionController;->mTempRect:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/view/AccessibilityInteractionController;->mTempRect1:Landroid/graphics/Rect;

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/view/accessibility/AccessibilityNodeInfo;->getBoundsInParent(Landroid/graphics/Rect;)V

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/view/accessibility/AccessibilityNodeInfo;->getBoundsInScreen(Landroid/graphics/Rect;)V

    const/high16 v15, 0x3f800000    # 1.0f

    cmpl-float v15, v2, v15

    if-eqz v15, :cond_2

    invoke-virtual {v4, v2}, Landroid/graphics/Rect;->scale(F)V

    invoke-virtual {v5, v2}, Landroid/graphics/Rect;->scale(F)V

    :cond_2
    if-eqz p2, :cond_3

    move-object/from16 v0, p2

    iget v15, v0, Landroid/view/MagnificationSpec;->scale:F

    invoke-virtual {v4, v15}, Landroid/graphics/Rect;->scale(F)V

    move-object/from16 v0, p2

    iget v15, v0, Landroid/view/MagnificationSpec;->scale:F

    invoke-virtual {v5, v15}, Landroid/graphics/Rect;->scale(F)V

    move-object/from16 v0, p2

    iget v15, v0, Landroid/view/MagnificationSpec;->offsetX:F

    float-to-int v15, v15

    move-object/from16 v0, p2

    iget v0, v0, Landroid/view/MagnificationSpec;->offsetY:F

    move/from16 v16, v0

    move/from16 v0, v16

    float-to-int v0, v0

    move/from16 v16, v0

    move/from16 v0, v16

    invoke-virtual {v5, v15, v0}, Landroid/graphics/Rect;->offset(II)V

    :cond_3
    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/view/accessibility/AccessibilityNodeInfo;->setBoundsInParent(Landroid/graphics/Rect;)V

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/view/accessibility/AccessibilityNodeInfo;->setBoundsInScreen(Landroid/graphics/Rect;)V

    invoke-virtual/range {p1 .. p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->hasExtras()Z

    move-result v15

    if-eqz v15, :cond_5

    invoke-virtual/range {p1 .. p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->getExtras()Landroid/os/Bundle;

    move-result-object v8

    const-string/jumbo v15, "android.view.accessibility.extra.DATA_TEXT_CHARACTER_LOCATION_KEY"

    invoke-virtual {v8, v15}, Landroid/os/Bundle;->getParcelableArray(Ljava/lang/String;)[Landroid/os/Parcelable;

    move-result-object v12

    if-eqz v12, :cond_5

    const/4 v9, 0x0

    :goto_0
    array-length v15, v12

    if-ge v9, v15, :cond_5

    aget-object v11, v12, v9

    check-cast v11, Landroid/graphics/RectF;

    invoke-virtual {v11, v2}, Landroid/graphics/RectF;->scale(F)V

    if-eqz p2, :cond_4

    move-object/from16 v0, p2

    iget v15, v0, Landroid/view/MagnificationSpec;->scale:F

    invoke-virtual {v11, v15}, Landroid/graphics/RectF;->scale(F)V

    move-object/from16 v0, p2

    iget v15, v0, Landroid/view/MagnificationSpec;->offsetX:F

    move-object/from16 v0, p2

    iget v0, v0, Landroid/view/MagnificationSpec;->offsetY:F

    move/from16 v16, v0

    move/from16 v0, v16

    invoke-virtual {v11, v15, v0}, Landroid/graphics/RectF;->offset(FF)V

    :cond_4
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    :cond_5
    if-eqz p2, :cond_8

    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/view/AccessibilityInteractionController;->mViewRootImpl:Landroid/view/ViewRootImpl;

    iget-object v3, v15, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v15, v3, Landroid/view/View$AttachInfo;->mDisplay:Landroid/view/Display;

    if-nez v15, :cond_6

    return-void

    :cond_6
    iget v15, v3, Landroid/view/View$AttachInfo;->mApplicationScale:F

    move-object/from16 v0, p2

    iget v0, v0, Landroid/view/MagnificationSpec;->scale:F

    move/from16 v16, v0

    mul-float v10, v15, v16

    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/view/AccessibilityInteractionController;->mTempRect1:Landroid/graphics/Rect;

    iget v15, v3, Landroid/view/View$AttachInfo;->mWindowLeft:I

    int-to-float v15, v15

    mul-float/2addr v15, v10

    move-object/from16 v0, p2

    iget v0, v0, Landroid/view/MagnificationSpec;->offsetX:F

    move/from16 v16, v0

    add-float v15, v15, v16

    float-to-int v15, v15

    iput v15, v14, Landroid/graphics/Rect;->left:I

    iget v15, v3, Landroid/view/View$AttachInfo;->mWindowTop:I

    int-to-float v15, v15

    mul-float/2addr v15, v10

    move-object/from16 v0, p2

    iget v0, v0, Landroid/view/MagnificationSpec;->offsetY:F

    move/from16 v16, v0

    add-float v15, v15, v16

    float-to-int v15, v15

    iput v15, v14, Landroid/graphics/Rect;->top:I

    iget v15, v14, Landroid/graphics/Rect;->left:I

    int-to-float v15, v15

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/AccessibilityInteractionController;->mViewRootImpl:Landroid/view/ViewRootImpl;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget v0, v0, Landroid/view/ViewRootImpl;->mWidth:I

    move/from16 v16, v0

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v16, v0

    mul-float v16, v16, v10

    add-float v15, v15, v16

    float-to-int v15, v15

    iput v15, v14, Landroid/graphics/Rect;->right:I

    iget v15, v14, Landroid/graphics/Rect;->top:I

    int-to-float v15, v15

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/AccessibilityInteractionController;->mViewRootImpl:Landroid/view/ViewRootImpl;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget v0, v0, Landroid/view/ViewRootImpl;->mHeight:I

    move/from16 v16, v0

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v16, v0

    mul-float v16, v16, v10

    add-float v15, v15, v16

    float-to-int v15, v15

    iput v15, v14, Landroid/graphics/Rect;->bottom:I

    iget-object v15, v3, Landroid/view/View$AttachInfo;->mDisplay:Landroid/view/Display;

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/AccessibilityInteractionController;->mTempPoint:Landroid/graphics/Point;

    move-object/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/view/AccessibilityInteractionController;->mTempPoint:Landroid/graphics/Point;

    iget v7, v15, Landroid/graphics/Point;->x:I

    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/view/AccessibilityInteractionController;->mTempPoint:Landroid/graphics/Point;

    iget v6, v15, Landroid/graphics/Point;->y:I

    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/view/AccessibilityInteractionController;->mTempRect2:Landroid/graphics/Rect;

    const/4 v15, 0x0

    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-virtual {v13, v15, v0, v7, v6}, Landroid/graphics/Rect;->set(IIII)V

    invoke-virtual {v14, v13}, Landroid/graphics/Rect;->intersect(Landroid/graphics/Rect;)Z

    move-result v15

    if-nez v15, :cond_7

    invoke-virtual {v13}, Landroid/graphics/Rect;->setEmpty()V

    :cond_7
    iget v15, v5, Landroid/graphics/Rect;->left:I

    iget v0, v5, Landroid/graphics/Rect;->top:I

    move/from16 v16, v0

    iget v0, v5, Landroid/graphics/Rect;->right:I

    move/from16 v17, v0

    iget v0, v5, Landroid/graphics/Rect;->bottom:I

    move/from16 v18, v0

    invoke-virtual/range {v14 .. v18}, Landroid/graphics/Rect;->intersects(IIII)Z

    move-result v15

    if-nez v15, :cond_8

    const/4 v15, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Landroid/view/accessibility/AccessibilityNodeInfo;->setVisibleToUser(Z)V

    :cond_8
    return-void
.end method

.method private applyAppScaleAndMagnificationSpecIfNeeded(Ljava/util/List;Landroid/view/MagnificationSpec;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/view/accessibility/AccessibilityNodeInfo;",
            ">;",
            "Landroid/view/MagnificationSpec;",
            ")V"
        }
    .end annotation

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object v4, p0, Landroid/view/AccessibilityInteractionController;->mViewRootImpl:Landroid/view/ViewRootImpl;

    iget-object v4, v4, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget v0, v4, Landroid/view/View$AttachInfo;->mApplicationScale:F

    invoke-direct {p0, v0, p2}, Landroid/view/AccessibilityInteractionController;->shouldApplyAppScaleAndMagnificationSpec(FLandroid/view/MagnificationSpec;)Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v3, :cond_1

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-direct {p0, v2, p2}, Landroid/view/AccessibilityInteractionController;->applyAppScaleAndMagnificationSpecIfNeeded(Landroid/view/accessibility/AccessibilityNodeInfo;Landroid/view/MagnificationSpec;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private findAccessibilityNodeInfoByAccessibilityIdUiThread(Landroid/os/Message;)V
    .locals 14

    iget v9, p1, Landroid/os/Message;->arg1:I

    iget-object v13, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v13, Lcom/android/internal/os/SomeArgs;

    iget v12, v13, Lcom/android/internal/os/SomeArgs;->argi1:I

    iget v8, v13, Lcom/android/internal/os/SomeArgs;->argi2:I

    iget v3, v13, Lcom/android/internal/os/SomeArgs;->argi3:I

    iget-object v2, v13, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v2, Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;

    iget-object v4, v13, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v4, Landroid/view/MagnificationSpec;

    iget-object v5, v13, Lcom/android/internal/os/SomeArgs;->arg3:Ljava/lang/Object;

    check-cast v5, Landroid/graphics/Region;

    iget-object v11, v13, Lcom/android/internal/os/SomeArgs;->arg4:Ljava/lang/Object;

    check-cast v11, Landroid/os/Bundle;

    invoke-virtual {v13}, Lcom/android/internal/os/SomeArgs;->recycle()V

    iget-object v1, p0, Landroid/view/AccessibilityInteractionController;->mTempAccessibilityNodeInfoList:Ljava/util/ArrayList;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    :try_start_0
    iget-object v0, p0, Landroid/view/AccessibilityInteractionController;->mViewRootImpl:Landroid/view/ViewRootImpl;

    iget-object v0, v0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/view/AccessibilityInteractionController;->mViewRootImpl:Landroid/view/ViewRootImpl;

    iget-object v0, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_1

    :cond_0
    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Landroid/view/AccessibilityInteractionController;->updateInfosForViewportAndReturnFindNodeResult(Ljava/util/List;Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;ILandroid/view/MagnificationSpec;Landroid/graphics/Region;)V

    return-void

    :cond_1
    :try_start_1
    iget-object v0, p0, Landroid/view/AccessibilityInteractionController;->mViewRootImpl:Landroid/view/ViewRootImpl;

    iget-object v0, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iput v9, v0, Landroid/view/View$AttachInfo;->mAccessibilityFetchFlags:I

    const/4 v7, 0x0

    const v0, 0x7ffffffe

    if-ne v12, v0, :cond_3

    iget-object v0, p0, Landroid/view/AccessibilityInteractionController;->mViewRootImpl:Landroid/view/ViewRootImpl;

    iget-object v7, v0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    :goto_0
    if-eqz v7, :cond_2

    invoke-direct {p0, v7}, Landroid/view/AccessibilityInteractionController;->isShown(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v6, p0, Landroid/view/AccessibilityInteractionController;->mPrefetcher:Landroid/view/AccessibilityInteractionController$AccessibilityNodePrefetcher;

    move-object v10, v1

    invoke-virtual/range {v6 .. v11}, Landroid/view/AccessibilityInteractionController$AccessibilityNodePrefetcher;->prefetchAccessibilityNodeInfos(Landroid/view/View;IILjava/util/List;Landroid/os/Bundle;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_2
    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Landroid/view/AccessibilityInteractionController;->updateInfosForViewportAndReturnFindNodeResult(Ljava/util/List;Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;ILandroid/view/MagnificationSpec;Landroid/graphics/Region;)V

    return-void

    :cond_3
    :try_start_2
    invoke-direct {p0, v12}, Landroid/view/AccessibilityInteractionController;->findViewByAccessibilityId(I)Landroid/view/View;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v7

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object v6, v0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Landroid/view/AccessibilityInteractionController;->updateInfosForViewportAndReturnFindNodeResult(Ljava/util/List;Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;ILandroid/view/MagnificationSpec;Landroid/graphics/Region;)V

    throw v6
.end method

.method private findAccessibilityNodeInfosByTextUiThread(Landroid/os/Message;)V
    .locals 21

    move-object/from16 v0, p1

    iget v10, v0, Landroid/os/Message;->arg1:I

    move-object/from16 v0, p1

    iget-object v9, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v9, Lcom/android/internal/os/SomeArgs;

    iget-object v0, v9, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    move-object/from16 v17, v0

    check-cast v17, Ljava/lang/String;

    iget-object v4, v9, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v4, Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;

    iget-object v6, v9, Lcom/android/internal/os/SomeArgs;->arg3:Ljava/lang/Object;

    check-cast v6, Landroid/view/MagnificationSpec;

    iget v8, v9, Lcom/android/internal/os/SomeArgs;->argi1:I

    iget v0, v9, Lcom/android/internal/os/SomeArgs;->argi2:I

    move/from16 v19, v0

    iget v5, v9, Lcom/android/internal/os/SomeArgs;->argi3:I

    iget-object v7, v9, Lcom/android/internal/os/SomeArgs;->arg4:Ljava/lang/Object;

    check-cast v7, Landroid/graphics/Region;

    invoke-virtual {v9}, Lcom/android/internal/os/SomeArgs;->recycle()V

    const/4 v3, 0x0

    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/view/AccessibilityInteractionController;->mViewRootImpl:Landroid/view/ViewRootImpl;

    iget-object v2, v2, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    if-eqz v2, :cond_0

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/view/AccessibilityInteractionController;->mViewRootImpl:Landroid/view/ViewRootImpl;

    iget-object v2, v2, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v2, :cond_1

    :cond_0
    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v7}, Landroid/view/AccessibilityInteractionController;->updateInfosForViewportAndReturnFindNodeResult(Ljava/util/List;Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;ILandroid/view/MagnificationSpec;Landroid/graphics/Region;)V

    return-void

    :cond_1
    :try_start_1
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/view/AccessibilityInteractionController;->mViewRootImpl:Landroid/view/ViewRootImpl;

    iget-object v2, v2, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iput v10, v2, Landroid/view/View$AttachInfo;->mAccessibilityFetchFlags:I

    const/16 v16, 0x0

    const v2, 0x7ffffffe

    if-eq v8, v2, :cond_3

    move-object/from16 v0, p0

    invoke-direct {v0, v8}, Landroid/view/AccessibilityInteractionController;->findViewByAccessibilityId(I)Landroid/view/View;

    move-result-object v16

    :goto_0
    if-eqz v16, :cond_2

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Landroid/view/AccessibilityInteractionController;->isShown(Landroid/view/View;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual/range {v16 .. v16}, Landroid/view/View;->getAccessibilityNodeProvider()Landroid/view/accessibility/AccessibilityNodeProvider;

    move-result-object v15

    if-eqz v15, :cond_4

    move-object/from16 v0, v17

    move/from16 v1, v19

    invoke-virtual {v15, v0, v1}, Landroid/view/accessibility/AccessibilityNodeProvider;->findAccessibilityNodeInfosByText(Ljava/lang/String;I)Ljava/util/List;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v3

    :cond_2
    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v7}, Landroid/view/AccessibilityInteractionController;->updateInfosForViewportAndReturnFindNodeResult(Ljava/util/List;Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;ILandroid/view/MagnificationSpec;Landroid/graphics/Region;)V

    return-void

    :cond_3
    :try_start_2
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/view/AccessibilityInteractionController;->mViewRootImpl:Landroid/view/ViewRootImpl;

    iget-object v0, v2, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    move-object/from16 v16, v0

    goto :goto_0

    :cond_4
    const/4 v2, -0x1

    move/from16 v0, v19

    if-ne v0, v2, :cond_2

    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/view/AccessibilityInteractionController;->mTempArrayList:Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->clear()V

    const/4 v2, 0x7

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v0, v12, v1, v2}, Landroid/view/View;->findViewsWithText(Ljava/util/ArrayList;Ljava/lang/CharSequence;I)V

    invoke-virtual {v12}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/view/AccessibilityInteractionController;->mTempAccessibilityNodeInfoList:Ljava/util/ArrayList;

    invoke-interface {v3}, Ljava/util/List;->clear()V

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v18

    const/4 v13, 0x0

    :goto_1
    move/from16 v0, v18

    if-ge v13, v0, :cond_2

    invoke-virtual {v12, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/view/View;

    move-object/from16 v0, p0

    invoke-direct {v0, v11}, Landroid/view/AccessibilityInteractionController;->isShown(Landroid/view/View;)Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-virtual {v11}, Landroid/view/View;->getAccessibilityNodeProvider()Landroid/view/accessibility/AccessibilityNodeProvider;

    move-result-object v15

    if-eqz v15, :cond_6

    const/4 v2, -0x1

    move-object/from16 v0, v17

    invoke-virtual {v15, v0, v2}, Landroid/view/accessibility/AccessibilityNodeProvider;->findAccessibilityNodeInfosByText(Ljava/lang/String;I)Ljava/util/List;

    move-result-object v14

    if-eqz v14, :cond_5

    invoke-interface {v3, v14}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_5
    :goto_2
    add-int/lit8 v13, v13, 0x1

    goto :goto_1

    :cond_6
    invoke-virtual {v11}, Landroid/view/View;->createAccessibilityNodeInfo()Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v2

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception v2

    move-object/from16 v20, v2

    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v7}, Landroid/view/AccessibilityInteractionController;->updateInfosForViewportAndReturnFindNodeResult(Ljava/util/List;Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;ILandroid/view/MagnificationSpec;Landroid/graphics/Region;)V

    throw v20
.end method

.method private findAccessibilityNodeInfosByViewIdUiThread(Landroid/os/Message;)V
    .locals 14

    iget v8, p1, Landroid/os/Message;->arg1:I

    iget v6, p1, Landroid/os/Message;->arg2:I

    iget-object v7, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v7, Lcom/android/internal/os/SomeArgs;

    iget v3, v7, Lcom/android/internal/os/SomeArgs;->argi1:I

    iget-object v2, v7, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v2, Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;

    iget-object v4, v7, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v4, Landroid/view/MagnificationSpec;

    iget-object v11, v7, Lcom/android/internal/os/SomeArgs;->arg3:Ljava/lang/Object;

    check-cast v11, Ljava/lang/String;

    iget-object v5, v7, Lcom/android/internal/os/SomeArgs;->arg4:Ljava/lang/Object;

    check-cast v5, Landroid/graphics/Region;

    invoke-virtual {v7}, Lcom/android/internal/os/SomeArgs;->recycle()V

    iget-object v1, p0, Landroid/view/AccessibilityInteractionController;->mTempAccessibilityNodeInfoList:Ljava/util/ArrayList;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    :try_start_0
    iget-object v0, p0, Landroid/view/AccessibilityInteractionController;->mViewRootImpl:Landroid/view/ViewRootImpl;

    iget-object v0, v0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/view/AccessibilityInteractionController;->mViewRootImpl:Landroid/view/ViewRootImpl;

    iget-object v0, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_1

    :cond_0
    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Landroid/view/AccessibilityInteractionController;->updateInfosForViewportAndReturnFindNodeResult(Ljava/util/List;Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;ILandroid/view/MagnificationSpec;Landroid/graphics/Region;)V

    return-void

    :cond_1
    :try_start_1
    iget-object v0, p0, Landroid/view/AccessibilityInteractionController;->mViewRootImpl:Landroid/view/ViewRootImpl;

    iget-object v0, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iput v8, v0, Landroid/view/View$AttachInfo;->mAccessibilityFetchFlags:I

    const/4 v10, 0x0

    const v0, 0x7ffffffe

    if-eq v6, v0, :cond_2

    invoke-direct {p0, v6}, Landroid/view/AccessibilityInteractionController;->findViewByAccessibilityId(I)Landroid/view/View;

    move-result-object v10

    :goto_0
    if-eqz v10, :cond_5

    invoke-virtual {v10}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-virtual {v0, v11, v12, v13}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v9

    if-gtz v9, :cond_3

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Landroid/view/AccessibilityInteractionController;->updateInfosForViewportAndReturnFindNodeResult(Ljava/util/List;Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;ILandroid/view/MagnificationSpec;Landroid/graphics/Region;)V

    return-void

    :cond_2
    :try_start_2
    iget-object v0, p0, Landroid/view/AccessibilityInteractionController;->mViewRootImpl:Landroid/view/ViewRootImpl;

    iget-object v10, v0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    goto :goto_0

    :cond_3
    iget-object v0, p0, Landroid/view/AccessibilityInteractionController;->mAddNodeInfosForViewId:Landroid/view/AccessibilityInteractionController$AddNodeInfosForViewId;

    if-nez v0, :cond_4

    new-instance v0, Landroid/view/AccessibilityInteractionController$AddNodeInfosForViewId;

    const/4 v12, 0x0

    invoke-direct {v0, p0, v12}, Landroid/view/AccessibilityInteractionController$AddNodeInfosForViewId;-><init>(Landroid/view/AccessibilityInteractionController;Landroid/view/AccessibilityInteractionController$AddNodeInfosForViewId;)V

    iput-object v0, p0, Landroid/view/AccessibilityInteractionController;->mAddNodeInfosForViewId:Landroid/view/AccessibilityInteractionController$AddNodeInfosForViewId;

    :cond_4
    iget-object v0, p0, Landroid/view/AccessibilityInteractionController;->mAddNodeInfosForViewId:Landroid/view/AccessibilityInteractionController$AddNodeInfosForViewId;

    invoke-virtual {v0, v9, v1}, Landroid/view/AccessibilityInteractionController$AddNodeInfosForViewId;->init(ILjava/util/List;)V

    iget-object v0, p0, Landroid/view/AccessibilityInteractionController;->mAddNodeInfosForViewId:Landroid/view/AccessibilityInteractionController$AddNodeInfosForViewId;

    invoke-virtual {v10, v0}, Landroid/view/View;->findViewByPredicate(Ljava/util/function/Predicate;)Landroid/view/View;

    iget-object v0, p0, Landroid/view/AccessibilityInteractionController;->mAddNodeInfosForViewId:Landroid/view/AccessibilityInteractionController$AddNodeInfosForViewId;

    invoke-virtual {v0}, Landroid/view/AccessibilityInteractionController$AddNodeInfosForViewId;->reset()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_5
    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Landroid/view/AccessibilityInteractionController;->updateInfosForViewportAndReturnFindNodeResult(Ljava/util/List;Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;ILandroid/view/MagnificationSpec;Landroid/graphics/Region;)V

    return-void

    :catchall_0
    move-exception v0

    move-object v12, v0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Landroid/view/AccessibilityInteractionController;->updateInfosForViewportAndReturnFindNodeResult(Ljava/util/List;Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;ILandroid/view/MagnificationSpec;Landroid/graphics/Region;)V

    throw v12
.end method

.method private findFocusUiThread(Landroid/os/Message;)V
    .locals 18

    move-object/from16 v0, p1

    iget v9, v0, Landroid/os/Message;->arg1:I

    move-object/from16 v0, p1

    iget v10, v0, Landroid/os/Message;->arg2:I

    move-object/from16 v0, p1

    iget-object v8, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v8, Lcom/android/internal/os/SomeArgs;

    iget v4, v8, Lcom/android/internal/os/SomeArgs;->argi1:I

    iget v7, v8, Lcom/android/internal/os/SomeArgs;->argi2:I

    iget v15, v8, Lcom/android/internal/os/SomeArgs;->argi3:I

    iget-object v3, v8, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v3, Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;

    iget-object v5, v8, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v5, Landroid/view/MagnificationSpec;

    iget-object v6, v8, Lcom/android/internal/os/SomeArgs;->arg3:Ljava/lang/Object;

    check-cast v6, Landroid/graphics/Region;

    invoke-virtual {v8}, Lcom/android/internal/os/SomeArgs;->recycle()V

    const/4 v2, 0x0

    :try_start_0
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/view/AccessibilityInteractionController;->mViewRootImpl:Landroid/view/ViewRootImpl;

    iget-object v1, v1, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    if-eqz v1, :cond_0

    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/view/AccessibilityInteractionController;->mViewRootImpl:Landroid/view/ViewRootImpl;

    iget-object v1, v1, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_1

    :cond_0
    move-object/from16 v1, p0

    invoke-direct/range {v1 .. v6}, Landroid/view/AccessibilityInteractionController;->updateInfoForViewportAndReturnFindNodeResult(Landroid/view/accessibility/AccessibilityNodeInfo;Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;ILandroid/view/MagnificationSpec;Landroid/graphics/Region;)V

    return-void

    :cond_1
    :try_start_1
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/view/AccessibilityInteractionController;->mViewRootImpl:Landroid/view/ViewRootImpl;

    iget-object v1, v1, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iput v9, v1, Landroid/view/View$AttachInfo;->mAccessibilityFetchFlags:I

    const/4 v13, 0x0

    const v1, 0x7ffffffe

    if-eq v7, v1, :cond_2

    move-object/from16 v0, p0

    invoke-direct {v0, v7}, Landroid/view/AccessibilityInteractionController;->findViewByAccessibilityId(I)Landroid/view/View;

    move-result-object v13

    :goto_0
    if-eqz v13, :cond_3

    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Landroid/view/AccessibilityInteractionController;->isShown(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_3

    packed-switch v10, :pswitch_data_0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v17, "Unknown focus type: "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v1

    move-object/from16 v16, v1

    move-object/from16 v1, p0

    invoke-direct/range {v1 .. v6}, Landroid/view/AccessibilityInteractionController;->updateInfoForViewportAndReturnFindNodeResult(Landroid/view/accessibility/AccessibilityNodeInfo;Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;ILandroid/view/MagnificationSpec;Landroid/graphics/Region;)V

    throw v16

    :cond_2
    :try_start_2
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/view/AccessibilityInteractionController;->mViewRootImpl:Landroid/view/ViewRootImpl;

    iget-object v13, v1, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    goto :goto_0

    :pswitch_0
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/view/AccessibilityInteractionController;->mViewRootImpl:Landroid/view/ViewRootImpl;

    iget-object v11, v1, Landroid/view/ViewRootImpl;->mAccessibilityFocusedHost:Landroid/view/View;

    if-eqz v11, :cond_3

    invoke-static {v11, v13}, Landroid/view/ViewRootImpl;->isViewDescendantOf(Landroid/view/View;Landroid/view/View;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_4

    :cond_3
    :goto_1
    move-object/from16 v1, p0

    invoke-direct/range {v1 .. v6}, Landroid/view/AccessibilityInteractionController;->updateInfoForViewportAndReturnFindNodeResult(Landroid/view/accessibility/AccessibilityNodeInfo;Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;ILandroid/view/MagnificationSpec;Landroid/graphics/Region;)V

    return-void

    :cond_4
    :try_start_3
    move-object/from16 v0, p0

    invoke-direct {v0, v11}, Landroid/view/AccessibilityInteractionController;->isShown(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {v11}, Landroid/view/View;->getAccessibilityNodeProvider()Landroid/view/accessibility/AccessibilityNodeProvider;

    move-result-object v12

    if-eqz v12, :cond_5

    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/view/AccessibilityInteractionController;->mViewRootImpl:Landroid/view/ViewRootImpl;

    iget-object v1, v1, Landroid/view/ViewRootImpl;->mAccessibilityFocusedVirtualView:Landroid/view/accessibility/AccessibilityNodeInfo;

    if-eqz v1, :cond_3

    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/view/AccessibilityInteractionController;->mViewRootImpl:Landroid/view/ViewRootImpl;

    iget-object v1, v1, Landroid/view/ViewRootImpl;->mAccessibilityFocusedVirtualView:Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-static {v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->obtain(Landroid/view/accessibility/AccessibilityNodeInfo;)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v2

    goto :goto_1

    :cond_5
    const/4 v1, -0x1

    if-ne v15, v1, :cond_3

    invoke-virtual {v11}, Landroid/view/View;->createAccessibilityNodeInfo()Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v2

    goto :goto_1

    :pswitch_1
    invoke-virtual {v13}, Landroid/view/View;->findFocus()Landroid/view/View;

    move-result-object v14

    if-eqz v14, :cond_3

    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Landroid/view/AccessibilityInteractionController;->isShown(Landroid/view/View;)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    if-nez v1, :cond_3

    invoke-virtual {v14}, Landroid/view/View;->getAccessibilityNodeProvider()Landroid/view/accessibility/AccessibilityNodeProvider;

    move-result-object v12

    if-eqz v12, :cond_6

    invoke-virtual {v12, v10}, Landroid/view/accessibility/AccessibilityNodeProvider;->findFocus(I)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v2

    :cond_6
    if-nez v2, :cond_3

    invoke-virtual {v14}, Landroid/view/View;->createAccessibilityNodeInfo()Landroid/view/accessibility/AccessibilityNodeInfo;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result-object v2

    goto :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private findViewByAccessibilityId(I)Landroid/view/View;
    .locals 4

    const/4 v3, 0x0

    iget-object v2, p0, Landroid/view/AccessibilityInteractionController;->mViewRootImpl:Landroid/view/ViewRootImpl;

    iget-object v1, v2, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    if-nez v1, :cond_0

    return-object v3

    :cond_0
    invoke-virtual {v1, p1}, Landroid/view/View;->findViewByAccessibilityId(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-direct {p0, v0}, Landroid/view/AccessibilityInteractionController;->isShown(Landroid/view/View;)Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_1

    return-object v3

    :cond_1
    return-object v0
.end method

.method private focusSearchUiThread(Landroid/os/Message;)V
    .locals 13

    iget v9, p1, Landroid/os/Message;->arg1:I

    iget v6, p1, Landroid/os/Message;->arg2:I

    iget-object v7, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v7, Lcom/android/internal/os/SomeArgs;

    iget v8, v7, Lcom/android/internal/os/SomeArgs;->argi2:I

    iget v3, v7, Lcom/android/internal/os/SomeArgs;->argi3:I

    iget-object v2, v7, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v2, Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;

    iget-object v4, v7, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v4, Landroid/view/MagnificationSpec;

    iget-object v5, v7, Lcom/android/internal/os/SomeArgs;->arg3:Ljava/lang/Object;

    check-cast v5, Landroid/graphics/Region;

    invoke-virtual {v7}, Lcom/android/internal/os/SomeArgs;->recycle()V

    const/4 v1, 0x0

    :try_start_0
    iget-object v0, p0, Landroid/view/AccessibilityInteractionController;->mViewRootImpl:Landroid/view/ViewRootImpl;

    iget-object v0, v0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/view/AccessibilityInteractionController;->mViewRootImpl:Landroid/view/ViewRootImpl;

    iget-object v0, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_1

    :cond_0
    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Landroid/view/AccessibilityInteractionController;->updateInfoForViewportAndReturnFindNodeResult(Landroid/view/accessibility/AccessibilityNodeInfo;Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;ILandroid/view/MagnificationSpec;Landroid/graphics/Region;)V

    return-void

    :cond_1
    :try_start_1
    iget-object v0, p0, Landroid/view/AccessibilityInteractionController;->mViewRootImpl:Landroid/view/ViewRootImpl;

    iget-object v0, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iput v9, v0, Landroid/view/View$AttachInfo;->mAccessibilityFetchFlags:I

    const/4 v11, 0x0

    const v0, 0x7ffffffe

    if-eq v6, v0, :cond_3

    invoke-direct {p0, v6}, Landroid/view/AccessibilityInteractionController;->findViewByAccessibilityId(I)Landroid/view/View;

    move-result-object v11

    :goto_0
    if-eqz v11, :cond_2

    invoke-direct {p0, v11}, Landroid/view/AccessibilityInteractionController;->isShown(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {v11, v8}, Landroid/view/View;->focusSearch(I)Landroid/view/View;

    move-result-object v10

    if-eqz v10, :cond_2

    invoke-virtual {v10}, Landroid/view/View;->createAccessibilityNodeInfo()Landroid/view/accessibility/AccessibilityNodeInfo;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v1

    :cond_2
    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Landroid/view/AccessibilityInteractionController;->updateInfoForViewportAndReturnFindNodeResult(Landroid/view/accessibility/AccessibilityNodeInfo;Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;ILandroid/view/MagnificationSpec;Landroid/graphics/Region;)V

    return-void

    :cond_3
    :try_start_2
    iget-object v0, p0, Landroid/view/AccessibilityInteractionController;->mViewRootImpl:Landroid/view/ViewRootImpl;

    iget-object v11, v0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object v12, v0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Landroid/view/AccessibilityInteractionController;->updateInfoForViewportAndReturnFindNodeResult(Landroid/view/accessibility/AccessibilityNodeInfo;Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;ILandroid/view/MagnificationSpec;Landroid/graphics/Region;)V

    throw v12
.end method

.method private handleClickableSpanActionUiThread(Landroid/view/View;ILandroid/os/Bundle;)Z
    .locals 6

    const/4 v5, 0x0

    const-string/jumbo v4, "android.view.accessibility.action.ACTION_ARGUMENT_ACCESSIBLE_CLICKABLE_SPAN"

    invoke-virtual {p3, v4}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    instance-of v4, v3, Landroid/text/style/AccessibilityClickableSpan;

    if-nez v4, :cond_0

    return v5

    :cond_0
    const/4 v1, 0x0

    invoke-virtual {p1}, Landroid/view/View;->getAccessibilityNodeProvider()Landroid/view/accessibility/AccessibilityNodeProvider;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-virtual {v2, p2}, Landroid/view/accessibility/AccessibilityNodeProvider;->createAccessibilityNodeInfo(I)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v1

    :cond_1
    :goto_0
    if-nez v1, :cond_3

    return v5

    :cond_2
    const/4 v4, -0x1

    if-ne p2, v4, :cond_1

    invoke-virtual {p1}, Landroid/view/View;->createAccessibilityNodeInfo()Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v1

    goto :goto_0

    :cond_3
    check-cast v3, Landroid/text/style/AccessibilityClickableSpan;

    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->getOriginalText()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/text/style/AccessibilityClickableSpan;->findClickableSpan(Ljava/lang/CharSequence;)Landroid/text/style/ClickableSpan;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {v0, p1}, Landroid/text/style/ClickableSpan;->onClick(Landroid/view/View;)V

    const/4 v4, 0x1

    return v4

    :cond_4
    return v5
.end method

.method private isShown(Landroid/view/View;)Z
    .locals 2

    const/4 v0, 0x0

    iget-object v1, p1, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    if-eqz v1, :cond_0

    iget-object v1, p1, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget v1, v1, Landroid/view/View$AttachInfo;->mWindowVisibility:I

    if-nez v1, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->isShown()Z

    move-result v0

    :cond_0
    return v0
.end method

.method private performAccessibilityActionUiThread(Landroid/os/Message;)V
    .locals 16

    move-object/from16 v0, p1

    iget v6, v0, Landroid/os/Message;->arg1:I

    move-object/from16 v0, p1

    iget v1, v0, Landroid/os/Message;->arg2:I

    move-object/from16 v0, p1

    iget-object v3, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Lcom/android/internal/os/SomeArgs;

    iget v12, v3, Lcom/android/internal/os/SomeArgs;->argi1:I

    iget v2, v3, Lcom/android/internal/os/SomeArgs;->argi2:I

    iget v7, v3, Lcom/android/internal/os/SomeArgs;->argi3:I

    iget-object v5, v3, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v5, Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;

    iget-object v4, v3, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v4, Landroid/os/Bundle;

    invoke-virtual {v3}, Lcom/android/internal/os/SomeArgs;->recycle()V

    const/4 v10, 0x0

    :try_start_0
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/view/AccessibilityInteractionController;->mViewRootImpl:Landroid/view/ViewRootImpl;

    iget-object v13, v13, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    if-eqz v13, :cond_0

    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/view/AccessibilityInteractionController;->mViewRootImpl:Landroid/view/ViewRootImpl;

    iget-object v13, v13, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v13, :cond_1

    :cond_0
    :try_start_1
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/view/AccessibilityInteractionController;->mViewRootImpl:Landroid/view/ViewRootImpl;

    iget-object v13, v13, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    const/4 v14, 0x0

    iput v14, v13, Landroid/view/View$AttachInfo;->mAccessibilityFetchFlags:I

    invoke-interface {v5, v10, v7}, Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;->setPerformAccessibilityActionResult(ZI)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_2

    :goto_0
    return-void

    :cond_1
    :try_start_2
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/view/AccessibilityInteractionController;->mViewRootImpl:Landroid/view/ViewRootImpl;

    iget-boolean v13, v13, Landroid/view/ViewRootImpl;->mStopped:Z

    if-nez v13, :cond_0

    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/view/AccessibilityInteractionController;->mViewRootImpl:Landroid/view/ViewRootImpl;

    iget-boolean v13, v13, Landroid/view/ViewRootImpl;->mPausedForTransition:Z

    if-nez v13, :cond_0

    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/view/AccessibilityInteractionController;->mViewRootImpl:Landroid/view/ViewRootImpl;

    iget-object v13, v13, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iput v6, v13, Landroid/view/View$AttachInfo;->mAccessibilityFetchFlags:I

    const/4 v11, 0x0

    const v13, 0x7ffffffe

    if-eq v1, v13, :cond_3

    move-object/from16 v0, p0

    invoke-direct {v0, v1}, Landroid/view/AccessibilityInteractionController;->findViewByAccessibilityId(I)Landroid/view/View;

    move-result-object v11

    :goto_1
    if-eqz v11, :cond_2

    move-object/from16 v0, p0

    invoke-direct {v0, v11}, Landroid/view/AccessibilityInteractionController;->isShown(Landroid/view/View;)Z

    move-result v13

    if-eqz v13, :cond_2

    const v13, 0x10201a4

    if-ne v2, v13, :cond_4

    move-object/from16 v0, p0

    invoke-direct {v0, v11, v12, v4}, Landroid/view/AccessibilityInteractionController;->handleClickableSpanActionUiThread(Landroid/view/View;ILandroid/os/Bundle;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v10

    :cond_2
    :goto_2
    :try_start_3
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/view/AccessibilityInteractionController;->mViewRootImpl:Landroid/view/ViewRootImpl;

    iget-object v13, v13, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    const/4 v14, 0x0

    iput v14, v13, Landroid/view/View$AttachInfo;->mAccessibilityFetchFlags:I

    invoke-interface {v5, v10, v7}, Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;->setPerformAccessibilityActionResult(ZI)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_1

    :goto_3
    return-void

    :cond_3
    :try_start_4
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/view/AccessibilityInteractionController;->mViewRootImpl:Landroid/view/ViewRootImpl;

    iget-object v11, v13, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    goto :goto_1

    :cond_4
    invoke-virtual {v11}, Landroid/view/View;->getAccessibilityNodeProvider()Landroid/view/accessibility/AccessibilityNodeProvider;

    move-result-object v8

    if-eqz v8, :cond_5

    invoke-virtual {v8, v12, v2, v4}, Landroid/view/accessibility/AccessibilityNodeProvider;->performAction(IILandroid/os/Bundle;)Z

    move-result v10

    goto :goto_2

    :cond_5
    const/4 v13, -0x1

    if-ne v12, v13, :cond_2

    invoke-virtual {v11, v2, v4}, Landroid/view/View;->performAccessibilityAction(ILandroid/os/Bundle;)Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-result v10

    goto :goto_2

    :catchall_0
    move-exception v13

    :try_start_5
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/view/AccessibilityInteractionController;->mViewRootImpl:Landroid/view/ViewRootImpl;

    iget-object v14, v14, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    const/4 v15, 0x0

    iput v15, v14, Landroid/view/View$AttachInfo;->mAccessibilityFetchFlags:I

    invoke-interface {v5, v10, v7}, Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;->setPerformAccessibilityActionResult(ZI)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_0

    :goto_4
    throw v13

    :catch_0
    move-exception v9

    goto :goto_4

    :catch_1
    move-exception v9

    goto :goto_3

    :catch_2
    move-exception v9

    goto :goto_0
.end method

.method private recycleMagnificationSpecAndRegionIfNeeded(Landroid/view/MagnificationSpec;Landroid/graphics/Region;)V
    .locals 2

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    if-eq v0, v1, :cond_1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/view/MagnificationSpec;->recycle()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Landroid/graphics/Region;->recycle()V

    goto :goto_0
.end method

.method private scheduleMessage(Landroid/os/Message;IJ)V
    .locals 3

    iget v0, p0, Landroid/view/AccessibilityInteractionController;->mMyProcessId:I

    if-ne p2, v0, :cond_0

    iget-wide v0, p0, Landroid/view/AccessibilityInteractionController;->mMyLooperThreadId:J

    cmp-long v0, p3, v0

    if-nez v0, :cond_0

    invoke-static {p3, p4}, Landroid/view/accessibility/AccessibilityInteractionClient;->getInstanceForThread(J)Landroid/view/accessibility/AccessibilityInteractionClient;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/accessibility/AccessibilityInteractionClient;->setSameThreadMessage(Landroid/os/Message;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Landroid/view/AccessibilityInteractionController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method private shouldApplyAppScaleAndMagnificationSpec(FLandroid/view/MagnificationSpec;)Z
    .locals 1

    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v0, p1, v0

    if-nez v0, :cond_0

    if-eqz p2, :cond_1

    invoke-virtual {p2}, Landroid/view/MagnificationSpec;->isNop()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private updateInfoForViewportAndReturnFindNodeResult(Landroid/view/accessibility/AccessibilityNodeInfo;Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;ILandroid/view/MagnificationSpec;Landroid/graphics/Region;)V
    .locals 3

    :try_start_0
    iget-object v1, p0, Landroid/view/AccessibilityInteractionController;->mViewRootImpl:Landroid/view/ViewRootImpl;

    iget-object v1, v1, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    const/4 v2, 0x0

    iput v2, v1, Landroid/view/View$AttachInfo;->mAccessibilityFetchFlags:I

    invoke-direct {p0, p1, p4}, Landroid/view/AccessibilityInteractionController;->applyAppScaleAndMagnificationSpecIfNeeded(Landroid/view/accessibility/AccessibilityNodeInfo;Landroid/view/MagnificationSpec;)V

    invoke-direct {p0, p1, p5}, Landroid/view/AccessibilityInteractionController;->adjustIsVisibleToUserIfNeeded(Landroid/view/accessibility/AccessibilityNodeInfo;Landroid/graphics/Region;)V

    invoke-interface {p2, p1, p3}, Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;->setFindAccessibilityNodeInfoResult(Landroid/view/accessibility/AccessibilityNodeInfo;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-direct {p0, p4, p5}, Landroid/view/AccessibilityInteractionController;->recycleMagnificationSpecAndRegionIfNeeded(Landroid/view/MagnificationSpec;Landroid/graphics/Region;)V

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-direct {p0, p4, p5}, Landroid/view/AccessibilityInteractionController;->recycleMagnificationSpecAndRegionIfNeeded(Landroid/view/MagnificationSpec;Landroid/graphics/Region;)V

    goto :goto_0

    :catchall_0
    move-exception v1

    invoke-direct {p0, p4, p5}, Landroid/view/AccessibilityInteractionController;->recycleMagnificationSpecAndRegionIfNeeded(Landroid/view/MagnificationSpec;Landroid/graphics/Region;)V

    throw v1
.end method

.method private updateInfosForViewportAndReturnFindNodeResult(Ljava/util/List;Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;ILandroid/view/MagnificationSpec;Landroid/graphics/Region;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/view/accessibility/AccessibilityNodeInfo;",
            ">;",
            "Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;",
            "I",
            "Landroid/view/MagnificationSpec;",
            "Landroid/graphics/Region;",
            ")V"
        }
    .end annotation

    :try_start_0
    iget-object v1, p0, Landroid/view/AccessibilityInteractionController;->mViewRootImpl:Landroid/view/ViewRootImpl;

    iget-object v1, v1, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    const/4 v2, 0x0

    iput v2, v1, Landroid/view/View$AttachInfo;->mAccessibilityFetchFlags:I

    invoke-direct {p0, p1, p4}, Landroid/view/AccessibilityInteractionController;->applyAppScaleAndMagnificationSpecIfNeeded(Ljava/util/List;Landroid/view/MagnificationSpec;)V

    invoke-direct {p0, p1, p5}, Landroid/view/AccessibilityInteractionController;->adjustIsVisibleToUserIfNeeded(Ljava/util/List;Landroid/graphics/Region;)V

    invoke-interface {p2, p1, p3}, Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;->setFindAccessibilityNodeInfosResult(Ljava/util/List;I)V

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->clear()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    invoke-direct {p0, p4, p5}, Landroid/view/AccessibilityInteractionController;->recycleMagnificationSpecAndRegionIfNeeded(Landroid/view/MagnificationSpec;Landroid/graphics/Region;)V

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-direct {p0, p4, p5}, Landroid/view/AccessibilityInteractionController;->recycleMagnificationSpecAndRegionIfNeeded(Landroid/view/MagnificationSpec;Landroid/graphics/Region;)V

    goto :goto_0

    :catchall_0
    move-exception v1

    invoke-direct {p0, p4, p5}, Landroid/view/AccessibilityInteractionController;->recycleMagnificationSpecAndRegionIfNeeded(Landroid/view/MagnificationSpec;Landroid/graphics/Region;)V

    throw v1
.end method


# virtual methods
.method public findAccessibilityNodeInfoByAccessibilityIdClientThread(JLandroid/graphics/Region;ILandroid/view/accessibility/IAccessibilityInteractionConnectionCallback;IIJLandroid/view/MagnificationSpec;Landroid/os/Bundle;)V
    .locals 3

    iget-object v2, p0, Landroid/view/AccessibilityInteractionController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v1

    const/4 v2, 0x2

    iput v2, v1, Landroid/os/Message;->what:I

    iput p6, v1, Landroid/os/Message;->arg1:I

    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    move-result-object v0

    invoke-static {p1, p2}, Landroid/view/accessibility/AccessibilityNodeInfo;->getAccessibilityViewId(J)I

    move-result v2

    iput v2, v0, Lcom/android/internal/os/SomeArgs;->argi1:I

    invoke-static {p1, p2}, Landroid/view/accessibility/AccessibilityNodeInfo;->getVirtualDescendantId(J)I

    move-result v2

    iput v2, v0, Lcom/android/internal/os/SomeArgs;->argi2:I

    iput p4, v0, Lcom/android/internal/os/SomeArgs;->argi3:I

    iput-object p5, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    iput-object p10, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    iput-object p3, v0, Lcom/android/internal/os/SomeArgs;->arg3:Ljava/lang/Object;

    iput-object p11, v0, Lcom/android/internal/os/SomeArgs;->arg4:Ljava/lang/Object;

    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-direct {p0, v1, p7, p8, p9}, Landroid/view/AccessibilityInteractionController;->scheduleMessage(Landroid/os/Message;IJ)V

    return-void
.end method

.method public findAccessibilityNodeInfosByTextClientThread(JLjava/lang/String;Landroid/graphics/Region;ILandroid/view/accessibility/IAccessibilityInteractionConnectionCallback;IIJLandroid/view/MagnificationSpec;)V
    .locals 3

    iget-object v2, p0, Landroid/view/AccessibilityInteractionController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v1

    const/4 v2, 0x4

    iput v2, v1, Landroid/os/Message;->what:I

    iput p7, v1, Landroid/os/Message;->arg1:I

    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    move-result-object v0

    iput-object p3, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    iput-object p6, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    iput-object p11, v0, Lcom/android/internal/os/SomeArgs;->arg3:Ljava/lang/Object;

    invoke-static {p1, p2}, Landroid/view/accessibility/AccessibilityNodeInfo;->getAccessibilityViewId(J)I

    move-result v2

    iput v2, v0, Lcom/android/internal/os/SomeArgs;->argi1:I

    invoke-static {p1, p2}, Landroid/view/accessibility/AccessibilityNodeInfo;->getVirtualDescendantId(J)I

    move-result v2

    iput v2, v0, Lcom/android/internal/os/SomeArgs;->argi2:I

    iput p5, v0, Lcom/android/internal/os/SomeArgs;->argi3:I

    iput-object p4, v0, Lcom/android/internal/os/SomeArgs;->arg4:Ljava/lang/Object;

    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-direct {p0, v1, p8, p9, p10}, Landroid/view/AccessibilityInteractionController;->scheduleMessage(Landroid/os/Message;IJ)V

    return-void
.end method

.method public findAccessibilityNodeInfosByViewIdClientThread(JLjava/lang/String;Landroid/graphics/Region;ILandroid/view/accessibility/IAccessibilityInteractionConnectionCallback;IIJLandroid/view/MagnificationSpec;)V
    .locals 3

    iget-object v2, p0, Landroid/view/AccessibilityInteractionController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v1

    const/4 v2, 0x3

    iput v2, v1, Landroid/os/Message;->what:I

    iput p7, v1, Landroid/os/Message;->arg1:I

    invoke-static {p1, p2}, Landroid/view/accessibility/AccessibilityNodeInfo;->getAccessibilityViewId(J)I

    move-result v2

    iput v2, v1, Landroid/os/Message;->arg2:I

    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    move-result-object v0

    iput p5, v0, Lcom/android/internal/os/SomeArgs;->argi1:I

    iput-object p6, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    iput-object p11, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    iput-object p3, v0, Lcom/android/internal/os/SomeArgs;->arg3:Ljava/lang/Object;

    iput-object p4, v0, Lcom/android/internal/os/SomeArgs;->arg4:Ljava/lang/Object;

    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-direct {p0, v1, p8, p9, p10}, Landroid/view/AccessibilityInteractionController;->scheduleMessage(Landroid/os/Message;IJ)V

    return-void
.end method

.method public findFocusClientThread(JILandroid/graphics/Region;ILandroid/view/accessibility/IAccessibilityInteractionConnectionCallback;IIJLandroid/view/MagnificationSpec;)V
    .locals 3

    iget-object v2, p0, Landroid/view/AccessibilityInteractionController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v1

    const/4 v2, 0x5

    iput v2, v1, Landroid/os/Message;->what:I

    iput p7, v1, Landroid/os/Message;->arg1:I

    iput p3, v1, Landroid/os/Message;->arg2:I

    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    move-result-object v0

    iput p5, v0, Lcom/android/internal/os/SomeArgs;->argi1:I

    invoke-static {p1, p2}, Landroid/view/accessibility/AccessibilityNodeInfo;->getAccessibilityViewId(J)I

    move-result v2

    iput v2, v0, Lcom/android/internal/os/SomeArgs;->argi2:I

    invoke-static {p1, p2}, Landroid/view/accessibility/AccessibilityNodeInfo;->getVirtualDescendantId(J)I

    move-result v2

    iput v2, v0, Lcom/android/internal/os/SomeArgs;->argi3:I

    iput-object p6, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    iput-object p11, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    iput-object p4, v0, Lcom/android/internal/os/SomeArgs;->arg3:Ljava/lang/Object;

    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-direct {p0, v1, p8, p9, p10}, Landroid/view/AccessibilityInteractionController;->scheduleMessage(Landroid/os/Message;IJ)V

    return-void
.end method

.method public focusSearchClientThread(JILandroid/graphics/Region;ILandroid/view/accessibility/IAccessibilityInteractionConnectionCallback;IIJLandroid/view/MagnificationSpec;)V
    .locals 3

    iget-object v2, p0, Landroid/view/AccessibilityInteractionController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v1

    const/4 v2, 0x6

    iput v2, v1, Landroid/os/Message;->what:I

    iput p7, v1, Landroid/os/Message;->arg1:I

    invoke-static {p1, p2}, Landroid/view/accessibility/AccessibilityNodeInfo;->getAccessibilityViewId(J)I

    move-result v2

    iput v2, v1, Landroid/os/Message;->arg2:I

    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    move-result-object v0

    iput p3, v0, Lcom/android/internal/os/SomeArgs;->argi2:I

    iput p5, v0, Lcom/android/internal/os/SomeArgs;->argi3:I

    iput-object p6, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    iput-object p11, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    iput-object p4, v0, Lcom/android/internal/os/SomeArgs;->arg3:Ljava/lang/Object;

    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-direct {p0, v1, p8, p9, p10}, Landroid/view/AccessibilityInteractionController;->scheduleMessage(Landroid/os/Message;IJ)V

    return-void
.end method

.method public getFragmentBoundsOnTopActivityByAccessibilityIdClientThread(ILandroid/view/accessibility/IAccessibilityInteractionConnectionCallback;IJ)V
    .locals 4

    iget-object v2, p0, Landroid/view/AccessibilityInteractionController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v1

    const/4 v2, 0x7

    iput v2, v1, Landroid/os/Message;->what:I

    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    move-result-object v0

    iput p1, v0, Lcom/android/internal/os/SomeArgs;->argi3:I

    iput-object p2, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-direct {p0, v1, p3, p4, p5}, Landroid/view/AccessibilityInteractionController;->scheduleMessage(Landroid/os/Message;IJ)V

    return-void
.end method

.method public getFragmentBoundsOnTopActivityByAccessibilityIdUiThread(Landroid/os/Message;)V
    .locals 8

    invoke-static {}, Landroid/app/ActivityThread;->currentActivityThread()Landroid/app/ActivityThread;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/ActivityThread;->getTopActivityInstance()Landroid/app/Activity;

    move-result-object v6

    const/4 v4, 0x0

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/os/SomeArgs;

    iget-object v1, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v1, Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;

    iget v2, v0, Lcom/android/internal/os/SomeArgs;->argi3:I

    invoke-virtual {v0}, Lcom/android/internal/os/SomeArgs;->recycle()V

    if-eqz v6, :cond_0

    :try_start_0
    invoke-virtual {v6}, Landroid/app/Activity;->hasWindowFocus()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-virtual {v6}, Landroid/app/Activity;->getFragmentBoundsOnTopActivity()[Landroid/graphics/Rect;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v4

    :cond_0
    :try_start_1
    invoke-interface {v1, v4, v2}, Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;->setFragmentBoundsOnTopActivityResult([Landroid/graphics/Rect;I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v3

    goto :goto_0

    :catchall_0
    move-exception v7

    :try_start_2
    invoke-interface {v1, v4, v2}, Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;->setFragmentBoundsOnTopActivityResult([Landroid/graphics/Rect;I)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1

    :goto_1
    throw v7

    :catch_1
    move-exception v3

    goto :goto_1
.end method

.method public isTopActivityCoveredByAccessibilityIdClientThread(ILandroid/view/accessibility/IAccessibilityInteractionConnectionCallback;IJ)V
    .locals 4

    iget-object v2, p0, Landroid/view/AccessibilityInteractionController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v1

    const/16 v2, 0x8

    iput v2, v1, Landroid/os/Message;->what:I

    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    move-result-object v0

    iput p1, v0, Lcom/android/internal/os/SomeArgs;->argi3:I

    iput-object p2, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-direct {p0, v1, p3, p4, p5}, Landroid/view/AccessibilityInteractionController;->scheduleMessage(Landroid/os/Message;IJ)V

    return-void
.end method

.method public isTopActivityCoveredByAccessibilityIdUiThread(Landroid/os/Message;)V
    .locals 8

    invoke-static {}, Landroid/app/ActivityThread;->currentActivityThread()Landroid/app/ActivityThread;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/ActivityThread;->getTopActivityInstance()Landroid/app/Activity;

    move-result-object v6

    const/4 v3, 0x1

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/os/SomeArgs;

    iget-object v1, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v1, Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;

    iget v2, v0, Lcom/android/internal/os/SomeArgs;->argi3:I

    invoke-virtual {v0}, Lcom/android/internal/os/SomeArgs;->recycle()V

    if-eqz v6, :cond_0

    :try_start_0
    invoke-virtual {v6}, Landroid/app/Activity;->hasWindowFocus()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v7

    if-eqz v7, :cond_0

    const/4 v3, 0x0

    :cond_0
    :try_start_1
    invoke-interface {v1, v3, v2}, Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;->setIsTopActivityCoveredResult(ZI)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v4

    goto :goto_0

    :catchall_0
    move-exception v7

    :try_start_2
    invoke-interface {v1, v3, v2}, Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;->setIsTopActivityCoveredResult(ZI)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1

    :goto_1
    throw v7

    :catch_1
    move-exception v4

    goto :goto_1
.end method

.method public performAccessibilityActionClientThread(JILandroid/os/Bundle;ILandroid/view/accessibility/IAccessibilityInteractionConnectionCallback;IIJ)V
    .locals 3

    iget-object v2, p0, Landroid/view/AccessibilityInteractionController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v1

    const/4 v2, 0x1

    iput v2, v1, Landroid/os/Message;->what:I

    iput p7, v1, Landroid/os/Message;->arg1:I

    invoke-static {p1, p2}, Landroid/view/accessibility/AccessibilityNodeInfo;->getAccessibilityViewId(J)I

    move-result v2

    iput v2, v1, Landroid/os/Message;->arg2:I

    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    move-result-object v0

    invoke-static {p1, p2}, Landroid/view/accessibility/AccessibilityNodeInfo;->getVirtualDescendantId(J)I

    move-result v2

    iput v2, v0, Lcom/android/internal/os/SomeArgs;->argi1:I

    iput p3, v0, Lcom/android/internal/os/SomeArgs;->argi2:I

    iput p5, v0, Lcom/android/internal/os/SomeArgs;->argi3:I

    iput-object p6, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    iput-object p4, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-direct {p0, v1, p8, p9, p10}, Landroid/view/AccessibilityInteractionController;->scheduleMessage(Landroid/os/Message;IJ)V

    return-void
.end method
