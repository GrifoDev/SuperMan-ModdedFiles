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

.field private mScheduled:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;Ljava/lang/String;I)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "handler"    # Landroid/os/Handler;
    .param p3, "cmdName"    # Ljava/lang/String;
    .param p4, "cmd"    # I

    .prologue
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move v6, v5

    .line 65
    invoke-direct/range {v0 .. v6}, Lcom/android/internal/util/WakeupMessage;-><init>(Landroid/content/Context;Landroid/os/Handler;Ljava/lang/String;III)V

    .line 64
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;Ljava/lang/String;II)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "handler"    # Landroid/os/Handler;
    .param p3, "cmdName"    # Ljava/lang/String;
    .param p4, "cmd"    # I
    .param p5, "arg1"    # I

    .prologue
    .line 61
    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v6}, Lcom/android/internal/util/WakeupMessage;-><init>(Landroid/content/Context;Landroid/os/Handler;Ljava/lang/String;III)V

    .line 60
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;Ljava/lang/String;III)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "handler"    # Landroid/os/Handler;
    .param p3, "cmdName"    # Ljava/lang/String;
    .param p4, "cmd"    # I
    .param p5, "arg1"    # I
    .param p6, "arg2"    # I

    .prologue
    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    const-string/jumbo v0, "alarm"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    iput-object v0, p0, Lcom/android/internal/util/WakeupMessage;->mAlarmManager:Landroid/app/AlarmManager;

    .line 53
    iput-object p2, p0, Lcom/android/internal/util/WakeupMessage;->mHandler:Landroid/os/Handler;

    .line 54
    iput-object p3, p0, Lcom/android/internal/util/WakeupMessage;->mCmdName:Ljava/lang/String;

    .line 55
    iput p4, p0, Lcom/android/internal/util/WakeupMessage;->mCmd:I

    .line 56
    iput p5, p0, Lcom/android/internal/util/WakeupMessage;->mArg1:I

    .line 57
    iput p6, p0, Lcom/android/internal/util/WakeupMessage;->mArg2:I

    .line 51
    return-void
.end method


# virtual methods
.method public declared-synchronized cancel()V
    .locals 1

    .prologue
    monitor-enter p0

    .line 85
    :try_start_0
    iget-boolean v0, p0, Lcom/android/internal/util/WakeupMessage;->mScheduled:Z

    if-eqz v0, :cond_0

    .line 86
    iget-object v0, p0, Lcom/android/internal/util/WakeupMessage;->mAlarmManager:Landroid/app/AlarmManager;

    invoke-virtual {v0, p0}, Landroid/app/AlarmManager;->cancel(Landroid/app/AlarmManager$OnAlarmListener;)V

    .line 87
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/util/WakeupMessage;->mScheduled:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    .line 84
    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public onAlarm()V
    .locals 6

    .prologue
    .line 97
    monitor-enter p0

    .line 98
    :try_start_0
    iget-boolean v1, p0, Lcom/android/internal/util/WakeupMessage;->mScheduled:Z

    .line 99
    .local v1, "stillScheduled":Z
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/internal/util/WakeupMessage;->mScheduled:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    .line 101
    if-eqz v1, :cond_0

    .line 102
    iget-object v2, p0, Lcom/android/internal/util/WakeupMessage;->mHandler:Landroid/os/Handler;

    iget v3, p0, Lcom/android/internal/util/WakeupMessage;->mCmd:I

    iget v4, p0, Lcom/android/internal/util/WakeupMessage;->mArg1:I

    iget v5, p0, Lcom/android/internal/util/WakeupMessage;->mArg2:I

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    .line 103
    .local v0, "msg":Landroid/os/Message;
    iget-object v2, p0, Lcom/android/internal/util/WakeupMessage;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v0}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 104
    invoke-virtual {v0}, Landroid/os/Message;->recycle()V

    .line 92
    .end local v0    # "msg":Landroid/os/Message;
    :cond_0
    return-void

    .line 97
    .end local v1    # "stillScheduled":Z
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public declared-synchronized schedule(J)V
    .locals 7
    .param p1, "when"    # J

    .prologue
    monitor-enter p0

    .line 75
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/util/WakeupMessage;->mAlarmManager:Landroid/app/AlarmManager;

    .line 76
    iget-object v4, p0, Lcom/android/internal/util/WakeupMessage;->mCmdName:Ljava/lang/String;

    iget-object v6, p0, Lcom/android/internal/util/WakeupMessage;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    move-wide v2, p1

    move-object v5, p0

    .line 75
    invoke-virtual/range {v0 .. v6}, Landroid/app/AlarmManager;->setExact(IJLjava/lang/String;Landroid/app/AlarmManager$OnAlarmListener;Landroid/os/Handler;)V

    .line 77
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/util/WakeupMessage;->mScheduled:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    .line 74
    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
