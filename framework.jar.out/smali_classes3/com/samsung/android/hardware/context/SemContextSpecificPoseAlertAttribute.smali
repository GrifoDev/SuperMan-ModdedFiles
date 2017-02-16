.class public Lcom/samsung/android/hardware/context/SemContextSpecificPoseAlertAttribute;
.super Lcom/samsung/android/hardware/context/SemContextAttribute;
.source "SemContextSpecificPoseAlertAttribute.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/hardware/context/SemContextSpecificPoseAlertAttribute$1;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/samsung/android/hardware/context/SemContextSpecificPoseAlertAttribute;",
            ">;"
        }
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String; = "SemContextSpecificPoseAlertAttribute"


# instance fields
.field private mMaximumAngle:I

.field private mMinimumAngle:I

.field private mMovingThrs:I

.field private mRetentionTime:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 41
    new-instance v0, Lcom/samsung/android/hardware/context/SemContextSpecificPoseAlertAttribute$1;

    invoke-direct {v0}, Lcom/samsung/android/hardware/context/SemContextSpecificPoseAlertAttribute$1;-><init>()V

    sput-object v0, Lcom/samsung/android/hardware/context/SemContextSpecificPoseAlertAttribute;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 34
    return-void
.end method

.method constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 63
    invoke-direct {p0}, Lcom/samsung/android/hardware/context/SemContextAttribute;-><init>()V

    .line 55
    iput v1, p0, Lcom/samsung/android/hardware/context/SemContextSpecificPoseAlertAttribute;->mRetentionTime:I

    .line 56
    const/16 v0, -0x5a

    iput v0, p0, Lcom/samsung/android/hardware/context/SemContextSpecificPoseAlertAttribute;->mMinimumAngle:I

    .line 57
    const/16 v0, 0x5a

    iput v0, p0, Lcom/samsung/android/hardware/context/SemContextSpecificPoseAlertAttribute;->mMaximumAngle:I

    .line 58
    iput v1, p0, Lcom/samsung/android/hardware/context/SemContextSpecificPoseAlertAttribute;->mMovingThrs:I

    .line 64
    invoke-direct {p0}, Lcom/samsung/android/hardware/context/SemContextSpecificPoseAlertAttribute;->setAttribute()V

    .line 63
    return-void
.end method

.method public constructor <init>(IIII)V
    .locals 2
    .param p1, "retentionTime"    # I
    .param p2, "minimumAngle"    # I
    .param p3, "maximumAngle"    # I
    .param p4, "movingThrs"    # I

    .prologue
    const/4 v1, 0x1

    .line 89
    invoke-direct {p0}, Lcom/samsung/android/hardware/context/SemContextAttribute;-><init>()V

    .line 55
    iput v1, p0, Lcom/samsung/android/hardware/context/SemContextSpecificPoseAlertAttribute;->mRetentionTime:I

    .line 56
    const/16 v0, -0x5a

    iput v0, p0, Lcom/samsung/android/hardware/context/SemContextSpecificPoseAlertAttribute;->mMinimumAngle:I

    .line 57
    const/16 v0, 0x5a

    iput v0, p0, Lcom/samsung/android/hardware/context/SemContextSpecificPoseAlertAttribute;->mMaximumAngle:I

    .line 58
    iput v1, p0, Lcom/samsung/android/hardware/context/SemContextSpecificPoseAlertAttribute;->mMovingThrs:I

    .line 91
    iput p1, p0, Lcom/samsung/android/hardware/context/SemContextSpecificPoseAlertAttribute;->mRetentionTime:I

    .line 92
    iput p2, p0, Lcom/samsung/android/hardware/context/SemContextSpecificPoseAlertAttribute;->mMinimumAngle:I

    .line 93
    iput p3, p0, Lcom/samsung/android/hardware/context/SemContextSpecificPoseAlertAttribute;->mMaximumAngle:I

    .line 94
    iput p4, p0, Lcom/samsung/android/hardware/context/SemContextSpecificPoseAlertAttribute;->mMovingThrs:I

    .line 95
    invoke-direct {p0}, Lcom/samsung/android/hardware/context/SemContextSpecificPoseAlertAttribute;->setAttribute()V

    .line 90
    return-void
.end method

