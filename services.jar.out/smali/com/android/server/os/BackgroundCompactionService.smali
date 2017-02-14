.class public Lcom/android/server/os/BackgroundCompactionService;
.super Landroid/app/job/JobService;
.source "BackgroundCompactionService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/os/BackgroundCompactionService$1;
    }
.end annotation


# static fields
.field static final BACKGROUND_COMPACTION_JOB:I = 0x31f

.field static final BACKGROUND_IDLE_COMPACTION_JOB:I = 0x31e

.field static final BACKGROUND_SM_COMPACTION_JOB:I = 0x31d

.field static final DISPLAY_OFF_TIMEOUT_MAX_MILISECONDS:J = 0x32c8L

.field static final DISPLAY_OFF_TIMEOUT_MILISECONDS:J = 0x2710L

.field static final RETRY_MILISECONDS:J = 0x4100a0L

.field static final SM_TIMEOUT_MAX_MILISECONDS:J = 0x7d0L

.field static final SM_TIMEOUT_MILISECONDS:J = 0x3e8L

.field static final TAG:Ljava/lang/String; = "BackgroundCompactionService"

.field static bgc_counts:I

.field static display_status:I

.field static job:Landroid/app/job/JobInfo;

.field static job_idle:Landroid/app/job/JobInfo;

.field static job_sm:Landroid/app/job/JobInfo;

.field static js:Landroid/app/job/JobScheduler;

.field static js_idle:Landroid/app/job/JobScheduler;

.field static js_sm:Landroid/app/job/JobScheduler;

.field static mIntentReceiver:Landroid/content/BroadcastReceiver;

.field static pending_job:I

.field private static sCompactionServiceName:Landroid/content/ComponentName;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v3, 0x0

    new-instance v0, Landroid/content/ComponentName;

    const-string/jumbo v1, "android"

    const-class v2, Lcom/android/server/os/BackgroundCompactionService;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/android/server/os/BackgroundCompactionService;->sCompactionServiceName:Landroid/content/ComponentName;

    sput v3, Lcom/android/server/os/BackgroundCompactionService;->bgc_counts:I

    sput v3, Lcom/android/server/os/BackgroundCompactionService;->display_status:I

    sput v3, Lcom/android/server/os/BackgroundCompactionService;->pending_job:I

    new-instance v0, Lcom/android/server/os/BackgroundCompactionService$1;

    invoke-direct {v0}, Lcom/android/server/os/BackgroundCompactionService$1;-><init>()V

    sput-object v0, Lcom/android/server/os/BackgroundCompactionService;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/job/JobService;-><init>()V

    return-void
.end method

