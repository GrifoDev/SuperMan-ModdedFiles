.class Lcom/android/server/pm/PackageManagerService$16;
.super Ljava/lang/Object;
.source "PackageManagerService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/pm/PackageManagerService;->deletePackage(Ljava/lang/String;Landroid/content/pm/IPackageDeleteObserver2;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/pm/PackageManagerService;

.field final synthetic val$deleteAllUsers:Z

.field final synthetic val$deleteFlags:I

.field final synthetic val$observer:Landroid/content/pm/IPackageDeleteObserver2;

.field final synthetic val$packageName:Ljava/lang/String;

.field final synthetic val$userId:I

.field final synthetic val$users:[I


# direct methods
.method constructor <init>(Lcom/android/server/pm/PackageManagerService;ZLjava/lang/String;II[ILandroid/content/pm/IPackageDeleteObserver2;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/pm/PackageManagerService$16;->this$0:Lcom/android/server/pm/PackageManagerService;

    iput-boolean p2, p0, Lcom/android/server/pm/PackageManagerService$16;->val$deleteAllUsers:Z

    iput-object p3, p0, Lcom/android/server/pm/PackageManagerService$16;->val$packageName:Ljava/lang/String;

    iput p4, p0, Lcom/android/server/pm/PackageManagerService$16;->val$userId:I

    iput p5, p0, Lcom/android/server/pm/PackageManagerService$16;->val$deleteFlags:I

    iput-object p6, p0, Lcom/android/server/pm/PackageManagerService$16;->val$users:[I

    iput-object p7, p0, Lcom/android/server/pm/PackageManagerService$16;->val$observer:Landroid/content/pm/IPackageDeleteObserver2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 13

    const/4 v5, 0x1

    const/4 v6, 0x0

    iget-object v7, p0, Lcom/android/server/pm/PackageManagerService$16;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v7, v7, Lcom/android/server/pm/PackageManagerService;->mHandler:Lcom/android/server/pm/PackageManagerService$PackageHandler;

    invoke-virtual {v7, p0}, Lcom/android/server/pm/PackageManagerService$PackageHandler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-boolean v7, p0, Lcom/android/server/pm/PackageManagerService$16;->val$deleteAllUsers:Z

    if-nez v7, :cond_0

    iget-object v7, p0, Lcom/android/server/pm/PackageManagerService$16;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v8, p0, Lcom/android/server/pm/PackageManagerService$16;->val$packageName:Ljava/lang/String;

    iget v9, p0, Lcom/android/server/pm/PackageManagerService$16;->val$userId:I

    iget v10, p0, Lcom/android/server/pm/PackageManagerService$16;->val$deleteFlags:I

    invoke-static {v7, v8, v9, v10}, Lcom/android/server/pm/PackageManagerService;->-wrap15(Lcom/android/server/pm/PackageManagerService;Ljava/lang/String;II)I

    move-result v2

    :goto_0
    iget-object v7, p0, Lcom/android/server/pm/PackageManagerService$16;->val$packageName:Ljava/lang/String;

    if-ltz v2, :cond_4

    :goto_1
    iget v6, p0, Lcom/android/server/pm/PackageManagerService$16;->val$userId:I

    invoke-static {v7, v5, v6}, Lcom/android/server/pm/PmHook;->uninstallLog(Ljava/lang/String;ZI)V

    :try_start_0
    const-string/jumbo v5, "PackageManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "result of delete: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "{"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/server/pm/PackageManagerService$16;->val$observer:Landroid/content/pm/IPackageDeleteObserver2;

    invoke-virtual {v7}, Ljava/lang/Object;->hashCode()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "}"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v5, p0, Lcom/android/server/pm/PackageManagerService$16;->val$observer:Landroid/content/pm/IPackageDeleteObserver2;

    iget-object v6, p0, Lcom/android/server/pm/PackageManagerService$16;->val$packageName:Ljava/lang/String;

    const/4 v7, 0x0

    invoke-interface {v5, v6, v2, v7}, Landroid/content/pm/IPackageDeleteObserver2;->onPackageDeleted(Ljava/lang/String;ILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_2
    return-void

    :cond_0
    iget-object v7, p0, Lcom/android/server/pm/PackageManagerService$16;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v8, p0, Lcom/android/server/pm/PackageManagerService$16;->val$packageName:Ljava/lang/String;

    iget-object v9, p0, Lcom/android/server/pm/PackageManagerService$16;->val$users:[I

    invoke-static {v7, v8, v9}, Lcom/android/server/pm/PackageManagerService;->-wrap14(Lcom/android/server/pm/PackageManagerService;Ljava/lang/String;[I)[I

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/util/ArrayUtils;->isEmpty([I)Z

    move-result v7

    if-eqz v7, :cond_1

    iget-object v7, p0, Lcom/android/server/pm/PackageManagerService$16;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v8, p0, Lcom/android/server/pm/PackageManagerService$16;->val$packageName:Ljava/lang/String;

    iget v9, p0, Lcom/android/server/pm/PackageManagerService$16;->val$userId:I

    iget v10, p0, Lcom/android/server/pm/PackageManagerService$16;->val$deleteFlags:I

    invoke-static {v7, v8, v9, v10}, Lcom/android/server/pm/PackageManagerService;->-wrap15(Lcom/android/server/pm/PackageManagerService;Ljava/lang/String;II)I

    move-result v2

    goto :goto_0

    :cond_1
    iget v7, p0, Lcom/android/server/pm/PackageManagerService$16;->val$deleteFlags:I

    and-int/lit8 v3, v7, -0x3

    iget-object v8, p0, Lcom/android/server/pm/PackageManagerService$16;->val$users:[I

    array-length v9, v8

    move v7, v6

    :goto_3
    if-ge v7, v9, :cond_3

    aget v4, v8, v7

    invoke-static {v0, v4}, Lcom/android/internal/util/ArrayUtils;->contains([II)Z

    move-result v10

    if-nez v10, :cond_2

    iget-object v10, p0, Lcom/android/server/pm/PackageManagerService$16;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v11, p0, Lcom/android/server/pm/PackageManagerService$16;->val$packageName:Ljava/lang/String;

    invoke-static {v10, v11, v4, v3}, Lcom/android/server/pm/PackageManagerService;->-wrap15(Lcom/android/server/pm/PackageManagerService;Ljava/lang/String;II)I

    move-result v2

    if-eq v2, v5, :cond_2

    const-string/jumbo v10, "PackageManager"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "Package delete failed for user "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, ", returnCode "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    :cond_3
    const/4 v2, -0x4

    goto/16 :goto_0

    :cond_4
    move v5, v6

    goto/16 :goto_1

    :catch_0
    move-exception v1

    const-string/jumbo v5, "PackageManager"

    const-string/jumbo v6, "Observer no longer exists."

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method
