.class Lcom/samsung/context/sdk/samsunganalytics/a/g/a/a$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/context/sdk/samsunganalytics/a/g/a/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/context/sdk/samsunganalytics/a/g/a/a;


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 3

    const/4 v2, 0x0

    const-string/jumbo v0, "DLC Sender"

    const-string/jumbo v1, "DLC Client ServiceConnected"

    invoke-static {v0, v1}, Lcom/samsung/context/sdk/samsunganalytics/a/i/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/context/sdk/samsunganalytics/a/g/a/a$1;->a:Lcom/samsung/context/sdk/samsunganalytics/a/g/a/a;

    invoke-static {p2}, Lcom/sec/spp/push/dlc/api/IDlcService$a;->a(Landroid/os/IBinder;)Lcom/sec/spp/push/dlc/api/IDlcService;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/context/sdk/samsunganalytics/a/g/a/a;->a(Lcom/samsung/context/sdk/samsunganalytics/a/g/a/a;Lcom/sec/spp/push/dlc/api/IDlcService;)Lcom/sec/spp/push/dlc/api/IDlcService;

    iget-object v0, p0, Lcom/samsung/context/sdk/samsunganalytics/a/g/a/a$1;->a:Lcom/samsung/context/sdk/samsunganalytics/a/g/a/a;

    invoke-static {v0}, Lcom/samsung/context/sdk/samsunganalytics/a/g/a/a;->a(Lcom/samsung/context/sdk/samsunganalytics/a/g/a/a;)Landroid/content/BroadcastReceiver;

    move-result-object v0

    if-nez v0, :cond_0

    :goto_0
    iget-object v0, p0, Lcom/samsung/context/sdk/samsunganalytics/a/g/a/a$1;->a:Lcom/samsung/context/sdk/samsunganalytics/a/g/a/a;

    invoke-static {v0}, Lcom/samsung/context/sdk/samsunganalytics/a/g/a/a;->c(Lcom/samsung/context/sdk/samsunganalytics/a/g/a/a;)Lcom/samsung/context/sdk/samsunganalytics/a/a;

    move-result-object v0

    if-nez v0, :cond_1

    :goto_1
    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/context/sdk/samsunganalytics/a/g/a/a$1;->a:Lcom/samsung/context/sdk/samsunganalytics/a/g/a/a;

    invoke-static {v0}, Lcom/samsung/context/sdk/samsunganalytics/a/g/a/a;->b(Lcom/samsung/context/sdk/samsunganalytics/a/g/a/a;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/context/sdk/samsunganalytics/a/g/a/a$1;->a:Lcom/samsung/context/sdk/samsunganalytics/a/g/a/a;

    invoke-static {v1}, Lcom/samsung/context/sdk/samsunganalytics/a/g/a/a;->a(Lcom/samsung/context/sdk/samsunganalytics/a/g/a/a;)Landroid/content/BroadcastReceiver;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    iget-object v0, p0, Lcom/samsung/context/sdk/samsunganalytics/a/g/a/a$1;->a:Lcom/samsung/context/sdk/samsunganalytics/a/g/a/a;

    invoke-static {v0, v2}, Lcom/samsung/context/sdk/samsunganalytics/a/g/a/a;->a(Lcom/samsung/context/sdk/samsunganalytics/a/g/a/a;Landroid/content/BroadcastReceiver;)Landroid/content/BroadcastReceiver;

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/samsung/context/sdk/samsunganalytics/a/g/a/a$1;->a:Lcom/samsung/context/sdk/samsunganalytics/a/g/a/a;

    invoke-static {v0}, Lcom/samsung/context/sdk/samsunganalytics/a/g/a/a;->c(Lcom/samsung/context/sdk/samsunganalytics/a/g/a/a;)Lcom/samsung/context/sdk/samsunganalytics/a/a;

    move-result-object v0

    invoke-interface {v0, v2}, Lcom/samsung/context/sdk/samsunganalytics/a/a;->a(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2

    const-string/jumbo v0, "DLC Sender"

    const-string/jumbo v1, "Client ServiceDisconnected"

    invoke-static {v0, v1}, Lcom/samsung/context/sdk/samsunganalytics/a/i/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/context/sdk/samsunganalytics/a/g/a/a$1;->a:Lcom/samsung/context/sdk/samsunganalytics/a/g/a/a;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/samsung/context/sdk/samsunganalytics/a/g/a/a;->a(Lcom/samsung/context/sdk/samsunganalytics/a/g/a/a;Lcom/sec/spp/push/dlc/api/IDlcService;)Lcom/sec/spp/push/dlc/api/IDlcService;

    iget-object v0, p0, Lcom/samsung/context/sdk/samsunganalytics/a/g/a/a$1;->a:Lcom/samsung/context/sdk/samsunganalytics/a/g/a/a;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/samsung/context/sdk/samsunganalytics/a/g/a/a;->a(Lcom/samsung/context/sdk/samsunganalytics/a/g/a/a;Z)Z

    return-void
.end method
