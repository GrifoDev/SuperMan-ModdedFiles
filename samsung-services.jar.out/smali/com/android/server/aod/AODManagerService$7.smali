.class Lcom/android/server/aod/AODManagerService$7;
.super Landroid/app/IUserSwitchObserver$Stub;
.source "AODManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/aod/AODManagerService;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/aod/AODManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/aod/AODManagerService;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/aod/AODManagerService$7;->this$0:Lcom/android/server/aod/AODManagerService;

    invoke-direct {p0}, Landroid/app/IUserSwitchObserver$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onForegroundProfileSwitch(I)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    return-void
.end method

.method public onLockedBootComplete(I)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    return-void
.end method

.method public onUserSwitchComplete(I)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-static {}, Lcom/android/server/aod/AODManagerService;->-get3()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onUserSwitchComplete : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/aod/AODManagerService$7;->this$0:Lcom/android/server/aod/AODManagerService;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/server/aod/AODManagerService;->-set9(Lcom/android/server/aod/AODManagerService;Z)Z

    iget-object v0, p0, Lcom/android/server/aod/AODManagerService$7;->this$0:Lcom/android/server/aod/AODManagerService;

    invoke-static {v0, p1}, Lcom/android/server/aod/AODManagerService;->-set8(Lcom/android/server/aod/AODManagerService;I)I

    iget-object v0, p0, Lcom/android/server/aod/AODManagerService$7;->this$0:Lcom/android/server/aod/AODManagerService;

    iget-object v1, p0, Lcom/android/server/aod/AODManagerService$7;->this$0:Lcom/android/server/aod/AODManagerService;

    iget-object v2, p0, Lcom/android/server/aod/AODManagerService$7;->this$0:Lcom/android/server/aod/AODManagerService;

    invoke-static {v2}, Lcom/android/server/aod/AODManagerService;->-get20(Lcom/android/server/aod/AODManagerService;)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/server/aod/AODManagerService;->getEffectiveUserId(I)I

    move-result v1

    invoke-static {v0, v1}, Lcom/android/server/aod/AODManagerService;->-set6(Lcom/android/server/aod/AODManagerService;I)I

    iget-object v0, p0, Lcom/android/server/aod/AODManagerService$7;->this$0:Lcom/android/server/aod/AODManagerService;

    iget-object v1, p0, Lcom/android/server/aod/AODManagerService$7;->this$0:Lcom/android/server/aod/AODManagerService;

    invoke-static {v1}, Lcom/android/server/aod/AODManagerService;->-get16(Lcom/android/server/aod/AODManagerService;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/android/server/aod/AODManagerService;->-set5(Lcom/android/server/aod/AODManagerService;I)I

    iget-object v0, p0, Lcom/android/server/aod/AODManagerService$7;->this$0:Lcom/android/server/aod/AODManagerService;

    invoke-static {v0}, Lcom/android/server/aod/AODManagerService;->-wrap36(Lcom/android/server/aod/AODManagerService;)V

    iget-object v0, p0, Lcom/android/server/aod/AODManagerService$7;->this$0:Lcom/android/server/aod/AODManagerService;

    invoke-virtual {v0}, Lcom/android/server/aod/AODManagerService;->stopConnection()V

    return-void
.end method

.method public onUserSwitching(ILandroid/os/IRemoteCallback;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    return-void
.end method
