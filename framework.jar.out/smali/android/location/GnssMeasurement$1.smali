.class final Landroid/location/GnssMeasurement$1;
.super Ljava/lang/Object;
.source "GnssMeasurement.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/location/GnssMeasurement;
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
        "Landroid/location/GnssMeasurement;",
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
.method public createFromParcel(Landroid/os/Parcel;)Landroid/location/GnssMeasurement;
    .locals 4

    new-instance v0, Landroid/location/GnssMeasurement;

    invoke-direct {v0}, Landroid/location/GnssMeasurement;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-static {v0, v1}, Landroid/location/GnssMeasurement;->-set10(Landroid/location/GnssMeasurement;I)I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-static {v0, v1}, Landroid/location/GnssMeasurement;->-set18(Landroid/location/GnssMeasurement;I)I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-static {v0, v1}, Landroid/location/GnssMeasurement;->-set9(Landroid/location/GnssMeasurement;I)I

    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v2

    invoke-static {v0, v2, v3}, Landroid/location/GnssMeasurement;->-set19(Landroid/location/GnssMeasurement;D)D

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-static {v0, v1}, Landroid/location/GnssMeasurement;->-set17(Landroid/location/GnssMeasurement;I)I

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    invoke-static {v0, v2, v3}, Landroid/location/GnssMeasurement;->-set14(Landroid/location/GnssMeasurement;J)J

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    invoke-static {v0, v2, v3}, Landroid/location/GnssMeasurement;->-set15(Landroid/location/GnssMeasurement;J)J

    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v2

    invoke-static {v0, v2, v3}, Landroid/location/GnssMeasurement;->-set8(Landroid/location/GnssMeasurement;D)D

    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v2

    invoke-static {v0, v2, v3}, Landroid/location/GnssMeasurement;->-set12(Landroid/location/GnssMeasurement;D)D

    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v2

    invoke-static {v0, v2, v3}, Landroid/location/GnssMeasurement;->-set13(Landroid/location/GnssMeasurement;D)D

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-static {v0, v1}, Landroid/location/GnssMeasurement;->-set1(Landroid/location/GnssMeasurement;I)I

    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v2

    invoke-static {v0, v2, v3}, Landroid/location/GnssMeasurement;->-set0(Landroid/location/GnssMeasurement;D)D

    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v2

    invoke-static {v0, v2, v3}, Landroid/location/GnssMeasurement;->-set2(Landroid/location/GnssMeasurement;D)D

    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v1

    invoke-static {v0, v1}, Landroid/location/GnssMeasurement;->-set5(Landroid/location/GnssMeasurement;F)F

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    invoke-static {v0, v2, v3}, Landroid/location/GnssMeasurement;->-set4(Landroid/location/GnssMeasurement;J)J

    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v2

    invoke-static {v0, v2, v3}, Landroid/location/GnssMeasurement;->-set6(Landroid/location/GnssMeasurement;D)D

    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v2

    invoke-static {v0, v2, v3}, Landroid/location/GnssMeasurement;->-set7(Landroid/location/GnssMeasurement;D)D

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-static {v0, v1}, Landroid/location/GnssMeasurement;->-set11(Landroid/location/GnssMeasurement;I)I

    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v2

    invoke-static {v0, v2, v3}, Landroid/location/GnssMeasurement;->-set16(Landroid/location/GnssMeasurement;D)D

    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v2

    invoke-static {v0, v2, v3}, Landroid/location/GnssMeasurement;->-set3(Landroid/location/GnssMeasurement;D)D

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Landroid/location/GnssMeasurement$1;->createFromParcel(Landroid/os/Parcel;)Landroid/location/GnssMeasurement;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Landroid/location/GnssMeasurement;
    .locals 1

    new-array v0, p1, [Landroid/location/GnssMeasurement;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Landroid/location/GnssMeasurement$1;->newArray(I)[Landroid/location/GnssMeasurement;

    move-result-object v0

    return-object v0
.end method
