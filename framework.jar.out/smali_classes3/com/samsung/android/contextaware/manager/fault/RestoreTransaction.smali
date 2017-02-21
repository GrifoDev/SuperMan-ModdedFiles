.class abstract Lcom/samsung/android/contextaware/manager/fault/RestoreTransaction;
.super Ljava/lang/Object;
.source "RestoreTransaction.java"


# instance fields
.field private final mContextManager:Lcom/samsung/android/contextaware/manager/ContextManager;


# direct methods
.method protected constructor <init>(Lcom/samsung/android/contextaware/manager/ContextManager;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/contextaware/manager/fault/RestoreTransaction;->mContextManager:Lcom/samsung/android/contextaware/manager/ContextManager;

    return-void
.end method


# virtual methods
.method protected final getContextManager()Lcom/samsung/android/contextaware/manager/ContextManager;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/contextaware/manager/fault/RestoreTransaction;->mContextManager:Lcom/samsung/android/contextaware/manager/ContextManager;

    return-object v0
.end method

.method protected abstract getRestoreType()Ljava/lang/String;
.end method

.method protected abstract runRestore(Lcom/samsung/android/contextaware/manager/ContextAwareService$Listener;ILcom/samsung/android/contextaware/manager/IContextObserver;)V
.end method
