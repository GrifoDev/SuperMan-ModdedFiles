.class final Landroid/companion/BluetoothLeDeviceFilter$1;
.super Ljava/lang/Object;
.source "BluetoothLeDeviceFilter.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/companion/BluetoothLeDeviceFilter;
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
        "Landroid/companion/BluetoothLeDeviceFilter;",
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
.method public createFromParcel(Landroid/os/Parcel;)Landroid/companion/BluetoothLeDeviceFilter;
    .locals 13

    const/4 v12, 0x0

    new-instance v5, Landroid/companion/BluetoothLeDeviceFilter$Builder;

    invoke-direct {v5}, Landroid/companion/BluetoothLeDeviceFilter$Builder;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Landroid/companion/BluetoothDeviceFilterUtils;->patternFromString(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v11

    invoke-virtual {v5, v11}, Landroid/companion/BluetoothLeDeviceFilter$Builder;->setNamePattern(Ljava/util/regex/Pattern;)Landroid/companion/BluetoothLeDeviceFilter$Builder;

    move-result-object v11

    invoke-virtual {p1, v12}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v5

    check-cast v5, Landroid/bluetooth/le/ScanFilter;

    invoke-virtual {v11, v5}, Landroid/companion/BluetoothLeDeviceFilter$Builder;->setScanFilter(Landroid/bluetooth/le/ScanFilter;)Landroid/companion/BluetoothLeDeviceFilter$Builder;

    move-result-object v0

    invoke-virtual {p1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v9

    invoke-virtual {p1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v10

    if-eqz v9, :cond_0

    invoke-virtual {v0, v9, v10}, Landroid/companion/BluetoothLeDeviceFilter$Builder;->setRawDataFilter([B[B)Landroid/companion/BluetoothLeDeviceFilter$Builder;

    :cond_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v7

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v8

    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v6

    if-eqz v1, :cond_1

    if-ltz v3, :cond_3

    if-eqz v6, :cond_2

    sget-object v5, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    :goto_0
    invoke-virtual/range {v0 .. v5}, Landroid/companion/BluetoothLeDeviceFilter$Builder;->setRenameFromBytes(Ljava/lang/String;Ljava/lang/String;IILjava/nio/ByteOrder;)Landroid/companion/BluetoothLeDeviceFilter$Builder;

    :cond_1
    :goto_1
    invoke-virtual {v0}, Landroid/companion/BluetoothLeDeviceFilter$Builder;->build()Landroid/companion/BluetoothLeDeviceFilter;

    move-result-object v5

    return-object v5

    :cond_2
    sget-object v5, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    goto :goto_0

    :cond_3
    invoke-virtual {v0, v1, v2, v7, v8}, Landroid/companion/BluetoothLeDeviceFilter$Builder;->setRenameFromName(Ljava/lang/String;Ljava/lang/String;II)Landroid/companion/BluetoothLeDeviceFilter$Builder;

    goto :goto_1
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Landroid/companion/BluetoothLeDeviceFilter$1;->createFromParcel(Landroid/os/Parcel;)Landroid/companion/BluetoothLeDeviceFilter;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Landroid/companion/BluetoothLeDeviceFilter;
    .locals 1

    new-array v0, p1, [Landroid/companion/BluetoothLeDeviceFilter;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Landroid/companion/BluetoothLeDeviceFilter$1;->newArray(I)[Landroid/companion/BluetoothLeDeviceFilter;

    move-result-object v0

    return-object v0
.end method
