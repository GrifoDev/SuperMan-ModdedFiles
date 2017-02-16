.class public Lcom/samsung/android/hardware/context/SemContextStepCountAlertAttribute;
.super Lcom/samsung/android/hardware/context/SemContextAttribute;
.source "SemContextStepCountAlertAttribute.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/hardware/context/SemContextStepCountAlertAttribute$1;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/samsung/android/hardware/context/SemContextStepCountAlertAttribute;",
            ">;"
        }
    .end annotation
.end field

.field public static final INTERRUPT_GYRO_DISABLE_SYSFS_NODE:I = 0x0

.field public static final INTERRUPT_GYRO_ENABLE_SYSFS_NODE:I = 0x1

.field private static final TAG:Ljava/lang/String; = "SemContextStepCountAlertAttribute"


# instance fields
.field private mStepCount:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 40
    new-instance v0, Lcom/samsung/android/hardware/context/SemContextStepCountAlertAttribute$1;

    invoke-direct {v0}, Lcom/samsung/android/hardware/context/SemContextStepCountAlertAttribute$1;-><init>()V

    sput-object v0, Lcom/samsung/android/hardware/context/SemContextStepCountAlertAttribute;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 33
    return-void
.end method

.method constructor <init>()V
    .locals 1

    .prologue
    .line 73
    invoke-direct {p0}, Lcom/samsung/android/hardware/context/SemContextAttribute;-><init>()V

    .line 68
    const/16 v0, 0xa

    iput v0, p0, Lcom/samsung/android/hardware/context/SemContextStepCountAlertAttribute;->mStepCount:I

    .line 74
    invoke-direct {p0}, Lcom/samsung/android/hardware/context/SemContextStepCountAlertAttribute;->setAttribute()V

    .line 73
    return-void
.end method

.method public constructor <init>(I)V
    .locals 1
    .param p1, "stepCount"    # I

    .prologue
    .line 96
    invoke-direct {p0}, Lcom/samsung/android/hardware/context/SemContextAttribute;-><init>()V

    .line 68
    const/16 v0, 0xa

    iput v0, p0, Lcom/samsung/android/hardware/context/SemContextStepCountAlertAttribute;->mStepCount:I

    .line 97
    iput p1, p0, Lcom/samsung/android/hardware/context/SemContextStepCountAlertAttribute;->mStepCount:I

    .line 98
    invoke-direct {p0}, Lcom/samsung/android/hardware/context/SemContextStepCountAlertAttribute;->setAttribute()V

    .line 96
    return-void
.end method

.method constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "src"    # Landroid/os/Parcel;

    .prologue
    .line 81
    invoke-direct {p0, p1}, Lcom/samsung/android/hardware/context/SemContextAttribute;-><init>(Landroid/os/Parcel;)V

    .line 68
    const/16 v0, 0xa

    iput v0, p0, Lcom/samsung/android/hardware/context/SemContextStepCountAlertAttribute;->mStepCount:I

    .line 80
    return-void
.end method

.method private setAttribute()V
    .locals 3

    .prologue
    .line 125
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 126
    .local v0, "attribute":Landroid/os/Bundle;
    const-string/jumbo v1, "step_count"

    iget v2, p0, Lcom/samsung/android/hardware/context/SemContextStepCountAlertAttribute;->mStepCount:I

    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 127
    const/4 v1, 0x3

    invoke-super {p0, v1, v0}, Lcom/samsung/android/hardware/context/SemContextAttribute;->setAttribute(ILandroid/os/Bundle;)V

    .line 124
    return-void
.end method


# virtual methods
.method public checkAttribute()Z
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 117
    iget v0, p0, Lcom/samsung/android/hardware/context/SemContextStepCountAlertAttribute;->mStepCount:I

    if-gez v0, :cond_0

    .line 118
    const-string/jumbo v0, "SemContextStepCountAlertAttribute"

    const-string/jumbo v1, "The step count is wrong."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 119
    return v2

    .line 121
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public getStepCount()I
    .locals 1

    .prologue
    .line 108
    iget v0, p0, Lcom/samsung/android/hardware/context/SemContextStepCountAlertAttribute;->mStepCount:I

    return v0
.end method
