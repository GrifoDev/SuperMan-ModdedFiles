.class final Landroid/bluetooth/SemBluetoothHidDeviceAppConfiguration$1;
.super Ljava/lang/Object;
.source "SemBluetoothHidDeviceAppConfiguration.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/bluetooth/SemBluetoothHidDeviceAppConfiguration;
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
        "Landroid/bluetooth/SemBluetoothHidDeviceAppConfiguration;",
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
.method public createFromParcel(Landroid/os/Parcel;)Landroid/bluetooth/SemBluetoothHidDeviceAppConfiguration;
    .locals 3

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    new-instance v2, Landroid/bluetooth/SemBluetoothHidDeviceAppConfiguration;

    invoke-direct {v2, v0, v1}, Landroid/bluetooth/SemBluetoothHidDeviceAppConfiguration;-><init>(J)V

    return-object v2
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Landroid/bluetooth/SemBluetoothHidDeviceAppConfiguration$1;->createFromParcel(Landroid/os/Parcel;)Landroid/bluetooth/SemBluetoothHidDeviceAppConfiguration;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Landroid/bluetooth/SemBluetoothHidDeviceAppConfiguration;
    .locals 1

    new-array v0, p1, [Landroid/bluetooth/SemBluetoothHidDeviceAppConfiguration;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Landroid/bluetooth/SemBluetoothHidDeviceAppConfiguration$1;->newArray(I)[Landroid/bluetooth/SemBluetoothHidDeviceAppConfiguration;

    move-result-object v0

    return-object v0
.end method
