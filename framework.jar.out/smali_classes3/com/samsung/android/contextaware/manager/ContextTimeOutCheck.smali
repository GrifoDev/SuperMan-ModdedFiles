.class Lcom/samsung/android/contextaware/manager/ContextTimeOutCheck;
.super Ljava/lang/Object;
.source "ContextTimeOutCheck.java"

# interfaces
.implements Lcom/samsung/android/contextaware/manager/IContextTimeOutCheck;


# static fields
.field protected static final DEFAULT_TIME_OUT:I = 0x5


# instance fields
.field private mObserver:Lcom/samsung/android/contextaware/utilbundle/ITimeOutCheckObserver;

.field private mTimeOutCheckManager:Lcom/samsung/android/contextaware/utilbundle/CaTimeOutCheckManager;

.field private mTimeOutHandler:Ljava/lang/Thread;

.field private mTimeOutOccurrence:Z


# direct methods
.method protected constructor <init>(Lcom/samsung/android/contextaware/utilbundle/ITimeOutCheckObserver;)V
    .locals 0
    .param p1, "observer"    # Lcom/samsung/android/contextaware/utilbundle/ITimeOutCheckObserver;

    .prologue
    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    iput-object p1, p0, Lcom/samsung/android/contextaware/manager/ContextTimeOutCheck;->mObserver:Lcom/samsung/android/contextaware/utilbundle/ITimeOutCheckObserver;

    .line 49
    return-void
.end method


# virtual methods
.method protected clearTimeOutCheckService()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 77
    iget-object v0, p0, Lcom/samsung/android/contextaware/manager/ContextTimeOutCheck;->mTimeOutHandler:Ljava/lang/Thread;

    if-eqz v0, :cond_0

    .line 78
    iget-object v0, p0, Lcom/samsung/android/contextaware/manager/ContextTimeOutCheck;->mTimeOutHandler:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 79
    iput-object v1, p0, Lcom/samsung/android/contextaware/manager/ContextTimeOutCheck;->mTimeOutCheckManager:Lcom/samsung/android/contextaware/utilbundle/CaTimeOutCheckManager;

    .line 80
    iput-object v1, p0, Lcom/samsung/android/contextaware/manager/ContextTimeOutCheck;->mTimeOutHandler:Ljava/lang/Thread;

    .line 81
    invoke-static {}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->trace()V

    .line 76
    :cond_0
    return-void
.end method

.method public final getHandler()Ljava/lang/Thread;
    .locals 1

    .prologue
    .line 93
    iget-object v0, p0, Lcom/samsung/android/contextaware/manager/ContextTimeOutCheck;->mTimeOutHandler:Ljava/lang/Thread;

    return-object v0
.end method

.method public final getService()Lcom/samsung/android/contextaware/utilbundle/CaTimeOutCheckManager;
    .locals 1

    .prologue
    .line 104
    iget-object v0, p0, Lcom/samsung/android/contextaware/manager/ContextTimeOutCheck;->mTimeOutCheckManager:Lcom/samsung/android/contextaware/utilbundle/CaTimeOutCheckManager;

    return-object v0
.end method

.method public final isTimeOut()Z
    .locals 1

    .prologue
    .line 126
    iget-boolean v0, p0, Lcom/samsung/android/contextaware/manager/ContextTimeOutCheck;->mTimeOutOccurrence:Z

    return v0
.end method

.method public final run()V
    .locals 3

    .prologue
    .line 60
    invoke-virtual {p0}, Lcom/samsung/android/contextaware/manager/ContextTimeOutCheck;->clearTimeOutCheckService()V

    .line 62
    iget-object v0, p0, Lcom/samsung/android/contextaware/manager/ContextTimeOutCheck;->mObserver:Lcom/samsung/android/contextaware/utilbundle/ITimeOutCheckObserver;

    if-nez v0, :cond_0

    .line 63
    const-string/jumbo v0, "TimeOutCheckObserver is null"

    invoke-static {v0}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->error(Ljava/lang/String;)V

    .line 64
    return-void

    .line 67
    :cond_0
    new-instance v0, Lcom/samsung/android/contextaware/utilbundle/CaTimeOutCheckManager;

    iget-object v1, p0, Lcom/samsung/android/contextaware/manager/ContextTimeOutCheck;->mObserver:Lcom/samsung/android/contextaware/utilbundle/ITimeOutCheckObserver;

    .line 68
    const/4 v2, 0x5

    .line 67
    invoke-direct {v0, v1, v2}, Lcom/samsung/android/contextaware/utilbundle/CaTimeOutCheckManager;-><init>(Lcom/samsung/android/contextaware/utilbundle/ITimeOutCheckObserver;I)V

    iput-object v0, p0, Lcom/samsung/android/contextaware/manager/ContextTimeOutCheck;->mTimeOutCheckManager:Lcom/samsung/android/contextaware/utilbundle/CaTimeOutCheckManager;

    .line 69
    new-instance v0, Ljava/lang/Thread;

    iget-object v1, p0, Lcom/samsung/android/contextaware/manager/ContextTimeOutCheck;->mTimeOutCheckManager:Lcom/samsung/android/contextaware/utilbundle/CaTimeOutCheckManager;

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/samsung/android/contextaware/manager/ContextTimeOutCheck;->mTimeOutHandler:Ljava/lang/Thread;

    .line 70
    iget-object v0, p0, Lcom/samsung/android/contextaware/manager/ContextTimeOutCheck;->mTimeOutHandler:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 59
    return-void
.end method

.method public final setTimeOutOccurence(Z)V
    .locals 0
    .param p1, "timeOut"    # Z

    .prologue
    .line 115
    iput-boolean p1, p0, Lcom/samsung/android/contextaware/manager/ContextTimeOutCheck;->mTimeOutOccurrence:Z

    .line 114
    return-void
.end method
