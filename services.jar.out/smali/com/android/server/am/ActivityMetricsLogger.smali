.class Lcom/android/server/am/ActivityMetricsLogger;
.super Ljava/lang/Object;
.source "ActivityMetricsLogger.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/am/ActivityMetricsLogger$H;,
        Lcom/android/server/am/ActivityMetricsLogger$StackTransitionInfo;
    }
.end annotation


# static fields
.field private static final INVALID_START_TIME:J = -0x1L

.field private static final MSG_CHECK_VISIBILITY:I = 0x0

.field private static final TAG:Ljava/lang/String; = "ActivityManager"

.field private static final TRON_WINDOW_STATE_VARZ_STRINGS:[Ljava/lang/String;

.field private static final WINDOW_STATE_ASSISTANT:I = 0x3

.field private static final WINDOW_STATE_FREEFORM:I = 0x2

.field private static final WINDOW_STATE_INVALID:I = -0x1

.field private static final WINDOW_STATE_SIDE_BY_SIDE:I = 0x1

.field private static final WINDOW_STATE_STANDARD:I


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mCurrentTransitionDelayMs:I

.field private mCurrentTransitionDeviceUptime:I

.field private mCurrentTransitionStartTime:J

.field private final mHandler:Lcom/android/server/am/ActivityMetricsLogger$H;

.field private mLastLogTimeSecs:J

.field private mLoggedTransitionStarting:Z

.field private final mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

.field private final mStackTransitionInfo:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/android/server/am/ActivityMetricsLogger$StackTransitionInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final mSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

.field private mWindowState:I


# direct methods
.method static synthetic -wrap0(Lcom/android/server/am/ActivityMetricsLogger;Lcom/android/server/am/TaskRecord;Lcom/android/server/am/ActivityRecord;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/server/am/ActivityMetricsLogger;->checkVisibility(Lcom/android/server/am/TaskRecord;Lcom/android/server/am/ActivityRecord;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "window_time_0"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string/jumbo v1, "window_time_1"

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-string/jumbo v1, "window_time_2"

    const/4 v2, 0x2

    aput-object v1, v0, v2

    const-string/jumbo v1, "window_time_3"

    const/4 v2, 0x3

    aput-object v1, v0, v2

    sput-object v0, Lcom/android/server/am/ActivityMetricsLogger;->TRON_WINDOW_STATE_VARZ_STRINGS:[Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Lcom/android/server/am/ActivityStackSupervisor;Landroid/content/Context;Landroid/os/Looper;)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/am/ActivityMetricsLogger;->mWindowState:I

    new-instance v0, Lcom/android/internal/logging/MetricsLogger;

    invoke-direct {v0}, Lcom/android/internal/logging/MetricsLogger;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/ActivityMetricsLogger;->mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/server/am/ActivityMetricsLogger;->mCurrentTransitionStartTime:J

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/ActivityMetricsLogger;->mStackTransitionInfo:Landroid/util/SparseArray;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/server/am/ActivityMetricsLogger;->mLastLogTimeSecs:J

    iput-object p1, p0, Lcom/android/server/am/ActivityMetricsLogger;->mSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iput-object p2, p0, Lcom/android/server/am/ActivityMetricsLogger;->mContext:Landroid/content/Context;

    new-instance v0, Lcom/android/server/am/ActivityMetricsLogger$H;

    invoke-direct {v0, p0, p3}, Lcom/android/server/am/ActivityMetricsLogger$H;-><init>(Lcom/android/server/am/ActivityMetricsLogger;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/am/ActivityMetricsLogger;->mHandler:Lcom/android/server/am/ActivityMetricsLogger$H;

    return-void
.end method

.method private allStacksWindowsDrawn()Z
    .locals 3

    const/4 v2, 0x0

    iget-object v1, p0, Lcom/android/server/am/ActivityMetricsLogger;->mStackTransitionInfo:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    add-int/lit8 v0, v1, -0x1

    :goto_0
    if-ltz v0, :cond_1

    iget-object v1, p0, Lcom/android/server/am/ActivityMetricsLogger;->mStackTransitionInfo:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ActivityMetricsLogger$StackTransitionInfo;

    invoke-static {v1}, Lcom/android/server/am/ActivityMetricsLogger$StackTransitionInfo;->-get4(Lcom/android/server/am/ActivityMetricsLogger$StackTransitionInfo;)Z

    move-result v1

    if-nez v1, :cond_0

    return v2

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x1

    return v1
.end method

.method private calculateCurrentDelay()I
    .locals 4

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/server/am/ActivityMetricsLogger;->mCurrentTransitionStartTime:J

    sub-long/2addr v0, v2

    long-to-int v0, v0

    return v0
.end method

.method private calculateDelay(J)I
    .locals 3

    iget-wide v0, p0, Lcom/android/server/am/ActivityMetricsLogger;->mCurrentTransitionStartTime:J

    sub-long v0, p1, v0

    long-to-int v0, v0

    return v0
.end method

.method private checkVisibility(Lcom/android/server/am/TaskRecord;Lcom/android/server/am/ActivityRecord;)V
    .locals 4

    iget-object v1, p0, Lcom/android/server/am/ActivityMetricsLogger;->mSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v2, v1, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v2

    :try_start_0
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    iget-object v1, p0, Lcom/android/server/am/ActivityMetricsLogger;->mStackTransitionInfo:Landroid/util/SparseArray;

    invoke-virtual {p2}, Lcom/android/server/am/ActivityRecord;->getStackId()I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/ActivityMetricsLogger$StackTransitionInfo;

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/android/server/am/TaskRecord;->isVisible()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    invoke-direct {p0, v0}, Lcom/android/server/am/ActivityMetricsLogger;->logAppTransitionCancel(Lcom/android/server/am/ActivityMetricsLogger$StackTransitionInfo;)V

    iget-object v1, p0, Lcom/android/server/am/ActivityMetricsLogger;->mStackTransitionInfo:Landroid/util/SparseArray;

    invoke-virtual {p2}, Lcom/android/server/am/ActivityRecord;->getStackId()I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/util/SparseArray;->remove(I)V

    iget-object v1, p0, Lcom/android/server/am/ActivityMetricsLogger;->mStackTransitionInfo:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/android/server/am/ActivityMetricsLogger;->reset(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit v2

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v2

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method private getTransitionType(Lcom/android/server/am/ActivityMetricsLogger$StackTransitionInfo;)I
    .locals 2

    invoke-static {p1}, Lcom/android/server/am/ActivityMetricsLogger$StackTransitionInfo;->-get1(Lcom/android/server/am/ActivityMetricsLogger$StackTransitionInfo;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {p1}, Lcom/android/server/am/ActivityMetricsLogger$StackTransitionInfo;->-get6(Lcom/android/server/am/ActivityMetricsLogger$StackTransitionInfo;)I

    move-result v0

    if-nez v0, :cond_0

    const/16 v0, 0x8

    return v0

    :cond_0
    invoke-static {p1}, Lcom/android/server/am/ActivityMetricsLogger$StackTransitionInfo;->-get6(Lcom/android/server/am/ActivityMetricsLogger$StackTransitionInfo;)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    const/16 v0, 0x9

    return v0

    :cond_1
    invoke-static {p1}, Lcom/android/server/am/ActivityMetricsLogger$StackTransitionInfo;->-get6(Lcom/android/server/am/ActivityMetricsLogger$StackTransitionInfo;)I

    move-result v0

    if-nez v0, :cond_2

    const/4 v0, 0x7

    return v0

    :cond_2
    const/4 v0, -0x1

    return v0
.end method

.method private hasStartedActivity(Lcom/android/server/am/ProcessRecord;Lcom/android/server/am/ActivityRecord;)Z
    .locals 5

    const/4 v4, 0x0

    iget-object v0, p1, Lcom/android/server/am/ProcessRecord;->activities:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v2, v3, -0x1

    :goto_0
    if-ltz v2, :cond_2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ActivityRecord;

    if-ne p2, v1, :cond_1

    :cond_0
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    :cond_1
    iget-boolean v3, v1, Lcom/android/server/am/ActivityRecord;->stopped:Z

    if-nez v3, :cond_0

    const/4 v3, 0x1

    return v3

    :cond_2
    return v4
.end method

.method private isAnyTransitionActive()Z
    .locals 6

    const/4 v0, 0x0

    iget-wide v2, p0, Lcom/android/server/am/ActivityMetricsLogger;->mCurrentTransitionStartTime:J

    const-wide/16 v4, -0x1

    cmp-long v1, v2, v4

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/am/ActivityMetricsLogger;->mStackTransitionInfo:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-lez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method private logAppTransitionCancel(Lcom/android/server/am/ActivityMetricsLogger$StackTransitionInfo;)V
    .locals 4

    invoke-direct {p0, p1}, Lcom/android/server/am/ActivityMetricsLogger;->getTransitionType(Lcom/android/server/am/ActivityMetricsLogger$StackTransitionInfo;)I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    return-void

    :cond_0
    new-instance v0, Landroid/metrics/LogMaker;

    const/16 v2, 0x477

    invoke-direct {v0, v2}, Landroid/metrics/LogMaker;-><init>(I)V

    invoke-static {p1}, Lcom/android/server/am/ActivityMetricsLogger$StackTransitionInfo;->-get2(Lcom/android/server/am/ActivityMetricsLogger$StackTransitionInfo;)Lcom/android/server/am/ActivityRecord;

    move-result-object v2

    iget-object v2, v2, Lcom/android/server/am/ActivityRecord;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/metrics/LogMaker;->setPackageName(Ljava/lang/String;)Landroid/metrics/LogMaker;

    invoke-virtual {v0, v1}, Landroid/metrics/LogMaker;->setType(I)Landroid/metrics/LogMaker;

    invoke-static {p1}, Lcom/android/server/am/ActivityMetricsLogger$StackTransitionInfo;->-get2(Lcom/android/server/am/ActivityMetricsLogger$StackTransitionInfo;)Lcom/android/server/am/ActivityRecord;

    move-result-object v2

    iget-object v2, v2, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    const/16 v3, 0x367

    invoke-virtual {v0, v3, v2}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    iget-object v2, p0, Lcom/android/server/am/ActivityMetricsLogger;->mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    invoke-virtual {v2, v0}, Lcom/android/internal/logging/MetricsLogger;->write(Landroid/metrics/LogMaker;)V

    return-void
.end method

.method private logAppTransitionMultiEvents()V
    .locals 10

    const/4 v6, 0x0

    const/4 v9, 0x0

    const/4 v8, -0x1

    iget-object v5, p0, Lcom/android/server/am/ActivityMetricsLogger;->mStackTransitionInfo:Landroid/util/SparseArray;

    invoke-virtual {v5}, Landroid/util/SparseArray;->size()I

    move-result v5

    add-int/lit8 v1, v5, -0x1

    :goto_0
    if-ltz v1, :cond_6

    iget-object v5, p0, Lcom/android/server/am/ActivityMetricsLogger;->mStackTransitionInfo:Landroid/util/SparseArray;

    invoke-virtual {v5, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/ActivityMetricsLogger$StackTransitionInfo;

    invoke-direct {p0, v2}, Lcom/android/server/am/ActivityMetricsLogger;->getTransitionType(Lcom/android/server/am/ActivityMetricsLogger$StackTransitionInfo;)I

    move-result v4

    if-ne v4, v8, :cond_0

    return-void

    :cond_0
    new-instance v0, Landroid/metrics/LogMaker;

    const/16 v5, 0x2f9

    invoke-direct {v0, v5}, Landroid/metrics/LogMaker;-><init>(I)V

    invoke-static {v2}, Lcom/android/server/am/ActivityMetricsLogger$StackTransitionInfo;->-get2(Lcom/android/server/am/ActivityMetricsLogger$StackTransitionInfo;)Lcom/android/server/am/ActivityRecord;

    move-result-object v5

    iget-object v5, v5, Lcom/android/server/am/ActivityRecord;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v5}, Landroid/metrics/LogMaker;->setPackageName(Ljava/lang/String;)Landroid/metrics/LogMaker;

    invoke-virtual {v0, v4}, Landroid/metrics/LogMaker;->setType(I)Landroid/metrics/LogMaker;

    invoke-static {v2}, Lcom/android/server/am/ActivityMetricsLogger$StackTransitionInfo;->-get2(Lcom/android/server/am/ActivityMetricsLogger$StackTransitionInfo;)Lcom/android/server/am/ActivityRecord;

    move-result-object v5

    iget-object v5, v5, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v5, v5, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    const/16 v7, 0x367

    invoke-virtual {v0, v7, v5}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    invoke-static {v2}, Lcom/android/server/am/ActivityMetricsLogger$StackTransitionInfo;->-get2(Lcom/android/server/am/ActivityMetricsLogger$StackTransitionInfo;)Lcom/android/server/am/ActivityRecord;

    move-result-object v5

    iget-object v5, v5, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v5, v5, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v5}, Landroid/content/pm/ApplicationInfo;->isInstantApp()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-static {v2}, Lcom/android/server/am/ActivityMetricsLogger$StackTransitionInfo;->-get2(Lcom/android/server/am/ActivityMetricsLogger$StackTransitionInfo;)Lcom/android/server/am/ActivityRecord;

    move-result-object v5

    iget-object v5, v5, Lcom/android/server/am/ActivityRecord;->launchedFromPackage:Ljava/lang/String;

    if-eqz v5, :cond_1

    invoke-static {v2}, Lcom/android/server/am/ActivityMetricsLogger$StackTransitionInfo;->-get2(Lcom/android/server/am/ActivityMetricsLogger$StackTransitionInfo;)Lcom/android/server/am/ActivityRecord;

    move-result-object v5

    iget-object v5, v5, Lcom/android/server/am/ActivityRecord;->launchedFromPackage:Ljava/lang/String;

    const/16 v7, 0x388

    invoke-virtual {v0, v7, v5}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    :cond_1
    invoke-static {v2}, Lcom/android/server/am/ActivityMetricsLogger$StackTransitionInfo;->-get2(Lcom/android/server/am/ActivityMetricsLogger$StackTransitionInfo;)Lcom/android/server/am/ActivityRecord;

    move-result-object v5

    iget-object v5, v5, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v5, v5, Landroid/content/pm/ActivityInfo;->launchToken:Ljava/lang/String;

    if-eqz v5, :cond_2

    invoke-static {v2}, Lcom/android/server/am/ActivityMetricsLogger$StackTransitionInfo;->-get2(Lcom/android/server/am/ActivityMetricsLogger$StackTransitionInfo;)Lcom/android/server/am/ActivityRecord;

    move-result-object v5

    iget-object v5, v5, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v5, v5, Landroid/content/pm/ActivityInfo;->launchToken:Ljava/lang/String;

    const/16 v7, 0x387

    invoke-virtual {v0, v7, v5}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    invoke-static {v2}, Lcom/android/server/am/ActivityMetricsLogger$StackTransitionInfo;->-get2(Lcom/android/server/am/ActivityMetricsLogger$StackTransitionInfo;)Lcom/android/server/am/ActivityRecord;

    move-result-object v5

    iget-object v5, v5, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iput-object v9, v5, Landroid/content/pm/ActivityInfo;->launchToken:Ljava/lang/String;

    :cond_2
    if-eqz v3, :cond_5

    const/4 v5, 0x1

    :goto_1
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/16 v7, 0x389

    invoke-virtual {v0, v7, v5}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    iget v5, p0, Lcom/android/server/am/ActivityMetricsLogger;->mCurrentTransitionDeviceUptime:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/16 v7, 0x145

    invoke-virtual {v0, v7, v5}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    iget v5, p0, Lcom/android/server/am/ActivityMetricsLogger;->mCurrentTransitionDelayMs:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/16 v7, 0x13f

    invoke-virtual {v0, v7, v5}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    invoke-static {v2}, Lcom/android/server/am/ActivityMetricsLogger$StackTransitionInfo;->-get5(Lcom/android/server/am/ActivityMetricsLogger$StackTransitionInfo;)I

    move-result v5

    invoke-virtual {v0, v5}, Landroid/metrics/LogMaker;->setSubtype(I)Landroid/metrics/LogMaker;

    invoke-static {v2}, Lcom/android/server/am/ActivityMetricsLogger$StackTransitionInfo;->-get7(Lcom/android/server/am/ActivityMetricsLogger$StackTransitionInfo;)I

    move-result v5

    if-eq v5, v8, :cond_3

    invoke-static {v2}, Lcom/android/server/am/ActivityMetricsLogger$StackTransitionInfo;->-get7(Lcom/android/server/am/ActivityMetricsLogger$StackTransitionInfo;)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/16 v7, 0x141

    invoke-virtual {v0, v7, v5}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    :cond_3
    invoke-static {v2}, Lcom/android/server/am/ActivityMetricsLogger$StackTransitionInfo;->-get0(Lcom/android/server/am/ActivityMetricsLogger$StackTransitionInfo;)I

    move-result v5

    if-eq v5, v8, :cond_4

    invoke-static {v2}, Lcom/android/server/am/ActivityMetricsLogger$StackTransitionInfo;->-get0(Lcom/android/server/am/ActivityMetricsLogger$StackTransitionInfo;)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/16 v7, 0x3b1

    invoke-virtual {v0, v7, v5}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    :cond_4
    invoke-static {v2}, Lcom/android/server/am/ActivityMetricsLogger$StackTransitionInfo;->-get8(Lcom/android/server/am/ActivityMetricsLogger$StackTransitionInfo;)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/16 v7, 0x142

    invoke-virtual {v0, v7, v5}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    iget-object v5, p0, Lcom/android/server/am/ActivityMetricsLogger;->mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    invoke-virtual {v5, v0}, Lcom/android/internal/logging/MetricsLogger;->write(Landroid/metrics/LogMaker;)V

    add-int/lit8 v1, v1, -0x1

    goto/16 :goto_0

    :cond_5
    move v5, v6

    goto :goto_1

    :cond_6
    return-void
.end method

.method private notifyActivityLaunched(ILcom/android/server/am/ActivityRecord;ZZ)V
    .locals 9

    const/4 v8, 0x0

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Lcom/android/server/am/ActivityRecord;->getStack()Lcom/android/server/am/ActivityStack;

    move-result-object v4

    if-eqz v4, :cond_0

    invoke-virtual {p2}, Lcom/android/server/am/ActivityRecord;->getStack()Lcom/android/server/am/ActivityStack;

    move-result-object v4

    iget v3, v4, Lcom/android/server/am/ActivityStack;->mStackId:I

    :goto_0
    iget-wide v4, p0, Lcom/android/server/am/ActivityMetricsLogger;->mCurrentTransitionStartTime:J

    const-wide/16 v6, -0x1

    cmp-long v4, v4, v6

    if-nez v4, :cond_1

    return-void

    :cond_0
    const/4 v3, -0x1

    goto :goto_0

    :cond_1
    iget-object v4, p0, Lcom/android/server/am/ActivityMetricsLogger;->mStackTransitionInfo:Landroid/util/SparseArray;

    invoke-virtual {v4, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/ActivityMetricsLogger$StackTransitionInfo;

    if-eqz p2, :cond_2

    if-eqz v0, :cond_2

    invoke-static {v0, p2}, Lcom/android/server/am/ActivityMetricsLogger$StackTransitionInfo;->-set2(Lcom/android/server/am/ActivityMetricsLogger$StackTransitionInfo;Lcom/android/server/am/ActivityRecord;)Lcom/android/server/am/ActivityRecord;

    return-void

    :cond_2
    iget-object v4, p0, Lcom/android/server/am/ActivityMetricsLogger;->mStackTransitionInfo:Landroid/util/SparseArray;

    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    move-result v4

    if-lez v4, :cond_4

    if-nez v0, :cond_4

    const/4 v2, 0x1

    :goto_1
    if-ltz p1, :cond_3

    if-nez p2, :cond_5

    :cond_3
    xor-int/lit8 v4, v2, 0x1

    if-eqz v4, :cond_6

    const/4 v4, 0x1

    invoke-direct {p0, v4}, Lcom/android/server/am/ActivityMetricsLogger;->reset(Z)V

    return-void

    :cond_4
    const/4 v2, 0x0

    goto :goto_1

    :cond_5
    xor-int/lit8 v4, p4, 0x1

    if-nez v4, :cond_3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_3

    :cond_6
    if-eqz v2, :cond_7

    return-void

    :cond_7
    new-instance v1, Lcom/android/server/am/ActivityMetricsLogger$StackTransitionInfo;

    invoke-direct {v1, p0, v8}, Lcom/android/server/am/ActivityMetricsLogger$StackTransitionInfo;-><init>(Lcom/android/server/am/ActivityMetricsLogger;Lcom/android/server/am/ActivityMetricsLogger$StackTransitionInfo;)V

    invoke-static {v1, p2}, Lcom/android/server/am/ActivityMetricsLogger$StackTransitionInfo;->-set2(Lcom/android/server/am/ActivityMetricsLogger$StackTransitionInfo;Lcom/android/server/am/ActivityRecord;)Lcom/android/server/am/ActivityRecord;

    invoke-static {v1, p3}, Lcom/android/server/am/ActivityMetricsLogger$StackTransitionInfo;->-set1(Lcom/android/server/am/ActivityMetricsLogger$StackTransitionInfo;Z)Z

    invoke-static {v1, p1}, Lcom/android/server/am/ActivityMetricsLogger$StackTransitionInfo;->-set6(Lcom/android/server/am/ActivityMetricsLogger$StackTransitionInfo;I)I

    iget-object v4, p0, Lcom/android/server/am/ActivityMetricsLogger;->mStackTransitionInfo:Landroid/util/SparseArray;

    invoke-virtual {v4, v3, v1}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    const-wide/16 v6, 0x3e8

    div-long/2addr v4, v6

    long-to-int v4, v4

    iput v4, p0, Lcom/android/server/am/ActivityMetricsLogger;->mCurrentTransitionDeviceUptime:I

    return-void
.end method

.method private reset(Z)V
    .locals 2

    if-nez p1, :cond_0

    invoke-direct {p0}, Lcom/android/server/am/ActivityMetricsLogger;->isAnyTransitionActive()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/server/am/ActivityMetricsLogger;->logAppTransitionMultiEvents()V

    :cond_0
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/server/am/ActivityMetricsLogger;->mCurrentTransitionStartTime:J

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/am/ActivityMetricsLogger;->mCurrentTransitionDelayMs:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/am/ActivityMetricsLogger;->mLoggedTransitionStarting:Z

    iget-object v0, p0, Lcom/android/server/am/ActivityMetricsLogger;->mStackTransitionInfo:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    return-void
.end method


# virtual methods
.method logWindowState()V
    .locals 13

    const/4 v12, 0x1

    const/4 v11, 0x0

    const/4 v10, 0x0

    const/4 v9, 0x3

    const/4 v8, -0x1

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    const-wide/16 v6, 0x3e8

    div-long v0, v4, v6

    iget v4, p0, Lcom/android/server/am/ActivityMetricsLogger;->mWindowState:I

    if-eq v4, v8, :cond_0

    iget-object v4, p0, Lcom/android/server/am/ActivityMetricsLogger;->mContext:Landroid/content/Context;

    sget-object v5, Lcom/android/server/am/ActivityMetricsLogger;->TRON_WINDOW_STATE_VARZ_STRINGS:[Ljava/lang/String;

    iget v6, p0, Lcom/android/server/am/ActivityMetricsLogger;->mWindowState:I

    aget-object v5, v5, v6

    iget-wide v6, p0, Lcom/android/server/am/ActivityMetricsLogger;->mLastLogTimeSecs:J

    sub-long v6, v0, v6

    long-to-int v6, v6

    invoke-static {v4, v5, v6}, Lcom/android/internal/logging/MetricsLogger;->count(Landroid/content/Context;Ljava/lang/String;I)V

    :cond_0
    iput-wide v0, p0, Lcom/android/server/am/ActivityMetricsLogger;->mLastLogTimeSecs:J

    iget-object v4, p0, Lcom/android/server/am/ActivityMetricsLogger;->mSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v4, v9}, Lcom/android/server/am/ActivityStackSupervisor;->getStack(I)Lcom/android/server/am/ActivityStack;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {v2, v10}, Lcom/android/server/am/ActivityStack;->shouldBeVisible(Lcom/android/server/am/ActivityRecord;)I

    move-result v4

    if-eqz v4, :cond_1

    iput v12, p0, Lcom/android/server/am/ActivityMetricsLogger;->mWindowState:I

    return-void

    :cond_1
    iput v8, p0, Lcom/android/server/am/ActivityMetricsLogger;->mWindowState:I

    iget-object v4, p0, Lcom/android/server/am/ActivityMetricsLogger;->mSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v4}, Lcom/android/server/am/ActivityStackSupervisor;->getFocusedStack()Lcom/android/server/am/ActivityStack;

    move-result-object v2

    if-nez v2, :cond_2

    sget-object v4, Lcom/android/server/am/ActivityMetricsLogger;->TAG:Ljava/lang/String;

    const-string/jumbo v5, "Now focused stack is null, because it reported not"

    invoke-static {v4, v5}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_2
    iget v4, v2, Lcom/android/server/am/ActivityStack;->mStackId:I

    const/4 v5, 0x4

    if-ne v4, v5, :cond_3

    iget-object v4, p0, Lcom/android/server/am/ActivityMetricsLogger;->mSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v4, v2}, Lcom/android/server/am/ActivityStackSupervisor;->findStackBehind(Lcom/android/server/am/ActivityStack;)Lcom/android/server/am/ActivityStack;

    move-result-object v2

    :cond_3
    iget v4, v2, Lcom/android/server/am/ActivityStack;->mStackId:I

    invoke-static {v4}, Lcom/samsung/android/multiscreen/MultiScreenManager;->getStackIdExcludingDisplayId(I)I

    move-result v3

    invoke-static {v3}, Landroid/app/ActivityManager$StackId;->isHomeOrRecentsStack(I)Z

    move-result v4

    if-nez v4, :cond_4

    if-ne v3, v12, :cond_6

    :cond_4
    iput v11, p0, Lcom/android/server/am/ActivityMetricsLogger;->mWindowState:I

    :cond_5
    :goto_0
    return-void

    :cond_6
    if-ne v3, v9, :cond_7

    sget-object v4, Lcom/android/server/am/ActivityMetricsLogger;->TAG:Ljava/lang/String;

    const-string/jumbo v5, "Docked stack shouldn\'t be the focused stack, because it reported not being visible."

    invoke-static {v4, v5}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    iput v8, p0, Lcom/android/server/am/ActivityMetricsLogger;->mWindowState:I

    goto :goto_0

    :cond_7
    const/4 v4, 0x2

    if-ne v3, v4, :cond_8

    const/4 v4, 0x2

    iput v4, p0, Lcom/android/server/am/ActivityMetricsLogger;->mWindowState:I

    goto :goto_0

    :cond_8
    const/4 v4, 0x6

    if-ne v3, v4, :cond_9

    iput v9, p0, Lcom/android/server/am/ActivityMetricsLogger;->mWindowState:I

    goto :goto_0

    :cond_9
    invoke-static {v3}, Landroid/app/ActivityManager$StackId;->isStaticStack(I)Z

    move-result v4

    if-eqz v4, :cond_5

    new-instance v4, Ljava/lang/IllegalStateException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Unknown stack="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4
.end method

.method notifyActivityLaunched(ILcom/android/server/am/ActivityRecord;)V
    .locals 6

    if-eqz p2, :cond_0

    iget-object v3, p0, Lcom/android/server/am/ActivityMetricsLogger;->mSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v3, v3, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mProcessNames:Lcom/android/internal/app/ProcessMap;

    iget-object v4, p2, Lcom/android/server/am/ActivityRecord;->processName:Ljava/lang/String;

    iget-object v5, p2, Lcom/android/server/am/ActivityRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget v5, v5, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v3, v4, v5}, Lcom/android/internal/app/ProcessMap;->get(Ljava/lang/String;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/ProcessRecord;

    :goto_0
    if-eqz v0, :cond_1

    const/4 v1, 0x1

    :goto_1
    if-eqz v0, :cond_2

    invoke-direct {p0, v0, p2}, Lcom/android/server/am/ActivityMetricsLogger;->hasStartedActivity(Lcom/android/server/am/ProcessRecord;Lcom/android/server/am/ActivityRecord;)Z

    move-result v3

    xor-int/lit8 v2, v3, 0x1

    :goto_2
    invoke-direct {p0, p1, p2, v1, v2}, Lcom/android/server/am/ActivityMetricsLogger;->notifyActivityLaunched(ILcom/android/server/am/ActivityRecord;ZZ)V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    goto :goto_1

    :cond_2
    const/4 v2, 0x1

    goto :goto_2
.end method

.method notifyActivityLaunching()V
    .locals 2

    invoke-direct {p0}, Lcom/android/server/am/ActivityMetricsLogger;->isAnyTransitionActive()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/am/ActivityMetricsLogger;->mCurrentTransitionStartTime:J

    :cond_0
    return-void
.end method

.method notifyBindApplication(Lcom/android/server/am/ProcessRecord;)V
    .locals 4

    iget-object v2, p0, Lcom/android/server/am/ActivityMetricsLogger;->mStackTransitionInfo:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    add-int/lit8 v0, v2, -0x1

    :goto_0
    if-ltz v0, :cond_1

    iget-object v2, p0, Lcom/android/server/am/ActivityMetricsLogger;->mStackTransitionInfo:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ActivityMetricsLogger$StackTransitionInfo;

    invoke-static {v1}, Lcom/android/server/am/ActivityMetricsLogger$StackTransitionInfo;->-get2(Lcom/android/server/am/ActivityMetricsLogger$StackTransitionInfo;)Lcom/android/server/am/ActivityRecord;

    move-result-object v2

    iget-object v2, v2, Lcom/android/server/am/ActivityRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v3, p1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    if-ne v2, v3, :cond_0

    invoke-direct {p0}, Lcom/android/server/am/ActivityMetricsLogger;->calculateCurrentDelay()I

    move-result v2

    invoke-static {v1, v2}, Lcom/android/server/am/ActivityMetricsLogger$StackTransitionInfo;->-set0(Lcom/android/server/am/ActivityMetricsLogger$StackTransitionInfo;I)I

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method notifyStartingWindowDrawn(IJ)V
    .locals 2

    iget-object v1, p0, Lcom/android/server/am/ActivityMetricsLogger;->mStackTransitionInfo:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/ActivityMetricsLogger$StackTransitionInfo;

    if-eqz v0, :cond_0

    invoke-static {v0}, Lcom/android/server/am/ActivityMetricsLogger$StackTransitionInfo;->-get3(Lcom/android/server/am/ActivityMetricsLogger$StackTransitionInfo;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    return-void

    :cond_1
    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/server/am/ActivityMetricsLogger$StackTransitionInfo;->-set3(Lcom/android/server/am/ActivityMetricsLogger$StackTransitionInfo;Z)Z

    invoke-direct {p0, p2, p3}, Lcom/android/server/am/ActivityMetricsLogger;->calculateDelay(J)I

    move-result v1

    invoke-static {v0, v1}, Lcom/android/server/am/ActivityMetricsLogger$StackTransitionInfo;->-set7(Lcom/android/server/am/ActivityMetricsLogger$StackTransitionInfo;I)I

    return-void
.end method

.method notifyTransitionStarting(Landroid/util/SparseIntArray;J)V
    .locals 6

    const/4 v4, 0x0

    invoke-direct {p0}, Lcom/android/server/am/ActivityMetricsLogger;->isAnyTransitionActive()Z

    move-result v3

    if-eqz v3, :cond_0

    iget-boolean v3, p0, Lcom/android/server/am/ActivityMetricsLogger;->mLoggedTransitionStarting:Z

    if-eqz v3, :cond_1

    :cond_0
    return-void

    :cond_1
    invoke-direct {p0, p2, p3}, Lcom/android/server/am/ActivityMetricsLogger;->calculateDelay(J)I

    move-result v3

    iput v3, p0, Lcom/android/server/am/ActivityMetricsLogger;->mCurrentTransitionDelayMs:I

    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/android/server/am/ActivityMetricsLogger;->mLoggedTransitionStarting:Z

    invoke-virtual {p1}, Landroid/util/SparseIntArray;->size()I

    move-result v3

    add-int/lit8 v0, v3, -0x1

    :goto_0
    if-ltz v0, :cond_3

    invoke-virtual {p1, v0}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v2

    iget-object v3, p0, Lcom/android/server/am/ActivityMetricsLogger;->mStackTransitionInfo:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ActivityMetricsLogger$StackTransitionInfo;

    if-nez v1, :cond_2

    :goto_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_2
    invoke-virtual {p1, v0}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v3

    invoke-static {v1, v3}, Lcom/android/server/am/ActivityMetricsLogger$StackTransitionInfo;->-set5(Lcom/android/server/am/ActivityMetricsLogger$StackTransitionInfo;I)I

    goto :goto_1

    :cond_3
    invoke-direct {p0}, Lcom/android/server/am/ActivityMetricsLogger;->allStacksWindowsDrawn()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-direct {p0, v4}, Lcom/android/server/am/ActivityMetricsLogger;->reset(Z)V

    :cond_4
    return-void
.end method

.method notifyVisibilityChanged(Lcom/android/server/am/ActivityRecord;)V
    .locals 5

    iget-object v3, p0, Lcom/android/server/am/ActivityMetricsLogger;->mStackTransitionInfo:Landroid/util/SparseArray;

    invoke-virtual {p1}, Lcom/android/server/am/ActivityRecord;->getStackId()I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ActivityMetricsLogger$StackTransitionInfo;

    if-nez v1, :cond_0

    return-void

    :cond_0
    invoke-static {v1}, Lcom/android/server/am/ActivityMetricsLogger$StackTransitionInfo;->-get2(Lcom/android/server/am/ActivityMetricsLogger$StackTransitionInfo;)Lcom/android/server/am/ActivityRecord;

    move-result-object v3

    if-eq v3, p1, :cond_1

    return-void

    :cond_1
    invoke-virtual {p1}, Lcom/android/server/am/ActivityRecord;->getTask()Lcom/android/server/am/TaskRecord;

    move-result-object v2

    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    move-result-object v0

    iput-object v2, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    iput-object p1, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    iget-object v3, p0, Lcom/android/server/am/ActivityMetricsLogger;->mHandler:Lcom/android/server/am/ActivityMetricsLogger$H;

    const/4 v4, 0x0

    invoke-virtual {v3, v4, v0}, Lcom/android/server/am/ActivityMetricsLogger$H;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method notifyWindowsDrawn(IJ)V
    .locals 2

    iget-object v1, p0, Lcom/android/server/am/ActivityMetricsLogger;->mStackTransitionInfo:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/ActivityMetricsLogger$StackTransitionInfo;

    if-eqz v0, :cond_0

    invoke-static {v0}, Lcom/android/server/am/ActivityMetricsLogger$StackTransitionInfo;->-get4(Lcom/android/server/am/ActivityMetricsLogger$StackTransitionInfo;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    return-void

    :cond_1
    invoke-direct {p0, p2, p3}, Lcom/android/server/am/ActivityMetricsLogger;->calculateDelay(J)I

    move-result v1

    invoke-static {v0, v1}, Lcom/android/server/am/ActivityMetricsLogger$StackTransitionInfo;->-set8(Lcom/android/server/am/ActivityMetricsLogger$StackTransitionInfo;I)I

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/server/am/ActivityMetricsLogger$StackTransitionInfo;->-set4(Lcom/android/server/am/ActivityMetricsLogger$StackTransitionInfo;Z)Z

    invoke-direct {p0}, Lcom/android/server/am/ActivityMetricsLogger;->allStacksWindowsDrawn()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-boolean v1, p0, Lcom/android/server/am/ActivityMetricsLogger;->mLoggedTransitionStarting:Z

    if-eqz v1, :cond_2

    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/android/server/am/ActivityMetricsLogger;->reset(Z)V

    :cond_2
    return-void
.end method
