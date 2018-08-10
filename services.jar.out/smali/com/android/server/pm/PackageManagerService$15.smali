.class Lcom/android/server/pm/PackageManagerService$15;
.super Ljava/lang/Object;
.source "PackageManagerService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/pm/PackageManagerService;->deletePackageVersioned(Landroid/content/pm/VersionedPackage;Landroid/content/pm/IPackageDeleteObserver2;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/pm/PackageManagerService;

.field final synthetic val$callingUid:I

.field final synthetic val$canViewInstantApps:Z

.field final synthetic val$deleteAllUsers:Z

.field final synthetic val$deleteFlags:I

.field final synthetic val$internalPackageName:Ljava/lang/String;

.field final synthetic val$observer:Landroid/content/pm/IPackageDeleteObserver2;

.field final synthetic val$packageName:Ljava/lang/String;

.field final synthetic val$userId:I

.field final synthetic val$users:[I

.field final synthetic val$versionCode:I


# direct methods
.method constructor <init>(Lcom/android/server/pm/PackageManagerService;Ljava/lang/String;IZZIII[ILjava/lang/String;Landroid/content/pm/IPackageDeleteObserver2;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/pm/PackageManagerService$15;->this$0:Lcom/android/server/pm/PackageManagerService;

    iput-object p2, p0, Lcom/android/server/pm/PackageManagerService$15;->val$internalPackageName:Ljava/lang/String;

    iput p3, p0, Lcom/android/server/pm/PackageManagerService$15;->val$callingUid:I

    iput-boolean p4, p0, Lcom/android/server/pm/PackageManagerService$15;->val$canViewInstantApps:Z

    iput-boolean p5, p0, Lcom/android/server/pm/PackageManagerService$15;->val$deleteAllUsers:Z

    iput p6, p0, Lcom/android/server/pm/PackageManagerService$15;->val$versionCode:I

    iput p7, p0, Lcom/android/server/pm/PackageManagerService$15;->val$userId:I

    iput p8, p0, Lcom/android/server/pm/PackageManagerService$15;->val$deleteFlags:I

    iput-object p9, p0, Lcom/android/server/pm/PackageManagerService$15;->val$users:[I

    iput-object p10, p0, Lcom/android/server/pm/PackageManagerService$15;->val$packageName:Ljava/lang/String;

    iput-object p11, p0, Lcom/android/server/pm/PackageManagerService$15;->val$observer:Landroid/content/pm/IPackageDeleteObserver2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 14

    iget-object v8, p0, Lcom/android/server/pm/PackageManagerService$15;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v8, v8, Lcom/android/server/pm/PackageManagerService;->mHandler:Lcom/android/server/pm/PackageManagerService$PackageHandler;

    invoke-virtual {v8, p0}, Lcom/android/server/pm/PackageManagerService$PackageHandler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v8, p0, Lcom/android/server/pm/PackageManagerService$15;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v8, v8, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    iget-object v8, v8, Lcom/android/server/pm/Settings;->mPackages:Landroid/util/ArrayMap;

    iget-object v9, p0, Lcom/android/server/pm/PackageManagerService$15;->val$internalPackageName:Ljava/lang/String;

    invoke-virtual {v8, v9}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/pm/PackageSetting;

    const/4 v1, 0x1

    if-eqz v3, :cond_0

    iget v8, p0, Lcom/android/server/pm/PackageManagerService$15;->val$callingUid:I

    invoke-static {v8}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v8

    invoke-virtual {v3, v8}, Lcom/android/server/pm/PackageSetting;->getInstantApp(I)Z

    move-result v5

    if-eqz v5, :cond_1

    iget-boolean v1, p0, Lcom/android/server/pm/PackageManagerService$15;->val$canViewInstantApps:Z

    :cond_0
    :goto_0
    if-eqz v1, :cond_6

    iget-boolean v8, p0, Lcom/android/server/pm/PackageManagerService$15;->val$deleteAllUsers:Z

    if-nez v8, :cond_2

    iget-object v8, p0, Lcom/android/server/pm/PackageManagerService$15;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v9, p0, Lcom/android/server/pm/PackageManagerService$15;->val$internalPackageName:Ljava/lang/String;

    iget v10, p0, Lcom/android/server/pm/PackageManagerService$15;->val$versionCode:I

    iget v11, p0, Lcom/android/server/pm/PackageManagerService$15;->val$userId:I

    iget v12, p0, Lcom/android/server/pm/PackageManagerService$15;->val$deleteFlags:I

    invoke-virtual {v8, v9, v10, v11, v12}, Lcom/android/server/pm/PackageManagerService;->deletePackageX(Ljava/lang/String;III)I

    move-result v4

    :goto_1
    iget-object v9, p0, Lcom/android/server/pm/PackageManagerService$15;->val$packageName:Ljava/lang/String;

    if-ltz v4, :cond_7

    const/4 v8, 0x1

    :goto_2
    iget v10, p0, Lcom/android/server/pm/PackageManagerService$15;->val$userId:I

    invoke-static {v9, v8, v10}, Lcom/android/server/pm/PmHook;->uninstallLog(Ljava/lang/String;ZI)V

    :try_start_0
    const-string/jumbo v8, "PackageManager"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "result of delete: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, "{"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/android/server/pm/PackageManagerService$15;->val$observer:Landroid/content/pm/IPackageDeleteObserver2;

    invoke-virtual {v10}, Ljava/lang/Object;->hashCode()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, "}"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v8, p0, Lcom/android/server/pm/PackageManagerService$15;->val$observer:Landroid/content/pm/IPackageDeleteObserver2;

    iget-object v9, p0, Lcom/android/server/pm/PackageManagerService$15;->val$packageName:Ljava/lang/String;

    const/4 v10, 0x0

    invoke-interface {v8, v9, v4, v10}, Landroid/content/pm/IPackageDeleteObserver2;->onPackageDeleted(Ljava/lang/String;ILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_3
    return-void

    :cond_1
    const/4 v1, 0x1

    goto :goto_0

    :cond_2
    iget-object v8, p0, Lcom/android/server/pm/PackageManagerService$15;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v9, p0, Lcom/android/server/pm/PackageManagerService$15;->val$internalPackageName:Ljava/lang/String;

    iget-object v10, p0, Lcom/android/server/pm/PackageManagerService$15;->val$users:[I

    invoke-static {v8, v9, v10}, Lcom/android/server/pm/PackageManagerService;->-wrap24(Lcom/android/server/pm/PackageManagerService;Ljava/lang/String;[I)[I

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/util/ArrayUtils;->isEmpty([I)Z

    move-result v8

    if-eqz v8, :cond_3

    iget-object v8, p0, Lcom/android/server/pm/PackageManagerService$15;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v9, p0, Lcom/android/server/pm/PackageManagerService$15;->val$internalPackageName:Ljava/lang/String;

    iget v10, p0, Lcom/android/server/pm/PackageManagerService$15;->val$versionCode:I

    iget v11, p0, Lcom/android/server/pm/PackageManagerService$15;->val$userId:I

    iget v12, p0, Lcom/android/server/pm/PackageManagerService$15;->val$deleteFlags:I

    invoke-virtual {v8, v9, v10, v11, v12}, Lcom/android/server/pm/PackageManagerService;->deletePackageX(Ljava/lang/String;III)I

    move-result v4

    goto :goto_1

    :cond_3
    iget v8, p0, Lcom/android/server/pm/PackageManagerService$15;->val$deleteFlags:I

    and-int/lit8 v6, v8, -0x3

    iget-object v9, p0, Lcom/android/server/pm/PackageManagerService$15;->val$users:[I

    const/4 v8, 0x0

    array-length v10, v9

    :goto_4
    if-ge v8, v10, :cond_5

    aget v7, v9, v8

    invoke-static {v0, v7}, Lcom/android/internal/util/ArrayUtils;->contains([II)Z

    move-result v11

    if-nez v11, :cond_4

    iget-object v11, p0, Lcom/android/server/pm/PackageManagerService$15;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v12, p0, Lcom/android/server/pm/PackageManagerService$15;->val$internalPackageName:Ljava/lang/String;

    iget v13, p0, Lcom/android/server/pm/PackageManagerService$15;->val$versionCode:I

    invoke-virtual {v11, v12, v13, v7, v6}, Lcom/android/server/pm/PackageManagerService;->deletePackageX(Ljava/lang/String;III)I

    move-result v4

    const/4 v11, 0x1

    if-eq v4, v11, :cond_4

    const-string/jumbo v11, "PackageManager"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "Package delete failed for user "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string/jumbo v13, ", returnCode "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    add-int/lit8 v8, v8, 0x1

    goto :goto_4

    :cond_5
    const/4 v4, -0x4

    goto/16 :goto_1

    :cond_6
    const/4 v4, -0x1

    goto/16 :goto_1

    :cond_7
    const/4 v8, 0x0

    goto/16 :goto_2

    :catch_0
    move-exception v2

    const-string/jumbo v8, "PackageManager"

    const-string/jumbo v9, "Observer no longer exists."

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3
.end method
