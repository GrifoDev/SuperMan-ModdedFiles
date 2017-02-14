.class Lcom/android/server/pm/PackageManagerService$21;
.super Ljava/lang/Object;
.source "PackageManagerService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/pm/PackageManagerService;->deleteApplicationCacheFilesAsUser(Ljava/lang/String;ILandroid/content/pm/IPackageDataObserver;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/pm/PackageManagerService;

.field final synthetic val$observer:Landroid/content/pm/IPackageDataObserver;

.field final synthetic val$packageName:Ljava/lang/String;

.field final synthetic val$pkg:Landroid/content/pm/PackageParser$Package;

.field final synthetic val$userId:I


# direct methods
.method constructor <init>(Lcom/android/server/pm/PackageManagerService;Landroid/content/pm/PackageParser$Package;ILjava/lang/String;Landroid/content/pm/IPackageDataObserver;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/pm/PackageManagerService$21;->this$0:Lcom/android/server/pm/PackageManagerService;

    iput-object p2, p0, Lcom/android/server/pm/PackageManagerService$21;->val$pkg:Landroid/content/pm/PackageParser$Package;

    iput p3, p0, Lcom/android/server/pm/PackageManagerService$21;->val$userId:I

    iput-object p4, p0, Lcom/android/server/pm/PackageManagerService$21;->val$packageName:Ljava/lang/String;

    iput-object p5, p0, Lcom/android/server/pm/PackageManagerService$21;->val$observer:Landroid/content/pm/IPackageDataObserver;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 12

    iget-object v7, p0, Lcom/android/server/pm/PackageManagerService$21;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v8, v7, Lcom/android/server/pm/PackageManagerService;->mInstallLock:Ljava/lang/Object;

    monitor-enter v8

    const/4 v1, 0x3

    :try_start_0
    iget-object v7, p0, Lcom/android/server/pm/PackageManagerService$21;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v9, p0, Lcom/android/server/pm/PackageManagerService$21;->val$pkg:Landroid/content/pm/PackageParser$Package;

    iget v10, p0, Lcom/android/server/pm/PackageManagerService$21;->val$userId:I

    const/16 v11, 0x103

    invoke-static {v7, v9, v10, v11}, Lcom/android/server/pm/PackageManagerService;->-wrap27(Lcom/android/server/pm/PackageManagerService;Landroid/content/pm/PackageParser$Package;II)V

    iget-object v7, p0, Lcom/android/server/pm/PackageManagerService$21;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v9, p0, Lcom/android/server/pm/PackageManagerService$21;->val$pkg:Landroid/content/pm/PackageParser$Package;

    iget v10, p0, Lcom/android/server/pm/PackageManagerService$21;->val$userId:I

    const/16 v11, 0x203

    invoke-static {v7, v9, v10, v11}, Lcom/android/server/pm/PackageManagerService;->-wrap27(Lcom/android/server/pm/PackageManagerService;Landroid/content/pm/PackageParser$Package;II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v8

    iget-object v7, p0, Lcom/android/server/pm/PackageManagerService$21;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v8, p0, Lcom/android/server/pm/PackageManagerService$21;->val$packageName:Ljava/lang/String;

    iget v9, p0, Lcom/android/server/pm/PackageManagerService$21;->val$userId:I

    const/4 v10, 0x0

    invoke-static {v7, v8, v9, v10}, Lcom/android/server/pm/PackageManagerService;->-wrap28(Lcom/android/server/pm/PackageManagerService;Ljava/lang/String;IZ)V

    iget-object v7, p0, Lcom/android/server/pm/PackageManagerService$21;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v8, p0, Lcom/android/server/pm/PackageManagerService$21;->val$packageName:Ljava/lang/String;

    iget v9, p0, Lcom/android/server/pm/PackageManagerService$21;->val$userId:I

    const/16 v10, 0x80

    invoke-virtual {v7, v8, v10, v9}, Lcom/android/server/pm/PackageManagerService;->getApplicationInfo(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object v4

    if-eqz v4, :cond_0

    iget-object v7, v4, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    if-eqz v7, :cond_0

    iget-object v2, v4, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    if-eqz v2, :cond_0

    const-string/jumbo v7, "sdp"

    invoke-virtual {v2, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_0

    const-string/jumbo v7, "sdp"

    invoke-virtual {v2, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v7, "enabled"

    invoke-virtual {v7, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_0

    :try_start_1
    const-string/jumbo v7, "sdp"

    invoke-static {v7}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v7

    invoke-static {v7}, Landroid/os/ISdpManagerService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/ISdpManagerService;

    move-result-object v6

    iget v7, p0, Lcom/android/server/pm/PackageManagerService$21;->val$userId:I

    iget-object v8, p0, Lcom/android/server/pm/PackageManagerService$21;->val$packageName:Ljava/lang/String;

    invoke-interface {v6, v7, v8}, Landroid/os/ISdpManagerService;->clearEncPkgCache(ILjava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_0

    const-string/jumbo v7, "PackageManager"

    const-string/jumbo v8, "Failed to clear cache for enc pkg.."

    invoke-static {v7, v8}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    :cond_0
    :goto_0
    iget-object v7, p0, Lcom/android/server/pm/PackageManagerService$21;->val$observer:Landroid/content/pm/IPackageDataObserver;

    if-eqz v7, :cond_1

    :try_start_2
    iget-object v7, p0, Lcom/android/server/pm/PackageManagerService$21;->val$observer:Landroid/content/pm/IPackageDataObserver;

    iget-object v8, p0, Lcom/android/server/pm/PackageManagerService$21;->val$packageName:Ljava/lang/String;

    const/4 v9, 0x1

    invoke-interface {v7, v8, v9}, Landroid/content/pm/IPackageDataObserver;->onRemoveCompleted(Ljava/lang/String;Z)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1

    :cond_1
    :goto_1
    return-void

    :catchall_0
    move-exception v7

    monitor-exit v8

    throw v7

    :catch_0
    move-exception v3

    const-string/jumbo v7, "PackageManager"

    const-string/jumbo v8, "RemoteException from call unregisterListener"

    invoke-static {v7, v8, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :catch_1
    move-exception v0

    const-string/jumbo v7, "PackageManager"

    const-string/jumbo v8, "Observer no longer exists."

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method
