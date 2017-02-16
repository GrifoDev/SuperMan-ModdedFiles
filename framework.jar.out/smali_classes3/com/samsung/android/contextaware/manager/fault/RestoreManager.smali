.class public Lcom/samsung/android/contextaware/manager/fault/RestoreManager;
.super Ljava/lang/Object;
.source "RestoreManager.java"


# static fields
.field public static final REGISTER_CMD_RESTORE:Ljava/lang/String; = "REGISTER_CMD_RESTORE"

.field public static final UNREGISTER_CMD_RESTORE:Ljava/lang/String; = "UNREGISTER_CMD_RESTORE"


# instance fields
.field private mIsRestore:Z

.field private mRestoreTransaction:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/samsung/android/contextaware/manager/fault/RestoreTransaction;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>(Lcom/samsung/android/contextaware/manager/ContextManager;)V
    .locals 3
    .param p1, "manager"    # Lcom/samsung/android/contextaware/manager/ContextManager;

    .prologue
    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/contextaware/manager/fault/RestoreManager;->mRestoreTransaction:Ljava/util/concurrent/ConcurrentHashMap;

    .line 50
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/contextaware/manager/fault/RestoreManager;->mIsRestore:Z

    .line 52
    iget-object v0, p0, Lcom/samsung/android/contextaware/manager/fault/RestoreManager;->mRestoreTransaction:Ljava/util/concurrent/ConcurrentHashMap;

    const-string/jumbo v1, "REGISTER_CMD_RESTORE"

    .line 53
    new-instance v2, Lcom/samsung/android/contextaware/manager/fault/RegisterCmdOperationRestore;

    invoke-direct {v2, p1}, Lcom/samsung/android/contextaware/manager/fault/RegisterCmdOperationRestore;-><init>(Lcom/samsung/android/contextaware/manager/ContextManager;)V

    .line 52
    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    iget-object v0, p0, Lcom/samsung/android/contextaware/manager/fault/RestoreManager;->mRestoreTransaction:Ljava/util/concurrent/ConcurrentHashMap;

    const-string/jumbo v1, "UNREGISTER_CMD_RESTORE"

    .line 55
    new-instance v2, Lcom/samsung/android/contextaware/manager/fault/UnregisterCmdOperationRestore;

    invoke-direct {v2, p1}, Lcom/samsung/android/contextaware/manager/fault/UnregisterCmdOperationRestore;-><init>(Lcom/samsung/android/contextaware/manager/ContextManager;)V

    .line 54
    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 49
    return-void
.end method


# virtual methods
.method protected final initializeManager()V
    .locals 1

    .prologue
    .line 62
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/contextaware/manager/fault/RestoreManager;->mIsRestore:Z

    .line 61
    return-void
.end method

.method protected final isRestoreEnable()Z
    .locals 1

    .prologue
    .line 78
    iget-boolean v0, p0, Lcom/samsung/android/contextaware/manager/fault/RestoreManager;->mIsRestore:Z

    return v0
.end method

.method protected final runRestore(Ljava/lang/String;Lcom/samsung/android/contextaware/manager/ContextAwareService$Listener;ILcom/samsung/android/contextaware/manager/IContextObserver;)V
    .locals 3
    .param p1, "operation"    # Ljava/lang/String;
    .param p2, "listener"    # Lcom/samsung/android/contextaware/manager/ContextAwareService$Listener;
    .param p3, "service"    # I
    .param p4, "observer"    # Lcom/samsung/android/contextaware/manager/IContextObserver;

    .prologue
    .line 96
    iget-boolean v2, p0, Lcom/samsung/android/contextaware/manager/fault/RestoreManager;->mIsRestore:Z

    if-nez v2, :cond_0

    .line 97
    const-string/jumbo v2, "mIsRestore is false"

    invoke-static {v2}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->error(Ljava/lang/String;)V

    .line 98
    return-void

    .line 101
    :cond_0
    iget-object v2, p0, Lcom/samsung/android/contextaware/manager/fault/RestoreManager;->mRestoreTransaction:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$iterator":Ljava/util/Iterator;
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/contextaware/manager/fault/RestoreTransaction;

    .line 102
    .local v0, "i":Lcom/samsung/android/contextaware/manager/fault/RestoreTransaction;
    invoke-virtual {v0}, Lcom/samsung/android/contextaware/manager/fault/RestoreTransaction;->getRestoreType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 103
    invoke-virtual {v0, p2, p3, p4}, Lcom/samsung/android/contextaware/manager/fault/RestoreTransaction;->runRestore(Lcom/samsung/android/contextaware/manager/ContextAwareService$Listener;ILcom/samsung/android/contextaware/manager/IContextObserver;)V

    .line 95
    .end local v0    # "i":Lcom/samsung/android/contextaware/manager/fault/RestoreTransaction;
    :cond_2
    return-void
.end method

.method protected final setRestoreEnable()V
    .locals 1

    .prologue
    .line 69
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/contextaware/manager/fault/RestoreManager;->mIsRestore:Z

    .line 68
    return-void
.end method