.method constructor <init>(Landroid/os/Parcel;)V
    .locals 2
    .param p1, "src"    # Landroid/os/Parcel;

    .prologue
    const/4 v1, 0x1

    .line 71
    invoke-direct {p0, p1}, Lcom/samsung/android/hardware/context/SemContextAttribute;-><init>(Landroid/os/Parcel;)V

    .line 55
    iput v1, p0, Lcom/samsung/android/hardware/context/SemContextSpecificPoseAlertAttribute;->mRetentionTime:I

    .line 56
    const/16 v0, -0x5a

    iput v0, p0, Lcom/samsung/android/hardware/context/SemContextSpecificPoseAlertAttribute;->mMinimumAngle:I

    .line 57
    const/16 v0, 0x5a

    iput v0, p0, Lcom/samsung/android/hardware/context/SemContextSpecificPoseAlertAttribute;->mMaximumAngle:I

    .line 58
    iput v1, p0, Lcom/samsung/android/hardware/context/SemContextSpecificPoseAlertAttribute;->mMovingThrs:I

    .line 70
    return-void
.end method

.method private setAttribute()V
    .locals 3

    .prologue
    .line 128
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 129
    .local v0, "attribute":Landroid/os/Bundle;
    const-string/jumbo v1, "retention_time"

    iget v2, p0, Lcom/samsung/android/hardware/context/SemContextSpecificPoseAlertAttribute;->mRetentionTime:I

    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 130
    const-string/jumbo v1, "minimum_angle"

    iget v2, p0, Lcom/samsung/android/hardware/context/SemContextSpecificPoseAlertAttribute;->mMinimumAngle:I

    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 131
    const-string/jumbo v1, "maximum_angle"

    iget v2, p0, Lcom/samsung/android/hardware/context/SemContextSpecificPoseAlertAttribute;->mMaximumAngle:I

    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 132
    const-string/jumbo v1, "moving_thrs"

    iget v2, p0, Lcom/samsung/android/hardware/context/SemContextSpecificPoseAlertAttribute;->mMovingThrs:I

    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 133
    const/16 v1, 0x1c

    invoke-super {p0, v1, v0}, Lcom/samsung/android/hardware/context/SemContextAttribute;->setAttribute(ILandroid/os/Bundle;)V

    .line 127
    return-void
.end method


# virtual methods
.method public checkAttribute()Z
    .locals 4

    .prologue
    const/16 v3, 0x5a

    const/16 v1, -0x5a

    const/4 v2, 0x0

    .line 104
    iget v0, p0, Lcom/samsung/android/hardware/context/SemContextSpecificPoseAlertAttribute;->mRetentionTime:I

    if-gez v0, :cond_0

    .line 105
    const-string/jumbo v0, "SemContextSpecificPoseAlertAttribute"

    const-string/jumbo v1, "The retention time is wrong."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 106
    return v2

    .line 108
    :cond_0
    iget v0, p0, Lcom/samsung/android/hardware/context/SemContextSpecificPoseAlertAttribute;->mMinimumAngle:I

    if-lt v0, v1, :cond_1

    iget v0, p0, Lcom/samsung/android/hardware/context/SemContextSpecificPoseAlertAttribute;->mMinimumAngle:I

    if-le v0, v3, :cond_2

    .line 109
    :cond_1
    const-string/jumbo v0, "SemContextSpecificPoseAlertAttribute"

    const-string/jumbo v1, "The minimum angle is wrong. The angle must be between -90 and 90."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    return v2

    .line 112
    :cond_2
    iget v0, p0, Lcom/samsung/android/hardware/context/SemContextSpecificPoseAlertAttribute;->mMaximumAngle:I

    if-lt v0, v1, :cond_3

    iget v0, p0, Lcom/samsung/android/hardware/context/SemContextSpecificPoseAlertAttribute;->mMaximumAngle:I

    if-le v0, v3, :cond_4

    .line 113
    :cond_3
    const-string/jumbo v0, "SemContextSpecificPoseAlertAttribute"

    const-string/jumbo v1, "The maximum angle is wrong. The angle must be between -90 and 90."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 114
    return v2

    .line 116
    :cond_4
    iget v0, p0, Lcom/samsung/android/hardware/context/SemContextSpecificPoseAlertAttribute;->mMinimumAngle:I

    iget v1, p0, Lcom/samsung/android/hardware/context/SemContextSpecificPoseAlertAttribute;->mMaximumAngle:I

    if-le v0, v1, :cond_5

    .line 117
    const-string/jumbo v0, "SemContextSpecificPoseAlertAttribute"

    const-string/jumbo v1, "The minimum angle must be less than the maximum angle."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 118
    return v2

    .line 120
    :cond_5
    iget v0, p0, Lcom/samsung/android/hardware/context/SemContextSpecificPoseAlertAttribute;->mMovingThrs:I

    if-gez v0, :cond_6

    .line 121
    const-string/jumbo v0, "SemContextSpecificPoseAlertAttribute"

    const-string/jumbo v1, "The moving threshold is wrong."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 122
    return v2

    .line 124
    :cond_6
    const/4 v0, 0x1

    return v0
.end method
