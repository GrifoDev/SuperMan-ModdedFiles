.class public Lcom/samsung/android/contextaware/manager/fault/FaultDetectionManager;
.super Ljava/lang/Object;
.source "FaultDetectionManager.java"


# static fields
.field private static volatile instance:Lcom/samsung/android/contextaware/manager/fault/FaultDetectionManager;


# instance fields
.field private mCmdProcessResultManager:Lcom/samsung/android/contextaware/manager/fault/CmdProcessResultManager;

.field private mRestoreManager:Lcom/samsung/android/contextaware/manager/fault/RestoreManager;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/samsung/android/contextaware/manager/fault/FaultDetectionManager;
    .locals 2

    sget-object v0, Lcom/samsung/android/contextaware/manager/fault/FaultDetectionManager;->instance:Lcom/samsung/android/contextaware/manager/fault/FaultDetectionManager;

    if-nez v0, :cond_1

    const-class v1, Lcom/samsung/android/contextaware/manager/fault/FaultDetectionManager;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/samsung/android/contextaware/manager/fault/FaultDetectionManager;->instance:Lcom/samsung/android/contextaware/manager/fault/FaultDetectionManager;

    if-nez v0, :cond_0

    new-instance v0, Lcom/samsung/android/contextaware/manager/fault/FaultDetectionManager;

    invoke-direct {v0}, Lcom/samsung/android/contextaware/manager/fault/FaultDetectionManager;-><init>()V

    sput-object v0, Lcom/samsung/android/contextaware/manager/fault/FaultDetectionManager;->instance:Lcom/samsung/android/contextaware/manager/fault/FaultDetectionManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit v1

    :cond_1
    sget-object v0, Lcom/samsung/android/contextaware/manager/fault/FaultDetectionManager;->instance:Lcom/samsung/android/contextaware/manager/fault/FaultDetectionManager;

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public final getCmdProcessResultObserver()Lcom/samsung/android/contextaware/manager/fault/ICmdProcessResultObserver;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/contextaware/manager/fault/FaultDetectionManager;->mCmdProcessResultManager:Lcom/samsung/android/contextaware/manager/fault/CmdProcessResultManager;

    return-object v0
.end method

.method public final initializeManager(Lcom/samsung/android/contextaware/manager/ContextManager;)V
    .locals 1

    new-instance v0, Lcom/samsung/android/contextaware/manager/fault/RestoreManager;

    invoke-direct {v0, p1}, Lcom/samsung/android/contextaware/manager/fault/RestoreManager;-><init>(Lcom/samsung/android/contextaware/manager/ContextManager;)V

    iput-object v0, p0, Lcom/samsung/android/contextaware/manager/fault/FaultDetectionManager;->mRestoreManager:Lcom/samsung/android/contextaware/manager/fault/RestoreManager;

    return-void
.end method

.method public final initializeRestoreManager()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/contextaware/manager/fault/FaultDetectionManager;->mRestoreManager:Lcom/samsung/android/contextaware/manager/fault/RestoreManager;

    if-nez v0, :cond_0

    const-string/jumbo v0, "mRestoreManager is null"

    invoke-static {v0}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->error(Ljava/lang/String;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/contextaware/manager/fault/FaultDetectionManager;->mRestoreManager:Lcom/samsung/android/contextaware/manager/fault/RestoreManager;

    invoke-virtual {v0}, Lcom/samsung/android/contextaware/manager/fault/RestoreManager;->initializeManager()V

    return-void
.end method

.method public final isRestoreEnable()Z
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/contextaware/manager/fault/FaultDetectionManager;->mRestoreManager:Lcom/samsung/android/contextaware/manager/fault/RestoreManager;

    if-nez v0, :cond_0

    const-string/jumbo v0, "mRestoreManager is null"

    invoke-static {v0}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->error(Ljava/lang/String;)V

    const/4 v0, 0x0

    return v0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/contextaware/manager/fault/FaultDetectionManager;->mRestoreManager:Lcom/samsung/android/contextaware/manager/fault/RestoreManager;

    invoke-virtual {v0}, Lcom/samsung/android/contextaware/manager/fault/RestoreManager;->isRestoreEnable()Z

    move-result v0

    return v0
.end method

.method public final registerCmdProcessResultManager(Lcom/samsung/android/contextaware/manager/fault/CmdProcessResultManager;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/contextaware/manager/fault/FaultDetectionManager;->mCmdProcessResultManager:Lcom/samsung/android/contextaware/manager/fault/CmdProcessResultManager;

    if-eqz v0, :cond_0

    const-string/jumbo v0, "mCmdProcessResultManager is already registered"

    invoke-static {v0}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->warning(Ljava/lang/String;)V

    return-void

    :cond_0
    iput-object p1, p0, Lcom/samsung/android/contextaware/manager/fault/FaultDetectionManager;->mCmdProcessResultManager:Lcom/samsung/android/contextaware/manager/fault/CmdProcessResultManager;

    return-void
.end method

.method public final runRestore(Ljava/lang/String;Lcom/samsung/android/contextaware/manager/ContextAwareService$Listener;ILcom/samsung/android/contextaware/manager/IContextObserver;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/contextaware/manager/fault/FaultDetectionManager;->mRestoreManager:Lcom/samsung/android/contextaware/manager/fault/RestoreManager;

    if-nez v0, :cond_0

    const-string/jumbo v0, "mRestoreManager is null"

    invoke-static {v0}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->error(Ljava/lang/String;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/contextaware/manager/fault/FaultDetectionManager;->mRestoreManager:Lcom/samsung/android/contextaware/manager/fault/RestoreManager;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/samsung/android/contextaware/manager/fault/RestoreManager;->runRestore(Ljava/lang/String;Lcom/samsung/android/contextaware/manager/ContextAwareService$Listener;ILcom/samsung/android/contextaware/manager/IContextObserver;)V

    return-void
.end method

.method public final setRestoreEnable()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/contextaware/manager/fault/FaultDetectionManager;->mRestoreManager:Lcom/samsung/android/contextaware/manager/fault/RestoreManager;

    if-nez v0, :cond_0

    const-string/jumbo v0, "mRestoreManager is null"

    invoke-static {v0}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->error(Ljava/lang/String;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/contextaware/manager/fault/FaultDetectionManager;->mRestoreManager:Lcom/samsung/android/contextaware/manager/fault/RestoreManager;

    invoke-virtual {v0}, Lcom/samsung/android/contextaware/manager/fault/RestoreManager;->setRestoreEnable()V

    return-void
.end method

.method public final terminateManager()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/contextaware/manager/fault/FaultDetectionManager;->mRestoreManager:Lcom/samsung/android/contextaware/manager/fault/RestoreManager;

    return-void
.end method

.method public final unregisterCmdProcessResultManager()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/contextaware/manager/fault/FaultDetectionManager;->mCmdProcessResultManager:Lcom/samsung/android/contextaware/manager/fault/CmdProcessResultManager;

    return-void
.end method

.method public final updateContextAwareServiceFatalError()V
    .locals 0

    return-void
.end method

.method public final updateSensorHubFatalError()V
    .locals 0

    return-void
.end method
