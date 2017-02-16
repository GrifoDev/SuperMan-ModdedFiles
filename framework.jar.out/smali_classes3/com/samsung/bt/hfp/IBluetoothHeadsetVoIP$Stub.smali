.class public abstract Lcom/samsung/bt/hfp/IBluetoothHeadsetVoIP$Stub;
.super Landroid/os/Binder;
.source "IBluetoothHeadsetVoIP.java"

# interfaces
.implements Lcom/samsung/bt/hfp/IBluetoothHeadsetVoIP;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/bt/hfp/IBluetoothHeadsetVoIP;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/bt/hfp/IBluetoothHeadsetVoIP$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.samsung.bt.hfp.IBluetoothHeadsetVoIP"

.field static final TRANSACTION_answerCall:I = 0x1

.field static final TRANSACTION_cdmaSetSecondCallState:I = 0xd

.field static final TRANSACTION_cdmaSwapSecondCallState:I = 0xc

.field static final TRANSACTION_getDeviceId:I = 0xa

.field static final TRANSACTION_getNetworkOperator:I = 0x5

.field static final TRANSACTION_getSubscriberId:I = 0x9

.field static final TRANSACTION_getSubscriberNumber:I = 0x6

.field static final TRANSACTION_handleVoipCallStateChange:I = 0xe

.field static final TRANSACTION_hangupCall:I = 0x2

.field static final TRANSACTION_isExistVoipCall:I = 0xf

.field static final TRANSACTION_isVoipHolding:I = 0x10

.field static final TRANSACTION_listCurrentCalls:I = 0x7

.field static final TRANSACTION_processChld:I = 0x4

.field static final TRANSACTION_queryPhoneState:I = 0x8

.field static final TRANSACTION_sendDtmf:I = 0x3

