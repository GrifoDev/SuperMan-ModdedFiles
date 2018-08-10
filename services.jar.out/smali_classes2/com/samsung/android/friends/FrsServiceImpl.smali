.class public Lcom/samsung/android/friends/FrsServiceImpl;
.super Lcom/samsung/android/mateservice/IMateService$Stub;
.source "FrsServiceImpl.java"

# interfaces
.implements Lcom/samsung/android/friends/ServiceLifeCycle;


# static fields
.field private static final HISTORY_COUNT:I = 0x28

.field private static final TAG:Ljava/lang/String; = "FrsImpl"


# instance fields
.field private mBootPhase:I

.field private final mContext:Landroid/content/Context;

.field private final mDispatcher:Lcom/samsung/android/friends/action/ActionDispatcher;

.field private final mDumps:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/samsung/android/friends/common/Dump;",
            ">;"
        }
    .end annotation
.end field

.field private final mShellCmd:Lcom/samsung/android/friends/shell/ShellCommandImpl;

.field private final mSvcOp:Lcom/samsung/android/friends/agentsvc/AgentSvc$SvcOperation;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 14

    const/4 v13, 0x1

    const/4 v12, 0x0

    invoke-direct {p0}, Lcom/samsung/android/mateservice/IMateService$Stub;-><init>()V

    iput v12, p0, Lcom/samsung/android/friends/FrsServiceImpl;->mBootPhase:I

    iput-object p1, p0, Lcom/samsung/android/friends/FrsServiceImpl;->mContext:Landroid/content/Context;

    new-instance v3, Lcom/samsung/android/friends/common/LoggerImpl;

    invoke-direct {p0}, Lcom/samsung/android/friends/FrsServiceImpl;->getLoggerCount()I

    move-result v6

    invoke-direct {v3, v6}, Lcom/samsung/android/friends/common/LoggerImpl;-><init>(I)V

    new-instance v0, Lcom/samsung/android/friends/executable/ExecAccessMgr;

    invoke-direct {v0, p1}, Lcom/samsung/android/friends/executable/ExecAccessMgr;-><init>(Landroid/content/Context;)V

    new-instance v6, Lcom/samsung/android/friends/agentsvc/AgentSvcMgr;

    invoke-direct {v6, p1, v3}, Lcom/samsung/android/friends/agentsvc/AgentSvcMgr;-><init>(Landroid/content/Context;Lcom/samsung/android/friends/common/Logger;)V

    iput-object v6, p0, Lcom/samsung/android/friends/FrsServiceImpl;->mSvcOp:Lcom/samsung/android/friends/agentsvc/AgentSvc$SvcOperation;

    new-instance v4, Lcom/samsung/android/friends/executable/ExecStringCrypto;

    invoke-direct {v4}, Lcom/samsung/android/friends/executable/ExecStringCrypto;-><init>()V

    new-instance v1, Lcom/samsung/android/friends/executable/ExecAccessoryMgr;

    iget-object v6, p0, Lcom/samsung/android/friends/FrsServiceImpl;->mSvcOp:Lcom/samsung/android/friends/agentsvc/AgentSvc$SvcOperation;

    new-instance v7, Lcom/samsung/android/friends/-$Lambda$A4WzROLDYUPfv6gNiQ8IEh-4AwM;

    invoke-direct {v7, p0}, Lcom/samsung/android/friends/-$Lambda$A4WzROLDYUPfv6gNiQ8IEh-4AwM;-><init>(Ljava/lang/Object;)V

    invoke-direct {v1, v3, v6, v7}, Lcom/samsung/android/friends/executable/ExecAccessoryMgr;-><init>(Lcom/samsung/android/friends/common/Logger;Lcom/samsung/android/friends/agentsvc/AgentSvc$SvcOperation;Ljava/util/function/Function;)V

    new-instance v2, Lcom/samsung/android/friends/executable/ExecClientStateMgr;

    invoke-direct {v2}, Lcom/samsung/android/friends/executable/ExecClientStateMgr;-><init>()V

    new-instance v5, Lcom/samsung/android/friends/executable/ExecSystemDataMgr;

    invoke-direct {v5, p1}, Lcom/samsung/android/friends/executable/ExecSystemDataMgr;-><init>(Landroid/content/Context;)V

    new-instance v6, Lcom/samsung/android/friends/action/ActionDispatcher;

    invoke-direct {v6, v0, v3}, Lcom/samsung/android/friends/action/ActionDispatcher;-><init>(Lcom/samsung/android/friends/executable/ExecAccessMgr;Lcom/samsung/android/friends/common/Logger;)V

    const v7, 0x110001

    const v8, 0x140001

    const v9, 0x140002

    const v10, 0x120012

    const v11, 0x120001

    filled-new-array {v7, v8, v9, v10, v11}, [I

    move-result-object v7

    invoke-virtual {v6, v1, v7}, Lcom/samsung/android/friends/action/ActionDispatcher;->add(Lcom/samsung/android/friends/action/ActionExecutable;[I)Lcom/samsung/android/friends/action/ActionDispatcher;

    move-result-object v6

    new-array v7, v13, [I

    const v8, 0x120002

    aput v8, v7, v12

    invoke-virtual {v6, v2, v7}, Lcom/samsung/android/friends/action/ActionDispatcher;->add(Lcom/samsung/android/friends/action/ActionExecutable;[I)Lcom/samsung/android/friends/action/ActionDispatcher;

    move-result-object v6

    const v7, 0x120003

    const v8, 0x120004

    const v9, 0x120010

    const v10, 0x120011

    filled-new-array {v7, v8, v9, v10}, [I

    move-result-object v7

    invoke-virtual {v6, v4, v7}, Lcom/samsung/android/friends/action/ActionDispatcher;->add(Lcom/samsung/android/friends/action/ActionExecutable;[I)Lcom/samsung/android/friends/action/ActionDispatcher;

    move-result-object v7

    iget-object v6, p0, Lcom/samsung/android/friends/FrsServiceImpl;->mSvcOp:Lcom/samsung/android/friends/agentsvc/AgentSvc$SvcOperation;

    check-cast v6, Lcom/samsung/android/friends/action/ActionExecutable;

    new-array v8, v13, [I

    const v9, 0x120005

    aput v9, v8, v12

    invoke-virtual {v7, v6, v8}, Lcom/samsung/android/friends/action/ActionDispatcher;->add(Lcom/samsung/android/friends/action/ActionExecutable;[I)Lcom/samsung/android/friends/action/ActionDispatcher;

    move-result-object v6

    const v7, 0x120006

    const v8, 0x120007

    const v9, 0x120008

    const v10, 0x120009

    filled-new-array {v7, v8, v9, v10}, [I

    move-result-object v7

    invoke-virtual {v6, v0, v7}, Lcom/samsung/android/friends/action/ActionDispatcher;->add(Lcom/samsung/android/friends/action/ActionExecutable;[I)Lcom/samsung/android/friends/action/ActionDispatcher;

    move-result-object v6

    const/4 v7, 0x6

    new-array v7, v7, [I

    fill-array-data v7, :array_0

    invoke-virtual {v6, v5, v7}, Lcom/samsung/android/friends/action/ActionDispatcher;->add(Lcom/samsung/android/friends/action/ActionExecutable;[I)Lcom/samsung/android/friends/action/ActionDispatcher;

    move-result-object v6

    new-instance v7, Lcom/samsung/android/friends/executable/ExecScreenTurnedOff;

    iget-object v8, p0, Lcom/samsung/android/friends/FrsServiceImpl;->mSvcOp:Lcom/samsung/android/friends/agentsvc/AgentSvc$SvcOperation;

    invoke-direct {v7, v8}, Lcom/samsung/android/friends/executable/ExecScreenTurnedOff;-><init>(Lcom/samsung/android/friends/agentsvc/AgentSvc$SvcOperation;)V

    new-array v8, v13, [I

    const v9, 0x210002

    aput v9, v8, v12

    invoke-virtual {v6, v7, v8}, Lcom/samsung/android/friends/action/ActionDispatcher;->add(Lcom/samsung/android/friends/action/ActionExecutable;[I)Lcom/samsung/android/friends/action/ActionDispatcher;

    move-result-object v6

    new-instance v7, Lcom/samsung/android/friends/executable/ExecAgentSvcRelay;

    iget-object v8, p0, Lcom/samsung/android/friends/FrsServiceImpl;->mSvcOp:Lcom/samsung/android/friends/agentsvc/AgentSvc$SvcOperation;

    invoke-direct {v7, v8}, Lcom/samsung/android/friends/executable/ExecAgentSvcRelay;-><init>(Lcom/samsung/android/friends/agentsvc/AgentSvc$SvcOperation;)V

    invoke-virtual {v6, v7}, Lcom/samsung/android/friends/action/ActionDispatcher;->setDefault(Lcom/samsung/android/friends/action/ActionExecutable;)Lcom/samsung/android/friends/action/ActionDispatcher;

    move-result-object v6

    iput-object v6, p0, Lcom/samsung/android/friends/FrsServiceImpl;->mDispatcher:Lcom/samsung/android/friends/action/ActionDispatcher;

    invoke-static {}, Lcom/samsung/android/friends/util/LogFrs;->isRoDebugLevelMid()Z

    move-result v6

    if-eqz v6, :cond_0

    new-instance v6, Lcom/samsung/android/friends/shell/ShellCommandImpl;

    invoke-direct {v6, p1, v12}, Lcom/samsung/android/friends/shell/ShellCommandImpl;-><init>(Landroid/content/Context;Z)V

    iput-object v6, p0, Lcom/samsung/android/friends/FrsServiceImpl;->mShellCmd:Lcom/samsung/android/friends/shell/ShellCommandImpl;

    iget-object v6, p0, Lcom/samsung/android/friends/FrsServiceImpl;->mDispatcher:Lcom/samsung/android/friends/action/ActionDispatcher;

    new-array v7, v13, [I

    const v8, 0x12000a

    aput v8, v7, v12

    invoke-virtual {v6, v1, v7}, Lcom/samsung/android/friends/action/ActionDispatcher;->add(Lcom/samsung/android/friends/action/ActionExecutable;[I)Lcom/samsung/android/friends/action/ActionDispatcher;

    move-result-object v6

    new-instance v7, Lcom/samsung/android/friends/executable/ExecSysEventDeliver;

    invoke-direct {v7, p1}, Lcom/samsung/android/friends/executable/ExecSysEventDeliver;-><init>(Landroid/content/Context;)V

    new-array v8, v13, [I

    const v9, 0x210003

    aput v9, v8, v12

    invoke-virtual {v6, v7, v8}, Lcom/samsung/android/friends/action/ActionDispatcher;->add(Lcom/samsung/android/friends/action/ActionExecutable;[I)Lcom/samsung/android/friends/action/ActionDispatcher;

    :goto_0
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    iput-object v6, p0, Lcom/samsung/android/friends/FrsServiceImpl;->mDumps:Ljava/util/List;

    iget-object v6, p0, Lcom/samsung/android/friends/FrsServiceImpl;->mDumps:Ljava/util/List;

    invoke-interface {v6, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v6, p0, Lcom/samsung/android/friends/FrsServiceImpl;->mDumps:Ljava/util/List;

    invoke-interface {v6, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v6, p0, Lcom/samsung/android/friends/FrsServiceImpl;->mDumps:Ljava/util/List;

    invoke-interface {v6, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void

    :cond_0
    const/4 v6, 0x0

    iput-object v6, p0, Lcom/samsung/android/friends/FrsServiceImpl;->mShellCmd:Lcom/samsung/android/friends/shell/ShellCommandImpl;

    goto :goto_0

    :array_0
    .array-data 4
        0x12000b
        0x12000c
        0x12000d
        0x12000e
        0x12000f
        0x120013
    .end array-data
.end method

.method private getDump()Ljava/lang/String;
    .locals 7

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "************************************************************************\n"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v3, "productDev: %s / logLevel: %d  / safeString: %s\n"

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {}, Lcom/samsung/android/friends/common/FwDependency;->isProductDev()Z

    move-result v5

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    const/4 v6, 0x0

    aput-object v5, v4, v6

    invoke-static {}, Lcom/samsung/android/friends/util/LogFrs;->logLevel()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v6, 0x1

    aput-object v5, v4, v6

    invoke-static {}, Lcom/samsung/android/friends/util/LogFrs;->useSafeString()Z

    move-result v5

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    const/4 v6, 0x2

    aput-object v5, v4, v6

    invoke-static {v3, v4}, Lcom/samsung/android/friends/util/LogFrs;->getMsg(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    monitor-enter p0

    :try_start_0
    iget-object v3, p0, Lcom/samsung/android/friends/FrsServiceImpl;->mDumps:Ljava/util/List;

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/friends/common/Dump;

    invoke-interface {v1, v0}, Lcom/samsung/android/friends/common/Dump;->getDump(Ljava/lang/StringBuilder;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3

    :cond_0
    monitor-exit p0

    const-string/jumbo v3, "\n************************************************************************"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method private getLoggerCount()I
    .locals 1

    invoke-static {}, Lcom/samsung/android/friends/common/FwDependency;->isProductDev()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/samsung/android/friends/util/LogFrs;->isRoDebugLevelMid()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/16 v0, 0x28

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private hasMappedAccessory(Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 6

    const-string/jumbo v4, "attached"

    const/4 v5, 0x0

    invoke-virtual {p1, v4, v5}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    const-string/jumbo v4, "data"

    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v0

    const-string/jumbo v4, "extraData"

    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v1

    const/4 v3, 0x0

    invoke-direct {p0}, Lcom/samsung/android/friends/FrsServiceImpl;->isShellEnabled()Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/samsung/android/friends/FrsServiceImpl;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/samsung/android/friends/executable/ExecAccessMgr;->isCmdAppAccessible(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_0

    if-eqz v0, :cond_0

    new-instance v4, Lcom/samsung/android/friends/cmdsvc/CmdSvcFacade;

    iget-object v5, p0, Lcom/samsung/android/friends/FrsServiceImpl;->mContext:Landroid/content/Context;

    invoke-direct {v4, v5}, Lcom/samsung/android/friends/cmdsvc/CmdSvcFacade;-><init>(Landroid/content/Context;)V

    new-instance v5, Lcom/samsung/android/friends/-$Lambda$A4WzROLDYUPfv6gNiQ8IEh-4AwM$1;

    invoke-direct {v5, v2, v0, v1}, Lcom/samsung/android/friends/-$Lambda$A4WzROLDYUPfv6gNiQ8IEh-4AwM$1;-><init>(ZLjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v4, v5}, Lcom/samsung/android/friends/cmdsvc/CmdSvcFacade;->perform(Ljava/util/function/Predicate;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/Bundle;

    :cond_0
    return-object v3
.end method

.method private isShellEnabled()Z
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/friends/FrsServiceImpl;->mShellCmd:Lcom/samsung/android/friends/shell/ShellCommandImpl;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/friends/FrsServiceImpl;->mShellCmd:Lcom/samsung/android/friends/shell/ShellCommandImpl;

    invoke-virtual {v0}, Lcom/samsung/android/friends/shell/ShellCommandImpl;->isEnabled()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic lambda$-com_samsung_android_friends_FrsServiceImpl_10239([B[BZLcom/samsung/android/friends/cmdsvc/CmdSvc;)Z
    .locals 1

    invoke-virtual {p3, p0, p1, p2}, Lcom/samsung/android/friends/cmdsvc/CmdSvc;->mappedAccessory([B[BZ)Z

    move-result v0

    return v0
.end method

.method private sendSysEvent(II)V
    .locals 4

    iget-object v1, p0, Lcom/samsung/android/friends/FrsServiceImpl;->mShellCmd:Lcom/samsung/android/friends/shell/ShellCommandImpl;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/friends/FrsServiceImpl;->mShellCmd:Lcom/samsung/android/friends/shell/ShellCommandImpl;

    invoke-virtual {v1}, Lcom/samsung/android/friends/shell/ShellCommandImpl;->isEnabled()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_1

    :cond_0
    return-void

    :cond_1
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/friends/FrsServiceImpl;->mDispatcher:Lcom/samsung/android/friends/action/ActionDispatcher;

    invoke-static {p1, p2}, Lcom/samsung/android/friends/executable/ExecSysEventDeliver;->createBundle(II)Landroid/os/Bundle;

    move-result-object v2

    const v3, 0x210003

    invoke-virtual {v1, v3, v2}, Lcom/samsung/android/friends/action/ActionDispatcher;->execute(ILandroid/os/Bundle;)Landroid/os/Bundle;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/samsung/android/friends/util/LogFrs;->printThrowableStackTrace(Ljava/lang/Throwable;)V

    goto :goto_0
.end method


# virtual methods
.method synthetic -com_samsung_android_friends_FrsServiceImpl-mthref-0(Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 1

    invoke-direct {p0, p1}, Lcom/samsung/android/friends/FrsServiceImpl;->hasMappedAccessory(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 6

    const/4 v5, 0x0

    const-string/jumbo v1, "FrsImpl"

    const-string/jumbo v2, "dump"

    new-array v3, v5, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/samsung/android/friends/util/LogFrs;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    iget-object v1, p0, Lcom/samsung/android/friends/FrsServiceImpl;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "android.permission.DUMP"

    invoke-virtual {v1, v2}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_0

    const-string/jumbo v1, "FrsImpl"

    const-string/jumbo v2, "permission denied - pid[%d] uid[%d]"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x1

    aput-object v4, v3, v5

    invoke-static {v1, v2, v3}, Lcom/samsung/android/friends/util/LogFrs;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    return-void

    :cond_0
    :try_start_0
    invoke-direct {p0}, Lcom/samsung/android/friends/FrsServiceImpl;->getDump()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->write(Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/samsung/android/friends/util/LogFrs;->printThrowableStackTrace(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public executeAction(ILandroid/os/Bundle;)Landroid/os/Bundle;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/friends/FrsServiceImpl;->mDispatcher:Lcom/samsung/android/friends/action/ActionDispatcher;

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/friends/action/ActionDispatcher;->execute(ILandroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method public onBootPhase(I)V
    .locals 4

    const/4 v3, 0x1

    const-string/jumbo v0, "FrsImpl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onBootPhase "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/samsung/android/friends/util/LogFrs;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    iput p1, p0, Lcom/samsung/android/friends/FrsServiceImpl;->mBootPhase:I

    iget v0, p0, Lcom/samsung/android/friends/FrsServiceImpl;->mBootPhase:I

    sparse-switch v0, :sswitch_data_0

    :goto_0
    return-void

    :sswitch_0
    iget-object v0, p0, Lcom/samsung/android/friends/FrsServiceImpl;->mShellCmd:Lcom/samsung/android/friends/shell/ShellCommandImpl;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/friends/FrsServiceImpl;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/friends/executable/ExecAccessMgr;->isCmdAppAccessible(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/friends/FrsServiceImpl;->mShellCmd:Lcom/samsung/android/friends/shell/ShellCommandImpl;

    invoke-virtual {v0, v3}, Lcom/samsung/android/friends/shell/ShellCommandImpl;->setEnabled(Z)V

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/friends/FrsServiceImpl;->mDispatcher:Lcom/samsung/android/friends/action/ActionDispatcher;

    invoke-virtual {v0, v3}, Lcom/samsung/android/friends/action/ActionDispatcher;->setAcceptable(Z)Lcom/samsung/android/friends/action/ActionDispatcher;

    goto :goto_0

    :sswitch_1
    iget-object v0, p0, Lcom/samsung/android/friends/FrsServiceImpl;->mSvcOp:Lcom/samsung/android/friends/agentsvc/AgentSvc$SvcOperation;

    invoke-interface {v0, v3}, Lcom/samsung/android/friends/agentsvc/AgentSvc$SvcOperation;->setEnabled(Z)V

    goto :goto_0

    :sswitch_2
    const/16 v0, 0x3e8

    const/4 v1, -0x1

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/friends/FrsServiceImpl;->sendSysEvent(II)V

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x1f4 -> :sswitch_0
        0x258 -> :sswitch_1
        0x3e8 -> :sswitch_2
    .end sparse-switch
.end method

.method public onCleanupUser(I)V
    .locals 3

    const-string/jumbo v0, "FrsImpl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onCleanupUser "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/samsung/android/friends/util/LogFrs;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    const/16 v0, 0x3ed

    invoke-direct {p0, v0, p1}, Lcom/samsung/android/friends/FrsServiceImpl;->sendSysEvent(II)V

    return-void
.end method

.method public onShellCommand(Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;[Ljava/lang/String;Landroid/os/ShellCallback;Landroid/os/ResultReceiver;)V
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-direct {p0}, Lcom/samsung/android/friends/FrsServiceImpl;->isShellEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/friends/FrsServiceImpl;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/samsung/android/friends/executable/ExecAccessMgr;->isCmdAppAccessible(Landroid/content/Context;)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_7

    :cond_0
    const/4 v2, 0x0

    const/4 v9, 0x0

    :try_start_0
    new-instance v10, Lcom/android/internal/util/FastPrintWriter;

    new-instance v1, Ljava/io/FileOutputStream;

    if-eqz p3, :cond_2

    :goto_0
    invoke-direct {v1, p3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/FileDescriptor;)V

    invoke-direct {v10, v1}, Lcom/android/internal/util/FastPrintWriter;-><init>(Ljava/io/OutputStream;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    const-string/jumbo v1, "No shell command implemented."

    invoke-virtual {v10, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    if-eqz v10, :cond_1

    :try_start_2
    invoke-virtual {v10}, Ljava/io/PrintWriter;->close()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    :cond_1
    :goto_1
    if-eqz v2, :cond_6

    throw v2

    :cond_2
    move-object p3, p2

    goto :goto_0

    :catch_0
    move-exception v2

    goto :goto_1

    :catch_1
    move-exception v1

    :goto_2
    :try_start_3
    throw v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :catchall_0
    move-exception v2

    move-object v11, v2

    move-object v2, v1

    move-object v1, v11

    :goto_3
    if-eqz v9, :cond_3

    :try_start_4
    invoke-virtual {v9}, Ljava/io/PrintWriter;->close()V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_2

    :cond_3
    :goto_4
    if-eqz v2, :cond_5

    throw v2

    :catch_2
    move-exception v3

    if-nez v2, :cond_4

    move-object v2, v3

    goto :goto_4

    :cond_4
    if-eq v2, v3, :cond_3

    invoke-virtual {v2, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_4

    :cond_5
    throw v1

    :cond_6
    const/4 v1, 0x0

    const/4 v2, 0x0

    move-object/from16 v0, p6

    invoke-virtual {v0, v1, v2}, Landroid/os/ResultReceiver;->send(ILandroid/os/Bundle;)V

    return-void

    :cond_7
    const-string/jumbo v1, "FrsImpl"

    const-string/jumbo v2, "onShellCommand [start] pid[%d] uid[%d]"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x1

    aput-object v4, v3, v5

    invoke-static {v1, v2, v3}, Lcom/samsung/android/friends/util/LogFrs;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    iget-object v1, p0, Lcom/samsung/android/friends/FrsServiceImpl;->mShellCmd:Lcom/samsung/android/friends/shell/ShellCommandImpl;

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object/from16 v6, p4

    move-object/from16 v7, p5

    move-object/from16 v8, p6

    invoke-virtual/range {v1 .. v8}, Lcom/samsung/android/friends/shell/ShellCommandImpl;->exec(Landroid/os/Binder;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;[Ljava/lang/String;Landroid/os/ShellCallback;Landroid/os/ResultReceiver;)I

    const-string/jumbo v1, "FrsImpl"

    const-string/jumbo v2, "onShellCommand [end]"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/samsung/android/friends/util/LogFrs;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    return-void

    :catchall_1
    move-exception v1

    goto :goto_3

    :catchall_2
    move-exception v1

    move-object v9, v10

    goto :goto_3

    :catch_3
    move-exception v1

    move-object v9, v10

    goto :goto_2
.end method

.method public onStartUser(I)V
    .locals 3

    const-string/jumbo v0, "FrsImpl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onStartUser "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/samsung/android/friends/util/LogFrs;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    const/16 v0, 0x3e9

    invoke-direct {p0, v0, p1}, Lcom/samsung/android/friends/FrsServiceImpl;->sendSysEvent(II)V

    return-void
.end method

.method public onStopUser(I)V
    .locals 3

    const-string/jumbo v0, "FrsImpl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onStopUser "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/samsung/android/friends/util/LogFrs;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    const/16 v0, 0x3ec

    invoke-direct {p0, v0, p1}, Lcom/samsung/android/friends/FrsServiceImpl;->sendSysEvent(II)V

    return-void
.end method

.method public onSwitchUser(I)V
    .locals 4

    const/4 v0, 0x0

    const-string/jumbo v1, "FrsImpl"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onSwitchUser "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v3, v0, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/samsung/android/friends/util/LogFrs;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    iget v1, p0, Lcom/samsung/android/friends/FrsServiceImpl;->mBootPhase:I

    const/16 v2, 0x3e8

    if-lt v1, v2, :cond_1

    iget-object v1, p0, Lcom/samsung/android/friends/FrsServiceImpl;->mSvcOp:Lcom/samsung/android/friends/agentsvc/AgentSvc$SvcOperation;

    if-nez p1, :cond_0

    const/4 v0, 0x1

    :cond_0
    invoke-interface {v1, v0}, Lcom/samsung/android/friends/agentsvc/AgentSvc$SvcOperation;->setEnabled(Z)V

    :cond_1
    const/16 v0, 0x3eb

    invoke-direct {p0, v0, p1}, Lcom/samsung/android/friends/FrsServiceImpl;->sendSysEvent(II)V

    return-void
.end method

.method public onUnlockUser(I)V
    .locals 3

    const-string/jumbo v0, "FrsImpl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onUnlockUser "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/samsung/android/friends/util/LogFrs;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    const/16 v0, 0x3ea

    invoke-direct {p0, v0, p1}, Lcom/samsung/android/friends/FrsServiceImpl;->sendSysEvent(II)V

    return-void
.end method
