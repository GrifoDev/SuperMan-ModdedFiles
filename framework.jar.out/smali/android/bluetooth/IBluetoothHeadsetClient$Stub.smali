.class public abstract Landroid/bluetooth/IBluetoothHeadsetClient$Stub;
.super Landroid/os/Binder;
.source "IBluetoothHeadsetClient.java"

# interfaces
.implements Landroid/bluetooth/IBluetoothHeadsetClient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/bluetooth/IBluetoothHeadsetClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/bluetooth/IBluetoothHeadsetClient$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.bluetooth.IBluetoothHeadsetClient"

.field static final TRANSACTION_acceptCall:I = 0xf

.field static final TRANSACTION_acceptIncomingConnect:I = 0x3

.field static final TRANSACTION_connect:I = 0x1

.field static final TRANSACTION_connectAudio:I = 0x1b

.field static final TRANSACTION_dial:I = 0x16

.field static final TRANSACTION_dialMemory:I = 0x17

.field static final TRANSACTION_disconnect:I = 0x2

.field static final TRANSACTION_disconnectAudio:I = 0x1c

.field static final TRANSACTION_enterPrivateMode:I = 0x13

.field static final TRANSACTION_explicitCallTransfer:I = 0x14

.field static final TRANSACTION_getAudioRouteAllowed:I = 0x1e

.field static final TRANSACTION_getAudioState:I = 0x1a

.field static final TRANSACTION_getCLCC:I = 0xc

.field static final TRANSACTION_getConnectedDevices:I = 0x5

.field static final TRANSACTION_getConnectionState:I = 0x7

.field static final TRANSACTION_getCurrentAgEvents:I = 0xe

.field static final TRANSACTION_getCurrentAgFeatures:I = 0x1f

.field static final TRANSACTION_getCurrentCalls:I = 0xd

.field static final TRANSACTION_getDevicesMatchingConnectionStates:I = 0x6

.field static final TRANSACTION_getLastVoiceTagNumber:I = 0x19

.field static final TRANSACTION_getPriority:I = 0x9

.field static final TRANSACTION_holdCall:I = 0x10

.field static final TRANSACTION_redial:I = 0x15

.field static final TRANSACTION_rejectCall:I = 0x11

.field static final TRANSACTION_rejectIncomingConnect:I = 0x4

.field static final TRANSACTION_sendDTMF:I = 0x18

.field static final TRANSACTION_setAudioRouteAllowed:I = 0x1d

.field static final TRANSACTION_setPriority:I = 0x8

.field static final TRANSACTION_startVoiceRecognition:I = 0xa

.field static final TRANSACTION_stopVoiceRecognition:I = 0xb

