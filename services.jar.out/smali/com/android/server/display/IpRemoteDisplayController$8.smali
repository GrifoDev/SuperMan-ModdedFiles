.class Lcom/android/server/display/IpRemoteDisplayController$8;
.super Ljava/lang/Object;
.source "IpRemoteDisplayController.java"

# interfaces
.implements Landroid/media/RemoteDisplayCallback$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/display/IpRemoteDisplayController;->enableWifiDisplay(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/display/IpRemoteDisplayController;


# direct methods
.method constructor <init>(Lcom/android/server/display/IpRemoteDisplayController;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/display/IpRemoteDisplayController$8;->this$0:Lcom/android/server/display/IpRemoteDisplayController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onHeadSetConnected()V
    .locals 2

    iget-object v0, p0, Lcom/android/server/display/IpRemoteDisplayController$8;->this$0:Lcom/android/server/display/IpRemoteDisplayController;

    invoke-static {v0}, Lcom/android/server/display/IpRemoteDisplayController;->-get13(Lcom/android/server/display/IpRemoteDisplayController;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "IpRemoteDisplayController"

    const-string/jumbo v1, "onHeadSetConnected! we will disconnect WFD!"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/display/IpRemoteDisplayController$8;->this$0:Lcom/android/server/display/IpRemoteDisplayController;

    invoke-static {v0}, Lcom/android/server/display/IpRemoteDisplayController;->-wrap4(Lcom/android/server/display/IpRemoteDisplayController;)V

    :cond_0
    return-void
.end method

.method public onQosLevelChanged(I)V
    .locals 3

    iget-object v0, p0, Lcom/android/server/display/IpRemoteDisplayController$8;->this$0:Lcom/android/server/display/IpRemoteDisplayController;

    invoke-static {v0}, Lcom/android/server/display/IpRemoteDisplayController;->-get9(Lcom/android/server/display/IpRemoteDisplayController;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "IpRemoteDisplayController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onQoSLevelChanged! level : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/display/IpRemoteDisplayController$8;->this$0:Lcom/android/server/display/IpRemoteDisplayController;

    invoke-static {v0}, Lcom/android/server/display/IpRemoteDisplayController;->-get7(Lcom/android/server/display/IpRemoteDisplayController;)Lcom/android/server/display/IpRemoteDisplayController$Listener;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/server/display/IpRemoteDisplayController$Listener;->onQosLevelChanged(I)V

    iget-object v0, p0, Lcom/android/server/display/IpRemoteDisplayController$8;->this$0:Lcom/android/server/display/IpRemoteDisplayController;

    const/4 v1, 0x5

    invoke-static {v0, p1, v1}, Lcom/android/server/display/IpRemoteDisplayController;->-wrap9(Lcom/android/server/display/IpRemoteDisplayController;II)V

    :cond_0
    return-void
.end method

.method public onRotationChanged(I)V
    .locals 5

    const/4 v2, 0x0

    const/4 v1, 0x1

    iget-object v0, p0, Lcom/android/server/display/IpRemoteDisplayController$8;->this$0:Lcom/android/server/display/IpRemoteDisplayController;

    invoke-static {v0}, Lcom/android/server/display/IpRemoteDisplayController;->-get7(Lcom/android/server/display/IpRemoteDisplayController;)Lcom/android/server/display/IpRemoteDisplayController$Listener;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/display/IpRemoteDisplayController$8;->this$0:Lcom/android/server/display/IpRemoteDisplayController;

    invoke-static {v0}, Lcom/android/server/display/IpRemoteDisplayController;->-get7(Lcom/android/server/display/IpRemoteDisplayController;)Lcom/android/server/display/IpRemoteDisplayController$Listener;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/server/display/IpRemoteDisplayController$Listener;->onRotationChanged(I)V

    const-string/jumbo v0, "IpRemoteDisplayController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "onRotationChanged! << "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/display/IpRemoteDisplayController$8;->this$0:Lcom/android/server/display/IpRemoteDisplayController;

    invoke-static {v0}, Lcom/android/server/display/IpRemoteDisplayController;->-get12(Lcom/android/server/display/IpRemoteDisplayController;)Landroid/media/WFDUibcManager;

    move-result-object v0

    if-eqz v0, :cond_2

    move v3, v1

    :goto_0
    if-eq p1, v1, :cond_0

    const/4 v0, 0x3

    if-ne p1, v0, :cond_3

    :cond_0
    move v0, v1

    :goto_1
    and-int/2addr v0, v3

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/server/display/IpRemoteDisplayController$8;->this$0:Lcom/android/server/display/IpRemoteDisplayController;

    invoke-static {v0}, Lcom/android/server/display/IpRemoteDisplayController;->-get12(Lcom/android/server/display/IpRemoteDisplayController;)Landroid/media/WFDUibcManager;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/media/WFDUibcManager;->setPortraitMode(Z)V

    :cond_1
    :goto_2
    return-void

    :cond_2
    move v3, v2

    goto :goto_0

    :cond_3
    move v0, v2

    goto :goto_1

    :cond_4
    iget-object v0, p0, Lcom/android/server/display/IpRemoteDisplayController$8;->this$0:Lcom/android/server/display/IpRemoteDisplayController;

    invoke-static {v0}, Lcom/android/server/display/IpRemoteDisplayController;->-get12(Lcom/android/server/display/IpRemoteDisplayController;)Landroid/media/WFDUibcManager;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/media/WFDUibcManager;->setPortraitMode(Z)V

    goto :goto_2
.end method

.method public onTerminateRequested()V
    .locals 2

    const-string/jumbo v0, "IpRemoteDisplayController"

    const-string/jumbo v1, "onTerminateRequested! we will disconnect WFD!"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/display/IpRemoteDisplayController$8;->this$0:Lcom/android/server/display/IpRemoteDisplayController;

    invoke-static {v0}, Lcom/android/server/display/IpRemoteDisplayController;->-wrap4(Lcom/android/server/display/IpRemoteDisplayController;)V

    return-void
.end method

.method public onTransportChanged(I)V
    .locals 3

    iget-object v0, p0, Lcom/android/server/display/IpRemoteDisplayController$8;->this$0:Lcom/android/server/display/IpRemoteDisplayController;

    invoke-static {v0}, Lcom/android/server/display/IpRemoteDisplayController;->-get9(Lcom/android/server/display/IpRemoteDisplayController;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "IpRemoteDisplayController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onTransportChanged! << "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public onVolumeChanged(IIIZ)V
    .locals 4

    iget-object v1, p0, Lcom/android/server/display/IpRemoteDisplayController$8;->this$0:Lcom/android/server/display/IpRemoteDisplayController;

    invoke-static {v1}, Lcom/android/server/display/IpRemoteDisplayController;->-get9(Lcom/android/server/display/IpRemoteDisplayController;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string/jumbo v1, "IpRemoteDisplayController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onVolumeChanged! minVol: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", maxVol: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", curVol: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", curVol: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v1, "minVol"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo v1, "maxVol"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo v1, "curVol"

    invoke-virtual {v0, v1, p3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo v1, "isMute"

    invoke-virtual {v0, v1, p4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    iget-object v1, p0, Lcom/android/server/display/IpRemoteDisplayController$8;->this$0:Lcom/android/server/display/IpRemoteDisplayController;

    const/16 v2, 0x9

    invoke-static {v1, v0, v2}, Lcom/android/server/display/IpRemoteDisplayController;->-wrap10(Lcom/android/server/display/IpRemoteDisplayController;Landroid/os/Bundle;I)V

    :cond_0
    return-void
.end method

.method public onWeakNetwork()V
    .locals 2

    iget-object v0, p0, Lcom/android/server/display/IpRemoteDisplayController$8;->this$0:Lcom/android/server/display/IpRemoteDisplayController;

    invoke-static {v0}, Lcom/android/server/display/IpRemoteDisplayController;->-get9(Lcom/android/server/display/IpRemoteDisplayController;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "IpRemoteDisplayController"

    const-string/jumbo v1, "onWeakNetwork!"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method
