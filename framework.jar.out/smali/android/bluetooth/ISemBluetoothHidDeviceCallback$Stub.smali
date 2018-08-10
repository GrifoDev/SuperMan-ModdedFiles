.class public abstract Landroid/bluetooth/ISemBluetoothHidDeviceCallback$Stub;
.super Landroid/os/Binder;
.source "ISemBluetoothHidDeviceCallback.java"

# interfaces
.implements Landroid/bluetooth/ISemBluetoothHidDeviceCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/bluetooth/ISemBluetoothHidDeviceCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/bluetooth/ISemBluetoothHidDeviceCallback$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.bluetooth.ISemBluetoothHidDeviceCallback"

.field static final TRANSACTION_onAppStatusChanged:I = 0x1

.field static final TRANSACTION_onConnectionStateChanged:I = 0x2

.field static final TRANSACTION_onGetReport:I = 0x3

.field static final TRANSACTION_onIntrData:I = 0x6

.field static final TRANSACTION_onSetProtocol:I = 0x5

.field static final TRANSACTION_onSetReport:I = 0x4

.field static final TRANSACTION_onVirtualCableUnplug:I = 0x7


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string/jumbo v0, "android.bluetooth.ISemBluetoothHidDeviceCallback"

    invoke-virtual {p0, p0, v0}, Landroid/bluetooth/ISemBluetoothHidDeviceCallback$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/bluetooth/ISemBluetoothHidDeviceCallback;
    .locals 2

    const/4 v1, 0x0

    if-nez p0, :cond_0

    return-object v1

    :cond_0
    const-string/jumbo v1, "android.bluetooth.ISemBluetoothHidDeviceCallback"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/bluetooth/ISemBluetoothHidDeviceCallback;

    if-eqz v1, :cond_1

    check-cast v0, Landroid/bluetooth/ISemBluetoothHidDeviceCallback;

    return-object v0

    :cond_1
    new-instance v1, Landroid/bluetooth/ISemBluetoothHidDeviceCallback$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/bluetooth/ISemBluetoothHidDeviceCallback$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v10, 0x1

    sparse-switch p1, :sswitch_data_0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v9

    return v9

    :sswitch_0
    const-string/jumbo v9, "android.bluetooth.ISemBluetoothHidDeviceCallback"

    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v10

    :sswitch_1
    const-string/jumbo v9, "android.bluetooth.ISemBluetoothHidDeviceCallback"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    if-eqz v9, :cond_0

    sget-object v9, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v9, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BluetoothDevice;

    :goto_0
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    if-eqz v9, :cond_1

    sget-object v9, Landroid/bluetooth/SemBluetoothHidDeviceAppConfiguration;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v9, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/bluetooth/SemBluetoothHidDeviceAppConfiguration;

    :goto_1
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    if-eqz v9, :cond_2

    const/4 v7, 0x1

    :goto_2
    invoke-virtual {p0, v1, v4, v7}, Landroid/bluetooth/ISemBluetoothHidDeviceCallback$Stub;->onAppStatusChanged(Landroid/bluetooth/BluetoothDevice;Landroid/bluetooth/SemBluetoothHidDeviceAppConfiguration;Z)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v10

    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    :cond_1
    const/4 v4, 0x0

    goto :goto_1

    :cond_2
    const/4 v7, 0x0

    goto :goto_2

    :sswitch_2
    const-string/jumbo v9, "android.bluetooth.ISemBluetoothHidDeviceCallback"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    if-eqz v9, :cond_3

    sget-object v9, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v9, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BluetoothDevice;

    :goto_3
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-virtual {p0, v1, v3}, Landroid/bluetooth/ISemBluetoothHidDeviceCallback$Stub;->onConnectionStateChanged(Landroid/bluetooth/BluetoothDevice;I)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v10

    :cond_3
    const/4 v1, 0x0

    goto :goto_3

    :sswitch_3
    const-string/jumbo v9, "android.bluetooth.ISemBluetoothHidDeviceCallback"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readByte()B

    move-result v0

    invoke-virtual {p2}, Landroid/os/Parcel;->readByte()B

    move-result v2

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    invoke-virtual {p0, v0, v2, v6}, Landroid/bluetooth/ISemBluetoothHidDeviceCallback$Stub;->onGetReport(BBI)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v10

    :sswitch_4
    const-string/jumbo v9, "android.bluetooth.ISemBluetoothHidDeviceCallback"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readByte()B

    move-result v0

    invoke-virtual {p2}, Landroid/os/Parcel;->readByte()B

    move-result v2

    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v8

    invoke-virtual {p0, v0, v2, v8}, Landroid/bluetooth/ISemBluetoothHidDeviceCallback$Stub;->onSetReport(BB[B)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v10

    :sswitch_5
    const-string/jumbo v9, "android.bluetooth.ISemBluetoothHidDeviceCallback"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readByte()B

    move-result v0

    invoke-virtual {p0, v0}, Landroid/bluetooth/ISemBluetoothHidDeviceCallback$Stub;->onSetProtocol(B)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v10

    :sswitch_6
    const-string/jumbo v9, "android.bluetooth.ISemBluetoothHidDeviceCallback"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readByte()B

    move-result v0

    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v5

    invoke-virtual {p0, v0, v5}, Landroid/bluetooth/ISemBluetoothHidDeviceCallback$Stub;->onIntrData(B[B)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v10

    :sswitch_7
    const-string/jumbo v9, "android.bluetooth.ISemBluetoothHidDeviceCallback"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/bluetooth/ISemBluetoothHidDeviceCallback$Stub;->onVirtualCableUnplug()V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v10

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x4 -> :sswitch_4
        0x5 -> :sswitch_5
        0x6 -> :sswitch_6
        0x7 -> :sswitch_7
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
