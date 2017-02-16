.class Lcom/sec/android/cover/CoverViewMediator$1;
.super Landroid/os/Handler;
.source "CoverViewMediator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/cover/CoverViewMediator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field state:Lcom/samsung/android/cover/CoverState;

.field final synthetic this$0:Lcom/sec/android/cover/CoverViewMediator;


# direct methods
.method constructor <init>(Lcom/sec/android/cover/CoverViewMediator;)V
    .locals 1

    iput-object p1, p0, Lcom/sec/android/cover/CoverViewMediator$1;->this$0:Lcom/sec/android/cover/CoverViewMediator;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/cover/CoverViewMediator$1;->state:Lcom/samsung/android/cover/CoverState;

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5

    const/4 v3, 0x0

    sget-object v0, Lcom/sec/android/cover/CoverViewMediator;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "handleMessage : Cover message arrived : msg="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    sget-object v0, Lcom/sec/android/cover/CoverViewMediator;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "handleMessage : Unknown message"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/cover/CoverViewMediator$1;->this$0:Lcom/sec/android/cover/CoverViewMediator;

    invoke-static {v0}, Lcom/sec/android/cover/CoverViewMediator;->-get0(Lcom/sec/android/cover/CoverViewMediator;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/cover/manager/CoverPowerManager;->getInstance(Landroid/content/Context;)Lcom/sec/android/cover/manager/CoverPowerManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/cover/manager/CoverPowerManager;->releaseWakeLock()V

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/samsung/android/cover/CoverState;

    iput-object v0, p0, Lcom/sec/android/cover/CoverViewMediator$1;->state:Lcom/samsung/android/cover/CoverState;

    invoke-static {}, Lcom/sec/android/cover/manager/CoverEventHistoryManager;->getInstance()Lcom/sec/android/cover/manager/CoverEventHistoryManager;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/cover/CoverViewMediator$1;->state:Lcom/samsung/android/cover/CoverState;

    invoke-virtual {v0, v1}, Lcom/sec/android/cover/manager/CoverEventHistoryManager;->add(Lcom/samsung/android/cover/CoverState;)V

    iget-object v0, p0, Lcom/sec/android/cover/CoverViewMediator$1;->this$0:Lcom/sec/android/cover/CoverViewMediator;

    invoke-static {v0}, Lcom/sec/android/cover/CoverViewMediator;->-get0(Lcom/sec/android/cover/CoverViewMediator;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/sec/android/cover/monitor/CoverUpdateMonitor;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/cover/CoverViewMediator$1;->state:Lcom/samsung/android/cover/CoverState;

    invoke-virtual {v0, v1}, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->notifyCoverStateChanged(Lcom/samsung/android/cover/CoverState;)V

    iget-object v0, p0, Lcom/sec/android/cover/CoverViewMediator$1;->state:Lcom/samsung/android/cover/CoverState;

    iget-boolean v0, v0, Lcom/samsung/android/cover/CoverState;->attached:Z

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/sec/android/cover/CoverViewMediator$1;->this$0:Lcom/sec/android/cover/CoverViewMediator;

    invoke-static {v0}, Lcom/sec/android/cover/CoverViewMediator;->-get0(Lcom/sec/android/cover/CoverViewMediator;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/cover/manager/CoverPopupManager;->getInstance(Landroid/content/Context;)Lcom/sec/android/cover/manager/CoverPopupManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/cover/manager/CoverPopupManager;->dismissPopupDialog()V

    iget-object v0, p0, Lcom/sec/android/cover/CoverViewMediator$1;->this$0:Lcom/sec/android/cover/CoverViewMediator;

    invoke-static {v0}, Lcom/sec/android/cover/CoverViewMediator;->-get1(Lcom/sec/android/cover/CoverViewMediator;)Lcom/sec/android/cover/BaseCoverController;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/cover/CoverViewMediator$1;->this$0:Lcom/sec/android/cover/CoverViewMediator;

    invoke-static {v0}, Lcom/sec/android/cover/CoverViewMediator;->-get1(Lcom/sec/android/cover/CoverViewMediator;)Lcom/sec/android/cover/BaseCoverController;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/cover/CoverViewMediator$1;->state:Lcom/samsung/android/cover/CoverState;

    invoke-virtual {v0, v1}, Lcom/sec/android/cover/BaseCoverController;->onCoverDetatched(Lcom/samsung/android/cover/CoverState;)V

    iget-object v0, p0, Lcom/sec/android/cover/CoverViewMediator$1;->this$0:Lcom/sec/android/cover/CoverViewMediator;

    invoke-static {v0, v3}, Lcom/sec/android/cover/CoverViewMediator;->-set0(Lcom/sec/android/cover/CoverViewMediator;Lcom/sec/android/cover/BaseCoverController;)Lcom/sec/android/cover/BaseCoverController;

    :cond_1
    iget-object v0, p0, Lcom/sec/android/cover/CoverViewMediator$1;->this$0:Lcom/sec/android/cover/CoverViewMediator;

    invoke-static {v0}, Lcom/sec/android/cover/CoverViewMediator;->-get2(Lcom/sec/android/cover/CoverViewMediator;)Landroid/widget/FrameLayout;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/cover/CoverViewMediator$1;->this$0:Lcom/sec/android/cover/CoverViewMediator;

    invoke-static {v0}, Lcom/sec/android/cover/CoverViewMediator;->-get2(Lcom/sec/android/cover/CoverViewMediator;)Landroid/widget/FrameLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->removeAllViews()V

    :cond_2
    return-void

    :cond_3
    iget-object v0, p0, Lcom/sec/android/cover/CoverViewMediator$1;->state:Lcom/samsung/android/cover/CoverState;

    invoke-virtual {v0}, Lcom/samsung/android/cover/CoverState;->getType()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    sget-object v0, Lcom/sec/android/cover/CoverViewMediator;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "handleMessage : Unknown cover type : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/cover/CoverViewMediator$1;->state:Lcom/samsung/android/cover/CoverState;

    invoke-virtual {v2}, Lcom/samsung/android/cover/CoverState;->getType()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/cover/CoverViewMediator$1;->this$0:Lcom/sec/android/cover/CoverViewMediator;

    invoke-static {v0}, Lcom/sec/android/cover/CoverViewMediator;->-get0(Lcom/sec/android/cover/CoverViewMediator;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/cover/manager/CoverPowerManager;->getInstance(Landroid/content/Context;)Lcom/sec/android/cover/manager/CoverPowerManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/cover/manager/CoverPowerManager;->releaseWakeLock()V

    :cond_4
    :goto_1
    iget-object v0, p0, Lcom/sec/android/cover/CoverViewMediator$1;->this$0:Lcom/sec/android/cover/CoverViewMediator;

    invoke-static {v0}, Lcom/sec/android/cover/CoverViewMediator;->-get1(Lcom/sec/android/cover/CoverViewMediator;)Lcom/sec/android/cover/BaseCoverController;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/cover/CoverViewMediator$1;->this$0:Lcom/sec/android/cover/CoverViewMediator;

    invoke-static {v0}, Lcom/sec/android/cover/CoverViewMediator;->-get1(Lcom/sec/android/cover/CoverViewMediator;)Lcom/sec/android/cover/BaseCoverController;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/cover/CoverViewMediator$1;->state:Lcom/samsung/android/cover/CoverState;

    invoke-virtual {v0, v1}, Lcom/sec/android/cover/BaseCoverController;->onCoverEvent(Lcom/samsung/android/cover/CoverState;)V

    goto/16 :goto_0

    :sswitch_0
    iget-object v0, p0, Lcom/sec/android/cover/CoverViewMediator$1;->state:Lcom/samsung/android/cover/CoverState;

    invoke-virtual {v0}, Lcom/samsung/android/cover/CoverState;->getModel()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_5

    sget-object v0, Lcom/sec/android/cover/CoverViewMediator;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "handleMessage : Current cover model is not supported by CoverService. This cover event will be ignored."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/cover/CoverViewMediator$1;->this$0:Lcom/sec/android/cover/CoverViewMediator;

    invoke-static {v0}, Lcom/sec/android/cover/CoverViewMediator;->-get0(Lcom/sec/android/cover/CoverViewMediator;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/cover/manager/CoverPowerManager;->getInstance(Landroid/content/Context;)Lcom/sec/android/cover/manager/CoverPowerManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/cover/manager/CoverPowerManager;->releaseWakeLock()V

    goto :goto_1

    :cond_5
    iget-object v0, p0, Lcom/sec/android/cover/CoverViewMediator$1;->this$0:Lcom/sec/android/cover/CoverViewMediator;

    invoke-static {v0}, Lcom/sec/android/cover/CoverViewMediator;->-get1(Lcom/sec/android/cover/CoverViewMediator;)Lcom/sec/android/cover/BaseCoverController;

    move-result-object v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/sec/android/cover/CoverViewMediator$1;->this$0:Lcom/sec/android/cover/CoverViewMediator;

    new-instance v1, Lcom/sec/android/cover/sviewcover/SViewCoverController;

    iget-object v2, p0, Lcom/sec/android/cover/CoverViewMediator$1;->this$0:Lcom/sec/android/cover/CoverViewMediator;

    invoke-static {v2}, Lcom/sec/android/cover/CoverViewMediator;->-get0(Lcom/sec/android/cover/CoverViewMediator;)Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/cover/CoverViewMediator$1;->this$0:Lcom/sec/android/cover/CoverViewMediator;

    invoke-static {v3}, Lcom/sec/android/cover/CoverViewMediator;->-get3(Lcom/sec/android/cover/CoverViewMediator;)Landroid/widget/FrameLayout;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/android/cover/CoverViewMediator$1;->this$0:Lcom/sec/android/cover/CoverViewMediator;

    invoke-static {v4}, Lcom/sec/android/cover/CoverViewMediator;->-get2(Lcom/sec/android/cover/CoverViewMediator;)Landroid/widget/FrameLayout;

    move-result-object v4

    invoke-direct {v1, v2, v3, v4}, Lcom/sec/android/cover/sviewcover/SViewCoverController;-><init>(Landroid/content/Context;Landroid/widget/FrameLayout;Landroid/widget/FrameLayout;)V

    invoke-static {v0, v1}, Lcom/sec/android/cover/CoverViewMediator;->-set0(Lcom/sec/android/cover/CoverViewMediator;Lcom/sec/android/cover/BaseCoverController;)Lcom/sec/android/cover/BaseCoverController;

    iget-object v0, p0, Lcom/sec/android/cover/CoverViewMediator$1;->this$0:Lcom/sec/android/cover/CoverViewMediator;

    invoke-static {v0}, Lcom/sec/android/cover/CoverViewMediator;->-get1(Lcom/sec/android/cover/CoverViewMediator;)Lcom/sec/android/cover/BaseCoverController;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/cover/CoverViewMediator$1;->state:Lcom/samsung/android/cover/CoverState;

    invoke-virtual {v0, v1}, Lcom/sec/android/cover/BaseCoverController;->onCoverAttached(Lcom/samsung/android/cover/CoverState;)V

    goto :goto_1

    :sswitch_1
    sget-object v0, Lcom/sec/android/cover/CoverViewMediator;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "Wallet cover not supported"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :sswitch_2
    sget-object v0, Lcom/sec/android/cover/CoverViewMediator;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "LED Cover on N not supported by SystemUI"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :sswitch_3
    sget-object v0, Lcom/sec/android/cover/CoverViewMediator;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "MontBlanc cover not supported"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :sswitch_4
    iget-object v0, p0, Lcom/sec/android/cover/CoverViewMediator$1;->this$0:Lcom/sec/android/cover/CoverViewMediator;

    invoke-static {v0}, Lcom/sec/android/cover/CoverViewMediator;->-get1(Lcom/sec/android/cover/CoverViewMediator;)Lcom/sec/android/cover/BaseCoverController;

    move-result-object v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/sec/android/cover/CoverViewMediator$1;->this$0:Lcom/sec/android/cover/CoverViewMediator;

    new-instance v1, Lcom/sec/android/cover/clearcover/ClearCoverController;

    iget-object v2, p0, Lcom/sec/android/cover/CoverViewMediator$1;->this$0:Lcom/sec/android/cover/CoverViewMediator;

    invoke-static {v2}, Lcom/sec/android/cover/CoverViewMediator;->-get0(Lcom/sec/android/cover/CoverViewMediator;)Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/cover/CoverViewMediator$1;->this$0:Lcom/sec/android/cover/CoverViewMediator;

    invoke-static {v3}, Lcom/sec/android/cover/CoverViewMediator;->-get3(Lcom/sec/android/cover/CoverViewMediator;)Landroid/widget/FrameLayout;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/sec/android/cover/clearcover/ClearCoverController;-><init>(Landroid/content/Context;Landroid/widget/FrameLayout;)V

    invoke-static {v0, v1}, Lcom/sec/android/cover/CoverViewMediator;->-set0(Lcom/sec/android/cover/CoverViewMediator;Lcom/sec/android/cover/BaseCoverController;)Lcom/sec/android/cover/BaseCoverController;

    iget-object v0, p0, Lcom/sec/android/cover/CoverViewMediator$1;->this$0:Lcom/sec/android/cover/CoverViewMediator;

    invoke-static {v0}, Lcom/sec/android/cover/CoverViewMediator;->-get1(Lcom/sec/android/cover/CoverViewMediator;)Lcom/sec/android/cover/BaseCoverController;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/cover/CoverViewMediator$1;->state:Lcom/samsung/android/cover/CoverState;

    invoke-virtual {v0, v1}, Lcom/sec/android/cover/BaseCoverController;->onCoverAttached(Lcom/samsung/android/cover/CoverState;)V

    goto/16 :goto_1

    :sswitch_5
    sget-object v0, Lcom/sec/android/cover/CoverViewMediator;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "handleMessage : Cover type = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/cover/CoverViewMediator$1;->state:Lcom/samsung/android/cover/CoverState;

    invoke-virtual {v2}, Lcom/samsung/android/cover/CoverState;->getType()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/cover/CoverViewMediator$1;->this$0:Lcom/sec/android/cover/CoverViewMediator;

    invoke-static {v0}, Lcom/sec/android/cover/CoverViewMediator;->-get0(Lcom/sec/android/cover/CoverViewMediator;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/cover/manager/CoverPowerManager;->getInstance(Landroid/content/Context;)Lcom/sec/android/cover/manager/CoverPowerManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/cover/manager/CoverPowerManager;->releaseWakeLock()V

    goto/16 :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x2711
        :pswitch_0
    .end packed-switch

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_5
        0x1 -> :sswitch_0
        0x2 -> :sswitch_5
        0x3 -> :sswitch_0
        0x6 -> :sswitch_1
        0x7 -> :sswitch_2
        0x8 -> :sswitch_4
        0x64 -> :sswitch_3
    .end sparse-switch
.end method
