.class final Lcom/android/server/retaildemo/RetailDemoModeService$IntentReceiver;
.super Landroid/content/BroadcastReceiver;
.source "RetailDemoModeService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/retaildemo/RetailDemoModeService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "IntentReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/retaildemo/RetailDemoModeService;


# direct methods
.method private constructor <init>(Lcom/android/server/retaildemo/RetailDemoModeService;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/retaildemo/RetailDemoModeService$IntentReceiver;->this$0:Lcom/android/server/retaildemo/RetailDemoModeService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/retaildemo/RetailDemoModeService;Lcom/android/server/retaildemo/RetailDemoModeService$IntentReceiver;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/retaildemo/RetailDemoModeService$IntentReceiver;-><init>(Lcom/android/server/retaildemo/RetailDemoModeService;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5

    const/4 v4, 0x0

    iget-object v1, p0, Lcom/android/server/retaildemo/RetailDemoModeService$IntentReceiver;->this$0:Lcom/android/server/retaildemo/RetailDemoModeService;

    iget-boolean v1, v1, Lcom/android/server/retaildemo/RetailDemoModeService;->mDeviceInDemoMode:Z

    if-nez v1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/server/retaildemo/RetailDemoModeService$IntentReceiver;->this$0:Lcom/android/server/retaildemo/RetailDemoModeService;

    iget-object v1, v1, Lcom/android/server/retaildemo/RetailDemoModeService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v4}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v1, p0, Lcom/android/server/retaildemo/RetailDemoModeService$IntentReceiver;->this$0:Lcom/android/server/retaildemo/RetailDemoModeService;

    iget-object v1, v1, Lcom/android/server/retaildemo/RetailDemoModeService;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x9c4

    invoke-virtual {v1, v4, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_1
    :goto_0
    return-void

    :cond_2
    const-string/jumbo v1, "com.android.server.retaildemo.ACTION_RESET_DEMO"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/server/retaildemo/RetailDemoModeService$IntentReceiver;->this$0:Lcom/android/server/retaildemo/RetailDemoModeService;

    iget-object v1, v1, Lcom/android/server/retaildemo/RetailDemoModeService;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0
.end method
