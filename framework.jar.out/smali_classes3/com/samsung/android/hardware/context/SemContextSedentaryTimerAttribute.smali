.class public Lcom/samsung/android/hardware/context/SemContextSedentaryTimerAttribute;
.super Lcom/samsung/android/hardware/context/SemContextAttribute;
.source "SemContextSedentaryTimerAttribute.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/hardware/context/SemContextSedentaryTimerAttribute$1;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/samsung/android/hardware/context/SemContextSedentaryTimerAttribute;",
            ">;"
        }
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String; = "SemContextSedentaryTimerAttribute"


# instance fields
.field private mAlertCount:I

.field private mDeviceType:I

.field private mDuration:I

.field private mEndTime:I

.field private mStartTime:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 40
    new-instance v0, Lcom/samsung/android/hardware/context/SemContextSedentaryTimerAttribute$1;

    invoke-direct {v0}, Lcom/samsung/android/hardware/context/SemContextSedentaryTimerAttribute$1;-><init>()V

    sput-object v0, Lcom/samsung/android/hardware/context/SemContextSedentaryTimerAttribute;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 33
    return-void
.end method

.method constructor <init>()V
    .locals 3

    .prologue
    const/16 v2, 0x5dc

    const/4 v1, 0x1

    .line 63
    invoke-direct {p0}, Lcom/samsung/android/hardware/context/SemContextAttribute;-><init>()V

    .line 54
    iput v1, p0, Lcom/samsung/android/hardware/context/SemContextSedentaryTimerAttribute;->mDeviceType:I

    .line 55
    const/16 v0, 0xe10

    iput v0, p0, Lcom/samsung/android/hardware/context/SemContextSedentaryTimerAttribute;->mDuration:I

    .line 56
    iput v1, p0, Lcom/samsung/android/hardware/context/SemContextSedentaryTimerAttribute;->mAlertCount:I

    .line 57
    iput v2, p0, Lcom/samsung/android/hardware/context/SemContextSedentaryTimerAttribute;->mStartTime:I

    .line 58
    iput v2, p0, Lcom/samsung/android/hardware/context/SemContextSedentaryTimerAttribute;->mEndTime:I

    .line 64
    invoke-direct {p0}, Lcom/samsung/android/hardware/context/SemContextSedentaryTimerAttribute;->setAttribute()V

    .line 63
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

    .line 94
    invoke-direct {p0}, Lcom/samsung/android/hardware/context/SemContextAttribute;-><init>()V

    .line 54
    iput v1, p0, Lcom/samsung/android/hardware/context/SemContextSedentaryTimerAttribute;->mDeviceType:I

    .line 55
    const/16 v0, 0xe10

    iput v0, p0, Lcom/samsung/android/hardware/context/SemContextSedentaryTimerAttribute;->mDuration:I

    .line 56
    iput v1, p0, Lcom/samsung/android/hardware/context/SemContextSedentaryTimerAttribute;->mAlertCount:I

    .line 57
    iput v2, p0, Lcom/samsung/android/hardware/context/SemContextSedentaryTimerAttribute;->mStartTime:I

    .line 58
    iput v2, p0, Lcom/samsung/android/hardware/context/SemContextSedentaryTimerAttribute;->mEndTime:I

    .line 96
    iput p1, p0, Lcom/samsung/android/hardware/context/SemContextSedentaryTimerAttribute;->mDeviceType:I

    .line 97
    iput p2, p0, Lcom/samsung/android/hardware/context/SemContextSedentaryTimerAttribute;->mDuration:I

    .line 98
    iput p3, p0, Lcom/samsung/android/hardware/context/SemContextSedentaryTimerAttribute;->mAlertCount:I

    .line 99
    iput p4, p0, Lcom/samsung/android/hardware/context/SemContextSedentaryTimerAttribute;->mStartTime:I

    .line 100
    iput p5, p0, Lcom/samsung/android/hardware/context/SemContextSedentaryTimerAttribute;->mEndTime:I

    .line 101
    invoke-direct {p0}, Lcom/samsung/android/hardware/context/SemContextSedentaryTimerAttribute;->setAttribute()V

    .line 95
    return-void
.end method

