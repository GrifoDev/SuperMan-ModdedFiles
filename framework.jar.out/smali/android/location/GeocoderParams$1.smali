.class final Landroid/location/GeocoderParams$1;
.super Ljava/lang/Object;
.source "GeocoderParams.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/location/GeocoderParams;
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
        "Landroid/location/GeocoderParams;",
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
.method public createFromParcel(Landroid/os/Parcel;)Landroid/location/GeocoderParams;
    .locals 5

    new-instance v1, Landroid/location/GeocoderParams;

    const/4 v4, 0x0

    invoke-direct {v1, v4}, Landroid/location/GeocoderParams;-><init>(Landroid/location/GeocoderParams;)V

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/util/Locale;

    invoke-direct {v4, v2, v0, v3}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1, v4}, Landroid/location/GeocoderParams;->-set0(Landroid/location/GeocoderParams;Ljava/util/Locale;)Ljava/util/Locale;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/location/GeocoderParams;->-set1(Landroid/location/GeocoderParams;Ljava/lang/String;)Ljava/lang/String;

    return-object v1
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Landroid/location/GeocoderParams$1;->createFromParcel(Landroid/os/Parcel;)Landroid/location/GeocoderParams;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Landroid/location/GeocoderParams;
    .locals 1

    new-array v0, p1, [Landroid/location/GeocoderParams;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Landroid/location/GeocoderParams$1;->newArray(I)[Landroid/location/GeocoderParams;

    move-result-object v0

    return-object v0
.end method
