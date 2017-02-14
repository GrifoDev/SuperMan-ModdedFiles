.class Lcom/android/server/enterprise/EnterpriseDeviceManagerService$5;
.super Ljava/lang/Object;
.source "EnterpriseDeviceManagerService.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getService()Lcom/samsung/android/knox/downloadablekeystore/IDownloadableKeystoreService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/enterprise/EnterpriseDeviceManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/enterprise/EnterpriseDeviceManagerService;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService$5;->this$0:Lcom/android/server/enterprise/EnterpriseDeviceManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public declared-synchronized onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 3

    monitor-enter p0

    :try_start_0
    const-string/jumbo v1, "EnterpriseDeviceManagerService"

    const-string/jumbo v2, "In DKS onServiceConnected"

    invoke-static {v1, v2}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService$5;->this$0:Lcom/android/server/enterprise/EnterpriseDeviceManagerService;

    invoke-static {p2}, Lcom/samsung/android/knox/downloadablekeystore/IDownloadableKeystoreService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/knox/downloadablekeystore/IDownloadableKeystoreService;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->-set1(Lcom/android/server/enterprise/EnterpriseDeviceManagerService;Lcom/samsung/android/knox/downloadablekeystore/IDownloadableKeystoreService;)Lcom/samsung/android/knox/downloadablekeystore/IDownloadableKeystoreService;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget-object v1, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService$5;->this$0:Lcom/android/server/enterprise/EnterpriseDeviceManagerService;

    invoke-static {v1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->-get0(Lcom/android/server/enterprise/EnterpriseDeviceManagerService;)Lcom/samsung/android/knox/downloadablekeystore/IDownloadableKeystoreService;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService$5;->this$0:Lcom/android/server/enterprise/EnterpriseDeviceManagerService;

    iget-object v1, v1, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->interfaceQueueBlocking:Ljava/util/concurrent/BlockingQueue;

    iget-object v2, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService$5;->this$0:Lcom/android/server/enterprise/EnterpriseDeviceManagerService;

    invoke-static {v2}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->-get0(Lcom/android/server/enterprise/EnterpriseDeviceManagerService;)Lcom/samsung/android/knox/downloadablekeystore/IDownloadableKeystoreService;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/concurrent/BlockingQueue;->put(Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    :catch_0
    move-exception v0

    :try_start_2
    const-string/jumbo v1, "EnterpriseDeviceManagerService"

    invoke-static {v0}, Lcom/android/server/enterprise/log/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2

    const-string/jumbo v0, "EnterpriseDeviceManagerService"

    const-string/jumbo v1, "In DKS onServiceDisconnected"

    invoke-static {v0, v1}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService$5;->this$0:Lcom/android/server/enterprise/EnterpriseDeviceManagerService;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->-set1(Lcom/android/server/enterprise/EnterpriseDeviceManagerService;Lcom/samsung/android/knox/downloadablekeystore/IDownloadableKeystoreService;)Lcom/samsung/android/knox/downloadablekeystore/IDownloadableKeystoreService;

    iget-object v0, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService$5;->this$0:Lcom/android/server/enterprise/EnterpriseDeviceManagerService;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->-set0(Lcom/android/server/enterprise/EnterpriseDeviceManagerService;Z)Z

    return-void
.end method