.method public static initBGC(Landroid/content/Context;)V
    .locals 2

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string/jumbo v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v1, "android.intent.action.SCREEN_ON"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v1, "com.samsung.android.sm.ACTION_RAM_BGCOMPACTION"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    sget-object v1, Lcom/android/server/os/BackgroundCompactionService;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method public static schedule(Landroid/content/Context;I)V
    .locals 4

    const/4 v3, 0x1

    if-ne p1, v3, :cond_1

    const-string/jumbo v0, "jobscheduler"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/job/JobScheduler;

    sput-object v0, Lcom/android/server/os/BackgroundCompactionService;->js:Landroid/app/job/JobScheduler;

    new-instance v0, Landroid/app/job/JobInfo$Builder;

    sget-object v1, Lcom/android/server/os/BackgroundCompactionService;->sCompactionServiceName:Landroid/content/ComponentName;

    const/16 v2, 0x31f

    invoke-direct {v0, v2, v1}, Landroid/app/job/JobInfo$Builder;-><init>(ILandroid/content/ComponentName;)V

    const-wide/16 v2, 0x2710

    invoke-virtual {v0, v2, v3}, Landroid/app/job/JobInfo$Builder;->setMinimumLatency(J)Landroid/app/job/JobInfo$Builder;

    move-result-object v0

    const-wide/16 v2, 0x32c8

    invoke-virtual {v0, v2, v3}, Landroid/app/job/JobInfo$Builder;->setOverrideDeadline(J)Landroid/app/job/JobInfo$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/job/JobInfo$Builder;->build()Landroid/app/job/JobInfo;

    move-result-object v0

    sput-object v0, Lcom/android/server/os/BackgroundCompactionService;->job:Landroid/app/job/JobInfo;

    const-string/jumbo v0, "BackgroundCompactionService"

    const-string/jumbo v1, "Schedule Type1 BGCompaction"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/android/server/os/BackgroundCompactionService;->js:Landroid/app/job/JobScheduler;

    sget-object v1, Lcom/android/server/os/BackgroundCompactionService;->job:Landroid/app/job/JobInfo;

    invoke-virtual {v0, v1}, Landroid/app/job/JobScheduler;->schedule(Landroid/app/job/JobInfo;)I

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v0, 0x2

    if-ne p1, v0, :cond_2

    const-string/jumbo v0, "jobscheduler"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/job/JobScheduler;

    sput-object v0, Lcom/android/server/os/BackgroundCompactionService;->js_idle:Landroid/app/job/JobScheduler;

    new-instance v0, Landroid/app/job/JobInfo$Builder;

    sget-object v1, Lcom/android/server/os/BackgroundCompactionService;->sCompactionServiceName:Landroid/content/ComponentName;

    const/16 v2, 0x31e

    invoke-direct {v0, v2, v1}, Landroid/app/job/JobInfo$Builder;-><init>(ILandroid/content/ComponentName;)V

    invoke-virtual {v0, v3}, Landroid/app/job/JobInfo$Builder;->setRequiresDeviceIdle(Z)Landroid/app/job/JobInfo$Builder;

    move-result-object v0

    const-wide/32 v2, 0x4100a0

    invoke-virtual {v0, v2, v3}, Landroid/app/job/JobInfo$Builder;->setMinimumLatency(J)Landroid/app/job/JobInfo$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/job/JobInfo$Builder;->build()Landroid/app/job/JobInfo;

    move-result-object v0

    sput-object v0, Lcom/android/server/os/BackgroundCompactionService;->job_idle:Landroid/app/job/JobInfo;

    const-string/jumbo v0, "BackgroundCompactionService"

    const-string/jumbo v1, "Schedule Type2 BGCompaction"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/android/server/os/BackgroundCompactionService;->js_idle:Landroid/app/job/JobScheduler;

    sget-object v1, Lcom/android/server/os/BackgroundCompactionService;->job_idle:Landroid/app/job/JobInfo;

    invoke-virtual {v0, v1}, Landroid/app/job/JobScheduler;->schedule(Landroid/app/job/JobInfo;)I

    goto :goto_0

    :cond_2
    const/4 v0, 0x3

    if-ne p1, v0, :cond_0

    const-string/jumbo v0, "jobscheduler"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/job/JobScheduler;

    sput-object v0, Lcom/android/server/os/BackgroundCompactionService;->js_sm:Landroid/app/job/JobScheduler;

    new-instance v0, Landroid/app/job/JobInfo$Builder;

    sget-object v1, Lcom/android/server/os/BackgroundCompactionService;->sCompactionServiceName:Landroid/content/ComponentName;

    const/16 v2, 0x31d

    invoke-direct {v0, v2, v1}, Landroid/app/job/JobInfo$Builder;-><init>(ILandroid/content/ComponentName;)V

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v2, v3}, Landroid/app/job/JobInfo$Builder;->setMinimumLatency(J)Landroid/app/job/JobInfo$Builder;

    move-result-object v0

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v2, v3}, Landroid/app/job/JobInfo$Builder;->setOverrideDeadline(J)Landroid/app/job/JobInfo$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/job/JobInfo$Builder;->build()Landroid/app/job/JobInfo;

    move-result-object v0

    sput-object v0, Lcom/android/server/os/BackgroundCompactionService;->job_sm:Landroid/app/job/JobInfo;

    const-string/jumbo v0, "BackgroundCompactionService"

    const-string/jumbo v1, "Schedule Type3 BGCompaction"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/android/server/os/BackgroundCompactionService;->js_sm:Landroid/app/job/JobScheduler;

    sget-object v1, Lcom/android/server/os/BackgroundCompactionService;->job_sm:Landroid/app/job/JobInfo;

    invoke-virtual {v0, v1}, Landroid/app/job/JobScheduler;->schedule(Landroid/app/job/JobInfo;)I

    goto :goto_0
