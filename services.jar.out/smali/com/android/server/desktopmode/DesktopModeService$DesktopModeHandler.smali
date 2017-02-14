.class final Lcom/android/server/desktopmode/DesktopModeService$DesktopModeHandler;
.super Landroid/os/Handler;
.source "DesktopModeService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/desktopmode/DesktopModeService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "DesktopModeHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/desktopmode/DesktopModeService;


# direct methods
.method private constructor <init>(Lcom/android/server/desktopmode/DesktopModeService;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/desktopmode/DesktopModeService$DesktopModeHandler;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/desktopmode/DesktopModeService;Lcom/android/server/desktopmode/DesktopModeService$DesktopModeHandler;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/desktopmode/DesktopModeService$DesktopModeHandler;-><init>(Lcom/android/server/desktopmode/DesktopModeService;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 10

    const/4 v7, 0x1

    const/4 v9, 0x0

    iget v6, p1, Landroid/os/Message;->what:I

    packed-switch v6, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    iget-object v6, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v6, Ljava/lang/Boolean;

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    iget-object v6, p0, Lcom/android/server/desktopmode/DesktopModeService$DesktopModeHandler;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

    invoke-static {v6}, Lcom/android/server/desktopmode/DesktopModeService;->-get8(Lcom/android/server/desktopmode/DesktopModeService;)Z

    move-result v6

    if-nez v6, :cond_0

    iget-object v6, p0, Lcom/android/server/desktopmode/DesktopModeService$DesktopModeHandler;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

    const/4 v7, 0x3

    invoke-virtual {v6, v7}, Lcom/android/server/desktopmode/DesktopModeService;->setDefaultDisplayPowerMode(I)V

    :cond_0
    iget-object v6, p0, Lcom/android/server/desktopmode/DesktopModeService$DesktopModeHandler;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

    invoke-static {v6, v2}, Lcom/android/server/desktopmode/DesktopModeService;->-wrap4(Lcom/android/server/desktopmode/DesktopModeService;Z)V

    goto :goto_0

    :pswitch_1
    iget v0, p1, Landroid/os/Message;->arg1:I

    iget-object v6, p0, Lcom/android/server/desktopmode/DesktopModeService$DesktopModeHandler;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

    invoke-static {v6, v0}, Lcom/android/server/desktopmode/DesktopModeService;->-wrap6(Lcom/android/server/desktopmode/DesktopModeService;I)V

    goto :goto_0

    :pswitch_2
    iget v5, p1, Landroid/os/Message;->arg1:I

    iget v1, p1, Landroid/os/Message;->arg2:I

    iget-object v6, p0, Lcom/android/server/desktopmode/DesktopModeService$DesktopModeHandler;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

    invoke-static {v6}, Lcom/android/server/desktopmode/DesktopModeService;->-get2(Lcom/android/server/desktopmode/DesktopModeService;)Landroid/content/Context;

    move-result-object v6

    iget-object v7, p0, Lcom/android/server/desktopmode/DesktopModeService$DesktopModeHandler;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

    invoke-static {v7}, Lcom/android/server/desktopmode/DesktopModeService;->-get2(Lcom/android/server/desktopmode/DesktopModeService;)Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/Toast;->show()V

    goto :goto_0

    :pswitch_3
    iget-object v6, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v6, Ljava/lang/Boolean;

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    invoke-static {}, Lcom/android/server/desktopmode/DesktopModeService;->-get0()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-static {}, Lcom/android/server/desktopmode/DesktopModeService;->-get1()Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Starting loading screen... mIsDesktopMode="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/server/desktopmode/DesktopModeService$DesktopModeHandler;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

    invoke-static {v8}, Lcom/android/server/desktopmode/DesktopModeService;->-get7(Lcom/android/server/desktopmode/DesktopModeService;)Z

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    iget-object v6, p0, Lcom/android/server/desktopmode/DesktopModeService$DesktopModeHandler;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

    invoke-static {v6}, Lcom/android/server/desktopmode/DesktopModeService;->-get10(Lcom/android/server/desktopmode/DesktopModeService;)Lcom/samsung/android/desktopmode/LoadingScreenManager;

    move-result-object v6

    invoke-virtual {v6, v3}, Lcom/samsung/android/desktopmode/LoadingScreenManager;->showAll(Z)V

    goto :goto_0

    :pswitch_4
    iget-object v6, p0, Lcom/android/server/desktopmode/DesktopModeService$DesktopModeHandler;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

    invoke-static {v6, v9}, Lcom/android/server/desktopmode/DesktopModeService;->-set1(Lcom/android/server/desktopmode/DesktopModeService;Z)Z

    invoke-static {}, Lcom/android/server/desktopmode/DesktopModeService;->-get0()Z

    move-result v6

    if-eqz v6, :cond_2

    iget v6, p1, Landroid/os/Message;->arg1:I

    const/4 v7, -0x1

    if-ne v6, v7, :cond_3

    invoke-static {}, Lcom/android/server/desktopmode/DesktopModeService;->-get1()Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Loading screen dismissed by timeout mIsDesktopMode="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/server/desktopmode/DesktopModeService$DesktopModeHandler;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

    invoke-static {v8}, Lcom/android/server/desktopmode/DesktopModeService;->-get7(Lcom/android/server/desktopmode/DesktopModeService;)Z

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    :goto_1
    iget-object v6, p0, Lcom/android/server/desktopmode/DesktopModeService$DesktopModeHandler;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

    invoke-static {v6}, Lcom/android/server/desktopmode/DesktopModeService;->-get10(Lcom/android/server/desktopmode/DesktopModeService;)Lcom/samsung/android/desktopmode/LoadingScreenManager;

    move-result-object v6

    invoke-virtual {v6}, Lcom/samsung/android/desktopmode/LoadingScreenManager;->dismissAll()V

    iget-object v6, p0, Lcom/android/server/desktopmode/DesktopModeService$DesktopModeHandler;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

    invoke-static {v6}, Lcom/android/server/desktopmode/DesktopModeService;->-get8(Lcom/android/server/desktopmode/DesktopModeService;)Z

    move-result v6

    if-eqz v6, :cond_4

    iget-object v6, p0, Lcom/android/server/desktopmode/DesktopModeService$DesktopModeHandler;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

    invoke-static {v6}, Lcom/android/server/desktopmode/DesktopModeService;->-get7(Lcom/android/server/desktopmode/DesktopModeService;)Z

    move-result v6

    if-eqz v6, :cond_4

    :goto_2
    iget-object v6, p0, Lcom/android/server/desktopmode/DesktopModeService$DesktopModeHandler;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

    invoke-static {v6}, Lcom/android/server/desktopmode/DesktopModeService;->-wrap7(Lcom/android/server/desktopmode/DesktopModeService;)V

    goto/16 :goto_0

    :cond_3
    invoke-static {}, Lcom/android/server/desktopmode/DesktopModeService;->-get1()Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Stopping loading screen... mIsDesktopMode="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/server/desktopmode/DesktopModeService$DesktopModeHandler;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

    invoke-static {v8}, Lcom/android/server/desktopmode/DesktopModeService;->-get7(Lcom/android/server/desktopmode/DesktopModeService;)Z

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_4
    iget-object v6, p0, Lcom/android/server/desktopmode/DesktopModeService$DesktopModeHandler;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

    invoke-static {v6, v9}, Lcom/android/server/desktopmode/DesktopModeService;->-wrap0(Lcom/android/server/desktopmode/DesktopModeService;Z)V

    goto :goto_2

    :pswitch_5
    iget-object v6, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v6, Ljava/lang/Boolean;

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    iget-object v6, p0, Lcom/android/server/desktopmode/DesktopModeService$DesktopModeHandler;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

    invoke-static {v6}, Lcom/android/server/desktopmode/DesktopModeService;->-get8(Lcom/android/server/desktopmode/DesktopModeService;)Z

    move-result v6

    if-eqz v6, :cond_5

    iget-object v6, p0, Lcom/android/server/desktopmode/DesktopModeService$DesktopModeHandler;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

    invoke-static {v6, v7}, Lcom/android/server/desktopmode/DesktopModeService;->-wrap0(Lcom/android/server/desktopmode/DesktopModeService;Z)V

    iget-object v6, p0, Lcom/android/server/desktopmode/DesktopModeService$DesktopModeHandler;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

    invoke-static {v6}, Lcom/android/server/desktopmode/DesktopModeService;->-get5(Lcom/android/server/desktopmode/DesktopModeService;)Lcom/android/server/desktopmode/DesktopModeService$DesktopModeHandler;

    move-result-object v6

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    const/16 v8, 0x65

    invoke-virtual {v6, v8, v7}, Lcom/android/server/desktopmode/DesktopModeService$DesktopModeHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    iget-object v6, p0, Lcom/android/server/desktopmode/DesktopModeService$DesktopModeHandler;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

    invoke-static {v6}, Lcom/android/server/desktopmode/DesktopModeService;->-get5(Lcom/android/server/desktopmode/DesktopModeService;)Lcom/android/server/desktopmode/DesktopModeService$DesktopModeHandler;

    move-result-object v6

    invoke-virtual {v6, v4}, Lcom/android/server/desktopmode/DesktopModeService$DesktopModeHandler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_0

    :cond_5
    iget-object v6, p0, Lcom/android/server/desktopmode/DesktopModeService$DesktopModeHandler;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

    invoke-virtual {v6, v7}, Lcom/android/server/desktopmode/DesktopModeService;->setDefaultDisplayPowerMode(I)V

    iget-object v6, p0, Lcom/android/server/desktopmode/DesktopModeService$DesktopModeHandler;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

    invoke-static {v6}, Lcom/android/server/desktopmode/DesktopModeService;->-get10(Lcom/android/server/desktopmode/DesktopModeService;)Lcom/samsung/android/desktopmode/LoadingScreenManager;

    move-result-object v6

    invoke-virtual {v6}, Lcom/samsung/android/desktopmode/LoadingScreenManager;->startAnimation()V

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x65
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method
