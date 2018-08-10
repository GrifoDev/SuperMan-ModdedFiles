.class Lcom/android/server/vr/GearVrManagerService$2;
.super Lcom/samsung/android/vr/IGearVrManagerService$Stub;
.source "GearVrManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/vr/GearVrManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/vr/GearVrManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/vr/GearVrManagerService;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/vr/GearVrManagerService$2;->this$0:Lcom/android/server/vr/GearVrManagerService;

    invoke-direct {p0}, Lcom/samsung/android/vr/IGearVrManagerService$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public acquireVrClocks(Landroid/os/IBinder;Ljava/lang/String;II)[I
    .locals 1

    const-string/jumbo v0, "acquireVrClocks"

    invoke-virtual {p0, v0}, Lcom/android/server/vr/GearVrManagerService$2;->enforceCallingSelfPermission(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/vr/GearVrManagerService$2;->this$0:Lcom/android/server/vr/GearVrManagerService;

    invoke-static {v0, p1, p2, p3, p4}, Lcom/android/server/vr/GearVrManagerService;->-wrap15(Lcom/android/server/vr/GearVrManagerService;Landroid/os/IBinder;Ljava/lang/String;II)[I

    move-result-object v0

    return-object v0
.end method

.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/vr/GearVrManagerService$2;->this$0:Lcom/android/server/vr/GearVrManagerService;

    invoke-static {v0, p1, p2, p3}, Lcom/android/server/vr/GearVrManagerService;->-wrap26(Lcom/android/server/vr/GearVrManagerService;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    return-void
.end method

.method public enforceCallingPermission(IILjava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/vr/GearVrManagerService$2;->this$0:Lcom/android/server/vr/GearVrManagerService;

    invoke-static {v0, p1, p2, p3}, Lcom/android/server/vr/GearVrManagerService;->-wrap28(Lcom/android/server/vr/GearVrManagerService;IILjava/lang/String;)V

    return-void
.end method

.method public enforceCallingSelfPermission(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/vr/GearVrManagerService$2;->this$0:Lcom/android/server/vr/GearVrManagerService;

    invoke-static {v0, p1}, Lcom/android/server/vr/GearVrManagerService;->-wrap29(Lcom/android/server/vr/GearVrManagerService;Ljava/lang/String;)V

    return-void
.end method

.method public getPowerLevelState()I
    .locals 1

    const-string/jumbo v0, "getPowerLevelState"

    invoke-virtual {p0, v0}, Lcom/android/server/vr/GearVrManagerService$2;->enforceCallingSelfPermission(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/vr/GearVrManagerService$2;->this$0:Lcom/android/server/vr/GearVrManagerService;

    invoke-static {v0}, Lcom/android/server/vr/GearVrManagerService;->-wrap18(Lcom/android/server/vr/GearVrManagerService;)I

    move-result v0

    return v0
.end method

.method public getSystemOption(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const-string/jumbo v0, "getSystemOption"

    invoke-virtual {p0, v0}, Lcom/android/server/vr/GearVrManagerService$2;->enforceCallingSelfPermission(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/vr/GearVrManagerService$2;->this$0:Lcom/android/server/vr/GearVrManagerService;

    invoke-static {v0, p1}, Lcom/android/server/vr/GearVrManagerService;->-wrap23(Lcom/android/server/vr/GearVrManagerService;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getThreadId(ILjava/lang/String;I)[I
    .locals 2

    iget-object v0, p0, Lcom/android/server/vr/GearVrManagerService$2;->this$0:Lcom/android/server/vr/GearVrManagerService;

    const-string/jumbo v1, "getThreadId"

    invoke-static {v0, v1}, Lcom/android/server/vr/GearVrManagerService;->-wrap27(Lcom/android/server/vr/GearVrManagerService;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/vr/GearVrManagerService$2;->this$0:Lcom/android/server/vr/GearVrManagerService;

    invoke-static {v0, p1, p2, p3}, Lcom/android/server/vr/GearVrManagerService;->-wrap16(Lcom/android/server/vr/GearVrManagerService;ILjava/lang/String;I)[I

    move-result-object v0

    return-object v0
.end method

.method public getVrRecentsMode()I
    .locals 2

    iget-object v0, p0, Lcom/android/server/vr/GearVrManagerService$2;->this$0:Lcom/android/server/vr/GearVrManagerService;

    const-string/jumbo v1, "getVrRecentsMode"

    invoke-static {v0, v1}, Lcom/android/server/vr/GearVrManagerService;->-wrap30(Lcom/android/server/vr/GearVrManagerService;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/vr/GearVrManagerService$2;->this$0:Lcom/android/server/vr/GearVrManagerService;

    invoke-static {v0}, Lcom/android/server/vr/GearVrManagerService;->-wrap20(Lcom/android/server/vr/GearVrManagerService;)I

    move-result v0

    return v0
.end method

.method public isDock()Z
    .locals 1

    iget-object v0, p0, Lcom/android/server/vr/GearVrManagerService$2;->this$0:Lcom/android/server/vr/GearVrManagerService;

    invoke-static {v0}, Lcom/android/server/vr/GearVrManagerService;->-wrap1(Lcom/android/server/vr/GearVrManagerService;)Z

    move-result v0

    return v0
.end method

.method public isMount()Z
    .locals 1

    iget-object v0, p0, Lcom/android/server/vr/GearVrManagerService$2;->this$0:Lcom/android/server/vr/GearVrManagerService;

    invoke-static {v0}, Lcom/android/server/vr/GearVrManagerService;->-wrap4(Lcom/android/server/vr/GearVrManagerService;)Z

    move-result v0

    return v0
.end method

.method public isVrMode()Z
    .locals 1

    const-string/jumbo v0, "isVrMode"

    invoke-virtual {p0, v0}, Lcom/android/server/vr/GearVrManagerService$2;->enforceCallingSelfPermission(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/vr/GearVrManagerService$2;->this$0:Lcom/android/server/vr/GearVrManagerService;

    invoke-static {v0}, Lcom/android/server/vr/GearVrManagerService;->-wrap7(Lcom/android/server/vr/GearVrManagerService;)Z

    move-result v0

    return v0
.end method

.method public readSysNode(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/android/server/vr/GearVrManagerService$2;->this$0:Lcom/android/server/vr/GearVrManagerService;

    const-string/jumbo v1, "readSysNode"

    invoke-static {v0, v1}, Lcom/android/server/vr/GearVrManagerService;->-wrap27(Lcom/android/server/vr/GearVrManagerService;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/vr/GearVrManagerService$2;->this$0:Lcom/android/server/vr/GearVrManagerService;

    invoke-static {v0, p1}, Lcom/android/server/vr/GearVrManagerService;->-wrap24(Lcom/android/server/vr/GearVrManagerService;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public registerVrStateListener(Lcom/samsung/android/vr/IGearVrStateCallbacks;)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/vr/GearVrManagerService$2;->this$0:Lcom/android/server/vr/GearVrManagerService;

    const-string/jumbo v1, "registerVrStateListener"

    invoke-static {v0, v1}, Lcom/android/server/vr/GearVrManagerService;->-wrap30(Lcom/android/server/vr/GearVrManagerService;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/vr/GearVrManagerService$2;->this$0:Lcom/android/server/vr/GearVrManagerService;

    invoke-static {v0, p1}, Lcom/android/server/vr/GearVrManagerService;->-wrap25(Lcom/android/server/vr/GearVrManagerService;Lcom/samsung/android/vr/IGearVrStateCallbacks;)V

    return-void
.end method

.method public releaseVrClocks(Landroid/os/IBinder;Ljava/lang/String;)Z
    .locals 1

    const-string/jumbo v0, "releaseVrClocks"

    invoke-virtual {p0, v0}, Lcom/android/server/vr/GearVrManagerService$2;->enforceCallingSelfPermission(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/vr/GearVrManagerService$2;->this$0:Lcom/android/server/vr/GearVrManagerService;

    invoke-static {v0, p1, p2}, Lcom/android/server/vr/GearVrManagerService;->-wrap9(Lcom/android/server/vr/GearVrManagerService;Landroid/os/IBinder;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public removeSysNode(Ljava/lang/String;)Z
    .locals 2

    iget-object v0, p0, Lcom/android/server/vr/GearVrManagerService$2;->this$0:Lcom/android/server/vr/GearVrManagerService;

    const-string/jumbo v1, "removeSysNode"

    invoke-static {v0, v1}, Lcom/android/server/vr/GearVrManagerService;->-wrap27(Lcom/android/server/vr/GearVrManagerService;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/vr/GearVrManagerService$2;->this$0:Lcom/android/server/vr/GearVrManagerService;

    invoke-static {v0, p1}, Lcom/android/server/vr/GearVrManagerService;->-wrap10(Lcom/android/server/vr/GearVrManagerService;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public retrieveEnableFrequencyLevels()[I
    .locals 1

    const-string/jumbo v0, "retrieveEnableFrequencyLevels"

    invoke-virtual {p0, v0}, Lcom/android/server/vr/GearVrManagerService$2;->enforceCallingSelfPermission(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/vr/GearVrManagerService$2;->this$0:Lcom/android/server/vr/GearVrManagerService;

    invoke-static {v0}, Lcom/android/server/vr/GearVrManagerService;->-wrap17(Lcom/android/server/vr/GearVrManagerService;)[I

    move-result-object v0

    return-object v0
.end method

.method public setHomeKeyBlocked(Z)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/vr/GearVrManagerService$2;->this$0:Lcom/android/server/vr/GearVrManagerService;

    const-string/jumbo v1, "setHomeKeyBlocked"

    invoke-static {v0, v1}, Lcom/android/server/vr/GearVrManagerService;->-wrap27(Lcom/android/server/vr/GearVrManagerService;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/vr/GearVrManagerService$2;->this$0:Lcom/android/server/vr/GearVrManagerService;

    invoke-static {v0, p1}, Lcom/android/server/vr/GearVrManagerService;->-wrap36(Lcom/android/server/vr/GearVrManagerService;Z)V

    return-void
.end method

.method public setOverlayRestriction(Z[Ljava/lang/String;I)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/vr/GearVrManagerService$2;->this$0:Lcom/android/server/vr/GearVrManagerService;

    const-string/jumbo v1, "setOverlayRestriction"

    invoke-static {v0, v1}, Lcom/android/server/vr/GearVrManagerService;->-wrap27(Lcom/android/server/vr/GearVrManagerService;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/vr/GearVrManagerService$2;->this$0:Lcom/android/server/vr/GearVrManagerService;

    invoke-static {v0, p1, p2, p3}, Lcom/android/server/vr/GearVrManagerService;->-wrap37(Lcom/android/server/vr/GearVrManagerService;Z[Ljava/lang/String;I)V

    return-void
.end method

.method public setPermissions(Ljava/lang/String;III)I
    .locals 2

    iget-object v0, p0, Lcom/android/server/vr/GearVrManagerService$2;->this$0:Lcom/android/server/vr/GearVrManagerService;

    const-string/jumbo v1, "setPermissions"

    invoke-static {v0, v1}, Lcom/android/server/vr/GearVrManagerService;->-wrap27(Lcom/android/server/vr/GearVrManagerService;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/vr/GearVrManagerService$2;->this$0:Lcom/android/server/vr/GearVrManagerService;

    invoke-static {v0, p1, p2, p3, p4}, Lcom/android/server/vr/GearVrManagerService;->-wrap21(Lcom/android/server/vr/GearVrManagerService;Ljava/lang/String;III)I

    move-result v0

    return v0
.end method

.method public setReadyForVrMode(Z)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/vr/GearVrManagerService$2;->this$0:Lcom/android/server/vr/GearVrManagerService;

    const-string/jumbo v1, "setReadyForVrMode"

    invoke-static {v0, v1}, Lcom/android/server/vr/GearVrManagerService;->-wrap27(Lcom/android/server/vr/GearVrManagerService;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/vr/GearVrManagerService$2;->this$0:Lcom/android/server/vr/GearVrManagerService;

    invoke-static {v0, p1}, Lcom/android/server/vr/GearVrManagerService;->-wrap38(Lcom/android/server/vr/GearVrManagerService;Z)V

    return-void
.end method

.method public setSystemMouseControlType(I)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/vr/GearVrManagerService$2;->this$0:Lcom/android/server/vr/GearVrManagerService;

    const-string/jumbo v1, "setSystemMouseControlType"

    invoke-static {v0, v1}, Lcom/android/server/vr/GearVrManagerService;->-wrap27(Lcom/android/server/vr/GearVrManagerService;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/vr/GearVrManagerService$2;->this$0:Lcom/android/server/vr/GearVrManagerService;

    invoke-static {v0, p1}, Lcom/android/server/vr/GearVrManagerService;->-wrap39(Lcom/android/server/vr/GearVrManagerService;I)V

    return-void
.end method

.method public setSystemMouseShowMouseEnabled(Z)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/vr/GearVrManagerService$2;->this$0:Lcom/android/server/vr/GearVrManagerService;

    const-string/jumbo v1, "setSystemMouseShowMouseEnabled"

    invoke-static {v0, v1}, Lcom/android/server/vr/GearVrManagerService;->-wrap27(Lcom/android/server/vr/GearVrManagerService;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/vr/GearVrManagerService$2;->this$0:Lcom/android/server/vr/GearVrManagerService;

    invoke-static {v0, p1}, Lcom/android/server/vr/GearVrManagerService;->-wrap40(Lcom/android/server/vr/GearVrManagerService;Z)V

    return-void
.end method

.method public setSystemOption(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const-string/jumbo v0, "setSystemOption"

    invoke-virtual {p0, v0}, Lcom/android/server/vr/GearVrManagerService$2;->enforceCallingSelfPermission(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/vr/GearVrManagerService$2;->this$0:Lcom/android/server/vr/GearVrManagerService;

    invoke-static {v0, p1, p2}, Lcom/android/server/vr/GearVrManagerService;->-wrap41(Lcom/android/server/vr/GearVrManagerService;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setThreadAffinity(I[I)I
    .locals 2

    iget-object v0, p0, Lcom/android/server/vr/GearVrManagerService$2;->this$0:Lcom/android/server/vr/GearVrManagerService;

    const-string/jumbo v1, "setThreadAffinity"

    invoke-static {v0, v1}, Lcom/android/server/vr/GearVrManagerService;->-wrap27(Lcom/android/server/vr/GearVrManagerService;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/vr/GearVrManagerService$2;->this$0:Lcom/android/server/vr/GearVrManagerService;

    invoke-static {v0, p1, p2}, Lcom/android/server/vr/GearVrManagerService;->-wrap22(Lcom/android/server/vr/GearVrManagerService;I[I)I

    move-result v0

    return v0
.end method

.method public setThreadGroup(II)Z
    .locals 2

    iget-object v0, p0, Lcom/android/server/vr/GearVrManagerService$2;->this$0:Lcom/android/server/vr/GearVrManagerService;

    const-string/jumbo v1, "setThreadGroup"

    invoke-static {v0, v1}, Lcom/android/server/vr/GearVrManagerService;->-wrap27(Lcom/android/server/vr/GearVrManagerService;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/vr/GearVrManagerService$2;->this$0:Lcom/android/server/vr/GearVrManagerService;

    invoke-static {v0, p1, p2}, Lcom/android/server/vr/GearVrManagerService;->-wrap11(Lcom/android/server/vr/GearVrManagerService;II)Z

    move-result v0

    return v0
.end method

.method public setThreadSchedFifo(Ljava/lang/String;III)Z
    .locals 1

    const-string/jumbo v0, "setThreadSchedFifo"

    invoke-virtual {p0, v0}, Lcom/android/server/vr/GearVrManagerService$2;->enforceCallingSelfPermission(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/vr/GearVrManagerService$2;->this$0:Lcom/android/server/vr/GearVrManagerService;

    invoke-static {v0, p1, p2, p3, p4}, Lcom/android/server/vr/GearVrManagerService;->-wrap12(Lcom/android/server/vr/GearVrManagerService;Ljava/lang/String;III)Z

    move-result v0

    return v0
.end method

.method public setThreadScheduler(III)Z
    .locals 2

    iget-object v0, p0, Lcom/android/server/vr/GearVrManagerService$2;->this$0:Lcom/android/server/vr/GearVrManagerService;

    const-string/jumbo v1, "setThreadScheduler"

    invoke-static {v0, v1}, Lcom/android/server/vr/GearVrManagerService;->-wrap27(Lcom/android/server/vr/GearVrManagerService;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/vr/GearVrManagerService$2;->this$0:Lcom/android/server/vr/GearVrManagerService;

    invoke-static {v0, p1, p2, p3}, Lcom/android/server/vr/GearVrManagerService;->-wrap13(Lcom/android/server/vr/GearVrManagerService;III)Z

    move-result v0

    return v0
.end method

.method public setVrMode(Z)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/vr/GearVrManagerService$2;->this$0:Lcom/android/server/vr/GearVrManagerService;

    const-string/jumbo v1, "setVrMode"

    invoke-static {v0, v1}, Lcom/android/server/vr/GearVrManagerService;->-wrap27(Lcom/android/server/vr/GearVrManagerService;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/vr/GearVrManagerService$2;->this$0:Lcom/android/server/vr/GearVrManagerService;

    invoke-static {v0, p1}, Lcom/android/server/vr/GearVrManagerService;->-wrap42(Lcom/android/server/vr/GearVrManagerService;Z)V

    return-void
.end method

.method public unregisterVrStateListener(Lcom/samsung/android/vr/IGearVrStateCallbacks;)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/vr/GearVrManagerService$2;->this$0:Lcom/android/server/vr/GearVrManagerService;

    const-string/jumbo v1, "unregisterVrStateListener"

    invoke-static {v0, v1}, Lcom/android/server/vr/GearVrManagerService;->-wrap30(Lcom/android/server/vr/GearVrManagerService;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/vr/GearVrManagerService$2;->this$0:Lcom/android/server/vr/GearVrManagerService;

    invoke-static {v0, p1}, Lcom/android/server/vr/GearVrManagerService;->-wrap35(Lcom/android/server/vr/GearVrManagerService;Lcom/samsung/android/vr/IGearVrStateCallbacks;)V

    return-void
.end method

.method public writeSysNode(Ljava/lang/String;Ljava/lang/String;Z)Z
    .locals 2

    iget-object v0, p0, Lcom/android/server/vr/GearVrManagerService$2;->this$0:Lcom/android/server/vr/GearVrManagerService;

    const-string/jumbo v1, "writeSysNode"

    invoke-static {v0, v1}, Lcom/android/server/vr/GearVrManagerService;->-wrap27(Lcom/android/server/vr/GearVrManagerService;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/vr/GearVrManagerService$2;->this$0:Lcom/android/server/vr/GearVrManagerService;

    invoke-static {v0, p1, p2, p3}, Lcom/android/server/vr/GearVrManagerService;->-wrap14(Lcom/android/server/vr/GearVrManagerService;Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method
