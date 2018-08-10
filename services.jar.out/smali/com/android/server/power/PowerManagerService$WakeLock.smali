.class final Lcom/android/server/power/PowerManagerService$WakeLock;
.super Ljava/lang/Object;
.source "PowerManagerService.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/power/PowerManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "WakeLock"
.end annotation


# instance fields
.field public mAcquireTime:J

.field public mDisabled:Z

.field public mFlags:I

.field public mHistoryTag:Ljava/lang/String;

.field public final mLock:Landroid/os/IBinder;

.field public mNotifiedAcquired:Z

.field public mNotifiedLong:Z

.field public final mOwnerPid:I

.field public final mOwnerUid:I

.field public final mPackageName:Ljava/lang/String;

.field public mProximityNegativeDebounce:I

.field public mProximityPositiveDebounce:I

.field public mTag:Ljava/lang/String;

.field public final mUidState:Lcom/android/server/power/PowerManagerService$UidState;

.field public mWorkSource:Landroid/os/WorkSource;

.field final synthetic this$0:Lcom/android/server/power/PowerManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/power/PowerManagerService;Landroid/os/IBinder;ILjava/lang/String;Ljava/lang/String;Landroid/os/WorkSource;Ljava/lang/String;IILcom/android/server/power/PowerManagerService$UidState;)V
    .locals 2

    const/4 v1, -0x1

    iput-object p1, p0, Lcom/android/server/power/PowerManagerService$WakeLock;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/android/server/power/PowerManagerService$WakeLock;->mLock:Landroid/os/IBinder;

    iput p3, p0, Lcom/android/server/power/PowerManagerService$WakeLock;->mFlags:I

    iput-object p4, p0, Lcom/android/server/power/PowerManagerService$WakeLock;->mTag:Ljava/lang/String;

    iput-object p5, p0, Lcom/android/server/power/PowerManagerService$WakeLock;->mPackageName:Ljava/lang/String;

    invoke-static {p6}, Lcom/android/server/power/PowerManagerService;->-wrap0(Landroid/os/WorkSource;)Landroid/os/WorkSource;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/power/PowerManagerService$WakeLock;->mWorkSource:Landroid/os/WorkSource;

    iput-object p7, p0, Lcom/android/server/power/PowerManagerService$WakeLock;->mHistoryTag:Ljava/lang/String;

    iput p8, p0, Lcom/android/server/power/PowerManagerService$WakeLock;->mOwnerUid:I

    iput p9, p0, Lcom/android/server/power/PowerManagerService$WakeLock;->mOwnerPid:I

    iput-object p10, p0, Lcom/android/server/power/PowerManagerService$WakeLock;->mUidState:Lcom/android/server/power/PowerManagerService$UidState;

    iput v1, p0, Lcom/android/server/power/PowerManagerService$WakeLock;->mProximityPositiveDebounce:I

    iput v1, p0, Lcom/android/server/power/PowerManagerService$WakeLock;->mProximityNegativeDebounce:I

    return-void
.end method

.method private getLockFlagsString()Ljava/lang/String;
    .locals 3

    const-string/jumbo v0, ""

    iget v1, p0, Lcom/android/server/power/PowerManagerService$WakeLock;->mFlags:I

    const/high16 v2, 0x10000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " ACQUIRE_CAUSES_WAKEUP"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_0
    iget v1, p0, Lcom/android/server/power/PowerManagerService$WakeLock;->mFlags:I

    const/high16 v2, 0x20000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " ON_AFTER_RELEASE"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_1
    return-object v0
.end method

.method private getLockLevelString()Ljava/lang/String;
    .locals 2

    iget v0, p0, Lcom/android/server/power/PowerManagerService$WakeLock;->mFlags:I

    const v1, 0xffff

    and-int/2addr v0, v1

    sparse-switch v0, :sswitch_data_0

    const-string/jumbo v0, "???                           "

    return-object v0

    :sswitch_0
    const-string/jumbo v0, "FULL_WAKE_LOCK                "

    return-object v0

    :sswitch_1
    const-string/jumbo v0, "SCREEN_BRIGHT_WAKE_LOCK       "

    return-object v0

    :sswitch_2
    const-string/jumbo v0, "SCREEN_DIM_WAKE_LOCK          "

    return-object v0

    :sswitch_3
    const-string/jumbo v0, "PARTIAL_WAKE_LOCK             "

    return-object v0

    :sswitch_4
    const-string/jumbo v0, "PROXIMITY_SCREEN_OFF_WAKE_LOCK"

    return-object v0

    :sswitch_5
    const-string/jumbo v0, "DOZE_WAKE_LOCK                "

    return-object v0

    :sswitch_6
    const-string/jumbo v0, "DRAW_WAKE_LOCK                "

    return-object v0

    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_3
        0x6 -> :sswitch_2
        0xa -> :sswitch_1
        0x1a -> :sswitch_0
        0x20 -> :sswitch_4
        0x40 -> :sswitch_5
        0x80 -> :sswitch_6
    .end sparse-switch
