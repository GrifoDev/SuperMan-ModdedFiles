.class Lcom/samsung/android/settings/nearby/NearbyEnabler$1;
.super Ljava/lang/Object;
.source "NearbyEnabler.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/nearby/NearbyEnabler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/nearby/NearbyEnabler;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/nearby/NearbyEnabler;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/nearby/NearbyEnabler$1;->this$0:Lcom/samsung/android/settings/nearby/NearbyEnabler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 5

    invoke-static {p2}, Lcom/samsung/android/settings/nearby/IMediaServer$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/settings/nearby/IMediaServer;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/settings/nearby/NearbyEnabler;->-set2(Lcom/samsung/android/settings/nearby/IMediaServer;)Lcom/samsung/android/settings/nearby/IMediaServer;

    const-string/jumbo v1, "NearbyEnabler"

    const-string/jumbo v2, "onServiceConnected"

    const-string/jumbo v3, ""

    invoke-static {v1, v2, v3}, Lcom/samsung/android/settings/nearby/DLog;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/samsung/android/settings/nearby/NearbyEnabler;->-get3()Lcom/samsung/android/settings/nearby/IMediaServer;

    move-result-object v1

    if-nez v1, :cond_0

    const-string/jumbo v1, "NearbyEnabler"

    const-string/jumbo v2, "onServiceConnected"

    const-string/jumbo v3, "mIMediaServer == null"

    invoke-static {v1, v2, v3}, Lcom/samsung/android/settings/nearby/DLog;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    :try_start_0
    invoke-static {}, Lcom/samsung/android/settings/nearby/NearbyEnabler;->-get3()Lcom/samsung/android/settings/nearby/IMediaServer;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/settings/nearby/NearbyEnabler$1;->this$0:Lcom/samsung/android/settings/nearby/NearbyEnabler;

    invoke-static {v2}, Lcom/samsung/android/settings/nearby/NearbyEnabler;->-get0(Lcom/samsung/android/settings/nearby/NearbyEnabler;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/samsung/android/settings/nearby/IMediaServer;->resume(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/samsung/android/settings/nearby/NearbyEnabler$1;->this$0:Lcom/samsung/android/settings/nearby/NearbyEnabler;

    invoke-static {v1}, Lcom/samsung/android/settings/nearby/NearbyEnabler;->-get1(Lcom/samsung/android/settings/nearby/NearbyEnabler;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string/jumbo v1, "NearbyEnabler"

    const-string/jumbo v2, "onServiceConnected"

    const-string/jumbo v3, "Auto Start!!"

    invoke-static {v1, v2, v3}, Lcom/samsung/android/settings/nearby/DLog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/samsung/android/settings/nearby/NearbyEnabler;->-get3()Lcom/samsung/android/settings/nearby/IMediaServer;

    move-result-object v1

    invoke-interface {v1}, Lcom/samsung/android/settings/nearby/IMediaServer;->startMediaServer()V

    iget-object v1, p0, Lcom/samsung/android/settings/nearby/NearbyEnabler$1;->this$0:Lcom/samsung/android/settings/nearby/NearbyEnabler;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/samsung/android/settings/nearby/NearbyEnabler;->-set0(Lcom/samsung/android/settings/nearby/NearbyEnabler;Z)Z

    iget-object v1, p0, Lcom/samsung/android/settings/nearby/NearbyEnabler$1;->this$0:Lcom/samsung/android/settings/nearby/NearbyEnabler;

    invoke-static {v1}, Lcom/samsung/android/settings/nearby/NearbyEnabler;->-get5(Lcom/samsung/android/settings/nearby/NearbyEnabler;)Lcom/android/settings/widget/SwitchBar;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/samsung/android/settings/nearby/NearbyEnabler$1;->this$0:Lcom/samsung/android/settings/nearby/NearbyEnabler;

    invoke-static {v1}, Lcom/samsung/android/settings/nearby/NearbyEnabler;->-get5(Lcom/samsung/android/settings/nearby/NearbyEnabler;)Lcom/android/settings/widget/SwitchBar;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/settings/widget/SwitchBar;->setChecked(Z)V

    iget-object v1, p0, Lcom/samsung/android/settings/nearby/NearbyEnabler$1;->this$0:Lcom/samsung/android/settings/nearby/NearbyEnabler;

    invoke-static {v1}, Lcom/samsung/android/settings/nearby/NearbyEnabler;->-get5(Lcom/samsung/android/settings/nearby/NearbyEnabler;)Lcom/android/settings/widget/SwitchBar;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/settings/widget/SwitchBar;->setEnabled(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/samsung/android/settings/nearby/NearbyEnabler$1;->this$0:Lcom/samsung/android/settings/nearby/NearbyEnabler;

    invoke-static {v1}, Lcom/samsung/android/settings/nearby/NearbyEnabler;->-wrap2(Lcom/samsung/android/settings/nearby/NearbyEnabler;)V

    iget-object v1, p0, Lcom/samsung/android/settings/nearby/NearbyEnabler$1;->this$0:Lcom/samsung/android/settings/nearby/NearbyEnabler;

    invoke-static {v1}, Lcom/samsung/android/settings/nearby/NearbyEnabler;->-wrap3(Lcom/samsung/android/settings/nearby/NearbyEnabler;)V

    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v1, "NearbyEnabler"

    const-string/jumbo v2, "onServiceConnected"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "RemoteException: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/samsung/android/settings/nearby/DLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 3

    const-string/jumbo v0, "NearbyEnabler"

    const-string/jumbo v1, "onServiceDisconnected"

    invoke-virtual {p1}, Landroid/content/ComponentName;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/samsung/android/settings/nearby/DLog;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/samsung/android/settings/nearby/NearbyEnabler;->-set2(Lcom/samsung/android/settings/nearby/IMediaServer;)Lcom/samsung/android/settings/nearby/IMediaServer;

    return-void
.end method
