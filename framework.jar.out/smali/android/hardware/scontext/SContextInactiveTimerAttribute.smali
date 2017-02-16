.class public Landroid/hardware/scontext/SContextInactiveTimerAttribute;
.super Landroid/hardware/scontext/SContextAttribute;
.source "SContextInactiveTimerAttribute.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "SContextInactiveTimerAttribute"


# instance fields
.field private mAlertCount:I

.field private mDeviceType:I

.field private mDuration:I

.field private mEndTime:I

.field private mStartTime:I


# direct methods
.method constructor <init>()V
    .locals 3

    .prologue
    const/16 v2, 0x5dc

    const/4 v1, 0x1

    .line 44
    invoke-direct {p0}, Landroid/hardware/scontext/SContextAttribute;-><init>()V

    .line 31
    iput v1, p0, Landroid/hardware/scontext/SContextInactiveTimerAttribute;->mDeviceType:I

    .line 33
    const/16 v0, 0xe10

    iput v0, p0, Landroid/hardware/scontext/SContextInactiveTimerAttribute;->mDuration:I

    .line 35
    iput v1, p0, Landroid/hardware/scontext/SContextInactiveTimerAttribute;->mAlertCount:I

    .line 37
    iput v2, p0, Landroid/hardware/scontext/SContextInactiveTimerAttribute;->mStartTime:I

    .line 39
    iput v2, p0, Landroid/hardware/scontext/SContextInactiveTimerAttribute;->mEndTime:I

    .line 45
    invoke-direct {p0}, Landroid/hardware/scontext/SContextInactiveTimerAttribute;->setAttribute()V

    .line 44
    return-void
.end method

.method public constructor <init>(IIIII)V
    .locals 3
    .param p1, "deviceType"    # I
    .param p2, "duration"    # I
    .param p3, "alertCount"    # I
    .param p4, "startTime"    # I
    .param p5, "endTime"    # I

    .prologue
    const/16 v2, 0x5dc

    const/4 v1, 0x1

    .line 69
    invoke-direct {p0}, Landroid/hardware/scontext/SContextAttribute;-><init>()V

    .line 31
    iput v1, p0, Landroid/hardware/scontext/SContextInactiveTimerAttribute;->mDeviceType:I

    .line 33
    const/16 v0, 0xe10

    iput v0, p0, Landroid/hardware/scontext/SContextInactiveTimerAttribute;->mDuration:I

    .line 35
    iput v1, p0, Landroid/hardware/scontext/SContextInactiveTimerAttribute;->mAlertCount:I

    .line 37
    iput v2, p0, Landroid/hardware/scontext/SContextInactiveTimerAttribute;->mStartTime:I

    .line 39
    iput v2, p0, Landroid/hardware/scontext/SContextInactiveTimerAttribute;->mEndTime:I

    .line 71
    iput p1, p0, Landroid/hardware/scontext/SContextInactiveTimerAttribute;->mDeviceType:I

    .line 72
    iput p2, p0, Landroid/hardware/scontext/SContextInactiveTimerAttribute;->mDuration:I

    .line 73
    iput p3, p0, Landroid/hardware/scontext/SContextInactiveTimerAttribute;->mAlertCount:I

    .line 74
    iput p4, p0, Landroid/hardware/scontext/SContextInactiveTimerAttribute;->mStartTime:I

    .line 75
    iput p5, p0, Landroid/hardware/scontext/SContextInactiveTimerAttribute;->mEndTime:I

    .line 76
    invoke-direct {p0}, Landroid/hardware/scontext/SContextInactiveTimerAttribute;->setAttribute()V

    .line 70
    return-void
.end method

.method private setAttribute()V
    .locals 3

    .prologue
    .line 107
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 108
    .local v0, "attribute":Landroid/os/Bundle;
    const-string/jumbo v1, "device_type"

    iget v2, p0, Landroid/hardware/scontext/SContextInactiveTimerAttribute;->mDeviceType:I

    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 109
    const-string/jumbo v1, "duration"

    iget v2, p0, Landroid/hardware/scontext/SContextInactiveTimerAttribute;->mDuration:I

    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 110
    const-string/jumbo v1, "alert_count"

    iget v2, p0, Landroid/hardware/scontext/SContextInactiveTimerAttribute;->mAlertCount:I

    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 111
    const-string/jumbo v1, "start_time"

    iget v2, p0, Landroid/hardware/scontext/SContextInactiveTimerAttribute;->mStartTime:I

    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 112
    const-string/jumbo v1, "end_time"

    iget v2, p0, Landroid/hardware/scontext/SContextInactiveTimerAttribute;->mEndTime:I

    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 113
    const/16 v1, 0x23

    invoke-super {p0, v1, v0}, Landroid/hardware/scontext/SContextAttribute;->setAttribute(ILandroid/os/Bundle;)V

    .line 106
    return-void
.end method


# virtual methods
.method public checkAttribute()Z
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 82
    iget v0, p0, Landroid/hardware/scontext/SContextInactiveTimerAttribute;->mDeviceType:I

    if-eq v0, v3, :cond_0

    .line 83
    iget v0, p0, Landroid/hardware/scontext/SContextInactiveTimerAttribute;->mDeviceType:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    .line 84
    const-string/jumbo v0, "SContextInactiveTimerAttribute"

    const-string/jumbo v1, "The deivce type is wrong."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 85
    return v2

    .line 87
    :cond_0
    iget v0, p0, Landroid/hardware/scontext/SContextInactiveTimerAttribute;->mDuration:I

    if-gez v0, :cond_1

    .line 88
    const-string/jumbo v0, "SContextInactiveTimerAttribute"

    const-string/jumbo v1, "The duration is wrong."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    return v2

    .line 91
    :cond_1
    iget v0, p0, Landroid/hardware/scontext/SContextInactiveTimerAttribute;->mAlertCount:I

    if-gez v0, :cond_2

    .line 92
    const-string/jumbo v0, "SContextInactiveTimerAttribute"

    const-string/jumbo v1, "The alert count is wrong."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 93
    return v2

    .line 95
    :cond_2
    iget v0, p0, Landroid/hardware/scontext/SContextInactiveTimerAttribute;->mStartTime:I

    if-gez v0, :cond_3

    .line 96
    const-string/jumbo v0, "SContextInactiveTimerAttribute"

    const-string/jumbo v1, "The start time is wrong."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 97
    return v2

    .line 99
    :cond_3
    iget v0, p0, Landroid/hardware/scontext/SContextInactiveTimerAttribute;->mEndTime:I

    if-gez v0, :cond_4

    .line 100
    const-string/jumbo v0, "SContextInactiveTimerAttribute"

    const-string/jumbo v1, "The end time is wrong."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    return v2

    .line 103
    :cond_4
    return v3
.end method
