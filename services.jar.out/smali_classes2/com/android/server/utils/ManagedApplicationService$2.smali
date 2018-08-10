.class Lcom/android/server/utils/ManagedApplicationService$2;
.super Ljava/lang/Object;
.source "ManagedApplicationService.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/utils/ManagedApplicationService;->connect()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/utils/ManagedApplicationService;

.field final synthetic val$intent:Landroid/content/Intent;


# direct methods
.method constructor <init>(Lcom/android/server/utils/ManagedApplicationService;Landroid/content/Intent;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/utils/ManagedApplicationService$2;->this$0:Lcom/android/server/utils/ManagedApplicationService;

    iput-object p2, p0, Lcom/android/server/utils/ManagedApplicationService$2;->val$intent:Landroid/content/Intent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 8

    const/4 v2, 0x0

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/android/server/utils/ManagedApplicationService$2;->this$0:Lcom/android/server/utils/ManagedApplicationService;

    invoke-static {v4}, Lcom/android/server/utils/ManagedApplicationService;->-get5(Lcom/android/server/utils/ManagedApplicationService;)Ljava/lang/Object;

    move-result-object v5

    monitor-enter v5

    :try_start_0
    iget-object v4, p0, Lcom/android/server/utils/ManagedApplicationService$2;->this$0:Lcom/android/server/utils/ManagedApplicationService;

    invoke-static {v4}, Lcom/android/server/utils/ManagedApplicationService;->-get6(Lcom/android/server/utils/ManagedApplicationService;)Landroid/content/ServiceConnection;

    move-result-object v4

    if-ne v4, p0, :cond_2

    iget-object v4, p0, Lcom/android/server/utils/ManagedApplicationService$2;->this$0:Lcom/android/server/utils/ManagedApplicationService;

    const/4 v6, 0x0

    invoke-static {v4, v6}, Lcom/android/server/utils/ManagedApplicationService;->-set2(Lcom/android/server/utils/ManagedApplicationService;Landroid/content/ServiceConnection;)Landroid/content/ServiceConnection;

    iget-object v4, p0, Lcom/android/server/utils/ManagedApplicationService$2;->this$0:Lcom/android/server/utils/ManagedApplicationService;

    invoke-static {v4, p0}, Lcom/android/server/utils/ManagedApplicationService;->-set1(Lcom/android/server/utils/ManagedApplicationService;Landroid/content/ServiceConnection;)Landroid/content/ServiceConnection;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget-object v4, p0, Lcom/android/server/utils/ManagedApplicationService$2;->this$0:Lcom/android/server/utils/ManagedApplicationService;

    invoke-static {v4}, Lcom/android/server/utils/ManagedApplicationService;->-get4(Lcom/android/server/utils/ManagedApplicationService;)Landroid/os/IBinder$DeathRecipient;

    move-result-object v4

    const/4 v6, 0x0

    invoke-interface {p2, v4, v6}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V

    iget-object v4, p0, Lcom/android/server/utils/ManagedApplicationService$2;->this$0:Lcom/android/server/utils/ManagedApplicationService;

    iget-object v6, p0, Lcom/android/server/utils/ManagedApplicationService$2;->this$0:Lcom/android/server/utils/ManagedApplicationService;

    invoke-static {v6}, Lcom/android/server/utils/ManagedApplicationService;->-get2(Lcom/android/server/utils/ManagedApplicationService;)Lcom/android/server/utils/ManagedApplicationService$BinderChecker;

    move-result-object v6

    invoke-interface {v6, p2}, Lcom/android/server/utils/ManagedApplicationService$BinderChecker;->asInterface(Landroid/os/IBinder;)Landroid/os/IInterface;

    move-result-object v6

    invoke-static {v4, v6}, Lcom/android/server/utils/ManagedApplicationService;->-set0(Lcom/android/server/utils/ManagedApplicationService;Landroid/os/IInterface;)Landroid/os/IInterface;

    iget-object v4, p0, Lcom/android/server/utils/ManagedApplicationService$2;->this$0:Lcom/android/server/utils/ManagedApplicationService;

    invoke-static {v4}, Lcom/android/server/utils/ManagedApplicationService;->-get2(Lcom/android/server/utils/ManagedApplicationService;)Lcom/android/server/utils/ManagedApplicationService$BinderChecker;

    move-result-object v4

    iget-object v6, p0, Lcom/android/server/utils/ManagedApplicationService$2;->this$0:Lcom/android/server/utils/ManagedApplicationService;

    invoke-static {v6}, Lcom/android/server/utils/ManagedApplicationService;->-get1(Lcom/android/server/utils/ManagedApplicationService;)Landroid/os/IInterface;

    move-result-object v6

    invoke-interface {v4, v6}, Lcom/android/server/utils/ManagedApplicationService$BinderChecker;->checkType(Landroid/os/IInterface;)Z

    move-result v4

    if-nez v4, :cond_0

    iget-object v4, p0, Lcom/android/server/utils/ManagedApplicationService$2;->this$0:Lcom/android/server/utils/ManagedApplicationService;

    invoke-static {v4}, Lcom/android/server/utils/ManagedApplicationService;->-get3(Lcom/android/server/utils/ManagedApplicationService;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4, p0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    iget-object v4, p0, Lcom/android/server/utils/ManagedApplicationService$2;->this$0:Lcom/android/server/utils/ManagedApplicationService;

    const/4 v6, 0x0

    invoke-static {v4, v6}, Lcom/android/server/utils/ManagedApplicationService;->-set0(Lcom/android/server/utils/ManagedApplicationService;Landroid/os/IInterface;)Landroid/os/IInterface;

    :cond_0
    iget-object v4, p0, Lcom/android/server/utils/ManagedApplicationService$2;->this$0:Lcom/android/server/utils/ManagedApplicationService;

    invoke-static {v4}, Lcom/android/server/utils/ManagedApplicationService;->-get1(Lcom/android/server/utils/ManagedApplicationService;)Landroid/os/IInterface;

    move-result-object v2

    iget-object v4, p0, Lcom/android/server/utils/ManagedApplicationService$2;->this$0:Lcom/android/server/utils/ManagedApplicationService;

    invoke-static {v4}, Lcom/android/server/utils/ManagedApplicationService;->-get7(Lcom/android/server/utils/ManagedApplicationService;)Lcom/android/server/utils/ManagedApplicationService$PendingEvent;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/utils/ManagedApplicationService$2;->this$0:Lcom/android/server/utils/ManagedApplicationService;

    const/4 v6, 0x0

    invoke-static {v4, v6}, Lcom/android/server/utils/ManagedApplicationService;->-set3(Lcom/android/server/utils/ManagedApplicationService;Lcom/android/server/utils/ManagedApplicationService$PendingEvent;)Lcom/android/server/utils/ManagedApplicationService$PendingEvent;
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    monitor-exit v5

    if-eqz v2, :cond_1

    if-eqz v3, :cond_1

    :try_start_2
    invoke-interface {v3, v2}, Lcom/android/server/utils/ManagedApplicationService$PendingEvent;->runEvent(Landroid/os/IInterface;)V
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1

    :cond_1
    :goto_1
    return-void

    :cond_2
    :try_start_3
    iget-object v4, p0, Lcom/android/server/utils/ManagedApplicationService$2;->this$0:Lcom/android/server/utils/ManagedApplicationService;

    invoke-static {v4}, Lcom/android/server/utils/ManagedApplicationService;->-get3(Lcom/android/server/utils/ManagedApplicationService;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4, p0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit v5

    return-void

    :catch_0
    move-exception v0

    :try_start_4
    iget-object v4, p0, Lcom/android/server/utils/ManagedApplicationService$2;->this$0:Lcom/android/server/utils/ManagedApplicationService;

    invoke-static {v4}, Lcom/android/server/utils/ManagedApplicationService;->-get0(Lcom/android/server/utils/ManagedApplicationService;)Ljava/lang/String;

    move-result-object v4

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Unable to bind service: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/server/utils/ManagedApplicationService$2;->val$intent:Landroid/content/Intent;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    iget-object v4, p0, Lcom/android/server/utils/ManagedApplicationService$2;->this$0:Lcom/android/server/utils/ManagedApplicationService;

    const/4 v6, 0x0

    invoke-static {v4, v6}, Lcom/android/server/utils/ManagedApplicationService;->-set0(Lcom/android/server/utils/ManagedApplicationService;Landroid/os/IInterface;)Landroid/os/IInterface;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v4

    monitor-exit v5

    throw v4

    :catch_1
    move-exception v1

    iget-object v4, p0, Lcom/android/server/utils/ManagedApplicationService$2;->this$0:Lcom/android/server/utils/ManagedApplicationService;

    invoke-static {v4}, Lcom/android/server/utils/ManagedApplicationService;->-get0(Lcom/android/server/utils/ManagedApplicationService;)Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "Received exception from user service: "

    invoke-static {v4, v5, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 4

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/android/server/utils/ManagedApplicationService$2;->this$0:Lcom/android/server/utils/ManagedApplicationService;

    invoke-static {v0}, Lcom/android/server/utils/ManagedApplicationService;->-get0(Lcom/android/server/utils/ManagedApplicationService;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Service disconnected: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/utils/ManagedApplicationService$2;->val$intent:Landroid/content/Intent;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/utils/ManagedApplicationService$2;->this$0:Lcom/android/server/utils/ManagedApplicationService;

    invoke-static {v0, v3}, Lcom/android/server/utils/ManagedApplicationService;->-set1(Lcom/android/server/utils/ManagedApplicationService;Landroid/content/ServiceConnection;)Landroid/content/ServiceConnection;

    iget-object v0, p0, Lcom/android/server/utils/ManagedApplicationService$2;->this$0:Lcom/android/server/utils/ManagedApplicationService;

    invoke-static {v0, v3}, Lcom/android/server/utils/ManagedApplicationService;->-set0(Lcom/android/server/utils/ManagedApplicationService;Landroid/os/IInterface;)Landroid/os/IInterface;

    return-void
.end method
