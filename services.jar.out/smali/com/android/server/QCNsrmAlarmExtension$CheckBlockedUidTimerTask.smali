.class Lcom/android/server/QCNsrmAlarmExtension$CheckBlockedUidTimerTask;
.super Ljava/util/TimerTask;
.source "QCNsrmAlarmExtension.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/QCNsrmAlarmExtension;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "CheckBlockedUidTimerTask"
.end annotation


# instance fields
.field private mUid:I

.field mWakeLock:Landroid/os/PowerManager$WakeLock;

.field final synthetic this$0:Lcom/android/server/QCNsrmAlarmExtension;


# direct methods
.method constructor <init>(Lcom/android/server/QCNsrmAlarmExtension;ILandroid/os/PowerManager$WakeLock;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/QCNsrmAlarmExtension$CheckBlockedUidTimerTask;->this$0:Lcom/android/server/QCNsrmAlarmExtension;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    iput p2, p0, Lcom/android/server/QCNsrmAlarmExtension$CheckBlockedUidTimerTask;->mUid:I

    iput-object p3, p0, Lcom/android/server/QCNsrmAlarmExtension$CheckBlockedUidTimerTask;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    invoke-static {}, Lcom/android/server/QCNsrmAlarmExtension;->-get1()Ljava/util/ArrayList;

    move-result-object v0

    iget v1, p0, Lcom/android/server/QCNsrmAlarmExtension$CheckBlockedUidTimerTask;->mUid:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/android/server/QCNsrmAlarmExtension;->-get2()Ljava/util/ArrayList;

    move-result-object v0

    iget v1, p0, Lcom/android/server/QCNsrmAlarmExtension$CheckBlockedUidTimerTask;->mUid:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/QCNsrmAlarmExtension$CheckBlockedUidTimerTask;->this$0:Lcom/android/server/QCNsrmAlarmExtension;

    invoke-static {v0}, Lcom/android/server/QCNsrmAlarmExtension;->-get0(Lcom/android/server/QCNsrmAlarmExtension;)Lcom/android/server/AlarmManagerService;

    move-result-object v0

    iget-object v1, v0, Lcom/android/server/AlarmManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/android/server/QCNsrmAlarmExtension$CheckBlockedUidTimerTask;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/QCNsrmAlarmExtension$CheckBlockedUidTimerTask;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    :cond_1
    return-void
.end method
