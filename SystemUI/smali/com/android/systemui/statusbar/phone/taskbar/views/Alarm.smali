.class public Lcom/android/systemui/statusbar/phone/taskbar/views/Alarm;
.super Ljava/lang/Object;
.source "Alarm.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/phone/taskbar/views/Alarm$OnAlarmListener;
    }
.end annotation


# instance fields
.field private mAlarmListener:Lcom/android/systemui/statusbar/phone/taskbar/views/Alarm$OnAlarmListener;

.field private mAlarmPending:Z

.field private mAlarmTriggerTime:J

.field private mHandler:Landroid/os/Handler;

.field private mWaitingForCallback:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/Alarm;->mAlarmPending:Z

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/Alarm;->mHandler:Landroid/os/Handler;

    return-void
.end method


# virtual methods
.method public alarmPending()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/Alarm;->mAlarmPending:Z

    return v0
.end method

.method public cancelAlarm()V
    .locals 2

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/Alarm;->mAlarmTriggerTime:J

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/Alarm;->mAlarmPending:Z

    return-void
.end method

.method public run()V
    .locals 8

    const-wide/16 v6, 0x0

    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/Alarm;->mWaitingForCallback:Z

    iget-wide v2, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/Alarm;->mAlarmTriggerTime:J

    cmp-long v2, v2, v6

    if-eqz v2, :cond_0

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/Alarm;->mAlarmTriggerTime:J

    cmp-long v2, v2, v0

    if-lez v2, :cond_1

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/Alarm;->mHandler:Landroid/os/Handler;

    iget-wide v4, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/Alarm;->mAlarmTriggerTime:J

    sub-long/2addr v4, v0

    invoke-static {v6, v7, v4, v5}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v4

    invoke-virtual {v2, p0, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/Alarm;->mWaitingForCallback:Z

    :cond_0
    :goto_0
    return-void

    :cond_1
    iput-boolean v4, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/Alarm;->mAlarmPending:Z

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/Alarm;->mAlarmListener:Lcom/android/systemui/statusbar/phone/taskbar/views/Alarm$OnAlarmListener;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/Alarm;->mAlarmListener:Lcom/android/systemui/statusbar/phone/taskbar/views/Alarm$OnAlarmListener;

    invoke-interface {v2, p0}, Lcom/android/systemui/statusbar/phone/taskbar/views/Alarm$OnAlarmListener;->onAlarm(Lcom/android/systemui/statusbar/phone/taskbar/views/Alarm;)V

    goto :goto_0
.end method

.method public setAlarm(J)V
    .locals 7

    const/4 v6, 0x1

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-boolean v6, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/Alarm;->mAlarmPending:Z

    add-long v2, v0, p1

    iput-wide v2, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/Alarm;->mAlarmTriggerTime:J

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/Alarm;->mWaitingForCallback:Z

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/Alarm;->mHandler:Landroid/os/Handler;

    iget-wide v4, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/Alarm;->mAlarmTriggerTime:J

    sub-long/2addr v4, v0

    invoke-virtual {v2, p0, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    iput-boolean v6, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/Alarm;->mWaitingForCallback:Z

    :cond_0
    return-void
.end method
