.class public abstract Landroid/nfc/INfcAdapter$Stub;
.super Landroid/os/Binder;
.source "INfcAdapter.java"

# interfaces
.implements Landroid/nfc/INfcAdapter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/nfc/INfcAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/nfc/INfcAdapter$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.nfc.INfcAdapter"

.field static final TRANSACTION_NetworkResetAtt:I = 0x39

.field static final TRANSACTION_SetWcControl:I = 0x34

.field static final TRANSACTION_SetWirelessChargeEnabled:I = 0x35

.field static final TRANSACTION_StartLedCover:I = 0x32

.field static final TRANSACTION_StopLedCover:I = 0x33

.field static final TRANSACTION_TransceiveLedCover:I = 0x31

.field static final TRANSACTION_addAsyncFunctionCallback:I = 0x1a

.field static final TRANSACTION_addNfcAsyncFunctionCallback:I = 0x1b

.field static final TRANSACTION_addNfcUnlockHandler:I = 0x23

.field static final TRANSACTION_changeDiscoveryTech:I = 0x18

.field static final TRANSACTION_changeRoutingTable:I = 0x19

.field static final TRANSACTION_disable:I = 0x6

.field static final TRANSACTION_disableFilterCondition:I = 0x22

.field static final TRANSACTION_disableNdefPush:I = 0x9

.field static final TRANSACTION_dispatch:I = 0x15

.field static final TRANSACTION_enable:I = 0x7

.field static final TRANSACTION_enableDisableSeTestMode:I = 0x26

.field static final TRANSACTION_enableFilterCondition:I = 0x21

.field static final TRANSACTION_enableNdefPush:I = 0x8

.field static final TRANSACTION_getCoverVersion:I = 0x36

.field static final TRANSACTION_getDefaultRoutingDestination:I = 0x28

.field static final TRANSACTION_getIdm:I = 0x38

.field static final TRANSACTION_getListenMode:I = 0x30

.field static final TRANSACTION_getNfcAdapterExtrasInterface:I = 0x4

.field static final TRANSACTION_getNfcCardEmulationInterface:I = 0x2

.field static final TRANSACTION_getNfcFCardEmulationInterface:I = 0x3

.field static final TRANSACTION_getNfcTagInterface:I = 0x1

.field static final TRANSACTION_getPreferredSimSlot:I = 0x3b

.field static final TRANSACTION_getRwP2pState:I = 0x1d

.field static final TRANSACTION_getSeSupportedTech:I = 0x37

.field static final TRANSACTION_getState:I = 0x5

.field static final TRANSACTION_ignore:I = 0x14

.field static final TRANSACTION_invokeBeam:I = 0x12

.field static final TRANSACTION_invokeBeamInternal:I = 0x13

.field static final TRANSACTION_isNdefPushEnabled:I = 0xa

.field static final TRANSACTION_isSimLocked:I = 0xd

.field static final TRANSACTION_isTrustedPkg:I = 0x2b

.field static final TRANSACTION_loadBanner:I = 0x3c

.field static final TRANSACTION_pausePolling:I = 0xb

.field static final TRANSACTION_prepareSwitchedOffState:I = 0x1f

.field static final TRANSACTION_readEdc:I = 0x3d

.field static final TRANSACTION_readerDisable:I = 0x29

.field static final TRANSACTION_readerEnable:I = 0x2a

.field static final TRANSACTION_removeNfcUnlockHandler:I = 0x24

.field static final TRANSACTION_resumePolling:I = 0xc

.field static final TRANSACTION_setAppCallback:I = 0x10

.field static final TRANSACTION_setDefaultRoutingDestination:I = 0x27

.field static final TRANSACTION_setFilterList:I = 0x20

.field static final TRANSACTION_setForegroundDispatch:I = 0xf

.field static final TRANSACTION_setLedCoverCallback:I = 0x11

.field static final TRANSACTION_setListenMode:I = 0x2f

.field static final TRANSACTION_setP2pModes:I = 0x17

.field static final TRANSACTION_setPreferredSimSlot:I = 0x3a

.field static final TRANSACTION_setReaderMode:I = 0x16

.field static final TRANSACTION_setRwP2pMode:I = 0x1e

.field static final TRANSACTION_setSimLocked:I = 0xe

.field static final TRANSACTION_startApc:I = 0x3f

.field static final TRANSACTION_startCoverAuth:I = 0x2c

.field static final TRANSACTION_stopCoverAuth:I = 0x2e

.field static final TRANSACTION_transceiveAuthData:I = 0x2d

.field static final TRANSACTION_updateRfFile:I = 0x1c

.field static final TRANSACTION_verifyNfcPermission:I = 0x25

