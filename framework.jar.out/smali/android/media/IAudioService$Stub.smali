.class public abstract Landroid/media/IAudioService$Stub;
.super Landroid/os/Binder;
.source "IAudioService.java"

# interfaces
.implements Landroid/media/IAudioService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/IAudioService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/IAudioService$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.media.IAudioService"

.field static final TRANSACTION_abandonAudioFocus:I = 0x24

.field static final TRANSACTION_adjustStreamVolume:I = 0x2

.field static final TRANSACTION_adjustSuggestedStreamVolume:I = 0x1

.field static final TRANSACTION_avrcpSupportsAbsoluteVolume:I = 0x1c

.field static final TRANSACTION_disableSafeMediaVolume:I = 0x36

.field static final TRANSACTION_dismissVolumePanel:I = 0x46

.field static final TRANSACTION_forceRemoteSubmixFullVolume:I = 0x5

.field static final TRANSACTION_forceVolumeControlStream:I = 0x2a

.field static final TRANSACTION_getActiveRecordingConfigurations:I = 0x3f

.field static final TRANSACTION_getActiveStreamType:I = 0x43

.field static final TRANSACTION_getAppDevice:I = 0x55

.field static final TRANSACTION_getAppVolume:I = 0x57

.field static final TRANSACTION_getAudioServiceConfig:I = 0x4b

.field static final TRANSACTION_getCurrentAudioFocus:I = 0x26

.field static final TRANSACTION_getCurrentAudioFocusPackageName:I = 0x49

.field static final TRANSACTION_getLastAudibleStreamVolume:I = 0xb

.field static final TRANSACTION_getMediaAppList:I = 0x5f

.field static final TRANSACTION_getMode:I = 0x16

.field static final TRANSACTION_getMuteInterval:I = 0x50

.field static final TRANSACTION_getPinAppInfo:I = 0x5d

.field static final TRANSACTION_getPinDevice:I = 0x5e

.field static final TRANSACTION_getPrevRingerMode:I = 0x52

.field static final TRANSACTION_getPriorityDevice:I = 0x5a

.field static final TRANSACTION_getRemainingMuteIntervalMs:I = 0x51

.field static final TRANSACTION_getRingerModeExternal:I = 0xf

.field static final TRANSACTION_getRingerModeInternal:I = 0x10

.field static final TRANSACTION_getRingtonePlayer:I = 0x2c

.field static final TRANSACTION_getStreamMaxVolume:I = 0xa

.field static final TRANSACTION_getStreamMinVolume:I = 0x9

.field static final TRANSACTION_getStreamVolume:I = 0x8

.field static final TRANSACTION_getStreamVolumeForDevice:I = 0x5c

.field static final TRANSACTION_getTogether:I = 0x48

.field static final TRANSACTION_getUiSoundsStreamType:I = 0x2d

.field static final TRANSACTION_getUidForDevice:I = 0x53

.field static final TRANSACTION_getVibrateSetting:I = 0x13

.field static final TRANSACTION_isBluetoothA2dpOn:I = 0x22

.field static final TRANSACTION_isBluetoothScoOn:I = 0x20

.field static final TRANSACTION_isCameraSoundForced:I = 0x31

.field static final TRANSACTION_isForceSpeakerOn:I = 0x4d

.field static final TRANSACTION_isHdmiSystemAudioSupported:I = 0x38

.field static final TRANSACTION_isMasterMute:I = 0x6

.field static final TRANSACTION_isMediaSilentMode:I = 0x45

.field static final TRANSACTION_isMultiSoundOn:I = 0x59

.field static final TRANSACTION_isRadioSpeakerOn:I = 0x42

.field static final TRANSACTION_isSpeakerphoneOn:I = 0x1e

.field static final TRANSACTION_isStreamAffectedByMute:I = 0x35

.field static final TRANSACTION_isStreamAffectedByRingerMode:I = 0x34

.field static final TRANSACTION_isStreamMute:I = 0x4

.field static final TRANSACTION_isValidRingerMode:I = 0x11

.field static final TRANSACTION_loadSoundEffects:I = 0x19

.field static final TRANSACTION_notifyVolumeControllerVisible:I = 0x33

.field static final TRANSACTION_playSoundEffect:I = 0x17

.field static final TRANSACTION_playSoundEffectVolume:I = 0x18

.field static final TRANSACTION_registerAudioPolicy:I = 0x39

.field static final TRANSACTION_registerRecordingCallback:I = 0x3d

.field static final TRANSACTION_reloadAudioSettings:I = 0x1b

.field static final TRANSACTION_requestAudioFocus:I = 0x23

.field static final TRANSACTION_setAppDevice:I = 0x54

.field static final TRANSACTION_setAppVolume:I = 0x56

.field static final TRANSACTION_setAudioServiceConfig:I = 0x4a

.field static final TRANSACTION_setBluetoothA2dpDeviceConnectionState:I = 0x2f

.field static final TRANSACTION_setBluetoothA2dpOn:I = 0x21

.field static final TRANSACTION_setBluetoothScoOn:I = 0x1f

.field static final TRANSACTION_setDeviceToForceByUser:I = 0x4e

.field static final TRANSACTION_setFocusPropertiesForPolicy:I = 0x3b

.field static final TRANSACTION_setForceSpeakerOn:I = 0x4c

.field static final TRANSACTION_setForceUseForMedia:I = 0x40

.field static final TRANSACTION_setHdmiSystemAudioSupported:I = 0x37

.field static final TRANSACTION_setMasterMute:I = 0x7

.field static final TRANSACTION_setMediaSilentMode:I = 0x44

.field static final TRANSACTION_setMicrophoneMute:I = 0xc

.field static final TRANSACTION_setMode:I = 0x15

.field static final TRANSACTION_setMultiSoundOn:I = 0x58

.field static final TRANSACTION_setMuteInterval:I = 0x4f

.field static final TRANSACTION_setRadioSpeakerOn:I = 0x41

.field static final TRANSACTION_setRingerModeExternal:I = 0xd

.field static final TRANSACTION_setRingerModeInternal:I = 0xe

.field static final TRANSACTION_setRingtonePlayer:I = 0x2b

.field static final TRANSACTION_setSpeakerphoneOn:I = 0x1d

.field static final TRANSACTION_setStreamVolume:I = 0x3

.field static final TRANSACTION_setStreamVolumeForDevice:I = 0x5b

.field static final TRANSACTION_setTogether:I = 0x47

.field static final TRANSACTION_setVibrateSetting:I = 0x12

.field static final TRANSACTION_setVolumeController:I = 0x32

.field static final TRANSACTION_setVolumePolicy:I = 0x3c

.field static final TRANSACTION_setWiredDeviceConnectionState:I = 0x2e

.field static final TRANSACTION_shouldVibrate:I = 0x14

.field static final TRANSACTION_startBluetoothSco:I = 0x27

.field static final TRANSACTION_startBluetoothScoVirtualCall:I = 0x28

.field static final TRANSACTION_startWatchingRoutes:I = 0x30

.field static final TRANSACTION_stopBluetoothSco:I = 0x29

.field static final TRANSACTION_unloadSoundEffects:I = 0x1a

.field static final TRANSACTION_unregisterAudioFocusClient:I = 0x25

.field static final TRANSACTION_unregisterAudioPolicyAsync:I = 0x3a

