.class final Landroid/location/GpsClock$1;
.super Ljava/lang/Object;
.source "GpsClock.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/location/GpsClock;
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
        "Landroid/location/GpsClock;",
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
.method public createFromParcel(Landroid/os/Parcel;)Landroid/location/GpsClock;
    .locals 4

    new-instance v0, Landroid/location/GpsClock;

    invoke-direct {v0}, Landroid/location/GpsClock;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    int-to-short v1, v1

    invoke-static {v0, v1}, Landroid/location/GpsClock;->-set4(Landroid/location/GpsClock;S)S

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    int-to-short v1, v1

    invoke-static {v0, v1}, Landroid/location/GpsClock;->-set6(Landroid/location/GpsClock;S)S

    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v1

    invoke-static {v0, v1}, Landroid/location/GpsClock;->-set9(Landroid/location/GpsClock;B)B

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    invoke-static {v0, v2, v3}, Landroid/location/GpsClock;->-set7(Landroid/location/GpsClock;J)J

    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v2

    invoke-static {v0, v2, v3}, Landroid/location/GpsClock;->-set8(Landroid/location/GpsClock;D)D

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    invoke-static {v0, v2, v3}, Landroid/location/GpsClock;->-set5(Landroid/location/GpsClock;J)J

    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v2

    invoke-static {v0, v2, v3}, Landroid/location/GpsClock;->-set0(Landroid/location/GpsClock;D)D

    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v2

    invoke-static {v0, v2, v3}, Landroid/location/GpsClock;->-set1(Landroid/location/GpsClock;D)D

    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v2

    invoke-static {v0, v2, v3}, Landroid/location/GpsClock;->-set2(Landroid/location/GpsClock;D)D

    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v2

    invoke-static {v0, v2, v3}, Landroid/location/GpsClock;->-set3(Landroid/location/GpsClock;D)D

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Landroid/location/GpsClock$1;->createFromParcel(Landroid/os/Parcel;)Landroid/location/GpsClock;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Landroid/location/GpsClock;
    .locals 1

    new-array v0, p1, [Landroid/location/GpsClock;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Landroid/location/GpsClock$1;->newArray(I)[Landroid/location/GpsClock;

    move-result-object v0

    return-object v0
.end method
