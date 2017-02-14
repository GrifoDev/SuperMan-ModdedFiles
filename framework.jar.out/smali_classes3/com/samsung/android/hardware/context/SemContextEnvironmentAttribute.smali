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

    new-instance v0, Lcom/samsung/android/hardware/context/SemContextEnvironmentAttribute$1;

    invoke-direct {v0}, Lcom/samsung/android/hardware/context/SemContextEnvironmentAttribute$1;-><init>()V

    sput-object v0, Lcom/samsung/android/hardware/context/SemContextEnvironmentAttribute;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/samsung/android/hardware/context/SemContextAttribute;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lcom/samsung/android/hardware/context/SemContextEnvironmentAttribute;->mSensorType:I

    const/16 v0, 0x3c

    iput v0, p0, Lcom/samsung/android/hardware/context/SemContextEnvironmentAttribute;->mUpdateInterval:I

    invoke-direct {p0}, Lcom/samsung/android/hardware/context/SemContextEnvironmentAttribute;->setAttribute()V

    return-void
.end method

.method public constructor <init>(II)V
    .locals 1

    invoke-direct {p0}, Lcom/samsung/android/hardware/context/SemContextAttribute;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lcom/samsung/android/hardware/context/SemContextEnvironmentAttribute;->mSensorType:I

    const/16 v0, 0x3c

    iput v0, p0, Lcom/samsung/android/hardware/context/SemContextEnvironmentAttribute;->mUpdateInterval:I

    iput p1, p0, Lcom/samsung/android/hardware/context/SemContextEnvironmentAttribute;->mSensorType:I

    iput p2, p0, Lcom/samsung/android/hardware/context/SemContextEnvironmentAttribute;->mUpdateInterval:I

    invoke-direct {p0}, Lcom/samsung/android/hardware/context/SemContextEnvironmentAttribute;->setAttribute()V

    return-void
.end method

.method constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/samsung/android/hardware/context/SemContextAttribute;-><init>(Landroid/os/Parcel;)V

    const/4 v0, 0x1

    iput v0, p0, Lcom/samsung/android/hardware/context/SemContextEnvironmentAttribute;->mSensorType:I

    const/16 v0, 0x3c

    iput v0, p0, Lcom/samsung/android/hardware/context/SemContextEnvironmentAttribute;->mUpdateInterval:I

    return-void
.end method

.method private setAttribute()V
    .locals 3

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v1, "sensor_type"

    iget v2, p0, Lcom/samsung/android/hardware/context/SemContextEnvironmentAttribute;->mSensorType:I

    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo v1, "update_interval"

    iget v2, p0, Lcom/samsung/android/hardware/context/SemContextEnvironmentAttribute;->mUpdateInterval:I

    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    const/16 v1, 0x8

    invoke-super {p0, v1, v0}, Lcom/samsung/android/hardware/context/SemContextAttribute;->setAttribute(ILandroid/os/Bundle;)V

    return-void
.end method


# virtual methods
.method public checkAttribute()Z
    .locals 3

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget v0, p0, Lcom/samsung/android/hardware/context/SemContextEnvironmentAttribute;->mSensorType:I

    if-eq v0, v1, :cond_0

    const-string/jumbo v0, "SemContextEnvironmentAttribute"

    const-string/jumbo v1, "The sensor type is wrong."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_0
    iget v0, p0, Lcom/samsung/android/hardware/context/SemContextEnvironmentAttribute;->mUpdateInterval:I

    if-gez v0, :cond_1

    const-string/jumbo v0, "SemContextEnvironmentAttribute"

    const-string/jumbo v1, "The update interval is wrong."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_1
    return v1
.end method
