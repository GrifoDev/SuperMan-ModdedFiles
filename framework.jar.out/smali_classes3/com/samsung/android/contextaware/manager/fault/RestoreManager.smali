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

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/contextaware/manager/fault/RestoreManager;->mRestoreTransaction:Ljava/util/concurrent/ConcurrentHashMap;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/contextaware/manager/fault/RestoreManager;->mIsRestore:Z

    iget-object v0, p0, Lcom/samsung/android/contextaware/manager/fault/RestoreManager;->mRestoreTransaction:Ljava/util/concurrent/ConcurrentHashMap;

    const-string/jumbo v1, "REGISTER_CMD_RESTORE"

    new-instance v2, Lcom/samsung/android/contextaware/manager/fault/RegisterCmdOperationRestore;

    invoke-direct {v2, p1}, Lcom/samsung/android/contextaware/manager/fault/RegisterCmdOperationRestore;-><init>(Lcom/samsung/android/contextaware/manager/ContextManager;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/contextaware/manager/fault/RestoreManager;->mRestoreTransaction:Ljava/util/concurrent/ConcurrentHashMap;

    const-string/jumbo v1, "UNREGISTER_CMD_RESTORE"

    new-instance v2, Lcom/samsung/android/contextaware/manager/fault/UnregisterCmdOperationRestore;

    invoke-direct {v2, p1}, Lcom/samsung/android/contextaware/manager/fault/UnregisterCmdOperationRestore;-><init>(Lcom/samsung/android/contextaware/manager/ContextManager;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method protected final initializeManager()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/contextaware/manager/fault/RestoreManager;->mIsRestore:Z

    return-void
.end method

.method protected final isRestoreEnable()Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/contextaware/manager/fault/RestoreManager;->mIsRestore:Z

    return v0
.end method

.method protected final runRestore(Ljava/lang/String;Lcom/samsung/android/contextaware/manager/ContextAwareService$Listener;ILcom/samsung/android/contextaware/manager/IContextObserver;)V
    .locals 3

    iget-boolean v2, p0, Lcom/samsung/android/contextaware/manager/fault/RestoreManager;->mIsRestore:Z

    if-nez v2, :cond_0

    const-string/jumbo v2, "mIsRestore is false"

    invoke-static {v2}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->error(Ljava/lang/String;)V

    return-void

    :cond_0
    iget-object v2, p0, Lcom/samsung/android/contextaware/manager/fault/RestoreManager;->mRestoreTransaction:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/contextaware/manager/fault/RestoreTransaction;

    invoke-virtual {v0}, Lcom/samsung/android/contextaware/manager/fault/RestoreTransaction;->getRestoreType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v0, p2, p3, p4}, Lcom/samsung/android/contextaware/manager/fault/RestoreTransaction;->runRestore(Lcom/samsung/android/contextaware/manager/ContextAwareService$Listener;ILcom/samsung/android/contextaware/manager/IContextObserver;)V

    :cond_2
    return-void
.end method

.method protected final setRestoreEnable()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/contextaware/manager/fault/RestoreManager;->mIsRestore:Z

    return-void
.end method