.field static final TRANSACTION_unregisterRecordingCallback:I = 0x3e


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 16
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 18
    const-string/jumbo v0, "android.media.IAudioService"

    invoke-virtual {p0, p0, v0}, Landroid/media/IAudioService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 16
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/media/IAudioService;
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
    const-string/jumbo v1, "android.media.IAudioService"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 30
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/media/IAudioService;

    if-eqz v1, :cond_1

    .line 31
    check-cast v0, Landroid/media/IAudioService;

    .end local v0    # "iin":Landroid/os/IInterface;
    return-object v0

    .line 33
    .restart local v0    # "iin":Landroid/os/IInterface;
    :cond_1
    new-instance v1, Landroid/media/IAudioService$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/media/IAudioService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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
    .locals 56
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

    .line 1028
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v4

    return v4

    .line 45
    :sswitch_0
    const-string/jumbo v4, "android.media.IAudioService"

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 46
    const/4 v4, 0x1

    return v4

    .line 50
    :sswitch_1
    const-string/jumbo v4, "android.media.IAudioService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 52
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 54
    .local v5, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 56
    .local v6, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 58
    .local v7, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 60
    .local v8, "_arg3":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v9

    .local v9, "_arg4":Ljava/lang/String;
    move-object/from16 v4, p0

    .line 61
    invoke-virtual/range {v4 .. v9}, Landroid/media/IAudioService$Stub;->adjustSuggestedStreamVolume(IIILjava/lang/String;Ljava/lang/String;)V

    .line 62
    const/4 v4, 0x1

    return v4

    .line 66
    .end local v5    # "_arg0":I
    .end local v6    # "_arg1":I
    .end local v7    # "_arg2":I
    .end local v8    # "_arg3":Ljava/lang/String;
    .end local v9    # "_arg4":Ljava/lang/String;
    :sswitch_2
    const-string/jumbo v4, "android.media.IAudioService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 68
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 70
    .restart local v5    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 72
    .restart local v6    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 74
    .restart local v7    # "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 75
    .restart local v8    # "_arg3":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6, v7, v8}, Landroid/media/IAudioService$Stub;->adjustStreamVolume(IIILjava/lang/String;)V

    .line 76
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 77
    const/4 v4, 0x1

    return v4

    .line 81
    .end local v5    # "_arg0":I
    .end local v6    # "_arg1":I
    .end local v7    # "_arg2":I
    .end local v8    # "_arg3":Ljava/lang/String;
    :sswitch_3
    const-string/jumbo v4, "android.media.IAudioService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 83
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 85
    .restart local v5    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 87
    .restart local v6    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 89
    .restart local v7    # "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 90
    .restart local v8    # "_arg3":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6, v7, v8}, Landroid/media/IAudioService$Stub;->setStreamVolume(IIILjava/lang/String;)V

    .line 91
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 92
    const/4 v4, 0x1

    return v4

    .line 96
    .end local v5    # "_arg0":I
    .end local v6    # "_arg1":I
    .end local v7    # "_arg2":I
    .end local v8    # "_arg3":Ljava/lang/String;
    :sswitch_4
    const-string/jumbo v4, "android.media.IAudioService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 98
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 99
    .restart local v5    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/media/IAudioService$Stub;->isStreamMute(I)Z

    move-result v54

    .line 100
    .local v54, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 101
    if-eqz v54, :cond_0

    const/4 v4, 0x1

    :goto_0
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 102
    const/4 v4, 0x1

    return v4

    .line 101
    :cond_0
    const/4 v4, 0x0

    goto :goto_0

    .line 106
    .end local v5    # "_arg0":I
    .end local v54    # "_result":Z
    :sswitch_5
    const-string/jumbo v4, "android.media.IAudioService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 108
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_1

    const/16 v40, 0x1

    .line 110
    .local v40, "_arg0":Z
    :goto_1
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v43

    .line 111
    .local v43, "_arg1":Landroid/os/IBinder;
    move-object/from16 v0, p0

    move/from16 v1, v40

    move-object/from16 v2, v43

    invoke-virtual {v0, v1, v2}, Landroid/media/IAudioService$Stub;->forceRemoteSubmixFullVolume(ZLandroid/os/IBinder;)V

    .line 112
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 113
    const/4 v4, 0x1

    return v4

    .line 108
    .end local v40    # "_arg0":Z
    .end local v43    # "_arg1":Landroid/os/IBinder;
    :cond_1
    const/16 v40, 0x0

    .restart local v40    # "_arg0":Z
    goto :goto_1

    .line 117
    .end local v40    # "_arg0":Z
    :sswitch_6
    const-string/jumbo v4, "android.media.IAudioService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 118
    invoke-virtual/range {p0 .. p0}, Landroid/media/IAudioService$Stub;->isMasterMute()Z

    move-result v54

    .line 119
    .restart local v54    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 120
    if-eqz v54, :cond_2

    const/4 v4, 0x1

    :goto_2
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 121
    const/4 v4, 0x1

    return v4

    .line 120
    :cond_2
    const/4 v4, 0x0

    goto :goto_2

    .line 125
    .end local v54    # "_result":Z
    :sswitch_7
    const-string/jumbo v4, "android.media.IAudioService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 127
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_3

    const/16 v40, 0x1

    .line 129
    .restart local v40    # "_arg0":Z
    :goto_3
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 131
    .restart local v6    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v22

    .line 133
    .local v22, "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v48

    .line 134
    .local v48, "_arg3":I
    move-object/from16 v0, p0

    move/from16 v1, v40

    move-object/from16 v2, v22

    move/from16 v3, v48

    invoke-virtual {v0, v1, v6, v2, v3}, Landroid/media/IAudioService$Stub;->setMasterMute(ZILjava/lang/String;I)V

    .line 135
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 136
    const/4 v4, 0x1

    return v4

    .line 127
    .end local v6    # "_arg1":I
    .end local v22    # "_arg2":Ljava/lang/String;
    .end local v40    # "_arg0":Z
    .end local v48    # "_arg3":I
    :cond_3
    const/16 v40, 0x0

    .restart local v40    # "_arg0":Z
    goto :goto_3

    .line 140
    .end local v40    # "_arg0":Z
    :sswitch_8
    const-string/jumbo v4, "android.media.IAudioService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 142
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 143
    .restart local v5    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/media/IAudioService$Stub;->getStreamVolume(I)I

    move-result v49

    .line 144
    .local v49, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 145
    move-object/from16 v0, p3

    move/from16 v1, v49

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 146
    const/4 v4, 0x1

    return v4

    .line 150
    .end local v5    # "_arg0":I
    .end local v49    # "_result":I
    :sswitch_9
    const-string/jumbo v4, "android.media.IAudioService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 152
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 153
    .restart local v5    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/media/IAudioService$Stub;->getStreamMinVolume(I)I

    move-result v49

    .line 154
    .restart local v49    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 155
    move-object/from16 v0, p3

    move/from16 v1, v49

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 156
    const/4 v4, 0x1

    return v4

    .line 160
    .end local v5    # "_arg0":I
    .end local v49    # "_result":I
    :sswitch_a
    const-string/jumbo v4, "android.media.IAudioService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 162
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 163
    .restart local v5    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/media/IAudioService$Stub;->getStreamMaxVolume(I)I

    move-result v49

    .line 164
    .restart local v49    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 165
    move-object/from16 v0, p3

    move/from16 v1, v49

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 166
    const/4 v4, 0x1

    return v4

    .line 170
    .end local v5    # "_arg0":I
    .end local v49    # "_result":I
    :sswitch_b
    const-string/jumbo v4, "android.media.IAudioService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 172
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 173
    .restart local v5    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/media/IAudioService$Stub;->getLastAudibleStreamVolume(I)I

    move-result v49

    .line 174
    .restart local v49    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 175
    move-object/from16 v0, p3

    move/from16 v1, v49

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 176
    const/4 v4, 0x1

    return v4

    .line 180
    .end local v5    # "_arg0":I
    .end local v49    # "_result":I
    :sswitch_c
    const-string/jumbo v4, "android.media.IAudioService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 182
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_4

    const/16 v40, 0x1

    .line 184
    .restart local v40    # "_arg0":Z
    :goto_4
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v44

    .line 186
    .local v44, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 187
    .restart local v7    # "_arg2":I
    move-object/from16 v0, p0

    move/from16 v1, v40

    move-object/from16 v2, v44

    invoke-virtual {v0, v1, v2, v7}, Landroid/media/IAudioService$Stub;->setMicrophoneMute(ZLjava/lang/String;I)V

    .line 188
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 189
    const/4 v4, 0x1

    return v4

    .line 182
    .end local v7    # "_arg2":I
    .end local v40    # "_arg0":Z
    .end local v44    # "_arg1":Ljava/lang/String;
    :cond_4
    const/16 v40, 0x0

    .restart local v40    # "_arg0":Z
    goto :goto_4

    .line 193
    .end local v40    # "_arg0":Z
    :sswitch_d
    const-string/jumbo v4, "android.media.IAudioService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 195
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 197
    .restart local v5    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v44

    .line 198
    .restart local v44    # "_arg1":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v44

    invoke-virtual {v0, v5, v1}, Landroid/media/IAudioService$Stub;->setRingerModeExternal(ILjava/lang/String;)V

    .line 199
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 200
    const/4 v4, 0x1

    return v4

    .line 204
    .end local v5    # "_arg0":I
    .end local v44    # "_arg1":Ljava/lang/String;
    :sswitch_e
    const-string/jumbo v4, "android.media.IAudioService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 206
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 208
    .restart local v5    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v44

    .line 209
    .restart local v44    # "_arg1":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v44

    invoke-virtual {v0, v5, v1}, Landroid/media/IAudioService$Stub;->setRingerModeInternal(ILjava/lang/String;)V

    .line 210
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 211
    const/4 v4, 0x1

    return v4

    .line 215
    .end local v5    # "_arg0":I
    .end local v44    # "_arg1":Ljava/lang/String;
    :sswitch_f
    const-string/jumbo v4, "android.media.IAudioService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 216
    invoke-virtual/range {p0 .. p0}, Landroid/media/IAudioService$Stub;->getRingerModeExternal()I

    move-result v49

    .line 217
    .restart local v49    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 218
    move-object/from16 v0, p3

    move/from16 v1, v49

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 219
    const/4 v4, 0x1

    return v4

    .line 223
    .end local v49    # "_result":I
    :sswitch_10
    const-string/jumbo v4, "android.media.IAudioService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 224
    invoke-virtual/range {p0 .. p0}, Landroid/media/IAudioService$Stub;->getRingerModeInternal()I

    move-result v49

    .line 225
    .restart local v49    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 226
    move-object/from16 v0, p3

    move/from16 v1, v49

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 227
    const/4 v4, 0x1

    return v4

    .line 231
    .end local v49    # "_result":I
    :sswitch_11
    const-string/jumbo v4, "android.media.IAudioService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 233
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 234
    .restart local v5    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/media/IAudioService$Stub;->isValidRingerMode(I)Z

    move-result v54

    .line 235
    .restart local v54    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 236
    if-eqz v54, :cond_5

    const/4 v4, 0x1

    :goto_5
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 237
    const/4 v4, 0x1

    return v4

    .line 236
    :cond_5
    const/4 v4, 0x0

    goto :goto_5

    .line 241
    .end local v5    # "_arg0":I
    .end local v54    # "_result":Z
    :sswitch_12
    const-string/jumbo v4, "android.media.IAudioService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 243
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 245
    .restart local v5    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 246
    .restart local v6    # "_arg1":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6}, Landroid/media/IAudioService$Stub;->setVibrateSetting(II)V

    .line 247
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 248
    const/4 v4, 0x1

    return v4

    .line 252
    .end local v5    # "_arg0":I
    .end local v6    # "_arg1":I
    :sswitch_13
    const-string/jumbo v4, "android.media.IAudioService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 254
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 255
    .restart local v5    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/media/IAudioService$Stub;->getVibrateSetting(I)I

    move-result v49

    .line 256
    .restart local v49    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 257
    move-object/from16 v0, p3

    move/from16 v1, v49

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 258
    const/4 v4, 0x1

    return v4

    .line 262
    .end local v5    # "_arg0":I
    .end local v49    # "_result":I
    :sswitch_14
    const-string/jumbo v4, "android.media.IAudioService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 264
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 265
    .restart local v5    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/media/IAudioService$Stub;->shouldVibrate(I)Z

    move-result v54

    .line 266
    .restart local v54    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 267
    if-eqz v54, :cond_6

    const/4 v4, 0x1

    :goto_6
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 268
    const/4 v4, 0x1

    return v4

    .line 267
    :cond_6
    const/4 v4, 0x0

    goto :goto_6

    .line 272
    .end local v5    # "_arg0":I
    .end local v54    # "_result":Z
    :sswitch_15
    const-string/jumbo v4, "android.media.IAudioService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 274
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 276
    .restart local v5    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v43

    .line 278
    .restart local v43    # "_arg1":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v22

    .line 279
    .restart local v22    # "_arg2":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v43

    move-object/from16 v2, v22

    invoke-virtual {v0, v5, v1, v2}, Landroid/media/IAudioService$Stub;->setMode(ILandroid/os/IBinder;Ljava/lang/String;)V

    .line 280
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 281
    const/4 v4, 0x1

    return v4

    .line 285
    .end local v5    # "_arg0":I
    .end local v22    # "_arg2":Ljava/lang/String;
    .end local v43    # "_arg1":Landroid/os/IBinder;
    :sswitch_16
    const-string/jumbo v4, "android.media.IAudioService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 286
    invoke-virtual/range {p0 .. p0}, Landroid/media/IAudioService$Stub;->getMode()I

    move-result v49

    .line 287
    .restart local v49    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 288
    move-object/from16 v0, p3

    move/from16 v1, v49

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 289
    const/4 v4, 0x1

    return v4

    .line 293
    .end local v49    # "_result":I
    :sswitch_17
    const-string/jumbo v4, "android.media.IAudioService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 295
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 296
    .restart local v5    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/media/IAudioService$Stub;->playSoundEffect(I)V

    .line 297
    const/4 v4, 0x1

    return v4

    .line 301
    .end local v5    # "_arg0":I
    :sswitch_18
    const-string/jumbo v4, "android.media.IAudioService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 303
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 305
    .restart local v5    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readFloat()F

    move-result v41

    .line 306
    .local v41, "_arg1":F
    move-object/from16 v0, p0

    move/from16 v1, v41

    invoke-virtual {v0, v5, v1}, Landroid/media/IAudioService$Stub;->playSoundEffectVolume(IF)V

    .line 307
    const/4 v4, 0x1

    return v4

    .line 311
    .end local v5    # "_arg0":I
    .end local v41    # "_arg1":F
    :sswitch_19
    const-string/jumbo v4, "android.media.IAudioService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 312
    invoke-virtual/range {p0 .. p0}, Landroid/media/IAudioService$Stub;->loadSoundEffects()Z

    move-result v54

    .line 313
    .restart local v54    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 314
    if-eqz v54, :cond_7

    const/4 v4, 0x1

    :goto_7
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 315
    const/4 v4, 0x1

    return v4

    .line 314
    :cond_7
    const/4 v4, 0x0

    goto :goto_7

    .line 319
    .end local v54    # "_result":Z
    :sswitch_1a
    const-string/jumbo v4, "android.media.IAudioService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 320
    invoke-virtual/range {p0 .. p0}, Landroid/media/IAudioService$Stub;->unloadSoundEffects()V

    .line 321
    const/4 v4, 0x1

    return v4

    .line 325
    :sswitch_1b
    const-string/jumbo v4, "android.media.IAudioService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 326
    invoke-virtual/range {p0 .. p0}, Landroid/media/IAudioService$Stub;->reloadAudioSettings()V

    .line 327
    const/4 v4, 0x1

    return v4

    .line 331
    :sswitch_1c
    const-string/jumbo v4, "android.media.IAudioService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 333
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v39

    .line 335
    .local v39, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_8

    const/16 v45, 0x1

    .line 336
    .local v45, "_arg1":Z
    :goto_8
    move-object/from16 v0, p0

    move-object/from16 v1, v39

    move/from16 v2, v45

    invoke-virtual {v0, v1, v2}, Landroid/media/IAudioService$Stub;->avrcpSupportsAbsoluteVolume(Ljava/lang/String;Z)V

    .line 337
    const/4 v4, 0x1

    return v4

    .line 335
    .end local v45    # "_arg1":Z
    :cond_8
    const/16 v45, 0x0

    goto :goto_8

    .line 341
    .end local v39    # "_arg0":Ljava/lang/String;
    :sswitch_1d
    const-string/jumbo v4, "android.media.IAudioService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 343
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_9

    const/16 v40, 0x1

    .line 344
    .local v40, "_arg0":Z
    :goto_9
    move-object/from16 v0, p0

    move/from16 v1, v40

    invoke-virtual {v0, v1}, Landroid/media/IAudioService$Stub;->setSpeakerphoneOn(Z)V

    .line 345
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 346
    const/4 v4, 0x1

    return v4

    .line 343
    .end local v40    # "_arg0":Z
    :cond_9
    const/16 v40, 0x0

    goto :goto_9

    .line 350
    :sswitch_1e
    const-string/jumbo v4, "android.media.IAudioService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 351
    invoke-virtual/range {p0 .. p0}, Landroid/media/IAudioService$Stub;->isSpeakerphoneOn()Z

    move-result v54

    .line 352
    .restart local v54    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 353
    if-eqz v54, :cond_a

    const/4 v4, 0x1

    :goto_a
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 354
    const/4 v4, 0x1

    return v4

    .line 353
    :cond_a
    const/4 v4, 0x0

    goto :goto_a

    .line 358
    .end local v54    # "_result":Z
    :sswitch_1f
    const-string/jumbo v4, "android.media.IAudioService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 360
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_b

    const/16 v40, 0x1

    .line 361
    .restart local v40    # "_arg0":Z
    :goto_b
    move-object/from16 v0, p0

    move/from16 v1, v40

    invoke-virtual {v0, v1}, Landroid/media/IAudioService$Stub;->setBluetoothScoOn(Z)V

    .line 362
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 363
    const/4 v4, 0x1

    return v4

    .line 360
    .end local v40    # "_arg0":Z
    :cond_b
    const/16 v40, 0x0

    goto :goto_b

    .line 367
    :sswitch_20
    const-string/jumbo v4, "android.media.IAudioService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 368
    invoke-virtual/range {p0 .. p0}, Landroid/media/IAudioService$Stub;->isBluetoothScoOn()Z

    move-result v54

    .line 369
    .restart local v54    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 370
    if-eqz v54, :cond_c

    const/4 v4, 0x1

    :goto_c
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 371
    const/4 v4, 0x1

    return v4

    .line 370
    :cond_c
    const/4 v4, 0x0

    goto :goto_c

    .line 375
    .end local v54    # "_result":Z
    :sswitch_21
    const-string/jumbo v4, "android.media.IAudioService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 377
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_d

    const/16 v40, 0x1

    .line 378
    .restart local v40    # "_arg0":Z
    :goto_d
    move-object/from16 v0, p0

    move/from16 v1, v40

    invoke-virtual {v0, v1}, Landroid/media/IAudioService$Stub;->setBluetoothA2dpOn(Z)V

    .line 379
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 380
    const/4 v4, 0x1

    return v4

    .line 377
    .end local v40    # "_arg0":Z
    :cond_d
    const/16 v40, 0x0

    goto :goto_d

    .line 384
    :sswitch_22
    const-string/jumbo v4, "android.media.IAudioService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 385
    invoke-virtual/range {p0 .. p0}, Landroid/media/IAudioService$Stub;->isBluetoothA2dpOn()Z

    move-result v54

    .line 386
    .restart local v54    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 387
    if-eqz v54, :cond_e

    const/4 v4, 0x1

    :goto_e
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 388
    const/4 v4, 0x1

    return v4

    .line 387
    :cond_e
    const/4 v4, 0x0

    goto :goto_e

    .line 392
    .end local v54    # "_result":Z
    :sswitch_23
    const-string/jumbo v4, "android.media.IAudioService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 394
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_f

    .line 395
    sget-object v4, Landroid/media/AudioAttributes;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/media/AudioAttributes;

    .line 401
    :goto_f
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 403
    .restart local v6    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v13

    .line 405
    .local v13, "_arg2":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Landroid/media/IAudioFocusDispatcher$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/IAudioFocusDispatcher;

    move-result-object v14

    .line 407
    .local v14, "_arg3":Landroid/media/IAudioFocusDispatcher;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v9

    .line 409
    .restart local v9    # "_arg4":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v16

    .line 411
    .local v16, "_arg5":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    .line 413
    .local v17, "_arg6":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Landroid/media/audiopolicy/IAudioPolicyCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/audiopolicy/IAudioPolicyCallback;

    move-result-object v18

    .local v18, "_arg7":Landroid/media/audiopolicy/IAudioPolicyCallback;
    move-object/from16 v10, p0

    move v12, v6

    move-object v15, v9

    .line 414
    invoke-virtual/range {v10 .. v18}, Landroid/media/IAudioService$Stub;->requestAudioFocus(Landroid/media/AudioAttributes;ILandroid/os/IBinder;Landroid/media/IAudioFocusDispatcher;Ljava/lang/String;Ljava/lang/String;ILandroid/media/audiopolicy/IAudioPolicyCallback;)I

    move-result v49

    .line 415
    .restart local v49    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 416
    move-object/from16 v0, p3

    move/from16 v1, v49

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 417
    const/4 v4, 0x1

    return v4

    .line 398
    .end local v6    # "_arg1":I
    .end local v9    # "_arg4":Ljava/lang/String;
    .end local v13    # "_arg2":Landroid/os/IBinder;
    .end local v14    # "_arg3":Landroid/media/IAudioFocusDispatcher;
    .end local v16    # "_arg5":Ljava/lang/String;
    .end local v17    # "_arg6":I
    .end local v18    # "_arg7":Landroid/media/audiopolicy/IAudioPolicyCallback;
    .end local v49    # "_result":I
    :cond_f
    const/4 v11, 0x0

    .local v11, "_arg0":Landroid/media/AudioAttributes;
    goto :goto_f

    .line 421
    .end local v11    # "_arg0":Landroid/media/AudioAttributes;
    :sswitch_24
    const-string/jumbo v4, "android.media.IAudioService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 423
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Landroid/media/IAudioFocusDispatcher$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/IAudioFocusDispatcher;

    move-result-object v30

    .line 425
    .local v30, "_arg0":Landroid/media/IAudioFocusDispatcher;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v44

    .line 427
    .restart local v44    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_10

    .line 428
    sget-object v4, Landroid/media/AudioAttributes;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v46

    check-cast v46, Landroid/media/AudioAttributes;

    .line 433
    :goto_10
    move-object/from16 v0, p0

    move-object/from16 v1, v30

    move-object/from16 v2, v44

    move-object/from16 v3, v46

    invoke-virtual {v0, v1, v2, v3}, Landroid/media/IAudioService$Stub;->abandonAudioFocus(Landroid/media/IAudioFocusDispatcher;Ljava/lang/String;Landroid/media/AudioAttributes;)I

    move-result v49

    .line 434
    .restart local v49    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 435
    move-object/from16 v0, p3

    move/from16 v1, v49

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 436
    const/4 v4, 0x1

    return v4

    .line 431
    .end local v49    # "_result":I
    :cond_10
    const/16 v46, 0x0

    .local v46, "_arg2":Landroid/media/AudioAttributes;
    goto :goto_10

    .line 440
    .end local v30    # "_arg0":Landroid/media/IAudioFocusDispatcher;
    .end local v44    # "_arg1":Ljava/lang/String;
    .end local v46    # "_arg2":Landroid/media/AudioAttributes;
    :sswitch_25
    const-string/jumbo v4, "android.media.IAudioService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 442
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v39

    .line 443
    .restart local v39    # "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Landroid/media/IAudioService$Stub;->unregisterAudioFocusClient(Ljava/lang/String;)V

    .line 444
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 445
    const/4 v4, 0x1

    return v4

    .line 449
    .end local v39    # "_arg0":Ljava/lang/String;
    :sswitch_26
    const-string/jumbo v4, "android.media.IAudioService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 450
    invoke-virtual/range {p0 .. p0}, Landroid/media/IAudioService$Stub;->getCurrentAudioFocus()I

    move-result v49

    .line 451
    .restart local v49    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 452
    move-object/from16 v0, p3

    move/from16 v1, v49

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 453
    const/4 v4, 0x1

    return v4

    .line 457
    .end local v49    # "_result":I
    :sswitch_27
    const-string/jumbo v4, "android.media.IAudioService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 459
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v38

    .line 461
    .local v38, "_arg0":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 462
    .restart local v6    # "_arg1":I
    move-object/from16 v0, p0

    move-object/from16 v1, v38

    invoke-virtual {v0, v1, v6}, Landroid/media/IAudioService$Stub;->startBluetoothSco(Landroid/os/IBinder;I)V

    .line 463
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 464
    const/4 v4, 0x1

    return v4

    .line 468
    .end local v6    # "_arg1":I
    .end local v38    # "_arg0":Landroid/os/IBinder;
    :sswitch_28
    const-string/jumbo v4, "android.media.IAudioService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 470
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v38

    .line 471
    .restart local v38    # "_arg0":Landroid/os/IBinder;
    move-object/from16 v0, p0

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Landroid/media/IAudioService$Stub;->startBluetoothScoVirtualCall(Landroid/os/IBinder;)V

    .line 472
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 473
    const/4 v4, 0x1

    return v4

    .line 477
    .end local v38    # "_arg0":Landroid/os/IBinder;
    :sswitch_29
    const-string/jumbo v4, "android.media.IAudioService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 479
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v38

    .line 480
    .restart local v38    # "_arg0":Landroid/os/IBinder;
    move-object/from16 v0, p0

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Landroid/media/IAudioService$Stub;->stopBluetoothSco(Landroid/os/IBinder;)V

    .line 481
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 482
    const/4 v4, 0x1

    return v4

    .line 486
    .end local v38    # "_arg0":Landroid/os/IBinder;
    :sswitch_2a
    const-string/jumbo v4, "android.media.IAudioService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 488
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 490
    .restart local v5    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v43

    .line 491
    .restart local v43    # "_arg1":Landroid/os/IBinder;
    move-object/from16 v0, p0

    move-object/from16 v1, v43

    invoke-virtual {v0, v5, v1}, Landroid/media/IAudioService$Stub;->forceVolumeControlStream(ILandroid/os/IBinder;)V

    .line 492
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 493
    const/4 v4, 0x1

    return v4

    .line 497
    .end local v5    # "_arg0":I
    .end local v43    # "_arg1":Landroid/os/IBinder;
    :sswitch_2b
    const-string/jumbo v4, "android.media.IAudioService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 499
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Landroid/media/IRingtonePlayer$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/IRingtonePlayer;

    move-result-object v33

    .line 500
    .local v33, "_arg0":Landroid/media/IRingtonePlayer;
    move-object/from16 v0, p0

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Landroid/media/IAudioService$Stub;->setRingtonePlayer(Landroid/media/IRingtonePlayer;)V

    .line 501
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 502
    const/4 v4, 0x1

    return v4

    .line 506
    .end local v33    # "_arg0":Landroid/media/IRingtonePlayer;
    :sswitch_2c
    const-string/jumbo v4, "android.media.IAudioService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 507
    invoke-virtual/range {p0 .. p0}, Landroid/media/IAudioService$Stub;->getRingtonePlayer()Landroid/media/IRingtonePlayer;

    move-result-object v51

    .line 508
    .local v51, "_result":Landroid/media/IRingtonePlayer;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 509
    if-eqz v51, :cond_11

    invoke-interface/range {v51 .. v51}, Landroid/media/IRingtonePlayer;->asBinder()Landroid/os/IBinder;

    move-result-object v4

    :goto_11
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 510
    const/4 v4, 0x1

    return v4

    .line 509
    :cond_11
    const/4 v4, 0x0

    goto :goto_11

    .line 514
    .end local v51    # "_result":Landroid/media/IRingtonePlayer;
    :sswitch_2d
    const-string/jumbo v4, "android.media.IAudioService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 515
    invoke-virtual/range {p0 .. p0}, Landroid/media/IAudioService$Stub;->getUiSoundsStreamType()I

    move-result v49

    .line 516
    .restart local v49    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 517
    move-object/from16 v0, p3

    move/from16 v1, v49

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 518
    const/4 v4, 0x1

    return v4

    .line 522
    .end local v49    # "_result":I
    :sswitch_2e
    const-string/jumbo v4, "android.media.IAudioService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 524
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 526
    .restart local v5    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 528
    .restart local v6    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v22

    .line 530
    .restart local v22    # "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 532
    .restart local v8    # "_arg3":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v9

    .restart local v9    # "_arg4":Ljava/lang/String;
    move-object/from16 v19, p0

    move/from16 v20, v5

    move/from16 v21, v6

    move-object/from16 v23, v8

    move-object/from16 v24, v9

    .line 533
    invoke-virtual/range {v19 .. v24}, Landroid/media/IAudioService$Stub;->setWiredDeviceConnectionState(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 534
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 535
    const/4 v4, 0x1

    return v4

    .line 539
    .end local v5    # "_arg0":I
    .end local v6    # "_arg1":I
    .end local v8    # "_arg3":Ljava/lang/String;
    .end local v9    # "_arg4":Ljava/lang/String;
    .end local v22    # "_arg2":Ljava/lang/String;
    :sswitch_2f
    const-string/jumbo v4, "android.media.IAudioService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 541
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_12

    .line 542
    sget-object v4, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v29

    check-cast v29, Landroid/bluetooth/BluetoothDevice;

    .line 548
    :goto_12
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 550
    .restart local v6    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 551
    .restart local v7    # "_arg2":I
    move-object/from16 v0, p0

    move-object/from16 v1, v29

    invoke-virtual {v0, v1, v6, v7}, Landroid/media/IAudioService$Stub;->setBluetoothA2dpDeviceConnectionState(Landroid/bluetooth/BluetoothDevice;II)I

    move-result v49

    .line 552
    .restart local v49    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 553
    move-object/from16 v0, p3

    move/from16 v1, v49

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 554
    const/4 v4, 0x1

    return v4

    .line 545
    .end local v6    # "_arg1":I
    .end local v7    # "_arg2":I
    .end local v49    # "_result":I
    :cond_12
    const/16 v29, 0x0

    .local v29, "_arg0":Landroid/bluetooth/BluetoothDevice;
    goto :goto_12

    .line 558
    .end local v29    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    :sswitch_30
    const-string/jumbo v4, "android.media.IAudioService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 560
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Landroid/media/IAudioRoutesObserver$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/IAudioRoutesObserver;

    move-result-object v31

    .line 561
    .local v31, "_arg0":Landroid/media/IAudioRoutesObserver;
    move-object/from16 v0, p0

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Landroid/media/IAudioService$Stub;->startWatchingRoutes(Landroid/media/IAudioRoutesObserver;)Landroid/media/AudioRoutesInfo;

    move-result-object v50

    .line 562
    .local v50, "_result":Landroid/media/AudioRoutesInfo;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 563
    if-eqz v50, :cond_13

    .line 564
    const/4 v4, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 565
    const/4 v4, 0x1

    move-object/from16 v0, v50

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v4}, Landroid/media/AudioRoutesInfo;->writeToParcel(Landroid/os/Parcel;I)V

    .line 570
    :goto_13
    const/4 v4, 0x1

    return v4

    .line 568
    :cond_13
    const/4 v4, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_13

    .line 574
    .end local v31    # "_arg0":Landroid/media/IAudioRoutesObserver;
    .end local v50    # "_result":Landroid/media/AudioRoutesInfo;
    :sswitch_31
    const-string/jumbo v4, "android.media.IAudioService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 575
    invoke-virtual/range {p0 .. p0}, Landroid/media/IAudioService$Stub;->isCameraSoundForced()Z

    move-result v54

    .line 576
    .restart local v54    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 577
    if-eqz v54, :cond_14

    const/4 v4, 0x1

    :goto_14
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 578
    const/4 v4, 0x1

    return v4

    .line 577
    :cond_14
    const/4 v4, 0x0

    goto :goto_14

    .line 582
    .end local v54    # "_result":Z
    :sswitch_32
    const-string/jumbo v4, "android.media.IAudioService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 584
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Landroid/media/IVolumeController$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/IVolumeController;

    move-result-object v34

    .line 585
    .local v34, "_arg0":Landroid/media/IVolumeController;
    move-object/from16 v0, p0

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Landroid/media/IAudioService$Stub;->setVolumeController(Landroid/media/IVolumeController;)V

    .line 586
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 587
    const/4 v4, 0x1

    return v4

    .line 591
    .end local v34    # "_arg0":Landroid/media/IVolumeController;
    :sswitch_33
    const-string/jumbo v4, "android.media.IAudioService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 593
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Landroid/media/IVolumeController$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/IVolumeController;

    move-result-object v34

    .line 595
    .restart local v34    # "_arg0":Landroid/media/IVolumeController;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_15

    const/16 v45, 0x1

    .line 596
    .restart local v45    # "_arg1":Z
    :goto_15
    move-object/from16 v0, p0

    move-object/from16 v1, v34

    move/from16 v2, v45

    invoke-virtual {v0, v1, v2}, Landroid/media/IAudioService$Stub;->notifyVolumeControllerVisible(Landroid/media/IVolumeController;Z)V

    .line 597
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 598
    const/4 v4, 0x1

    return v4

    .line 595
    .end local v45    # "_arg1":Z
    :cond_15
    const/16 v45, 0x0

    goto :goto_15

    .line 602
    .end local v34    # "_arg0":Landroid/media/IVolumeController;
    :sswitch_34
    const-string/jumbo v4, "android.media.IAudioService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 604
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 605
    .restart local v5    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/media/IAudioService$Stub;->isStreamAffectedByRingerMode(I)Z

    move-result v54

    .line 606
    .restart local v54    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 607
    if-eqz v54, :cond_16

    const/4 v4, 0x1

    :goto_16
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 608
    const/4 v4, 0x1

    return v4

    .line 607
    :cond_16
    const/4 v4, 0x0

    goto :goto_16

    .line 612
    .end local v5    # "_arg0":I
    .end local v54    # "_result":Z
    :sswitch_35
    const-string/jumbo v4, "android.media.IAudioService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 614
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 615
    .restart local v5    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/media/IAudioService$Stub;->isStreamAffectedByMute(I)Z

    move-result v54

    .line 616
    .restart local v54    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 617
    if-eqz v54, :cond_17

    const/4 v4, 0x1

    :goto_17
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 618
    const/4 v4, 0x1

    return v4

    .line 617
    :cond_17
    const/4 v4, 0x0

    goto :goto_17

    .line 622
    .end local v5    # "_arg0":I
    .end local v54    # "_result":Z
    :sswitch_36
    const-string/jumbo v4, "android.media.IAudioService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 624
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v39

    .line 625
    .restart local v39    # "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Landroid/media/IAudioService$Stub;->disableSafeMediaVolume(Ljava/lang/String;)V

    .line 626
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 627
    const/4 v4, 0x1

    return v4

    .line 631
    .end local v39    # "_arg0":Ljava/lang/String;
    :sswitch_37
    const-string/jumbo v4, "android.media.IAudioService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 633
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_18

    const/16 v40, 0x1

    .line 634
    .restart local v40    # "_arg0":Z
    :goto_18
    move-object/from16 v0, p0

    move/from16 v1, v40

    invoke-virtual {v0, v1}, Landroid/media/IAudioService$Stub;->setHdmiSystemAudioSupported(Z)I

    move-result v49

    .line 635
    .restart local v49    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 636
    move-object/from16 v0, p3

    move/from16 v1, v49

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 637
    const/4 v4, 0x1

    return v4

    .line 633
    .end local v40    # "_arg0":Z
    .end local v49    # "_result":I
    :cond_18
    const/16 v40, 0x0

    goto :goto_18

    .line 641
    :sswitch_38
    const-string/jumbo v4, "android.media.IAudioService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 642
    invoke-virtual/range {p0 .. p0}, Landroid/media/IAudioService$Stub;->isHdmiSystemAudioSupported()Z

    move-result v54

    .line 643
    .restart local v54    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 644
    if-eqz v54, :cond_19

    const/4 v4, 0x1

    :goto_19
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 645
    const/4 v4, 0x1

    return v4

    .line 644
    :cond_19
    const/4 v4, 0x0

    goto :goto_19

    .line 649
    .end local v54    # "_result":Z
    :sswitch_39
    const-string/jumbo v4, "android.media.IAudioService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 651
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_1a

    .line 652
    sget-object v4, Landroid/media/audiopolicy/AudioPolicyConfig;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v36

    check-cast v36, Landroid/media/audiopolicy/AudioPolicyConfig;

    .line 658
    :goto_1a
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Landroid/media/audiopolicy/IAudioPolicyCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/audiopolicy/IAudioPolicyCallback;

    move-result-object v42

    .line 660
    .local v42, "_arg1":Landroid/media/audiopolicy/IAudioPolicyCallback;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_1b

    const/16 v47, 0x1

    .line 661
    .local v47, "_arg2":Z
    :goto_1b
    move-object/from16 v0, p0

    move-object/from16 v1, v36

    move-object/from16 v2, v42

    move/from16 v3, v47

    invoke-virtual {v0, v1, v2, v3}, Landroid/media/IAudioService$Stub;->registerAudioPolicy(Landroid/media/audiopolicy/AudioPolicyConfig;Landroid/media/audiopolicy/IAudioPolicyCallback;Z)Ljava/lang/String;

    move-result-object v52

    .line 662
    .local v52, "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 663
    move-object/from16 v0, p3

    move-object/from16 v1, v52

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 664
    const/4 v4, 0x1

    return v4

    .line 655
    .end local v42    # "_arg1":Landroid/media/audiopolicy/IAudioPolicyCallback;
    .end local v47    # "_arg2":Z
    .end local v52    # "_result":Ljava/lang/String;
    :cond_1a
    const/16 v36, 0x0

    .local v36, "_arg0":Landroid/media/audiopolicy/AudioPolicyConfig;
    goto :goto_1a

    .line 660
    .end local v36    # "_arg0":Landroid/media/audiopolicy/AudioPolicyConfig;
    .restart local v42    # "_arg1":Landroid/media/audiopolicy/IAudioPolicyCallback;
    :cond_1b
    const/16 v47, 0x0

    goto :goto_1b

    .line 668
    .end local v42    # "_arg1":Landroid/media/audiopolicy/IAudioPolicyCallback;
    :sswitch_3a
    const-string/jumbo v4, "android.media.IAudioService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 670
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Landroid/media/audiopolicy/IAudioPolicyCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/audiopolicy/IAudioPolicyCallback;

    move-result-object v37

    .line 671
    .local v37, "_arg0":Landroid/media/audiopolicy/IAudioPolicyCallback;
    move-object/from16 v0, p0

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Landroid/media/IAudioService$Stub;->unregisterAudioPolicyAsync(Landroid/media/audiopolicy/IAudioPolicyCallback;)V

    .line 672
    const/4 v4, 0x1

    return v4

    .line 676
    .end local v37    # "_arg0":Landroid/media/audiopolicy/IAudioPolicyCallback;
    :sswitch_3b
    const-string/jumbo v4, "android.media.IAudioService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 678
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 680
    .restart local v5    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Landroid/media/audiopolicy/IAudioPolicyCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/audiopolicy/IAudioPolicyCallback;

    move-result-object v42

    .line 681
    .restart local v42    # "_arg1":Landroid/media/audiopolicy/IAudioPolicyCallback;
    move-object/from16 v0, p0

    move-object/from16 v1, v42

    invoke-virtual {v0, v5, v1}, Landroid/media/IAudioService$Stub;->setFocusPropertiesForPolicy(ILandroid/media/audiopolicy/IAudioPolicyCallback;)I

    move-result v49

    .line 682
    .restart local v49    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 683
    move-object/from16 v0, p3

    move/from16 v1, v49

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 684
    const/4 v4, 0x1

    return v4

    .line 688
    .end local v5    # "_arg0":I
    .end local v42    # "_arg1":Landroid/media/audiopolicy/IAudioPolicyCallback;
    .end local v49    # "_result":I
    :sswitch_3c
    const-string/jumbo v4, "android.media.IAudioService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 690
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_1c

    .line 691
    sget-object v4, Landroid/media/VolumePolicy;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v35

    check-cast v35, Landroid/media/VolumePolicy;

    .line 696
    :goto_1c
    move-object/from16 v0, p0

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Landroid/media/IAudioService$Stub;->setVolumePolicy(Landroid/media/VolumePolicy;)V

    .line 697
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 698
    const/4 v4, 0x1

    return v4

    .line 694
    :cond_1c
    const/16 v35, 0x0

    .local v35, "_arg0":Landroid/media/VolumePolicy;
    goto :goto_1c

    .line 702
    .end local v35    # "_arg0":Landroid/media/VolumePolicy;
    :sswitch_3d
    const-string/jumbo v4, "android.media.IAudioService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 704
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Landroid/media/IRecordingConfigDispatcher$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/IRecordingConfigDispatcher;

    move-result-object v32

    .line 705
    .local v32, "_arg0":Landroid/media/IRecordingConfigDispatcher;
    move-object/from16 v0, p0

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/media/IAudioService$Stub;->registerRecordingCallback(Landroid/media/IRecordingConfigDispatcher;)V

    .line 706
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 707
    const/4 v4, 0x1

    return v4

    .line 711
    .end local v32    # "_arg0":Landroid/media/IRecordingConfigDispatcher;
    :sswitch_3e
    const-string/jumbo v4, "android.media.IAudioService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 713
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Landroid/media/IRecordingConfigDispatcher$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/IRecordingConfigDispatcher;

    move-result-object v32

    .line 714
    .restart local v32    # "_arg0":Landroid/media/IRecordingConfigDispatcher;
    move-object/from16 v0, p0

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/media/IAudioService$Stub;->unregisterRecordingCallback(Landroid/media/IRecordingConfigDispatcher;)V

    .line 715
    const/4 v4, 0x1

    return v4

    .line 719
    .end local v32    # "_arg0":Landroid/media/IRecordingConfigDispatcher;
    :sswitch_3f
    const-string/jumbo v4, "android.media.IAudioService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 720
    invoke-virtual/range {p0 .. p0}, Landroid/media/IAudioService$Stub;->getActiveRecordingConfigurations()Ljava/util/List;

    move-result-object v53

    .line 721
    .local v53, "_result":Ljava/util/List;, "Ljava/util/List<Landroid/media/AudioRecordingConfiguration;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 722
    move-object/from16 v0, p3

    move-object/from16 v1, v53

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 723
    const/4 v4, 0x1

    return v4

    .line 727
    .end local v53    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/media/AudioRecordingConfiguration;>;"
    :sswitch_40
    const-string/jumbo v4, "android.media.IAudioService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 729
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 730
    .restart local v5    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/media/IAudioService$Stub;->setForceUseForMedia(I)V

    .line 731
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 732
    const/4 v4, 0x1

    return v4

    .line 736
    .end local v5    # "_arg0":I
    :sswitch_41
    const-string/jumbo v4, "android.media.IAudioService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 738
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_1d

    const/16 v40, 0x1

    .line 739
    .restart local v40    # "_arg0":Z
    :goto_1d
    move-object/from16 v0, p0

    move/from16 v1, v40

    invoke-virtual {v0, v1}, Landroid/media/IAudioService$Stub;->setRadioSpeakerOn(Z)V

    .line 740
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 741
    const/4 v4, 0x1

    return v4

    .line 738
    .end local v40    # "_arg0":Z
    :cond_1d
    const/16 v40, 0x0

    goto :goto_1d

    .line 745
    :sswitch_42
    const-string/jumbo v4, "android.media.IAudioService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 746
    invoke-virtual/range {p0 .. p0}, Landroid/media/IAudioService$Stub;->isRadioSpeakerOn()Z

    move-result v54

    .line 747
    .restart local v54    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 748
    if-eqz v54, :cond_1e

    const/4 v4, 0x1

    :goto_1e
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 749
    const/4 v4, 0x1

    return v4

    .line 748
    :cond_1e
    const/4 v4, 0x0

    goto :goto_1e

    .line 753
    .end local v54    # "_result":Z
    :sswitch_43
    const-string/jumbo v4, "android.media.IAudioService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 755
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 756
    .restart local v5    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/media/IAudioService$Stub;->getActiveStreamType(I)I

    move-result v49

    .line 757
    .restart local v49    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 758
    move-object/from16 v0, p3

    move/from16 v1, v49

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 759
    const/4 v4, 0x1

    return v4

    .line 763
    .end local v5    # "_arg0":I
    .end local v49    # "_result":I
    :sswitch_44
    const-string/jumbo v4, "android.media.IAudioService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 765
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_1f

    const/16 v40, 0x1

    .line 766
    .restart local v40    # "_arg0":Z
    :goto_1f
    move-object/from16 v0, p0

    move/from16 v1, v40

    invoke-virtual {v0, v1}, Landroid/media/IAudioService$Stub;->setMediaSilentMode(Z)V

    .line 767
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 768
    const/4 v4, 0x1

    return v4

    .line 765
    .end local v40    # "_arg0":Z
    :cond_1f
    const/16 v40, 0x0

    goto :goto_1f

    .line 772
    :sswitch_45
    const-string/jumbo v4, "android.media.IAudioService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 773
    invoke-virtual/range {p0 .. p0}, Landroid/media/IAudioService$Stub;->isMediaSilentMode()Z

    move-result v54

    .line 774
    .restart local v54    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 775
    if-eqz v54, :cond_20

    const/4 v4, 0x1

    :goto_20
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 776
    const/4 v4, 0x1

    return v4

    .line 775
    :cond_20
    const/4 v4, 0x0

    goto :goto_20

    .line 780
    .end local v54    # "_result":Z
    :sswitch_46
    const-string/jumbo v4, "android.media.IAudioService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 781
    invoke-virtual/range {p0 .. p0}, Landroid/media/IAudioService$Stub;->dismissVolumePanel()V

    .line 782
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 783
    const/4 v4, 0x1

    return v4

    .line 787
    :sswitch_47
    const-string/jumbo v4, "android.media.IAudioService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 789
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_21

    const/16 v40, 0x1

    .line 790
    .restart local v40    # "_arg0":Z
    :goto_21
    move-object/from16 v0, p0

    move/from16 v1, v40

    invoke-virtual {v0, v1}, Landroid/media/IAudioService$Stub;->setTogether(Z)V

    .line 791
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 792
    const/4 v4, 0x1

    return v4

    .line 789
    .end local v40    # "_arg0":Z
    :cond_21
    const/16 v40, 0x0

    goto :goto_21

    .line 796
    :sswitch_48
    const-string/jumbo v4, "android.media.IAudioService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 797
    invoke-virtual/range {p0 .. p0}, Landroid/media/IAudioService$Stub;->getTogether()Z

    move-result v54

    .line 798
    .restart local v54    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 799
    if-eqz v54, :cond_22

    const/4 v4, 0x1

    :goto_22
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 800
    const/4 v4, 0x1

    return v4

    .line 799
    :cond_22
    const/4 v4, 0x0

    goto :goto_22

    .line 804
    .end local v54    # "_result":Z
    :sswitch_49
    const-string/jumbo v4, "android.media.IAudioService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 805
    invoke-virtual/range {p0 .. p0}, Landroid/media/IAudioService$Stub;->getCurrentAudioFocusPackageName()Ljava/lang/String;

    move-result-object v52

    .line 806
    .restart local v52    # "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 807
    move-object/from16 v0, p3

    move-object/from16 v1, v52

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 808
    const/4 v4, 0x1

    return v4

    .line 812
    .end local v52    # "_result":Ljava/lang/String;
    :sswitch_4a
    const-string/jumbo v4, "android.media.IAudioService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 814
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v39

    .line 815
    .restart local v39    # "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Landroid/media/IAudioService$Stub;->setAudioServiceConfig(Ljava/lang/String;)V

    .line 816
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 817
    const/4 v4, 0x1

    return v4

    .line 821
    .end local v39    # "_arg0":Ljava/lang/String;
    :sswitch_4b
    const-string/jumbo v4, "android.media.IAudioService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 823
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v39

    .line 824
    .restart local v39    # "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Landroid/media/IAudioService$Stub;->getAudioServiceConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v52

    .line 825
    .restart local v52    # "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 826
    move-object/from16 v0, p3

    move-object/from16 v1, v52

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 827
    const/4 v4, 0x1

    return v4

    .line 831
    .end local v39    # "_arg0":Ljava/lang/String;
    .end local v52    # "_result":Ljava/lang/String;
    :sswitch_4c
    const-string/jumbo v4, "android.media.IAudioService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 833
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_23

    const/16 v40, 0x1

    .line 834
    .restart local v40    # "_arg0":Z
    :goto_23
    move-object/from16 v0, p0

    move/from16 v1, v40

    invoke-virtual {v0, v1}, Landroid/media/IAudioService$Stub;->setForceSpeakerOn(Z)V

    .line 835
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 836
    const/4 v4, 0x1

    return v4

    .line 833
    .end local v40    # "_arg0":Z
    :cond_23
    const/16 v40, 0x0

    goto :goto_23

    .line 840
    :sswitch_4d
    const-string/jumbo v4, "android.media.IAudioService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 841
    invoke-virtual/range {p0 .. p0}, Landroid/media/IAudioService$Stub;->isForceSpeakerOn()Z

    move-result v54

    .line 842
    .restart local v54    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 843
    if-eqz v54, :cond_24

    const/4 v4, 0x1

    :goto_24
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 844
    const/4 v4, 0x1

    return v4

    .line 843
    :cond_24
    const/4 v4, 0x0

    goto :goto_24

    .line 848
    .end local v54    # "_result":Z
    :sswitch_4e
    const-string/jumbo v4, "android.media.IAudioService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 850
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 852
    .restart local v5    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v44

    .line 853
    .restart local v44    # "_arg1":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v44

    invoke-virtual {v0, v5, v1}, Landroid/media/IAudioService$Stub;->setDeviceToForceByUser(ILjava/lang/String;)I

    move-result v49

    .line 854
    .restart local v49    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 855
    move-object/from16 v0, p3

    move/from16 v1, v49

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 856
    const/4 v4, 0x1

    return v4

    .line 860
    .end local v5    # "_arg0":I
    .end local v44    # "_arg1":Ljava/lang/String;
    .end local v49    # "_result":I
    :sswitch_4f
    const-string/jumbo v4, "android.media.IAudioService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 862
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 864
    .restart local v5    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v44

    .line 865
    .restart local v44    # "_arg1":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v44

    invoke-virtual {v0, v5, v1}, Landroid/media/IAudioService$Stub;->setMuteInterval(ILjava/lang/String;)V

    .line 866
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 867
    const/4 v4, 0x1

    return v4

    .line 871
    .end local v5    # "_arg0":I
    .end local v44    # "_arg1":Ljava/lang/String;
    :sswitch_50
    const-string/jumbo v4, "android.media.IAudioService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 872
    invoke-virtual/range {p0 .. p0}, Landroid/media/IAudioService$Stub;->getMuteInterval()I

    move-result v49

    .line 873
    .restart local v49    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 874
    move-object/from16 v0, p3

    move/from16 v1, v49

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 875
    const/4 v4, 0x1

    return v4

    .line 879
    .end local v49    # "_result":I
    :sswitch_51
    const-string/jumbo v4, "android.media.IAudioService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 880
    invoke-virtual/range {p0 .. p0}, Landroid/media/IAudioService$Stub;->getRemainingMuteIntervalMs()I

    move-result v49

    .line 881
    .restart local v49    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 882
    move-object/from16 v0, p3

    move/from16 v1, v49

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 883
    const/4 v4, 0x1

    return v4

    .line 887
    .end local v49    # "_result":I
    :sswitch_52
    const-string/jumbo v4, "android.media.IAudioService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 888
    invoke-virtual/range {p0 .. p0}, Landroid/media/IAudioService$Stub;->getPrevRingerMode()I

    move-result v49

    .line 889
    .restart local v49    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 890
    move-object/from16 v0, p3

    move/from16 v1, v49

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 891
    const/4 v4, 0x1

    return v4

    .line 895
    .end local v49    # "_result":I
    :sswitch_53
    const-string/jumbo v4, "android.media.IAudioService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 897
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 898
    .restart local v5    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/media/IAudioService$Stub;->getUidForDevice(I)I

    move-result v49

    .line 899
    .restart local v49    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 900
    move-object/from16 v0, p3

    move/from16 v1, v49

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 901
    const/4 v4, 0x1

    return v4

    .line 905
    .end local v5    # "_arg0":I
    .end local v49    # "_result":I
    :sswitch_54
    const-string/jumbo v4, "android.media.IAudioService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 907
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 909
    .restart local v5    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 910
    .restart local v6    # "_arg1":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6}, Landroid/media/IAudioService$Stub;->setAppDevice(II)V

    .line 911
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 912
    const/4 v4, 0x1

    return v4

    .line 916
    .end local v5    # "_arg0":I
    .end local v6    # "_arg1":I
    :sswitch_55
    const-string/jumbo v4, "android.media.IAudioService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 918
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 919
    .restart local v5    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/media/IAudioService$Stub;->getAppDevice(I)I

    move-result v49

    .line 920
    .restart local v49    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 921
    move-object/from16 v0, p3

    move/from16 v1, v49

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 922
    const/4 v4, 0x1

    return v4

    .line 926
    .end local v5    # "_arg0":I
    .end local v49    # "_result":I
    :sswitch_56
    const-string/jumbo v4, "android.media.IAudioService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 928
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 930
    .restart local v5    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 932
    .restart local v6    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v22

    .line 933
    .restart local v22    # "_arg2":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-virtual {v0, v5, v6, v1}, Landroid/media/IAudioService$Stub;->setAppVolume(IILjava/lang/String;)V

    .line 934
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 935
    const/4 v4, 0x1

    return v4

    .line 939
    .end local v5    # "_arg0":I
    .end local v6    # "_arg1":I
    .end local v22    # "_arg2":Ljava/lang/String;
    :sswitch_57
    const-string/jumbo v4, "android.media.IAudioService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 941
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 942
    .restart local v5    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/media/IAudioService$Stub;->getAppVolume(I)I

    move-result v49

    .line 943
    .restart local v49    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 944
    move-object/from16 v0, p3

    move/from16 v1, v49

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 945
    const/4 v4, 0x1

    return v4

    .line 949
    .end local v5    # "_arg0":I
    .end local v49    # "_result":I
    :sswitch_58
    const-string/jumbo v4, "android.media.IAudioService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 951
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_25

    const/16 v40, 0x1

    .line 952
    .restart local v40    # "_arg0":Z
    :goto_25
    move-object/from16 v0, p0

    move/from16 v1, v40

    invoke-virtual {v0, v1}, Landroid/media/IAudioService$Stub;->setMultiSoundOn(Z)V

    .line 953
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 954
    const/4 v4, 0x1

    return v4

    .line 951
    .end local v40    # "_arg0":Z
    :cond_25
    const/16 v40, 0x0

    goto :goto_25

    .line 958
    :sswitch_59
    const-string/jumbo v4, "android.media.IAudioService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 959
    invoke-virtual/range {p0 .. p0}, Landroid/media/IAudioService$Stub;->isMultiSoundOn()Z

    move-result v54

    .line 960
    .restart local v54    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 961
    if-eqz v54, :cond_26

    const/4 v4, 0x1

    :goto_26
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 962
    const/4 v4, 0x1

    return v4

    .line 961
    :cond_26
    const/4 v4, 0x0

    goto :goto_26

    .line 966
    .end local v54    # "_result":Z
    :sswitch_5a
    const-string/jumbo v4, "android.media.IAudioService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 967
    invoke-virtual/range {p0 .. p0}, Landroid/media/IAudioService$Stub;->getPriorityDevice()I

    move-result v49

    .line 968
    .restart local v49    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 969
    move-object/from16 v0, p3

    move/from16 v1, v49

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 970
    const/4 v4, 0x1

    return v4

    .line 974
    .end local v49    # "_result":I
    :sswitch_5b
    const-string/jumbo v4, "android.media.IAudioService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 976
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 978
    .restart local v5    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 980
    .restart local v6    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 982
    .restart local v7    # "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 984
    .restart local v8    # "_arg3":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v28

    .local v28, "_arg4":I
    move-object/from16 v23, p0

    move/from16 v24, v5

    move/from16 v25, v6

    move/from16 v26, v7

    move-object/from16 v27, v8

    .line 985
    invoke-virtual/range {v23 .. v28}, Landroid/media/IAudioService$Stub;->setStreamVolumeForDevice(IIILjava/lang/String;I)V

    .line 986
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 987
    const/4 v4, 0x1

    return v4

    .line 991
    .end local v5    # "_arg0":I
    .end local v6    # "_arg1":I
    .end local v7    # "_arg2":I
    .end local v8    # "_arg3":Ljava/lang/String;
    .end local v28    # "_arg4":I
    :sswitch_5c
    const-string/jumbo v4, "android.media.IAudioService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 993
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 995
    .restart local v5    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 996
    .restart local v6    # "_arg1":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6}, Landroid/media/IAudioService$Stub;->getStreamVolumeForDevice(II)I

    move-result v49

    .line 997
    .restart local v49    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 998
    move-object/from16 v0, p3

    move/from16 v1, v49

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 999
    const/4 v4, 0x1

    return v4

    .line 1003
    .end local v5    # "_arg0":I
    .end local v6    # "_arg1":I
    .end local v49    # "_result":I
    :sswitch_5d
    const-string/jumbo v4, "android.media.IAudioService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1005
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 1006
    .restart local v5    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/media/IAudioService$Stub;->getPinAppInfo(I)Ljava/lang/String;

    move-result-object v52

    .line 1007
    .restart local v52    # "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1008
    move-object/from16 v0, p3

    move-object/from16 v1, v52

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1009
    const/4 v4, 0x1

    return v4

    .line 1013
    .end local v5    # "_arg0":I
    .end local v52    # "_result":Ljava/lang/String;
    :sswitch_5e
    const-string/jumbo v4, "android.media.IAudioService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1014
    invoke-virtual/range {p0 .. p0}, Landroid/media/IAudioService$Stub;->getPinDevice()I

    move-result v49

    .line 1015
    .restart local v49    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1016
    move-object/from16 v0, p3

    move/from16 v1, v49

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1017
    const/4 v4, 0x1

    return v4

    .line 1021
    .end local v49    # "_result":I
    :sswitch_5f
    const-string/jumbo v4, "android.media.IAudioService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1022
    invoke-virtual/range {p0 .. p0}, Landroid/media/IAudioService$Stub;->getMediaAppList()[I

    move-result-object v55

    .line 1023
    .local v55, "_result":[I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1024
    move-object/from16 v0, p3

    move-object/from16 v1, v55

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 1025
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
        0x40 -> :sswitch_40
        0x41 -> :sswitch_41
        0x42 -> :sswitch_42
        0x43 -> :sswitch_43
        0x44 -> :sswitch_44
        0x45 -> :sswitch_45
        0x46 -> :sswitch_46
        0x47 -> :sswitch_47
        0x48 -> :sswitch_48
        0x49 -> :sswitch_49
        0x4a -> :sswitch_4a
        0x4b -> :sswitch_4b
        0x4c -> :sswitch_4c
        0x4d -> :sswitch_4d
        0x4e -> :sswitch_4e
        0x4f -> :sswitch_4f
        0x50 -> :sswitch_50
        0x51 -> :sswitch_51
        0x52 -> :sswitch_52
        0x53 -> :sswitch_53
        0x54 -> :sswitch_54
        0x55 -> :sswitch_55
        0x56 -> :sswitch_56
        0x57 -> :sswitch_57
        0x58 -> :sswitch_58
        0x59 -> :sswitch_59
        0x5a -> :sswitch_5a
        0x5b -> :sswitch_5b
        0x5c -> :sswitch_5c
        0x5d -> :sswitch_5d
        0x5e -> :sswitch_5e
        0x5f -> :sswitch_5f
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
