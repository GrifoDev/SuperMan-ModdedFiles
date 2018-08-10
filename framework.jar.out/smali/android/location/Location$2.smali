.class final Landroid/location/Location$2;
.super Ljava/lang/Object;
.source "Location.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/location/Location;
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
        "Landroid/location/Location;",
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
.method public createFromParcel(Landroid/os/Parcel;)Landroid/location/Location;
    .locals 4

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    new-instance v0, Landroid/location/Location;

    invoke-direct {v0, v1}, Landroid/location/Location;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    invoke-static {v0, v2, v3}, Landroid/location/Location;->-set11(Landroid/location/Location;J)J

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    invoke-static {v0, v2, v3}, Landroid/location/Location;->-set3(Landroid/location/Location;J)J

    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v2

    invoke-static {v0, v2}, Landroid/location/Location;->-set5(Landroid/location/Location;B)B

    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v2

    invoke-static {v0, v2, v3}, Landroid/location/Location;->-set7(Landroid/location/Location;D)D

    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v2

    invoke-static {v0, v2, v3}, Landroid/location/Location;->-set8(Landroid/location/Location;D)D

    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v2

    invoke-static {v0, v2, v3}, Landroid/location/Location;->-set0(Landroid/location/Location;D)D

    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v2

    invoke-static {v0, v2}, Landroid/location/Location;->-set9(Landroid/location/Location;F)F

    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v2

    invoke-static {v0, v2}, Landroid/location/Location;->-set1(Landroid/location/Location;F)F

    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v2

    invoke-static {v0, v2}, Landroid/location/Location;->-set6(Landroid/location/Location;F)F

    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v2

    invoke-static {v0, v2}, Landroid/location/Location;->-set12(Landroid/location/Location;F)F

    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v2

    invoke-static {v0, v2}, Landroid/location/Location;->-set10(Landroid/location/Location;F)F

    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v2

    invoke-static {v0, v2}, Landroid/location/Location;->-set2(Landroid/location/Location;F)F

    invoke-virtual {p1}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {v2, v3}, Landroid/os/Bundle;->setDefusable(Landroid/os/Bundle;Z)Landroid/os/Bundle;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/location/Location;->-set4(Landroid/location/Location;Landroid/os/Bundle;)Landroid/os/Bundle;

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Landroid/location/Location$2;->createFromParcel(Landroid/os/Parcel;)Landroid/location/Location;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Landroid/location/Location;
    .locals 1

    new-array v0, p1, [Landroid/location/Location;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Landroid/location/Location$2;->newArray(I)[Landroid/location/Location;

    move-result-object v0

    return-object v0
.end method
