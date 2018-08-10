.class public Lcom/android/systemui/pip/phone/PipAccessibilityInteractionConnection;
.super Landroid/view/accessibility/IAccessibilityInteractionConnection$Stub;
.source "PipAccessibilityInteractionConnection.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/pip/phone/PipAccessibilityInteractionConnection$AccessibilityCallbacks;
    }
.end annotation


# instance fields
.field private mAccessibilityNodeInfoList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/view/accessibility/AccessibilityNodeInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mCallbacks:Lcom/android/systemui/pip/phone/PipAccessibilityInteractionConnection$AccessibilityCallbacks;

.field private mHandler:Landroid/os/Handler;

.field private mMotionHelper:Lcom/android/systemui/pip/phone/PipMotionHelper;

.field private mTmpBounds:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>(Lcom/android/systemui/pip/phone/PipMotionHelper;Lcom/android/systemui/pip/phone/PipAccessibilityInteractionConnection$AccessibilityCallbacks;Landroid/os/Handler;)V
    .locals 1

    invoke-direct {p0}, Landroid/view/accessibility/IAccessibilityInteractionConnection$Stub;-><init>()V

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/pip/phone/PipAccessibilityInteractionConnection;->mTmpBounds:Landroid/graphics/Rect;

    iput-object p3, p0, Lcom/android/systemui/pip/phone/PipAccessibilityInteractionConnection;->mHandler:Landroid/os/Handler;

    iput-object p1, p0, Lcom/android/systemui/pip/phone/PipAccessibilityInteractionConnection;->mMotionHelper:Lcom/android/systemui/pip/phone/PipMotionHelper;

    iput-object p2, p0, Lcom/android/systemui/pip/phone/PipAccessibilityInteractionConnection;->mCallbacks:Lcom/android/systemui/pip/phone/PipAccessibilityInteractionConnection$AccessibilityCallbacks;

    return-void
.end method

.method private getNodeList()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/view/accessibility/AccessibilityNodeInfo;",
            ">;"
        }
    .end annotation

    iget-object v1, p0, Lcom/android/systemui/pip/phone/PipAccessibilityInteractionConnection;->mAccessibilityNodeInfoList:Ljava/util/List;

    if-nez v1, :cond_0

    new-instance v1, Ljava/util/ArrayList;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v1, p0, Lcom/android/systemui/pip/phone/PipAccessibilityInteractionConnection;->mAccessibilityNodeInfoList:Ljava/util/List;

    :cond_0
    invoke-static {}, Lcom/android/systemui/pip/phone/PipAccessibilityInteractionConnection;->obtainRootAccessibilityNodeInfo()Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/pip/phone/PipAccessibilityInteractionConnection;->mAccessibilityNodeInfoList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    iget-object v1, p0, Lcom/android/systemui/pip/phone/PipAccessibilityInteractionConnection;->mAccessibilityNodeInfoList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/android/systemui/pip/phone/PipAccessibilityInteractionConnection;->mAccessibilityNodeInfoList:Ljava/util/List;

    return-object v1
.end method

