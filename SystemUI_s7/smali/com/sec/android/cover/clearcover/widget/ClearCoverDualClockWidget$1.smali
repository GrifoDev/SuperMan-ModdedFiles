.class Lcom/sec/android/cover/clearcover/widget/ClearCoverDualClockWidget$1;
.super Lcom/sec/android/cover/monitor/CoverUpdateMonitorCallback;
.source "ClearCoverDualClockWidget.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/cover/clearcover/widget/ClearCoverDualClockWidget;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/cover/clearcover/widget/ClearCoverDualClockWidget;


# direct methods
.method constructor <init>(Lcom/sec/android/cover/clearcover/widget/ClearCoverDualClockWidget;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/cover/clearcover/widget/ClearCoverDualClockWidget$1;->this$0:Lcom/sec/android/cover/clearcover/widget/ClearCoverDualClockWidget;

    invoke-direct {p0}, Lcom/sec/android/cover/monitor/CoverUpdateMonitorCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onConfigurationChanged()V
    .locals 4

    const/16 v2, 0x12c2

    iget-object v0, p0, Lcom/sec/android/cover/clearcover/widget/ClearCoverDualClockWidget$1;->this$0:Lcom/sec/android/cover/clearcover/widget/ClearCoverDualClockWidget;

    invoke-static {v0}, Lcom/sec/android/cover/clearcover/widget/ClearCoverDualClockWidget;->-wrap1(Lcom/sec/android/cover/clearcover/widget/ClearCoverDualClockWidget;)V

    iget-object v0, p0, Lcom/sec/android/cover/clearcover/widget/ClearCoverDualClockWidget$1;->this$0:Lcom/sec/android/cover/clearcover/widget/ClearCoverDualClockWidget;

    invoke-static {v0}, Lcom/sec/android/cover/clearcover/widget/ClearCoverDualClockWidget;->-get1(Lcom/sec/android/cover/clearcover/widget/ClearCoverDualClockWidget;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/cover/clearcover/widget/ClearCoverDualClockWidget$1;->this$0:Lcom/sec/android/cover/clearcover/widget/ClearCoverDualClockWidget;

    invoke-static {v0}, Lcom/sec/android/cover/clearcover/widget/ClearCoverDualClockWidget;->-get1(Lcom/sec/android/cover/clearcover/widget/ClearCoverDualClockWidget;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    :cond_0
    iget-object v0, p0, Lcom/sec/android/cover/clearcover/widget/ClearCoverDualClockWidget$1;->this$0:Lcom/sec/android/cover/clearcover/widget/ClearCoverDualClockWidget;

    invoke-static {v0}, Lcom/sec/android/cover/clearcover/widget/ClearCoverDualClockWidget;->-get1(Lcom/sec/android/cover/clearcover/widget/ClearCoverDualClockWidget;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/cover/clearcover/widget/ClearCoverDualClockWidget$1;->this$0:Lcom/sec/android/cover/clearcover/widget/ClearCoverDualClockWidget;

    invoke-static {v1}, Lcom/sec/android/cover/clearcover/widget/ClearCoverDualClockWidget;->-get1(Lcom/sec/android/cover/clearcover/widget/ClearCoverDualClockWidget;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void
.end method

.method public onContentChanged(Landroid/net/Uri;)V
    .locals 3

    const/4 v2, 0x0

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "time_12_24"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/cover/clearcover/widget/ClearCoverDualClockWidget$1;->this$0:Lcom/sec/android/cover/clearcover/widget/ClearCoverDualClockWidget;

    iget-object v1, p0, Lcom/sec/android/cover/clearcover/widget/ClearCoverDualClockWidget$1;->this$0:Lcom/sec/android/cover/clearcover/widget/ClearCoverDualClockWidget;

    invoke-static {v1}, Lcom/sec/android/cover/clearcover/widget/ClearCoverDualClockWidget;->-get2(Lcom/sec/android/cover/clearcover/widget/ClearCoverDualClockWidget;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/sec/android/cover/CoverUtils;->is24HourModeEnabled(Landroid/content/Context;)Z

    move-result v1

    invoke-static {v0, v1}, Lcom/sec/android/cover/clearcover/widget/ClearCoverDualClockWidget;->-set1(Lcom/sec/android/cover/clearcover/widget/ClearCoverDualClockWidget;Z)Z

    iget-object v0, p0, Lcom/sec/android/cover/clearcover/widget/ClearCoverDualClockWidget$1;->this$0:Lcom/sec/android/cover/clearcover/widget/ClearCoverDualClockWidget;

    invoke-static {v0}, Lcom/sec/android/cover/clearcover/widget/ClearCoverDualClockWidget;->-wrap1(Lcom/sec/android/cover/clearcover/widget/ClearCoverDualClockWidget;)V

    :cond_0
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "content://settings/system/date_format"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/sec/android/cover/clearcover/widget/ClearCoverDualClockWidget;->-get0()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "DateFormatObserver onChange()"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/cover/clearcover/widget/ClearCoverDualClockWidget$1;->this$0:Lcom/sec/android/cover/clearcover/widget/ClearCoverDualClockWidget;

    invoke-static {v0, v2}, Lcom/sec/android/cover/clearcover/widget/ClearCoverDualClockWidget;->-set2(Lcom/sec/android/cover/clearcover/widget/ClearCoverDualClockWidget;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    iget-object v0, p0, Lcom/sec/android/cover/clearcover/widget/ClearCoverDualClockWidget$1;->this$0:Lcom/sec/android/cover/clearcover/widget/ClearCoverDualClockWidget;

    invoke-static {v0, v2}, Lcom/sec/android/cover/clearcover/widget/ClearCoverDualClockWidget;->-set0(Lcom/sec/android/cover/clearcover/widget/ClearCoverDualClockWidget;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    iget-object v0, p0, Lcom/sec/android/cover/clearcover/widget/ClearCoverDualClockWidget$1;->this$0:Lcom/sec/android/cover/clearcover/widget/ClearCoverDualClockWidget;

    invoke-static {v0}, Lcom/sec/android/cover/clearcover/widget/ClearCoverDualClockWidget;->-get2(Lcom/sec/android/cover/clearcover/widget/ClearCoverDualClockWidget;)Landroid/content/Context;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v2, "clock.date_format_changed"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    :cond_1
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "homecity_timezone"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/sec/android/cover/clearcover/widget/ClearCoverDualClockWidget;->-get0()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "HomeCityChangeObserver onChange()"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/cover/clearcover/widget/ClearCoverDualClockWidget$1;->this$0:Lcom/sec/android/cover/clearcover/widget/ClearCoverDualClockWidget;

    invoke-static {v0}, Lcom/sec/android/cover/clearcover/widget/ClearCoverDualClockWidget;->-get2(Lcom/sec/android/cover/clearcover/widget/ClearCoverDualClockWidget;)Landroid/content/Context;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v2, "dualclock.homecity_timezone"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    :cond_2
    return-void
.end method

.method public onDateFormatChanged()V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/sec/android/cover/clearcover/widget/ClearCoverDualClockWidget$1;->this$0:Lcom/sec/android/cover/clearcover/widget/ClearCoverDualClockWidget;

    invoke-static {v0, v1}, Lcom/sec/android/cover/clearcover/widget/ClearCoverDualClockWidget;->-set2(Lcom/sec/android/cover/clearcover/widget/ClearCoverDualClockWidget;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    iget-object v0, p0, Lcom/sec/android/cover/clearcover/widget/ClearCoverDualClockWidget$1;->this$0:Lcom/sec/android/cover/clearcover/widget/ClearCoverDualClockWidget;

    invoke-static {v0, v1}, Lcom/sec/android/cover/clearcover/widget/ClearCoverDualClockWidget;->-set0(Lcom/sec/android/cover/clearcover/widget/ClearCoverDualClockWidget;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    iget-object v0, p0, Lcom/sec/android/cover/clearcover/widget/ClearCoverDualClockWidget$1;->this$0:Lcom/sec/android/cover/clearcover/widget/ClearCoverDualClockWidget;

    invoke-static {v0}, Lcom/sec/android/cover/clearcover/widget/ClearCoverDualClockWidget;->-wrap1(Lcom/sec/android/cover/clearcover/widget/ClearCoverDualClockWidget;)V

    return-void
.end method

.method public onHomeCityChanged()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/cover/clearcover/widget/ClearCoverDualClockWidget$1;->this$0:Lcom/sec/android/cover/clearcover/widget/ClearCoverDualClockWidget;

    invoke-static {v0}, Lcom/sec/android/cover/clearcover/widget/ClearCoverDualClockWidget;->-wrap1(Lcom/sec/android/cover/clearcover/widget/ClearCoverDualClockWidget;)V

    return-void
.end method

.method public onLocaleChanged()V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/sec/android/cover/clearcover/widget/ClearCoverDualClockWidget$1;->this$0:Lcom/sec/android/cover/clearcover/widget/ClearCoverDualClockWidget;

    invoke-static {v0, v1}, Lcom/sec/android/cover/clearcover/widget/ClearCoverDualClockWidget;->-set2(Lcom/sec/android/cover/clearcover/widget/ClearCoverDualClockWidget;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    iget-object v0, p0, Lcom/sec/android/cover/clearcover/widget/ClearCoverDualClockWidget$1;->this$0:Lcom/sec/android/cover/clearcover/widget/ClearCoverDualClockWidget;

    invoke-static {v0, v1}, Lcom/sec/android/cover/clearcover/widget/ClearCoverDualClockWidget;->-set0(Lcom/sec/android/cover/clearcover/widget/ClearCoverDualClockWidget;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    iget-object v0, p0, Lcom/sec/android/cover/clearcover/widget/ClearCoverDualClockWidget$1;->this$0:Lcom/sec/android/cover/clearcover/widget/ClearCoverDualClockWidget;

    invoke-virtual {v0}, Lcom/sec/android/cover/clearcover/widget/ClearCoverDualClockWidget;->refreshClock()V

    iget-object v0, p0, Lcom/sec/android/cover/clearcover/widget/ClearCoverDualClockWidget$1;->this$0:Lcom/sec/android/cover/clearcover/widget/ClearCoverDualClockWidget;

    invoke-static {v0}, Lcom/sec/android/cover/clearcover/widget/ClearCoverDualClockWidget;->-wrap1(Lcom/sec/android/cover/clearcover/widget/ClearCoverDualClockWidget;)V

    return-void
.end method

.method public onThemeFontChanged(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/cover/clearcover/widget/ClearCoverDualClockWidget$1;->this$0:Lcom/sec/android/cover/clearcover/widget/ClearCoverDualClockWidget;

    invoke-static {v0, p1}, Lcom/sec/android/cover/clearcover/widget/ClearCoverDualClockWidget;->-wrap0(Lcom/sec/android/cover/clearcover/widget/ClearCoverDualClockWidget;Ljava/lang/String;)V

    return-void
.end method

.method public onTimeChanged()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/cover/clearcover/widget/ClearCoverDualClockWidget$1;->this$0:Lcom/sec/android/cover/clearcover/widget/ClearCoverDualClockWidget;

    iget-object v1, p0, Lcom/sec/android/cover/clearcover/widget/ClearCoverDualClockWidget$1;->this$0:Lcom/sec/android/cover/clearcover/widget/ClearCoverDualClockWidget;

    invoke-static {v1}, Lcom/sec/android/cover/clearcover/widget/ClearCoverDualClockWidget;->-get2(Lcom/sec/android/cover/clearcover/widget/ClearCoverDualClockWidget;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/sec/android/cover/CoverUtils;->is24HourModeEnabled(Landroid/content/Context;)Z

    move-result v1

    invoke-static {v0, v1}, Lcom/sec/android/cover/clearcover/widget/ClearCoverDualClockWidget;->-set1(Lcom/sec/android/cover/clearcover/widget/ClearCoverDualClockWidget;Z)Z

    iget-object v0, p0, Lcom/sec/android/cover/clearcover/widget/ClearCoverDualClockWidget$1;->this$0:Lcom/sec/android/cover/clearcover/widget/ClearCoverDualClockWidget;

    invoke-static {v0}, Lcom/sec/android/cover/clearcover/widget/ClearCoverDualClockWidget;->-wrap1(Lcom/sec/android/cover/clearcover/widget/ClearCoverDualClockWidget;)V

    return-void
.end method

.method public onUserSwitched(II)V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/cover/clearcover/widget/ClearCoverDualClockWidget$1;->this$0:Lcom/sec/android/cover/clearcover/widget/ClearCoverDualClockWidget;

    iget-object v1, p0, Lcom/sec/android/cover/clearcover/widget/ClearCoverDualClockWidget$1;->this$0:Lcom/sec/android/cover/clearcover/widget/ClearCoverDualClockWidget;

    invoke-static {v1}, Lcom/sec/android/cover/clearcover/widget/ClearCoverDualClockWidget;->-get2(Lcom/sec/android/cover/clearcover/widget/ClearCoverDualClockWidget;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/sec/android/cover/CoverUtils;->is24HourModeEnabled(Landroid/content/Context;)Z

    move-result v1

    invoke-static {v0, v1}, Lcom/sec/android/cover/clearcover/widget/ClearCoverDualClockWidget;->-set1(Lcom/sec/android/cover/clearcover/widget/ClearCoverDualClockWidget;Z)Z

    iget-object v0, p0, Lcom/sec/android/cover/clearcover/widget/ClearCoverDualClockWidget$1;->this$0:Lcom/sec/android/cover/clearcover/widget/ClearCoverDualClockWidget;

    invoke-static {v0}, Lcom/sec/android/cover/clearcover/widget/ClearCoverDualClockWidget;->-wrap1(Lcom/sec/android/cover/clearcover/widget/ClearCoverDualClockWidget;)V

    return-void
.end method
