.class public Lcom/samsung/android/contextaware/manager/fault/CmdProcessResultManager;
.super Ljava/lang/Object;
.source "CmdProcessResultManager.java"

# interfaces
.implements Lcom/samsung/android/contextaware/manager/fault/ICmdProcessResultObserver;


# instance fields
.field private final mBinder:Landroid/os/IBinder;

.field private final mServiceHandler:Lcom/samsung/android/contextaware/manager/ContextAwareService$ServiceHandler;


# direct methods
.method public constructor <init>(Landroid/os/IBinder;Lcom/samsung/android/contextaware/manager/ContextAwareService$ServiceHandler;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/contextaware/manager/fault/CmdProcessResultManager;->mBinder:Landroid/os/IBinder;

    iput-object p2, p0, Lcom/samsung/android/contextaware/manager/fault/CmdProcessResultManager;->mServiceHandler:Lcom/samsung/android/contextaware/manager/ContextAwareService$ServiceHandler;

    return-void
.end method


# virtual methods
.method public final updateCmdProcessResult(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 5

    sget-object v3, Lcom/samsung/android/contextaware/ContextList$ContextType;->CMD_PROCESS_FAULT_DETECTION:Lcom/samsung/android/contextaware/ContextList$ContextType;

    invoke-virtual {v3}, Lcom/samsung/android/contextaware/ContextList$ContextType;->getCode()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    return-void

    :cond_0
    iget-object v3, p0, Lcom/samsung/android/contextaware/manager/fault/CmdProcessResultManager;->mBinder:Landroid/os/IBinder;

    if-nez v3, :cond_1

    sget-object v3, Lcom/samsung/android/contextaware/manager/ContextAwareServiceErrors;->ERROR_BINDER_NULL_EXCEPTION:Lcom/samsung/android/contextaware/manager/ContextAwareServiceErrors;

    invoke-virtual {v3}, Lcom/samsung/android/contextaware/manager/ContextAwareServiceErrors;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->error(Ljava/lang/String;)V

    return-void

    :cond_1
    iget-object v3, p0, Lcom/samsung/android/contextaware/manager/fault/CmdProcessResultManager;->mServiceHandler:Lcom/samsung/android/contextaware/manager/ContextAwareService$ServiceHandler;

    if-nez v3, :cond_2

    sget-object v3, Lcom/samsung/android/contextaware/manager/ContextAwareServiceErrors;->ERROR_SERVICE_HANDLER_NULL_EXCEPTION:Lcom/samsung/android/contextaware/manager/ContextAwareServiceErrors;

    invoke-virtual {v3}, Lcom/samsung/android/contextaware/manager/ContextAwareServiceErrors;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->error(Ljava/lang/String;)V

    return-void

    :cond_2
    if-nez p2, :cond_3

    sget-object v3, Lcom/samsung/android/contextaware/manager/ContextAwareServiceErrors;->ERROR_CONTEXT_INFO_NULL_EXCEPTION:Lcom/samsung/android/contextaware/manager/ContextAwareServiceErrors;

    invoke-virtual {v3}, Lcom/samsung/android/contextaware/manager/ContextAwareServiceErrors;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->error(Ljava/lang/String;)V

    return-void

    :cond_3
    invoke-virtual {p2}, Landroid/os/Bundle;->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Bundle;

    const-string/jumbo v3, "CheckResult"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    if-eqz v3, :cond_4

    invoke-static {}, Lcom/samsung/android/contextaware/manager/fault/FaultDetectionManager;->getInstance()Lcom/samsung/android/contextaware/manager/fault/FaultDetectionManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/android/contextaware/manager/fault/FaultDetectionManager;->setRestoreEnable()V

    :cond_4
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v3, "Binder"

    iget-object v4, p0, Lcom/samsung/android/contextaware/manager/fault/CmdProcessResultManager;->mBinder:Landroid/os/IBinder;

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putIBinder(Ljava/lang/String;Landroid/os/IBinder;)V

    const-string/jumbo v3, "Service"

    const-string/jumbo v4, "Service"

    invoke-virtual {v2, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo v3, "Listener"

    invoke-virtual {v2, v3, v0}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v1

    sget-object v3, Lcom/samsung/android/contextaware/ContextList$ContextType;->CMD_PROCESS_FAULT_DETECTION:Lcom/samsung/android/contextaware/ContextList$ContextType;

    invoke-virtual {v3}, Lcom/samsung/android/contextaware/ContextList$ContextType;->ordinal()I

    move-result v3

    iput v3, v1, Landroid/os/Message;->what:I

    iput-object v2, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v3, p0, Lcom/samsung/android/contextaware/manager/fault/CmdProcessResultManager;->mServiceHandler:Lcom/samsung/android/contextaware/manager/ContextAwareService$ServiceHandler;

    invoke-virtual {v3, v1}, Lcom/samsung/android/contextaware/manager/ContextAwareService$ServiceHandler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method