.method constructor <init>(Landroid/os/Parcel;)V
    .locals 3
    .param p1, "src"    # Landroid/os/Parcel;

    .prologue
    const/16 v2, 0x5dc

    const/4 v1, 0x1

    .line 71
    invoke-direct {p0, p1}, Lcom/samsung/android/hardware/context/SemContextAttribute;-><init>(Landroid/os/Parcel;)V

    .line 54
    iput v1, p0, Lcom/samsung/android/hardware/context/SemContextSedentaryTimerAttribute;->mDeviceType:I

    .line 55
    const/16 v0, 0xe10

    iput v0, p0, Lcom/samsung/android/hardware/context/SemContextSedentaryTimerAttribute;->mDuration:I

    .line 56
    iput v1, p0, Lcom/samsung/android/hardware/context/SemContextSedentaryTimerAttribute;->mAlertCount:I

    .line 57
    iput v2, p0, Lcom/samsung/android/hardware/context/SemContextSedentaryTimerAttribute;->mStartTime:I

    .line 58
    iput v2, p0, Lcom/samsung/android/hardware/context/SemContextSedentaryTimerAttribute;->mEndTime:I

    .line 70
    return-void
.end method

.method private setAttribute()V
    .locals 3

    .prologue
    .line 135
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 136
    .local v0, "attribute":Landroid/os/Bundle;
    const-string/jumbo v1, "device_type"

    iget v2, p0, Lcom/samsung/android/hardware/context/SemContextSedentaryTimerAttribute;->mDeviceType:I

    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 137
    const-string/jumbo v1, "duration"

    iget v2, p0, Lcom/samsung/android/hardware/context/SemContextSedentaryTimerAttribute;->mDuration:I

    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 138
    const-string/jumbo v1, "alert_count"

    iget v2, p0, Lcom/samsung/android/hardware/context/SemContextSedentaryTimerAttribute;->mAlertCount:I

    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 139
    const-string/jumbo v1, "start_time"

    iget v2, p0, Lcom/samsung/android/hardware/context/SemContextSedentaryTimerAttribute;->mStartTime:I

    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 140
    const-string/jumbo v1, "end_time"

    iget v2, p0, Lcom/samsung/android/hardware/context/SemContextSedentaryTimerAttribute;->mEndTime:I

    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 141
    const/16 v1, 0x23

    invoke-super {p0, v1, v0}, Lcom/samsung/android/hardware/context/SemContextAttribute;->setAttribute(ILandroid/os/Bundle;)V

    .line 134
    return-void
.end method


# virtual methods
.method public checkAttribute()Z
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 110
    iget v0, p0, Lcom/samsung/android/hardware/context/SemContextSedentaryTimerAttribute;->mDeviceType:I

    if-eq v0, v3, :cond_0

    .line 111
    iget v0, p0, Lcom/samsung/android/hardware/context/SemContextSedentaryTimerAttribute;->mDeviceType:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    .line 112
    const-string/jumbo v0, "SemContextSedentaryTimerAttribute"

    const-string/jumbo v1, "The device type is wrong."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 113
    return v2

    .line 115
    :cond_0
    iget v0, p0, Lcom/samsung/android/hardware/context/SemContextSedentaryTimerAttribute;->mDuration:I

    if-gez v0, :cond_1

    .line 116
    const-string/jumbo v0, "SemContextSedentaryTimerAttribute"

    const-string/jumbo v1, "The duration is wrong."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 117
    return v2

    .line 119
    :cond_1
    iget v0, p0, Lcom/samsung/android/hardware/context/SemContextSedentaryTimerAttribute;->mAlertCount:I

    if-gez v0, :cond_2

    .line 120
    const-string/jumbo v0, "SemContextSedentaryTimerAttribute"

    const-string/jumbo v1, "The alert count is wrong."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 121
    return v2

    .line 123
    :cond_2
    iget v0, p0, Lcom/samsung/android/hardware/context/SemContextSedentaryTimerAttribute;->mStartTime:I

    if-gez v0, :cond_3

    .line 124
    const-string/jumbo v0, "SemContextSedentaryTimerAttribute"

    const-string/jumbo v1, "The start time is wrong."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 125
    return v2

    .line 127
    :cond_3
    iget v0, p0, Lcom/samsung/android/hardware/context/SemContextSedentaryTimerAttribute;->mEndTime:I

    if-gez v0, :cond_4

    .line 128
    const-string/jumbo v0, "SemContextSedentaryTimerAttribute"

    const-string/jumbo v1, "The end time is wrong."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 129
    return v2

    .line 131
    :cond_4
    return v3
.end method
