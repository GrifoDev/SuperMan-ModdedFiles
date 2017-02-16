.class Lcom/sec/android/cover/clearcover/ClearCoverView$1;
.super Lcom/sec/android/cover/monitor/CoverUpdateMonitorCallback;
.source "ClearCoverView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/cover/clearcover/ClearCoverView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/cover/clearcover/ClearCoverView;


# direct methods
.method constructor <init>(Lcom/sec/android/cover/clearcover/ClearCoverView;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/cover/clearcover/ClearCoverView$1;->this$0:Lcom/sec/android/cover/clearcover/ClearCoverView;

    invoke-direct {p0}, Lcom/sec/android/cover/monitor/CoverUpdateMonitorCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onCoverAppCovered(Z)V
    .locals 1

    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/sec/android/cover/clearcover/ClearCoverView$1;->this$0:Lcom/sec/android/cover/clearcover/ClearCoverView;

    invoke-virtual {v0}, Lcom/sec/android/cover/clearcover/ClearCoverView;->isCoverOpen()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/sec/android/cover/clearcover/ClearCoverView$1;->this$0:Lcom/sec/android/cover/clearcover/ClearCoverView;

    invoke-static {v0}, Lcom/sec/android/cover/clearcover/ClearCoverView;->-wrap0(Lcom/sec/android/cover/clearcover/ClearCoverView;)V

    iget-object v0, p0, Lcom/sec/android/cover/clearcover/ClearCoverView$1;->this$0:Lcom/sec/android/cover/clearcover/ClearCoverView;

    invoke-static {v0}, Lcom/sec/android/cover/clearcover/ClearCoverView;->-wrap1(Lcom/sec/android/cover/clearcover/ClearCoverView;)V

    goto :goto_0
.end method

.method public onCoverDelayedTimout(I)V
    .locals 3

    invoke-static {}, Lcom/sec/android/cover/clearcover/ClearCoverView;->-get0()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onCoverDelayedTimout() seq = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", currentSeq ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/sec/android/cover/clearcover/ClearCoverView;->-get3()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/sec/android/cover/clearcover/ClearCoverView;->-get3()I

    move-result v0

    if-ne p1, v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/cover/clearcover/ClearCoverView$1;->this$0:Lcom/sec/android/cover/clearcover/ClearCoverView;

    invoke-virtual {v0}, Lcom/sec/android/cover/clearcover/ClearCoverView;->isCoverOpen()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/cover/clearcover/ClearCoverView$1;->this$0:Lcom/sec/android/cover/clearcover/ClearCoverView;

    invoke-virtual {v0}, Lcom/sec/android/cover/clearcover/ClearCoverView;->hasWindowFocus()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/cover/clearcover/ClearCoverView$1;->this$0:Lcom/sec/android/cover/clearcover/ClearCoverView;

    invoke-static {v0}, Lcom/sec/android/cover/clearcover/ClearCoverView;->-get2(Lcom/sec/android/cover/clearcover/ClearCoverView;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/cover/manager/CoverPopupManager;->getInstance(Landroid/content/Context;)Lcom/sec/android/cover/manager/CoverPopupManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/cover/manager/CoverPopupManager;->isShowingPopupDialog()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/sec/android/cover/clearcover/ClearCoverView$1;->this$0:Lcom/sec/android/cover/clearcover/ClearCoverView;

    invoke-static {v0}, Lcom/sec/android/cover/clearcover/ClearCoverView;->-get2(Lcom/sec/android/cover/clearcover/ClearCoverView;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/cover/manager/CoverPowerManager;->getInstance(Landroid/content/Context;)Lcom/sec/android/cover/manager/CoverPowerManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/cover/manager/CoverPowerManager;->goToSleep()V

    :cond_1
    return-void
.end method

.method public onLocaleChanged()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/cover/clearcover/ClearCoverView$1;->this$0:Lcom/sec/android/cover/clearcover/ClearCoverView;

    invoke-static {v0}, Lcom/sec/android/cover/clearcover/ClearCoverView;->-get4(Lcom/sec/android/cover/clearcover/ClearCoverView;)Landroid/widget/TextView;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/cover/clearcover/ClearCoverView$1;->this$0:Lcom/sec/android/cover/clearcover/ClearCoverView;

    invoke-static {v0}, Lcom/sec/android/cover/clearcover/ClearCoverView;->-get1(Lcom/sec/android/cover/clearcover/ClearCoverView;)Landroid/app/ActivityManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ActivityManager;->getLockTaskModeState()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/sec/android/cover/clearcover/ClearCoverView$1;->this$0:Lcom/sec/android/cover/clearcover/ClearCoverView;

    invoke-static {v0}, Lcom/sec/android/cover/clearcover/ClearCoverView;->-get4(Lcom/sec/android/cover/clearcover/ClearCoverView;)Landroid/widget/TextView;

    move-result-object v0

    sget v1, Lcom/sec/android/sviewcover/R$string;->pinwindowcover_warning_content:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/sec/android/cover/clearcover/ClearCoverView$1;->this$0:Lcom/sec/android/cover/clearcover/ClearCoverView;

    invoke-static {v0}, Lcom/sec/android/cover/clearcover/ClearCoverView;->-get4(Lcom/sec/android/cover/clearcover/ClearCoverView;)Landroid/widget/TextView;

    move-result-object v0

    sget v1, Lcom/sec/android/sviewcover/R$string;->opencover_warning_content:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onScreenTurnedOn()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/cover/clearcover/ClearCoverView$1;->this$0:Lcom/sec/android/cover/clearcover/ClearCoverView;

    invoke-static {v0}, Lcom/sec/android/cover/clearcover/ClearCoverView;->-wrap0(Lcom/sec/android/cover/clearcover/ClearCoverView;)V

    iget-object v0, p0, Lcom/sec/android/cover/clearcover/ClearCoverView$1;->this$0:Lcom/sec/android/cover/clearcover/ClearCoverView;

    invoke-static {v0}, Lcom/sec/android/cover/clearcover/ClearCoverView;->-wrap1(Lcom/sec/android/cover/clearcover/ClearCoverView;)V

    return-void
.end method
