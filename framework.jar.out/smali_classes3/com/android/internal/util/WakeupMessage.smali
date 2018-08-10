.class public Lcom/android/internal/util/WakeupMessage;
.super Ljava/lang/Object;
.source "WakeupMessage.java"

# interfaces
.implements Landroid/app/AlarmManager$OnAlarmListener;


# instance fields
.field private final mAlarmManager:Landroid/app/AlarmManager;

.field protected final mArg1:I

.field protected final mArg2:I

.field protected final mCmd:I

.field protected final mCmdName:Ljava/lang/String;

.field protected final mHandler:Landroid/os/Handler;

.field protected final mObj:Ljava/lang/Object;

.field private mScheduled:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;Ljava/lang/String;I)V
    .locals 8

    const/4 v5, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move v6, v5

    invoke-direct/range {v0 .. v7}, Lcom/android/internal/util/WakeupMessage;-><init>(Landroid/content/Context;Landroid/os/Handler;Ljava/lang/String;IIILjava/lang/Object;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;Ljava/lang/String;II)V
    .locals 8

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v7}, Lcom/android/internal/util/WakeupMessage;-><init>(Landroid/content/Context;Landroid/os/Handler;Ljava/lang/String;IIILjava/lang/Object;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;Ljava/lang/String;III)V
    .locals 8

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    invoke-direct/range {v0 .. v7}, Lcom/android/internal/util/WakeupMessage;-><init>(Landroid/content/Context;Landroid/os/Handler;Ljava/lang/String;IIILjava/lang/Object;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;Ljava/lang/String;IIILjava/lang/Object;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string/jumbo v0, "alarm"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    iput-object v0, p0, Lcom/android/internal/util/WakeupMessage;->mAlarmManager:Landroid/app/AlarmManager;

    iput-object p2, p0, Lcom/android/internal/util/WakeupMessage;->mHandler:Landroid/os/Handler;

    iput-object p3, p0, Lcom/android/internal/util/WakeupMessage;->mCmdName:Ljava/lang/String;

    iput p4, p0, Lcom/android/internal/util/WakeupMessage;->mCmd:I

    iput p5, p0, Lcom/android/internal/util/WakeupMessage;->mArg1:I

    iput p6, p0, Lcom/android/internal/util/WakeupMessage;->mArg2:I

    iput-object p7, p0, Lcom/android/internal/util/WakeupMessage;->mObj:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public declared-synchronized cancel()V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/android/internal/util/WakeupMessage;->mScheduled:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/util/WakeupMessage;->mAlarmManager:Landroid/app/AlarmManager;

    invoke-virtual {v0, p0}, Landroid/app/AlarmManager;->cancel(Landroid/app/AlarmManager$OnAlarmListener;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/util/WakeupMessage;->mScheduled:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public onAlarm()V
    .locals 7

    monitor-enter p0

    :try_start_0
    iget-boolean v1, p0, Lcom/android/internal/util/WakeupMessage;->mScheduled:Z

    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/internal/util/WakeupMessage;->mScheduled:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    if-eqz v1, :cond_0

    iget-object v2, p0, Lcom/android/internal/util/WakeupMessage;->mHandler:Landroid/os/Handler;

    iget v3, p0, Lcom/android/internal/util/WakeupMessage;->mCmd:I

    iget v4, p0, Lcom/android/internal/util/WakeupMessage;->mArg1:I

    iget v5, p0, Lcom/android/internal/util/WakeupMessage;->mArg2:I

    iget-object v6, p0, Lcom/android/internal/util/WakeupMessage;->mObj:Ljava/lang/Object;

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    iget-object v2, p0, Lcom/android/internal/util/WakeupMessage;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v0}, Landroid/os/Handler;->dispatchMessage(Landroid/os/Message;)V

    invoke-virtual {v0}, Landroid/os/Message;->recycle()V

    :cond_0
    return-void

    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public declared-synchronized schedule(J)V
    .locals 7

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/internal/util/WakeupMessage;->mAlarmManager:Landroid/app/AlarmManager;

    iget-object v4, p0, Lcom/android/internal/util/WakeupMessage;->mCmdName:Ljava/lang/String;

    iget-object v6, p0, Lcom/android/internal/util/WakeupMessage;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    move-wide v2, p1

    move-object v5, p0

    invoke-virtual/range {v0 .. v6}, Landroid/app/AlarmManager;->setExact(IJLjava/lang/String;Landroid/app/AlarmManager$OnAlarmListener;Landroid/os/Handler;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/util/WakeupMessage;->mScheduled:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
