.class public abstract Landroid/service/resolver/ResolverRankerService;
.super Landroid/app/Service;
.source "ResolverRankerService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/service/resolver/ResolverRankerService$ResolverRankerServiceWrapper;
    }
.end annotation


# static fields
.field public static final BIND_PERMISSION:Ljava/lang/String; = "android.permission.BIND_RESOLVER_RANKER_SERVICE"

.field private static final DEBUG:Z = false

.field private static final HANDLER_THREAD_NAME:Ljava/lang/String; = "RESOLVER_RANKER_SERVICE"

.field public static final HOLD_PERMISSION:Ljava/lang/String; = "android.permission.PROVIDE_RESOLVER_RANKER_SERVICE"

.field public static final SERVICE_INTERFACE:Ljava/lang/String; = "android.service.resolver.ResolverRankerService"

.field private static final TAG:Ljava/lang/String; = "ResolverRankerService"


# instance fields
.field private volatile mHandler:Landroid/os/Handler;

.field private mHandlerThread:Landroid/os/HandlerThread;

.field private mWrapper:Landroid/service/resolver/ResolverRankerService$ResolverRankerServiceWrapper;


# direct methods
.method static synthetic -get0(Landroid/service/resolver/ResolverRankerService;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Landroid/service/resolver/ResolverRankerService;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic -wrap0(Ljava/util/List;Landroid/service/resolver/IResolverRankerResult;)V
    .locals 0

    invoke-static {p0, p1}, Landroid/service/resolver/ResolverRankerService;->sendResult(Ljava/util/List;Landroid/service/resolver/IResolverRankerResult;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/service/resolver/ResolverRankerService;->mWrapper:Landroid/service/resolver/ResolverRankerService$ResolverRankerServiceWrapper;

    return-void
.end method

.method private static sendResult(Ljava/util/List;Landroid/service/resolver/IResolverRankerResult;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/service/resolver/ResolverTarget;",
            ">;",
            "Landroid/service/resolver/IResolverRankerResult;",
            ")V"
        }
    .end annotation

    :try_start_0
    invoke-interface {p1, p0}, Landroid/service/resolver/IResolverRankerResult;->sendResult(Ljava/util/List;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v1, "ResolverRankerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "failed to send results: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 3

    const/4 v2, 0x0

    const-string/jumbo v0, "android.service.resolver.ResolverRankerService"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    return-object v2

    :cond_0
    iget-object v0, p0, Landroid/service/resolver/ResolverRankerService;->mHandlerThread:Landroid/os/HandlerThread;

    if-nez v0, :cond_1

    new-instance v0, Landroid/os/HandlerThread;

    const-string/jumbo v1, "RESOLVER_RANKER_SERVICE"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Landroid/service/resolver/ResolverRankerService;->mHandlerThread:Landroid/os/HandlerThread;

    iget-object v0, p0, Landroid/service/resolver/ResolverRankerService;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Landroid/service/resolver/ResolverRankerService;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Landroid/service/resolver/ResolverRankerService;->mHandler:Landroid/os/Handler;

    :cond_1
    iget-object v0, p0, Landroid/service/resolver/ResolverRankerService;->mWrapper:Landroid/service/resolver/ResolverRankerService$ResolverRankerServiceWrapper;

    if-nez v0, :cond_2

    new-instance v0, Landroid/service/resolver/ResolverRankerService$ResolverRankerServiceWrapper;

    invoke-direct {v0, p0, v2}, Landroid/service/resolver/ResolverRankerService$ResolverRankerServiceWrapper;-><init>(Landroid/service/resolver/ResolverRankerService;Landroid/service/resolver/ResolverRankerService$ResolverRankerServiceWrapper;)V

    iput-object v0, p0, Landroid/service/resolver/ResolverRankerService;->mWrapper:Landroid/service/resolver/ResolverRankerService$ResolverRankerServiceWrapper;

    :cond_2
    iget-object v0, p0, Landroid/service/resolver/ResolverRankerService;->mWrapper:Landroid/service/resolver/ResolverRankerService$ResolverRankerServiceWrapper;

    return-object v0
.end method

.method public onDestroy()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/service/resolver/ResolverRankerService;->mHandler:Landroid/os/Handler;

    iget-object v0, p0, Landroid/service/resolver/ResolverRankerService;->mHandlerThread:Landroid/os/HandlerThread;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/service/resolver/ResolverRankerService;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quitSafely()Z

    :cond_0
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    return-void
.end method

.method public onPredictSharingProbabilities(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/service/resolver/ResolverTarget;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method public onTrainRankingModel(Ljava/util/List;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/service/resolver/ResolverTarget;",
            ">;I)V"
        }
    .end annotation

    return-void
.end method
