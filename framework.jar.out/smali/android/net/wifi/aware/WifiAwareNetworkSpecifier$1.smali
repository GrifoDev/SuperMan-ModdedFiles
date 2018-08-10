.class final Landroid/net/wifi/aware/WifiAwareNetworkSpecifier$1;
.super Ljava/lang/Object;
.source "WifiAwareNetworkSpecifier.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/aware/WifiAwareNetworkSpecifier;
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
        "Landroid/net/wifi/aware/WifiAwareNetworkSpecifier;",
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
.method public createFromParcel(Landroid/os/Parcel;)Landroid/net/wifi/aware/WifiAwareNetworkSpecifier;
    .locals 9

    new-instance v0, Landroid/net/wifi/aware/WifiAwareNetworkSpecifier;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v5

    invoke-virtual {p1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v6

    invoke-virtual {p1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v7

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    invoke-direct/range {v0 .. v8}, Landroid/net/wifi/aware/WifiAwareNetworkSpecifier;-><init>(IIIII[B[BLjava/lang/String;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Landroid/net/wifi/aware/WifiAwareNetworkSpecifier$1;->createFromParcel(Landroid/os/Parcel;)Landroid/net/wifi/aware/WifiAwareNetworkSpecifier;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Landroid/net/wifi/aware/WifiAwareNetworkSpecifier;
    .locals 1

    new-array v0, p1, [Landroid/net/wifi/aware/WifiAwareNetworkSpecifier;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Landroid/net/wifi/aware/WifiAwareNetworkSpecifier$1;->newArray(I)[Landroid/net/wifi/aware/WifiAwareNetworkSpecifier;

    move-result-object v0

    return-object v0
.end method
