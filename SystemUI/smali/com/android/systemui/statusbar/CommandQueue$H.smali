.class final Lcom/android/systemui/statusbar/CommandQueue$H;
.super Landroid/os/Handler;
.source "CommandQueue.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/CommandQueue;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "H"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/CommandQueue;


# direct methods
.method private constructor <init>(Lcom/android/systemui/statusbar/CommandQueue;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/CommandQueue$H;->this$0:Lcom/android/systemui/statusbar/CommandQueue;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/systemui/statusbar/CommandQueue;Lcom/android/systemui/statusbar/CommandQueue$H;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/CommandQueue$H;-><init>(Lcom/android/systemui/statusbar/CommandQueue;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 21

    move-object/from16 v0, p1

    iget v2, v0, Landroid/os/Message;->what:I

    const/high16 v3, -0x10000

    and-int v20, v2, v3

    sparse-switch v20, :sswitch_data_0

    :goto_0
    return-void

    :sswitch_0
    move-object/from16 v0, p1

    iget v2, v0, Landroid/os/Message;->arg1:I

    packed-switch v2, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v16, v0

    check-cast v16, Landroid/util/Pair;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/statusbar/CommandQueue$H;->this$0:Lcom/android/systemui/statusbar/CommandQueue;

    invoke-static {v2}, Lcom/android/systemui/statusbar/CommandQueue;->-get0(Lcom/android/systemui/statusbar/CommandQueue;)Lcom/android/systemui/statusbar/CommandQueue$Callbacks;

    move-result-object v4

    move-object/from16 v0, v16

    iget-object v2, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    move-object/from16 v0, v16

    iget-object v3, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v3, Lcom/android/internal/statusbar/StatusBarIcon;

    invoke-interface {v4, v2, v3}, Lcom/android/systemui/statusbar/CommandQueue$Callbacks;->setIcon(Ljava/lang/String;Lcom/android/internal/statusbar/StatusBarIcon;)V

    goto :goto_0

    :pswitch_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/statusbar/CommandQueue$H;->this$0:Lcom/android/systemui/statusbar/CommandQueue;

    invoke-static {v2}, Lcom/android/systemui/statusbar/CommandQueue;->-get0(Lcom/android/systemui/statusbar/CommandQueue;)Lcom/android/systemui/statusbar/CommandQueue$Callbacks;

    move-result-object v3

    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    invoke-interface {v3, v2}, Lcom/android/systemui/statusbar/CommandQueue$Callbacks;->removeIcon(Ljava/lang/String;)V

    goto :goto_0

    :sswitch_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/statusbar/CommandQueue$H;->this$0:Lcom/android/systemui/statusbar/CommandQueue;

    invoke-static {v2}, Lcom/android/systemui/statusbar/CommandQueue;->-get0(Lcom/android/systemui/statusbar/CommandQueue;)Lcom/android/systemui/statusbar/CommandQueue$Callbacks;

    move-result-object v2

    move-object/from16 v0, p1

    iget v3, v0, Landroid/os/Message;->arg1:I

    move-object/from16 v0, p1

    iget v4, v0, Landroid/os/Message;->arg2:I

    const/4 v5, 0x1

    invoke-interface {v2, v3, v4, v5}, Lcom/android/systemui/statusbar/CommandQueue$Callbacks;->disable(IIZ)V

    goto :goto_0

    :sswitch_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/statusbar/CommandQueue$H;->this$0:Lcom/android/systemui/statusbar/CommandQueue;

    invoke-static {v2}, Lcom/android/systemui/statusbar/CommandQueue;->-get0(Lcom/android/systemui/statusbar/CommandQueue;)Lcom/android/systemui/statusbar/CommandQueue$Callbacks;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/systemui/statusbar/CommandQueue$Callbacks;->animateExpandNotificationsPanel()V

    goto :goto_0

    :sswitch_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/statusbar/CommandQueue$H;->this$0:Lcom/android/systemui/statusbar/CommandQueue;

    invoke-static {v2}, Lcom/android/systemui/statusbar/CommandQueue;->-get0(Lcom/android/systemui/statusbar/CommandQueue;)Lcom/android/systemui/statusbar/CommandQueue$Callbacks;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Lcom/android/systemui/statusbar/CommandQueue$Callbacks;->animateCollapsePanels(I)V

    goto :goto_0

    :sswitch_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/statusbar/CommandQueue$H;->this$0:Lcom/android/systemui/statusbar/CommandQueue;

    invoke-static {v2}, Lcom/android/systemui/statusbar/CommandQueue;->-get0(Lcom/android/systemui/statusbar/CommandQueue;)Lcom/android/systemui/statusbar/CommandQueue$Callbacks;

    move-result-object v3

    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    invoke-interface {v3, v2}, Lcom/android/systemui/statusbar/CommandQueue$Callbacks;->animateExpandSettingsPanel(Ljava/lang/String;)V

    goto :goto_0

    :sswitch_5
    move-object/from16 v0, p1

    iget-object v9, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v9, Lcom/android/internal/os/SomeArgs;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/statusbar/CommandQueue$H;->this$0:Lcom/android/systemui/statusbar/CommandQueue;

    invoke-static {v2}, Lcom/android/systemui/statusbar/CommandQueue;->-get0(Lcom/android/systemui/statusbar/CommandQueue;)Lcom/android/systemui/statusbar/CommandQueue$Callbacks;

    move-result-object v2

    iget v3, v9, Lcom/android/internal/os/SomeArgs;->argi1:I

    iget v4, v9, Lcom/android/internal/os/SomeArgs;->argi2:I

    iget v5, v9, Lcom/android/internal/os/SomeArgs;->argi3:I

    iget v6, v9, Lcom/android/internal/os/SomeArgs;->argi4:I

    iget-object v7, v9, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v7, Landroid/graphics/Rect;

    iget-object v8, v9, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v8, Landroid/graphics/Rect;

    invoke-interface/range {v2 .. v8}, Lcom/android/systemui/statusbar/CommandQueue$Callbacks;->setSystemUiVisibility(IIIILandroid/graphics/Rect;Landroid/graphics/Rect;)V

    invoke-virtual {v9}, Lcom/android/internal/os/SomeArgs;->recycle()V

    goto/16 :goto_0

    :sswitch_6
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/statusbar/CommandQueue$H;->this$0:Lcom/android/systemui/statusbar/CommandQueue;

    invoke-static {v2}, Lcom/android/systemui/statusbar/CommandQueue;->-get0(Lcom/android/systemui/statusbar/CommandQueue;)Lcom/android/systemui/statusbar/CommandQueue$Callbacks;

    move-result-object v3

    move-object/from16 v0, p1

    iget v2, v0, Landroid/os/Message;->arg1:I

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    :goto_1
    invoke-interface {v3, v2}, Lcom/android/systemui/statusbar/CommandQueue$Callbacks;->topAppWindowChanged(Z)V

    goto/16 :goto_0

    :cond_0
    const/4 v2, 0x0

    goto :goto_1

    :sswitch_7
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/statusbar/CommandQueue$H;->this$0:Lcom/android/systemui/statusbar/CommandQueue;

    invoke-static {v2}, Lcom/android/systemui/statusbar/CommandQueue;->-get0(Lcom/android/systemui/statusbar/CommandQueue;)Lcom/android/systemui/statusbar/CommandQueue$Callbacks;

    move-result-object v3

    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/os/IBinder;

    move-object/from16 v0, p1

    iget v4, v0, Landroid/os/Message;->arg1:I

    move-object/from16 v0, p1

    iget v5, v0, Landroid/os/Message;->arg2:I

    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v6

    const-string/jumbo v7, "showImeSwitcherKey"

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v6

    invoke-interface {v3, v2, v4, v5, v6}, Lcom/android/systemui/statusbar/CommandQueue$Callbacks;->setImeWindowStatus(Landroid/os/IBinder;IIZ)V

    goto/16 :goto_0

    :sswitch_8
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/statusbar/CommandQueue$H;->this$0:Lcom/android/systemui/statusbar/CommandQueue;

    invoke-static {v2}, Lcom/android/systemui/statusbar/CommandQueue;->-get0(Lcom/android/systemui/statusbar/CommandQueue;)Lcom/android/systemui/statusbar/CommandQueue$Callbacks;

    move-result-object v4

    move-object/from16 v0, p1

    iget v2, v0, Landroid/os/Message;->arg1:I

    if-eqz v2, :cond_1

    const/4 v2, 0x1

    :goto_2
    move-object/from16 v0, p1

    iget v3, v0, Landroid/os/Message;->arg2:I

    if-eqz v3, :cond_2

    const/4 v3, 0x1

    :goto_3
    invoke-interface {v4, v2, v3}, Lcom/android/systemui/statusbar/CommandQueue$Callbacks;->showRecentApps(ZZ)V

    goto/16 :goto_0

    :cond_1
    const/4 v2, 0x0

    goto :goto_2

    :cond_2
    const/4 v3, 0x0

    goto :goto_3

    :sswitch_9
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/statusbar/CommandQueue$H;->this$0:Lcom/android/systemui/statusbar/CommandQueue;

    invoke-static {v2}, Lcom/android/systemui/statusbar/CommandQueue;->-get0(Lcom/android/systemui/statusbar/CommandQueue;)Lcom/android/systemui/statusbar/CommandQueue$Callbacks;

    move-result-object v4

    move-object/from16 v0, p1

    iget v2, v0, Landroid/os/Message;->arg1:I

    if-eqz v2, :cond_3

    const/4 v2, 0x1

    :goto_4
    move-object/from16 v0, p1

    iget v3, v0, Landroid/os/Message;->arg2:I

    if-eqz v3, :cond_4

    const/4 v3, 0x1

    :goto_5
    invoke-interface {v4, v2, v3}, Lcom/android/systemui/statusbar/CommandQueue$Callbacks;->hideRecentApps(ZZ)V

    goto/16 :goto_0

    :cond_3
    const/4 v2, 0x0

    goto :goto_4

    :cond_4
    const/4 v3, 0x0

    goto :goto_5

    :sswitch_a
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/statusbar/CommandQueue$H;->this$0:Lcom/android/systemui/statusbar/CommandQueue;

    invoke-static {v2}, Lcom/android/systemui/statusbar/CommandQueue;->-get0(Lcom/android/systemui/statusbar/CommandQueue;)Lcom/android/systemui/statusbar/CommandQueue$Callbacks;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/systemui/statusbar/CommandQueue$Callbacks;->toggleRecentApps()V

    goto/16 :goto_0

    :sswitch_b
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/statusbar/CommandQueue$H;->this$0:Lcom/android/systemui/statusbar/CommandQueue;

    invoke-static {v2}, Lcom/android/systemui/statusbar/CommandQueue;->-get0(Lcom/android/systemui/statusbar/CommandQueue;)Lcom/android/systemui/statusbar/CommandQueue$Callbacks;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/systemui/statusbar/CommandQueue$Callbacks;->preloadRecentApps()V

    goto/16 :goto_0

    :sswitch_c
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/statusbar/CommandQueue$H;->this$0:Lcom/android/systemui/statusbar/CommandQueue;

    invoke-static {v2}, Lcom/android/systemui/statusbar/CommandQueue;->-get0(Lcom/android/systemui/statusbar/CommandQueue;)Lcom/android/systemui/statusbar/CommandQueue$Callbacks;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/systemui/statusbar/CommandQueue$Callbacks;->cancelPreloadRecentApps()V

    goto/16 :goto_0

    :sswitch_d
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/statusbar/CommandQueue$H;->this$0:Lcom/android/systemui/statusbar/CommandQueue;

    invoke-static {v2}, Lcom/android/systemui/statusbar/CommandQueue;->-get0(Lcom/android/systemui/statusbar/CommandQueue;)Lcom/android/systemui/statusbar/CommandQueue$Callbacks;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/systemui/statusbar/CommandQueue$Callbacks;->dismissKeyboardShortcutsMenu()V

    goto/16 :goto_0

    :sswitch_e
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/statusbar/CommandQueue$H;->this$0:Lcom/android/systemui/statusbar/CommandQueue;

    invoke-static {v2}, Lcom/android/systemui/statusbar/CommandQueue;->-get0(Lcom/android/systemui/statusbar/CommandQueue;)Lcom/android/systemui/statusbar/CommandQueue$Callbacks;

    move-result-object v2

    move-object/from16 v0, p1

    iget v3, v0, Landroid/os/Message;->arg1:I

    invoke-interface {v2, v3}, Lcom/android/systemui/statusbar/CommandQueue$Callbacks;->toggleKeyboardShortcutsMenu(I)V

    goto/16 :goto_0

    :sswitch_f
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/statusbar/CommandQueue$H;->this$0:Lcom/android/systemui/statusbar/CommandQueue;

    invoke-static {v2}, Lcom/android/systemui/statusbar/CommandQueue;->-get0(Lcom/android/systemui/statusbar/CommandQueue;)Lcom/android/systemui/statusbar/CommandQueue$Callbacks;

    move-result-object v2

    move-object/from16 v0, p1

    iget v3, v0, Landroid/os/Message;->arg1:I

    move-object/from16 v0, p1

    iget v4, v0, Landroid/os/Message;->arg2:I

    invoke-interface {v2, v3, v4}, Lcom/android/systemui/statusbar/CommandQueue$Callbacks;->setWindowState(II)V

    goto/16 :goto_0

    :sswitch_10
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/statusbar/CommandQueue$H;->this$0:Lcom/android/systemui/statusbar/CommandQueue;

    invoke-static {v2}, Lcom/android/systemui/statusbar/CommandQueue;->-get0(Lcom/android/systemui/statusbar/CommandQueue;)Lcom/android/systemui/statusbar/CommandQueue$Callbacks;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/systemui/statusbar/CommandQueue$Callbacks;->buzzBeepBlinked()V

    goto/16 :goto_0

    :sswitch_11
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/statusbar/CommandQueue$H;->this$0:Lcom/android/systemui/statusbar/CommandQueue;

    invoke-static {v2}, Lcom/android/systemui/statusbar/CommandQueue;->-get0(Lcom/android/systemui/statusbar/CommandQueue;)Lcom/android/systemui/statusbar/CommandQueue$Callbacks;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/systemui/statusbar/CommandQueue$Callbacks;->notificationLightOff()V

    goto/16 :goto_0

    :sswitch_12
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/statusbar/CommandQueue$H;->this$0:Lcom/android/systemui/statusbar/CommandQueue;

    invoke-static {v2}, Lcom/android/systemui/statusbar/CommandQueue;->-get0(Lcom/android/systemui/statusbar/CommandQueue;)Lcom/android/systemui/statusbar/CommandQueue$Callbacks;

    move-result-object v3

    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    move-object/from16 v0, p1

    iget v4, v0, Landroid/os/Message;->arg1:I

    move-object/from16 v0, p1

    iget v5, v0, Landroid/os/Message;->arg2:I

    invoke-interface {v3, v2, v4, v5}, Lcom/android/systemui/statusbar/CommandQueue$Callbacks;->notificationLightPulse(III)V

    goto/16 :goto_0

    :sswitch_13
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/statusbar/CommandQueue$H;->this$0:Lcom/android/systemui/statusbar/CommandQueue;

    invoke-static {v2}, Lcom/android/systemui/statusbar/CommandQueue;->-get0(Lcom/android/systemui/statusbar/CommandQueue;)Lcom/android/systemui/statusbar/CommandQueue$Callbacks;

    move-result-object v2

    move-object/from16 v0, p1

    iget v3, v0, Landroid/os/Message;->arg1:I

    invoke-interface {v2, v3}, Lcom/android/systemui/statusbar/CommandQueue$Callbacks;->showScreenPinningRequest(I)V

    goto/16 :goto_0

    :sswitch_14
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/statusbar/CommandQueue$H;->this$0:Lcom/android/systemui/statusbar/CommandQueue;

    invoke-static {v2}, Lcom/android/systemui/statusbar/CommandQueue;->-get0(Lcom/android/systemui/statusbar/CommandQueue;)Lcom/android/systemui/statusbar/CommandQueue$Callbacks;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/systemui/statusbar/CommandQueue$Callbacks;->appTransitionPending()V

    goto/16 :goto_0

    :sswitch_15
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/statusbar/CommandQueue$H;->this$0:Lcom/android/systemui/statusbar/CommandQueue;

    invoke-static {v2}, Lcom/android/systemui/statusbar/CommandQueue;->-get0(Lcom/android/systemui/statusbar/CommandQueue;)Lcom/android/systemui/statusbar/CommandQueue$Callbacks;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/systemui/statusbar/CommandQueue$Callbacks;->appTransitionCancelled()V

    goto/16 :goto_0

    :sswitch_16
    move-object/from16 v0, p1

    iget-object v13, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v13, Landroid/util/Pair;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/statusbar/CommandQueue$H;->this$0:Lcom/android/systemui/statusbar/CommandQueue;

    invoke-static {v2}, Lcom/android/systemui/statusbar/CommandQueue;->-get0(Lcom/android/systemui/statusbar/CommandQueue;)Lcom/android/systemui/statusbar/CommandQueue$Callbacks;

    move-result-object v3

    iget-object v2, v13, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    iget-object v2, v13, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-interface {v3, v4, v5, v6, v7}, Lcom/android/systemui/statusbar/CommandQueue$Callbacks;->appTransitionStarting(JJ)V

    goto/16 :goto_0

    :sswitch_17
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/statusbar/CommandQueue$H;->this$0:Lcom/android/systemui/statusbar/CommandQueue;

    invoke-static {v2}, Lcom/android/systemui/statusbar/CommandQueue;->-get0(Lcom/android/systemui/statusbar/CommandQueue;)Lcom/android/systemui/statusbar/CommandQueue$Callbacks;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/systemui/statusbar/CommandQueue$Callbacks;->appTransitionFinished()V

    goto/16 :goto_0

    :sswitch_18
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/statusbar/CommandQueue$H;->this$0:Lcom/android/systemui/statusbar/CommandQueue;

    invoke-static {v2}, Lcom/android/systemui/statusbar/CommandQueue;->-get0(Lcom/android/systemui/statusbar/CommandQueue;)Lcom/android/systemui/statusbar/CommandQueue$Callbacks;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/systemui/statusbar/CommandQueue$Callbacks;->showAssistDisclosure()V

    goto/16 :goto_0

    :sswitch_19
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/statusbar/CommandQueue$H;->this$0:Lcom/android/systemui/statusbar/CommandQueue;

    invoke-static {v2}, Lcom/android/systemui/statusbar/CommandQueue;->-get0(Lcom/android/systemui/statusbar/CommandQueue;)Lcom/android/systemui/statusbar/CommandQueue$Callbacks;

    move-result-object v3

    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/os/Bundle;

    invoke-interface {v3, v2}, Lcom/android/systemui/statusbar/CommandQueue$Callbacks;->startAssist(Landroid/os/Bundle;)V

    goto/16 :goto_0

    :sswitch_1a
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/statusbar/CommandQueue$H;->this$0:Lcom/android/systemui/statusbar/CommandQueue;

    invoke-static {v2}, Lcom/android/systemui/statusbar/CommandQueue;->-get0(Lcom/android/systemui/statusbar/CommandQueue;)Lcom/android/systemui/statusbar/CommandQueue$Callbacks;

    move-result-object v2

    move-object/from16 v0, p1

    iget v3, v0, Landroid/os/Message;->arg1:I

    invoke-interface {v2, v3}, Lcom/android/systemui/statusbar/CommandQueue$Callbacks;->onCameraLaunchGestureDetected(I)V

    goto/16 :goto_0

    :sswitch_1b
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/statusbar/CommandQueue$H;->this$0:Lcom/android/systemui/statusbar/CommandQueue;

    invoke-static {v2}, Lcom/android/systemui/statusbar/CommandQueue;->-get0(Lcom/android/systemui/statusbar/CommandQueue;)Lcom/android/systemui/statusbar/CommandQueue$Callbacks;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/systemui/statusbar/CommandQueue$Callbacks;->showTvPictureInPictureMenu()V

    goto/16 :goto_0

    :sswitch_1c
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/statusbar/CommandQueue$H;->this$0:Lcom/android/systemui/statusbar/CommandQueue;

    invoke-static {v2}, Lcom/android/systemui/statusbar/CommandQueue;->-get0(Lcom/android/systemui/statusbar/CommandQueue;)Lcom/android/systemui/statusbar/CommandQueue$Callbacks;

    move-result-object v3

    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/content/ComponentName;

    invoke-interface {v3, v2}, Lcom/android/systemui/statusbar/CommandQueue$Callbacks;->addQsTile(Landroid/content/ComponentName;)V

    goto/16 :goto_0

    :sswitch_1d
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/statusbar/CommandQueue$H;->this$0:Lcom/android/systemui/statusbar/CommandQueue;

    invoke-static {v2}, Lcom/android/systemui/statusbar/CommandQueue;->-get0(Lcom/android/systemui/statusbar/CommandQueue;)Lcom/android/systemui/statusbar/CommandQueue$Callbacks;

    move-result-object v3

    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/content/ComponentName;

    invoke-interface {v3, v2}, Lcom/android/systemui/statusbar/CommandQueue$Callbacks;->remQsTile(Landroid/content/ComponentName;)V

    goto/16 :goto_0

    :sswitch_1e
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/statusbar/CommandQueue$H;->this$0:Lcom/android/systemui/statusbar/CommandQueue;

    invoke-static {v2}, Lcom/android/systemui/statusbar/CommandQueue;->-get0(Lcom/android/systemui/statusbar/CommandQueue;)Lcom/android/systemui/statusbar/CommandQueue$Callbacks;

    move-result-object v3

    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/content/ComponentName;

    invoke-interface {v3, v2}, Lcom/android/systemui/statusbar/CommandQueue$Callbacks;->clickTile(Landroid/content/ComponentName;)V

    goto/16 :goto_0

    :sswitch_1f
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/statusbar/CommandQueue$H;->this$0:Lcom/android/systemui/statusbar/CommandQueue;

    invoke-static {v2}, Lcom/android/systemui/statusbar/CommandQueue;->-get0(Lcom/android/systemui/statusbar/CommandQueue;)Lcom/android/systemui/statusbar/CommandQueue$Callbacks;

    move-result-object v3

    move-object/from16 v0, p1

    iget v2, v0, Landroid/os/Message;->arg1:I

    const/4 v4, 0x1

    if-ne v2, v4, :cond_5

    const/4 v2, 0x1

    :goto_6
    invoke-interface {v3, v2}, Lcom/android/systemui/statusbar/CommandQueue$Callbacks;->toggleSplitScreen(Z)V

    goto/16 :goto_0

    :cond_5
    const/4 v2, 0x0

    goto :goto_6

    :sswitch_20
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/statusbar/CommandQueue$H;->this$0:Lcom/android/systemui/statusbar/CommandQueue;

    invoke-static {v2}, Lcom/android/systemui/statusbar/CommandQueue;->-get0(Lcom/android/systemui/statusbar/CommandQueue;)Lcom/android/systemui/statusbar/CommandQueue$Callbacks;

    move-result-object v4

    move-object/from16 v0, p1

    iget v2, v0, Landroid/os/Message;->arg1:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_6

    const/4 v2, 0x1

    :goto_7
    move-object/from16 v0, p1

    iget v3, v0, Landroid/os/Message;->arg2:I

    const/4 v5, 0x1

    if-ne v3, v5, :cond_7

    const/4 v3, 0x1

    :goto_8
    invoke-interface {v4, v2, v3}, Lcom/android/systemui/statusbar/CommandQueue$Callbacks;->setKnoxDesktopTaskBar(ZZ)V

    goto/16 :goto_0

    :cond_6
    const/4 v2, 0x0

    goto :goto_7

    :cond_7
    const/4 v3, 0x0

    goto :goto_8

    :sswitch_21
    move-object/from16 v0, p1

    iget-object v10, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v10, Landroid/os/Bundle;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/statusbar/CommandQueue$H;->this$0:Lcom/android/systemui/statusbar/CommandQueue;

    invoke-static {v2}, Lcom/android/systemui/statusbar/CommandQueue;->-get0(Lcom/android/systemui/statusbar/CommandQueue;)Lcom/android/systemui/statusbar/CommandQueue$Callbacks;

    move-result-object v2

    move-object/from16 v0, p1

    iget v4, v0, Landroid/os/Message;->arg1:I

    move-object/from16 v0, p1

    iget v5, v0, Landroid/os/Message;->arg2:I

    const-string/jumbo v3, "StackId"

    invoke-virtual {v10, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v6

    const-string/jumbo v3, "ComponentName"

    invoke-virtual {v10, v3}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v7

    check-cast v7, Landroid/content/ComponentName;

    const-string/jumbo v3, "CallingPkg"

    invoke-virtual {v10, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const/4 v3, 0x0

    invoke-interface/range {v2 .. v8}, Lcom/android/systemui/statusbar/CommandQueue$Callbacks;->updateKnoxDesktopTaskBar(IIIILandroid/content/ComponentName;Ljava/lang/String;)V

    goto/16 :goto_0

    :sswitch_22
    move-object/from16 v0, p1

    iget-object v11, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v11, Landroid/os/Bundle;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/statusbar/CommandQueue$H;->this$0:Lcom/android/systemui/statusbar/CommandQueue;

    invoke-static {v2}, Lcom/android/systemui/statusbar/CommandQueue;->-get0(Lcom/android/systemui/statusbar/CommandQueue;)Lcom/android/systemui/statusbar/CommandQueue$Callbacks;

    move-result-object v2

    move-object/from16 v0, p1

    iget v4, v0, Landroid/os/Message;->arg1:I

    move-object/from16 v0, p1

    iget v5, v0, Landroid/os/Message;->arg2:I

    const-string/jumbo v3, "StackId"

    invoke-virtual {v11, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v6

    const-string/jumbo v3, "ComponentName"

    invoke-virtual {v11, v3}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v7

    check-cast v7, Landroid/content/ComponentName;

    const-string/jumbo v3, "CallingPkg"

    invoke-virtual {v11, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const/4 v3, 0x1

    invoke-interface/range {v2 .. v8}, Lcom/android/systemui/statusbar/CommandQueue$Callbacks;->updateKnoxDesktopTaskBar(IIIILandroid/content/ComponentName;Ljava/lang/String;)V

    goto/16 :goto_0

    :sswitch_23
    move-object/from16 v0, p1

    iget-object v12, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v12, Landroid/os/Bundle;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/statusbar/CommandQueue$H;->this$0:Lcom/android/systemui/statusbar/CommandQueue;

    invoke-static {v2}, Lcom/android/systemui/statusbar/CommandQueue;->-get0(Lcom/android/systemui/statusbar/CommandQueue;)Lcom/android/systemui/statusbar/CommandQueue$Callbacks;

    move-result-object v2

    move-object/from16 v0, p1

    iget v4, v0, Landroid/os/Message;->arg1:I

    move-object/from16 v0, p1

    iget v5, v0, Landroid/os/Message;->arg2:I

    const-string/jumbo v3, "StackId"

    invoke-virtual {v12, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v6

    const-string/jumbo v3, "ComponentName"

    invoke-virtual {v12, v3}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v7

    check-cast v7, Landroid/content/ComponentName;

    const-string/jumbo v3, "CallingPkg"

    invoke-virtual {v12, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const/4 v3, 0x2

    invoke-interface/range {v2 .. v8}, Lcom/android/systemui/statusbar/CommandQueue$Callbacks;->updateKnoxDesktopTaskBar(IIIILandroid/content/ComponentName;Ljava/lang/String;)V

    goto/16 :goto_0

    :sswitch_24
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/statusbar/CommandQueue$H;->this$0:Lcom/android/systemui/statusbar/CommandQueue;

    invoke-static {v2}, Lcom/android/systemui/statusbar/CommandQueue;->-get0(Lcom/android/systemui/statusbar/CommandQueue;)Lcom/android/systemui/statusbar/CommandQueue$Callbacks;

    move-result-object v3

    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/view/KeyEvent;

    invoke-interface {v3, v2}, Lcom/android/systemui/statusbar/CommandQueue$Callbacks;->sendKeyEventToKnoxDesktopTaskbar(Landroid/view/KeyEvent;)V

    goto/16 :goto_0

    :sswitch_25
    move-object/from16 v0, p1

    iget-object v14, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v14, Lcom/android/internal/os/SomeArgs;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/statusbar/CommandQueue$H;->this$0:Lcom/android/systemui/statusbar/CommandQueue;

    invoke-static {v2}, Lcom/android/systemui/statusbar/CommandQueue;->-get0(Lcom/android/systemui/statusbar/CommandQueue;)Lcom/android/systemui/statusbar/CommandQueue$Callbacks;

    move-result-object v2

    iget v3, v14, Lcom/android/internal/os/SomeArgs;->argi1:I

    iget v4, v14, Lcom/android/internal/os/SomeArgs;->argi2:I

    iget v5, v14, Lcom/android/internal/os/SomeArgs;->argi3:I

    invoke-interface {v2, v3, v4, v5}, Lcom/android/systemui/statusbar/CommandQueue$Callbacks;->onNavigationBarForceClicked(III)V

    invoke-virtual {v14}, Lcom/android/internal/os/SomeArgs;->recycle()V

    goto/16 :goto_0

    :sswitch_26
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v19, v0

    check-cast v19, Lcom/android/internal/os/SomeArgs;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/statusbar/CommandQueue$H;->this$0:Lcom/android/systemui/statusbar/CommandQueue;

    invoke-static {v2}, Lcom/android/systemui/statusbar/CommandQueue;->-get0(Lcom/android/systemui/statusbar/CommandQueue;)Lcom/android/systemui/statusbar/CommandQueue$Callbacks;

    move-result-object v4

    move-object/from16 v0, v19

    iget-object v2, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    move-object/from16 v0, v19

    iget-object v3, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v3, Landroid/widget/RemoteViews;

    move-object/from16 v0, v19

    iget v5, v0, Lcom/android/internal/os/SomeArgs;->argi1:I

    invoke-interface {v4, v2, v3, v5}, Lcom/android/systemui/statusbar/CommandQueue$Callbacks;->showNaviBarRemoteView(Ljava/lang/String;Landroid/widget/RemoteViews;I)V

    invoke-virtual/range {v19 .. v19}, Lcom/android/internal/os/SomeArgs;->recycle()V

    goto/16 :goto_0

    :sswitch_27
    move-object/from16 v0, p1

    iget-object v15, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v15, Lcom/android/internal/os/SomeArgs;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/statusbar/CommandQueue$H;->this$0:Lcom/android/systemui/statusbar/CommandQueue;

    invoke-static {v2}, Lcom/android/systemui/statusbar/CommandQueue;->-get0(Lcom/android/systemui/statusbar/CommandQueue;)Lcom/android/systemui/statusbar/CommandQueue$Callbacks;

    move-result-object v3

    iget-object v2, v15, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    iget v4, v15, Lcom/android/internal/os/SomeArgs;->argi1:I

    invoke-interface {v3, v2, v4}, Lcom/android/systemui/statusbar/CommandQueue$Callbacks;->hideNaviBarRemoteView(Ljava/lang/String;I)V

    invoke-virtual {v15}, Lcom/android/internal/os/SomeArgs;->recycle()V

    goto/16 :goto_0

    :sswitch_28
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/statusbar/CommandQueue$H;->this$0:Lcom/android/systemui/statusbar/CommandQueue;

    invoke-static {v2}, Lcom/android/systemui/statusbar/CommandQueue;->-get0(Lcom/android/systemui/statusbar/CommandQueue;)Lcom/android/systemui/statusbar/CommandQueue$Callbacks;

    move-result-object v2

    move-object/from16 v0, p1

    iget v3, v0, Landroid/os/Message;->arg1:I

    invoke-interface {v2, v3}, Lcom/android/systemui/statusbar/CommandQueue$Callbacks;->setNavigationBarIconColor(I)V

    goto/16 :goto_0

    :sswitch_29
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/statusbar/CommandQueue$H;->this$0:Lcom/android/systemui/statusbar/CommandQueue;

    invoke-static {v2}, Lcom/android/systemui/statusbar/CommandQueue;->-get0(Lcom/android/systemui/statusbar/CommandQueue;)Lcom/android/systemui/statusbar/CommandQueue$Callbacks;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/systemui/statusbar/CommandQueue$Callbacks;->showNavigationBarInFullscreen()V

    goto/16 :goto_0

    :sswitch_2a
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/statusbar/CommandQueue$H;->this$0:Lcom/android/systemui/statusbar/CommandQueue;

    invoke-static {v2}, Lcom/android/systemui/statusbar/CommandQueue;->-get0(Lcom/android/systemui/statusbar/CommandQueue;)Lcom/android/systemui/statusbar/CommandQueue$Callbacks;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/systemui/statusbar/CommandQueue$Callbacks;->toggleNotificationPanel()V

    goto/16 :goto_0

    :sswitch_2b
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/statusbar/CommandQueue$H;->this$0:Lcom/android/systemui/statusbar/CommandQueue;

    invoke-static {v2}, Lcom/android/systemui/statusbar/CommandQueue;->-get0(Lcom/android/systemui/statusbar/CommandQueue;)Lcom/android/systemui/statusbar/CommandQueue$Callbacks;

    move-result-object v2

    move-object/from16 v0, p1

    iget v3, v0, Landroid/os/Message;->arg1:I

    invoke-interface {v2, v3}, Lcom/android/systemui/statusbar/CommandQueue$Callbacks;->setIndicatorBgColor(I)V

    goto/16 :goto_0

    :sswitch_2c
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v18, v0

    check-cast v18, Landroid/service/notification/StatusBarNotification;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/statusbar/CommandQueue$H;->this$0:Lcom/android/systemui/statusbar/CommandQueue;

    invoke-static {v2}, Lcom/android/systemui/statusbar/CommandQueue;->-get0(Lcom/android/systemui/statusbar/CommandQueue;)Lcom/android/systemui/statusbar/CommandQueue$Callbacks;

    move-result-object v2

    move-object/from16 v0, v18

    invoke-interface {v2, v0}, Lcom/android/systemui/statusbar/CommandQueue$Callbacks;->animateExpandLockedShadePanel(Landroid/service/notification/StatusBarNotification;)V

    goto/16 :goto_0

    :sswitch_2d
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v17, v0

    check-cast v17, Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/statusbar/CommandQueue$H;->this$0:Lcom/android/systemui/statusbar/CommandQueue;

    invoke-static {v2}, Lcom/android/systemui/statusbar/CommandQueue;->-get0(Lcom/android/systemui/statusbar/CommandQueue;)Lcom/android/systemui/statusbar/CommandQueue$Callbacks;

    move-result-object v2

    move-object/from16 v0, v17

    invoke-interface {v2, v0}, Lcom/android/systemui/statusbar/CommandQueue$Callbacks;->showServiceBox(Ljava/lang/String;)V

    goto/16 :goto_0

    :sswitch_data_0
    .sparse-switch
        0x10000 -> :sswitch_0
        0x20000 -> :sswitch_1
        0x30000 -> :sswitch_2
        0x40000 -> :sswitch_3
        0x50000 -> :sswitch_4
        0x60000 -> :sswitch_5
        0x70000 -> :sswitch_6
        0x80000 -> :sswitch_7
        0x90000 -> :sswitch_a
        0xa0000 -> :sswitch_b
        0xb0000 -> :sswitch_c
        0xc0000 -> :sswitch_f
        0xd0000 -> :sswitch_8
        0xe0000 -> :sswitch_9
        0xf0000 -> :sswitch_10
        0x100000 -> :sswitch_11
        0x110000 -> :sswitch_12
        0x120000 -> :sswitch_13
        0x130000 -> :sswitch_14
        0x140000 -> :sswitch_15
        0x150000 -> :sswitch_16
        0x160000 -> :sswitch_18
        0x170000 -> :sswitch_19
        0x180000 -> :sswitch_1a
        0x190000 -> :sswitch_e
        0x1a0000 -> :sswitch_1b
        0x1b0000 -> :sswitch_1c
        0x1c0000 -> :sswitch_1d
        0x1d0000 -> :sswitch_1e
        0x1e0000 -> :sswitch_1f
        0x1f0000 -> :sswitch_17
        0x200000 -> :sswitch_d
        0x220000 -> :sswitch_2a
        0x230000 -> :sswitch_2b
        0x260000 -> :sswitch_20
        0x270000 -> :sswitch_21
        0x280000 -> :sswitch_22
        0x290000 -> :sswitch_23
        0x2b0000 -> :sswitch_24
        0x2c0000 -> :sswitch_2c
        0x2d0000 -> :sswitch_2d
        0x3e0000 -> :sswitch_25
        0x3f0000 -> :sswitch_28
        0x400000 -> :sswitch_29
        0x410000 -> :sswitch_26
        0x420000 -> :sswitch_27
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
