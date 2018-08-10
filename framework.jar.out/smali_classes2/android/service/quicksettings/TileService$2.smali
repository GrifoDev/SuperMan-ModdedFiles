.class Landroid/service/quicksettings/TileService$2;
.super Landroid/service/quicksettings/IQSTileService$Stub;
.source "TileService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/service/quicksettings/TileService;->onBind(Landroid/content/Intent;)Landroid/os/IBinder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/service/quicksettings/TileService;


# direct methods
.method constructor <init>(Landroid/service/quicksettings/TileService;)V
    .locals 0

    iput-object p1, p0, Landroid/service/quicksettings/TileService$2;->this$0:Landroid/service/quicksettings/TileService;

    invoke-direct {p0}, Landroid/service/quicksettings/IQSTileService$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/os/IBinder;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Landroid/service/quicksettings/TileService$2;->this$0:Landroid/service/quicksettings/TileService;

    invoke-static {v0}, Landroid/service/quicksettings/TileService;->-get0(Landroid/service/quicksettings/TileService;)Landroid/service/quicksettings/TileService$H;

    move-result-object v0

    const/4 v1, 0x5

    invoke-virtual {v0, v1, p1}, Landroid/service/quicksettings/TileService$H;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public onStartListening()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Landroid/service/quicksettings/TileService$2;->this$0:Landroid/service/quicksettings/TileService;

    invoke-static {v0}, Landroid/service/quicksettings/TileService;->-get0(Landroid/service/quicksettings/TileService;)Landroid/service/quicksettings/TileService$H;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/service/quicksettings/TileService$H;->sendEmptyMessage(I)Z

    return-void
.end method

.method public onStopListening()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Landroid/service/quicksettings/TileService$2;->this$0:Landroid/service/quicksettings/TileService;

    invoke-static {v0}, Landroid/service/quicksettings/TileService;->-get0(Landroid/service/quicksettings/TileService;)Landroid/service/quicksettings/TileService$H;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/service/quicksettings/TileService$H;->sendEmptyMessage(I)Z

    return-void
.end method

.method public onTileAdded()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Landroid/service/quicksettings/TileService$2;->this$0:Landroid/service/quicksettings/TileService;

    invoke-static {v0}, Landroid/service/quicksettings/TileService;->-get0(Landroid/service/quicksettings/TileService;)Landroid/service/quicksettings/TileService$H;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/service/quicksettings/TileService$H;->sendEmptyMessage(I)Z

    return-void
.end method

.method public onTileRemoved()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Landroid/service/quicksettings/TileService$2;->this$0:Landroid/service/quicksettings/TileService;

    invoke-static {v0}, Landroid/service/quicksettings/TileService;->-get0(Landroid/service/quicksettings/TileService;)Landroid/service/quicksettings/TileService$H;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/service/quicksettings/TileService$H;->sendEmptyMessage(I)Z

    return-void
.end method

.method public onUnlockComplete()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Landroid/service/quicksettings/TileService$2;->this$0:Landroid/service/quicksettings/TileService;

    invoke-static {v0}, Landroid/service/quicksettings/TileService;->-get0(Landroid/service/quicksettings/TileService;)Landroid/service/quicksettings/TileService$H;

    move-result-object v0

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Landroid/service/quicksettings/TileService$H;->sendEmptyMessage(I)Z

    return-void
.end method

.method public semGetDetailView()Landroid/widget/RemoteViews;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Landroid/service/quicksettings/TileService$2;->this$0:Landroid/service/quicksettings/TileService;

    invoke-virtual {v0}, Landroid/service/quicksettings/TileService;->semGetDetailView()Landroid/widget/RemoteViews;

    move-result-object v0

    return-object v0
.end method

.method public semGetDetailViewSettingButtonName()Ljava/lang/CharSequence;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Landroid/service/quicksettings/TileService$2;->this$0:Landroid/service/quicksettings/TileService;

    invoke-virtual {v0}, Landroid/service/quicksettings/TileService;->semGetDetailViewSettingButtonName()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public semGetDetailViewTitle()Ljava/lang/CharSequence;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Landroid/service/quicksettings/TileService$2;->this$0:Landroid/service/quicksettings/TileService;

    invoke-virtual {v0}, Landroid/service/quicksettings/TileService;->semGetDetailViewTitle()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public semGetSettingsIntent()Landroid/content/Intent;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Landroid/service/quicksettings/TileService$2;->this$0:Landroid/service/quicksettings/TileService;

    invoke-virtual {v0}, Landroid/service/quicksettings/TileService;->semGetSettingsIntent()Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method public semIsToggleButtonChecked()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Landroid/service/quicksettings/TileService$2;->this$0:Landroid/service/quicksettings/TileService;

    invoke-virtual {v0}, Landroid/service/quicksettings/TileService;->semIsToggleButtonChecked()Z

    move-result v0

    return v0
.end method

.method public semIsToggleButtonExists()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Landroid/service/quicksettings/TileService$2;->this$0:Landroid/service/quicksettings/TileService;

    invoke-virtual {v0}, Landroid/service/quicksettings/TileService;->semIsToggleButtonExists()Z

    move-result v0

    return v0
.end method

.method public semSetToggleButtonChecked(Z)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Landroid/service/quicksettings/TileService$2;->this$0:Landroid/service/quicksettings/TileService;

    invoke-static {v0}, Landroid/service/quicksettings/TileService;->-get0(Landroid/service/quicksettings/TileService;)Landroid/service/quicksettings/TileService$H;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/16 v2, 0x8

    invoke-virtual {v0, v2, v1}, Landroid/service/quicksettings/TileService$H;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method
