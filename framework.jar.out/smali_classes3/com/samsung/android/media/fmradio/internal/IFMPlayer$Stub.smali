.class public abstract Lcom/samsung/android/media/fmradio/internal/IFMPlayer$Stub;
.super Landroid/os/Binder;
.source "IFMPlayer.java"

# interfaces
.implements Lcom/samsung/android/media/fmradio/internal/IFMPlayer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/media/fmradio/internal/IFMPlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/media/fmradio/internal/IFMPlayer$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.samsung.android.media.fmradio.internal.IFMPlayer"

.field static final TRANSACTION_cancelAFSwitching:I = 0x20

.field static final TRANSACTION_cancelScan:I = 0xd

.field static final TRANSACTION_cancelSeek:I = 0xa

.field static final TRANSACTION_disableAF:I = 0x1a

.field static final TRANSACTION_disableDNS:I = 0x17

.field static final TRANSACTION_disableRDS:I = 0x15

.field static final TRANSACTION_enableAF:I = 0x19

.field static final TRANSACTION_enableDNS:I = 0x16

.field static final TRANSACTION_enableRDS:I = 0x14

.field static final TRANSACTION_getCurrentChannel:I = 0xb

.field static final TRANSACTION_getIntegerTunningParameter:I = 0x33

.field static final TRANSACTION_getLastScanResult:I = 0x21

.field static final TRANSACTION_getLongTunningParameter:I = 0x35

.field static final TRANSACTION_getMaxVolume:I = 0x2a

.field static final TRANSACTION_getPlayedFreq:I = 0x13

.field static final TRANSACTION_getSoftMuteMode:I = 0x30

.field static final TRANSACTION_getStringTunningParameter:I = 0x37

.field static final TRANSACTION_getVolume:I = 0x25

.field static final TRANSACTION_isAFEnable:I = 0x1f

.field static final TRANSACTION_isAirPlaneMode:I = 0x2b

.field static final TRANSACTION_isBatteryLow:I = 0x2d

.field static final TRANSACTION_isBusy:I = 0x1d

.field static final TRANSACTION_isDNSEnable:I = 0x18

.field static final TRANSACTION_isHeadsetPlugged:I = 0x26

.field static final TRANSACTION_isOn:I = 0x7

.field static final TRANSACTION_isRDSEnable:I = 0x1e

.field static final TRANSACTION_isScanning:I = 0xe

.field static final TRANSACTION_isSeeking:I = 0xf

.field static final TRANSACTION_isTvOutPlugged:I = 0x27

.field static final TRANSACTION_mute:I = 0x2c

.field static final TRANSACTION_off:I = 0x6

.field static final TRANSACTION_on:I = 0x4

.field static final TRANSACTION_on_in_testmode:I = 0x5

.field static final TRANSACTION_removeListener:I = 0x2

.field static final TRANSACTION_scan:I = 0xc

.field static final TRANSACTION_searchAll:I = 0x12

.field static final TRANSACTION_searchDown:I = 0x10

.field static final TRANSACTION_searchUp:I = 0x11

.field static final TRANSACTION_seekDown:I = 0x9

.field static final TRANSACTION_seekUp:I = 0x8

.field static final TRANSACTION_setBand:I = 0x1b

.field static final TRANSACTION_setChannelSpacing:I = 0x1c

.field static final TRANSACTION_setFMIntenna:I = 0x2e

.field static final TRANSACTION_setIntegerTunningParameter:I = 0x32

.field static final TRANSACTION_setInternetStreamingMode:I = 0x31

.field static final TRANSACTION_setListener:I = 0x1

.field static final TRANSACTION_setLongTunningParameter:I = 0x34

.field static final TRANSACTION_setMono:I = 0x23

.field static final TRANSACTION_setRecordMode:I = 0x29

.field static final TRANSACTION_setSoftmute:I = 0x2f

.field static final TRANSACTION_setSpeakerOn:I = 0x28

.field static final TRANSACTION_setStereo:I = 0x22

.field static final TRANSACTION_setStringTunningParameter:I = 0x36

.field static final TRANSACTION_setVolume:I = 0x24