.field static final TRANSACTION_updateBtHandsfreeAfterRadioTechnologyChange:I = 0xb


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 19
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 21
    const-string/jumbo v0, "com.samsung.bt.hfp.IBluetoothHeadsetVoIP"

    invoke-virtual {p0, p0, v0}, Landroid/os/Binder;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 19
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/samsung/bt/hfp/IBluetoothHeadsetVoIP;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .prologue
    const/4 v1, 0x0

    .line 29
    if-nez p0, :cond_0

    .line 30
    return-object v1

    .line 32
    :cond_0
    const-string/jumbo v1, "com.samsung.bt.hfp.IBluetoothHeadsetVoIP"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 33
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/samsung/bt/hfp/IBluetoothHeadsetVoIP;

    if-eqz v1, :cond_1

    .line 34
    check-cast v0, Lcom/samsung/bt/hfp/IBluetoothHeadsetVoIP;

    .end local v0    # "iin":Landroid/os/IInterface;
    return-object v0

    .line 36
    .restart local v0    # "iin":Landroid/os/IInterface;
    :cond_1
    new-instance v1, Lcom/samsung/bt/hfp/IBluetoothHeadsetVoIP$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/samsung/bt/hfp/IBluetoothHeadsetVoIP$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    .line 40
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 7
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
    const/4 v4, 0x0

    const/4 v5, 0x1

    .line 44
    sparse-switch p1, :sswitch_data_0

    .line 182
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v4

    return v4

    .line 48
    :sswitch_0
    const-string/jumbo v4, "com.samsung.bt.hfp.IBluetoothHeadsetVoIP"

    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 49
    return v5

    .line 53
    :sswitch_1
    const-string/jumbo v6, "com.samsung.bt.hfp.IBluetoothHeadsetVoIP"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 54
    invoke-virtual {p0}, Lcom/samsung/bt/hfp/IBluetoothHeadsetVoIP$Stub;->answerCall()Z

    move-result v3

    .line 55
    .local v3, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 56
    if-eqz v3, :cond_0

    move v4, v5

    :cond_0
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 57
    return v5

    .line 61
    .end local v3    # "_result":Z
    :sswitch_2
    const-string/jumbo v6, "com.samsung.bt.hfp.IBluetoothHeadsetVoIP"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 62
    invoke-virtual {p0}, Lcom/samsung/bt/hfp/IBluetoothHeadsetVoIP$Stub;->hangupCall()Z

    move-result v3

    .line 63
    .restart local v3    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 64
    if-eqz v3, :cond_1

    move v4, v5

    :cond_1
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 65
    return v5

    .line 69
    .end local v3    # "_result":Z
    :sswitch_3
    const-string/jumbo v6, "com.samsung.bt.hfp.IBluetoothHeadsetVoIP"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 71
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 72
    .local v0, "_arg0":I
    invoke-virtual {p0, v0}, Lcom/samsung/bt/hfp/IBluetoothHeadsetVoIP$Stub;->sendDtmf(I)Z

    move-result v3

    .line 73
    .restart local v3    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 74
    if-eqz v3, :cond_2

    move v4, v5

    :cond_2
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 75
    return v5

    .line 79
    .end local v0    # "_arg0":I
    .end local v3    # "_result":Z
    :sswitch_4
    const-string/jumbo v6, "com.samsung.bt.hfp.IBluetoothHeadsetVoIP"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 81
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 82
    .restart local v0    # "_arg0":I
    invoke-virtual {p0, v0}, Lcom/samsung/bt/hfp/IBluetoothHeadsetVoIP$Stub;->processChld(I)Z

    move-result v3

    .line 83
    .restart local v3    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 84
    if-eqz v3, :cond_3

    move v4, v5

    :cond_3
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 85
    return v5

    .line 89
    .end local v0    # "_arg0":I
    .end local v3    # "_result":Z
    :sswitch_5
    const-string/jumbo v4, "com.samsung.bt.hfp.IBluetoothHeadsetVoIP"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 90
    invoke-virtual {p0}, Lcom/samsung/bt/hfp/IBluetoothHeadsetVoIP$Stub;->getNetworkOperator()Ljava/lang/String;

    move-result-object v2

    .line 91
    .local v2, "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 92
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 93
    return v5

    .line 97
    .end local v2    # "_result":Ljava/lang/String;
    :sswitch_6
    const-string/jumbo v4, "com.samsung.bt.hfp.IBluetoothHeadsetVoIP"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 98
    invoke-virtual {p0}, Lcom/samsung/bt/hfp/IBluetoothHeadsetVoIP$Stub;->getSubscriberNumber()Ljava/lang/String;

    move-result-object v2

    .line 99
    .restart local v2    # "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 100
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 101
    return v5

    .line 105
    .end local v2    # "_result":Ljava/lang/String;
    :sswitch_7
    const-string/jumbo v6, "com.samsung.bt.hfp.IBluetoothHeadsetVoIP"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 106
    invoke-virtual {p0}, Lcom/samsung/bt/hfp/IBluetoothHeadsetVoIP$Stub;->listCurrentCalls()Z

    move-result v3

    .line 107
    .restart local v3    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 108
    if-eqz v3, :cond_4

    move v4, v5

    :cond_4
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 109
    return v5

    .line 113
    .end local v3    # "_result":Z
    :sswitch_8
    const-string/jumbo v6, "com.samsung.bt.hfp.IBluetoothHeadsetVoIP"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 114
    invoke-virtual {p0}, Lcom/samsung/bt/hfp/IBluetoothHeadsetVoIP$Stub;->queryPhoneState()Z

    move-result v3

    .line 115
    .restart local v3    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 116
    if-eqz v3, :cond_5

    move v4, v5

    :cond_5
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 117
    return v5

    .line 121
    .end local v3    # "_result":Z
    :sswitch_9
    const-string/jumbo v4, "com.samsung.bt.hfp.IBluetoothHeadsetVoIP"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 122
    invoke-virtual {p0}, Lcom/samsung/bt/hfp/IBluetoothHeadsetVoIP$Stub;->getSubscriberId()Ljava/lang/String;

    move-result-object v2

    .line 123
    .restart local v2    # "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 124
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 125
    return v5

    .line 129
    .end local v2    # "_result":Ljava/lang/String;
    :sswitch_a
    const-string/jumbo v4, "com.samsung.bt.hfp.IBluetoothHeadsetVoIP"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 130
    invoke-virtual {p0}, Lcom/samsung/bt/hfp/IBluetoothHeadsetVoIP$Stub;->getDeviceId()Ljava/lang/String;

    move-result-object v2

    .line 131
    .restart local v2    # "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 132
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 133
    return v5

    .line 137
    .end local v2    # "_result":Ljava/lang/String;
    :sswitch_b
    const-string/jumbo v4, "com.samsung.bt.hfp.IBluetoothHeadsetVoIP"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 138
    invoke-virtual {p0}, Lcom/samsung/bt/hfp/IBluetoothHeadsetVoIP$Stub;->updateBtHandsfreeAfterRadioTechnologyChange()V

    .line 139
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 140
    return v5

    .line 144
    :sswitch_c
    const-string/jumbo v4, "com.samsung.bt.hfp.IBluetoothHeadsetVoIP"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 145
    invoke-virtual {p0}, Lcom/samsung/bt/hfp/IBluetoothHeadsetVoIP$Stub;->cdmaSwapSecondCallState()V

    .line 146
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 147
    return v5

    .line 151
    :sswitch_d
    const-string/jumbo v6, "com.samsung.bt.hfp.IBluetoothHeadsetVoIP"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 153
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_6

    move v1, v5

    .line 154
    .local v1, "_arg0":Z
    :goto_0
    invoke-virtual {p0, v1}, Lcom/samsung/bt/hfp/IBluetoothHeadsetVoIP$Stub;->cdmaSetSecondCallState(Z)V

    .line 155
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 156
    return v5

    .end local v1    # "_arg0":Z
    :cond_6
    move v1, v4

    .line 153
    goto :goto_0

    .line 160
    :sswitch_e
    const-string/jumbo v4, "com.samsung.bt.hfp.IBluetoothHeadsetVoIP"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 161
    invoke-virtual {p0}, Lcom/samsung/bt/hfp/IBluetoothHeadsetVoIP$Stub;->handleVoipCallStateChange()V

    .line 162
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 163
    return v5

    .line 167
    :sswitch_f
    const-string/jumbo v6, "com.samsung.bt.hfp.IBluetoothHeadsetVoIP"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 168
    invoke-virtual {p0}, Lcom/samsung/bt/hfp/IBluetoothHeadsetVoIP$Stub;->isExistVoipCall()Z

    move-result v3

    .line 169
    .restart local v3    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 170
    if-eqz v3, :cond_7

    move v4, v5

    :cond_7
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 171
    return v5

    .line 175
    .end local v3    # "_result":Z
    :sswitch_10
    const-string/jumbo v6, "com.samsung.bt.hfp.IBluetoothHeadsetVoIP"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 176
    invoke-virtual {p0}, Lcom/samsung/bt/hfp/IBluetoothHeadsetVoIP$Stub;->isVoipHolding()Z

    move-result v3

    .line 177
    .restart local v3    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 178
    if-eqz v3, :cond_8

    move v4, v5

    :cond_8
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 179
    return v5

    .line 44
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
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