.field static final TRANSACTION_writeEdc:I = 0x3e


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 16
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 18
    const-string/jumbo v0, "android.nfc.INfcAdapter"

    invoke-virtual {p0, p0, v0}, Landroid/nfc/INfcAdapter$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 16
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/nfc/INfcAdapter;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .prologue
    const/4 v1, 0x0

    .line 26
    if-nez p0, :cond_0

    .line 27
    return-object v1

    .line 29
    :cond_0
    const-string/jumbo v1, "android.nfc.INfcAdapter"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 30
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/nfc/INfcAdapter;

    if-eqz v1, :cond_1

    .line 31
    check-cast v0, Landroid/nfc/INfcAdapter;

    .end local v0    # "iin":Landroid/os/IInterface;
    return-object v0

    .line 33
    .restart local v0    # "iin":Landroid/os/IInterface;
    :cond_1
    new-instance v1, Landroid/nfc/INfcAdapter$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/nfc/INfcAdapter$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    .line 37
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 40
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
    .line 41
    sparse-switch p1, :sswitch_data_0

    .line 663
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v4

    return v4

    .line 45
    :sswitch_0
    const-string/jumbo v4, "android.nfc.INfcAdapter"

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 46
    const/4 v4, 0x1

    return v4

    .line 50
    :sswitch_1
    const-string/jumbo v4, "android.nfc.INfcAdapter"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 51
    invoke-virtual/range {p0 .. p0}, Landroid/nfc/INfcAdapter$Stub;->getNfcTagInterface()Landroid/nfc/INfcTag;

    move-result-object v36

    .line 52
    .local v36, "_result":Landroid/nfc/INfcTag;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 53
    if-eqz v36, :cond_0

    invoke-interface/range {v36 .. v36}, Landroid/nfc/INfcTag;->asBinder()Landroid/os/IBinder;

    move-result-object v4

    :goto_0
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 54
    const/4 v4, 0x1

    return v4

    .line 53
    :cond_0
    const/4 v4, 0x0

    goto :goto_0

    .line 58
    .end local v36    # "_result":Landroid/nfc/INfcTag;
    :sswitch_2
    const-string/jumbo v4, "android.nfc.INfcAdapter"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 59
    invoke-virtual/range {p0 .. p0}, Landroid/nfc/INfcAdapter$Stub;->getNfcCardEmulationInterface()Landroid/nfc/INfcCardEmulation;

    move-result-object v34

    .line 60
    .local v34, "_result":Landroid/nfc/INfcCardEmulation;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 61
    if-eqz v34, :cond_1

    invoke-interface/range {v34 .. v34}, Landroid/nfc/INfcCardEmulation;->asBinder()Landroid/os/IBinder;

    move-result-object v4

    :goto_1
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 62
    const/4 v4, 0x1

    return v4

    .line 61
    :cond_1
    const/4 v4, 0x0

    goto :goto_1

    .line 66
    .end local v34    # "_result":Landroid/nfc/INfcCardEmulation;
    :sswitch_3
    const-string/jumbo v4, "android.nfc.INfcAdapter"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 67
    invoke-virtual/range {p0 .. p0}, Landroid/nfc/INfcAdapter$Stub;->getNfcFCardEmulationInterface()Landroid/nfc/INfcFCardEmulation;

    move-result-object v35

    .line 68
    .local v35, "_result":Landroid/nfc/INfcFCardEmulation;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 69
    if-eqz v35, :cond_2

    invoke-interface/range {v35 .. v35}, Landroid/nfc/INfcFCardEmulation;->asBinder()Landroid/os/IBinder;

    move-result-object v4

    :goto_2
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 70
    const/4 v4, 0x1

    return v4

    .line 69
    :cond_2
    const/4 v4, 0x0

    goto :goto_2

    .line 74
    .end local v35    # "_result":Landroid/nfc/INfcFCardEmulation;
    :sswitch_4
    const-string/jumbo v4, "android.nfc.INfcAdapter"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 76
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v19

    .line 77
    .local v19, "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/nfc/INfcAdapter$Stub;->getNfcAdapterExtrasInterface(Ljava/lang/String;)Landroid/nfc/INfcAdapterExtras;

    move-result-object v33

    .line 78
    .local v33, "_result":Landroid/nfc/INfcAdapterExtras;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 79
    if-eqz v33, :cond_3

    invoke-interface/range {v33 .. v33}, Landroid/nfc/INfcAdapterExtras;->asBinder()Landroid/os/IBinder;

    move-result-object v4

    :goto_3
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 80
    const/4 v4, 0x1

    return v4

    .line 79
    :cond_3
    const/4 v4, 0x0

    goto :goto_3

    .line 84
    .end local v19    # "_arg0":Ljava/lang/String;
    .end local v33    # "_result":Landroid/nfc/INfcAdapterExtras;
    :sswitch_5
    const-string/jumbo v4, "android.nfc.INfcAdapter"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 85
    invoke-virtual/range {p0 .. p0}, Landroid/nfc/INfcAdapter$Stub;->getState()I

    move-result v31

    .line 86
    .local v31, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 87
    move-object/from16 v0, p3

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 88
    const/4 v4, 0x1

    return v4

    .line 92
    .end local v31    # "_result":I
    :sswitch_6
    const-string/jumbo v4, "android.nfc.INfcAdapter"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 94
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_4

    const/16 v20, 0x1

    .line 95
    .local v20, "_arg0":Z
    :goto_4
    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/nfc/INfcAdapter$Stub;->disable(Z)Z

    move-result v38

    .line 96
    .local v38, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 97
    if-eqz v38, :cond_5

    const/4 v4, 0x1

    :goto_5
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 98
    const/4 v4, 0x1

    return v4

    .line 94
    .end local v20    # "_arg0":Z
    .end local v38    # "_result":Z
    :cond_4
    const/16 v20, 0x0

    goto :goto_4

    .line 97
    .restart local v20    # "_arg0":Z
    .restart local v38    # "_result":Z
    :cond_5
    const/4 v4, 0x0

    goto :goto_5

    .line 102
    .end local v20    # "_arg0":Z
    .end local v38    # "_result":Z
    :sswitch_7
    const-string/jumbo v4, "android.nfc.INfcAdapter"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 103
    invoke-virtual/range {p0 .. p0}, Landroid/nfc/INfcAdapter$Stub;->enable()Z

    move-result v38

    .line 104
    .restart local v38    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 105
    if-eqz v38, :cond_6

    const/4 v4, 0x1

    :goto_6
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 106
    const/4 v4, 0x1

    return v4

    .line 105
    :cond_6
    const/4 v4, 0x0

    goto :goto_6

    .line 110
    .end local v38    # "_result":Z
    :sswitch_8
    const-string/jumbo v4, "android.nfc.INfcAdapter"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 111
    invoke-virtual/range {p0 .. p0}, Landroid/nfc/INfcAdapter$Stub;->enableNdefPush()Z

    move-result v38

    .line 112
    .restart local v38    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 113
    if-eqz v38, :cond_7

    const/4 v4, 0x1

    :goto_7
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 114
    const/4 v4, 0x1

    return v4

    .line 113
    :cond_7
    const/4 v4, 0x0

    goto :goto_7

    .line 118
    .end local v38    # "_result":Z
    :sswitch_9
    const-string/jumbo v4, "android.nfc.INfcAdapter"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 119
    invoke-virtual/range {p0 .. p0}, Landroid/nfc/INfcAdapter$Stub;->disableNdefPush()Z

    move-result v38

    .line 120
    .restart local v38    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 121
    if-eqz v38, :cond_8

    const/4 v4, 0x1

    :goto_8
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 122
    const/4 v4, 0x1

    return v4

    .line 121
    :cond_8
    const/4 v4, 0x0

    goto :goto_8

    .line 126
    .end local v38    # "_result":Z
    :sswitch_a
    const-string/jumbo v4, "android.nfc.INfcAdapter"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 127
    invoke-virtual/range {p0 .. p0}, Landroid/nfc/INfcAdapter$Stub;->isNdefPushEnabled()Z

    move-result v38

    .line 128
    .restart local v38    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 129
    if-eqz v38, :cond_9

    const/4 v4, 0x1

    :goto_9
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 130
    const/4 v4, 0x1

    return v4

    .line 129
    :cond_9
    const/4 v4, 0x0

    goto :goto_9

    .line 134
    .end local v38    # "_result":Z
    :sswitch_b
    const-string/jumbo v4, "android.nfc.INfcAdapter"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 136
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v11

    .line 137
    .local v11, "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Landroid/nfc/INfcAdapter$Stub;->pausePolling(I)V

    .line 138
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 139
    const/4 v4, 0x1

    return v4

    .line 143
    .end local v11    # "_arg0":I
    :sswitch_c
    const-string/jumbo v4, "android.nfc.INfcAdapter"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 144
    invoke-virtual/range {p0 .. p0}, Landroid/nfc/INfcAdapter$Stub;->resumePolling()V

    .line 145
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 146
    const/4 v4, 0x1

    return v4

    .line 150
    :sswitch_d
    const-string/jumbo v4, "android.nfc.INfcAdapter"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 151
    invoke-virtual/range {p0 .. p0}, Landroid/nfc/INfcAdapter$Stub;->isSimLocked()Z

    move-result v38

    .line 152
    .restart local v38    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 153
    if-eqz v38, :cond_a

    const/4 v4, 0x1

    :goto_a
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 154
    const/4 v4, 0x1

    return v4

    .line 153
    :cond_a
    const/4 v4, 0x0

    goto :goto_a

    .line 158
    .end local v38    # "_result":Z
    :sswitch_e
    const-string/jumbo v4, "android.nfc.INfcAdapter"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 160
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_b

    const/16 v20, 0x1

    .line 161
    .restart local v20    # "_arg0":Z
    :goto_b
    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/nfc/INfcAdapter$Stub;->setSimLocked(Z)V

    .line 162
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 163
    const/4 v4, 0x1

    return v4

    .line 160
    .end local v20    # "_arg0":Z
    :cond_b
    const/16 v20, 0x0

    goto :goto_b

    .line 167
    :sswitch_f
    const-string/jumbo v4, "android.nfc.INfcAdapter"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 169
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_c

    .line 170
    sget-object v4, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/app/PendingIntent;

    .line 176
    :goto_c
    sget-object v4, Landroid/content/IntentFilter;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v26

    check-cast v26, [Landroid/content/IntentFilter;

    .line 178
    .local v26, "_arg1":[Landroid/content/IntentFilter;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_d

    .line 179
    sget-object v4, Landroid/nfc/TechListParcel;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v29

    check-cast v29, Landroid/nfc/TechListParcel;

    .line 184
    :goto_d
    move-object/from16 v0, p0

    move-object/from16 v1, v26

    move-object/from16 v2, v29

    invoke-virtual {v0, v12, v1, v2}, Landroid/nfc/INfcAdapter$Stub;->setForegroundDispatch(Landroid/app/PendingIntent;[Landroid/content/IntentFilter;Landroid/nfc/TechListParcel;)V

    .line 185
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 186
    const/4 v4, 0x1

    return v4

    .line 173
    .end local v26    # "_arg1":[Landroid/content/IntentFilter;
    :cond_c
    const/4 v12, 0x0

    .local v12, "_arg0":Landroid/app/PendingIntent;
    goto :goto_c

    .line 182
    .end local v12    # "_arg0":Landroid/app/PendingIntent;
    .restart local v26    # "_arg1":[Landroid/content/IntentFilter;
    :cond_d
    const/16 v29, 0x0

    .local v29, "_arg2":Landroid/nfc/TechListParcel;
    goto :goto_d

    .line 190
    .end local v26    # "_arg1":[Landroid/content/IntentFilter;
    .end local v29    # "_arg2":Landroid/nfc/TechListParcel;
    :sswitch_10
    const-string/jumbo v4, "android.nfc.INfcAdapter"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 192
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Landroid/nfc/IAppCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/nfc/IAppCallback;

    move-result-object v14

    .line 193
    .local v14, "_arg0":Landroid/nfc/IAppCallback;
    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Landroid/nfc/INfcAdapter$Stub;->setAppCallback(Landroid/nfc/IAppCallback;)V

    .line 194
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 195
    const/4 v4, 0x1

    return v4

    .line 199
    .end local v14    # "_arg0":Landroid/nfc/IAppCallback;
    :sswitch_11
    const-string/jumbo v4, "android.nfc.INfcAdapter"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 201
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Landroid/nfc/IAppCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/nfc/IAppCallback;

    move-result-object v14

    .line 202
    .restart local v14    # "_arg0":Landroid/nfc/IAppCallback;
    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Landroid/nfc/INfcAdapter$Stub;->setLedCoverCallback(Landroid/nfc/IAppCallback;)V

    .line 203
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 204
    const/4 v4, 0x1

    return v4

    .line 208
    .end local v14    # "_arg0":Landroid/nfc/IAppCallback;
    :sswitch_12
    const-string/jumbo v4, "android.nfc.INfcAdapter"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 209
    invoke-virtual/range {p0 .. p0}, Landroid/nfc/INfcAdapter$Stub;->invokeBeam()V

    .line 210
    const/4 v4, 0x1

    return v4

    .line 214
    :sswitch_13
    const-string/jumbo v4, "android.nfc.INfcAdapter"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 216
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_e

    .line 217
    sget-object v4, Landroid/nfc/BeamShareData;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/nfc/BeamShareData;

    .line 222
    :goto_e
    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Landroid/nfc/INfcAdapter$Stub;->invokeBeamInternal(Landroid/nfc/BeamShareData;)V

    .line 223
    const/4 v4, 0x1

    return v4

    .line 220
    :cond_e
    const/4 v13, 0x0

    .local v13, "_arg0":Landroid/nfc/BeamShareData;
    goto :goto_e

    .line 227
    .end local v13    # "_arg0":Landroid/nfc/BeamShareData;
    :sswitch_14
    const-string/jumbo v4, "android.nfc.INfcAdapter"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 229
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v11

    .line 231
    .restart local v11    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 233
    .local v6, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Landroid/nfc/ITagRemovedCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/nfc/ITagRemovedCallback;

    move-result-object v28

    .line 234
    .local v28, "_arg2":Landroid/nfc/ITagRemovedCallback;
    move-object/from16 v0, p0

    move-object/from16 v1, v28

    invoke-virtual {v0, v11, v6, v1}, Landroid/nfc/INfcAdapter$Stub;->ignore(IILandroid/nfc/ITagRemovedCallback;)Z

    move-result v38

    .line 235
    .restart local v38    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 236
    if-eqz v38, :cond_f

    const/4 v4, 0x1

    :goto_f
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 237
    const/4 v4, 0x1

    return v4

    .line 236
    :cond_f
    const/4 v4, 0x0

    goto :goto_f

    .line 241
    .end local v6    # "_arg1":I
    .end local v11    # "_arg0":I
    .end local v28    # "_arg2":Landroid/nfc/ITagRemovedCallback;
    .end local v38    # "_result":Z
    :sswitch_15
    const-string/jumbo v4, "android.nfc.INfcAdapter"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 243
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_10

    .line 244
    sget-object v4, Landroid/nfc/Tag;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Landroid/nfc/Tag;

    .line 249
    :goto_10
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/nfc/INfcAdapter$Stub;->dispatch(Landroid/nfc/Tag;)V

    .line 250
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 251
    const/4 v4, 0x1

    return v4

    .line 247
    :cond_10
    const/16 v18, 0x0

    .local v18, "_arg0":Landroid/nfc/Tag;
    goto :goto_10

    .line 255
    .end local v18    # "_arg0":Landroid/nfc/Tag;
    :sswitch_16
    const-string/jumbo v4, "android.nfc.INfcAdapter"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 257
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v5

    .line 259
    .local v5, "_arg0":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Landroid/nfc/IAppCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/nfc/IAppCallback;

    move-result-object v22

    .line 261
    .local v22, "_arg1":Landroid/nfc/IAppCallback;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v27

    .line 263
    .local v27, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_11

    .line 264
    sget-object v4, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v30

    check-cast v30, Landroid/os/Bundle;

    .line 269
    :goto_11
    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move/from16 v2, v27

    move-object/from16 v3, v30

    invoke-virtual {v0, v5, v1, v2, v3}, Landroid/nfc/INfcAdapter$Stub;->setReaderMode(Landroid/os/IBinder;Landroid/nfc/IAppCallback;ILandroid/os/Bundle;)V

    .line 270
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 271
    const/4 v4, 0x1

    return v4

    .line 267
    :cond_11
    const/16 v30, 0x0

    .local v30, "_arg3":Landroid/os/Bundle;
    goto :goto_11

    .line 275
    .end local v5    # "_arg0":Landroid/os/IBinder;
    .end local v22    # "_arg1":Landroid/nfc/IAppCallback;
    .end local v27    # "_arg2":I
    .end local v30    # "_arg3":Landroid/os/Bundle;
    :sswitch_17
    const-string/jumbo v4, "android.nfc.INfcAdapter"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 277
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v11

    .line 279
    .restart local v11    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 280
    .restart local v6    # "_arg1":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v11, v6}, Landroid/nfc/INfcAdapter$Stub;->setP2pModes(II)V

    .line 281
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 282
    const/4 v4, 0x1

    return v4

    .line 286
    .end local v6    # "_arg1":I
    .end local v11    # "_arg0":I
    :sswitch_18
    const-string/jumbo v4, "android.nfc.INfcAdapter"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 288
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v5

    .line 290
    .restart local v5    # "_arg0":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 292
    .restart local v6    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v27

    .line 293
    .restart local v27    # "_arg2":I
    move-object/from16 v0, p0

    move/from16 v1, v27

    invoke-virtual {v0, v5, v6, v1}, Landroid/nfc/INfcAdapter$Stub;->changeDiscoveryTech(Landroid/os/IBinder;II)V

    .line 294
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 295
    const/4 v4, 0x1

    return v4

    .line 299
    .end local v5    # "_arg0":Landroid/os/IBinder;
    .end local v6    # "_arg1":I
    .end local v27    # "_arg2":I
    :sswitch_19
    const-string/jumbo v4, "android.nfc.INfcAdapter"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 301
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v5

    .line 303
    .restart local v5    # "_arg0":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 305
    .restart local v6    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 307
    .local v7, "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 309
    .local v8, "_arg3":Ljava/lang/String;
    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v9

    .local v9, "_arg4":Ljava/util/List;, "Ljava/util/List<Landroid/content/ComponentName;>;"
    move-object/from16 v4, p0

    .line 310
    invoke-virtual/range {v4 .. v9}, Landroid/nfc/INfcAdapter$Stub;->changeRoutingTable(Landroid/os/IBinder;ILjava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    .line 311
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 312
    const/4 v4, 0x1

    return v4

    .line 316
    .end local v5    # "_arg0":Landroid/os/IBinder;
    .end local v6    # "_arg1":I
    .end local v7    # "_arg2":Ljava/lang/String;
    .end local v8    # "_arg3":Ljava/lang/String;
    .end local v9    # "_arg4":Ljava/util/List;, "Ljava/util/List<Landroid/content/ComponentName;>;"
    :sswitch_1a
    const-string/jumbo v4, "android.nfc.INfcAdapter"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 318
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Landroid/nfc/IAsyncFunctionCompleteCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/nfc/IAsyncFunctionCompleteCallback;

    move-result-object v15

    .line 319
    .local v15, "_arg0":Landroid/nfc/IAsyncFunctionCompleteCallback;
    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Landroid/nfc/INfcAdapter$Stub;->addAsyncFunctionCallback(Landroid/nfc/IAsyncFunctionCompleteCallback;)V

    .line 320
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 321
    const/4 v4, 0x1

    return v4

    .line 325
    .end local v15    # "_arg0":Landroid/nfc/IAsyncFunctionCompleteCallback;
    :sswitch_1b
    const-string/jumbo v4, "android.nfc.INfcAdapter"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 327
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Landroid/nfc/INfcAsyncFunctionCompleteCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/nfc/INfcAsyncFunctionCompleteCallback;

    move-result-object v16

    .line 328
    .local v16, "_arg0":Landroid/nfc/INfcAsyncFunctionCompleteCallback;
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/nfc/INfcAdapter$Stub;->addNfcAsyncFunctionCallback(Landroid/nfc/INfcAsyncFunctionCompleteCallback;)V

    .line 329
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 330
    const/4 v4, 0x1

    return v4

    .line 334
    .end local v16    # "_arg0":Landroid/nfc/INfcAsyncFunctionCompleteCallback;
    :sswitch_1c
    const-string/jumbo v4, "android.nfc.INfcAdapter"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 336
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v5

    .line 338
    .restart local v5    # "_arg0":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 339
    .restart local v6    # "_arg1":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6}, Landroid/nfc/INfcAdapter$Stub;->updateRfFile(Landroid/os/IBinder;I)V

    .line 340
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 341
    const/4 v4, 0x1

    return v4

    .line 345
    .end local v5    # "_arg0":Landroid/os/IBinder;
    .end local v6    # "_arg1":I
    :sswitch_1d
    const-string/jumbo v4, "android.nfc.INfcAdapter"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 346
    invoke-virtual/range {p0 .. p0}, Landroid/nfc/INfcAdapter$Stub;->getRwP2pState()I

    move-result v31

    .line 347
    .restart local v31    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 348
    move-object/from16 v0, p3

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 349
    const/4 v4, 0x1

    return v4

    .line 353
    .end local v31    # "_result":I
    :sswitch_1e
    const-string/jumbo v4, "android.nfc.INfcAdapter"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 355
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_12

    const/16 v20, 0x1

    .line 356
    .restart local v20    # "_arg0":Z
    :goto_12
    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/nfc/INfcAdapter$Stub;->setRwP2pMode(Z)Z

    move-result v38

    .line 357
    .restart local v38    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 358
    if-eqz v38, :cond_13

    const/4 v4, 0x1

    :goto_13
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 359
    const/4 v4, 0x1

    return v4

    .line 355
    .end local v20    # "_arg0":Z
    .end local v38    # "_result":Z
    :cond_12
    const/16 v20, 0x0

    goto :goto_12

    .line 358
    .restart local v20    # "_arg0":Z
    .restart local v38    # "_result":Z
    :cond_13
    const/4 v4, 0x0

    goto :goto_13

    .line 363
    .end local v20    # "_arg0":Z
    .end local v38    # "_result":Z
    :sswitch_1f
    const-string/jumbo v4, "android.nfc.INfcAdapter"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 364
    invoke-virtual/range {p0 .. p0}, Landroid/nfc/INfcAdapter$Stub;->prepareSwitchedOffState()V

    .line 365
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 366
    const/4 v4, 0x1

    return v4

    .line 370
    :sswitch_20
    const-string/jumbo v4, "android.nfc.INfcAdapter"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 372
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v21

    .line 373
    .local v21, "_arg0":[B
    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/nfc/INfcAdapter$Stub;->setFilterList([B)Z

    move-result v38

    .line 374
    .restart local v38    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 375
    if-eqz v38, :cond_14

    const/4 v4, 0x1

    :goto_14
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 376
    const/4 v4, 0x1

    return v4

    .line 375
    :cond_14
    const/4 v4, 0x0

    goto :goto_14

    .line 380
    .end local v21    # "_arg0":[B
    .end local v38    # "_result":Z
    :sswitch_21
    const-string/jumbo v4, "android.nfc.INfcAdapter"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 382
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readByte()B

    move-result v10

    .line 383
    .local v10, "_arg0":B
    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Landroid/nfc/INfcAdapter$Stub;->enableFilterCondition(B)Z

    move-result v38

    .line 384
    .restart local v38    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 385
    if-eqz v38, :cond_15

    const/4 v4, 0x1

    :goto_15
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 386
    const/4 v4, 0x1

    return v4

    .line 385
    :cond_15
    const/4 v4, 0x0

    goto :goto_15

    .line 390
    .end local v10    # "_arg0":B
    .end local v38    # "_result":Z
    :sswitch_22
    const-string/jumbo v4, "android.nfc.INfcAdapter"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 392
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readByte()B

    move-result v10

    .line 393
    .restart local v10    # "_arg0":B
    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Landroid/nfc/INfcAdapter$Stub;->disableFilterCondition(B)Z

    move-result v38

    .line 394
    .restart local v38    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 395
    if-eqz v38, :cond_16

    const/4 v4, 0x1

    :goto_16
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 396
    const/4 v4, 0x1

    return v4

    .line 395
    :cond_16
    const/4 v4, 0x0

    goto :goto_16

    .line 400
    .end local v10    # "_arg0":B
    .end local v38    # "_result":Z
    :sswitch_23
    const-string/jumbo v4, "android.nfc.INfcAdapter"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 402
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Landroid/nfc/INfcUnlockHandler$Stub;->asInterface(Landroid/os/IBinder;)Landroid/nfc/INfcUnlockHandler;

    move-result-object v17

    .line 404
    .local v17, "_arg0":Landroid/nfc/INfcUnlockHandler;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v25

    .line 405
    .local v25, "_arg1":[I
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move-object/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Landroid/nfc/INfcAdapter$Stub;->addNfcUnlockHandler(Landroid/nfc/INfcUnlockHandler;[I)V

    .line 406
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 407
    const/4 v4, 0x1

    return v4

    .line 411
    .end local v17    # "_arg0":Landroid/nfc/INfcUnlockHandler;
    .end local v25    # "_arg1":[I
    :sswitch_24
    const-string/jumbo v4, "android.nfc.INfcAdapter"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 413
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Landroid/nfc/INfcUnlockHandler$Stub;->asInterface(Landroid/os/IBinder;)Landroid/nfc/INfcUnlockHandler;

    move-result-object v17

    .line 414
    .restart local v17    # "_arg0":Landroid/nfc/INfcUnlockHandler;
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/nfc/INfcAdapter$Stub;->removeNfcUnlockHandler(Landroid/nfc/INfcUnlockHandler;)V

    .line 415
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 416
    const/4 v4, 0x1

    return v4

    .line 420
    .end local v17    # "_arg0":Landroid/nfc/INfcUnlockHandler;
    :sswitch_25
    const-string/jumbo v4, "android.nfc.INfcAdapter"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 421
    invoke-virtual/range {p0 .. p0}, Landroid/nfc/INfcAdapter$Stub;->verifyNfcPermission()V

    .line 422
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 423
    const/4 v4, 0x1

    return v4

    .line 427
    :sswitch_26
    const-string/jumbo v4, "android.nfc.INfcAdapter"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 429
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v19

    .line 431
    .restart local v19    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_17

    const/16 v24, 0x1

    .line 432
    .local v24, "_arg1":Z
    :goto_17
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Landroid/nfc/INfcAdapter$Stub;->enableDisableSeTestMode(Ljava/lang/String;Z)V

    .line 433
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 434
    const/4 v4, 0x1

    return v4

    .line 431
    .end local v24    # "_arg1":Z
    :cond_17
    const/16 v24, 0x0

    goto :goto_17

    .line 438
    .end local v19    # "_arg0":Ljava/lang/String;
    :sswitch_27
    const-string/jumbo v4, "android.nfc.INfcAdapter"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 440
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v19

    .line 441
    .restart local v19    # "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/nfc/INfcAdapter$Stub;->setDefaultRoutingDestination(Ljava/lang/String;)V

    .line 442
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 443
    const/4 v4, 0x1

    return v4

    .line 447
    .end local v19    # "_arg0":Ljava/lang/String;
    :sswitch_28
    const-string/jumbo v4, "android.nfc.INfcAdapter"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 448
    invoke-virtual/range {p0 .. p0}, Landroid/nfc/INfcAdapter$Stub;->getDefaultRoutingDestination()Ljava/lang/String;

    move-result-object v37

    .line 449
    .local v37, "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 450
    move-object/from16 v0, p3

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 451
    const/4 v4, 0x1

    return v4

    .line 455
    .end local v37    # "_result":Ljava/lang/String;
    :sswitch_29
    const-string/jumbo v4, "android.nfc.INfcAdapter"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 456
    invoke-virtual/range {p0 .. p0}, Landroid/nfc/INfcAdapter$Stub;->readerDisable()Z

    move-result v38

    .line 457
    .restart local v38    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 458
    if-eqz v38, :cond_18

    const/4 v4, 0x1

    :goto_18
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 459
    const/4 v4, 0x1

    return v4

    .line 458
    :cond_18
    const/4 v4, 0x0

    goto :goto_18

    .line 463
    .end local v38    # "_result":Z
    :sswitch_2a
    const-string/jumbo v4, "android.nfc.INfcAdapter"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 464
    invoke-virtual/range {p0 .. p0}, Landroid/nfc/INfcAdapter$Stub;->readerEnable()Z

    move-result v38

    .line 465
    .restart local v38    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 466
    if-eqz v38, :cond_19

    const/4 v4, 0x1

    :goto_19
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 467
    const/4 v4, 0x1

    return v4

    .line 466
    :cond_19
    const/4 v4, 0x0

    goto :goto_19

    .line 471
    .end local v38    # "_result":Z
    :sswitch_2b
    const-string/jumbo v4, "android.nfc.INfcAdapter"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 473
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v19

    .line 475
    .restart local v19    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v23

    .line 476
    .local v23, "_arg1":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-object/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Landroid/nfc/INfcAdapter$Stub;->isTrustedPkg(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v38

    .line 477
    .restart local v38    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 478
    if-eqz v38, :cond_1a

    const/4 v4, 0x1

    :goto_1a
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 479
    const/4 v4, 0x1

    return v4

    .line 478
    :cond_1a
    const/4 v4, 0x0

    goto :goto_1a

    .line 483
    .end local v19    # "_arg0":Ljava/lang/String;
    .end local v23    # "_arg1":Ljava/lang/String;
    .end local v38    # "_result":Z
    :sswitch_2c
    const-string/jumbo v4, "android.nfc.INfcAdapter"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 484
    invoke-virtual/range {p0 .. p0}, Landroid/nfc/INfcAdapter$Stub;->startCoverAuth()[B

    move-result-object v39

    .line 485
    .local v39, "_result":[B
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 486
    move-object/from16 v0, p3

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 487
    const/4 v4, 0x1

    return v4

    .line 491
    .end local v39    # "_result":[B
    :sswitch_2d
    const-string/jumbo v4, "android.nfc.INfcAdapter"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 493
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v21

    .line 494
    .restart local v21    # "_arg0":[B
    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/nfc/INfcAdapter$Stub;->transceiveAuthData([B)[B

    move-result-object v39

    .line 495
    .restart local v39    # "_result":[B
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 496
    move-object/from16 v0, p3

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 497
    const/4 v4, 0x1

    return v4

    .line 501
    .end local v21    # "_arg0":[B
    .end local v39    # "_result":[B
    :sswitch_2e
    const-string/jumbo v4, "android.nfc.INfcAdapter"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 502
    invoke-virtual/range {p0 .. p0}, Landroid/nfc/INfcAdapter$Stub;->stopCoverAuth()Z

    move-result v38

    .line 503
    .restart local v38    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 504
    if-eqz v38, :cond_1b

    const/4 v4, 0x1

    :goto_1b
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 505
    const/4 v4, 0x1

    return v4

    .line 504
    :cond_1b
    const/4 v4, 0x0

    goto :goto_1b

    .line 509
    .end local v38    # "_result":Z
    :sswitch_2f
    const-string/jumbo v4, "android.nfc.INfcAdapter"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 511
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v11

    .line 512
    .restart local v11    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Landroid/nfc/INfcAdapter$Stub;->setListenMode(I)I

    move-result v31

    .line 513
    .restart local v31    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 514
    move-object/from16 v0, p3

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 515
    const/4 v4, 0x1

    return v4

    .line 519
    .end local v11    # "_arg0":I
    .end local v31    # "_result":I
    :sswitch_30
    const-string/jumbo v4, "android.nfc.INfcAdapter"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 520
    invoke-virtual/range {p0 .. p0}, Landroid/nfc/INfcAdapter$Stub;->getListenMode()I

    move-result v31

    .line 521
    .restart local v31    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 522
    move-object/from16 v0, p3

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 523
    const/4 v4, 0x1

    return v4

    .line 527
    .end local v31    # "_result":I
    :sswitch_31
    const-string/jumbo v4, "android.nfc.INfcAdapter"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 529
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v21

    .line 530
    .restart local v21    # "_arg0":[B
    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/nfc/INfcAdapter$Stub;->TransceiveLedCover([B)[B

    move-result-object v39

    .line 531
    .restart local v39    # "_result":[B
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 532
    move-object/from16 v0, p3

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 533
    const/4 v4, 0x1

    return v4

    .line 537
    .end local v21    # "_arg0":[B
    .end local v39    # "_result":[B
    :sswitch_32
    const-string/jumbo v4, "android.nfc.INfcAdapter"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 538
    invoke-virtual/range {p0 .. p0}, Landroid/nfc/INfcAdapter$Stub;->StartLedCover()[B

    move-result-object v39

    .line 539
    .restart local v39    # "_result":[B
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 540
    move-object/from16 v0, p3

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 541
    const/4 v4, 0x1

    return v4

    .line 545
    .end local v39    # "_result":[B
    :sswitch_33
    const-string/jumbo v4, "android.nfc.INfcAdapter"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 546
    invoke-virtual/range {p0 .. p0}, Landroid/nfc/INfcAdapter$Stub;->StopLedCover()Z

    move-result v38

    .line 547
    .restart local v38    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 548
    if-eqz v38, :cond_1c

    const/4 v4, 0x1

    :goto_1c
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 549
    const/4 v4, 0x1

    return v4

    .line 548
    :cond_1c
    const/4 v4, 0x0

    goto :goto_1c

    .line 553
    .end local v38    # "_result":Z
    :sswitch_34
    const-string/jumbo v4, "android.nfc.INfcAdapter"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 555
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v11

    .line 556
    .restart local v11    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Landroid/nfc/INfcAdapter$Stub;->SetWcControl(I)Z

    move-result v38

    .line 557
    .restart local v38    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 558
    if-eqz v38, :cond_1d

    const/4 v4, 0x1

    :goto_1d
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 559
    const/4 v4, 0x1

    return v4

    .line 558
    :cond_1d
    const/4 v4, 0x0

    goto :goto_1d

    .line 563
    .end local v11    # "_arg0":I
    .end local v38    # "_result":Z
    :sswitch_35
    const-string/jumbo v4, "android.nfc.INfcAdapter"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 565
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_1e

    const/16 v20, 0x1

    .line 566
    .restart local v20    # "_arg0":Z
    :goto_1e
    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/nfc/INfcAdapter$Stub;->SetWirelessChargeEnabled(Z)Z

    move-result v38

    .line 567
    .restart local v38    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 568
    if-eqz v38, :cond_1f

    const/4 v4, 0x1

    :goto_1f
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 569
    const/4 v4, 0x1

    return v4

    .line 565
    .end local v20    # "_arg0":Z
    .end local v38    # "_result":Z
    :cond_1e
    const/16 v20, 0x0

    goto :goto_1e

    .line 568
    .restart local v20    # "_arg0":Z
    .restart local v38    # "_result":Z
    :cond_1f
    const/4 v4, 0x0

    goto :goto_1f

    .line 573
    .end local v20    # "_arg0":Z
    .end local v38    # "_result":Z
    :sswitch_36
    const-string/jumbo v4, "android.nfc.INfcAdapter"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 574
    invoke-virtual/range {p0 .. p0}, Landroid/nfc/INfcAdapter$Stub;->getCoverVersion()I

    move-result v31

    .line 575
    .restart local v31    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 576
    move-object/from16 v0, p3

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 577
    const/4 v4, 0x1

    return v4

    .line 581
    .end local v31    # "_result":I
    :sswitch_37
    const-string/jumbo v4, "android.nfc.INfcAdapter"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 582
    invoke-virtual/range {p0 .. p0}, Landroid/nfc/INfcAdapter$Stub;->getSeSupportedTech()I

    move-result v31

    .line 583
    .restart local v31    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 584
    move-object/from16 v0, p3

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 585
    const/4 v4, 0x1

    return v4

    .line 589
    .end local v31    # "_result":I
    :sswitch_38
    const-string/jumbo v4, "android.nfc.INfcAdapter"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 590
    invoke-virtual/range {p0 .. p0}, Landroid/nfc/INfcAdapter$Stub;->getIdm()Ljava/lang/String;

    move-result-object v37

    .line 591
    .restart local v37    # "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 592
    move-object/from16 v0, p3

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 593
    const/4 v4, 0x1

    return v4

    .line 597
    .end local v37    # "_result":Ljava/lang/String;
    :sswitch_39
    const-string/jumbo v4, "android.nfc.INfcAdapter"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 598
    invoke-virtual/range {p0 .. p0}, Landroid/nfc/INfcAdapter$Stub;->NetworkResetAtt()V

    .line 599
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 600
    const/4 v4, 0x1

    return v4

    .line 604
    :sswitch_3a
    const-string/jumbo v4, "android.nfc.INfcAdapter"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 606
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v11

    .line 607
    .restart local v11    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Landroid/nfc/INfcAdapter$Stub;->setPreferredSimSlot(I)Z

    move-result v38

    .line 608
    .restart local v38    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 609
    if-eqz v38, :cond_20

    const/4 v4, 0x1

    :goto_20
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 610
    const/4 v4, 0x1

    return v4

    .line 609
    :cond_20
    const/4 v4, 0x0

    goto :goto_20

    .line 614
    .end local v11    # "_arg0":I
    .end local v38    # "_result":Z
    :sswitch_3b
    const-string/jumbo v4, "android.nfc.INfcAdapter"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 615
    invoke-virtual/range {p0 .. p0}, Landroid/nfc/INfcAdapter$Stub;->getPreferredSimSlot()I

    move-result v31

    .line 616
    .restart local v31    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 617
    move-object/from16 v0, p3

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 618
    const/4 v4, 0x1

    return v4

    .line 622
    .end local v31    # "_result":I
    :sswitch_3c
    const-string/jumbo v4, "android.nfc.INfcAdapter"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 624
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v19

    .line 625
    .restart local v19    # "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/nfc/INfcAdapter$Stub;->loadBanner(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v32

    .line 626
    .local v32, "_result":Landroid/graphics/Bitmap;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 627
    if-eqz v32, :cond_21

    .line 628
    const/4 v4, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 629
    const/4 v4, 0x1

    move-object/from16 v0, v32

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v4}, Landroid/graphics/Bitmap;->writeToParcel(Landroid/os/Parcel;I)V

    .line 634
    :goto_21
    const/4 v4, 0x1

    return v4

    .line 632
    :cond_21
    const/4 v4, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_21

    .line 638
    .end local v19    # "_arg0":Ljava/lang/String;
    .end local v32    # "_result":Landroid/graphics/Bitmap;
    :sswitch_3d
    const-string/jumbo v4, "android.nfc.INfcAdapter"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 639
    invoke-virtual/range {p0 .. p0}, Landroid/nfc/INfcAdapter$Stub;->readEdc()I

    move-result v31

    .line 640
    .restart local v31    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 641
    move-object/from16 v0, p3

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 642
    const/4 v4, 0x1

    return v4

    .line 646
    .end local v31    # "_result":I
    :sswitch_3e
    const-string/jumbo v4, "android.nfc.INfcAdapter"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 648
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v11

    .line 649
    .restart local v11    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Landroid/nfc/INfcAdapter$Stub;->writeEdc(I)Z

    move-result v38

    .line 650
    .restart local v38    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 651
    if-eqz v38, :cond_22

    const/4 v4, 0x1

    :goto_22
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 652
    const/4 v4, 0x1

    return v4

    .line 651
    :cond_22
    const/4 v4, 0x0

    goto :goto_22

    .line 656
    .end local v11    # "_arg0":I
    .end local v38    # "_result":Z
    :sswitch_3f
    const-string/jumbo v4, "android.nfc.INfcAdapter"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 657
    invoke-virtual/range {p0 .. p0}, Landroid/nfc/INfcAdapter$Stub;->startApc()I

    move-result v31

    .line 658
    .restart local v31    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 659
    move-object/from16 v0, p3

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 660
    const/4 v4, 0x1

    return v4

    .line 41
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
        0x20 -> :sswitch_20
        0x21 -> :sswitch_21
        0x22 -> :sswitch_22
        0x23 -> :sswitch_23
        0x24 -> :sswitch_24
        0x25 -> :sswitch_25
        0x26 -> :sswitch_26
        0x27 -> :sswitch_27
        0x28 -> :sswitch_28
        0x29 -> :sswitch_29
        0x2a -> :sswitch_2a
        0x2b -> :sswitch_2b
        0x2c -> :sswitch_2c
        0x2d -> :sswitch_2d
        0x2e -> :sswitch_2e
        0x2f -> :sswitch_2f
        0x30 -> :sswitch_30
        0x31 -> :sswitch_31
        0x32 -> :sswitch_32
        0x33 -> :sswitch_33
        0x34 -> :sswitch_34
        0x35 -> :sswitch_35
        0x36 -> :sswitch_36
        0x37 -> :sswitch_37
        0x38 -> :sswitch_38
        0x39 -> :sswitch_39
        0x3a -> :sswitch_3a
        0x3b -> :sswitch_3b
        0x3c -> :sswitch_3c
        0x3d -> :sswitch_3d
        0x3e -> :sswitch_3e
        0x3f -> :sswitch_3f
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