.field static final TRANSACTION_tune:I = 0x3


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 18
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 20
    const-string/jumbo v0, "com.samsung.android.media.fmradio.internal.IFMPlayer"

    invoke-virtual {p0, p0, v0}, Landroid/os/Binder;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 18
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/samsung/android/media/fmradio/internal/IFMPlayer;
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
    const-string/jumbo v1, "com.samsung.android.media.fmradio.internal.IFMPlayer"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 32
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/samsung/android/media/fmradio/internal/IFMPlayer;

    if-eqz v1, :cond_1

    .line 33
    check-cast v0, Lcom/samsung/android/media/fmradio/internal/IFMPlayer;

    .end local v0    # "iin":Landroid/os/IInterface;
    return-object v0

    .line 35
    .restart local v0    # "iin":Landroid/os/IInterface;
    :cond_1
    new-instance v1, Lcom/samsung/android/media/fmradio/internal/IFMPlayer$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/samsung/android/media/fmradio/internal/IFMPlayer$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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
    .locals 19
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

    .line 513
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v18

    return v18

    .line 47
    :sswitch_0
    const-string/jumbo v18, "com.samsung.android.media.fmradio.internal.IFMPlayer"

    move-object/from16 v0, p3

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 48
    const/16 v18, 0x1

    return v18

    .line 52
    :sswitch_1
    const-string/jumbo v18, "com.samsung.android.media.fmradio.internal.IFMPlayer"

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 54
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Lcom/samsung/android/media/fmradio/internal/IFMEventListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/media/fmradio/internal/IFMEventListener;

    move-result-object v3

    .line 55
    .local v3, "_arg0":Lcom/samsung/android/media/fmradio/internal/IFMEventListener;
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/samsung/android/media/fmradio/internal/IFMPlayer$Stub;->setListener(Lcom/samsung/android/media/fmradio/internal/IFMEventListener;)V

    .line 56
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 57
    const/16 v18, 0x1

    return v18

    .line 61
    .end local v3    # "_arg0":Lcom/samsung/android/media/fmradio/internal/IFMEventListener;
    :sswitch_2
    const-string/jumbo v18, "com.samsung.android.media.fmradio.internal.IFMPlayer"

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 63
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Lcom/samsung/android/media/fmradio/internal/IFMEventListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/media/fmradio/internal/IFMEventListener;

    move-result-object v3

    .line 64
    .restart local v3    # "_arg0":Lcom/samsung/android/media/fmradio/internal/IFMEventListener;
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/samsung/android/media/fmradio/internal/IFMPlayer$Stub;->removeListener(Lcom/samsung/android/media/fmradio/internal/IFMEventListener;)V

    .line 65
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 66
    const/16 v18, 0x1

    return v18

    .line 70
    .end local v3    # "_arg0":Lcom/samsung/android/media/fmradio/internal/IFMEventListener;
    :sswitch_3
    const-string/jumbo v18, "com.samsung.android.media.fmradio.internal.IFMPlayer"

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 72
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    .line 73
    .local v4, "_arg0":J
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5}, Lcom/samsung/android/media/fmradio/internal/IFMPlayer$Stub;->tune(J)V

    .line 74
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 75
    const/16 v18, 0x1

    return v18

    .line 79
    .end local v4    # "_arg0":J
    :sswitch_4
    const-string/jumbo v18, "com.samsung.android.media.fmradio.internal.IFMPlayer"

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 80
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/media/fmradio/internal/IFMPlayer$Stub;->on()Z

    move-result v16

    .line 81
    .local v16, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 82
    if-eqz v16, :cond_0

    const/16 v18, 0x1

    :goto_0
    move-object/from16 v0, p3

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 83
    const/16 v18, 0x1

    return v18

    .line 82
    :cond_0
    const/16 v18, 0x0

    goto :goto_0

    .line 87
    .end local v16    # "_result":Z
    :sswitch_5
    const-string/jumbo v18, "com.samsung.android.media.fmradio.internal.IFMPlayer"

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 88
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/media/fmradio/internal/IFMPlayer$Stub;->on_in_testmode()Z

    move-result v16

    .line 89
    .restart local v16    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 90
    if-eqz v16, :cond_1

    const/16 v18, 0x1

    :goto_1
    move-object/from16 v0, p3

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 91
    const/16 v18, 0x1

    return v18

    .line 90
    :cond_1
    const/16 v18, 0x0

    goto :goto_1

    .line 95
    .end local v16    # "_result":Z
    :sswitch_6
    const-string/jumbo v18, "com.samsung.android.media.fmradio.internal.IFMPlayer"

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 96
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/media/fmradio/internal/IFMPlayer$Stub;->off()Z

    move-result v16

    .line 97
    .restart local v16    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 98
    if-eqz v16, :cond_2

    const/16 v18, 0x1

    :goto_2
    move-object/from16 v0, p3

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 99
    const/16 v18, 0x1

    return v18

    .line 98
    :cond_2
    const/16 v18, 0x0

    goto :goto_2

    .line 103
    .end local v16    # "_result":Z
    :sswitch_7
    const-string/jumbo v18, "com.samsung.android.media.fmradio.internal.IFMPlayer"

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 104
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/media/fmradio/internal/IFMPlayer$Stub;->isOn()Z

    move-result v16

    .line 105
    .restart local v16    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 106
    if-eqz v16, :cond_3

    const/16 v18, 0x1

    :goto_3
    move-object/from16 v0, p3

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 107
    const/16 v18, 0x1

    return v18

    .line 106
    :cond_3
    const/16 v18, 0x0

    goto :goto_3

    .line 111
    .end local v16    # "_result":Z
    :sswitch_8
    const-string/jumbo v18, "com.samsung.android.media.fmradio.internal.IFMPlayer"

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 112
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/media/fmradio/internal/IFMPlayer$Stub;->seekUp()J

    move-result-wide v14

    .line 113
    .local v14, "_result":J
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 114
    move-object/from16 v0, p3

    invoke-virtual {v0, v14, v15}, Landroid/os/Parcel;->writeLong(J)V

    .line 115
    const/16 v18, 0x1

    return v18

    .line 119
    .end local v14    # "_result":J
    :sswitch_9
    const-string/jumbo v18, "com.samsung.android.media.fmradio.internal.IFMPlayer"

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 120
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/media/fmradio/internal/IFMPlayer$Stub;->seekDown()J

    move-result-wide v14

    .line 121
    .restart local v14    # "_result":J
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 122
    move-object/from16 v0, p3

    invoke-virtual {v0, v14, v15}, Landroid/os/Parcel;->writeLong(J)V

    .line 123
    const/16 v18, 0x1

    return v18

    .line 127
    .end local v14    # "_result":J
    :sswitch_a
    const-string/jumbo v18, "com.samsung.android.media.fmradio.internal.IFMPlayer"

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 128
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/media/fmradio/internal/IFMPlayer$Stub;->cancelSeek()V

    .line 129
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 130
    const/16 v18, 0x1

    return v18

    .line 134
    :sswitch_b
    const-string/jumbo v18, "com.samsung.android.media.fmradio.internal.IFMPlayer"

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 135
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/media/fmradio/internal/IFMPlayer$Stub;->getCurrentChannel()J

    move-result-wide v14

    .line 136
    .restart local v14    # "_result":J
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 137
    move-object/from16 v0, p3

    invoke-virtual {v0, v14, v15}, Landroid/os/Parcel;->writeLong(J)V

    .line 138
    const/16 v18, 0x1

    return v18

    .line 142
    .end local v14    # "_result":J
    :sswitch_c
    const-string/jumbo v18, "com.samsung.android.media.fmradio.internal.IFMPlayer"

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 143
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/media/fmradio/internal/IFMPlayer$Stub;->scan()V

    .line 144
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 145
    const/16 v18, 0x1

    return v18

    .line 149
    :sswitch_d
    const-string/jumbo v18, "com.samsung.android.media.fmradio.internal.IFMPlayer"

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 150
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/media/fmradio/internal/IFMPlayer$Stub;->cancelScan()Z

    move-result v16

    .line 151
    .restart local v16    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 152
    if-eqz v16, :cond_4

    const/16 v18, 0x1

    :goto_4
    move-object/from16 v0, p3

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 153
    const/16 v18, 0x1

    return v18

    .line 152
    :cond_4
    const/16 v18, 0x0

    goto :goto_4

    .line 157
    .end local v16    # "_result":Z
    :sswitch_e
    const-string/jumbo v18, "com.samsung.android.media.fmradio.internal.IFMPlayer"

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 158
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/media/fmradio/internal/IFMPlayer$Stub;->isScanning()Z

    move-result v16

    .line 159
    .restart local v16    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 160
    if-eqz v16, :cond_5

    const/16 v18, 0x1

    :goto_5
    move-object/from16 v0, p3

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 161
    const/16 v18, 0x1

    return v18

    .line 160
    :cond_5
    const/16 v18, 0x0

    goto :goto_5

    .line 165
    .end local v16    # "_result":Z
    :sswitch_f
    const-string/jumbo v18, "com.samsung.android.media.fmradio.internal.IFMPlayer"

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 166
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/media/fmradio/internal/IFMPlayer$Stub;->isSeeking()Z

    move-result v16

    .line 167
    .restart local v16    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 168
    if-eqz v16, :cond_6

    const/16 v18, 0x1

    :goto_6
    move-object/from16 v0, p3

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 169
    const/16 v18, 0x1

    return v18

    .line 168
    :cond_6
    const/16 v18, 0x0

    goto :goto_6

    .line 173
    .end local v16    # "_result":Z
    :sswitch_10
    const-string/jumbo v18, "com.samsung.android.media.fmradio.internal.IFMPlayer"

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 174
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/media/fmradio/internal/IFMPlayer$Stub;->searchDown()J

    move-result-wide v14

    .line 175
    .restart local v14    # "_result":J
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 176
    move-object/from16 v0, p3

    invoke-virtual {v0, v14, v15}, Landroid/os/Parcel;->writeLong(J)V

    .line 177
    const/16 v18, 0x1

    return v18

    .line 181
    .end local v14    # "_result":J
    :sswitch_11
    const-string/jumbo v18, "com.samsung.android.media.fmradio.internal.IFMPlayer"

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 182
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/media/fmradio/internal/IFMPlayer$Stub;->searchUp()J

    move-result-wide v14

    .line 183
    .restart local v14    # "_result":J
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 184
    move-object/from16 v0, p3

    invoke-virtual {v0, v14, v15}, Landroid/os/Parcel;->writeLong(J)V

    .line 185
    const/16 v18, 0x1

    return v18

    .line 189
    .end local v14    # "_result":J
    :sswitch_12
    const-string/jumbo v18, "com.samsung.android.media.fmradio.internal.IFMPlayer"

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 190
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/media/fmradio/internal/IFMPlayer$Stub;->searchAll()J

    move-result-wide v14

    .line 191
    .restart local v14    # "_result":J
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 192
    move-object/from16 v0, p3

    invoke-virtual {v0, v14, v15}, Landroid/os/Parcel;->writeLong(J)V

    .line 193
    const/16 v18, 0x1

    return v18

    .line 197
    .end local v14    # "_result":J
    :sswitch_13
    const-string/jumbo v18, "com.samsung.android.media.fmradio.internal.IFMPlayer"

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 198
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/media/fmradio/internal/IFMPlayer$Stub;->getPlayedFreq()J

    move-result-wide v14

    .line 199
    .restart local v14    # "_result":J
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 200
    move-object/from16 v0, p3

    invoke-virtual {v0, v14, v15}, Landroid/os/Parcel;->writeLong(J)V

    .line 201
    const/16 v18, 0x1

    return v18

    .line 205
    .end local v14    # "_result":J
    :sswitch_14
    const-string/jumbo v18, "com.samsung.android.media.fmradio.internal.IFMPlayer"

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 206
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/media/fmradio/internal/IFMPlayer$Stub;->enableRDS()V

    .line 207
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 208
    const/16 v18, 0x1

    return v18

    .line 212
    :sswitch_15
    const-string/jumbo v18, "com.samsung.android.media.fmradio.internal.IFMPlayer"

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 213
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/media/fmradio/internal/IFMPlayer$Stub;->disableRDS()V

    .line 214
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 215
    const/16 v18, 0x1

    return v18

    .line 219
    :sswitch_16
    const-string/jumbo v18, "com.samsung.android.media.fmradio.internal.IFMPlayer"

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 220
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/media/fmradio/internal/IFMPlayer$Stub;->enableDNS()V

    .line 221
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 222
    const/16 v18, 0x1

    return v18

    .line 226
    :sswitch_17
    const-string/jumbo v18, "com.samsung.android.media.fmradio.internal.IFMPlayer"

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 227
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/media/fmradio/internal/IFMPlayer$Stub;->disableDNS()V

    .line 228
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 229
    const/16 v18, 0x1

    return v18

    .line 233
    :sswitch_18
    const-string/jumbo v18, "com.samsung.android.media.fmradio.internal.IFMPlayer"

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 234
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/media/fmradio/internal/IFMPlayer$Stub;->isDNSEnable()Z

    move-result v16

    .line 235
    .restart local v16    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 236
    if-eqz v16, :cond_7

    const/16 v18, 0x1

    :goto_7
    move-object/from16 v0, p3

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 237
    const/16 v18, 0x1

    return v18

    .line 236
    :cond_7
    const/16 v18, 0x0

    goto :goto_7

    .line 241
    .end local v16    # "_result":Z
    :sswitch_19
    const-string/jumbo v18, "com.samsung.android.media.fmradio.internal.IFMPlayer"

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 242
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/media/fmradio/internal/IFMPlayer$Stub;->enableAF()V

    .line 243
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 244
    const/16 v18, 0x1

    return v18

    .line 248
    :sswitch_1a
    const-string/jumbo v18, "com.samsung.android.media.fmradio.internal.IFMPlayer"

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 249
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/media/fmradio/internal/IFMPlayer$Stub;->disableAF()V

    .line 250
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 251
    const/16 v18, 0x1

    return v18

    .line 255
    :sswitch_1b
    const-string/jumbo v18, "com.samsung.android.media.fmradio.internal.IFMPlayer"

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 257
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 258
    .local v2, "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/samsung/android/media/fmradio/internal/IFMPlayer$Stub;->setBand(I)V

    .line 259
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 260
    const/16 v18, 0x1

    return v18

    .line 264
    .end local v2    # "_arg0":I
    :sswitch_1c
    const-string/jumbo v18, "com.samsung.android.media.fmradio.internal.IFMPlayer"

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 266
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 267
    .restart local v2    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/samsung/android/media/fmradio/internal/IFMPlayer$Stub;->setChannelSpacing(I)V

    .line 268
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 269
    const/16 v18, 0x1

    return v18

    .line 273
    .end local v2    # "_arg0":I
    :sswitch_1d
    const-string/jumbo v18, "com.samsung.android.media.fmradio.internal.IFMPlayer"

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 274
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/media/fmradio/internal/IFMPlayer$Stub;->isBusy()I

    move-result v12

    .line 275
    .local v12, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 276
    move-object/from16 v0, p3

    invoke-virtual {v0, v12}, Landroid/os/Parcel;->writeInt(I)V

    .line 277
    const/16 v18, 0x1

    return v18

    .line 281
    .end local v12    # "_result":I
    :sswitch_1e
    const-string/jumbo v18, "com.samsung.android.media.fmradio.internal.IFMPlayer"

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 282
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/media/fmradio/internal/IFMPlayer$Stub;->isRDSEnable()Z

    move-result v16

    .line 283
    .restart local v16    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 284
    if-eqz v16, :cond_8

    const/16 v18, 0x1

    :goto_8
    move-object/from16 v0, p3

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 285
    const/16 v18, 0x1

    return v18

    .line 284
    :cond_8
    const/16 v18, 0x0

    goto :goto_8

    .line 289
    .end local v16    # "_result":Z
    :sswitch_1f
    const-string/jumbo v18, "com.samsung.android.media.fmradio.internal.IFMPlayer"

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 290
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/media/fmradio/internal/IFMPlayer$Stub;->isAFEnable()Z

    move-result v16

    .line 291
    .restart local v16    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 292
    if-eqz v16, :cond_9

    const/16 v18, 0x1

    :goto_9
    move-object/from16 v0, p3

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 293
    const/16 v18, 0x1

    return v18

    .line 292
    :cond_9
    const/16 v18, 0x0

    goto :goto_9

    .line 297
    .end local v16    # "_result":Z
    :sswitch_20
    const-string/jumbo v18, "com.samsung.android.media.fmradio.internal.IFMPlayer"

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 298
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/media/fmradio/internal/IFMPlayer$Stub;->cancelAFSwitching()V

    .line 299
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 300
    const/16 v18, 0x1

    return v18

    .line 304
    :sswitch_21
    const-string/jumbo v18, "com.samsung.android.media.fmradio.internal.IFMPlayer"

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 305
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/media/fmradio/internal/IFMPlayer$Stub;->getLastScanResult()[J

    move-result-object v17

    .line 306
    .local v17, "_result":[J
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 307
    move-object/from16 v0, p3

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeLongArray([J)V

    .line 308
    const/16 v18, 0x1

    return v18

    .line 312
    .end local v17    # "_result":[J
    :sswitch_22
    const-string/jumbo v18, "com.samsung.android.media.fmradio.internal.IFMPlayer"

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 313
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/media/fmradio/internal/IFMPlayer$Stub;->setStereo()V

    .line 314
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 315
    const/16 v18, 0x1

    return v18

    .line 319
    :sswitch_23
    const-string/jumbo v18, "com.samsung.android.media.fmradio.internal.IFMPlayer"

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 320
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/media/fmradio/internal/IFMPlayer$Stub;->setMono()V

    .line 321
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 322
    const/16 v18, 0x1

    return v18

    .line 326
    :sswitch_24
    const-string/jumbo v18, "com.samsung.android.media.fmradio.internal.IFMPlayer"

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 328
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    .line 329
    .restart local v4    # "_arg0":J
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5}, Lcom/samsung/android/media/fmradio/internal/IFMPlayer$Stub;->setVolume(J)V

    .line 330
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 331
    const/16 v18, 0x1

    return v18

    .line 335
    .end local v4    # "_arg0":J
    :sswitch_25
    const-string/jumbo v18, "com.samsung.android.media.fmradio.internal.IFMPlayer"

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 336
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/media/fmradio/internal/IFMPlayer$Stub;->getVolume()J

    move-result-wide v14

    .line 337
    .restart local v14    # "_result":J
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 338
    move-object/from16 v0, p3

    invoke-virtual {v0, v14, v15}, Landroid/os/Parcel;->writeLong(J)V

    .line 339
    const/16 v18, 0x1

    return v18

    .line 343
    .end local v14    # "_result":J
    :sswitch_26
    const-string/jumbo v18, "com.samsung.android.media.fmradio.internal.IFMPlayer"

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 344
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/media/fmradio/internal/IFMPlayer$Stub;->isHeadsetPlugged()Z

    move-result v16

    .line 345
    .restart local v16    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 346
    if-eqz v16, :cond_a

    const/16 v18, 0x1

    :goto_a
    move-object/from16 v0, p3

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 347
    const/16 v18, 0x1

    return v18

    .line 346
    :cond_a
    const/16 v18, 0x0

    goto :goto_a

    .line 351
    .end local v16    # "_result":Z
    :sswitch_27
    const-string/jumbo v18, "com.samsung.android.media.fmradio.internal.IFMPlayer"

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 352
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/media/fmradio/internal/IFMPlayer$Stub;->isTvOutPlugged()Z

    move-result v16

    .line 353
    .restart local v16    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 354
    if-eqz v16, :cond_b

    const/16 v18, 0x1

    :goto_b
    move-object/from16 v0, p3

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 355
    const/16 v18, 0x1

    return v18

    .line 354
    :cond_b
    const/16 v18, 0x0

    goto :goto_b

    .line 359
    .end local v16    # "_result":Z
    :sswitch_28
    const-string/jumbo v18, "com.samsung.android.media.fmradio.internal.IFMPlayer"

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 361
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v18

    if-eqz v18, :cond_c

    const/4 v7, 0x1

    .line 362
    .local v7, "_arg0":Z
    :goto_c
    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lcom/samsung/android/media/fmradio/internal/IFMPlayer$Stub;->setSpeakerOn(Z)V

    .line 363
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 364
    const/16 v18, 0x1

    return v18

    .line 361
    .end local v7    # "_arg0":Z
    :cond_c
    const/4 v7, 0x0

    goto :goto_c

    .line 368
    :sswitch_29
    const-string/jumbo v18, "com.samsung.android.media.fmradio.internal.IFMPlayer"

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 370
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v18

    if-eqz v18, :cond_d

    const/4 v7, 0x1

    .line 371
    .restart local v7    # "_arg0":Z
    :goto_d
    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lcom/samsung/android/media/fmradio/internal/IFMPlayer$Stub;->setRecordMode(Z)V

    .line 372
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 373
    const/16 v18, 0x1

    return v18

    .line 370
    .end local v7    # "_arg0":Z
    :cond_d
    const/4 v7, 0x0

    goto :goto_d

    .line 377
    :sswitch_2a
    const-string/jumbo v18, "com.samsung.android.media.fmradio.internal.IFMPlayer"

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 378
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/media/fmradio/internal/IFMPlayer$Stub;->getMaxVolume()J

    move-result-wide v14

    .line 379
    .restart local v14    # "_result":J
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 380
    move-object/from16 v0, p3

    invoke-virtual {v0, v14, v15}, Landroid/os/Parcel;->writeLong(J)V

    .line 381
    const/16 v18, 0x1

    return v18

    .line 385
    .end local v14    # "_result":J
    :sswitch_2b
    const-string/jumbo v18, "com.samsung.android.media.fmradio.internal.IFMPlayer"

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 386
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/media/fmradio/internal/IFMPlayer$Stub;->isAirPlaneMode()Z

    move-result v16

    .line 387
    .restart local v16    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 388
    if-eqz v16, :cond_e

    const/16 v18, 0x1

    :goto_e
    move-object/from16 v0, p3

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 389
    const/16 v18, 0x1

    return v18

    .line 388
    :cond_e
    const/16 v18, 0x0

    goto :goto_e

    .line 393
    .end local v16    # "_result":Z
    :sswitch_2c
    const-string/jumbo v18, "com.samsung.android.media.fmradio.internal.IFMPlayer"

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 395
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v18

    if-eqz v18, :cond_f

    const/4 v7, 0x1

    .line 396
    .restart local v7    # "_arg0":Z
    :goto_f
    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lcom/samsung/android/media/fmradio/internal/IFMPlayer$Stub;->mute(Z)V

    .line 397
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 398
    const/16 v18, 0x1

    return v18

    .line 395
    .end local v7    # "_arg0":Z
    :cond_f
    const/4 v7, 0x0

    goto :goto_f

    .line 402
    :sswitch_2d
    const-string/jumbo v18, "com.samsung.android.media.fmradio.internal.IFMPlayer"

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 403
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/media/fmradio/internal/IFMPlayer$Stub;->isBatteryLow()Z

    move-result v16

    .line 404
    .restart local v16    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 405
    if-eqz v16, :cond_10

    const/16 v18, 0x1

    :goto_10
    move-object/from16 v0, p3

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 406
    const/16 v18, 0x1

    return v18

    .line 405
    :cond_10
    const/16 v18, 0x0

    goto :goto_10

    .line 410
    .end local v16    # "_result":Z
    :sswitch_2e
    const-string/jumbo v18, "com.samsung.android.media.fmradio.internal.IFMPlayer"

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 412
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v18

    if-eqz v18, :cond_11

    const/4 v7, 0x1

    .line 413
    .restart local v7    # "_arg0":Z
    :goto_11
    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lcom/samsung/android/media/fmradio/internal/IFMPlayer$Stub;->setFMIntenna(Z)V

    .line 414
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 415
    const/16 v18, 0x1

    return v18

    .line 412
    .end local v7    # "_arg0":Z
    :cond_11
    const/4 v7, 0x0

    goto :goto_11

    .line 419
    :sswitch_2f
    const-string/jumbo v18, "com.samsung.android.media.fmradio.internal.IFMPlayer"

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 421
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v18

    if-eqz v18, :cond_12

    const/4 v7, 0x1

    .line 422
    .restart local v7    # "_arg0":Z
    :goto_12
    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lcom/samsung/android/media/fmradio/internal/IFMPlayer$Stub;->setSoftmute(Z)V

    .line 423
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 424
    const/16 v18, 0x1

    return v18

    .line 421
    .end local v7    # "_arg0":Z
    :cond_12
    const/4 v7, 0x0

    goto :goto_12

    .line 428
    :sswitch_30
    const-string/jumbo v18, "com.samsung.android.media.fmradio.internal.IFMPlayer"

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 429
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/media/fmradio/internal/IFMPlayer$Stub;->getSoftMuteMode()Z

    move-result v16

    .line 430
    .restart local v16    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 431
    if-eqz v16, :cond_13

    const/16 v18, 0x1

    :goto_13
    move-object/from16 v0, p3

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 432
    const/16 v18, 0x1

    return v18

    .line 431
    :cond_13
    const/16 v18, 0x0

    goto :goto_13

    .line 436
    .end local v16    # "_result":Z
    :sswitch_31
    const-string/jumbo v18, "com.samsung.android.media.fmradio.internal.IFMPlayer"

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 438
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v18

    if-eqz v18, :cond_14

    const/4 v7, 0x1

    .line 439
    .restart local v7    # "_arg0":Z
    :goto_14
    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lcom/samsung/android/media/fmradio/internal/IFMPlayer$Stub;->setInternetStreamingMode(Z)V

    .line 440
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 441
    const/16 v18, 0x1

    return v18

    .line 438
    .end local v7    # "_arg0":Z
    :cond_14
    const/4 v7, 0x0

    goto :goto_14

    .line 445
    :sswitch_32
    const-string/jumbo v18, "com.samsung.android.media.fmradio.internal.IFMPlayer"

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 447
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 449
    .local v6, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 450
    .local v8, "_arg1":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v6, v8}, Lcom/samsung/android/media/fmradio/internal/IFMPlayer$Stub;->setIntegerTunningParameter(Ljava/lang/String;I)V

    .line 451
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 452
    const/16 v18, 0x1

    return v18

    .line 456
    .end local v6    # "_arg0":Ljava/lang/String;
    .end local v8    # "_arg1":I
    :sswitch_33
    const-string/jumbo v18, "com.samsung.android.media.fmradio.internal.IFMPlayer"

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 458
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 460
    .restart local v6    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 461
    .restart local v8    # "_arg1":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v6, v8}, Lcom/samsung/android/media/fmradio/internal/IFMPlayer$Stub;->getIntegerTunningParameter(Ljava/lang/String;I)I

    move-result v12

    .line 462
    .restart local v12    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 463
    move-object/from16 v0, p3

    invoke-virtual {v0, v12}, Landroid/os/Parcel;->writeInt(I)V

    .line 464
    const/16 v18, 0x1

    return v18

    .line 468
    .end local v6    # "_arg0":Ljava/lang/String;
    .end local v8    # "_arg1":I
    .end local v12    # "_result":I
    :sswitch_34
    const-string/jumbo v18, "com.samsung.android.media.fmradio.internal.IFMPlayer"

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 470
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 472
    .restart local v6    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v10

    .line 473
    .local v10, "_arg1":J
    move-object/from16 v0, p0

    invoke-virtual {v0, v6, v10, v11}, Lcom/samsung/android/media/fmradio/internal/IFMPlayer$Stub;->setLongTunningParameter(Ljava/lang/String;J)V

    .line 474
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 475
    const/16 v18, 0x1

    return v18

    .line 479
    .end local v6    # "_arg0":Ljava/lang/String;
    .end local v10    # "_arg1":J
    :sswitch_35
    const-string/jumbo v18, "com.samsung.android.media.fmradio.internal.IFMPlayer"

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 481
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 483
    .restart local v6    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v10

    .line 484
    .restart local v10    # "_arg1":J
    move-object/from16 v0, p0

    invoke-virtual {v0, v6, v10, v11}, Lcom/samsung/android/media/fmradio/internal/IFMPlayer$Stub;->getLongTunningParameter(Ljava/lang/String;J)J

    move-result-wide v14

    .line 485
    .restart local v14    # "_result":J
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 486
    move-object/from16 v0, p3

    invoke-virtual {v0, v14, v15}, Landroid/os/Parcel;->writeLong(J)V

    .line 487
    const/16 v18, 0x1

    return v18

    .line 491
    .end local v6    # "_arg0":Ljava/lang/String;
    .end local v10    # "_arg1":J
    .end local v14    # "_result":J
    :sswitch_36
    const-string/jumbo v18, "com.samsung.android.media.fmradio.internal.IFMPlayer"

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 493
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 495
    .restart local v6    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v9

    .line 496
    .local v9, "_arg1":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v6, v9}, Lcom/samsung/android/media/fmradio/internal/IFMPlayer$Stub;->setStringTunningParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 497
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 498
    const/16 v18, 0x1

    return v18

    .line 502
    .end local v6    # "_arg0":Ljava/lang/String;
    .end local v9    # "_arg1":Ljava/lang/String;
    :sswitch_37
    const-string/jumbo v18, "com.samsung.android.media.fmradio.internal.IFMPlayer"

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 504
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 506
    .restart local v6    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v9

    .line 507
    .restart local v9    # "_arg1":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v6, v9}, Lcom/samsung/android/media/fmradio/internal/IFMPlayer$Stub;->getStringTunningParameter(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 508
    .local v13, "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 509
    move-object/from16 v0, p3

    invoke-virtual {v0, v13}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 510
    const/16 v18, 0x1

    return v18

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
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