.method public static obtainRootAccessibilityNodeInfo()Landroid/view/accessibility/AccessibilityNodeInfo;
    .locals 5

    const/4 v4, 0x1

    invoke-static {}, Landroid/view/accessibility/AccessibilityNodeInfo;->obtain()Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v0

    sget-wide v2, Landroid/view/accessibility/AccessibilityNodeInfo;->ROOT_NODE_ID:J

    const/4 v1, -0x3

    invoke-virtual {v0, v2, v3, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setSourceNodeId(JI)V

    sget-object v1, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->ACTION_CLICK:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    sget-object v1, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->ACTION_DISMISS:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    sget-object v1, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->ACTION_MOVE_WINDOW:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    sget-object v1, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->ACTION_EXPAND:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    invoke-virtual {v0, v4}, Landroid/view/accessibility/AccessibilityNodeInfo;->setImportantForAccessibility(Z)V

    invoke-virtual {v0, v4}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClickable(Z)V

    invoke-virtual {v0, v4}, Landroid/view/accessibility/AccessibilityNodeInfo;->setVisibleToUser(Z)V

    return-object v0
.end method


# virtual methods
.method public findAccessibilityNodeInfoByAccessibilityId(JLandroid/graphics/Region;ILandroid/view/accessibility/IAccessibilityInteractionConnectionCallback;IIJLandroid/view/MagnificationSpec;Landroid/os/Bundle;)V
    .locals 5

    :try_start_0
    sget-wide v2, Landroid/view/accessibility/AccessibilityNodeInfo;->ROOT_NODE_ID:J

    cmp-long v1, p1, v2

    if-nez v1, :cond_0

    invoke-direct {p0}, Lcom/android/systemui/pip/phone/PipAccessibilityInteractionConnection;->getNodeList()Ljava/util/List;

    move-result-object v1

    :goto_0
    invoke-interface {p5, v1, p4}, Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;->setFindAccessibilityNodeInfosResult(Ljava/util/List;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    return-void

    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_1
.end method

.method public findAccessibilityNodeInfosByText(JLjava/lang/String;Landroid/graphics/Region;ILandroid/view/accessibility/IAccessibilityInteractionConnectionCallback;IIJLandroid/view/MagnificationSpec;)V
    .locals 2

    const/4 v1, 0x0

    :try_start_0
    invoke-interface {p6, v1, p5}, Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;->setFindAccessibilityNodeInfoResult(Landroid/view/accessibility/AccessibilityNodeInfo;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public findAccessibilityNodeInfosByViewId(JLjava/lang/String;Landroid/graphics/Region;ILandroid/view/accessibility/IAccessibilityInteractionConnectionCallback;IIJLandroid/view/MagnificationSpec;)V
    .locals 2

    const/4 v1, 0x0

    :try_start_0
    invoke-interface {p6, v1, p5}, Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;->setFindAccessibilityNodeInfoResult(Landroid/view/accessibility/AccessibilityNodeInfo;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public findFocus(JILandroid/graphics/Region;ILandroid/view/accessibility/IAccessibilityInteractionConnectionCallback;IIJLandroid/view/MagnificationSpec;)V
    .locals 2

    const/4 v1, 0x0

    :try_start_0
    invoke-interface {p6, v1, p5}, Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;->setFindAccessibilityNodeInfoResult(Landroid/view/accessibility/AccessibilityNodeInfo;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public focusSearch(JILandroid/graphics/Region;ILandroid/view/accessibility/IAccessibilityInteractionConnectionCallback;IIJLandroid/view/MagnificationSpec;)V
    .locals 2

    const/4 v1, 0x0

    :try_start_0
    invoke-interface {p6, v1, p5}, Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;->setFindAccessibilityNodeInfoResult(Landroid/view/accessibility/AccessibilityNodeInfo;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public getFragmentBoundsOnTopActivityByAccessibilityId(ILandroid/view/accessibility/IAccessibilityInteractionConnectionCallback;IJ)V
    .locals 2

    const/4 v1, 0x0

    :try_start_0
    invoke-interface {p2, v1, p1}, Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;->setFragmentBoundsOnTopActivityResult([Landroid/graphics/Rect;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public isTopActivityCoveredByAccessibilityId(ILandroid/view/accessibility/IAccessibilityInteractionConnectionCallback;IJ)V
    .locals 2

    const/4 v1, 0x0

    :try_start_0
    invoke-interface {p2, v1, p1}, Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;->setIsTopActivityCoveredResult(ZI)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method synthetic lambda$-com_android_systemui_pip_phone_PipAccessibilityInteractionConnection_3319()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/pip/phone/PipAccessibilityInteractionConnection;->mCallbacks:Lcom/android/systemui/pip/phone/PipAccessibilityInteractionConnection$AccessibilityCallbacks;

    invoke-interface {v0}, Lcom/android/systemui/pip/phone/PipAccessibilityInteractionConnection$AccessibilityCallbacks;->onAccessibilityShowMenu()V

    return-void
.end method

.method public performAccessibilityAction(JILandroid/os/Bundle;ILandroid/view/accessibility/IAccessibilityInteractionConnectionCallback;IIJ)V
    .locals 9

    const/4 v4, 0x0

    sget-wide v6, Landroid/view/accessibility/AccessibilityNodeInfo;->ROOT_NODE_ID:J

    cmp-long v5, p1, v6

    if-nez v5, :cond_0

    sparse-switch p3, :sswitch_data_0

    :cond_0
    :goto_0
    :try_start_0
    invoke-interface {p6, v4, p5}, Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;->setPerformAccessibilityActionResult(ZI)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    return-void

    :sswitch_0
    iget-object v5, p0, Lcom/android/systemui/pip/phone/PipAccessibilityInteractionConnection;->mHandler:Landroid/os/Handler;

    new-instance v6, Lcom/android/systemui/pip/phone/-$Lambda$APURD3FkUsikZrmNkDGDCKl98Ds;

    invoke-direct {v6, p0}, Lcom/android/systemui/pip/phone/-$Lambda$APURD3FkUsikZrmNkDGDCKl98Ds;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v5, v6}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    const/4 v4, 0x1

    goto :goto_0

    :sswitch_1
    iget-object v5, p0, Lcom/android/systemui/pip/phone/PipAccessibilityInteractionConnection;->mMotionHelper:Lcom/android/systemui/pip/phone/PipMotionHelper;

    invoke-virtual {v5}, Lcom/android/systemui/pip/phone/PipMotionHelper;->dismissPip()V

    const/4 v4, 0x1

    goto :goto_0

    :sswitch_2
    const-string/jumbo v5, "ACTION_ARGUMENT_MOVE_WINDOW_X"

    invoke-virtual {p4, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    const-string/jumbo v5, "ACTION_ARGUMENT_MOVE_WINDOW_Y"

    invoke-virtual {p4, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iget-object v5, p0, Lcom/android/systemui/pip/phone/PipAccessibilityInteractionConnection;->mMotionHelper:Lcom/android/systemui/pip/phone/PipMotionHelper;

    invoke-virtual {v5}, Lcom/android/systemui/pip/phone/PipMotionHelper;->getBounds()Landroid/graphics/Rect;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    iget-object v5, p0, Lcom/android/systemui/pip/phone/PipAccessibilityInteractionConnection;->mTmpBounds:Landroid/graphics/Rect;

    invoke-virtual {v5, v0, v1}, Landroid/graphics/Rect;->offsetTo(II)V

    iget-object v5, p0, Lcom/android/systemui/pip/phone/PipAccessibilityInteractionConnection;->mMotionHelper:Lcom/android/systemui/pip/phone/PipMotionHelper;

    iget-object v6, p0, Lcom/android/systemui/pip/phone/PipAccessibilityInteractionConnection;->mTmpBounds:Landroid/graphics/Rect;

    invoke-virtual {v5, v6}, Lcom/android/systemui/pip/phone/PipMotionHelper;->movePip(Landroid/graphics/Rect;)V

    const/4 v4, 0x1

    goto :goto_0

    :sswitch_3
    iget-object v5, p0, Lcom/android/systemui/pip/phone/PipAccessibilityInteractionConnection;->mMotionHelper:Lcom/android/systemui/pip/phone/PipMotionHelper;

    invoke-virtual {v5}, Lcom/android/systemui/pip/phone/PipMotionHelper;->expandPip()V

    const/4 v4, 0x1

    goto :goto_0

    :catch_0
    move-exception v3

    goto :goto_1

    :sswitch_data_0
    .sparse-switch
        0x10 -> :sswitch_0
        0x40000 -> :sswitch_3
        0x100000 -> :sswitch_1
        0x1020042 -> :sswitch_2
    .end sparse-switch
.end method
