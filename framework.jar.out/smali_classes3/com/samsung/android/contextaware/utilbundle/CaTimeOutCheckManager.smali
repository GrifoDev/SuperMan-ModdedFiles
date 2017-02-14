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

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p0, p1}, Lcom/samsung/android/contextaware/utilbundle/CaTimeOutCheckManager;->registerObserver(Lcom/samsung/android/contextaware/utilbundle/ITimeOutCheckObserver;)V

    iput p2, p0, Lcom/samsung/android/contextaware/utilbundle/CaTimeOutCheckManager;->mTimeOut:I

    return-void
.end method


# virtual methods
.method public final notifyTimeOut()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/contextaware/utilbundle/CaTimeOutCheckManager;->mObserver:Lcom/samsung/android/contextaware/utilbundle/ITimeOutCheckObserver;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/contextaware/utilbundle/CaTimeOutCheckManager;->mObserver:Lcom/samsung/android/contextaware/utilbundle/ITimeOutCheckObserver;

    invoke-interface {v0}, Lcom/samsung/android/contextaware/utilbundle/ITimeOutCheckObserver;->occurTimeOut()V

    :cond_0
    return-void
.end method

.method public final registerObserver(Lcom/samsung/android/contextaware/utilbundle/ITimeOutCheckObserver;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/contextaware/utilbundle/CaTimeOutCheckManager;->mObserver:Lcom/samsung/android/contextaware/utilbundle/ITimeOutCheckObserver;

    return-void
.end method

.method public final run()V
    .locals 4

    const/4 v1, 0x0

    :goto_0
    :try_start_0
    iget v2, p0, Lcom/samsung/android/contextaware/utilbundle/CaTimeOutCheckManager;->mTimeOut:I

    mul-int/lit8 v2, v2, 0xa

    if-ge v1, v2, :cond_0

    const-wide/16 v2, 0x64

    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :catch_0
    move-exception v0

    const-string/jumbo v2, "interruped"

    invoke-static {v2}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->info(Ljava/lang/String;)V

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/contextaware/utilbundle/CaTimeOutCheckManager;->notifyTimeOut()V

    return-void
.end method

.method public final unregisterObserver()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/contextaware/utilbundle/CaTimeOutCheckManager;->mObserver:Lcom/samsung/android/contextaware/utilbundle/ITimeOutCheckObserver;

    return-void
.end method
