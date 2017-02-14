.class public Lcom/samsung/android/hardware/context/SemContextEnvironment;
.super Lcom/samsung/android/hardware/context/SemContextEventContext;
.source "SemContextEnvironment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/hardware/context/SemContextEnvironment$1;
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
            "Lcom/samsung/android/hardware/context/SemContextEnvironment;",
            ">;"
        }
    .end annotation
.end field

.field public static final SENSOR_TEMPERATURE_HUMIDITY:I = 0x1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final VALUE_UNKNOWN:D
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field


# instance fields
.field private mContext:Landroid/os/Bundle;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/samsung/android/hardware/context/SemContextEnvironment$1;

    invoke-direct {v0}, Lcom/samsung/android/hardware/context/SemContextEnvironment$1;-><init>()V

    sput-object v0, Lcom/samsung/android/hardware/context/SemContextEnvironment;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/samsung/android/hardware/context/SemContextEventContext;-><init>()V

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/hardware/context/SemContextEnvironment;->mContext:Landroid/os/Bundle;

    return-void
.end method

.method constructor <init>(Landroid/os/Parcel;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/hardware/context/SemContextEventContext;-><init>()V

    invoke-direct {p0, p1}, Lcom/samsung/android/hardware/context/SemContextEnvironment;->readFromParcel(Landroid/os/Parcel;)V

    return-void
.end method

.method private getTemperatureHumidityData(I)[D
    .locals 2

    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/samsung/android/hardware/context/SemContextEnvironment;->mContext:Landroid/os/Bundle;

    const-string/jumbo v1, "Temperature"

    invoke-virtual {v0, v1}, Landroid/os/BaseBundle;->getDoubleArray(Ljava/lang/String;)[D

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/hardware/context/SemContextEnvironment;->mContext:Landroid/os/Bundle;

    const-string/jumbo v1, "Humidity"

    invoke-virtual {v0, v1}, Landroid/os/BaseBundle;->getDoubleArray(Ljava/lang/String;)[D

    move-result-object v0

    return-object v0

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method private readFromParcel(Landroid/os/Parcel;)V
    .locals 1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readBundle(Ljava/lang/ClassLoader;)Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/hardware/context/SemContextEnvironment;->mContext:Landroid/os/Bundle;

    return-void
.end method


# virtual methods
.method public getData(I)[D
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/hardware/context/SemContextEnvironment;->mContext:Landroid/os/Bundle;

    const-string/jumbo v1, "EnvSensorType"

    invoke-virtual {v0, v1}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    invoke-direct {p0, p1}, Lcom/samsung/android/hardware/context/SemContextEnvironment;->getTemperatureHumidityData(I)[D

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getSensorType()I
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/hardware/context/SemContextEnvironment;->mContext:Landroid/os/Bundle;

    const-string/jumbo v1, "EnvSensorType"

    invoke-virtual {v0, v1}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public setValues(Landroid/os/Bundle;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/hardware/context/SemContextEnvironment;->mContext:Landroid/os/Bundle;

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/hardware/context/SemContextEnvironment;->mContext:Landroid/os/Bundle;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    return-void
.end method
