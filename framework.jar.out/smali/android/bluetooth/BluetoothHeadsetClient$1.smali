.class Landroid/bluetooth/BluetoothHeadsetClient$1;
.super Landroid/bluetooth/IBluetoothStateChangeCallback$Stub;
.source "BluetoothHeadsetClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/bluetooth/BluetoothHeadsetClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/bluetooth/BluetoothHeadsetClient;


# direct methods
.method constructor <init>(Landroid/bluetooth/BluetoothHeadsetClient;)V
    .locals 0
    .param p1, "this$0"    # Landroid/bluetooth/BluetoothHeadsetClient;

    .prologue
    .line 406
    iput-object p1, p0, Landroid/bluetooth/BluetoothHeadsetClient$1;->this$0:Landroid/bluetooth/BluetoothHeadsetClient;

    invoke-direct {p0}, Landroid/bluetooth/IBluetoothStateChangeCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onBluetoothStateChange(Z)V
    .locals 5
    .param p1, "up"    # Z

    .prologue
    .line 409
    const-string/jumbo v2, "BluetoothHeadsetClient"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "onBluetoothStateChange: up="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 410
    if-nez p1, :cond_1

    .line 412
    iget-object v2, p0, Landroid/bluetooth/BluetoothHeadsetClient$1;->this$0:Landroid/bluetooth/BluetoothHeadsetClient;

    invoke-static {v2}, Landroid/bluetooth/BluetoothHeadsetClient;->-get0(Landroid/bluetooth/BluetoothHeadsetClient;)Landroid/content/ServiceConnection;

    move-result-object v3

    monitor-enter v3

    .line 414
    :try_start_0
    iget-object v2, p0, Landroid/bluetooth/BluetoothHeadsetClient$1;->this$0:Landroid/bluetooth/BluetoothHeadsetClient;

    const/4 v4, 0x0

    invoke-static {v2, v4}, Landroid/bluetooth/BluetoothHeadsetClient;->-set0(Landroid/bluetooth/BluetoothHeadsetClient;Landroid/bluetooth/IBluetoothHeadsetClient;)Landroid/bluetooth/IBluetoothHeadsetClient;

    .line 415
    iget-object v2, p0, Landroid/bluetooth/BluetoothHeadsetClient$1;->this$0:Landroid/bluetooth/BluetoothHeadsetClient;

    invoke-static {v2}, Landroid/bluetooth/BluetoothHeadsetClient;->-get1(Landroid/bluetooth/BluetoothHeadsetClient;)Landroid/content/Context;

    move-result-object v2

    iget-object v4, p0, Landroid/bluetooth/BluetoothHeadsetClient$1;->this$0:Landroid/bluetooth/BluetoothHeadsetClient;

    invoke-static {v4}, Landroid/bluetooth/BluetoothHeadsetClient;->-get0(Landroid/bluetooth/BluetoothHeadsetClient;)Landroid/content/ServiceConnection;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    :goto_0
    monitor-exit v3

    .line 408
    return-void

    .line 416
    :catch_0
    move-exception v1

    .line 417
    .local v1, "re":Ljava/lang/Exception;
    :try_start_1
    const-string/jumbo v2, "BluetoothHeadsetClient"

    const-string/jumbo v4, ""

    invoke-static {v2, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 412
    .end local v1    # "re":Ljava/lang/Exception;
    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2

    .line 421
    :cond_1
    iget-object v2, p0, Landroid/bluetooth/BluetoothHeadsetClient$1;->this$0:Landroid/bluetooth/BluetoothHeadsetClient;

    invoke-static {v2}, Landroid/bluetooth/BluetoothHeadsetClient;->-get0(Landroid/bluetooth/BluetoothHeadsetClient;)Landroid/content/ServiceConnection;

    move-result-object v3

    monitor-enter v3

    .line 423
    :try_start_2
    iget-object v2, p0, Landroid/bluetooth/BluetoothHeadsetClient$1;->this$0:Landroid/bluetooth/BluetoothHeadsetClient;

    invoke-static {v2}, Landroid/bluetooth/BluetoothHeadsetClient;->-get2(Landroid/bluetooth/BluetoothHeadsetClient;)Landroid/bluetooth/IBluetoothHeadsetClient;

    move-result-object v2

    if-nez v2, :cond_0

    .line 425
    new-instance v0, Landroid/content/Intent;

    const-class v2, Landroid/bluetooth/IBluetoothHeadsetClient;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 426
    .local v0, "intent":Landroid/content/Intent;
    iget-object v2, p0, Landroid/bluetooth/BluetoothHeadsetClient$1;->this$0:Landroid/bluetooth/BluetoothHeadsetClient;

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothHeadsetClient;->doBind()Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_0

    .line 428
    .end local v0    # "intent":Landroid/content/Intent;
    :catch_1
    move-exception v1

    .line 429
    .restart local v1    # "re":Ljava/lang/Exception;
    :try_start_3
    const-string/jumbo v2, "BluetoothHeadsetClient"

    const-string/jumbo v4, ""

    invoke-static {v2, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_0

    .line 421
    .end local v1    # "re":Ljava/lang/Exception;
    :catchall_1
    move-exception v2

    monitor-exit v3

    throw v2
.end method
