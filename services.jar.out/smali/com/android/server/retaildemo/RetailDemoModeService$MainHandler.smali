.class final Lcom/android/server/retaildemo/RetailDemoModeService$MainHandler;
.super Landroid/os/Handler;
.source "RetailDemoModeService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/retaildemo/RetailDemoModeService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "MainHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/retaildemo/RetailDemoModeService;


# direct methods
.method constructor <init>(Lcom/android/server/retaildemo/RetailDemoModeService;Landroid/os/Looper;)V
    .locals 2

    iput-object p1, p0, Lcom/android/server/retaildemo/RetailDemoModeService$MainHandler;->this$0:Lcom/android/server/retaildemo/RetailDemoModeService;

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, p2, v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;Z)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 7

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/android/server/retaildemo/RetailDemoModeService$MainHandler;->this$0:Lcom/android/server/retaildemo/RetailDemoModeService;

    iget-boolean v6, v6, Lcom/android/server/retaildemo/RetailDemoModeService;->mDeviceInDemoMode:Z

    if-nez v6, :cond_0

    return-void

    :cond_0
    iget v6, p1, Landroid/os/Message;->what:I

    packed-switch v6, :pswitch_data_0

    :cond_1
    :goto_0
    return-void

    :pswitch_0
    iget-object v5, p0, Lcom/android/server/retaildemo/RetailDemoModeService$MainHandler;->this$0:Lcom/android/server/retaildemo/RetailDemoModeService;

    invoke-static {v5}, Lcom/android/server/retaildemo/RetailDemoModeService;->-get1(Lcom/android/server/retaildemo/RetailDemoModeService;)Lcom/android/server/retaildemo/RetailDemoModeService$Injector;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/server/retaildemo/RetailDemoModeService$Injector;->isWakeLockHeld()Z

    move-result v5

    if-eqz v5, :cond_2

    iget-object v5, p0, Lcom/android/server/retaildemo/RetailDemoModeService$MainHandler;->this$0:Lcom/android/server/retaildemo/RetailDemoModeService;

    invoke-static {v5}, Lcom/android/server/retaildemo/RetailDemoModeService;->-get1(Lcom/android/server/retaildemo/RetailDemoModeService;)Lcom/android/server/retaildemo/RetailDemoModeService$Injector;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/server/retaildemo/RetailDemoModeService$Injector;->releaseWakeLock()V

    :cond_2
    iget-object v5, p0, Lcom/android/server/retaildemo/RetailDemoModeService$MainHandler;->this$0:Lcom/android/server/retaildemo/RetailDemoModeService;

    invoke-static {v5}, Lcom/android/server/retaildemo/RetailDemoModeService;->-get1(Lcom/android/server/retaildemo/RetailDemoModeService;)Lcom/android/server/retaildemo/RetailDemoModeService$Injector;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/server/retaildemo/RetailDemoModeService$Injector;->acquireWakeLock()V

    goto :goto_0

    :pswitch_1
    iget-object v5, p0, Lcom/android/server/retaildemo/RetailDemoModeService$MainHandler;->this$0:Lcom/android/server/retaildemo/RetailDemoModeService;

    iget-boolean v5, v5, Lcom/android/server/retaildemo/RetailDemoModeService;->mIsCarrierDemoMode:Z

    if-nez v5, :cond_1

    iget-object v5, p0, Lcom/android/server/retaildemo/RetailDemoModeService$MainHandler;->this$0:Lcom/android/server/retaildemo/RetailDemoModeService;

    invoke-virtual {v5}, Lcom/android/server/retaildemo/RetailDemoModeService;->isDemoLauncherDisabled()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-static {}, Lcom/android/server/retaildemo/RetailDemoModeService;->-get0()Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, "User inactivity timeout reached"

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v5, p0, Lcom/android/server/retaildemo/RetailDemoModeService$MainHandler;->this$0:Lcom/android/server/retaildemo/RetailDemoModeService;

    invoke-static {v5}, Lcom/android/server/retaildemo/RetailDemoModeService;->-wrap4(Lcom/android/server/retaildemo/RetailDemoModeService;)V

    goto :goto_0

    :pswitch_2
    const/4 v6, 0x2

    invoke-virtual {p0, v6}, Lcom/android/server/retaildemo/RetailDemoModeService$MainHandler;->removeMessages(I)V

    const/4 v6, 0x1

    invoke-virtual {p0, v6}, Lcom/android/server/retaildemo/RetailDemoModeService$MainHandler;->removeMessages(I)V

    iget-object v6, p0, Lcom/android/server/retaildemo/RetailDemoModeService$MainHandler;->this$0:Lcom/android/server/retaildemo/RetailDemoModeService;

    iget-boolean v6, v6, Lcom/android/server/retaildemo/RetailDemoModeService;->mIsCarrierDemoMode:Z

    if-nez v6, :cond_3

    iget-object v6, p0, Lcom/android/server/retaildemo/RetailDemoModeService$MainHandler;->this$0:Lcom/android/server/retaildemo/RetailDemoModeService;

    iget v6, v6, Lcom/android/server/retaildemo/RetailDemoModeService;->mCurrentUserId:I

    if-eqz v6, :cond_3

    iget-object v6, p0, Lcom/android/server/retaildemo/RetailDemoModeService$MainHandler;->this$0:Lcom/android/server/retaildemo/RetailDemoModeService;

    invoke-virtual {v6}, Lcom/android/server/retaildemo/RetailDemoModeService;->logSessionDuration()V

    :cond_3
    iget-object v6, p0, Lcom/android/server/retaildemo/RetailDemoModeService$MainHandler;->this$0:Lcom/android/server/retaildemo/RetailDemoModeService;

    invoke-static {v6}, Lcom/android/server/retaildemo/RetailDemoModeService;->-get1(Lcom/android/server/retaildemo/RetailDemoModeService;)Lcom/android/server/retaildemo/RetailDemoModeService$Injector;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/server/retaildemo/RetailDemoModeService$Injector;->getUserManager()Landroid/os/UserManager;

    move-result-object v2

    const/4 v0, 0x0

    iget-object v6, p0, Lcom/android/server/retaildemo/RetailDemoModeService$MainHandler;->this$0:Lcom/android/server/retaildemo/RetailDemoModeService;

    iget-boolean v6, v6, Lcom/android/server/retaildemo/RetailDemoModeService;->mIsCarrierDemoMode:Z

    if-eqz v6, :cond_5

    invoke-virtual {v2}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_4
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_5

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/UserInfo;

    invoke-virtual {v3}, Landroid/content/pm/UserInfo;->isDemo()Z

    move-result v6

    if-eqz v6, :cond_4

    move-object v0, v3

    :cond_5
    if-nez v0, :cond_6

    iget-object v6, p0, Lcom/android/server/retaildemo/RetailDemoModeService$MainHandler;->this$0:Lcom/android/server/retaildemo/RetailDemoModeService;

    iget-boolean v6, v6, Lcom/android/server/retaildemo/RetailDemoModeService;->mIsCarrierDemoMode:Z

    if-eqz v6, :cond_7

    :goto_1
    or-int/lit16 v1, v5, 0x200

    const-string/jumbo v5, "Demo"

    invoke-virtual {v2, v5, v1}, Landroid/os/UserManager;->createUser(Ljava/lang/String;I)Landroid/content/pm/UserInfo;

    move-result-object v0

    :cond_6
    if-eqz v0, :cond_1

    iget-object v5, p0, Lcom/android/server/retaildemo/RetailDemoModeService$MainHandler;->this$0:Lcom/android/server/retaildemo/RetailDemoModeService;

    iget v5, v5, Lcom/android/server/retaildemo/RetailDemoModeService;->mCurrentUserId:I

    iget v6, v0, Landroid/content/pm/UserInfo;->id:I

    if-eq v5, v6, :cond_1

    iget-object v5, p0, Lcom/android/server/retaildemo/RetailDemoModeService$MainHandler;->this$0:Lcom/android/server/retaildemo/RetailDemoModeService;

    invoke-static {v5, v0}, Lcom/android/server/retaildemo/RetailDemoModeService;->-wrap3(Lcom/android/server/retaildemo/RetailDemoModeService;Landroid/content/pm/UserInfo;)V

    iget-object v5, p0, Lcom/android/server/retaildemo/RetailDemoModeService$MainHandler;->this$0:Lcom/android/server/retaildemo/RetailDemoModeService;

    invoke-static {v5}, Lcom/android/server/retaildemo/RetailDemoModeService;->-get1(Lcom/android/server/retaildemo/RetailDemoModeService;)Lcom/android/server/retaildemo/RetailDemoModeService$Injector;

    move-result-object v5

    iget v6, v0, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v5, v6}, Lcom/android/server/retaildemo/RetailDemoModeService$Injector;->switchUser(I)V

    goto/16 :goto_0

    :cond_7
    const/16 v5, 0x100

    goto :goto_1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
