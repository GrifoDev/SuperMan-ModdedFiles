.class public abstract Landroid/bluetooth/IBluetoothA2dp$Stub;
.super Landroid/os/Binder;
.source "IBluetoothA2dp.java"

# interfaces
.implements Landroid/bluetooth/IBluetoothA2dp;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/bluetooth/IBluetoothA2dp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/bluetooth/IBluetoothA2dp$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.bluetooth.IBluetoothA2dp"

.field static final TRANSACTION_adjustAvrcpAbsoluteVolume:I = 0xe

.field static final TRANSACTION_commandForMonitoring:I = 0xc

.field static final TRANSACTION_connect:I = 0x1

.field static final TRANSACTION_disconnect:I = 0x2

.field static final TRANSACTION_getActiveStreamDevice:I = 0x4

.field static final TRANSACTION_getConnectedDevices:I = 0x7

.field static final TRANSACTION_getConnectionState:I = 0x9

.field static final TRANSACTION_getDevicesMatchingConnectionStates:I = 0x8

.field static final TRANSACTION_getPriority:I = 0xb

.field static final TRANSACTION_isA2dpPlaying:I = 0x10

.field static final TRANSACTION_isAvrcpAbsoluteVolumeSupported:I = 0xd

.field static final TRANSACTION_isDualPlayEnabled:I = 0x6

.field static final TRANSACTION_registerA2dpDevCallBack:I = 0x11

.field static final TRANSACTION_selectstream:I = 0x3

.field static final TRANSACTION_setAvrcpAbsoluteVolume:I = 0xf

.field static final TRANSACTION_setDualPlayMode:I = 0x5

.field static final TRANSACTION_setPriority:I = 0xa

