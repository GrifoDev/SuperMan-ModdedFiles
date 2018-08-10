.class public Lcom/android/server/input/BackgroundKeyCountService;
.super Landroid/app/job/JobService;
.source "BackgroundKeyCountService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/input/BackgroundKeyCountService$HwKeyCount;
    }
.end annotation


# static fields
.field private static final BIGDATA_ENABLE:Z

.field private static final DEBUG:Z

.field private static final JOB_ID:I = 0x419

.field private static final SHIP_BUILD:Z

.field private static final TAG:Ljava/lang/String; = "BackgroundKeyCountService"

.field static jobInfo:Landroid/app/job/JobInfo;

.field private static mContext:Landroid/content/Context;

.field private static mCurrentKeyCount:Lcom/android/server/input/BackgroundKeyCountService$HwKeyCount;

.field private static sKeyCountServiceName:Landroid/content/ComponentName;


# direct methods
.method static synthetic -get0()Z
    .locals 1

    sget-boolean v0, Lcom/android/server/input/BackgroundKeyCountService;->DEBUG:Z

    return v0
.end method

.method static synthetic -get1()Landroid/content/Context;
    .locals 1

    sget-object v0, Lcom/android/server/input/BackgroundKeyCountService;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    const-string/jumbo v0, "true"

    const-string/jumbo v1, "ro.product_ship"

    const-string/jumbo v2, "false"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/input/BackgroundKeyCountService;->SHIP_BUILD:Z

    sget-boolean v0, Lcom/android/server/input/BackgroundKeyCountService;->SHIP_BUILD:Z

    xor-int/lit8 v0, v0, 0x1

    sput-boolean v0, Lcom/android/server/input/BackgroundKeyCountService;->DEBUG:Z

    new-instance v0, Landroid/content/ComponentName;

    const-string/jumbo v1, "android"

    const-class v2, Lcom/android/server/input/BackgroundKeyCountService;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/android/server/input/BackgroundKeyCountService;->sKeyCountServiceName:Landroid/content/ComponentName;

    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v0

    const-string/jumbo v1, "SEC_FLOATING_FEATURE_CONTEXTSERVICE_ENABLE_SURVEY_MODE"

    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/SemFloatingFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/input/BackgroundKeyCountService;->BIGDATA_ENABLE:Z

    const/4 v0, 0x0

    sput-object v0, Lcom/android/server/input/BackgroundKeyCountService;->jobInfo:Landroid/app/job/JobInfo;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/job/JobService;-><init>()V

    return-void
.end method

