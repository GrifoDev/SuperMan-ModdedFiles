.class public Lcom/samsung/android/hardware/context/SemContextActivityCalibrationAttribute;
.super Lcom/samsung/android/hardware/context/SemContextAttribute;
.source "SemContextActivityCalibrationAttribute.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/hardware/context/SemContextActivityCalibrationAttribute$1;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/samsung/android/hardware/context/SemContextActivityCalibrationAttribute;",
            ">;"
        }
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String; = "SemContextActivityCalibrationAttribute"


# instance fields
.field private mData:I

.field private mSpeed:F

.field private mStatus:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 41
    new-instance v0, Lcom/samsung/android/hardware/context/SemContextActivityCalibrationAttribute$1;

    invoke-direct {v0}, Lcom/samsung/android/hardware/context/SemContextActivityCalibrationAttribute$1;-><init>()V

    sput-object v0, Lcom/samsung/android/hardware/context/SemContextActivityCalibrationAttribute;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 34
    return-void
.end method

.method constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 61
    invoke-direct {p0}, Lcom/samsung/android/hardware/context/SemContextAttribute;-><init>()V

    .line 54
    iput v0, p0, Lcom/samsung/android/hardware/context/SemContextActivityCalibrationAttribute;->mStatus:I

    .line 55
    iput v0, p0, Lcom/samsung/android/hardware/context/SemContextActivityCalibrationAttribute;->mData:I

    .line 56
    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/hardware/context/SemContextActivityCalibrationAttribute;->mSpeed:F

    .line 62
    invoke-direct {p0}, Lcom/samsung/android/hardware/context/SemContextActivityCalibrationAttribute;->setAttribute()V

    .line 61
    return-void
.end method

.method public constructor <init>(II)V
    .locals 1
    .param p1, "status"    # I
    .param p2, "data"    # I

    .prologue
    const/4 v0, 0x0

    .line 89
    invoke-direct {p0}, Lcom/samsung/android/hardware/context/SemContextAttribute;-><init>()V

    .line 54
    iput v0, p0, Lcom/samsung/android/hardware/context/SemContextActivityCalibrationAttribute;->mStatus:I

    .line 55
    iput v0, p0, Lcom/samsung/android/hardware/context/SemContextActivityCalibrationAttribute;->mData:I

    .line 56
    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/hardware/context/SemContextActivityCalibrationAttribute;->mSpeed:F

    .line 90
    iput p1, p0, Lcom/samsung/android/hardware/context/SemContextActivityCalibrationAttribute;->mStatus:I

    .line 91
    iput p2, p0, Lcom/samsung/android/hardware/context/SemContextActivityCalibrationAttribute;->mData:I

    .line 92
    invoke-direct {p0}, Lcom/samsung/android/hardware/context/SemContextActivityCalibrationAttribute;->setAttribute()V

    .line 89
    return-void
.end method

.method public constructor <init>(IIF)V
    .locals 1
    .param p1, "status"    # I
    .param p2, "data"    # I
    .param p3, "speed"    # F

    .prologue
    const/4 v0, 0x0

    .line 113
    invoke-direct {p0}, Lcom/samsung/android/hardware/context/SemContextAttribute;-><init>()V

    .line 54
    iput v0, p0, Lcom/samsung/android/hardware/context/SemContextActivityCalibrationAttribute;->mStatus:I

    .line 55
    iput v0, p0, Lcom/samsung/android/hardware/context/SemContextActivityCalibrationAttribute;->mData:I

    .line 56
    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/hardware/context/SemContextActivityCalibrationAttribute;->mSpeed:F

    .line 114
    iput p1, p0, Lcom/samsung/android/hardware/context/SemContextActivityCalibrationAttribute;->mStatus:I

    .line 115
    iput p2, p0, Lcom/samsung/android/hardware/context/SemContextActivityCalibrationAttribute;->mData:I

    .line 116
    iput p3, p0, Lcom/samsung/android/hardware/context/SemContextActivityCalibrationAttribute;->mSpeed:F

    .line 117
    invoke-direct {p0}, Lcom/samsung/android/hardware/context/SemContextActivityCalibrationAttribute;->setAttribute()V

    .line 113
    return-void
.end method

.method constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "src"    # Landroid/os/Parcel;

    .prologue
    const/4 v0, 0x0

    .line 69
    invoke-direct {p0, p1}, Lcom/samsung/android/hardware/context/SemContextAttribute;-><init>(Landroid/os/Parcel;)V

    .line 54
    iput v0, p0, Lcom/samsung/android/hardware/context/SemContextActivityCalibrationAttribute;->mStatus:I

    .line 55
    iput v0, p0, Lcom/samsung/android/hardware/context/SemContextActivityCalibrationAttribute;->mData:I

    .line 56
    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/hardware/context/SemContextActivityCalibrationAttribute;->mSpeed:F

    .line 68
    return-void
.end method

.method private setAttribute()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 140
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 141
    .local v1, "attribute":Landroid/os/Bundle;
    const/4 v2, 0x2

    new-array v0, v2, [B

    .line 142
    .local v0, "acData":[B
    iget v2, p0, Lcom/samsung/android/hardware/context/SemContextActivityCalibrationAttribute;->mStatus:I

    int-to-byte v2, v2

    aput-byte v2, v0, v5

    .line 143
    iget v2, p0, Lcom/samsung/android/hardware/context/SemContextActivityCalibrationAttribute;->mData:I

    int-to-byte v2, v2

    aput-byte v2, v0, v6

    .line 144
    const-string/jumbo v2, "activity_calibration"

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    .line 145
    const-string/jumbo v2, "activity_speed"

    iget v3, p0, Lcom/samsung/android/hardware/context/SemContextActivityCalibrationAttribute;->mSpeed:F

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    .line 146
    const-string/jumbo v2, "SemContextActivityCalibrationAttribute"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Activity Status Data : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget-byte v4, v0, v5

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    aget-byte v4, v0, v6

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", Speed : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/samsung/android/hardware/context/SemContextActivityCalibrationAttribute;->mSpeed:F

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 147
    const/16 v2, 0x35

    invoke-super {p0, v2, v1}, Lcom/samsung/android/hardware/context/SemContextAttribute;->setAttribute(ILandroid/os/Bundle;)V

    .line 139
    return-void
.end method


# virtual methods
.method public checkAttribute()Z
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 126
    iget v0, p0, Lcom/samsung/android/hardware/context/SemContextActivityCalibrationAttribute;->mStatus:I

    if-ltz v0, :cond_0

    .line 127
    iget v0, p0, Lcom/samsung/android/hardware/context/SemContextActivityCalibrationAttribute;->mStatus:I

    const/4 v1, 0x2

    if-le v0, v1, :cond_1

    .line 128
    :cond_0
    const-string/jumbo v0, "SemContextActivityCalibrationAttribute"

    const-string/jumbo v1, "Moving Status is wrong!!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 129
    return v2

    .line 131
    :cond_1
    iget v0, p0, Lcom/samsung/android/hardware/context/SemContextActivityCalibrationAttribute;->mData:I

    if-ltz v0, :cond_2

    .line 132
    iget v0, p0, Lcom/samsung/android/hardware/context/SemContextActivityCalibrationAttribute;->mData:I

    const/4 v1, 0x3

    if-le v0, v1, :cond_3

    .line 133
    :cond_2
    const-string/jumbo v0, "SemContextActivityCalibrationAttribute"

    const-string/jumbo v1, "Data of calibration is wrong!!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 134
    return v2

    .line 136
    :cond_3
    const/4 v0, 0x1

    return v0
.end method