.end method


# virtual methods
.method public onStartJob(Landroid/app/job/JobParameters;)Z
    .locals 6

    const/4 v5, 0x0

    move-object v1, p1

    invoke-virtual {p1}, Landroid/app/job/JobParameters;->getJobId()I

    move-result v0

    const-string/jumbo v2, "BackgroundCompactionService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "onStart. jobID="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v2, 0x31f

    if-ne v0, v2, :cond_1

    sget v2, Lcom/android/server/os/BackgroundCompactionService;->display_status:I

    if-nez v2, :cond_0

    new-instance v2, Lcom/android/server/os/BackgroundCompactionService$2;

    const-string/jumbo v3, "BackgroundCompaction_thread"

    invoke-direct {v2, p0, v3, p1}, Lcom/android/server/os/BackgroundCompactionService$2;-><init>(Lcom/android/server/os/BackgroundCompactionService;Ljava/lang/String;Landroid/app/job/JobParameters;)V

    invoke-virtual {v2}, Lcom/android/server/os/BackgroundCompactionService$2;->start()V

    :goto_0
    sput v5, Lcom/android/server/os/BackgroundCompactionService;->pending_job:I

    :goto_1
    const-string/jumbo v2, "BackgroundCompactionService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "onStart done. jobID="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x1

    return v2

    :cond_0
    invoke-virtual {p0, p1, v5}, Lcom/android/server/os/BackgroundCompactionService;->jobFinished(Landroid/app/job/JobParameters;Z)V

    const-string/jumbo v2, "BackgroundCompactionService"

    const-string/jumbo v3, "compact_exception"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    const/16 v2, 0x31e

    if-ne v0, v2, :cond_2

    const-string/jumbo v2, "BackgroundCompactionService"

    const-string/jumbo v3, "This condition is no longer used in N-OS"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, p1, v5}, Lcom/android/server/os/BackgroundCompactionService;->jobFinished(Landroid/app/job/JobParameters;Z)V

    goto :goto_1

    :cond_2
    const/16 v2, 0x31d

    if-ne v0, v2, :cond_3

    new-instance v2, Lcom/android/server/os/BackgroundCompactionService$3;

    const-string/jumbo v3, "BackgroundCompaction_thread"

    invoke-direct {v2, p0, v3, p1}, Lcom/android/server/os/BackgroundCompactionService$3;-><init>(Lcom/android/server/os/BackgroundCompactionService;Ljava/lang/String;Landroid/app/job/JobParameters;)V

    invoke-virtual {v2}, Lcom/android/server/os/BackgroundCompactionService$3;->start()V

    sput v5, Lcom/android/server/os/BackgroundCompactionService;->pending_job:I

    goto :goto_1

    :cond_3
    invoke-virtual {p0, p1, v5}, Lcom/android/server/os/BackgroundCompactionService;->jobFinished(Landroid/app/job/JobParameters;Z)V

    goto :goto_1
.end method

.method public onStopJob(Landroid/app/job/JobParameters;)Z
    .locals 2

    const-string/jumbo v0, "BackgroundCompactionService"

    const-string/jumbo v1, "onIdleStop"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return v0
.end method
