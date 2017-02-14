.class final Landroid/bluetooth/SemBluetoothHidDeviceAppQosSettings$1;
.super Ljava/lang/Object;
.source "SemBluetoothHidDeviceAppQosSettings.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/bluetooth/SemBluetoothHidDeviceAppQosSettings;
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
        "Landroid/bluetooth/SemBluetoothHidDeviceAppQosSettings;",
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
.method public createFromParcel(Landroid/os/Parcel;)Landroid/bluetooth/SemBluetoothHidDeviceAppQosSettings;
    .locals 7

    new-instance v0, Landroid/bluetooth/SemBluetoothHidDeviceAppQosSettings;

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

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v6

    invoke-direct/range {v0 .. v6}, Landroid/bluetooth/SemBluetoothHidDeviceAppQosSettings;-><init>(IIIIII)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Landroid/bluetooth/SemBluetoothHidDeviceAppQosSettings$1;->createFromParcel(Landroid/os/Parcel;)Landroid/bluetooth/SemBluetoothHidDeviceAppQosSettings;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Landroid/bluetooth/SemBluetoothHidDeviceAppQosSettings;
    .locals 1

    new-array v0, p1, [Landroid/bluetooth/SemBluetoothHidDeviceAppQosSettings;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Landroid/bluetooth/SemBluetoothHidDeviceAppQosSettings$1;->newArray(I)[Landroid/bluetooth/SemBluetoothHidDeviceAppQosSettings;

    move-result-object v0

    return-object v0
.end method