.end method


# virtual methods
.method public binderDied()V
    .locals 1

    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$WakeLock;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {v0, p0}, Lcom/android/server/power/PowerManagerService;->-wrap30(Lcom/android/server/power/PowerManagerService;Lcom/android/server/power/PowerManagerService$WakeLock;)V

    return-void
.end method

.method public hasSameProperties(ILjava/lang/String;Landroid/os/WorkSource;II)Z
    .locals 2

    const/4 v0, 0x0

    iget v1, p0, Lcom/android/server/power/PowerManagerService$WakeLock;->mFlags:I

    if-ne v1, p1, :cond_0

    iget-object v1, p0, Lcom/android/server/power/PowerManagerService$WakeLock;->mTag:Ljava/lang/String;

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0, p3}, Lcom/android/server/power/PowerManagerService$WakeLock;->hasSameWorkSource(Landroid/os/WorkSource;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/android/server/power/PowerManagerService$WakeLock;->mOwnerUid:I

    if-ne v1, p4, :cond_0

    iget v1, p0, Lcom/android/server/power/PowerManagerService$WakeLock;->mOwnerPid:I

    if-ne v1, p5, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public hasSameWorkSource(Landroid/os/WorkSource;)Z
    .locals 1

    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$WakeLock;->mWorkSource:Landroid/os/WorkSource;

    invoke-static {v0, p1}, Llibcore/util/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService$WakeLock;->getLockLevelString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, " \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/power/PowerManagerService$WakeLock;->mTag:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService$WakeLock;->getLockFlagsString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/power/PowerManagerService$WakeLock;->mDisabled:Z

    if-eqz v1, :cond_0

    const-string/jumbo v1, " DISABLED"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    iget-boolean v1, p0, Lcom/android/server/power/PowerManagerService$WakeLock;->mNotifiedAcquired:Z

    if-eqz v1, :cond_1

    const-string/jumbo v1, " ACQ="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/android/server/power/PowerManagerService$WakeLock;->mAcquireTime:J

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    sub-long/2addr v2, v4

    invoke-static {v2, v3, v0}, Landroid/util/TimeUtils;->formatDuration(JLjava/lang/StringBuilder;)V

    :cond_1
    iget-boolean v1, p0, Lcom/android/server/power/PowerManagerService$WakeLock;->mNotifiedLong:Z

    if-eqz v1, :cond_2

    const-string/jumbo v1, " LONG"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    const-string/jumbo v1, " (uid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/power/PowerManagerService$WakeLock;->mOwnerUid:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/power/PowerManagerService$WakeLock;->mOwnerPid:I

    if-eqz v1, :cond_3

    const-string/jumbo v1, " pid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/power/PowerManagerService$WakeLock;->mOwnerPid:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    :cond_3
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService$WakeLock;->mWorkSource:Landroid/os/WorkSource;

    if-eqz v1, :cond_4

    const-string/jumbo v1, " ws="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/power/PowerManagerService$WakeLock;->mWorkSource:Landroid/os/WorkSource;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :cond_4
    const-string/jumbo v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public updateProperties(ILjava/lang/String;Ljava/lang/String;Landroid/os/WorkSource;Ljava/lang/String;II)V
    .locals 3

    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$WakeLock;->mPackageName:Ljava/lang/String;

    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Existing wake lock package name changed: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/power/PowerManagerService$WakeLock;->mPackageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget v0, p0, Lcom/android/server/power/PowerManagerService$WakeLock;->mOwnerUid:I

    if-eq v0, p6, :cond_1

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Existing wake lock uid changed: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/power/PowerManagerService$WakeLock;->mOwnerUid:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iget v0, p0, Lcom/android/server/power/PowerManagerService$WakeLock;->mOwnerPid:I

    if-eq v0, p7, :cond_2

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Existing wake lock pid changed: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/power/PowerManagerService$WakeLock;->mOwnerPid:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    iput p1, p0, Lcom/android/server/power/PowerManagerService$WakeLock;->mFlags:I

    iput-object p2, p0, Lcom/android/server/power/PowerManagerService$WakeLock;->mTag:Ljava/lang/String;

    invoke-virtual {p0, p4}, Lcom/android/server/power/PowerManagerService$WakeLock;->updateWorkSource(Landroid/os/WorkSource;)V

    iput-object p5, p0, Lcom/android/server/power/PowerManagerService$WakeLock;->mHistoryTag:Ljava/lang/String;

    return-void
.end method

.method public updateWorkSource(Landroid/os/WorkSource;)V
    .locals 1

    invoke-static {p1}, Lcom/android/server/power/PowerManagerService;->-wrap0(Landroid/os/WorkSource;)Landroid/os/WorkSource;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/power/PowerManagerService$WakeLock;->mWorkSource:Landroid/os/WorkSource;

    return-void
.end method

.method public writeToProto(Landroid/util/proto/ProtoOutputStream;J)V
    .locals 10

    const/4 v5, 0x1

    const/4 v6, 0x0

    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v2

    iget v4, p0, Lcom/android/server/power/PowerManagerService$WakeLock;->mFlags:I

    const v7, 0xffff

    and-int/2addr v4, v7

    const-wide v8, 0x11000000001L

    invoke-virtual {p1, v8, v9, v4}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    iget-object v4, p0, Lcom/android/server/power/PowerManagerService$WakeLock;->mTag:Ljava/lang/String;

    const-wide v8, 0x10e00000002L

    invoke-virtual {p1, v8, v9, v4}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    const-wide v8, 0x11100000003L

    invoke-virtual {p1, v8, v9}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v0

    iget v4, p0, Lcom/android/server/power/PowerManagerService$WakeLock;->mFlags:I

    const/high16 v7, 0x10000000

    and-int/2addr v4, v7

    if-eqz v4, :cond_2

    move v4, v5

    :goto_0
    const-wide v8, 0x10d00000001L

    invoke-virtual {p1, v8, v9, v4}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    iget v4, p0, Lcom/android/server/power/PowerManagerService$WakeLock;->mFlags:I

    const/high16 v7, 0x20000000

    and-int/2addr v4, v7

    if-eqz v4, :cond_3

    :goto_1
    const-wide v6, 0x10d00000002L

    invoke-virtual {p1, v6, v7, v5}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    invoke-virtual {p1, v0, v1}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    iget-boolean v4, p0, Lcom/android/server/power/PowerManagerService$WakeLock;->mDisabled:Z

    const-wide v6, 0x10d00000004L

    invoke-virtual {p1, v6, v7, v4}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    iget-boolean v4, p0, Lcom/android/server/power/PowerManagerService$WakeLock;->mNotifiedAcquired:Z

    if-eqz v4, :cond_0

    iget-wide v4, p0, Lcom/android/server/power/PowerManagerService$WakeLock;->mAcquireTime:J

    const-wide v6, 0x10400000005L

    invoke-virtual {p1, v6, v7, v4, v5}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    :cond_0
    iget-boolean v4, p0, Lcom/android/server/power/PowerManagerService$WakeLock;->mNotifiedLong:Z

    const-wide v6, 0x10d00000006L

    invoke-virtual {p1, v6, v7, v4}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    iget v4, p0, Lcom/android/server/power/PowerManagerService$WakeLock;->mOwnerUid:I

    const-wide v6, 0x10300000007L

    invoke-virtual {p1, v6, v7, v4}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    iget v4, p0, Lcom/android/server/power/PowerManagerService$WakeLock;->mOwnerPid:I

    const-wide v6, 0x10300000008L

    invoke-virtual {p1, v6, v7, v4}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    iget-object v4, p0, Lcom/android/server/power/PowerManagerService$WakeLock;->mWorkSource:Landroid/os/WorkSource;

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/android/server/power/PowerManagerService$WakeLock;->mWorkSource:Landroid/os/WorkSource;

    const-wide v6, 0x11100000009L

    invoke-virtual {v4, p1, v6, v7}, Landroid/os/WorkSource;->writeToProto(Landroid/util/proto/ProtoOutputStream;J)V

    :cond_1
    invoke-virtual {p1, v2, v3}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    return-void

    :cond_2
    move v4, v6

    goto :goto_0

    :cond_3
    move v5, v6

    goto :goto_1
.end method
