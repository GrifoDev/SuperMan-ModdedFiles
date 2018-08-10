.class public abstract Landroid/app/job/JobService;
.super Landroid/app/Service;
.source "JobService.java"


# static fields
.field public static final PERMISSION_BIND:Ljava/lang/String; = "android.permission.BIND_JOB_SERVICE"

.field private static final TAG:Ljava/lang/String; = "JobService"


# instance fields
.field private mEngine:Landroid/app/job/JobServiceEngine;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    return-void
.end method


# virtual methods
.method public final jobFinished(Landroid/app/job/JobParameters;Z)V
    .locals 1

    iget-object v0, p0, Landroid/app/job/JobService;->mEngine:Landroid/app/job/JobServiceEngine;

    invoke-virtual {v0, p1, p2}, Landroid/app/job/JobServiceEngine;->jobFinished(Landroid/app/job/JobParameters;Z)V

    return-void
.end method

.method public final onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1

    iget-object v0, p0, Landroid/app/job/JobService;->mEngine:Landroid/app/job/JobServiceEngine;

    if-nez v0, :cond_0

    new-instance v0, Landroid/app/job/JobService$1;

    invoke-direct {v0, p0, p0}, Landroid/app/job/JobService$1;-><init>(Landroid/app/job/JobService;Landroid/app/Service;)V

    iput-object v0, p0, Landroid/app/job/JobService;->mEngine:Landroid/app/job/JobServiceEngine;

    :cond_0
    iget-object v0, p0, Landroid/app/job/JobService;->mEngine:Landroid/app/job/JobServiceEngine;

    invoke-virtual {v0}, Landroid/app/job/JobServiceEngine;->getBinder()Landroid/os/IBinder;

    move-result-object v0

    return-object v0
.end method

.method public abstract onStartJob(Landroid/app/job/JobParameters;)Z
.end method

.method public abstract onStopJob(Landroid/app/job/JobParameters;)Z
.end method
