.class Lcom/samsung/android/contextaware/utilbundle/CaPowerManager$2;
.super Landroid/os/Handler;
.source "CaPowerManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/contextaware/utilbundle/CaPowerManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/contextaware/utilbundle/CaPowerManager;


# direct methods
.method constructor <init>(Lcom/samsung/android/contextaware/utilbundle/CaPowerManager;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/contextaware/utilbundle/CaPowerManager$2;->this$0:Lcom/samsung/android/contextaware/utilbundle/CaPowerManager;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 8

    const/4 v7, 0x1

    const/4 v6, 0x0

    const/16 v5, -0x2e

    const/16 v4, -0x2f

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget v2, p1, Landroid/os/Message;->what:I

    const/16 v3, 0x1001

    if-ne v2, v3, :cond_1

    const-string/jumbo v2, "context is null"

    invoke-static {v2}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->info(Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget v2, p1, Landroid/os/Message;->what:I

    const/16 v3, 0x1002

    if-ne v2, v3, :cond_2

    const-string/jumbo v2, "intent is null"

    invoke-static {v2}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->info(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    iget v2, p1, Landroid/os/Message;->what:I

    const/16 v3, 0x1003

    if-ne v2, v3, :cond_4

    iget-object v2, p0, Lcom/samsung/android/contextaware/utilbundle/CaPowerManager$2;->this$0:Lcom/samsung/android/contextaware/utilbundle/CaPowerManager;

    invoke-static {v2, v6}, Lcom/samsung/android/contextaware/utilbundle/CaPowerManager;->-set1(Lcom/samsung/android/contextaware/utilbundle/CaPowerManager;Z)Z

    iget-object v2, p0, Lcom/samsung/android/contextaware/utilbundle/CaPowerManager$2;->this$0:Lcom/samsung/android/contextaware/utilbundle/CaPowerManager;

    invoke-static {v2}, Lcom/samsung/android/contextaware/utilbundle/CaPowerManager;->-get0(Lcom/samsung/android/contextaware/utilbundle/CaPowerManager;)Z

    move-result v2

    if-nez v2, :cond_3

    const-string/jumbo v2, "AP_SLEEP"

    invoke-static {v2}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->info(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/samsung/android/contextaware/utilbundle/CaPowerManager$2;->this$0:Lcom/samsung/android/contextaware/utilbundle/CaPowerManager;

    invoke-virtual {v2, v5, v0, v1}, Lcom/samsung/android/contextaware/utilbundle/CaPowerManager;->notifyApPowerObserver(IJ)V

    iget-object v2, p0, Lcom/samsung/android/contextaware/utilbundle/CaPowerManager$2;->this$0:Lcom/samsung/android/contextaware/utilbundle/CaPowerManager;

    invoke-static {v2, v5}, Lcom/samsung/android/contextaware/utilbundle/CaPowerManager;->-wrap0(Lcom/samsung/android/contextaware/utilbundle/CaPowerManager;I)V

    invoke-static {}, Lcom/samsung/android/contextaware/utilbundle/CaTimeManager;->getInstance()Lcom/samsung/android/contextaware/utilbundle/CaTimeManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/contextaware/utilbundle/CaTimeManager;->sendCurTimeToSensorHub()V

    iget-object v2, p0, Lcom/samsung/android/contextaware/utilbundle/CaPowerManager$2;->this$0:Lcom/samsung/android/contextaware/utilbundle/CaPowerManager;

    invoke-static {v2, v7}, Lcom/samsung/android/contextaware/utilbundle/CaPowerManager;->-set0(Lcom/samsung/android/contextaware/utilbundle/CaPowerManager;Z)Z

    goto :goto_0

    :cond_3
    iget-object v2, p0, Lcom/samsung/android/contextaware/utilbundle/CaPowerManager$2;->this$0:Lcom/samsung/android/contextaware/utilbundle/CaPowerManager;

    invoke-static {v2}, Lcom/samsung/android/contextaware/utilbundle/CaPowerManager;->-get0(Lcom/samsung/android/contextaware/utilbundle/CaPowerManager;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string/jumbo v2, "AP_SLEEP_Already_Delivered"

    invoke-static {v2}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->info(Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    iget v2, p1, Landroid/os/Message;->what:I

    const/16 v3, 0x1004

    if-ne v2, v3, :cond_6

    iget-object v2, p0, Lcom/samsung/android/contextaware/utilbundle/CaPowerManager$2;->this$0:Lcom/samsung/android/contextaware/utilbundle/CaPowerManager;

    invoke-static {v2, v6}, Lcom/samsung/android/contextaware/utilbundle/CaPowerManager;->-set0(Lcom/samsung/android/contextaware/utilbundle/CaPowerManager;Z)Z

    iget-object v2, p0, Lcom/samsung/android/contextaware/utilbundle/CaPowerManager$2;->this$0:Lcom/samsung/android/contextaware/utilbundle/CaPowerManager;

    invoke-static {v2}, Lcom/samsung/android/contextaware/utilbundle/CaPowerManager;->-get1(Lcom/samsung/android/contextaware/utilbundle/CaPowerManager;)Z

    move-result v2

    if-nez v2, :cond_5

    const-string/jumbo v2, "AP_WAKEUP"

    invoke-static {v2}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->info(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/samsung/android/contextaware/utilbundle/CaPowerManager$2;->this$0:Lcom/samsung/android/contextaware/utilbundle/CaPowerManager;

    invoke-virtual {v2, v4, v0, v1}, Lcom/samsung/android/contextaware/utilbundle/CaPowerManager;->notifyApPowerObserver(IJ)V

    iget-object v2, p0, Lcom/samsung/android/contextaware/utilbundle/CaPowerManager$2;->this$0:Lcom/samsung/android/contextaware/utilbundle/CaPowerManager;

    invoke-static {v2, v4}, Lcom/samsung/android/contextaware/utilbundle/CaPowerManager;->-wrap0(Lcom/samsung/android/contextaware/utilbundle/CaPowerManager;I)V

    iget-object v2, p0, Lcom/samsung/android/contextaware/utilbundle/CaPowerManager$2;->this$0:Lcom/samsung/android/contextaware/utilbundle/CaPowerManager;

    invoke-static {v2, v7}, Lcom/samsung/android/contextaware/utilbundle/CaPowerManager;->-set1(Lcom/samsung/android/contextaware/utilbundle/CaPowerManager;Z)Z

    goto :goto_0

    :cond_5
    const-string/jumbo v2, "AP_WAKEUP_Already_Delivered"

    invoke-static {v2}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->info(Ljava/lang/String;)V

    goto :goto_0

    :cond_6
    iget v2, p1, Landroid/os/Message;->what:I

    const/16 v3, 0x1005

    if-ne v2, v3, :cond_7

    const-string/jumbo v2, "POWER_CONNECTED"

    invoke-static {v2}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->info(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/samsung/android/contextaware/utilbundle/CaPowerManager$2;->this$0:Lcom/samsung/android/contextaware/utilbundle/CaPowerManager;

    const/16 v3, -0x2a

    invoke-static {v2, v3}, Lcom/samsung/android/contextaware/utilbundle/CaPowerManager;->-wrap0(Lcom/samsung/android/contextaware/utilbundle/CaPowerManager;I)V

    goto/16 :goto_0

    :cond_7
    iget v2, p1, Landroid/os/Message;->what:I

    const/16 v3, 0x1006

    if-ne v2, v3, :cond_0

    const-string/jumbo v2, "POWER_DISCONNECTED"

    invoke-static {v2}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->info(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/samsung/android/contextaware/utilbundle/CaPowerManager$2;->this$0:Lcom/samsung/android/contextaware/utilbundle/CaPowerManager;

    const/16 v3, -0x29

    invoke-static {v2, v3}, Lcom/samsung/android/contextaware/utilbundle/CaPowerManager;->-wrap0(Lcom/samsung/android/contextaware/utilbundle/CaPowerManager;I)V

    goto/16 :goto_0
.end method
