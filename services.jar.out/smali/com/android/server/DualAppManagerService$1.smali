.class Lcom/android/server/DualAppManagerService$1;
.super Landroid/app/SynchronousUserSwitchObserver;
.source "DualAppManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/DualAppManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/DualAppManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/DualAppManagerService;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/DualAppManagerService$1;->this$0:Lcom/android/server/DualAppManagerService;

    invoke-direct {p0}, Landroid/app/SynchronousUserSwitchObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public onForegroundProfileSwitch(I)V
    .locals 3

    invoke-static {}, Lcom/samsung/android/app/SemDualAppManager;->getDualAppProfileId()I

    move-result v0

    invoke-static {v0}, Lcom/samsung/android/app/SemDualAppManager;->isDualAppId(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/DualAppManagerService$1;->this$0:Lcom/android/server/DualAppManagerService;

    invoke-static {v0, p1}, Lcom/android/server/DualAppManagerService;->-wrap1(Lcom/android/server/DualAppManagerService;I)V

    iget-object v0, p0, Lcom/android/server/DualAppManagerService$1;->this$0:Lcom/android/server/DualAppManagerService;

    invoke-static {v0, p1}, Lcom/android/server/DualAppManagerService;->-wrap3(Lcom/android/server/DualAppManagerService;I)V

    const-string/jumbo v0, "DualAppManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "newProfileId : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public onUserSwitchComplete(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-static {}, Lcom/samsung/android/app/SemDualAppManager;->getDualAppProfileId()I

    move-result v0

    invoke-static {v0}, Lcom/samsung/android/app/SemDualAppManager;->isDualAppId(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/DualAppManagerService$1;->this$0:Lcom/android/server/DualAppManagerService;

    invoke-static {v0, p1}, Lcom/android/server/DualAppManagerService;->-wrap1(Lcom/android/server/DualAppManagerService;I)V

    iget-object v0, p0, Lcom/android/server/DualAppManagerService$1;->this$0:Lcom/android/server/DualAppManagerService;

    invoke-static {v0, p1}, Lcom/android/server/DualAppManagerService;->-wrap3(Lcom/android/server/DualAppManagerService;I)V

    :cond_0
    return-void
.end method

.method public onUserSwitching(I)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    return-void
.end method
