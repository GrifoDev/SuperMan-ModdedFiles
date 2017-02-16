.class public Lcom/samsung/android/contextaware/utilbundle/CaTimeOutCheckManager;
.super Ljava/lang/Object;
.source "CaTimeOutCheckManager.java"

# interfaces
.implements Ljava/lang/Runnable;
.implements Lcom/samsung/android/contextaware/utilbundle/ITimeOutCheckObserverable;


# instance fields
.field private mObserver:Lcom/samsung/android/contextaware/utilbundle/ITimeOutCheckObserver;

.field private final mTimeOut:I


# direct methods
.method public constructor <init>(Lcom/samsung/android/contextaware/utilbundle/ITimeOutCheckObserver;I)V
    .locals 0
    .param p1, "observer"    # Lcom/samsung/android/contextaware/utilbundle/ITimeOutCheckObserver;
    .param p2, "time"    # I

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    invoke-virtual {p0, p1}, Lcom/samsung/android/contextaware/utilbundle/CaTimeOutCheckManager;->registerObserver(Lcom/samsung/android/contextaware/utilbundle/ITimeOutCheckObserver;)V

    .line 44
    iput p2, p0, Lcom/samsung/android/contextaware/utilbundle/CaTimeOutCheckManager;->mTimeOut:I

    .line 42
    return-void
.end method


# virtual methods
.method public final notifyTimeOut()V
    .locals 1

    .prologue
    .line 99
    iget-object v0, p0, Lcom/samsung/android/contextaware/utilbundle/CaTimeOutCheckManager;->mObserver:Lcom/samsung/android/contextaware/utilbundle/ITimeOutCheckObserver;

    if-eqz v0, :cond_0

    .line 100
    iget-object v0, p0, Lcom/samsung/android/contextaware/utilbundle/CaTimeOutCheckManager;->mObserver:Lcom/samsung/android/contextaware/utilbundle/ITimeOutCheckObserver;

    invoke-interface {v0}, Lcom/samsung/android/contextaware/utilbundle/ITimeOutCheckObserver;->occurTimeOut()V

    .line 98
    :cond_0
    return-void
.end method

.method public final registerObserver(Lcom/samsung/android/contextaware/utilbundle/ITimeOutCheckObserver;)V
    .locals 0
    .param p1, "observer"    # Lcom/samsung/android/contextaware/utilbundle/ITimeOutCheckObserver;

    .prologue
    .line 77
    iput-object p1, p0, Lcom/samsung/android/contextaware/utilbundle/CaTimeOutCheckManager;->mObserver:Lcom/samsung/android/contextaware/utilbundle/ITimeOutCheckObserver;

    .line 76
    return-void
.end method

.method public final run()V
    .locals 4

    .prologue
    .line 56
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    :try_start_0
    iget v2, p0, Lcom/samsung/android/contextaware/utilbundle/CaTimeOutCheckManager;->mTimeOut:I

    mul-int/lit8 v2, v2, 0xa

    if-ge v1, v2, :cond_0

    .line 57
    const-wide/16 v2, 0x64

    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 56
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 59
    :catch_0
    move-exception v0

    .line 60
    .local v0, "e":Ljava/lang/InterruptedException;
    const-string/jumbo v2, "interruped"

    invoke-static {v2}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->info(Ljava/lang/String;)V

    .line 61
    return-void

    .line 64
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/contextaware/utilbundle/CaTimeOutCheckManager;->notifyTimeOut()V

    .line 53
    return-void
.end method

.method public final unregisterObserver()V
    .locals 1

    .prologue
    .line 88
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/contextaware/utilbundle/CaTimeOutCheckManager;->mObserver:Lcom/samsung/android/contextaware/utilbundle/ITimeOutCheckObserver;

    .line 87
    return-void
.end method
