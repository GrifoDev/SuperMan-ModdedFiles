.class public abstract Landroid/app/job/JobServiceEngine;
.super Ljava/lang/Object;
.source "JobServiceEngine.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/job/JobServiceEngine$JobHandler;,
        Landroid/app/job/JobServiceEngine$JobInterface;
    }
.end annotation


# static fields
.field private static final MSG_EXECUTE_JOB:I = 0x0

.field private static final MSG_JOB_FINISHED:I = 0x2

.field private static final MSG_STOP_JOB:I = 0x1

.field private static final TAG:Ljava/lang/String; = "JobServiceEngine"


# instance fields
.field private final mBinder:Landroid/app/job/IJobService;

.field mHandler:Landroid/app/job/JobServiceEngine$JobHandler;


# direct methods
.method public constructor <init>(Landroid/app/Service;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/app/job/JobServiceEngine$JobInterface;

    invoke-direct {v0, p0}, Landroid/app/job/JobServiceEngine$JobInterface;-><init>(Landroid/app/job/JobServiceEngine;)V

    iput-object v0, p0, Landroid/app/job/JobServiceEngine;->mBinder:Landroid/app/job/IJobService;

    new-instance v0, Landroid/app/job/JobServiceEngine$JobHandler;

    invoke-virtual {p1}, Landroid/app/Service;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Landroid/app/job/JobServiceEngine$JobHandler;-><init>(Landroid/app/job/JobServiceEngine;Landroid/os/Looper;)V

    iput-object v0, p0, Landroid/app/job/JobServiceEngine;->mHandler:Landroid/app/job/JobServiceEngine$JobHandler;

    return-void
.end method


# virtual methods
.method public final getBinder()Landroid/os/IBinder;
    .locals 1

    iget-object v0, p0, Landroid/app/job/JobServiceEngine;->mBinder:Landroid/app/job/IJobService;

    invoke-interface {v0}, Landroid/app/job/IJobService;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    return-object v0
.end method

.method public jobFinished(Landroid/app/job/JobParameters;Z)V
    .locals 3

    if-nez p1, :cond_0

    new-instance v1, Ljava/lang/NullPointerException;

    const-string/jumbo v2, "params"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    iget-object v1, p0, Landroid/app/job/JobServiceEngine;->mHandler:Landroid/app/job/JobServiceEngine$JobHandler;

    const/4 v2, 0x2

    invoke-static {v1, v2, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    if-eqz p2, :cond_1

    const/4 v1, 0x1

    :goto_0
    iput v1, v0, Landroid/os/Message;->arg2:I

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public abstract onStartJob(Landroid/app/job/JobParameters;)Z
.end method

.method public abstract onStopJob(Landroid/app/job/JobParameters;)Z
.end method
