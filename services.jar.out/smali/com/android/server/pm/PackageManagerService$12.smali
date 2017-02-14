.class Lcom/android/server/pm/PackageManagerService$12;
.super Ljava/lang/Object;
.source "PackageManagerService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/pm/PackageManagerService;->processPendingInstall(Lcom/android/server/pm/PackageManagerService$InstallArgs;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/pm/PackageManagerService;

.field final synthetic val$args:Lcom/android/server/pm/PackageManagerService$InstallArgs;

.field final synthetic val$currentStatus:I


# direct methods
.method constructor <init>(Lcom/android/server/pm/PackageManagerService;ILcom/android/server/pm/PackageManagerService$InstallArgs;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/pm/PackageManagerService$12;->this$0:Lcom/android/server/pm/PackageManagerService;

    iput p2, p0, Lcom/android/server/pm/PackageManagerService$12;->val$currentStatus:I

    iput-object p3, p0, Lcom/android/server/pm/PackageManagerService$12;->val$args:Lcom/android/server/pm/PackageManagerService$InstallArgs;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 14

    iget-object v11, p0, Lcom/android/server/pm/PackageManagerService$12;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v11, v11, Lcom/android/server/pm/PackageManagerService;->mHandler:Lcom/android/server/pm/PackageManagerService$PackageHandler;

    invoke-virtual {v11, p0}, Lcom/android/server/pm/PackageManagerService$PackageHandler;->removeCallbacks(Ljava/lang/Runnable;)V

    new-instance v8, Lcom/android/server/pm/PackageManagerService$PackageInstalledInfo;

    invoke-direct {v8}, Lcom/android/server/pm/PackageManagerService$PackageInstalledInfo;-><init>()V

    iget v11, p0, Lcom/android/server/pm/PackageManagerService$12;->val$currentStatus:I

    invoke-virtual {v8, v11}, Lcom/android/server/pm/PackageManagerService$PackageInstalledInfo;->setReturnCode(I)V

    const/4 v11, -0x1

    iput v11, v8, Lcom/android/server/pm/PackageManagerService$PackageInstalledInfo;->uid:I

    const/4 v11, 0x0

    iput-object v11, v8, Lcom/android/server/pm/PackageManagerService$PackageInstalledInfo;->pkg:Landroid/content/pm/PackageParser$Package;

    const/4 v11, 0x0

    iput-object v11, v8, Lcom/android/server/pm/PackageManagerService$PackageInstalledInfo;->removedInfo:Lcom/android/server/pm/PackageManagerService$PackageRemovedInfo;

    iget v11, v8, Lcom/android/server/pm/PackageManagerService$PackageInstalledInfo;->returnCode:I

    const/4 v12, 0x1

    if-ne v11, v12, :cond_0

    iget-object v11, p0, Lcom/android/server/pm/PackageManagerService$12;->val$args:Lcom/android/server/pm/PackageManagerService$InstallArgs;

    iget v12, v8, Lcom/android/server/pm/PackageManagerService$PackageInstalledInfo;->returnCode:I

    invoke-virtual {v11, v12}, Lcom/android/server/pm/PackageManagerService$InstallArgs;->doPreInstall(I)I

    iget-object v11, p0, Lcom/android/server/pm/PackageManagerService$12;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v12, v11, Lcom/android/server/pm/PackageManagerService;->mInstallLock:Ljava/lang/Object;

    monitor-enter v12

    :try_start_0
    iget-object v11, p0, Lcom/android/server/pm/PackageManagerService$12;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v13, p0, Lcom/android/server/pm/PackageManagerService$12;->val$args:Lcom/android/server/pm/PackageManagerService$InstallArgs;

    invoke-static {v11, v13, v8}, Lcom/android/server/pm/PackageManagerService;->-wrap31(Lcom/android/server/pm/PackageManagerService;Lcom/android/server/pm/PackageManagerService$InstallArgs;Lcom/android/server/pm/PackageManagerService$PackageInstalledInfo;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v12

    iget-object v11, p0, Lcom/android/server/pm/PackageManagerService$12;->val$args:Lcom/android/server/pm/PackageManagerService$InstallArgs;

    iget v12, v8, Lcom/android/server/pm/PackageManagerService$PackageInstalledInfo;->returnCode:I

    iget v13, v8, Lcom/android/server/pm/PackageManagerService$PackageInstalledInfo;->uid:I

    invoke-virtual {v11, v12, v13}, Lcom/android/server/pm/PackageManagerService$InstallArgs;->doPostInstall(II)I

    :cond_0
    iget-object v11, v8, Lcom/android/server/pm/PackageManagerService$PackageInstalledInfo;->removedInfo:Lcom/android/server/pm/PackageManagerService$PackageRemovedInfo;

    if-eqz v11, :cond_6

    iget-object v11, v8, Lcom/android/server/pm/PackageManagerService$PackageInstalledInfo;->removedInfo:Lcom/android/server/pm/PackageManagerService$PackageRemovedInfo;

    iget-object v11, v11, Lcom/android/server/pm/PackageManagerService$PackageRemovedInfo;->removedPackage:Ljava/lang/String;

    if-eqz v11, :cond_5

    const/4 v10, 0x1

    :goto_0
    iget-object v11, v8, Lcom/android/server/pm/PackageManagerService$PackageInstalledInfo;->pkg:Landroid/content/pm/PackageParser$Package;

    if-nez v11, :cond_7

    const/4 v5, 0x0

    :goto_1
    if-nez v10, :cond_9

    const v11, 0x8000

    and-int/2addr v11, v5

    if-eqz v11, :cond_8

    const/4 v2, 0x1

    :goto_2
    iget-object v11, v8, Lcom/android/server/pm/PackageManagerService$PackageInstalledInfo;->pkg:Landroid/content/pm/PackageParser$Package;

    if-eqz v11, :cond_1

    iget-object v11, v8, Lcom/android/server/pm/PackageManagerService$PackageInstalledInfo;->pkg:Landroid/content/pm/PackageParser$Package;

    iget-object v11, v11, Landroid/content/pm/PackageParser$Package;->requestedPermissions:Ljava/util/ArrayList;

    if-eqz v11, :cond_1

    iget-object v11, v8, Lcom/android/server/pm/PackageManagerService$PackageInstalledInfo;->pkg:Landroid/content/pm/PackageParser$Package;

    iget-object v7, v11, Landroid/content/pm/PackageParser$Package;->requestedPermissions:Ljava/util/ArrayList;

    iget-object v11, p0, Lcom/android/server/pm/PackageManagerService$12;->this$0:Lcom/android/server/pm/PackageManagerService;

    invoke-static {v11, v7}, Lcom/android/server/pm/PackageManagerService;->-wrap4(Lcom/android/server/pm/PackageManagerService;Ljava/util/List;)Z

    move-result v11

    if-eqz v11, :cond_1

    const/4 v2, 0x0

    :cond_1
    iget-object v11, p0, Lcom/android/server/pm/PackageManagerService$12;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget v11, v11, Lcom/android/server/pm/PackageManagerService;->mNextInstallToken:I

    if-gez v11, :cond_2

    iget-object v11, p0, Lcom/android/server/pm/PackageManagerService$12;->this$0:Lcom/android/server/pm/PackageManagerService;

    const/4 v12, 0x1

    iput v12, v11, Lcom/android/server/pm/PackageManagerService;->mNextInstallToken:I

    :cond_2
    iget-object v11, p0, Lcom/android/server/pm/PackageManagerService$12;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget v9, v11, Lcom/android/server/pm/PackageManagerService;->mNextInstallToken:I

    add-int/lit8 v12, v9, 0x1

    iput v12, v11, Lcom/android/server/pm/PackageManagerService;->mNextInstallToken:I

    new-instance v1, Lcom/android/server/pm/PackageManagerService$PostInstallData;

    iget-object v11, p0, Lcom/android/server/pm/PackageManagerService$12;->val$args:Lcom/android/server/pm/PackageManagerService$InstallArgs;

    invoke-direct {v1, v11, v8}, Lcom/android/server/pm/PackageManagerService$PostInstallData;-><init>(Lcom/android/server/pm/PackageManagerService$InstallArgs;Lcom/android/server/pm/PackageManagerService$PackageInstalledInfo;)V

    iget-object v11, p0, Lcom/android/server/pm/PackageManagerService$12;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v11, v11, Lcom/android/server/pm/PackageManagerService;->mRunningInstalls:Landroid/util/SparseArray;

    invoke-virtual {v11, v9, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    iget v11, v8, Lcom/android/server/pm/PackageManagerService$PackageInstalledInfo;->returnCode:I

    const/4 v12, 0x1

    if-ne v11, v12, :cond_3

    if-eqz v2, :cond_3

    const-string/jumbo v11, "backup"

    invoke-static {v11}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v11

    invoke-static {v11}, Landroid/app/backup/IBackupManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/backup/IBackupManager;

    move-result-object v0

    if-eqz v0, :cond_b

    const-string/jumbo v11, "restore"

    const-wide/32 v12, 0x40000

    invoke-static {v12, v13, v11, v9}, Landroid/os/Trace;->asyncTraceBegin(JLjava/lang/String;I)V

    const/4 v11, 0x0

    :try_start_1
    invoke-interface {v0, v11}, Landroid/app/backup/IBackupManager;->isBackupServiceActive(I)Z

    move-result v11

    if-eqz v11, :cond_a

    iget-object v11, v8, Lcom/android/server/pm/PackageManagerService$PackageInstalledInfo;->pkg:Landroid/content/pm/PackageParser$Package;

    iget-object v11, v11, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v11, v11, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-interface {v0, v11, v9}, Landroid/app/backup/IBackupManager;->restoreAtInstall(Ljava/lang/String;I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :cond_3
    :goto_3
    if-nez v2, :cond_4

    const-string/jumbo v11, "postInstall"

    const-wide/32 v12, 0x40000

    invoke-static {v12, v13, v11, v9}, Landroid/os/Trace;->asyncTraceBegin(JLjava/lang/String;I)V

    iget-object v11, p0, Lcom/android/server/pm/PackageManagerService$12;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v11, v11, Lcom/android/server/pm/PackageManagerService;->mHandler:Lcom/android/server/pm/PackageManagerService$PackageHandler;

    const/16 v12, 0x9

    const/4 v13, 0x0

    invoke-virtual {v11, v12, v9, v13}, Lcom/android/server/pm/PackageManagerService$PackageHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v6

    iget-object v11, p0, Lcom/android/server/pm/PackageManagerService$12;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v11, v11, Lcom/android/server/pm/PackageManagerService;->mHandler:Lcom/android/server/pm/PackageManagerService$PackageHandler;

    invoke-virtual {v11, v6}, Lcom/android/server/pm/PackageManagerService$PackageHandler;->sendMessage(Landroid/os/Message;)Z

    :cond_4
    return-void

    :catchall_0
    move-exception v11

    monitor-exit v12

    throw v11

    :cond_5
    const/4 v10, 0x0

    goto/16 :goto_0

    :cond_6
    const/4 v10, 0x0

    goto/16 :goto_0

    :cond_7
    iget-object v11, v8, Lcom/android/server/pm/PackageManagerService$PackageInstalledInfo;->pkg:Landroid/content/pm/PackageParser$Package;

    iget-object v11, v11, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v5, v11, Landroid/content/pm/ApplicationInfo;->flags:I

    goto/16 :goto_1

    :cond_8
    const/4 v2, 0x0

    goto/16 :goto_2

    :cond_9
    const/4 v2, 0x0

    goto/16 :goto_2

    :cond_a
    const/4 v2, 0x0

    goto :goto_3

    :catch_0
    move-exception v4

    const-string/jumbo v11, "PackageManager"

    const-string/jumbo v12, "Exception trying to enqueue restore"

    invoke-static {v11, v12, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v2, 0x0

    goto :goto_3

    :cond_b
    const-string/jumbo v11, "PackageManager"

    const-string/jumbo v12, "Backup Manager not found!"

    invoke-static {v11, v12}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x0

    goto :goto_3

    :catch_1
    move-exception v3

    goto :goto_3
.end method