.method public static schedule()V
    .locals 6

    sget-boolean v2, Lcom/android/server/input/BackgroundKeyCountService;->BIGDATA_ENABLE:Z

    if-eqz v2, :cond_0

    const-string/jumbo v2, "BackgroundKeyCountService"

    const-string/jumbo v3, "schedule"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v2, Lcom/android/server/input/BackgroundKeyCountService;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "jobscheduler"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/job/JobScheduler;

    :try_start_0
    new-instance v2, Landroid/app/job/JobInfo$Builder;

    sget-object v3, Lcom/android/server/input/BackgroundKeyCountService;->sKeyCountServiceName:Landroid/content/ComponentName;

    const/16 v4, 0x419

    invoke-direct {v2, v4, v3}, Landroid/app/job/JobInfo$Builder;-><init>(ILandroid/content/ComponentName;)V

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/app/job/JobInfo$Builder;->setRequiresDeviceIdle(Z)Landroid/app/job/JobInfo$Builder;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/app/job/JobInfo$Builder;->setRequiresCharging(Z)Landroid/app/job/JobInfo$Builder;

    move-result-object v2

    sget-object v3, Ljava/util/concurrent/TimeUnit;->DAYS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v4, 0x1

    invoke-virtual {v3, v4, v5}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Landroid/app/job/JobInfo$Builder;->setPeriodic(J)Landroid/app/job/JobInfo$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/job/JobInfo$Builder;->build()Landroid/app/job/JobInfo;

    move-result-object v2

    sput-object v2, Lcom/android/server/input/BackgroundKeyCountService;->jobInfo:Landroid/app/job/JobInfo;

    sget-object v2, Lcom/android/server/input/BackgroundKeyCountService;->jobInfo:Landroid/app/job/JobInfo;

    if-eqz v2, :cond_0

    sget-object v2, Lcom/android/server/input/BackgroundKeyCountService;->jobInfo:Landroid/app/job/JobInfo;

    invoke-virtual {v1, v2}, Landroid/app/job/JobScheduler;->schedule(Landroid/app/job/JobInfo;)I

    const-string/jumbo v2, "BackgroundKeyCountService"

    const-string/jumbo v3, "Job scheduled!"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v2, "BackgroundKeyCountService"

    const-string/jumbo v3, "catch the exception:"

    invoke-static {v2, v3, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method


# virtual methods
.method public increaseCount(I)V
    .locals 1

    sget-object v0, Lcom/android/server/input/BackgroundKeyCountService;->mCurrentKeyCount:Lcom/android/server/input/BackgroundKeyCountService$HwKeyCount;

    invoke-virtual {v0, p1}, Lcom/android/server/input/BackgroundKeyCountService$HwKeyCount;->add(I)V

    return-void
.end method

.method public init(Landroid/content/Context;)V
    .locals 2

    const-string/jumbo v0, "BackgroundKeyCountService"

    const-string/jumbo v1, "init"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    sput-object p1, Lcom/android/server/input/BackgroundKeyCountService;->mContext:Landroid/content/Context;

    new-instance v0, Lcom/android/server/input/BackgroundKeyCountService$HwKeyCount;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/input/BackgroundKeyCountService$HwKeyCount;-><init>(Lcom/android/server/input/BackgroundKeyCountService;Lcom/android/server/input/BackgroundKeyCountService$HwKeyCount;)V

    sput-object v0, Lcom/android/server/input/BackgroundKeyCountService;->mCurrentKeyCount:Lcom/android/server/input/BackgroundKeyCountService$HwKeyCount;

    invoke-static {}, Lcom/android/server/input/BackgroundKeyCountService;->schedule()V

    return-void
.end method

.method public kickOldies()V
    .locals 10

    const/4 v5, 0x0

    const-string/jumbo v4, "BackgroundKeyCountService"

    const-string/jumbo v6, "read old data!"

    invoke-static {v4, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v4, "persist.service.bgkeycount"

    const-string/jumbo v6, "null"

    invoke-static {v4, v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v6, "/"

    invoke-virtual {v4, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    new-instance v0, Lcom/android/server/input/BackgroundKeyCountService$HwKeyCount;

    const/4 v4, 0x0

    invoke-direct {v0, p0, v4}, Lcom/android/server/input/BackgroundKeyCountService$HwKeyCount;-><init>(Lcom/android/server/input/BackgroundKeyCountService;Lcom/android/server/input/BackgroundKeyCountService$HwKeyCount;)V

    array-length v6, v2

    move v4, v5

    :goto_0
    if-ge v4, v6, :cond_2

    aget-object v3, v2, v4

    sget-boolean v7, Lcom/android/server/input/BackgroundKeyCountService;->DEBUG:Z

    if-eqz v7, :cond_0

    const-string/jumbo v7, "BackgroundKeyCountService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "@@@ s= "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const-string/jumbo v7, ","

    invoke-virtual {v3, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    array-length v7, v1

    const/4 v8, 0x2

    if-eq v7, v8, :cond_1

    const-string/jumbo v4, "BackgroundKeyCountService"

    const-string/jumbo v5, "throw up the data!"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    aget-object v7, v1, v5

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    const/4 v8, 0x1

    aget-object v8, v1, v8

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    invoke-virtual {v0, v7, v8}, Lcom/android/server/input/BackgroundKeyCountService$HwKeyCount;->add(II)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_2
    invoke-virtual {v0}, Lcom/android/server/input/BackgroundKeyCountService$HwKeyCount;->send()V

    const-string/jumbo v4, "persist.service.bgkeycount"

    const-string/jumbo v5, ""

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onStartJob(Landroid/app/job/JobParameters;)Z
    .locals 2

    const-string/jumbo v0, "BackgroundKeyCountService"

    const-string/jumbo v1, "Job started!"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/android/server/input/BackgroundKeyCountService;->mCurrentKeyCount:Lcom/android/server/input/BackgroundKeyCountService$HwKeyCount;

    invoke-virtual {v0}, Lcom/android/server/input/BackgroundKeyCountService$HwKeyCount;->send()V

    const/4 v0, 0x0

    return v0
.end method

.method public onStopJob(Landroid/app/job/JobParameters;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public saveCount()V
    .locals 1

    sget-object v0, Lcom/android/server/input/BackgroundKeyCountService;->mCurrentKeyCount:Lcom/android/server/input/BackgroundKeyCountService$HwKeyCount;

    invoke-virtual {v0}, Lcom/android/server/input/BackgroundKeyCountService$HwKeyCount;->save()V

    return-void
.end method

.method public send()V
    .locals 1

    sget-object v0, Lcom/android/server/input/BackgroundKeyCountService;->mCurrentKeyCount:Lcom/android/server/input/BackgroundKeyCountService$HwKeyCount;

    invoke-virtual {v0}, Lcom/android/server/input/BackgroundKeyCountService$HwKeyCount;->send()V

    return-void
.end method
