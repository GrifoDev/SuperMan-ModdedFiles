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

    .prologue
    .line 14
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 16
    const-string/jumbo v0, "android.bluetooth.ISemBluetoothHidDeviceCallback"

    invoke-virtual {p0, p0, v0}, Landroid/os/Binder;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 14
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/bluetooth/ISemBluetoothHidDeviceCallback;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .prologue
    const/4 v1, 0x0

    .line 24
    if-nez p0, :cond_0

    .line 25
    return-object v1

    .line 27
    :cond_0
    const-string/jumbo v1, "android.bluetooth.ISemBluetoothHidDeviceCallback"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 28
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/bluetooth/ISemBluetoothHidDeviceCallback;

    if-eqz v1, :cond_1

    .line 29
    check-cast v0, Landroid/bluetooth/ISemBluetoothHidDeviceCallback;

    .end local v0    # "iin":Landroid/os/IInterface;
    return-object v0

    .line 31
    .restart local v0    # "iin":Landroid/os/IInterface;
    :cond_1
    new-instance v1, Landroid/bluetooth/ISemBluetoothHidDeviceCallback$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/bluetooth/ISemBluetoothHidDeviceCallback$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    .line 35
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 11
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x0

    const/4 v9, 0x1

    .line 39
    sparse-switch p1, :sswitch_data_0

    .line 139
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v9

    return v9

    .line 43
    :sswitch_0
    const-string/jumbo v10, "android.bluetooth.ISemBluetoothHidDeviceCallback"

    invoke-virtual {p3, v10}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 44
    return v9

    .line 48
    :sswitch_1
    const-string/jumbo v10, "android.bluetooth.ISemBluetoothHidDeviceCallback"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 50
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    if-eqz v10, :cond_1

    .line 51
    sget-object v10, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v10, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BluetoothDevice;

    .line 57
    :goto_0
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    if-eqz v10, :cond_2

    .line 58
    sget-object v10, Landroid/bluetooth/SemBluetoothHidDeviceAppConfiguration;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v10, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/bluetooth/SemBluetoothHidDeviceAppConfiguration;

    .line 64
    :goto_1
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    if-eqz v10, :cond_0

    move v7, v9

    .line 65
    .local v7, "_arg2":Z
    :cond_0
    invoke-virtual {p0, v1, v4, v7}, Landroid/bluetooth/ISemBluetoothHidDeviceCallback$Stub;->onAppStatusChanged(Landroid/bluetooth/BluetoothDevice;Landroid/bluetooth/SemBluetoothHidDeviceAppConfiguration;Z)V

    .line 66
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 67
    return v9

    .line 54
    .end local v7    # "_arg2":Z
    :cond_1
    const/4 v1, 0x0

    .local v1, "_arg0":Landroid/bluetooth/BluetoothDevice;
    goto :goto_0

    .line 61
    .end local v1    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    :cond_2
    const/4 v4, 0x0

    .local v4, "_arg1":Landroid/bluetooth/SemBluetoothHidDeviceAppConfiguration;
    goto :goto_1

    .line 71
    .end local v4    # "_arg1":Landroid/bluetooth/SemBluetoothHidDeviceAppConfiguration;
    :sswitch_2
    const-string/jumbo v10, "android.bluetooth.ISemBluetoothHidDeviceCallback"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 73
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    if-eqz v10, :cond_3

    .line 74
    sget-object v10, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v10, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BluetoothDevice;

    .line 80
    :goto_2
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 81
    .local v3, "_arg1":I
    invoke-virtual {p0, v1, v3}, Landroid/bluetooth/ISemBluetoothHidDeviceCallback$Stub;->onConnectionStateChanged(Landroid/bluetooth/BluetoothDevice;I)V

    .line 82
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 83
    return v9

    .line 77
    .end local v3    # "_arg1":I
    :cond_3
    const/4 v1, 0x0

    .restart local v1    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    goto :goto_2

    .line 87
    .end local v1    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    :sswitch_3
    const-string/jumbo v10, "android.bluetooth.ISemBluetoothHidDeviceCallback"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 89
    invoke-virtual {p2}, Landroid/os/Parcel;->readByte()B

    move-result v0

    .line 91
    .local v0, "_arg0":B
    invoke-virtual {p2}, Landroid/os/Parcel;->readByte()B

    move-result v2

    .line 93
    .local v2, "_arg1":B
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 94
    .local v6, "_arg2":I
    invoke-virtual {p0, v0, v2, v6}, Landroid/bluetooth/ISemBluetoothHidDeviceCallback$Stub;->onGetReport(BBI)V

    .line 95
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 96
    return v9

    .line 100
    .end local v0    # "_arg0":B
    .end local v2    # "_arg1":B
    .end local v6    # "_arg2":I
    :sswitch_4
    const-string/jumbo v10, "android.bluetooth.ISemBluetoothHidDeviceCallback"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 102
    invoke-virtual {p2}, Landroid/os/Parcel;->readByte()B

    move-result v0

    .line 104
    .restart local v0    # "_arg0":B
    invoke-virtual {p2}, Landroid/os/Parcel;->readByte()B

    move-result v2

    .line 106
    .restart local v2    # "_arg1":B
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v8

    .line 107
    .local v8, "_arg2":[B
    invoke-virtual {p0, v0, v2, v8}, Landroid/bluetooth/ISemBluetoothHidDeviceCallback$Stub;->onSetReport(BB[B)V

    .line 108
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 109
    return v9

    .line 113
    .end local v0    # "_arg0":B
    .end local v2    # "_arg1":B
    .end local v8    # "_arg2":[B
    :sswitch_5
    const-string/jumbo v10, "android.bluetooth.ISemBluetoothHidDeviceCallback"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 115
    invoke-virtual {p2}, Landroid/os/Parcel;->readByte()B

    move-result v0

    .line 116
    .restart local v0    # "_arg0":B
    invoke-virtual {p0, v0}, Landroid/bluetooth/ISemBluetoothHidDeviceCallback$Stub;->onSetProtocol(B)V

    .line 117
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 118
    return v9

    .line 122
    .end local v0    # "_arg0":B
    :sswitch_6
    const-string/jumbo v10, "android.bluetooth.ISemBluetoothHidDeviceCallback"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 124
    invoke-virtual {p2}, Landroid/os/Parcel;->readByte()B

    move-result v0

    .line 126
    .restart local v0    # "_arg0":B
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v5

    .line 127
    .local v5, "_arg1":[B
    invoke-virtual {p0, v0, v5}, Landroid/bluetooth/ISemBluetoothHidDeviceCallback$Stub;->onIntrData(B[B)V

    .line 128
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 129
    return v9

    .line 133
    .end local v0    # "_arg0":B
    .end local v5    # "_arg1":[B
    :sswitch_7
    const-string/jumbo v10, "android.bluetooth.ISemBluetoothHidDeviceCallback"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 134
    invoke-virtual {p0}, Landroid/bluetooth/ISemBluetoothHidDeviceCallback$Stub;->onVirtualCableUnplug()V

    .line 135
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 136
    return v9

    .line 39
    nop

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
