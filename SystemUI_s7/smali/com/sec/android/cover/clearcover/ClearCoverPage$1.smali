.class Lcom/sec/android/cover/clearcover/ClearCoverPage$1;
.super Lcom/sec/android/cover/monitor/CoverUpdateMonitorCallback;
.source "ClearCoverPage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/cover/clearcover/ClearCoverPage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/cover/clearcover/ClearCoverPage;


# direct methods
.method constructor <init>(Lcom/sec/android/cover/clearcover/ClearCoverPage;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/cover/clearcover/ClearCoverPage$1;->this$0:Lcom/sec/android/cover/clearcover/ClearCoverPage;

    invoke-direct {p0}, Lcom/sec/android/cover/monitor/CoverUpdateMonitorCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onContentChanged(Landroid/net/Uri;)V
    .locals 2

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "dualclock_menu_settings"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/sec/android/cover/clearcover/ClearCoverPage;->-get0()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "DualClockSettingObserver.onChagne : DualClockSetting changed"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/cover/clearcover/ClearCoverPage$1;->this$0:Lcom/sec/android/cover/clearcover/ClearCoverPage;

    invoke-static {v0}, Lcom/sec/android/cover/clearcover/ClearCoverPage;->-wrap0(Lcom/sec/android/cover/clearcover/ClearCoverPage;)V

    :cond_0
    return-void
.end method

.method public onCoverStateChanged(Lcom/samsung/android/cover/CoverState;)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/cover/clearcover/ClearCoverPage$1;->this$0:Lcom/sec/android/cover/clearcover/ClearCoverPage;

    iput-object p1, v0, Lcom/sec/android/cover/clearcover/ClearCoverPage;->mCoverState:Lcom/samsung/android/cover/CoverState;

    if-eqz p1, :cond_0

    iget-boolean v0, p1, Lcom/samsung/android/cover/CoverState;->switchState:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/cover/clearcover/ClearCoverPage$1;->this$0:Lcom/sec/android/cover/clearcover/ClearCoverPage;

    invoke-static {v0}, Lcom/sec/android/cover/clearcover/ClearCoverPage;->-get3(Lcom/sec/android/cover/clearcover/ClearCoverPage;)Lcom/sec/android/cover/widget/RemoteViewContainerView;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/cover/clearcover/ClearCoverPage$1;->this$0:Lcom/sec/android/cover/clearcover/ClearCoverPage;

    invoke-static {v0}, Lcom/sec/android/cover/clearcover/ClearCoverPage;->-get3(Lcom/sec/android/cover/clearcover/ClearCoverPage;)Lcom/sec/android/cover/widget/RemoteViewContainerView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/cover/widget/RemoteViewContainerView;->removeRemoteView()V

    :cond_0
    return-void
.end method

.method public onRemoteViewUpdated(Lcom/sec/android/cover/monitor/CoverUpdateMonitor$RemoteViewInfo;)V
    .locals 4

    iget-object v0, p1, Lcom/sec/android/cover/monitor/CoverUpdateMonitor$RemoteViewInfo;->mType:Ljava/lang/String;

    invoke-static {}, Lcom/sec/android/cover/clearcover/ClearCoverPage;->-get0()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onRemoteViewUpdated : Type="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/sec/android/cover/clearcover/ClearCoverPage$1;->this$0:Lcom/sec/android/cover/clearcover/ClearCoverPage;

    invoke-static {v1, p1}, Lcom/sec/android/cover/clearcover/ClearCoverPage;->-wrap3(Lcom/sec/android/cover/clearcover/ClearCoverPage;Lcom/sec/android/cover/monitor/CoverUpdateMonitor$RemoteViewInfo;)V

    return-void
.end method

.method public onRoamingStateChanged(Z)V
    .locals 2

    invoke-static {}, Lcom/sec/android/cover/clearcover/ClearCoverPage;->-get0()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "onRoamingStateChanged()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/cover/clearcover/ClearCoverPage$1;->this$0:Lcom/sec/android/cover/clearcover/ClearCoverPage;

    invoke-static {v0}, Lcom/sec/android/cover/clearcover/ClearCoverPage;->-wrap0(Lcom/sec/android/cover/clearcover/ClearCoverPage;)V

    return-void
.end method

.method public onScreenTurnedOff()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/cover/clearcover/ClearCoverPage$1;->this$0:Lcom/sec/android/cover/clearcover/ClearCoverPage;

    invoke-static {v0}, Lcom/sec/android/cover/clearcover/ClearCoverPage;->-get3(Lcom/sec/android/cover/clearcover/ClearCoverPage;)Lcom/sec/android/cover/widget/RemoteViewContainerView;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/cover/clearcover/ClearCoverPage$1;->this$0:Lcom/sec/android/cover/clearcover/ClearCoverPage;

    invoke-static {v0}, Lcom/sec/android/cover/clearcover/ClearCoverPage;->-get3(Lcom/sec/android/cover/clearcover/ClearCoverPage;)Lcom/sec/android/cover/widget/RemoteViewContainerView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/cover/widget/RemoteViewContainerView;->removeRemoteView()V

    :cond_0
    return-void
.end method
