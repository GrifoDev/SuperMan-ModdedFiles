.class public Lcom/samsung/android/hardware/context/SemContextEnvironmentAttribute;
.super Lcom/samsung/android/hardware/context/SemContextAttribute;
.source "SemContextEnvironmentAttribute.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/hardware/context/SemContextEnvironmentAttribute$1;
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
            "Lcom/samsung/android/hardware/context/SemContextEnvironmentAttribute;",
            ">;"
        }
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String; = "SemContextEnvironmentAttribute"


# instance fields
.field private mSensorType:I

.field private mUpdateInterval:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 44
    new-instance v0, Lcom/samsung/android/hardware/context/SemContextEnvironmentAttribute$1;

    invoke-direct {v0}, Lcom/samsung/android/hardware/context/SemContextEnvironmentAttribute$1;-><init>()V

    sput-object v0, Lcom/samsung/android/hardware/context/SemContextEnvironmentAttribute;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 37
    return-void
.end method

.method constructor <init>()V
    .locals 1

    .prologue
    .line 66
    invoke-direct {p0}, Lcom/samsung/android/hardware/context/SemContextAttribute;-><init>()V

    .line 59
    const/4 v0, 0x1

    iput v0, p0, Lcom/samsung/android/hardware/context/SemContextEnvironmentAttribute;->mSensorType:I

    .line 61
    const/16 v0, 0x3c

    iput v0, p0, Lcom/samsung/android/hardware/context/SemContextEnvironmentAttribute;->mUpdateInterval:I

    .line 67
    invoke-direct {p0}, Lcom/samsung/android/hardware/context/SemContextEnvironmentAttribute;->setAttribute()V

    .line 66
    return-void
.end method

.method public constructor <init>(II)V
    .locals 1
    .param p1, "sensorType"    # I
    .param p2, "updateInterval"    # I

    .prologue
    .line 91
    invoke-direct {p0}, Lcom/samsung/android/hardware/context/SemContextAttribute;-><init>()V

    .line 59
    const/4 v0, 0x1

    iput v0, p0, Lcom/samsung/android/hardware/context/SemContextEnvironmentAttribute;->mSensorType:I

    .line 61
    const/16 v0, 0x3c

    iput v0, p0, Lcom/samsung/android/hardware/context/SemContextEnvironmentAttribute;->mUpdateInterval:I

    .line 92
    iput p1, p0, Lcom/samsung/android/hardware/context/SemContextEnvironmentAttribute;->mSensorType:I

    .line 93
    iput p2, p0, Lcom/samsung/android/hardware/context/SemContextEnvironmentAttribute;->mUpdateInterval:I

    .line 94
    invoke-direct {p0}, Lcom/samsung/android/hardware/context/SemContextEnvironmentAttribute;->setAttribute()V

    .line 91
    return-void
.end method

.method constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "src"    # Landroid/os/Parcel;

    .prologue
    .line 74
    invoke-direct {p0, p1}, Lcom/samsung/android/hardware/context/SemContextAttribute;-><init>(Landroid/os/Parcel;)V

    .line 59
    const/4 v0, 0x1

    iput v0, p0, Lcom/samsung/android/hardware/context/SemContextEnvironmentAttribute;->mSensorType:I

    .line 61
    const/16 v0, 0x3c

    iput v0, p0, Lcom/samsung/android/hardware/context/SemContextEnvironmentAttribute;->mUpdateInterval:I

    .line 73
    return-void
.end method

.method private setAttribute()V
    .locals 3

    .prologue
    .line 112
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 113
    .local v0, "attribute":Landroid/os/Bundle;
    const-string/jumbo v1, "sensor_type"

    iget v2, p0, Lcom/samsung/android/hardware/context/SemContextEnvironmentAttribute;->mSensorType:I

    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 114
    const-string/jumbo v1, "update_interval"

    iget v2, p0, Lcom/samsung/android/hardware/context/SemContextEnvironmentAttribute;->mUpdateInterval:I

    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 115
    const/16 v1, 0x8

    invoke-super {p0, v1, v0}, Lcom/samsung/android/hardware/context/SemContextAttribute;->setAttribute(ILandroid/os/Bundle;)V

    .line 111
    return-void
.end method


# virtual methods
.method public checkAttribute()Z
    .locals 3

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 100
    iget v0, p0, Lcom/samsung/android/hardware/context/SemContextEnvironmentAttribute;->mSensorType:I

    if-eq v0, v1, :cond_0

    .line 101
    const-string/jumbo v0, "SemContextEnvironmentAttribute"

    const-string/jumbo v1, "The sensor type is wrong."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 102
    return v2

    .line 104
    :cond_0
    iget v0, p0, Lcom/samsung/android/hardware/context/SemContextEnvironmentAttribute;->mUpdateInterval:I

    if-gez v0, :cond_1

    .line 105
    const-string/jumbo v0, "SemContextEnvironmentAttribute"

    const-string/jumbo v1, "The update interval is wrong."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 106
    return v2

    .line 108
    :cond_1
    return v1
.end method