.field static final TRANSACTION_terminateCall:I = 0x12


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 18
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 20
    const-string/jumbo v0, "android.bluetooth.IBluetoothHeadsetClient"

    invoke-virtual {p0, p0, v0}, Landroid/bluetooth/IBluetoothHeadsetClient$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 18
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/bluetooth/IBluetoothHeadsetClient;
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
    const-string/jumbo v1, "android.bluetooth.IBluetoothHeadsetClient"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 32
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/bluetooth/IBluetoothHeadsetClient;

    if-eqz v1, :cond_1

    .line 33
    check-cast v0, Landroid/bluetooth/IBluetoothHeadsetClient;

    .end local v0    # "iin":Landroid/os/IInterface;
    return-object v0

    .line 35
    .restart local v0    # "iin":Landroid/os/IInterface;
    :cond_1
    new-instance v1, Landroid/bluetooth/IBluetoothHeadsetClient$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/bluetooth/IBluetoothHeadsetClient$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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

    .line 496
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v11

    return v11

    .line 47
    :sswitch_0
    const-string/jumbo v11, "android.bluetooth.IBluetoothHeadsetClient"

    invoke-virtual {p3, v11}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 48
    const/4 v11, 0x1

    return v11

    .line 52
    :sswitch_1
    const-string/jumbo v11, "android.bluetooth.IBluetoothHeadsetClient"

    invoke-virtual {p2, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 54
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v11

    if-eqz v11, :cond_0

    .line 55
    sget-object v11, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v11, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothDevice;

    .line 60
    :goto_0
    invoke-virtual {p0, v0}, Landroid/bluetooth/IBluetoothHeadsetClient$Stub;->connect(Landroid/bluetooth/BluetoothDevice;)Z

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
    const/4 v0, 0x0

    .local v0, "_arg0":Landroid/bluetooth/BluetoothDevice;
    goto :goto_0

    .line 62
    .end local v0    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    .restart local v10    # "_result":Z
    :cond_1
    const/4 v11, 0x0

    goto :goto_1

    .line 67
    .end local v10    # "_result":Z
    :sswitch_2
    const-string/jumbo v11, "android.bluetooth.IBluetoothHeadsetClient"

    invoke-virtual {p2, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 69
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v11

    if-eqz v11, :cond_2

    .line 70
    sget-object v11, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v11, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothDevice;

    .line 75
    :goto_2
    invoke-virtual {p0, v0}, Landroid/bluetooth/IBluetoothHeadsetClient$Stub;->disconnect(Landroid/bluetooth/BluetoothDevice;)Z

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
    const/4 v0, 0x0

    .restart local v0    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    goto :goto_2

    .line 77
    .end local v0    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    .restart local v10    # "_result":Z
    :cond_3
    const/4 v11, 0x0

    goto :goto_3

    .line 82
    .end local v10    # "_result":Z
    :sswitch_3
    const-string/jumbo v11, "android.bluetooth.IBluetoothHeadsetClient"

    invoke-virtual {p2, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 84
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v11

    if-eqz v11, :cond_4

    .line 85
    sget-object v11, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v11, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothDevice;

    .line 90
    :goto_4
    invoke-virtual {p0, v0}, Landroid/bluetooth/IBluetoothHeadsetClient$Stub;->acceptIncomingConnect(Landroid/bluetooth/BluetoothDevice;)Z

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
    const/4 v0, 0x0

    .restart local v0    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    goto :goto_4

    .line 92
    .end local v0    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    .restart local v10    # "_result":Z
    :cond_5
    const/4 v11, 0x0

    goto :goto_5

    .line 97
    .end local v10    # "_result":Z
    :sswitch_4
    const-string/jumbo v11, "android.bluetooth.IBluetoothHeadsetClient"

    invoke-virtual {p2, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 99
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v11

    if-eqz v11, :cond_6

    .line 100
    sget-object v11, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v11, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothDevice;

    .line 105
    :goto_6
    invoke-virtual {p0, v0}, Landroid/bluetooth/IBluetoothHeadsetClient$Stub;->rejectIncomingConnect(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v10

    .line 106
    .restart local v10    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 107
    if-eqz v10, :cond_7

    const/4 v11, 0x1

    :goto_7
    invoke-virtual {p3, v11}, Landroid/os/Parcel;->writeInt(I)V

    .line 108
    const/4 v11, 0x1

    return v11

    .line 103
    .end local v10    # "_result":Z
    :cond_6
    const/4 v0, 0x0

    .restart local v0    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    goto :goto_6

    .line 107
    .end local v0    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    .restart local v10    # "_result":Z
    :cond_7
    const/4 v11, 0x0

    goto :goto_7

    .line 112
    .end local v10    # "_result":Z
    :sswitch_5
    const-string/jumbo v11, "android.bluetooth.IBluetoothHeadsetClient"

    invoke-virtual {p2, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 113
    invoke-virtual {p0}, Landroid/bluetooth/IBluetoothHeadsetClient$Stub;->getConnectedDevices()Ljava/util/List;

    move-result-object v8

    .line 114
    .local v8, "_result":Ljava/util/List;, "Ljava/util/List<Landroid/bluetooth/BluetoothDevice;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 115
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 116
    const/4 v11, 0x1

    return v11

    .line 120
    .end local v8    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/bluetooth/BluetoothDevice;>;"
    :sswitch_6
    const-string/jumbo v11, "android.bluetooth.IBluetoothHeadsetClient"

    invoke-virtual {p2, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 122
    invoke-virtual {p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v2

    .line 123
    .local v2, "_arg0":[I
    invoke-virtual {p0, v2}, Landroid/bluetooth/IBluetoothHeadsetClient$Stub;->getDevicesMatchingConnectionStates([I)Ljava/util/List;

    move-result-object v8

    .line 124
    .restart local v8    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/bluetooth/BluetoothDevice;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 125
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 126
    const/4 v11, 0x1

    return v11

    .line 130
    .end local v2    # "_arg0":[I
    .end local v8    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/bluetooth/BluetoothDevice;>;"
    :sswitch_7
    const-string/jumbo v11, "android.bluetooth.IBluetoothHeadsetClient"

    invoke-virtual {p2, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 132
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v11

    if-eqz v11, :cond_8

    .line 133
    sget-object v11, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v11, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothDevice;

    .line 138
    :goto_8
    invoke-virtual {p0, v0}, Landroid/bluetooth/IBluetoothHeadsetClient$Stub;->getConnectionState(Landroid/bluetooth/BluetoothDevice;)I

    move-result v6

    .line 139
    .local v6, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 140
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 141
    const/4 v11, 0x1

    return v11

    .line 136
    .end local v6    # "_result":I
    :cond_8
    const/4 v0, 0x0

    .restart local v0    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    goto :goto_8

    .line 145
    .end local v0    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    :sswitch_8
    const-string/jumbo v11, "android.bluetooth.IBluetoothHeadsetClient"

    invoke-virtual {p2, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 147
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v11

    if-eqz v11, :cond_9

    .line 148
    sget-object v11, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v11, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothDevice;

    .line 154
    :goto_9
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 155
    .local v4, "_arg1":I
    invoke-virtual {p0, v0, v4}, Landroid/bluetooth/IBluetoothHeadsetClient$Stub;->setPriority(Landroid/bluetooth/BluetoothDevice;I)Z

    move-result v10

    .line 156
    .restart local v10    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 157
    if-eqz v10, :cond_a

    const/4 v11, 0x1

    :goto_a
    invoke-virtual {p3, v11}, Landroid/os/Parcel;->writeInt(I)V

    .line 158
    const/4 v11, 0x1

    return v11

    .line 151
    .end local v4    # "_arg1":I
    .end local v10    # "_result":Z
    :cond_9
    const/4 v0, 0x0

    .restart local v0    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    goto :goto_9

    .line 157
    .end local v0    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    .restart local v4    # "_arg1":I
    .restart local v10    # "_result":Z
    :cond_a
    const/4 v11, 0x0

    goto :goto_a

    .line 162
    .end local v4    # "_arg1":I
    .end local v10    # "_result":Z
    :sswitch_9
    const-string/jumbo v11, "android.bluetooth.IBluetoothHeadsetClient"

    invoke-virtual {p2, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 164
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v11

    if-eqz v11, :cond_b

    .line 165
    sget-object v11, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v11, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothDevice;

    .line 170
    :goto_b
    invoke-virtual {p0, v0}, Landroid/bluetooth/IBluetoothHeadsetClient$Stub;->getPriority(Landroid/bluetooth/BluetoothDevice;)I

    move-result v6

    .line 171
    .restart local v6    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 172
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 173
    const/4 v11, 0x1

    return v11

    .line 168
    .end local v6    # "_result":I
    :cond_b
    const/4 v0, 0x0

    .restart local v0    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    goto :goto_b

    .line 177
    .end local v0    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    :sswitch_a
    const-string/jumbo v11, "android.bluetooth.IBluetoothHeadsetClient"

    invoke-virtual {p2, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 179
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v11

    if-eqz v11, :cond_c

    .line 180
    sget-object v11, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v11, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothDevice;

    .line 185
    :goto_c
    invoke-virtual {p0, v0}, Landroid/bluetooth/IBluetoothHeadsetClient$Stub;->startVoiceRecognition(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v10

    .line 186
    .restart local v10    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 187
    if-eqz v10, :cond_d

    const/4 v11, 0x1

    :goto_d
    invoke-virtual {p3, v11}, Landroid/os/Parcel;->writeInt(I)V

    .line 188
    const/4 v11, 0x1

    return v11

    .line 183
    .end local v10    # "_result":Z
    :cond_c
    const/4 v0, 0x0

    .restart local v0    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    goto :goto_c

    .line 187
    .end local v0    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    .restart local v10    # "_result":Z
    :cond_d
    const/4 v11, 0x0

    goto :goto_d

    .line 192
    .end local v10    # "_result":Z
    :sswitch_b
    const-string/jumbo v11, "android.bluetooth.IBluetoothHeadsetClient"

    invoke-virtual {p2, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 194
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v11

    if-eqz v11, :cond_e

    .line 195
    sget-object v11, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v11, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothDevice;

    .line 200
    :goto_e
    invoke-virtual {p0, v0}, Landroid/bluetooth/IBluetoothHeadsetClient$Stub;->stopVoiceRecognition(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v10

    .line 201
    .restart local v10    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 202
    if-eqz v10, :cond_f

    const/4 v11, 0x1

    :goto_f
    invoke-virtual {p3, v11}, Landroid/os/Parcel;->writeInt(I)V

    .line 203
    const/4 v11, 0x1

    return v11

    .line 198
    .end local v10    # "_result":Z
    :cond_e
    const/4 v0, 0x0

    .restart local v0    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    goto :goto_e

    .line 202
    .end local v0    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    .restart local v10    # "_result":Z
    :cond_f
    const/4 v11, 0x0

    goto :goto_f

    .line 207
    .end local v10    # "_result":Z
    :sswitch_c
    const-string/jumbo v11, "android.bluetooth.IBluetoothHeadsetClient"

    invoke-virtual {p2, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 208
    invoke-virtual {p0}, Landroid/bluetooth/IBluetoothHeadsetClient$Stub;->getCLCC()Z

    move-result v10

    .line 209
    .restart local v10    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 210
    if-eqz v10, :cond_10

    const/4 v11, 0x1

    :goto_10
    invoke-virtual {p3, v11}, Landroid/os/Parcel;->writeInt(I)V

    .line 211
    const/4 v11, 0x1

    return v11

    .line 210
    :cond_10
    const/4 v11, 0x0

    goto :goto_10

    .line 215
    .end local v10    # "_result":Z
    :sswitch_d
    const-string/jumbo v11, "android.bluetooth.IBluetoothHeadsetClient"

    invoke-virtual {p2, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 217
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v11

    if-eqz v11, :cond_11

    .line 218
    sget-object v11, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v11, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothDevice;

    .line 223
    :goto_11
    invoke-virtual {p0, v0}, Landroid/bluetooth/IBluetoothHeadsetClient$Stub;->getCurrentCalls(Landroid/bluetooth/BluetoothDevice;)Ljava/util/List;

    move-result-object v9

    .line 224
    .local v9, "_result":Ljava/util/List;, "Ljava/util/List<Landroid/bluetooth/BluetoothHeadsetClientCall;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 225
    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 226
    const/4 v11, 0x1

    return v11

    .line 221
    .end local v9    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/bluetooth/BluetoothHeadsetClientCall;>;"
    :cond_11
    const/4 v0, 0x0

    .restart local v0    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    goto :goto_11

    .line 230
    .end local v0    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    :sswitch_e
    const-string/jumbo v11, "android.bluetooth.IBluetoothHeadsetClient"

    invoke-virtual {p2, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 232
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v11

    if-eqz v11, :cond_12

    .line 233
    sget-object v11, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v11, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothDevice;

    .line 238
    :goto_12
    invoke-virtual {p0, v0}, Landroid/bluetooth/IBluetoothHeadsetClient$Stub;->getCurrentAgEvents(Landroid/bluetooth/BluetoothDevice;)Landroid/os/Bundle;

    move-result-object v7

    .line 239
    .local v7, "_result":Landroid/os/Bundle;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 240
    if-eqz v7, :cond_13

    .line 241
    const/4 v11, 0x1

    invoke-virtual {p3, v11}, Landroid/os/Parcel;->writeInt(I)V

    .line 242
    const/4 v11, 0x1

    invoke-virtual {v7, p3, v11}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    .line 247
    :goto_13
    const/4 v11, 0x1

    return v11

    .line 236
    .end local v7    # "_result":Landroid/os/Bundle;
    :cond_12
    const/4 v0, 0x0

    .restart local v0    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    goto :goto_12

    .line 245
    .end local v0    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    .restart local v7    # "_result":Landroid/os/Bundle;
    :cond_13
    const/4 v11, 0x0

    invoke-virtual {p3, v11}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_13

    .line 251
    .end local v7    # "_result":Landroid/os/Bundle;
    :sswitch_f
    const-string/jumbo v11, "android.bluetooth.IBluetoothHeadsetClient"

    invoke-virtual {p2, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 253
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v11

    if-eqz v11, :cond_14

    .line 254
    sget-object v11, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v11, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothDevice;

    .line 260
    :goto_14
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 261
    .restart local v4    # "_arg1":I
    invoke-virtual {p0, v0, v4}, Landroid/bluetooth/IBluetoothHeadsetClient$Stub;->acceptCall(Landroid/bluetooth/BluetoothDevice;I)Z

    move-result v10

    .line 262
    .restart local v10    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 263
    if-eqz v10, :cond_15

    const/4 v11, 0x1

    :goto_15
    invoke-virtual {p3, v11}, Landroid/os/Parcel;->writeInt(I)V

    .line 264
    const/4 v11, 0x1

    return v11

    .line 257
    .end local v4    # "_arg1":I
    .end local v10    # "_result":Z
    :cond_14
    const/4 v0, 0x0

    .restart local v0    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    goto :goto_14

    .line 263
    .end local v0    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    .restart local v4    # "_arg1":I
    .restart local v10    # "_result":Z
    :cond_15
    const/4 v11, 0x0

    goto :goto_15

    .line 268
    .end local v4    # "_arg1":I
    .end local v10    # "_result":Z
    :sswitch_10
    const-string/jumbo v11, "android.bluetooth.IBluetoothHeadsetClient"

    invoke-virtual {p2, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 270
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v11

    if-eqz v11, :cond_16

    .line 271
    sget-object v11, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v11, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothDevice;

    .line 276
    :goto_16
    invoke-virtual {p0, v0}, Landroid/bluetooth/IBluetoothHeadsetClient$Stub;->holdCall(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v10

    .line 277
    .restart local v10    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 278
    if-eqz v10, :cond_17

    const/4 v11, 0x1

    :goto_17
    invoke-virtual {p3, v11}, Landroid/os/Parcel;->writeInt(I)V

    .line 279
    const/4 v11, 0x1

    return v11

    .line 274
    .end local v10    # "_result":Z
    :cond_16
    const/4 v0, 0x0

    .restart local v0    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    goto :goto_16

    .line 278
    .end local v0    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    .restart local v10    # "_result":Z
    :cond_17
    const/4 v11, 0x0

    goto :goto_17

    .line 283
    .end local v10    # "_result":Z
    :sswitch_11
    const-string/jumbo v11, "android.bluetooth.IBluetoothHeadsetClient"

    invoke-virtual {p2, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 285
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v11

    if-eqz v11, :cond_18

    .line 286
    sget-object v11, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v11, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothDevice;

    .line 291
    :goto_18
    invoke-virtual {p0, v0}, Landroid/bluetooth/IBluetoothHeadsetClient$Stub;->rejectCall(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v10

    .line 292
    .restart local v10    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 293
    if-eqz v10, :cond_19

    const/4 v11, 0x1

    :goto_19
    invoke-virtual {p3, v11}, Landroid/os/Parcel;->writeInt(I)V

    .line 294
    const/4 v11, 0x1

    return v11

    .line 289
    .end local v10    # "_result":Z
    :cond_18
    const/4 v0, 0x0

    .restart local v0    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    goto :goto_18

    .line 293
    .end local v0    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    .restart local v10    # "_result":Z
    :cond_19
    const/4 v11, 0x0

    goto :goto_19

    .line 298
    .end local v10    # "_result":Z
    :sswitch_12
    const-string/jumbo v11, "android.bluetooth.IBluetoothHeadsetClient"

    invoke-virtual {p2, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 300
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v11

    if-eqz v11, :cond_1a

    .line 301
    sget-object v11, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v11, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothDevice;

    .line 307
    :goto_1a
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 308
    .restart local v4    # "_arg1":I
    invoke-virtual {p0, v0, v4}, Landroid/bluetooth/IBluetoothHeadsetClient$Stub;->terminateCall(Landroid/bluetooth/BluetoothDevice;I)Z

    move-result v10

    .line 309
    .restart local v10    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 310
    if-eqz v10, :cond_1b

    const/4 v11, 0x1

    :goto_1b
    invoke-virtual {p3, v11}, Landroid/os/Parcel;->writeInt(I)V

    .line 311
    const/4 v11, 0x1

    return v11

    .line 304
    .end local v4    # "_arg1":I
    .end local v10    # "_result":Z
    :cond_1a
    const/4 v0, 0x0

    .restart local v0    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    goto :goto_1a

    .line 310
    .end local v0    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    .restart local v4    # "_arg1":I
    .restart local v10    # "_result":Z
    :cond_1b
    const/4 v11, 0x0

    goto :goto_1b

    .line 315
    .end local v4    # "_arg1":I
    .end local v10    # "_result":Z
    :sswitch_13
    const-string/jumbo v11, "android.bluetooth.IBluetoothHeadsetClient"

    invoke-virtual {p2, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 317
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v11

    if-eqz v11, :cond_1c

    .line 318
    sget-object v11, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v11, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothDevice;

    .line 324
    :goto_1c
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 325
    .restart local v4    # "_arg1":I
    invoke-virtual {p0, v0, v4}, Landroid/bluetooth/IBluetoothHeadsetClient$Stub;->enterPrivateMode(Landroid/bluetooth/BluetoothDevice;I)Z

    move-result v10

    .line 326
    .restart local v10    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 327
    if-eqz v10, :cond_1d

    const/4 v11, 0x1

    :goto_1d
    invoke-virtual {p3, v11}, Landroid/os/Parcel;->writeInt(I)V

    .line 328
    const/4 v11, 0x1

    return v11

    .line 321
    .end local v4    # "_arg1":I
    .end local v10    # "_result":Z
    :cond_1c
    const/4 v0, 0x0

    .restart local v0    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    goto :goto_1c

    .line 327
    .end local v0    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    .restart local v4    # "_arg1":I
    .restart local v10    # "_result":Z
    :cond_1d
    const/4 v11, 0x0

    goto :goto_1d

    .line 332
    .end local v4    # "_arg1":I
    .end local v10    # "_result":Z
    :sswitch_14
    const-string/jumbo v11, "android.bluetooth.IBluetoothHeadsetClient"

    invoke-virtual {p2, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 334
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v11

    if-eqz v11, :cond_1e

    .line 335
    sget-object v11, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v11, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothDevice;

    .line 340
    :goto_1e
    invoke-virtual {p0, v0}, Landroid/bluetooth/IBluetoothHeadsetClient$Stub;->explicitCallTransfer(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v10

    .line 341
    .restart local v10    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 342
    if-eqz v10, :cond_1f

    const/4 v11, 0x1

    :goto_1f
    invoke-virtual {p3, v11}, Landroid/os/Parcel;->writeInt(I)V

    .line 343
    const/4 v11, 0x1

    return v11

    .line 338
    .end local v10    # "_result":Z
    :cond_1e
    const/4 v0, 0x0

    .restart local v0    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    goto :goto_1e

    .line 342
    .end local v0    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    .restart local v10    # "_result":Z
    :cond_1f
    const/4 v11, 0x0

    goto :goto_1f

    .line 347
    .end local v10    # "_result":Z
    :sswitch_15
    const-string/jumbo v11, "android.bluetooth.IBluetoothHeadsetClient"

    invoke-virtual {p2, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 349
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v11

    if-eqz v11, :cond_20

    .line 350
    sget-object v11, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v11, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothDevice;

    .line 355
    :goto_20
    invoke-virtual {p0, v0}, Landroid/bluetooth/IBluetoothHeadsetClient$Stub;->redial(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v10

    .line 356
    .restart local v10    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 357
    if-eqz v10, :cond_21

    const/4 v11, 0x1

    :goto_21
    invoke-virtual {p3, v11}, Landroid/os/Parcel;->writeInt(I)V

    .line 358
    const/4 v11, 0x1

    return v11

    .line 353
    .end local v10    # "_result":Z
    :cond_20
    const/4 v0, 0x0

    .restart local v0    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    goto :goto_20

    .line 357
    .end local v0    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    .restart local v10    # "_result":Z
    :cond_21
    const/4 v11, 0x0

    goto :goto_21

    .line 362
    .end local v10    # "_result":Z
    :sswitch_16
    const-string/jumbo v11, "android.bluetooth.IBluetoothHeadsetClient"

    invoke-virtual {p2, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 364
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v11

    if-eqz v11, :cond_22

    .line 365
    sget-object v11, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v11, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothDevice;

    .line 371
    :goto_22
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 372
    .local v5, "_arg1":Ljava/lang/String;
    invoke-virtual {p0, v0, v5}, Landroid/bluetooth/IBluetoothHeadsetClient$Stub;->dial(Landroid/bluetooth/BluetoothDevice;Ljava/lang/String;)Z

    move-result v10

    .line 373
    .restart local v10    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 374
    if-eqz v10, :cond_23

    const/4 v11, 0x1

    :goto_23
    invoke-virtual {p3, v11}, Landroid/os/Parcel;->writeInt(I)V

    .line 375
    const/4 v11, 0x1

    return v11

    .line 368
    .end local v5    # "_arg1":Ljava/lang/String;
    .end local v10    # "_result":Z
    :cond_22
    const/4 v0, 0x0

    .restart local v0    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    goto :goto_22

    .line 374
    .end local v0    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    .restart local v5    # "_arg1":Ljava/lang/String;
    .restart local v10    # "_result":Z
    :cond_23
    const/4 v11, 0x0

    goto :goto_23

    .line 379
    .end local v5    # "_arg1":Ljava/lang/String;
    .end local v10    # "_result":Z
    :sswitch_17
    const-string/jumbo v11, "android.bluetooth.IBluetoothHeadsetClient"

    invoke-virtual {p2, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 381
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v11

    if-eqz v11, :cond_24

    .line 382
    sget-object v11, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v11, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothDevice;

    .line 388
    :goto_24
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 389
    .restart local v4    # "_arg1":I
    invoke-virtual {p0, v0, v4}, Landroid/bluetooth/IBluetoothHeadsetClient$Stub;->dialMemory(Landroid/bluetooth/BluetoothDevice;I)Z

    move-result v10

    .line 390
    .restart local v10    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 391
    if-eqz v10, :cond_25

    const/4 v11, 0x1

    :goto_25
    invoke-virtual {p3, v11}, Landroid/os/Parcel;->writeInt(I)V

    .line 392
    const/4 v11, 0x1

    return v11

    .line 385
    .end local v4    # "_arg1":I
    .end local v10    # "_result":Z
    :cond_24
    const/4 v0, 0x0

    .restart local v0    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    goto :goto_24

    .line 391
    .end local v0    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    .restart local v4    # "_arg1":I
    .restart local v10    # "_result":Z
    :cond_25
    const/4 v11, 0x0

    goto :goto_25

    .line 396
    .end local v4    # "_arg1":I
    .end local v10    # "_result":Z
    :sswitch_18
    const-string/jumbo v11, "android.bluetooth.IBluetoothHeadsetClient"

    invoke-virtual {p2, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 398
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v11

    if-eqz v11, :cond_26

    .line 399
    sget-object v11, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v11, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothDevice;

    .line 405
    :goto_26
    invoke-virtual {p2}, Landroid/os/Parcel;->readByte()B

    move-result v3

    .line 406
    .local v3, "_arg1":B
    invoke-virtual {p0, v0, v3}, Landroid/bluetooth/IBluetoothHeadsetClient$Stub;->sendDTMF(Landroid/bluetooth/BluetoothDevice;B)Z

    move-result v10

    .line 407
    .restart local v10    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 408
    if-eqz v10, :cond_27

    const/4 v11, 0x1

    :goto_27
    invoke-virtual {p3, v11}, Landroid/os/Parcel;->writeInt(I)V

    .line 409
    const/4 v11, 0x1

    return v11

    .line 402
    .end local v3    # "_arg1":B
    .end local v10    # "_result":Z
    :cond_26
    const/4 v0, 0x0

    .restart local v0    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    goto :goto_26

    .line 408
    .end local v0    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    .restart local v3    # "_arg1":B
    .restart local v10    # "_result":Z
    :cond_27
    const/4 v11, 0x0

    goto :goto_27

    .line 413
    .end local v3    # "_arg1":B
    .end local v10    # "_result":Z
    :sswitch_19
    const-string/jumbo v11, "android.bluetooth.IBluetoothHeadsetClient"

    invoke-virtual {p2, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 415
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v11

    if-eqz v11, :cond_28

    .line 416
    sget-object v11, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v11, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothDevice;

    .line 421
    :goto_28
    invoke-virtual {p0, v0}, Landroid/bluetooth/IBluetoothHeadsetClient$Stub;->getLastVoiceTagNumber(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v10

    .line 422
    .restart local v10    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 423
    if-eqz v10, :cond_29

    const/4 v11, 0x1

    :goto_29
    invoke-virtual {p3, v11}, Landroid/os/Parcel;->writeInt(I)V

    .line 424
    const/4 v11, 0x1

    return v11

    .line 419
    .end local v10    # "_result":Z
    :cond_28
    const/4 v0, 0x0

    .restart local v0    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    goto :goto_28

    .line 423
    .end local v0    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    .restart local v10    # "_result":Z
    :cond_29
    const/4 v11, 0x0

    goto :goto_29

    .line 428
    .end local v10    # "_result":Z
    :sswitch_1a
    const-string/jumbo v11, "android.bluetooth.IBluetoothHeadsetClient"

    invoke-virtual {p2, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 430
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v11

    if-eqz v11, :cond_2a

    .line 431
    sget-object v11, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v11, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothDevice;

    .line 436
    :goto_2a
    invoke-virtual {p0, v0}, Landroid/bluetooth/IBluetoothHeadsetClient$Stub;->getAudioState(Landroid/bluetooth/BluetoothDevice;)I

    move-result v6

    .line 437
    .restart local v6    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 438
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 439
    const/4 v11, 0x1

    return v11

    .line 434
    .end local v6    # "_result":I
    :cond_2a
    const/4 v0, 0x0

    .restart local v0    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    goto :goto_2a

    .line 443
    .end local v0    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    :sswitch_1b
    const-string/jumbo v11, "android.bluetooth.IBluetoothHeadsetClient"

    invoke-virtual {p2, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 444
    invoke-virtual {p0}, Landroid/bluetooth/IBluetoothHeadsetClient$Stub;->connectAudio()Z

    move-result v10

    .line 445
    .restart local v10    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 446
    if-eqz v10, :cond_2b

    const/4 v11, 0x1

    :goto_2b
    invoke-virtual {p3, v11}, Landroid/os/Parcel;->writeInt(I)V

    .line 447
    const/4 v11, 0x1

    return v11

    .line 446
    :cond_2b
    const/4 v11, 0x0

    goto :goto_2b

    .line 451
    .end local v10    # "_result":Z
    :sswitch_1c
    const-string/jumbo v11, "android.bluetooth.IBluetoothHeadsetClient"

    invoke-virtual {p2, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 452
    invoke-virtual {p0}, Landroid/bluetooth/IBluetoothHeadsetClient$Stub;->disconnectAudio()Z

    move-result v10

    .line 453
    .restart local v10    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 454
    if-eqz v10, :cond_2c

    const/4 v11, 0x1

    :goto_2c
    invoke-virtual {p3, v11}, Landroid/os/Parcel;->writeInt(I)V

    .line 455
    const/4 v11, 0x1

    return v11

    .line 454
    :cond_2c
    const/4 v11, 0x0

    goto :goto_2c

    .line 459
    .end local v10    # "_result":Z
    :sswitch_1d
    const-string/jumbo v11, "android.bluetooth.IBluetoothHeadsetClient"

    invoke-virtual {p2, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 461
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v11

    if-eqz v11, :cond_2d

    const/4 v1, 0x1

    .line 462
    .local v1, "_arg0":Z
    :goto_2d
    invoke-virtual {p0, v1}, Landroid/bluetooth/IBluetoothHeadsetClient$Stub;->setAudioRouteAllowed(Z)V

    .line 463
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 464
    const/4 v11, 0x1

    return v11

    .line 461
    .end local v1    # "_arg0":Z
    :cond_2d
    const/4 v1, 0x0

    goto :goto_2d

    .line 468
    :sswitch_1e
    const-string/jumbo v11, "android.bluetooth.IBluetoothHeadsetClient"

    invoke-virtual {p2, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 469
    invoke-virtual {p0}, Landroid/bluetooth/IBluetoothHeadsetClient$Stub;->getAudioRouteAllowed()Z

    move-result v10

    .line 470
    .restart local v10    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 471
    if-eqz v10, :cond_2e

    const/4 v11, 0x1

    :goto_2e
    invoke-virtual {p3, v11}, Landroid/os/Parcel;->writeInt(I)V

    .line 472
    const/4 v11, 0x1

    return v11

    .line 471
    :cond_2e
    const/4 v11, 0x0

    goto :goto_2e

    .line 476
    .end local v10    # "_result":Z
    :sswitch_1f
    const-string/jumbo v11, "android.bluetooth.IBluetoothHeadsetClient"

    invoke-virtual {p2, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 478
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v11

    if-eqz v11, :cond_2f

    .line 479
    sget-object v11, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v11, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothDevice;

    .line 484
    :goto_2f
    invoke-virtual {p0, v0}, Landroid/bluetooth/IBluetoothHeadsetClient$Stub;->getCurrentAgFeatures(Landroid/bluetooth/BluetoothDevice;)Landroid/os/Bundle;

    move-result-object v7

    .line 485
    .restart local v7    # "_result":Landroid/os/Bundle;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 486
    if-eqz v7, :cond_30

    .line 487
    const/4 v11, 0x1

    invoke-virtual {p3, v11}, Landroid/os/Parcel;->writeInt(I)V

    .line 488
    const/4 v11, 0x1

    invoke-virtual {v7, p3, v11}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    .line 493
    :goto_30
    const/4 v11, 0x1

    return v11

    .line 482
    .end local v7    # "_result":Landroid/os/Bundle;
    :cond_2f
    const/4 v0, 0x0

    .restart local v0    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    goto :goto_2f

    .line 491
    .end local v0    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    .restart local v7    # "_result":Landroid/os/Bundle;
    :cond_30
    const/4 v11, 0x0

    invoke-virtual {p3, v11}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_30

    .line 43
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
        0x13 -> :sswitch_13
        0x14 -> :sswitch_14
        0x15 -> :sswitch_15
        0x16 -> :sswitch_16
        0x17 -> :sswitch_17
        0x18 -> :sswitch_18
        0x19 -> :sswitch_19
        0x1a -> :sswitch_1a
        0x1b -> :sswitch_1b
        0x1c -> :sswitch_1c
        0x1d -> :sswitch_1d
        0x1e -> :sswitch_1e
        0x1f -> :sswitch_1f
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
