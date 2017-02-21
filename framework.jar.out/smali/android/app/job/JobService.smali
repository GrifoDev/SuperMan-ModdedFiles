.class public abstract Landroid/app/job/JobService;
.super Landroid/app/Service;
.source "JobService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/job/JobService$JobHandler;,
        Landroid/app/job/JobService$JobInterface;
    }
.end annotation


# static fields
.field private static final MSG_EXECUTE_JOB:I = 0x0

.field private static final MSG_JOB_FINISHED:I = 0x2

.field private static final MSG_STOP_JOB:I = 0x1

.field public static final PERMISSION_BIND:Ljava/lang/String; = "android.permission.BIND_JOB_SERVICE"

.field private static final TAG:Ljava/lang/String; = "JobService"


# instance fields
.field mBinder:Landroid/app/job/IJobService;

.field mHandler:Landroid/app/job/JobService$JobHandler;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mHandlerLock"
    .end annotation
.end field

.field private final mHandlerLock:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/app/job/JobService;->mHandlerLock:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method ensureHandler()V
    .locals 3

    iget-object v1, p0, Landroid/app/job/JobService;->mHandlerLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Landroid/app/job/JobService;->mHandler:Landroid/app/job/JobService$JobHandler;

    if-nez v0, :cond_0

    new-instance v0, Landroid/app/job/JobService$JobHandler;

    invoke-virtual {p0}, Landroid/app/job/JobService;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v0, p0, v2}, Landroid/app/job/JobService$JobHandler;-><init>(Landroid/app/job/JobService;Landroid/os/Looper;)V

    iput-object v0, p0, Landroid/app/job/JobService;->mHandler:Landroid/app/job/JobService$JobHandler;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public final jobFinished(Landroid/app/job/JobParameters;Z)V
    .locals 3

    invoke-virtual {p0}, Landroid/app/job/JobService;->ensureHandler()V

    iget-object v1, p0, Landroid/app/job/JobService;->mHandler:Landroid/app/job/JobService$JobHandler;

    const/4 v2, 0x2

    invoke-static {v1, v2, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    if-eqz p2, :cond_0

    const/4 v1, 0x1

    :goto_0
    iput v1, v0, Landroid/os/Message;->arg2:I

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public final onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1

    iget-object v0, p0, Landroid/app/job/JobService;->mBinder:Landroid/app/job/IJobService;

    if-nez v0, :cond_0

    new-instance v0, Landroid/app/job/JobService$JobInterface;

    invoke-direct {v0, p0}, Landroid/app/job/JobService$JobInterface;-><init>(Landroid/app/job/JobService;)V

    iput-object v0, p0, Landroid/app/job/JobService;->mBinder:Landroid/app/job/IJobService;

    :cond_0
    iget-object v0, p0, Landroid/app/job/JobService;->mBinder:Landroid/app/job/IJobService;

    invoke-interface {v0}, Landroid/app/job/IJobService;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    return-object v0
.end method

.method public abstract onStartJob(Landroid/app/job/JobParameters;)Z
.end method

.method public abstract onStopJob(Landroid/app/job/JobParameters;)Z
.end method
