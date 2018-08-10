.class Lcom/samsung/android/contextaware/manager/fault/UnregisterCmdOperationRestore;
.super Lcom/samsung/android/contextaware/manager/fault/RestoreTransaction;
.source "UnregisterCmdOperationRestore.java"


# direct methods
.method protected constructor <init>(Lcom/samsung/android/contextaware/manager/ContextManager;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/contextaware/manager/fault/RestoreTransaction;-><init>(Lcom/samsung/android/contextaware/manager/ContextManager;)V

    return-void
.end method


# virtual methods
.method protected final getRestoreType()Ljava/lang/String;
    .locals 1

    const-string/jumbo v0, "UNREGISTER_CMD_RESTORE"

    return-object v0
.end method

.method protected final runRestore(Lcom/samsung/android/contextaware/manager/ContextAwareService$Listener;ILcom/samsung/android/contextaware/manager/IContextObserver;)V
    .locals 3

    if-nez p1, :cond_0

    const-string/jumbo v0, "listener is null"

    invoke-static {v0}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->error(Ljava/lang/String;)V

    return-void

    :cond_0
    invoke-static {}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->trace()V

    invoke-virtual {p0}, Lcom/samsung/android/contextaware/manager/fault/UnregisterCmdOperationRestore;->getContextManager()Lcom/samsung/android/contextaware/manager/ContextManager;

    move-result-object v0

    invoke-static {}, Lcom/samsung/android/contextaware/ContextList;->getInstance()Lcom/samsung/android/contextaware/ContextList;

    move-result-object v1

    invoke-virtual {v1, p2}, Lcom/samsung/android/contextaware/ContextList;->getServiceCode(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {v0, p1, v1, p3, v2}, Lcom/samsung/android/contextaware/manager/ContextManager;->start(Lcom/samsung/android/contextaware/manager/ContextAwareService$Listener;Ljava/lang/String;Lcom/samsung/android/contextaware/manager/IContextObserver;I)V

    invoke-virtual {p1}, Lcom/samsung/android/contextaware/manager/ContextAwareService$Listener;->getServices()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Lcom/samsung/android/contextaware/manager/ContextAwareService$Listener;->getServices()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    return-void

    :cond_1
    invoke-virtual {p1, p2}, Lcom/samsung/android/contextaware/manager/ContextAwareService$Listener;->increaseServiceCount(I)V

    goto :goto_0
.end method
