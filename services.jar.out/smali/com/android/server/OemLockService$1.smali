.class Lcom/android/server/OemLockService$1;
.super Landroid/service/oemlock/IOemLockService$Stub;
.source "OemLockService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/OemLockService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/OemLockService;


# direct methods
.method constructor <init>(Lcom/android/server/OemLockService;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/OemLockService$1;->this$0:Lcom/android/server/OemLockService;

    invoke-direct {p0}, Landroid/service/oemlock/IOemLockService$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public isOemUnlockAllowedByCarrier()Z
    .locals 1

    iget-object v0, p0, Lcom/android/server/OemLockService$1;->this$0:Lcom/android/server/OemLockService;

    invoke-static {v0}, Lcom/android/server/OemLockService;->-wrap2(Lcom/android/server/OemLockService;)V

    iget-object v0, p0, Lcom/android/server/OemLockService$1;->this$0:Lcom/android/server/OemLockService;

    invoke-static {v0}, Lcom/android/server/OemLockService;->-wrap0(Lcom/android/server/OemLockService;)Z

    move-result v0

    return v0
.end method

.method public isOemUnlockAllowedByUser()Z
    .locals 1

    iget-object v0, p0, Lcom/android/server/OemLockService$1;->this$0:Lcom/android/server/OemLockService;

    invoke-static {v0}, Lcom/android/server/OemLockService;->-wrap3(Lcom/android/server/OemLockService;)V

    iget-object v0, p0, Lcom/android/server/OemLockService$1;->this$0:Lcom/android/server/OemLockService;

    invoke-static {v0}, Lcom/android/server/OemLockService;->-wrap1(Lcom/android/server/OemLockService;)Z

    move-result v0

    return v0
.end method

.method public setOemUnlockAllowedByCarrier(Z[B)V
    .locals 6

    iget-object v3, p0, Lcom/android/server/OemLockService$1;->this$0:Lcom/android/server/OemLockService;

    invoke-static {v3}, Lcom/android/server/OemLockService;->-wrap2(Lcom/android/server/OemLockService;)V

    iget-object v3, p0, Lcom/android/server/OemLockService$1;->this$0:Lcom/android/server/OemLockService;

    invoke-static {v3}, Lcom/android/server/OemLockService;->-wrap4(Lcom/android/server/OemLockService;)V

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v3

    invoke-static {v3}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v2

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    :try_start_0
    iget-object v3, p0, Lcom/android/server/OemLockService$1;->this$0:Lcom/android/server/OemLockService;

    invoke-static {v3}, Lcom/android/server/OemLockService;->-get0(Lcom/android/server/OemLockService;)Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v3

    const-string/jumbo v4, "no_oem_unlock"

    xor-int/lit8 v5, p1, 0x1

    invoke-virtual {v3, v4, v5, v2}, Landroid/os/UserManager;->setUserRestriction(Ljava/lang/String;ZLandroid/os/UserHandle;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_0
    move-exception v3

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3
.end method

.method public setOemUnlockAllowedByUser(Z)V
    .locals 5

    invoke-static {}, Landroid/app/ActivityManager;->isUserAMonkey()Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lcom/android/server/OemLockService$1;->this$0:Lcom/android/server/OemLockService;

    invoke-static {v1}, Lcom/android/server/OemLockService;->-wrap3(Lcom/android/server/OemLockService;)V

    iget-object v1, p0, Lcom/android/server/OemLockService$1;->this$0:Lcom/android/server/OemLockService;

    invoke-static {v1}, Lcom/android/server/OemLockService;->-wrap4(Lcom/android/server/OemLockService;)V

    iget-object v1, p0, Lcom/android/server/OemLockService$1;->this$0:Lcom/android/server/OemLockService;

    invoke-static {v1}, Lcom/android/server/OemLockService;->-get0(Lcom/android/server/OemLockService;)Landroid/content/Context;

    move-result-object v1

    const-string/jumbo v4, "persistent_data_block"

    invoke-virtual {v1, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/service/persistentdata/PersistentDataBlockManager;

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    :try_start_0
    invoke-virtual {v0, p1}, Landroid/service/persistentdata/PersistentDataBlockManager;->setOemUnlockEnabled(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_0
    move-exception v1

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v1
.end method
