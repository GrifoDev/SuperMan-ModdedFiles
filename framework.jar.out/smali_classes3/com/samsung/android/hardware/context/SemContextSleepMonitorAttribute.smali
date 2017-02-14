.class public Lcom/samsung/android/hardware/context/SemContextSleepMonitorAttribute;
.super Lcom/samsung/android/hardware/context/SemContextAttribute;
.source "SemContextSleepMonitorAttribute.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/hardware/context/SemContextSleepMonitorAttribute$1;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/samsung/android/hardware/context/SemContextSleepMonitorAttribute;",
            ">;"
        }
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String; = "SemContextSleepMonitorAttribute"


# instance fields
.field private mSamplingInterval:I

.field private mSensibility:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/samsung/android/hardware/context/SemContextSleepMonitorAttribute$1;

    invoke-direct {v0}, Lcom/samsung/android/hardware/context/SemContextSleepMonitorAttribute$1;-><init>()V

    sput-object v0, Lcom/samsung/android/hardware/context/SemContextSleepMonitorAttribute;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/samsung/android/hardware/context/SemContextAttribute;-><init>()V

    const/16 v0, 0x50

    iput v0, p0, Lcom/samsung/android/hardware/context/SemContextSleepMonitorAttribute;->mSensibility:I

    const/16 v0, 0x64

    iput v0, p0, Lcom/samsung/android/hardware/context/SemContextSleepMonitorAttribute;->mSamplingInterval:I

    invoke-direct {p0}, Lcom/samsung/android/hardware/context/SemContextSleepMonitorAttribute;->setAttribute()V

    return-void
.end method

.method public constructor <init>(II)V
    .locals 1

    invoke-direct {p0}, Lcom/samsung/android/hardware/context/SemContextAttribute;-><init>()V

    const/16 v0, 0x50

    iput v0, p0, Lcom/samsung/android/hardware/context/SemContextSleepMonitorAttribute;->mSensibility:I

    const/16 v0, 0x64

    iput v0, p0, Lcom/samsung/android/hardware/context/SemContextSleepMonitorAttribute;->mSamplingInterval:I

    iput p1, p0, Lcom/samsung/android/hardware/context/SemContextSleepMonitorAttribute;->mSensibility:I

    iput p2, p0, Lcom/samsung/android/hardware/context/SemContextSleepMonitorAttribute;->mSamplingInterval:I

    invoke-direct {p0}, Lcom/samsung/android/hardware/context/SemContextSleepMonitorAttribute;->setAttribute()V

    return-void
.end method

.method constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/samsung/android/hardware/context/SemContextAttribute;-><init>(Landroid/os/Parcel;)V

    const/16 v0, 0x50

    iput v0, p0, Lcom/samsung/android/hardware/context/SemContextSleepMonitorAttribute;->mSensibility:I

    const/16 v0, 0x64

    iput v0, p0, Lcom/samsung/android/hardware/context/SemContextSleepMonitorAttribute;->mSamplingInterval:I

    return-void
.end method

.method private setAttribute()V
    .locals 3

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v1, "sensibility"

    iget v2, p0, Lcom/samsung/android/hardware/context/SemContextSleepMonitorAttribute;->mSensibility:I

    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo v1, "sampling_interval"

    iget v2, p0, Lcom/samsung/android/hardware/context/SemContextSleepMonitorAttribute;->mSamplingInterval:I

    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    const/16 v1, 0x1d

    invoke-super {p0, v1, v0}, Lcom/samsung/android/hardware/context/SemContextAttribute;->setAttribute(ILandroid/os/Bundle;)V

    return-void
.end method


# virtual methods
.method public checkAttribute()Z
    .locals 3

    const/4 v2, 0x0

    iget v0, p0, Lcom/samsung/android/hardware/context/SemContextSleepMonitorAttribute;->mSensibility:I

    if-gez v0, :cond_0

    const-string/jumbo v0, "SemContextSleepMonitorAttribute"

    const-string/jumbo v1, "The sensibility is wrong."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_0
    iget v0, p0, Lcom/samsung/android/hardware/context/SemContextSleepMonitorAttribute;->mSamplingInterval:I

    if-gez v0, :cond_1

    const-string/jumbo v0, "SemContextSleepMonitorAttribute"

    const-string/jumbo v1, "The sampling interval is wrong."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method public getSamplingInterval()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/hardware/context/SemContextSleepMonitorAttribute;->mSamplingInterval:I

    return v0
.end method

.method public getSensibility()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/hardware/context/SemContextSleepMonitorAttribute;->mSensibility:I

    return v0
.end method