.field static final TRANSACTION_unregisterA2dpDevCallBack:I = 0x12


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 18
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 20
    const-string/jumbo v0, "android.bluetooth.IBluetoothA2dp"

    invoke-virtual {p0, p0, v0}, Landroid/bluetooth/IBluetoothA2dp$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 18
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/bluetooth/IBluetoothA2dp;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .prologue
    const/4 v1, 0x0

    .line 28
    if-nez p0, :cond_0

    .line 29
    return-object v1

    .line 31
    :cond_0
    const-string/jumbo v1, "android.bluetooth.IBluetoothA2dp"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 32
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/bluetooth/IBluetoothA2dp;

    if-eqz v1, :cond_1

    .line 33
    check-cast v0, Landroid/bluetooth/IBluetoothA2dp;

    .end local v0    # "iin":Landroid/os/IInterface;
    return-object v0

    .line 35
    .restart local v0    # "iin":Landroid/os/IInterface;
    :cond_1
    new-instance v1, Landroid/bluetooth/IBluetoothA2dp$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/bluetooth/IBluetoothA2dp$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    .line 39
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 12
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
    .line 43
    sparse-switch p1, :sswitch_data_0

    .line 260
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v11

    return v11

    .line 47
    :sswitch_0
    const-string/jumbo v11, "android.bluetooth.IBluetoothA2dp"

    invoke-virtual {p3, v11}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 48
    const/4 v11, 0x1

    return v11

    .line 52
    :sswitch_1
    const-string/jumbo v11, "android.bluetooth.IBluetoothA2dp"

    invoke-virtual {p2, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 54
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v11

    if-eqz v11, :cond_0

    .line 55
    sget-object v11, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v11, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BluetoothDevice;

    .line 60
    :goto_0
    invoke-virtual {p0, v1}, Landroid/bluetooth/IBluetoothA2dp$Stub;->connect(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v10

    .line 61
    .local v10, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 62
    if-eqz v10, :cond_1

    const/4 v11, 0x1

    :goto_1
    invoke-virtual {p3, v11}, Landroid/os/Parcel;->writeInt(I)V

    .line 63
    const/4 v11, 0x1

    return v11

    .line 58
    .end local v10    # "_result":Z
    :cond_0
    const/4 v1, 0x0

    .local v1, "_arg0":Landroid/bluetooth/BluetoothDevice;
    goto :goto_0

    .line 62
    .end local v1    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    .restart local v10    # "_result":Z
    :cond_1
    const/4 v11, 0x0

    goto :goto_1

    .line 67
    .end local v10    # "_result":Z
    :sswitch_2
    const-string/jumbo v11, "android.bluetooth.IBluetoothA2dp"

    invoke-virtual {p2, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 69
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v11

    if-eqz v11, :cond_2

    .line 70
    sget-object v11, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v11, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BluetoothDevice;

    .line 75
    :goto_2
    invoke-virtual {p0, v1}, Landroid/bluetooth/IBluetoothA2dp$Stub;->disconnect(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v10

    .line 76
    .restart local v10    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 77
    if-eqz v10, :cond_3

    const/4 v11, 0x1

    :goto_3
    invoke-virtual {p3, v11}, Landroid/os/Parcel;->writeInt(I)V

    .line 78
    const/4 v11, 0x1

    return v11

    .line 73
    .end local v10    # "_result":Z
    :cond_2
    const/4 v1, 0x0

    .restart local v1    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    goto :goto_2

    .line 77
    .end local v1    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    .restart local v10    # "_result":Z
    :cond_3
    const/4 v11, 0x0

    goto :goto_3

    .line 82
    .end local v10    # "_result":Z
    :sswitch_3
    const-string/jumbo v11, "android.bluetooth.IBluetoothA2dp"

    invoke-virtual {p2, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 84
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v11

    if-eqz v11, :cond_4

    .line 85
    sget-object v11, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v11, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BluetoothDevice;

    .line 90
    :goto_4
    invoke-virtual {p0, v1}, Landroid/bluetooth/IBluetoothA2dp$Stub;->selectstream(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v10

    .line 91
    .restart local v10    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 92
    if-eqz v10, :cond_5

    const/4 v11, 0x1

    :goto_5
    invoke-virtual {p3, v11}, Landroid/os/Parcel;->writeInt(I)V

    .line 93
    const/4 v11, 0x1

    return v11

    .line 88
    .end local v10    # "_result":Z
    :cond_4
    const/4 v1, 0x0

    .restart local v1    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    goto :goto_4

    .line 92
    .end local v1    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    .restart local v10    # "_result":Z
    :cond_5
    const/4 v11, 0x0

    goto :goto_5

    .line 97
    .end local v10    # "_result":Z
    :sswitch_4
    const-string/jumbo v11, "android.bluetooth.IBluetoothA2dp"

    invoke-virtual {p2, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 98
    invoke-virtual {p0}, Landroid/bluetooth/IBluetoothA2dp$Stub;->getActiveStreamDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v8

    .line 99
    .local v8, "_result":Landroid/bluetooth/BluetoothDevice;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 100
    if-eqz v8, :cond_6

    .line 101
    const/4 v11, 0x1

    invoke-virtual {p3, v11}, Landroid/os/Parcel;->writeInt(I)V

    .line 102
    const/4 v11, 0x1

    invoke-virtual {v8, p3, v11}, Landroid/bluetooth/BluetoothDevice;->writeToParcel(Landroid/os/Parcel;I)V

    .line 107
    :goto_6
    const/4 v11, 0x1

    return v11

    .line 105
    :cond_6
    const/4 v11, 0x0

    invoke-virtual {p3, v11}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_6

    .line 111
    .end local v8    # "_result":Landroid/bluetooth/BluetoothDevice;
    :sswitch_5
    const-string/jumbo v11, "android.bluetooth.IBluetoothA2dp"

    invoke-virtual {p2, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 113
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v11

    if-eqz v11, :cond_7

    const/4 v4, 0x1

    .line 114
    .local v4, "_arg0":Z
    :goto_7
    invoke-virtual {p0, v4}, Landroid/bluetooth/IBluetoothA2dp$Stub;->setDualPlayMode(Z)Z

    move-result v10

    .line 115
    .restart local v10    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 116
    if-eqz v10, :cond_8

    const/4 v11, 0x1

    :goto_8
    invoke-virtual {p3, v11}, Landroid/os/Parcel;->writeInt(I)V

    .line 117
    const/4 v11, 0x1

    return v11

    .line 113
    .end local v4    # "_arg0":Z
    .end local v10    # "_result":Z
    :cond_7
    const/4 v4, 0x0

    goto :goto_7

    .line 116
    .restart local v4    # "_arg0":Z
    .restart local v10    # "_result":Z
    :cond_8
    const/4 v11, 0x0

    goto :goto_8

    .line 121
    .end local v4    # "_arg0":Z
    .end local v10    # "_result":Z
    :sswitch_6
    const-string/jumbo v11, "android.bluetooth.IBluetoothA2dp"

    invoke-virtual {p2, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 122
    invoke-virtual {p0}, Landroid/bluetooth/IBluetoothA2dp$Stub;->isDualPlayEnabled()Z

    move-result v10

    .line 123
    .restart local v10    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 124
    if-eqz v10, :cond_9

    const/4 v11, 0x1

    :goto_9
    invoke-virtual {p3, v11}, Landroid/os/Parcel;->writeInt(I)V

    .line 125
    const/4 v11, 0x1

    return v11

    .line 124
    :cond_9
    const/4 v11, 0x0

    goto :goto_9

    .line 129
    .end local v10    # "_result":Z
    :sswitch_7
    const-string/jumbo v11, "android.bluetooth.IBluetoothA2dp"

    invoke-virtual {p2, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 130
    invoke-virtual {p0}, Landroid/bluetooth/IBluetoothA2dp$Stub;->getConnectedDevices()Ljava/util/List;

    move-result-object v9

    .line 131
    .local v9, "_result":Ljava/util/List;, "Ljava/util/List<Landroid/bluetooth/BluetoothDevice;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 132
    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 133
    const/4 v11, 0x1

    return v11

    .line 137
    .end local v9    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/bluetooth/BluetoothDevice;>;"
    :sswitch_8
    const-string/jumbo v11, "android.bluetooth.IBluetoothA2dp"

    invoke-virtual {p2, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 139
    invoke-virtual {p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v5

    .line 140
    .local v5, "_arg0":[I
    invoke-virtual {p0, v5}, Landroid/bluetooth/IBluetoothA2dp$Stub;->getDevicesMatchingConnectionStates([I)Ljava/util/List;

    move-result-object v9

    .line 141
    .restart local v9    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/bluetooth/BluetoothDevice;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 142
    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 143
    const/4 v11, 0x1

    return v11

    .line 147
    .end local v5    # "_arg0":[I
    .end local v9    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/bluetooth/BluetoothDevice;>;"
    :sswitch_9
    const-string/jumbo v11, "android.bluetooth.IBluetoothA2dp"

    invoke-virtual {p2, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 149
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v11

    if-eqz v11, :cond_a

    .line 150
    sget-object v11, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v11, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BluetoothDevice;

    .line 155
    :goto_a
    invoke-virtual {p0, v1}, Landroid/bluetooth/IBluetoothA2dp$Stub;->getConnectionState(Landroid/bluetooth/BluetoothDevice;)I

    move-result v7

    .line 156
    .local v7, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 157
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    .line 158
    const/4 v11, 0x1

    return v11

    .line 153
    .end local v7    # "_result":I
    :cond_a
    const/4 v1, 0x0

    .restart local v1    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    goto :goto_a

    .line 162
    .end local v1    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    :sswitch_a
    const-string/jumbo v11, "android.bluetooth.IBluetoothA2dp"

    invoke-virtual {p2, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 164
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v11

    if-eqz v11, :cond_b

    .line 165
    sget-object v11, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v11, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BluetoothDevice;

    .line 171
    :goto_b
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 172
    .local v6, "_arg1":I
    invoke-virtual {p0, v1, v6}, Landroid/bluetooth/IBluetoothA2dp$Stub;->setPriority(Landroid/bluetooth/BluetoothDevice;I)Z

    move-result v10

    .line 173
    .restart local v10    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 174
    if-eqz v10, :cond_c

    const/4 v11, 0x1

    :goto_c
    invoke-virtual {p3, v11}, Landroid/os/Parcel;->writeInt(I)V

    .line 175
    const/4 v11, 0x1

    return v11

    .line 168
    .end local v6    # "_arg1":I
    .end local v10    # "_result":Z
    :cond_b
    const/4 v1, 0x0

    .restart local v1    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    goto :goto_b

    .line 174
    .end local v1    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    .restart local v6    # "_arg1":I
    .restart local v10    # "_result":Z
    :cond_c
    const/4 v11, 0x0

    goto :goto_c

    .line 179
    .end local v6    # "_arg1":I
    .end local v10    # "_result":Z
    :sswitch_b
    const-string/jumbo v11, "android.bluetooth.IBluetoothA2dp"

    invoke-virtual {p2, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 181
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v11

    if-eqz v11, :cond_d

    .line 182
    sget-object v11, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v11, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BluetoothDevice;

    .line 187
    :goto_d
    invoke-virtual {p0, v1}, Landroid/bluetooth/IBluetoothA2dp$Stub;->getPriority(Landroid/bluetooth/BluetoothDevice;)I

    move-result v7

    .line 188
    .restart local v7    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 189
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    .line 190
    const/4 v11, 0x1

    return v11

    .line 185
    .end local v7    # "_result":I
    :cond_d
    const/4 v1, 0x0

    .restart local v1    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    goto :goto_d

    .line 194
    .end local v1    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    :sswitch_c
    const-string/jumbo v11, "android.bluetooth.IBluetoothA2dp"

    invoke-virtual {p2, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 196
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 197
    .local v3, "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v3}, Landroid/bluetooth/IBluetoothA2dp$Stub;->commandForMonitoring(Ljava/lang/String;)Z

    move-result v10

    .line 198
    .restart local v10    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 199
    if-eqz v10, :cond_e

    const/4 v11, 0x1

    :goto_e
    invoke-virtual {p3, v11}, Landroid/os/Parcel;->writeInt(I)V

    .line 200
    const/4 v11, 0x1

    return v11

    .line 199
    :cond_e
    const/4 v11, 0x0

    goto :goto_e

    .line 204
    .end local v3    # "_arg0":Ljava/lang/String;
    .end local v10    # "_result":Z
    :sswitch_d
    const-string/jumbo v11, "android.bluetooth.IBluetoothA2dp"

    invoke-virtual {p2, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 205
    invoke-virtual {p0}, Landroid/bluetooth/IBluetoothA2dp$Stub;->isAvrcpAbsoluteVolumeSupported()Z

    move-result v10

    .line 206
    .restart local v10    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 207
    if-eqz v10, :cond_f

    const/4 v11, 0x1

    :goto_f
    invoke-virtual {p3, v11}, Landroid/os/Parcel;->writeInt(I)V

    .line 208
    const/4 v11, 0x1

    return v11

    .line 207
    :cond_f
    const/4 v11, 0x0

    goto :goto_f

    .line 212
    .end local v10    # "_result":Z
    :sswitch_e
    const-string/jumbo v11, "android.bluetooth.IBluetoothA2dp"

    invoke-virtual {p2, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 214
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 215
    .local v0, "_arg0":I
    invoke-virtual {p0, v0}, Landroid/bluetooth/IBluetoothA2dp$Stub;->adjustAvrcpAbsoluteVolume(I)V

    .line 216
    const/4 v11, 0x1

    return v11

    .line 220
    .end local v0    # "_arg0":I
    :sswitch_f
    const-string/jumbo v11, "android.bluetooth.IBluetoothA2dp"

    invoke-virtual {p2, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 222
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 223
    .restart local v0    # "_arg0":I
    invoke-virtual {p0, v0}, Landroid/bluetooth/IBluetoothA2dp$Stub;->setAvrcpAbsoluteVolume(I)V

    .line 224
    const/4 v11, 0x1

    return v11

    .line 228
    .end local v0    # "_arg0":I
    :sswitch_10
    const-string/jumbo v11, "android.bluetooth.IBluetoothA2dp"

    invoke-virtual {p2, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 230
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v11

    if-eqz v11, :cond_10

    .line 231
    sget-object v11, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v11, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BluetoothDevice;

    .line 236
    :goto_10
    invoke-virtual {p0, v1}, Landroid/bluetooth/IBluetoothA2dp$Stub;->isA2dpPlaying(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v10

    .line 237
    .restart local v10    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 238
    if-eqz v10, :cond_11

    const/4 v11, 0x1

    :goto_11
    invoke-virtual {p3, v11}, Landroid/os/Parcel;->writeInt(I)V

    .line 239
    const/4 v11, 0x1

    return v11

    .line 234
    .end local v10    # "_result":Z
    :cond_10
    const/4 v1, 0x0

    .restart local v1    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    goto :goto_10

    .line 238
    .end local v1    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    .restart local v10    # "_result":Z
    :cond_11
    const/4 v11, 0x0

    goto :goto_11

    .line 243
    .end local v10    # "_result":Z
    :sswitch_11
    const-string/jumbo v11, "android.bluetooth.IBluetoothA2dp"

    invoke-virtual {p2, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 245
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v11

    invoke-static {v11}, Landroid/bluetooth/IBluetoothA2dpDevCallBack$Stub;->asInterface(Landroid/os/IBinder;)Landroid/bluetooth/IBluetoothA2dpDevCallBack;

    move-result-object v2

    .line 246
    .local v2, "_arg0":Landroid/bluetooth/IBluetoothA2dpDevCallBack;
    invoke-virtual {p0, v2}, Landroid/bluetooth/IBluetoothA2dp$Stub;->registerA2dpDevCallBack(Landroid/bluetooth/IBluetoothA2dpDevCallBack;)Z

    move-result v10

    .line 247
    .restart local v10    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 248
    if-eqz v10, :cond_12

    const/4 v11, 0x1

    :goto_12
    invoke-virtual {p3, v11}, Landroid/os/Parcel;->writeInt(I)V

    .line 249
    const/4 v11, 0x1

    return v11

    .line 248
    :cond_12
    const/4 v11, 0x0

    goto :goto_12

    .line 253
    .end local v2    # "_arg0":Landroid/bluetooth/IBluetoothA2dpDevCallBack;
    .end local v10    # "_result":Z
    :sswitch_12
    const-string/jumbo v11, "android.bluetooth.IBluetoothA2dp"

    invoke-virtual {p2, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 254
    invoke-virtual {p0}, Landroid/bluetooth/IBluetoothA2dp$Stub;->unregisterA2dpDevCallBack()Z

    move-result v10

    .line 255
    .restart local v10    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 256
    if-eqz v10, :cond_13

    const/4 v11, 0x1

    :goto_13
    invoke-virtual {p3, v11}, Landroid/os/Parcel;->writeInt(I)V

    .line 257
    const/4 v11, 0x1

    return v11

    .line 256
    :cond_13
    const/4 v11, 0x0

    goto :goto_13

    .line 43
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x4 -> :sswitch_4
        0x5 -> :sswitch_5
        0x6 -> :sswitch_6
        0x7 -> :sswitch_7
        0x8 -> :sswitch_8
        0x9 -> :sswitch_9
        0xa -> :sswitch_a
        0xb -> :sswitch_b
        0xc -> :sswitch_c
        0xd -> :sswitch_d
        0xe -> :sswitch_e
        0xf -> :sswitch_f
        0x10 -> :sswitch_10
        0x11 -> :sswitch_11
        0x12 -> :sswitch_12
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
