.class Landroid/app/job/JobService$1;
.super Landroid/app/job/JobServiceEngine;
.source "JobService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/app/job/JobService;->onBind(Landroid/content/Intent;)Landroid/os/IBinder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/app/job/JobService;


# direct methods
.method constructor <init>(Landroid/app/job/JobService;Landroid/app/Service;)V
    .locals 0

    iput-object p1, p0, Landroid/app/job/JobService$1;->this$0:Landroid/app/job/JobService;

    invoke-direct {p0, p2}, Landroid/app/job/JobServiceEngine;-><init>(Landroid/app/Service;)V

    return-void
.end method


# virtual methods
.method public onStartJob(Landroid/app/job/JobParameters;)Z
    .locals 1

    iget-object v0, p0, Landroid/app/job/JobService$1;->this$0:Landroid/app/job/JobService;

    invoke-virtual {v0, p1}, Landroid/app/job/JobService;->onStartJob(Landroid/app/job/JobParameters;)Z

    move-result v0

    return v0
.end method

.method public onStopJob(Landroid/app/job/JobParameters;)Z
    .locals 1

    iget-object v0, p0, Landroid/app/job/JobService$1;->this$0:Landroid/app/job/JobService;

    invoke-virtual {v0, p1}, Landroid/app/job/JobService;->onStopJob(Landroid/app/job/JobParameters;)Z

    move-result v0

    return v0
.end method
