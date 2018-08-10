.class Lcom/android/server/enterprise/keystore/TimaKeystoreService$4;
.super Ljava/lang/Object;
.source "TimaKeystoreService.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/enterprise/keystore/TimaKeystoreService;->getDKSService(I)Lcom/samsung/android/knox/downloadablekeystore/IDownloadableKeystoreService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/enterprise/keystore/TimaKeystoreService;

.field final synthetic val$val:I


# direct methods
.method constructor <init>(Lcom/android/server/enterprise/keystore/TimaKeystoreService;I)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/enterprise/keystore/TimaKeystoreService$4;->this$0:Lcom/android/server/enterprise/keystore/TimaKeystoreService;

    iput p2, p0, Lcom/android/server/enterprise/keystore/TimaKeystoreService$4;->val$val:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public declared-synchronized onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 4

    monitor-enter p0

    :try_start_0
    invoke-static {}, Lcom/android/server/enterprise/keystore/TimaKeystoreService;->-get1()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "In DKS onServiceConnected"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/android/server/enterprise/keystore/TimaKeystoreService$4;->this$0:Lcom/android/server/enterprise/keystore/TimaKeystoreService;

    invoke-static {p2}, Lcom/samsung/android/knox/downloadablekeystore/IDownloadableKeystoreService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/knox/downloadablekeystore/IDownloadableKeystoreService;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/server/enterprise/keystore/TimaKeystoreService;->-set0(Lcom/android/server/enterprise/keystore/TimaKeystoreService;Lcom/samsung/android/knox/downloadablekeystore/IDownloadableKeystoreService;)Lcom/samsung/android/knox/downloadablekeystore/IDownloadableKeystoreService;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget-object v2, p0, Lcom/android/server/enterprise/keystore/TimaKeystoreService$4;->this$0:Lcom/android/server/enterprise/keystore/TimaKeystoreService;

    invoke-static {v2}, Lcom/android/server/enterprise/keystore/TimaKeystoreService;->-get2(Lcom/android/server/enterprise/keystore/TimaKeystoreService;)Lcom/samsung/android/knox/downloadablekeystore/IDownloadableKeystoreService;

    move-result-object v2

    if-eqz v2, :cond_0

    iget v2, p0, Lcom/android/server/enterprise/keystore/TimaKeystoreService$4;->val$val:I

    const/4 v3, 0x3

    if-ne v2, v3, :cond_0

    iget-object v2, p0, Lcom/android/server/enterprise/keystore/TimaKeystoreService$4;->this$0:Lcom/android/server/enterprise/keystore/TimaKeystoreService;

    invoke-static {v2}, Lcom/android/server/enterprise/keystore/TimaKeystoreService;->-get2(Lcom/android/server/enterprise/keystore/TimaKeystoreService;)Lcom/samsung/android/knox/downloadablekeystore/IDownloadableKeystoreService;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Lcom/samsung/android/knox/downloadablekeystore/IDownloadableKeystoreService;->startTimaKeystoreServices(I)I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    :catch_0
    move-exception v1

    :try_start_2
    invoke-virtual {v1}, Ljava/lang/IllegalArgumentException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    :catch_1
    move-exception v0

    :try_start_3
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2

    invoke-static {}, Lcom/android/server/enterprise/keystore/TimaKeystoreService;->-get1()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "In DKS onServiceDisconnected"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/enterprise/keystore/TimaKeystoreService$4;->this$0:Lcom/android/server/enterprise/keystore/TimaKeystoreService;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/server/enterprise/keystore/TimaKeystoreService;->-set0(Lcom/android/server/enterprise/keystore/TimaKeystoreService;Lcom/samsung/android/knox/downloadablekeystore/IDownloadableKeystoreService;)Lcom/samsung/android/knox/downloadablekeystore/IDownloadableKeystoreService;

    iget-object v0, p0, Lcom/android/server/enterprise/keystore/TimaKeystoreService$4;->this$0:Lcom/android/server/enterprise/keystore/TimaKeystoreService;

    const/4 v1, 0x3

    invoke-static {v0, v1}, Lcom/android/server/enterprise/keystore/TimaKeystoreService;->-wrap7(Lcom/android/server/enterprise/keystore/TimaKeystoreService;I)V

    return-void
.end method
