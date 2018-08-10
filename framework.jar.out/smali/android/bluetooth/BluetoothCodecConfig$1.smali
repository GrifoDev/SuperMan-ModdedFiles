.class final Landroid/bluetooth/BluetoothCodecConfig$1;
.super Ljava/lang/Object;
.source "BluetoothCodecConfig.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/bluetooth/BluetoothCodecConfig;
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
        "Landroid/bluetooth/BluetoothCodecConfig;",
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
.method public createFromParcel(Landroid/os/Parcel;)Landroid/bluetooth/BluetoothCodecConfig;
    .locals 14

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

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v6

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v8

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v10

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v12

    new-instance v0, Landroid/bluetooth/BluetoothCodecConfig;

    invoke-direct/range {v0 .. v13}, Landroid/bluetooth/BluetoothCodecConfig;-><init>(IIIIIJJJJ)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Landroid/bluetooth/BluetoothCodecConfig$1;->createFromParcel(Landroid/os/Parcel;)Landroid/bluetooth/BluetoothCodecConfig;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Landroid/bluetooth/BluetoothCodecConfig;
    .locals 1

    new-array v0, p1, [Landroid/bluetooth/BluetoothCodecConfig;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Landroid/bluetooth/BluetoothCodecConfig$1;->newArray(I)[Landroid/bluetooth/BluetoothCodecConfig;

    move-result-object v0

    return-object v0
.end method
