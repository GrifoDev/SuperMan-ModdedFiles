.class final Landroid/location/GnssMeasurementsEvent$1;
.super Ljava/lang/Object;
.source "GnssMeasurementsEvent.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/location/GnssMeasurementsEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Landroid/location/GnssMeasurementsEvent;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/location/GnssMeasurementsEvent;
    .locals 5

    invoke-virtual {p0}, Landroid/location/GnssMeasurementsEvent$1;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/location/GnssClock;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    new-array v2, v3, [Landroid/location/GnssMeasurement;

    sget-object v4, Landroid/location/GnssMeasurement;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v2, v4}, Landroid/os/Parcel;->readTypedArray([Ljava/lang/Object;Landroid/os/Parcelable$Creator;)V

    new-instance v4, Landroid/location/GnssMeasurementsEvent;

    invoke-direct {v4, v1, v2}, Landroid/location/GnssMeasurementsEvent;-><init>(Landroid/location/GnssClock;[Landroid/location/GnssMeasurement;)V

    return-object v4
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Landroid/location/GnssMeasurementsEvent$1;->createFromParcel(Landroid/os/Parcel;)Landroid/location/GnssMeasurementsEvent;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Landroid/location/GnssMeasurementsEvent;
    .locals 1

    new-array v0, p1, [Landroid/location/GnssMeasurementsEvent;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Landroid/location/GnssMeasurementsEvent$1;->newArray(I)[Landroid/location/GnssMeasurementsEvent;

    move-result-object v0

    return-object v0
.end method
