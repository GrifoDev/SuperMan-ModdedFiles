.class Lcom/android/systemui/stackdivider/Divider$MultiWindowEventListener;
.super Lcom/samsung/android/multiwindow/IMultiWindowEventListener$Stub;
.source "Divider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/stackdivider/Divider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MultiWindowEventListener"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/stackdivider/Divider$MultiWindowEventListener$-void_onMultiWindowDockedMinimizedChanged_boolean_minimized_boolean_dockHasActivity_android_content_ComponentName_cn_int_userId_LambdaImpl0;
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/stackdivider/Divider;


# direct methods
.method private constructor <init>(Lcom/android/systemui/stackdivider/Divider;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/stackdivider/Divider$MultiWindowEventListener;->this$0:Lcom/android/systemui/stackdivider/Divider;

    invoke-direct {p0}, Lcom/samsung/android/multiwindow/IMultiWindowEventListener$Stub;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/systemui/stackdivider/Divider;Lcom/android/systemui/stackdivider/Divider$MultiWindowEventListener;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/stackdivider/Divider$MultiWindowEventListener;-><init>(Lcom/android/systemui/stackdivider/Divider;)V

    return-void
.end method


# virtual methods
.method synthetic -com_android_systemui_stackdivider_Divider$MultiWindowEventListener_lambda$3(ZZLandroid/content/ComponentName;)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/stackdivider/Divider$MultiWindowEventListener;->this$0:Lcom/android/systemui/stackdivider/Divider;

    invoke-static {v0}, Lcom/android/systemui/stackdivider/Divider;->-get1(Lcom/android/systemui/stackdivider/Divider;)Lcom/android/systemui/stackdivider/DockedMinimizedNotificationController;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/systemui/stackdivider/DockedMinimizedNotificationController;->setDockedStackMinimized(ZZLandroid/content/ComponentName;)V

    return-void
.end method

.method public onMultiWindowAppTransitionFinished()V
    .locals 4

    const-wide/16 v2, 0x64

    iget-object v0, p0, Lcom/android/systemui/stackdivider/Divider$MultiWindowEventListener;->this$0:Lcom/android/systemui/stackdivider/Divider;

    invoke-static {v0}, Lcom/android/systemui/stackdivider/Divider;->-get11(Lcom/android/systemui/stackdivider/Divider;)Lcom/android/systemui/stackdivider/DividerView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/stackdivider/DividerView;->isMoving()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/stackdivider/Divider$MultiWindowEventListener;->this$0:Lcom/android/systemui/stackdivider/Divider;

    invoke-static {v0}, Lcom/android/systemui/stackdivider/Divider;->-get13(Lcom/android/systemui/stackdivider/Divider;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/stackdivider/Divider$MultiWindowEventListener;->this$0:Lcom/android/systemui/stackdivider/Divider;

    invoke-static {v0}, Lcom/android/systemui/stackdivider/Divider;->-get8(Lcom/android/systemui/stackdivider/Divider;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/stackdivider/Divider$MultiWindowEventListener;->this$0:Lcom/android/systemui/stackdivider/Divider;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/systemui/stackdivider/Divider;->-set7(Lcom/android/systemui/stackdivider/Divider;Z)Z

    iget-object v0, p0, Lcom/android/systemui/stackdivider/Divider$MultiWindowEventListener;->this$0:Lcom/android/systemui/stackdivider/Divider;

    invoke-static {v0}, Lcom/android/systemui/stackdivider/Divider;->-get3(Lcom/android/systemui/stackdivider/Divider;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/systemui/stackdivider/Divider$MultiWindowEventListener;->this$0:Lcom/android/systemui/stackdivider/Divider;

    invoke-static {v0}, Lcom/android/systemui/stackdivider/Divider;->-get11(Lcom/android/systemui/stackdivider/Divider;)Lcom/android/systemui/stackdivider/DividerView;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/stackdivider/Divider$MultiWindowEventListener$5;

    invoke-direct {v1, p0}, Lcom/android/systemui/stackdivider/Divider$MultiWindowEventListener$5;-><init>(Lcom/android/systemui/stackdivider/Divider$MultiWindowEventListener;)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/systemui/stackdivider/DividerView;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/android/systemui/stackdivider/Divider$MultiWindowEventListener;->this$0:Lcom/android/systemui/stackdivider/Divider;

    invoke-static {v0}, Lcom/android/systemui/stackdivider/Divider;->-get11(Lcom/android/systemui/stackdivider/Divider;)Lcom/android/systemui/stackdivider/DividerView;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/stackdivider/Divider$MultiWindowEventListener$7;

    invoke-direct {v1, p0}, Lcom/android/systemui/stackdivider/Divider$MultiWindowEventListener$7;-><init>(Lcom/android/systemui/stackdivider/Divider$MultiWindowEventListener;)V

    invoke-virtual {v0, v1}, Lcom/android/systemui/stackdivider/DividerView;->post(Ljava/lang/Runnable;)Z

    return-void

    :cond_2
    iget-object v0, p0, Lcom/android/systemui/stackdivider/Divider$MultiWindowEventListener;->this$0:Lcom/android/systemui/stackdivider/Divider;

    invoke-static {v0}, Lcom/android/systemui/stackdivider/Divider;->-get11(Lcom/android/systemui/stackdivider/Divider;)Lcom/android/systemui/stackdivider/DividerView;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/stackdivider/Divider$MultiWindowEventListener$6;

    invoke-direct {v1, p0}, Lcom/android/systemui/stackdivider/Divider$MultiWindowEventListener$6;-><init>(Lcom/android/systemui/stackdivider/Divider$MultiWindowEventListener;)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/systemui/stackdivider/DividerView;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method

.method public onMultiWindowDockedMinimizedChanged(ZZLandroid/content/ComponentName;I)V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/stackdivider/Divider$MultiWindowEventListener;->this$0:Lcom/android/systemui/stackdivider/Divider;

    iget-object v0, v0, Lcom/android/systemui/stackdivider/Divider;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getUserId()I

    move-result v0

    if-ne v0, p4, :cond_0

    iget-object v0, p0, Lcom/android/systemui/stackdivider/Divider$MultiWindowEventListener;->this$0:Lcom/android/systemui/stackdivider/Divider;

    invoke-static {v0}, Lcom/android/systemui/stackdivider/Divider;->-get11(Lcom/android/systemui/stackdivider/Divider;)Lcom/android/systemui/stackdivider/DividerView;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/stackdivider/Divider$MultiWindowEventListener$-void_onMultiWindowDockedMinimizedChanged_boolean_minimized_boolean_dockHasActivity_android_content_ComponentName_cn_int_userId_LambdaImpl0;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/android/systemui/stackdivider/Divider$MultiWindowEventListener$-void_onMultiWindowDockedMinimizedChanged_boolean_minimized_boolean_dockHasActivity_android_content_ComponentName_cn_int_userId_LambdaImpl0;-><init>(Lcom/android/systemui/stackdivider/Divider$MultiWindowEventListener;ZZLandroid/content/ComponentName;)V

    invoke-virtual {v0, v1}, Lcom/android/systemui/stackdivider/DividerView;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public onMultiWindowFocusChanged(Landroid/graphics/Rect;Landroid/graphics/Rect;IILjava/lang/String;Landroid/os/Bundle;)V
    .locals 11

    iget-object v7, p0, Lcom/android/systemui/stackdivider/Divider$MultiWindowEventListener;->this$0:Lcom/android/systemui/stackdivider/Divider;

    const/4 v8, 0x0

    invoke-static {v7, v8}, Lcom/android/systemui/stackdivider/Divider;->-set4(Lcom/android/systemui/stackdivider/Divider;Z)Z

    iget-object v7, p0, Lcom/android/systemui/stackdivider/Divider$MultiWindowEventListener;->this$0:Lcom/android/systemui/stackdivider/Divider;

    const/4 v8, 0x0

    invoke-static {v7, v8}, Lcom/android/systemui/stackdivider/Divider;->-set2(Lcom/android/systemui/stackdivider/Divider;Z)Z

    const/4 v2, 0x0

    const/4 v4, -0x1

    const/4 v3, -0x1

    new-instance v6, Landroid/graphics/Rect;

    invoke-direct {v6, p2}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    if-eqz p6, :cond_0

    const-string/jumbo v7, "isOppositeTaskRecents"

    move-object/from16 v0, p6

    invoke-virtual {v0, v7}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    const-string/jumbo v7, "mMinWidth"

    move-object/from16 v0, p6

    invoke-virtual {v0, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    const-string/jumbo v7, "mMinHeight"

    move-object/from16 v0, p6

    invoke-virtual {v0, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    :cond_0
    if-nez v2, :cond_7

    if-nez p3, :cond_1

    iget-object v7, p0, Lcom/android/systemui/stackdivider/Divider$MultiWindowEventListener;->this$0:Lcom/android/systemui/stackdivider/Divider;

    invoke-static {v7}, Lcom/android/systemui/stackdivider/Divider;->-get7(Lcom/android/systemui/stackdivider/Divider;)Z

    move-result v7

    if-eqz v7, :cond_7

    :cond_1
    :goto_0
    const-string/jumbo v7, "startedActivity"

    move-object/from16 v0, p5

    invoke-virtual {v0, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_2

    const/4 v7, 0x3

    if-ne p3, v7, :cond_2

    iget-object v7, p0, Lcom/android/systemui/stackdivider/Divider$MultiWindowEventListener;->this$0:Lcom/android/systemui/stackdivider/Divider;

    invoke-static {v7}, Lcom/android/systemui/stackdivider/Divider;->-get11(Lcom/android/systemui/stackdivider/Divider;)Lcom/android/systemui/stackdivider/DividerView;

    move-result-object v7

    invoke-virtual {v7, p3, v6}, Lcom/android/systemui/stackdivider/DividerView;->initTaskBounds(ILandroid/graphics/Rect;)V

    :cond_2
    const-string/jumbo v7, "startActivityFromRecents"

    move-object/from16 v0, p5

    invoke-virtual {v0, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_3

    const-string/jumbo v7, "moveTaskToStack"

    move-object/from16 v0, p5

    invoke-virtual {v0, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_4

    :cond_3
    iget-object v7, p0, Lcom/android/systemui/stackdivider/Divider$MultiWindowEventListener;->this$0:Lcom/android/systemui/stackdivider/Divider;

    invoke-static {v7, p1, v6, v4, v3}, Lcom/android/systemui/stackdivider/Divider;->-wrap1(Lcom/android/systemui/stackdivider/Divider;Landroid/graphics/Rect;Landroid/graphics/Rect;II)V

    iget-object v7, p0, Lcom/android/systemui/stackdivider/Divider$MultiWindowEventListener;->this$0:Lcom/android/systemui/stackdivider/Divider;

    invoke-static {v7}, Lcom/android/systemui/stackdivider/Divider;->-get11(Lcom/android/systemui/stackdivider/Divider;)Lcom/android/systemui/stackdivider/DividerView;

    move-result-object v7

    invoke-virtual {v7, p3, v6}, Lcom/android/systemui/stackdivider/DividerView;->initTaskBounds(ILandroid/graphics/Rect;)V

    :cond_4
    iget-object v7, p0, Lcom/android/systemui/stackdivider/Divider$MultiWindowEventListener;->this$0:Lcom/android/systemui/stackdivider/Divider;

    invoke-static {v7}, Lcom/android/systemui/stackdivider/Divider;->-get2(Lcom/android/systemui/stackdivider/Divider;)Z

    move-result v7

    if-eqz v7, :cond_6

    iget-object v7, p0, Lcom/android/systemui/stackdivider/Divider$MultiWindowEventListener;->this$0:Lcom/android/systemui/stackdivider/Divider;

    invoke-static {v7}, Lcom/android/systemui/stackdivider/Divider;->-get5(Lcom/android/systemui/stackdivider/Divider;)I

    move-result v7

    if-eq v7, p4, :cond_6

    const/4 v7, 0x3

    if-eq p3, v7, :cond_5

    const/4 v7, 0x1

    if-ne p3, v7, :cond_6

    :cond_5
    if-eqz v2, :cond_8

    :cond_6
    :goto_1
    iget-object v7, p0, Lcom/android/systemui/stackdivider/Divider$MultiWindowEventListener;->this$0:Lcom/android/systemui/stackdivider/Divider;

    invoke-static {v7, p3, p4}, Lcom/android/systemui/stackdivider/Divider;->-wrap3(Lcom/android/systemui/stackdivider/Divider;II)V

    return-void

    :cond_7
    iget-object v7, p0, Lcom/android/systemui/stackdivider/Divider$MultiWindowEventListener;->this$0:Lcom/android/systemui/stackdivider/Divider;

    invoke-static {v7}, Lcom/android/systemui/stackdivider/Divider;->-get11(Lcom/android/systemui/stackdivider/Divider;)Lcom/android/systemui/stackdivider/DividerView;

    move-result-object v7

    const/4 v8, 0x0

    const/4 v9, 0x1

    invoke-virtual {v7, v8, v9}, Lcom/android/systemui/stackdivider/DividerView;->setAutoResizingTarget(Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;I)V

    goto :goto_0

    :cond_8
    iget-object v7, p0, Lcom/android/systemui/stackdivider/Divider$MultiWindowEventListener;->this$0:Lcom/android/systemui/stackdivider/Divider;

    invoke-static {v7}, Lcom/android/systemui/stackdivider/Divider;->-get11(Lcom/android/systemui/stackdivider/Divider;)Lcom/android/systemui/stackdivider/DividerView;

    move-result-object v7

    sget v8, Lcom/samsung/android/bridge/multiwindow/MultiWindowManagerBridge;->MW_FLAG_SWAPPING:I

    invoke-virtual {v7, v8}, Lcom/android/systemui/stackdivider/DividerView;->checkDividerFlag(I)Z

    move-result v7

    if-nez v7, :cond_6

    iget-object v7, p0, Lcom/android/systemui/stackdivider/Divider$MultiWindowEventListener;->this$0:Lcom/android/systemui/stackdivider/Divider;

    invoke-static {v7}, Lcom/android/systemui/stackdivider/Divider;->-get11(Lcom/android/systemui/stackdivider/Divider;)Lcom/android/systemui/stackdivider/DividerView;

    move-result-object v7

    iget-boolean v7, v7, Lcom/android/systemui/stackdivider/DividerView;->mSnapModeRunning:Z

    if-nez v7, :cond_6

    iget-object v7, p0, Lcom/android/systemui/stackdivider/Divider$MultiWindowEventListener;->this$0:Lcom/android/systemui/stackdivider/Divider;

    invoke-static {v7}, Lcom/android/systemui/stackdivider/Divider;->-get11(Lcom/android/systemui/stackdivider/Divider;)Lcom/android/systemui/stackdivider/DividerView;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/systemui/stackdivider/DividerView;->isFlingAnimationRunning()Z

    move-result v7

    if-nez v7, :cond_6

    iget-object v7, p0, Lcom/android/systemui/stackdivider/Divider$MultiWindowEventListener;->this$0:Lcom/android/systemui/stackdivider/Divider;

    invoke-static {v7}, Lcom/android/systemui/stackdivider/Divider;->-get11(Lcom/android/systemui/stackdivider/Divider;)Lcom/android/systemui/stackdivider/DividerView;

    move-result-object v7

    invoke-virtual {v7, p3, v6}, Lcom/android/systemui/stackdivider/DividerView;->setOriginalTaskBounds(ILandroid/graphics/Rect;)V

    iget-object v8, p0, Lcom/android/systemui/stackdivider/Divider$MultiWindowEventListener;->this$0:Lcom/android/systemui/stackdivider/Divider;

    iget-object v7, p0, Lcom/android/systemui/stackdivider/Divider$MultiWindowEventListener;->this$0:Lcom/android/systemui/stackdivider/Divider;

    invoke-static {v7}, Lcom/android/systemui/stackdivider/Divider;->-get4(Lcom/android/systemui/stackdivider/Divider;)I

    move-result v7

    if-eqz v7, :cond_9

    iget-object v7, p0, Lcom/android/systemui/stackdivider/Divider$MultiWindowEventListener;->this$0:Lcom/android/systemui/stackdivider/Divider;

    invoke-static {v7}, Lcom/android/systemui/stackdivider/Divider;->-get4(Lcom/android/systemui/stackdivider/Divider;)I

    move-result v7

    if-ne v7, p3, :cond_a

    :cond_9
    const/4 v7, 0x1

    :goto_2
    invoke-static {v8, v7}, Lcom/android/systemui/stackdivider/Divider;->-set7(Lcom/android/systemui/stackdivider/Divider;Z)Z

    iget-object v7, p0, Lcom/android/systemui/stackdivider/Divider$MultiWindowEventListener;->this$0:Lcom/android/systemui/stackdivider/Divider;

    invoke-static {v7}, Lcom/android/systemui/stackdivider/Divider;->-get11(Lcom/android/systemui/stackdivider/Divider;)Lcom/android/systemui/stackdivider/DividerView;

    move-result-object v7

    invoke-virtual {v7, p1, v6}, Lcom/android/systemui/stackdivider/DividerView;->needToShowHiddenArea(Landroid/graphics/Rect;Landroid/graphics/Rect;)Z

    move-result v7

    if-eqz v7, :cond_e

    iget-object v7, p0, Lcom/android/systemui/stackdivider/Divider$MultiWindowEventListener;->this$0:Lcom/android/systemui/stackdivider/Divider;

    invoke-static {v7}, Lcom/android/systemui/stackdivider/Divider;->-get11(Lcom/android/systemui/stackdivider/Divider;)Lcom/android/systemui/stackdivider/DividerView;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/systemui/stackdivider/DividerView;->isHorizontalDivision()Z

    move-result v7

    if-eqz v7, :cond_b

    invoke-virtual {v6}, Landroid/graphics/Rect;->height()I

    move-result v7

    iget-object v8, p0, Lcom/android/systemui/stackdivider/Divider$MultiWindowEventListener;->this$0:Lcom/android/systemui/stackdivider/Divider;

    invoke-static {v8}, Lcom/android/systemui/stackdivider/Divider;->-get11(Lcom/android/systemui/stackdivider/Divider;)Lcom/android/systemui/stackdivider/DividerView;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/systemui/stackdivider/DividerView;->getSnapAlgorithm()Lcom/android/internal/policy/DividerSnapAlgorithm;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/internal/policy/DividerSnapAlgorithm;->getMinimalSizeResizableTask()I

    move-result v8

    if-le v7, v8, :cond_b

    :goto_3
    iget-object v7, p0, Lcom/android/systemui/stackdivider/Divider$MultiWindowEventListener;->this$0:Lcom/android/systemui/stackdivider/Divider;

    const/4 v8, 0x1

    invoke-static {v7, v8}, Lcom/android/systemui/stackdivider/Divider;->-set4(Lcom/android/systemui/stackdivider/Divider;Z)Z

    iget-object v7, p0, Lcom/android/systemui/stackdivider/Divider$MultiWindowEventListener;->this$0:Lcom/android/systemui/stackdivider/Divider;

    invoke-static {v7, p3}, Lcom/android/systemui/stackdivider/Divider;->-set5(Lcom/android/systemui/stackdivider/Divider;I)I

    iget-object v7, p0, Lcom/android/systemui/stackdivider/Divider$MultiWindowEventListener;->this$0:Lcom/android/systemui/stackdivider/Divider;

    invoke-static {v7}, Lcom/android/systemui/stackdivider/Divider;->-get10(Lcom/android/systemui/stackdivider/Divider;)Landroid/graphics/Rect;

    move-result-object v7

    invoke-virtual {v7, v6}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    iget-object v8, p0, Lcom/android/systemui/stackdivider/Divider$MultiWindowEventListener;->this$0:Lcom/android/systemui/stackdivider/Divider;

    iget-object v7, p0, Lcom/android/systemui/stackdivider/Divider$MultiWindowEventListener;->this$0:Lcom/android/systemui/stackdivider/Divider;

    invoke-static {v7}, Lcom/android/systemui/stackdivider/Divider;->-get11(Lcom/android/systemui/stackdivider/Divider;)Lcom/android/systemui/stackdivider/DividerView;

    move-result-object v7

    iget-object v9, p0, Lcom/android/systemui/stackdivider/Divider$MultiWindowEventListener;->this$0:Lcom/android/systemui/stackdivider/Divider;

    invoke-static {v9}, Lcom/android/systemui/stackdivider/Divider;->-get9(Lcom/android/systemui/stackdivider/Divider;)I

    move-result v9

    iget-object v10, p0, Lcom/android/systemui/stackdivider/Divider$MultiWindowEventListener;->this$0:Lcom/android/systemui/stackdivider/Divider;

    invoke-static {v10}, Lcom/android/systemui/stackdivider/Divider;->-get10(Lcom/android/systemui/stackdivider/Divider;)Landroid/graphics/Rect;

    move-result-object v10

    invoke-virtual {v7, v9, v10}, Lcom/android/systemui/stackdivider/DividerView;->hasSameAutoResizingTarget(ILandroid/graphics/Rect;)Z

    move-result v7

    if-eqz v7, :cond_c

    const/4 v7, 0x0

    :goto_4
    invoke-static {v8, v7}, Lcom/android/systemui/stackdivider/Divider;->-set2(Lcom/android/systemui/stackdivider/Divider;Z)Z

    iget-object v7, p0, Lcom/android/systemui/stackdivider/Divider$MultiWindowEventListener;->this$0:Lcom/android/systemui/stackdivider/Divider;

    invoke-static {v7}, Lcom/android/systemui/stackdivider/Divider;->-get13(Lcom/android/systemui/stackdivider/Divider;)Z

    move-result v7

    if-nez v7, :cond_6

    iget-object v7, p0, Lcom/android/systemui/stackdivider/Divider$MultiWindowEventListener;->this$0:Lcom/android/systemui/stackdivider/Divider;

    invoke-static {v7}, Lcom/android/systemui/stackdivider/Divider;->-get3(Lcom/android/systemui/stackdivider/Divider;)Z

    move-result v7

    if-eqz v7, :cond_d

    iget-object v7, p0, Lcom/android/systemui/stackdivider/Divider$MultiWindowEventListener;->this$0:Lcom/android/systemui/stackdivider/Divider;

    invoke-static {v7}, Lcom/android/systemui/stackdivider/Divider;->-get11(Lcom/android/systemui/stackdivider/Divider;)Lcom/android/systemui/stackdivider/DividerView;

    move-result-object v7

    new-instance v8, Lcom/android/systemui/stackdivider/Divider$MultiWindowEventListener$1;

    invoke-direct {v8, p0}, Lcom/android/systemui/stackdivider/Divider$MultiWindowEventListener$1;-><init>(Lcom/android/systemui/stackdivider/Divider$MultiWindowEventListener;)V

    invoke-virtual {v7, v8}, Lcom/android/systemui/stackdivider/DividerView;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_1

    :cond_a
    const/4 v7, 0x0

    goto/16 :goto_2

    :cond_b
    iget-object v7, p0, Lcom/android/systemui/stackdivider/Divider$MultiWindowEventListener;->this$0:Lcom/android/systemui/stackdivider/Divider;

    invoke-static {v7}, Lcom/android/systemui/stackdivider/Divider;->-get11(Lcom/android/systemui/stackdivider/Divider;)Lcom/android/systemui/stackdivider/DividerView;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/systemui/stackdivider/DividerView;->isHorizontalDivision()Z

    move-result v7

    if-nez v7, :cond_6

    invoke-virtual {v6}, Landroid/graphics/Rect;->width()I

    move-result v7

    iget-object v8, p0, Lcom/android/systemui/stackdivider/Divider$MultiWindowEventListener;->this$0:Lcom/android/systemui/stackdivider/Divider;

    invoke-static {v8}, Lcom/android/systemui/stackdivider/Divider;->-get11(Lcom/android/systemui/stackdivider/Divider;)Lcom/android/systemui/stackdivider/DividerView;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/systemui/stackdivider/DividerView;->getSnapAlgorithm()Lcom/android/internal/policy/DividerSnapAlgorithm;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/internal/policy/DividerSnapAlgorithm;->getMinimalSizeResizableTask()I

    move-result v8

    if-le v7, v8, :cond_6

    goto :goto_3

    :cond_c
    const/4 v7, 0x1

    goto :goto_4

    :cond_d
    iget-object v7, p0, Lcom/android/systemui/stackdivider/Divider$MultiWindowEventListener;->this$0:Lcom/android/systemui/stackdivider/Divider;

    invoke-static {v7}, Lcom/android/systemui/stackdivider/Divider;->-get11(Lcom/android/systemui/stackdivider/Divider;)Lcom/android/systemui/stackdivider/DividerView;

    move-result-object v7

    new-instance v8, Lcom/android/systemui/stackdivider/Divider$MultiWindowEventListener$2;

    invoke-direct {v8, p0}, Lcom/android/systemui/stackdivider/Divider$MultiWindowEventListener$2;-><init>(Lcom/android/systemui/stackdivider/Divider$MultiWindowEventListener;)V

    invoke-virtual {v7, v8}, Lcom/android/systemui/stackdivider/DividerView;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_1

    :cond_e
    iget-object v7, p0, Lcom/android/systemui/stackdivider/Divider$MultiWindowEventListener;->this$0:Lcom/android/systemui/stackdivider/Divider;

    invoke-static {v7}, Lcom/android/systemui/stackdivider/Divider;->-get11(Lcom/android/systemui/stackdivider/Divider;)Lcom/android/systemui/stackdivider/DividerView;

    move-result-object v7

    invoke-virtual {v7, p3, v6}, Lcom/android/systemui/stackdivider/DividerView;->areTasksOverlapping(ILandroid/graphics/Rect;)Z

    move-result v7

    if-eqz v7, :cond_6

    iget-object v7, p0, Lcom/android/systemui/stackdivider/Divider$MultiWindowEventListener;->this$0:Lcom/android/systemui/stackdivider/Divider;

    invoke-static {v7}, Lcom/android/systemui/stackdivider/Divider;->-get11(Lcom/android/systemui/stackdivider/Divider;)Lcom/android/systemui/stackdivider/DividerView;

    move-result-object v7

    invoke-virtual {v7, p3, v6}, Lcom/android/systemui/stackdivider/DividerView;->hasSameAutoResizingTarget(ILandroid/graphics/Rect;)Z

    move-result v7

    if-nez v7, :cond_6

    const/4 v7, 0x3

    if-ne p3, v7, :cond_10

    const/4 v5, 0x1

    :goto_5
    iget-object v7, p0, Lcom/android/systemui/stackdivider/Divider$MultiWindowEventListener;->this$0:Lcom/android/systemui/stackdivider/Divider;

    invoke-static {v7, p3, v6, v4, v3}, Lcom/android/systemui/stackdivider/Divider;->-wrap0(Lcom/android/systemui/stackdivider/Divider;ILandroid/graphics/Rect;II)Z

    move-result v1

    iget-object v7, p0, Lcom/android/systemui/stackdivider/Divider$MultiWindowEventListener;->this$0:Lcom/android/systemui/stackdivider/Divider;

    const/4 v8, 0x1

    invoke-static {v7, v8}, Lcom/android/systemui/stackdivider/Divider;->-set4(Lcom/android/systemui/stackdivider/Divider;Z)Z

    iget-object v7, p0, Lcom/android/systemui/stackdivider/Divider$MultiWindowEventListener;->this$0:Lcom/android/systemui/stackdivider/Divider;

    if-eqz v1, :cond_f

    move v5, p3

    :cond_f
    invoke-static {v7, v5}, Lcom/android/systemui/stackdivider/Divider;->-set5(Lcom/android/systemui/stackdivider/Divider;I)I

    iget-object v7, p0, Lcom/android/systemui/stackdivider/Divider$MultiWindowEventListener;->this$0:Lcom/android/systemui/stackdivider/Divider;

    invoke-static {v7}, Lcom/android/systemui/stackdivider/Divider;->-get10(Lcom/android/systemui/stackdivider/Divider;)Landroid/graphics/Rect;

    move-result-object v7

    invoke-virtual {v7, v6}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    iget-object v7, p0, Lcom/android/systemui/stackdivider/Divider$MultiWindowEventListener;->this$0:Lcom/android/systemui/stackdivider/Divider;

    invoke-static {v7, v1}, Lcom/android/systemui/stackdivider/Divider;->-set2(Lcom/android/systemui/stackdivider/Divider;Z)Z

    iget-object v7, p0, Lcom/android/systemui/stackdivider/Divider$MultiWindowEventListener;->this$0:Lcom/android/systemui/stackdivider/Divider;

    invoke-static {v7}, Lcom/android/systemui/stackdivider/Divider;->-get13(Lcom/android/systemui/stackdivider/Divider;)Z

    move-result v7

    if-nez v7, :cond_6

    iget-object v7, p0, Lcom/android/systemui/stackdivider/Divider$MultiWindowEventListener;->this$0:Lcom/android/systemui/stackdivider/Divider;

    invoke-static {v7}, Lcom/android/systemui/stackdivider/Divider;->-get3(Lcom/android/systemui/stackdivider/Divider;)Z

    move-result v7

    if-eqz v7, :cond_11

    iget-object v7, p0, Lcom/android/systemui/stackdivider/Divider$MultiWindowEventListener;->this$0:Lcom/android/systemui/stackdivider/Divider;

    invoke-static {v7}, Lcom/android/systemui/stackdivider/Divider;->-get11(Lcom/android/systemui/stackdivider/Divider;)Lcom/android/systemui/stackdivider/DividerView;

    move-result-object v7

    new-instance v8, Lcom/android/systemui/stackdivider/Divider$MultiWindowEventListener$3;

    invoke-direct {v8, p0}, Lcom/android/systemui/stackdivider/Divider$MultiWindowEventListener$3;-><init>(Lcom/android/systemui/stackdivider/Divider$MultiWindowEventListener;)V

    invoke-virtual {v7, v8}, Lcom/android/systemui/stackdivider/DividerView;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_1

    :cond_10
    const/4 v5, 0x3

    goto :goto_5

    :cond_11
    iget-object v7, p0, Lcom/android/systemui/stackdivider/Divider$MultiWindowEventListener;->this$0:Lcom/android/systemui/stackdivider/Divider;

    invoke-static {v7}, Lcom/android/systemui/stackdivider/Divider;->-get11(Lcom/android/systemui/stackdivider/Divider;)Lcom/android/systemui/stackdivider/DividerView;

    move-result-object v7

    new-instance v8, Lcom/android/systemui/stackdivider/Divider$MultiWindowEventListener$4;

    invoke-direct {v8, p0}, Lcom/android/systemui/stackdivider/Divider$MultiWindowEventListener$4;-><init>(Lcom/android/systemui/stackdivider/Divider$MultiWindowEventListener;)V

    invoke-virtual {v7, v8}, Lcom/android/systemui/stackdivider/DividerView;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_1
.end method

.method public onMultiWindowScreenFreezeAnimationFinished()V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/stackdivider/Divider$MultiWindowEventListener;->this$0:Lcom/android/systemui/stackdivider/Divider;

    invoke-static {v0}, Lcom/android/systemui/stackdivider/Divider;->-get11(Lcom/android/systemui/stackdivider/Divider;)Lcom/android/systemui/stackdivider/DividerView;

    move-result-object v0

    sget v1, Lcom/samsung/android/bridge/multiwindow/MultiWindowManagerBridge;->MW_FLAG_SWAPPING:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/stackdivider/DividerView;->setDividerFlag(IZ)V

    return-void
.end method

.method public onMultiWindowSettingChanged(Z)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/stackdivider/Divider$MultiWindowEventListener;->this$0:Lcom/android/systemui/stackdivider/Divider;

    invoke-static {v0}, Lcom/android/systemui/stackdivider/Divider;->-get11(Lcom/android/systemui/stackdivider/Divider;)Lcom/android/systemui/stackdivider/DividerView;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/systemui/stackdivider/DividerView;->onMultiWindowSettingChanged(Z)V

    return-void
.end method
