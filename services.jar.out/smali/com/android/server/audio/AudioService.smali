.class public Lcom/android/server/audio/AudioService;
.super Landroid/media/IAudioService$Stub;
.source "AudioService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/audio/AudioService$1;,
        Lcom/android/server/audio/AudioService$2;,
        Lcom/android/server/audio/AudioService$3;,
        Lcom/android/server/audio/AudioService$4;,
        Lcom/android/server/audio/AudioService$5;,
        Lcom/android/server/audio/AudioService$6;,
        Lcom/android/server/audio/AudioService$AppCategorizer;,
        Lcom/android/server/audio/AudioService$AudioHandler;,
        Lcom/android/server/audio/AudioService$AudioPolicyProxy;,
        Lcom/android/server/audio/AudioService$AudioServiceBroadcastReceiver;,
        Lcom/android/server/audio/AudioService$AudioServiceInternal;,
        Lcom/android/server/audio/AudioService$AudioServiceUserRestrictionsListener;,
        Lcom/android/server/audio/AudioService$AudioSettingsDBHelper;,
        Lcom/android/server/audio/AudioService$AudioSystemThread;,
        Lcom/android/server/audio/AudioService$ControllerService;,
        Lcom/android/server/audio/AudioService$DeviceListSpec;,
        Lcom/android/server/audio/AudioService$EffectPolicy;,
        Lcom/android/server/audio/AudioService$FineVolumeState;,
        Lcom/android/server/audio/AudioService$ForceControlStreamClient;,
        Lcom/android/server/audio/AudioService$Lifecycle;,
        Lcom/android/server/audio/AudioService$LoadSoundEffectReply;,
        Lcom/android/server/audio/AudioService$MyDisplayStatusCallback;,
        Lcom/android/server/audio/AudioService$RmtSbmxFullVolDeathHandler;,
        Lcom/android/server/audio/AudioService$ScoClient;,
        Lcom/android/server/audio/AudioService$SetModeDeathHandler;,
        Lcom/android/server/audio/AudioService$SettingsObserver;,
        Lcom/android/server/audio/AudioService$SoundKitchen;,
        Lcom/android/server/audio/AudioService$SoundPoolCallback;,
        Lcom/android/server/audio/AudioService$SoundPoolListenerThread;,
        Lcom/android/server/audio/AudioService$StreamOverride;,
        Lcom/android/server/audio/AudioService$StreamVolumeCommand;,
        Lcom/android/server/audio/AudioService$VolumeController;,
        Lcom/android/server/audio/AudioService$VolumeStreamState;,
        Lcom/android/server/audio/AudioService$WiredDeviceConnectionState;
    }
.end annotation


# static fields
.field public static final ACTING_AUDIOCORE_LOGGING:Ljava/lang/String; = "com.sec.media.action.AUDIOCORE_LOGGING"

.field private static final ACTION_EFFECT_POLICY:Ljava/lang/String; = "sec.app.policy.UPDATE.audio"

.field public static final ACTION_LAUNCH_SETTING:Ljava/lang/String; = "android.intent.action.Launch_Setting"

.field private static final ACTION_SOUND_OFF_TOAST:Ljava/lang/String; = "com.samsung.intent.action.SOUND_OFF_TOAST"

.field public static final ACTION_TURN_OFF_MULTISOUND:Ljava/lang/String; = "android.intent.action.TurnOff_MultiSound"

.field private static final ASSET_FILE_VERSION:Ljava/lang/String; = "1.0"

.field private static final ATTR_ASSET_FILE:Ljava/lang/String; = "file"

.field private static final ATTR_ASSET_ID:Ljava/lang/String; = "id"

.field private static final ATTR_GROUP_NAME:Ljava/lang/String; = "name"

.field private static final ATTR_VERSION:Ljava/lang/String; = "version"

.field private static AUDIOCORE_BIGDATA:[Ljava/lang/String; = null

.field private static final AUDIOCORE_LOGGING_PATH:Ljava/lang/String; = "/data/snd/logging.txt"

.field private static final BTA2DP_DOCK_TIMEOUT_MILLIS:I = 0x1f40

.field private static final BT_HEADSET_CNCT_TIMEOUT_MS:I = 0xbb8

.field public static final CONNECT_INTENT_KEY_ADDRESS:Ljava/lang/String; = "address"

.field public static final CONNECT_INTENT_KEY_DEVICE_CLASS:Ljava/lang/String; = "class"

.field public static final CONNECT_INTENT_KEY_HAS_CAPTURE:Ljava/lang/String; = "hasCapture"

.field public static final CONNECT_INTENT_KEY_HAS_MIDI:Ljava/lang/String; = "hasMIDI"

.field public static final CONNECT_INTENT_KEY_HAS_PLAYBACK:Ljava/lang/String; = "hasPlayback"

.field public static final CONNECT_INTENT_KEY_PORT_NAME:Ljava/lang/String; = "portName"

.field public static final CONNECT_INTENT_KEY_STATE:Ljava/lang/String; = "state"

.field private static final COUNT_SETVOLUME:I = 0x5

.field protected static final DEBUG_AP:Z

.field protected static final DEBUG_DEVICES:Z

.field protected static final DEBUG_MODE:Z

.field protected static final DEBUG_VOL:Z

.field private static final DOCK_DEVICE_NAME:[Ljava/lang/String;

.field private static final DVFS_CPU_BOOST_ACTION_TYPE_ALL:I = 0x3

.field private static final DVFS_CPU_BOOST_ACTION_TYPE_EFFECT:I = 0x2

.field private static final DVFS_CPU_BOOST_ACTION_TYPE_OFF:I = 0x0

.field private static final DVFS_CPU_BOOST_ACTION_TYPE_VOIP:I = 0x1

.field private static final DVFS_CPU_BOOST_MAX_TIME:I = 0x7530

.field private static final DVFS_CPU_BOOST_RETRY_DELAY_MS:I = 0x6d60

.field private static final DVFS_CPU_BOOST_RETRY_HALF_DELAY_MS:I = 0xf

.field private static final DVFS_CPU_BOOST_RETRY_MAX_CNT:I = 0x3

.field private static final DVFS_CPU_BOOST_SHORT_RETRY_DELAY_MS:I = 0x3e8

.field private static final EARJACK_COUNT_PATH:Ljava/lang/String; = "/efs/FactoryApp/earjack_count"

.field private static final ENCRYPTED_ALL_SOUND_MUTE:I = 0x1

.field private static final ENCRYPTED_RINGER_SILENT_MODE:I = 0x10

.field private static final FINE_VOLUME_ENABLED:Z = true

.field private static final FINE_VOLUME_OFFSET:I = 0x3e8

.field private static final FLAG_ADJUST_VOLUME:I = 0x1

.field private static final FLAG_ERROR:I = 0x8000

.field private static final FLAG_STREAM_ACCESSIBILITY:I = 0x4000

.field private static final FLAG_STREAM_ALARM:I = 0x10

.field private static final FLAG_STREAM_BLUETOOTH_SCO:I = 0x40

.field private static final FLAG_STREAM_DTMF:I = 0x100

.field private static final FLAG_STREAM_FM_RADIO:I = 0x400

.field private static final FLAG_STREAM_MUSIC:I = 0x8

.field private static final FLAG_STREAM_NOTIFICATION:I = 0x20

.field private static final FLAG_STREAM_RING:I = 0x4

.field private static final FLAG_STREAM_SEC_VOICE_COMMUNICATION:I = 0x1000

.field private static final FLAG_STREAM_SYSTEM:I = 0x2

.field private static final FLAG_STREAM_SYSTEM_ENFORCED:I = 0x80

.field private static final FLAG_STREAM_TTS:I = 0x200

.field private static final FLAG_STREAM_VIDEO_CALL:I = 0x800

.field private static final FLAG_STREAM_VOICENOTE:I = 0x2000

.field private static final FLAG_STREAM_VOICE_CALL:I = 0x1

.field private static final FOLDER_OPENED:Ljava/lang/String; = "com.samsung.flipfolder.OPEN"

.field private static final GROUP_TOUCH_SOUNDS:Ljava/lang/String; = "touch_sounds"

.field public static final ID_MULTISOUND_NOTIFICATION:I = 0x3ec

.field private static final INDICATE_SYSTEM_READY_RETRY_DELAY_MS:I = 0x3e8

.field private static final LIMITER_MAXIMUM_LEVEL:I = 0xf

.field private static final LOGGING_PATH:Ljava/lang/String; = "/data/snd/hw_audio_param.txt"

.field private static final LPM_ENABLED:Z

.field private static MAX_STREAM_VOLUME:[I = null

.field private static MIN_STREAM_VOLUME:[I = null

.field private static final MSG_AUDIO_SERVER_DIED:I = 0x4

.field private static final MSG_BROADCAST_AUDIO_BECOMING_NOISY:I = 0xf

.field private static final MSG_BROADCAST_AUDIO_BECOMING_NOISY_PERSONA:I = 0x6e

.field private static final MSG_BROADCAST_BT_CONNECTION_STATE:I = 0x13

.field private static final MSG_BTA2DP_DOCK_TIMEOUT:I = 0x6

.field private static final MSG_BT_HEADSET_CNCT_FAILED:I = 0x9

.field private static final MSG_CHECK_DVFS_CPU_BOOST:I = 0x74

.field private static final MSG_CHECK_EARCARE_STATE:I = 0x68

.field private static final MSG_CHECK_MUSIC_ACTIVE:I = 0xe

.field private static final MSG_CHECK_RINGERMODE_UNMUTE:I = 0x73

.field private static final MSG_CONFIGURE_SAFE_MEDIA_VOLUME:I = 0x10

.field private static final MSG_CONFIGURE_SAFE_MEDIA_VOLUME_FORCED:I = 0x11

.field private static final MSG_DYN_POLICY_MIX_STATE_UPDATE:I = 0x19

.field private static final MSG_END_SOUND_MANNER_MODE:I = 0x6c

.field private static final MSG_GOOGLE_MAX:I = 0x66

.field private static final MSG_INDICATE_SYSTEM_READY:I = 0x1a

.field private static final MSG_LOAD_SOUND_EFFECTS:I = 0x7

.field private static final MSG_PERFORM_SOFT_RESET:I = 0x69

.field private static final MSG_PERSIST_MUSIC_ACTIVE_MS:I = 0x16

.field private static final MSG_PERSIST_RINGER_MODE:I = 0x3

.field private static final MSG_PERSIST_SAFE_VOLUME_STATE:I = 0x12

.field private static final MSG_PERSIST_VOLUME:I = 0x1

.field private static final MSG_PLAY_SOUND_EFFECT:I = 0x5

.field private static final MSG_PLAY_SOUND_MANNER_MODE:I = 0x6a

.field private static final MSG_REPORT_NEW_ROUTES:I = 0xc

.field private static final MSG_RUN_SOUNDASSISTANT:I = 0x77

.field private static final MSG_SET_A2DP_SINK_CONNECTION_STATE:I = 0x66

.field private static final MSG_SET_A2DP_SRC_CONNECTION_STATE:I = 0x65

.field private static final MSG_SET_ALL_VOLUMES:I = 0xa

.field private static final MSG_SET_DEVICE_VOLUME:I = 0x0

.field private static final MSG_SET_FINE_VOLUME:I = 0x70

.field private static final MSG_SET_FORCE_BT_A2DP_USE:I = 0xd

.field private static final MSG_SET_FORCE_USE:I = 0x8

.field private static final MSG_SET_MULTI_DEVICE_SOUND_ON:I = 0x75

.field private static final MSG_SET_MULTI_DEVICE_SOUND_SETDEVICE:I = 0x76

.field private static final MSG_SET_SYSTEMPROPERTY:I = 0x6f

.field private static final MSG_SET_WIRED_DEVICE_CONNECTION_STATE:I = 0x64

.field private static final MSG_SYSTEM_READY:I = 0x15

.field private static final MSG_UNLOAD_SOUND_EFFECTS:I = 0x14

.field private static final MSG_UNMUTE_STREAM:I = 0x18

.field private static final MSG_USB_CHECK_RELEASE:I = 0x67

.field private static final MSG_VIBRATE_CALL:I = 0x6d

.field private static final MSG_VIBRATE_MANNER_MODE:I = 0x6b

.field private static final MS_PER_HOUR:I = 0x36ee80

.field private static final MULTISOUND_ENABLED:Z

.field private static final MUSIC_ACTIVE_POLL_PERIOD_MS:I = 0xea60

.field private static final NUM_SOUNDPOOL_CHANNELS:I = 0x4

.field private static final PERSIST_DELAY:I = 0x1f4

.field private static final RINGER_MODE_NAMES:[Ljava/lang/String;

.field private static final SAFE_MEDIA_VOLUME_ACTIVE:I = 0x3

.field private static final SAFE_MEDIA_VOLUME_DISABLED:I = 0x1

.field private static final SAFE_MEDIA_VOLUME_INACTIVE:I = 0x2

.field private static final SAFE_MEDIA_VOLUME_NOT_CONFIGURED:I = 0x0

.field private static final SAFE_VOLUME_CONFIGURE_TIMEOUT_MS:I = 0x7530

.field private static final SCO_MODE_MAX:I = 0x2

.field private static final SCO_MODE_RAW:I = 0x1

.field private static final SCO_MODE_UNDEFINED:I = -0x1

.field private static final SCO_MODE_VIRTUAL_CALL:I = 0x0

.field private static final SCO_MODE_VR:I = 0x2

.field private static final SCO_STATE_ACTIVATE_REQ:I = 0x1

.field private static final SCO_STATE_ACTIVE_EXTERNAL:I = 0x2

.field private static final SCO_STATE_ACTIVE_INTERNAL:I = 0x3

.field private static final SCO_STATE_DEACTIVATE_EXT_REQ:I = 0x4

.field private static final SCO_STATE_DEACTIVATE_REQ:I = 0x5

.field private static final SCO_STATE_INACTIVE:I = 0x0

.field private static final SENDMSG_NOOP:I = 0x1

.field private static final SENDMSG_QUEUE:I = 0x2

.field private static final SENDMSG_REPLACE:I = 0x0

.field private static final SETTING_ADAPTSOUND_CHECKED:Ljava/lang/String; = "hearing_musiccheck"

.field private static final SETTING_ALL_SOUND_OFF:Ljava/lang/String; = "all_sound_off"

.field private static final SETTING_BOOSTMODE_ENTERTAINMENT:I = 0x2

.field private static final SETTING_BOOSTMODE_UPSCALER_VALUE:Ljava/lang/String; = "pbm_uhq_upscaler"

.field private static final SETTING_BOOSTMODE_VALUE:Ljava/lang/String; = "sem_perfomance_mode"

.field private static final SETTING_MONO_AUDIO:Ljava/lang/String; = "mono_audio_db"

.field private static final SETTING_SOUNDALIVE_CHECKED:Ljava/lang/String; = "sound_alive_effect"

.field private static final SETTING_SOUND_BALANCE:Ljava/lang/String; = "sound_balance"

.field private static final SETTING_TUBEAMP_CHECKED:Ljava/lang/String; = "tube_amp_effect"

.field private static final SETTING_UPSCALER_CHECKED:Ljava/lang/String; = "k2hd_effect"

.field private static final SETTING_UPSCALER_FROM_USER:Ljava/lang/String; = "k2hd_effect_from_user"

.field private static final SMART_DOCK_CONNECTED:Ljava/lang/String; = "10"

.field private static final SOUNDASSISTANT_PACKAGE:Ljava/lang/String; = "com.samsung.android.soundassistant"

.field private static final SOUNDASSISTANT_SERVICE_NAME:Ljava/lang/String; = "com.sec.android.soundassistant.services.SoundAssistService"

.field private static final SOUND_ASSISTANT_INTENT_SERVICE:Ljava/lang/String; = "com.sec.android.soundassistant.SOUNDASSIST_INTENT_SERVICE"

.field private static final SOUND_EFFECTS_LOAD_TIMEOUT_MS:I = 0x1388

.field private static final SOUND_EFFECTS_PATH:Ljava/lang/String; = "/media/audio/ui/"

.field private static final SOUND_EFFECT_FILES:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final STREAM_VOLUME_OPS:[I

.field private static final SUPPORT_BOOST_MODE:Z

.field private static final SUPPORT_SAR_CONTROL_EARJACK_ENABLED:Z

.field private static final TAG:Ljava/lang/String; = "AudioService"

.field private static final TAG_ASSET:Ljava/lang/String; = "asset"

.field private static final TAG_AUDIO_ASSETS:Ljava/lang/String; = "audio_assets"

.field private static final TAG_GROUP:Ljava/lang/String; = "group"

.field private static final TMS_ACTION_TYPE_START:I = 0x1

.field private static final TMS_ACTION_TYPE_STOP:I = 0x2

.field private static final UHQ_ENABLED:Z = true

.field private static final UNMUTE_STREAM_DELAY:I = 0x15e

.field private static final UNSAFE_VOLUME_MUSIC_ACTIVE_MS_MAX:I = 0x44aa200

.field public static mCallVolumeSteps:I

.field private static mLastDeviceConnectMsgTime:Ljava/lang/Long;

.field private static sSoundEffectVolumeDb:I


# instance fields
.field private final ConfigVolumeKey:Ljava/lang/String;

.field private FINE_VOLUME_LEVEL:I

.field private FINE_VOLUME_MAX:I

.field private FINE_VOLUME_MIN:I

.field private final IN_VOICE_COMM_FOCUS_ID:Ljava/lang/String;

.field private final MAX_STREAM_VOLUME2:[I

.field private final MAX_STREAM_VOLUME_DOUBLE:[I

.field private final PHONE_PACKAGE_NAME:Ljava/lang/String;

.field private final SETTING_PACKAGE_NAME:Ljava/lang/String;

.field private SOUND_EFFECTS_PATH_THEME:Ljava/lang/String;

.field private final SOUND_EFFECT_FILES_MAP:[[I

.field private final STREAM_VOLUME_ALIAS_DEFAULT:[I

.field private final STREAM_VOLUME_ALIAS_TELEVISION:[I

.field private final STREAM_VOLUME_ALIAS_VOICE:[I

.field private final VOICENOTE_PACKAGE_NAME:Ljava/lang/String;

.field private indexOfsetVolume:[I

.field private isEarBackOff:Z

.field private mA2dp:Landroid/bluetooth/BluetoothA2dp;

.field private final mA2dpAvrcpLock:Ljava/lang/Object;

.field private mActivityManager:Landroid/app/ActivityManager;

.field private mAdjustMediaVolumeOnly:Z

.field mAlarmManager:Landroid/app/AlarmManager;

.field private mAllSoundMute:I

.field private final mAppOps:Landroid/app/AppOpsManager;

.field private mAppVolumeFromSoundAssistant:Landroid/util/SparseIntArray;

.field private mAudioEventWakeLock:Landroid/os/PowerManager$WakeLock;

.field private mAudioHandler:Lcom/android/server/audio/AudioService$AudioHandler;

.field private mAudioPolicies:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/os/IBinder;",
            "Lcom/android/server/audio/AudioService$AudioPolicyProxy;",
            ">;"
        }
    .end annotation
.end field

.field private mAudioPolicyCounter:I

.field private final mAudioSystemCallback:Landroid/media/AudioSystem$ErrorCallback;

.field private mAudioSystemThread:Lcom/android/server/audio/AudioService$AudioSystemThread;

.field private mAvrcpAbsVolSupported:Z

.field mBecomingNoisyIntentDevices:I

.field private mBluetoothA2dpEnabled:Z

.field private final mBluetoothA2dpEnabledLock:Ljava/lang/Object;

.field private mBluetoothA2dpOndump:[I

.field private mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

.field private mBluetoothHeadsetDevice:Landroid/bluetooth/BluetoothDevice;

.field private mBluetoothProfileServiceListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;

.field private mBluetoothScoOndump:[I

.field private mBoostMode:I

.field private mBoostUpscalerEnabled:I

.field private mBtNxpShareIF_LSI:Z

.field public mCPUBoostTryCnt:I

.field public mCPUBoostTryStandbyCnt:I

.field private mCPUBoostType:I

.field public mCPUBoostValueForEffect:I

.field public mCPUBoostValueForVoip:I

.field private mCallingModeOndump:Ljava/lang/String;

.field private mCallingRingerMode:[Ljava/lang/String;

.field private mCameraSoundForced:Ljava/lang/Boolean;

.field private mCategorizer:Lcom/android/server/audio/AudioService$AppCategorizer;

.field private final mConnectedDevices:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/server/audio/AudioService$DeviceListSpec;",
            ">;"
        }
    .end annotation
.end field

.field private final mContentResolver:Landroid/content/ContentResolver;

.field private final mContext:Landroid/content/Context;

.field private final mControllerService:Lcom/android/server/audio/AudioService$ControllerService;

.field private mCoverManager:Lcom/samsung/android/cover/CoverManager;

.field final mCurAudioRoutes:Landroid/media/AudioRoutesInfo;

.field private mDeviceOrientation:I

.field mDisplayManager:Landroid/hardware/display/DisplayManager;

.field private mDockAddress:Ljava/lang/String;

.field private mDockAudioMediaEnabled:Z

.field private mDockState:I

.field private mDualMicMode:I

.field private final mDynPolicyCallback:Landroid/media/AudioSystem$DynamicPolicyCallback;

.field private mEnableSoundAssistant:Z

.field private mExternalUsbInfo:Ljava/lang/String;

.field private mFakeState:Z

.field private mFineMediaVolume:Lcom/android/server/audio/AudioService$FineVolumeState;

.field mFixedVolumeDevices:I

.field private mForceControlStreamClient:Lcom/android/server/audio/AudioService$ForceControlStreamClient;

.field private final mForceControlStreamLock:Ljava/lang/Object;

.field private mForceSpeaker:I

.field private mForcedUseForComm:I

.field private mForcedUseForFMRadio:I

.field private mForcedUseForMedia:I

.field private mForegroundUid:I

.field mFullVolumeDevices:I

.field public mHMTDocked:Z

.field mHallSensorListener:Landroid/hardware/scontext/SContextListener;

.field private mHallSensorType:S

.field private final mHasVibrator:Z

.field private mHdmiCecSink:Z

.field private mHdmiDisplayStatusCallback:Lcom/android/server/audio/AudioService$MyDisplayStatusCallback;

.field private mHdmiManager:Landroid/hardware/hdmi/HdmiControlManager;

.field private mHdmiPlaybackClient:Landroid/hardware/hdmi/HdmiPlaybackClient;

.field private mHdmiSystemAudioSupported:Z

.field private mHdmiTvClient:Landroid/hardware/hdmi/HdmiTvClient;

.field private mIsCoverSafetyVolume:Z

.field private mIsDefaultStreamNotification:Z

.field private mIsEarCareEnabled:Z

.field private mIsEarCareSettingOn:Z

.field public mIsExceptionalDevice:Z

.field private mIsExternalRingerMode:[Z

.field private mIsFactoryMode:Z

.field private mIsFactorySim:Z

.field private mIsFolderOpen:Z

.field private mIsMediaVolumeBackup:Z

.field private mIsPlaySilentModeOff:Z

.field private mIsScreenOffMusicOn:I

.field public mIsScreenState:Z

.field private mIsSetupwizardFinish:Ljava/lang/String;

.field private mIsSupportDisplayVolumeControl:Z

.field private mIsTalkBackEnabled:Z

.field private mIsTogether:Z

.field private mIsVibrate:Z

.field private mLastBluetoothA2dpDisconnectionTime:J

.field private mLastConnectedDevice:Lcom/android/server/audio/AudioService$DeviceListSpec;

.field private mLateBootCompleted_WiredDevice:I

.field private final mLateBootCompleted_WiredDeviceName_real:Ljava/lang/String;

.field private final mLateBootCompleted_WiredDeviceName_temporary:Ljava/lang/String;

.field private mLoweredFromNormalToVibrateTime:J

.field private mMcc:I

.field private final mMediaFocusControl:Lcom/android/server/audio/MediaFocusControl;

.field private mMediaLastAudibleIndex:I

.field private mMediaSessionService:Landroid/media/session/ISessionManager;

.field private mMediaSilentMode:Z

.field private mMediaVolumeBackup:[I

.field private mMode:I

.field private mModeListOndump:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mMonitorOrientation:Z

.field private final mMonitorRotation:Z

.field private mMonoMode:I

.field private mMusicActiveMs:I

.field private mMuteAffectedStreams:I

.field private mMuteIntervalMs:I

.field private mMySoundEnabled:I

.field private mNaturalSound:I

.field private mNbQualityMode:I

.field private mNm:Landroid/app/NotificationManager;

.field private mOldIsSmartdock:Z

.field private mPackageManager:Landroid/content/pm/PackageManager;

.field private mPendingFineVolumeCommand:Lcom/android/server/audio/AudioService$StreamVolumeCommand;

.field private mPendingVolumeCommand:Lcom/android/server/audio/AudioService$StreamVolumeCommand;

.field private final mPlatformType:I

.field private mPrevRingerMode:I

.field private mPrevVolDirection:I

.field private final mProcessObserver:Landroid/app/IProcessObserver;

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private final mRecordMonitor:Lcom/android/server/audio/RecordingActivityMonitor;

.field private mResetMuteInterval:Z

.field private mRingerMode:I

.field private mRingerModeAffectedStreams:I

.field private mRingerModeDelegate:Landroid/media/AudioManagerInternal$RingerModeDelegate;

.field private mRingerModeExternal:I

.field private mRingerModeMutedStreams:I

.field private volatile mRingtonePlayer:Landroid/media/IRingtonePlayer;

.field private mRmtSbmxFullVolDeathHandlers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/audio/AudioService$RmtSbmxFullVolDeathHandler;",
            ">;"
        }
    .end annotation
.end field

.field private mRmtSbmxFullVolRefCount:I

.field final mRoutesObservers:Landroid/os/RemoteCallbackList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/RemoteCallbackList",
            "<",
            "Landroid/media/IAudioRoutesObserver;",
            ">;"
        }
    .end annotation
.end field

.field private mSContextManager:Landroid/hardware/scontext/SContextManager;

.field private final mSafeMediaVolumeDevices:I

.field private final mSafeMediaVolumeDevicesForA2DP:I

.field private mSafeMediaVolumeIndex:I

.field private mSafeMediaVolumeState:Ljava/lang/Integer;

.field private mScoAudioMode:I

.field private mScoAudioState:I

.field private final mScoClients:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/audio/AudioService$ScoClient;",
            ">;"
        }
    .end annotation
.end field

.field private mScoConnectionState:I

.field private mSemHqmManager:Landroid/os/SemHqmManager;

.field private final mSetModeDeathHandlers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/audio/AudioService$SetModeDeathHandler;",
            ">;"
        }
    .end annotation
.end field

.field private mSetModeOndump:I

.field private mSettingDBHelper:Lcom/android/server/audio/AudioService$AudioSettingsDBHelper;

.field private final mSettingsLock:Ljava/lang/Object;

.field private mSettingsObserver:Lcom/android/server/audio/AudioService$SettingsObserver;

.field private mSilentModeOff:Z

.field private mSoundAliveEnabled:I

.field private mSoundAssistantLock:Ljava/lang/Object;

.field private mSoundBalance:I

.field private final mSoundEffectsLock:Ljava/lang/Object;

.field private mSoundKitchen:Lcom/android/server/audio/AudioService$SoundKitchen;

.field private mSoundPool:Landroid/media/SoundPool;

.field private mSoundPoolCallBack:Lcom/android/server/audio/AudioService$SoundPoolCallback;

.field private mSoundPoolListenerThread:Lcom/android/server/audio/AudioService$SoundPoolListenerThread;

.field private mSoundPoolLooper:Landroid/os/Looper;

.field private mSpeakerOndump:[I

.field public mSplitSound:Z

.field private mStartingSoundAssistant:Z

.field private mStatusbarExpanded:Z

.field private mStreamMutePackagedump:[Ljava/lang/String;

.field private mStreamMutedump:[I

.field private mStreamStates:[Lcom/android/server/audio/AudioService$VolumeStreamState;

.field private mStreamToggleMutePackagedump:[Ljava/lang/String;

.field private mStreamToggleMutedump:[I

.field private mStreamUnMutePackagedump:[Ljava/lang/String;

.field private mStreamUnMutedump:[I

.field private mStreamVolumeAlias:[I

.field private mSystemReady:Z

.field private mTubeAmpEnabled:I

.field private final mUEventUsbConnectObserver:Landroid/os/UEventObserver;

.field private mUSBDetected:Z

.field private mUhqBtSampleRate:I

.field private mUpscalerEnabled:I

.field private mUsbSupportedFormat:I

.field private final mUseFixedVolume:Z

.field private final mUserManagerInternal:Landroid/os/UserManagerInternal;

.field private final mUserRestrictionsListener:Landroid/os/UserManagerInternal$UserRestrictionsListener;

.field private mUserSwitchedReceived:Z

.field private mVibrateSetting:I

.field private mVibrator:Landroid/os/SystemVibrator;

.field private mVolumeControlStream:I

.field private final mVolumeController:Lcom/android/server/audio/AudioService$VolumeController;

.field private mVolumeLimitValue:I

.field private mVolumePolicy:Landroid/media/VolumePolicy;

.field private mbVolumeLimitOn:Z

.field private multiSoundToast:Landroid/widget/Toast;

.field private pIdOfadjustVolume:[I

.field private pIdOfadjustVolumeIndex:[I

.field private pIdOfsetVolume:[[I

.field private pIdOfsetVolumeIndex:[[I

.field private final reconnectDelay:I

.field private semDvfsCpuMin:Lcom/samsung/android/os/SemDvfsManager;

.field private semLowPowerMode:Lcom/samsung/android/os/SemDvfsManager;

.field private toast:Landroid/widget/Toast;

.field private uIdOfadjustVolume:[I

.field private uIdOfsetVolume:[[I

.field private final volumeDownToSilent:Z


# direct methods
.method static synthetic -get0(Lcom/android/server/audio/AudioService;)[I
    .locals 1

    iget-object v0, p0, Lcom/android/server/audio/AudioService;->MAX_STREAM_VOLUME2:[I

    return-object v0
.end method

.method static synthetic -get1()[I
    .locals 1

    sget-object v0, Lcom/android/server/audio/AudioService;->MIN_STREAM_VOLUME:[I

    return-object v0
.end method

.method static synthetic -get10(Lcom/android/server/audio/AudioService;)Landroid/app/ActivityManager;
    .locals 1

    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mActivityManager:Landroid/app/ActivityManager;

    return-object v0
.end method

.method static synthetic -get11(Lcom/android/server/audio/AudioService;)I
    .locals 1

    iget v0, p0, Lcom/android/server/audio/AudioService;->mAllSoundMute:I

    return v0
.end method

.method static synthetic -get12(Lcom/android/server/audio/AudioService;)Landroid/util/SparseIntArray;
    .locals 1

    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mAppVolumeFromSoundAssistant:Landroid/util/SparseIntArray;

    return-object v0
.end method

.method static synthetic -get13(Lcom/android/server/audio/AudioService;)Landroid/os/PowerManager$WakeLock;
    .locals 1

    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mAudioEventWakeLock:Landroid/os/PowerManager$WakeLock;

    return-object v0
.end method

.method static synthetic -get14(Lcom/android/server/audio/AudioService;)Lcom/android/server/audio/AudioService$AudioHandler;
    .locals 1

    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mAudioHandler:Lcom/android/server/audio/AudioService$AudioHandler;

    return-object v0
.end method

.method static synthetic -get15(Lcom/android/server/audio/AudioService;)Ljava/util/HashMap;
    .locals 1

    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mAudioPolicies:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic -get16(Lcom/android/server/audio/AudioService;)I
    .locals 1

    iget v0, p0, Lcom/android/server/audio/AudioService;->mAudioPolicyCounter:I

    return v0
.end method

.method static synthetic -get17(Lcom/android/server/audio/AudioService;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/audio/AudioService;->mAvrcpAbsVolSupported:Z

    return v0
.end method

.method static synthetic -get18(Lcom/android/server/audio/AudioService;)Landroid/bluetooth/BluetoothHeadset;
    .locals 1

    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

    return-object v0
.end method

.method static synthetic -get19(Lcom/android/server/audio/AudioService;)Landroid/bluetooth/BluetoothDevice;
    .locals 1

    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mBluetoothHeadsetDevice:Landroid/bluetooth/BluetoothDevice;

    return-object v0
.end method

.method static synthetic -get2()Z
    .locals 1

    sget-boolean v0, Lcom/android/server/audio/AudioService;->MULTISOUND_ENABLED:Z

    return v0
.end method

.method static synthetic -get20(Lcom/android/server/audio/AudioService;)I
    .locals 1

    iget v0, p0, Lcom/android/server/audio/AudioService;->mBoostMode:I

    return v0
.end method

.method static synthetic -get21(Lcom/android/server/audio/AudioService;)I
    .locals 1

    iget v0, p0, Lcom/android/server/audio/AudioService;->mBoostUpscalerEnabled:I

    return v0
.end method

.method static synthetic -get22(Lcom/android/server/audio/AudioService;)I
    .locals 1

    iget v0, p0, Lcom/android/server/audio/AudioService;->mCPUBoostType:I

    return v0
.end method

.method static synthetic -get23(Lcom/android/server/audio/AudioService;)Ljava/lang/Boolean;
    .locals 1

    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mCameraSoundForced:Ljava/lang/Boolean;

    return-object v0
.end method

.method static synthetic -get24(Lcom/android/server/audio/AudioService;)Lcom/android/server/audio/AudioService$AppCategorizer;
    .locals 1

    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mCategorizer:Lcom/android/server/audio/AudioService$AppCategorizer;

    return-object v0
.end method

.method static synthetic -get25(Lcom/android/server/audio/AudioService;)Landroid/util/ArrayMap;
    .locals 1

    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mConnectedDevices:Landroid/util/ArrayMap;

    return-object v0
.end method

.method static synthetic -get26(Lcom/android/server/audio/AudioService;)Landroid/content/ContentResolver;
    .locals 1

    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mContentResolver:Landroid/content/ContentResolver;

    return-object v0
.end method

.method static synthetic -get27(Lcom/android/server/audio/AudioService;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get28(Lcom/android/server/audio/AudioService;)Lcom/android/server/audio/AudioService$ControllerService;
    .locals 1

    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mControllerService:Lcom/android/server/audio/AudioService$ControllerService;

    return-object v0
.end method

.method static synthetic -get29(Lcom/android/server/audio/AudioService;)I
    .locals 1

    iget v0, p0, Lcom/android/server/audio/AudioService;->mDockState:I

    return v0
.end method

.method static synthetic -get3(Lcom/android/server/audio/AudioService;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/server/audio/AudioService;->SOUND_EFFECTS_PATH_THEME:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get30(Lcom/android/server/audio/AudioService;)I
    .locals 1

    iget v0, p0, Lcom/android/server/audio/AudioService;->mDualMicMode:I

    return v0
.end method

.method static synthetic -get31(Lcom/android/server/audio/AudioService;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mExternalUsbInfo:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get32(Lcom/android/server/audio/AudioService;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/audio/AudioService;->mFakeState:Z

    return v0
.end method

.method static synthetic -get33(Lcom/android/server/audio/AudioService;)Lcom/android/server/audio/AudioService$FineVolumeState;
    .locals 1

    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mFineMediaVolume:Lcom/android/server/audio/AudioService$FineVolumeState;

    return-object v0
.end method

.method static synthetic -get34(Lcom/android/server/audio/AudioService;)Lcom/android/server/audio/AudioService$ForceControlStreamClient;
    .locals 1

    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mForceControlStreamClient:Lcom/android/server/audio/AudioService$ForceControlStreamClient;

    return-object v0
.end method

.method static synthetic -get35(Lcom/android/server/audio/AudioService;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mForceControlStreamLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic -get36(Lcom/android/server/audio/AudioService;)I
    .locals 1

    iget v0, p0, Lcom/android/server/audio/AudioService;->mForegroundUid:I

    return v0
.end method

.method static synthetic -get37(Lcom/android/server/audio/AudioService;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/audio/AudioService;->mHdmiCecSink:Z

    return v0
.end method

.method static synthetic -get38(Lcom/android/server/audio/AudioService;)Landroid/hardware/hdmi/HdmiControlManager;
    .locals 1

    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mHdmiManager:Landroid/hardware/hdmi/HdmiControlManager;

    return-object v0
.end method

.method static synthetic -get39(Lcom/android/server/audio/AudioService;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/audio/AudioService;->mIsDefaultStreamNotification:Z

    return v0
.end method

.method static synthetic -get4()Ljava/util/List;
    .locals 1

    sget-object v0, Lcom/android/server/audio/AudioService;->SOUND_EFFECT_FILES:Ljava/util/List;

    return-object v0
.end method

.method static synthetic -get40(Lcom/android/server/audio/AudioService;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/audio/AudioService;->mIsFolderOpen:Z

    return v0
.end method

.method static synthetic -get41(Lcom/android/server/audio/AudioService;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/audio/AudioService;->mIsSupportDisplayVolumeControl:Z

    return v0
.end method

.method static synthetic -get42(Lcom/android/server/audio/AudioService;)Lcom/android/server/audio/MediaFocusControl;
    .locals 1

    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mMediaFocusControl:Lcom/android/server/audio/MediaFocusControl;

    return-object v0
.end method

.method static synthetic -get43(Lcom/android/server/audio/AudioService;)I
    .locals 1

    iget v0, p0, Lcom/android/server/audio/AudioService;->mMode:I

    return v0
.end method

.method static synthetic -get44(Lcom/android/server/audio/AudioService;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/audio/AudioService;->mMonitorRotation:Z

    return v0
.end method

.method static synthetic -get45(Lcom/android/server/audio/AudioService;)I
    .locals 1

    iget v0, p0, Lcom/android/server/audio/AudioService;->mMonoMode:I

    return v0
.end method

.method static synthetic -get46(Lcom/android/server/audio/AudioService;)I
    .locals 1

    iget v0, p0, Lcom/android/server/audio/AudioService;->mMySoundEnabled:I

    return v0
.end method

.method static synthetic -get47(Lcom/android/server/audio/AudioService;)I
    .locals 1

    iget v0, p0, Lcom/android/server/audio/AudioService;->mNaturalSound:I

    return v0
.end method

.method static synthetic -get48(Lcom/android/server/audio/AudioService;)I
    .locals 1

    iget v0, p0, Lcom/android/server/audio/AudioService;->mNbQualityMode:I

    return v0
.end method

.method static synthetic -get49(Lcom/android/server/audio/AudioService;)Landroid/content/pm/PackageManager;
    .locals 1

    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mPackageManager:Landroid/content/pm/PackageManager;

    return-object v0
.end method

.method static synthetic -get5(Lcom/android/server/audio/AudioService;)[[I
    .locals 1

    iget-object v0, p0, Lcom/android/server/audio/AudioService;->SOUND_EFFECT_FILES_MAP:[[I

    return-object v0
.end method

.method static synthetic -get50(Lcom/android/server/audio/AudioService;)I
    .locals 1

    iget v0, p0, Lcom/android/server/audio/AudioService;->mPrevRingerMode:I

    return v0
.end method

.method static synthetic -get51(Lcom/android/server/audio/AudioService;)Landroid/app/IProcessObserver;
    .locals 1

    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mProcessObserver:Landroid/app/IProcessObserver;

    return-object v0
.end method

.method static synthetic -get52(Lcom/android/server/audio/AudioService;)I
    .locals 1

    iget v0, p0, Lcom/android/server/audio/AudioService;->mRingerMode:I

    return v0
.end method

.method static synthetic -get53(Lcom/android/server/audio/AudioService;)Landroid/media/AudioManagerInternal$RingerModeDelegate;
    .locals 1

    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mRingerModeDelegate:Landroid/media/AudioManagerInternal$RingerModeDelegate;

    return-object v0
.end method

.method static synthetic -get54(Lcom/android/server/audio/AudioService;)I
    .locals 1

    iget v0, p0, Lcom/android/server/audio/AudioService;->mScoAudioMode:I

    return v0
.end method

.method static synthetic -get55(Lcom/android/server/audio/AudioService;)I
    .locals 1

    iget v0, p0, Lcom/android/server/audio/AudioService;->mScoAudioState:I

    return v0
.end method

.method static synthetic -get56(Lcom/android/server/audio/AudioService;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mScoClients:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic -get57(Lcom/android/server/audio/AudioService;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mSetModeDeathHandlers:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic -get58(Lcom/android/server/audio/AudioService;)Lcom/android/server/audio/AudioService$AudioSettingsDBHelper;
    .locals 1

    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mSettingDBHelper:Lcom/android/server/audio/AudioService$AudioSettingsDBHelper;

    return-object v0
.end method

.method static synthetic -get59(Lcom/android/server/audio/AudioService;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mSettingsLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic -get6()Z
    .locals 1

    sget-boolean v0, Lcom/android/server/audio/AudioService;->SUPPORT_BOOST_MODE:Z

    return v0
.end method

.method static synthetic -get60(Lcom/android/server/audio/AudioService;)I
    .locals 1

    iget v0, p0, Lcom/android/server/audio/AudioService;->mSoundAliveEnabled:I

    return v0
.end method

.method static synthetic -get61(Lcom/android/server/audio/AudioService;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mSoundEffectsLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic -get62(Lcom/android/server/audio/AudioService;)Lcom/android/server/audio/AudioService$SoundKitchen;
    .locals 1

    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mSoundKitchen:Lcom/android/server/audio/AudioService$SoundKitchen;

    return-object v0
.end method

.method static synthetic -get63(Lcom/android/server/audio/AudioService;)Landroid/media/SoundPool;
    .locals 1

    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mSoundPool:Landroid/media/SoundPool;

    return-object v0
.end method

.method static synthetic -get64(Lcom/android/server/audio/AudioService;)Lcom/android/server/audio/AudioService$SoundPoolCallback;
    .locals 1

    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mSoundPoolCallBack:Lcom/android/server/audio/AudioService$SoundPoolCallback;

    return-object v0
.end method

.method static synthetic -get65(Lcom/android/server/audio/AudioService;)Lcom/android/server/audio/AudioService$SoundPoolListenerThread;
    .locals 1

    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mSoundPoolListenerThread:Lcom/android/server/audio/AudioService$SoundPoolListenerThread;

    return-object v0
.end method

.method static synthetic -get66(Lcom/android/server/audio/AudioService;)Landroid/os/Looper;
    .locals 1

    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mSoundPoolLooper:Landroid/os/Looper;

    return-object v0
.end method

.method static synthetic -get67(Lcom/android/server/audio/AudioService;)[Lcom/android/server/audio/AudioService$VolumeStreamState;
    .locals 1

    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mStreamStates:[Lcom/android/server/audio/AudioService$VolumeStreamState;

    return-object v0
.end method

.method static synthetic -get68(Lcom/android/server/audio/AudioService;)[I
    .locals 1

    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mStreamVolumeAlias:[I

    return-object v0
.end method

.method static synthetic -get69(Lcom/android/server/audio/AudioService;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/audio/AudioService;->mSystemReady:Z

    return v0
.end method

.method static synthetic -get7()Z
    .locals 1

    sget-boolean v0, Lcom/android/server/audio/AudioService;->SUPPORT_SAR_CONTROL_EARJACK_ENABLED:Z

    return v0
.end method

.method static synthetic -get70(Lcom/android/server/audio/AudioService;)I
    .locals 1

    iget v0, p0, Lcom/android/server/audio/AudioService;->mTubeAmpEnabled:I

    return v0
.end method

.method static synthetic -get71(Lcom/android/server/audio/AudioService;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/audio/AudioService;->mUSBDetected:Z

    return v0
.end method

.method static synthetic -get72(Lcom/android/server/audio/AudioService;)I
    .locals 1

    iget v0, p0, Lcom/android/server/audio/AudioService;->mUpscalerEnabled:I

    return v0
.end method

.method static synthetic -get73(Lcom/android/server/audio/AudioService;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/audio/AudioService;->mUseFixedVolume:Z

    return v0
.end method

.method static synthetic -get74(Lcom/android/server/audio/AudioService;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/audio/AudioService;->mUserSwitchedReceived:Z

    return v0
.end method

.method static synthetic -get75(Lcom/android/server/audio/AudioService;)Lcom/android/server/audio/AudioService$VolumeController;
    .locals 1

    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mVolumeController:Lcom/android/server/audio/AudioService$VolumeController;

    return-object v0
.end method

.method static synthetic -get76(Lcom/android/server/audio/AudioService;)Lcom/samsung/android/os/SemDvfsManager;
    .locals 1

    iget-object v0, p0, Lcom/android/server/audio/AudioService;->semDvfsCpuMin:Lcom/samsung/android/os/SemDvfsManager;

    return-object v0
.end method

.method static synthetic -get77(Lcom/android/server/audio/AudioService;)Landroid/widget/Toast;
    .locals 1

    iget-object v0, p0, Lcom/android/server/audio/AudioService;->toast:Landroid/widget/Toast;

    return-object v0
.end method

.method static synthetic -get8(Lcom/android/server/audio/AudioService;)Landroid/bluetooth/BluetoothA2dp;
    .locals 1

    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mA2dp:Landroid/bluetooth/BluetoothA2dp;

    return-object v0
.end method

.method static synthetic -get9(Lcom/android/server/audio/AudioService;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mA2dpAvrcpLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic -set0(Lcom/android/server/audio/AudioService;Landroid/bluetooth/BluetoothA2dp;)Landroid/bluetooth/BluetoothA2dp;
    .locals 0

    iput-object p1, p0, Lcom/android/server/audio/AudioService;->mA2dp:Landroid/bluetooth/BluetoothA2dp;

    return-object p1
.end method

.method static synthetic -set1(Lcom/android/server/audio/AudioService;Landroid/app/ActivityManager;)Landroid/app/ActivityManager;
    .locals 0

    iput-object p1, p0, Lcom/android/server/audio/AudioService;->mActivityManager:Landroid/app/ActivityManager;

    return-object p1
.end method

.method static synthetic -set10(Lcom/android/server/audio/AudioService;I)I
    .locals 0

    iput p1, p0, Lcom/android/server/audio/AudioService;->mDualMicMode:I

    return p1
.end method

.method static synthetic -set11(Lcom/android/server/audio/AudioService;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/android/server/audio/AudioService;->mExternalUsbInfo:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic -set12(Lcom/android/server/audio/AudioService;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/audio/AudioService;->mFakeState:Z

    return p1
.end method

.method static synthetic -set13(Lcom/android/server/audio/AudioService;Lcom/android/server/audio/AudioService$ForceControlStreamClient;)Lcom/android/server/audio/AudioService$ForceControlStreamClient;
    .locals 0

    iput-object p1, p0, Lcom/android/server/audio/AudioService;->mForceControlStreamClient:Lcom/android/server/audio/AudioService$ForceControlStreamClient;

    return-object p1
.end method

.method static synthetic -set14(Lcom/android/server/audio/AudioService;I)I
    .locals 0

    iput p1, p0, Lcom/android/server/audio/AudioService;->mForegroundUid:I

    return p1
.end method

.method static synthetic -set15(Lcom/android/server/audio/AudioService;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/audio/AudioService;->mHdmiCecSink:Z

    return p1
.end method

.method static synthetic -set16(Lcom/android/server/audio/AudioService;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/audio/AudioService;->mIsEarCareSettingOn:Z

    return p1
.end method

.method static synthetic -set17(Lcom/android/server/audio/AudioService;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/audio/AudioService;->mIsFolderOpen:Z

    return p1
.end method

.method static synthetic -set18(Lcom/android/server/audio/AudioService;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/audio/AudioService;->mIsPlaySilentModeOff:Z

    return p1
.end method

.method static synthetic -set19(Lcom/android/server/audio/AudioService;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/audio/AudioService;->mIsSupportDisplayVolumeControl:Z

    return p1
.end method

.method static synthetic -set2(Lcom/android/server/audio/AudioService;I)I
    .locals 0

    iput p1, p0, Lcom/android/server/audio/AudioService;->mAllSoundMute:I

    return p1
.end method

.method static synthetic -set20(Lcom/android/server/audio/AudioService;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/audio/AudioService;->mIsTalkBackEnabled:Z

    return p1
.end method

.method static synthetic -set21(Lcom/android/server/audio/AudioService;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/audio/AudioService;->mIsVibrate:Z

    return p1
.end method

.method static synthetic -set22(Lcom/android/server/audio/AudioService;J)J
    .locals 1

    iput-wide p1, p0, Lcom/android/server/audio/AudioService;->mLastBluetoothA2dpDisconnectionTime:J

    return-wide p1
.end method

.method static synthetic -set23(Lcom/android/server/audio/AudioService;I)I
    .locals 0

    iput p1, p0, Lcom/android/server/audio/AudioService;->mLateBootCompleted_WiredDevice:I

    return p1
.end method

.method static synthetic -set24(Lcom/android/server/audio/AudioService;I)I
    .locals 0

    iput p1, p0, Lcom/android/server/audio/AudioService;->mMediaLastAudibleIndex:I

    return p1
.end method

.method static synthetic -set25(Lcom/android/server/audio/AudioService;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/audio/AudioService;->mMediaSilentMode:Z

    return p1
.end method

.method static synthetic -set26(Lcom/android/server/audio/AudioService;I)I
    .locals 0

    iput p1, p0, Lcom/android/server/audio/AudioService;->mMonoMode:I

    return p1
.end method

.method static synthetic -set27(Lcom/android/server/audio/AudioService;I)I
    .locals 0

    iput p1, p0, Lcom/android/server/audio/AudioService;->mMySoundEnabled:I

    return p1
.end method

.method static synthetic -set28(Lcom/android/server/audio/AudioService;I)I
    .locals 0

    iput p1, p0, Lcom/android/server/audio/AudioService;->mNaturalSound:I

    return p1
.end method

.method static synthetic -set29(Lcom/android/server/audio/AudioService;I)I
    .locals 0

    iput p1, p0, Lcom/android/server/audio/AudioService;->mNbQualityMode:I

    return p1
.end method

.method static synthetic -set3(Lcom/android/server/audio/AudioService;Lcom/android/server/audio/AudioService$AudioHandler;)Lcom/android/server/audio/AudioService$AudioHandler;
    .locals 0

    iput-object p1, p0, Lcom/android/server/audio/AudioService;->mAudioHandler:Lcom/android/server/audio/AudioService$AudioHandler;

    return-object p1
.end method

.method static synthetic -set30(Lcom/android/server/audio/AudioService;Landroid/media/AudioManagerInternal$RingerModeDelegate;)Landroid/media/AudioManagerInternal$RingerModeDelegate;
    .locals 0

    iput-object p1, p0, Lcom/android/server/audio/AudioService;->mRingerModeDelegate:Landroid/media/AudioManagerInternal$RingerModeDelegate;

    return-object p1
.end method

.method static synthetic -set31(Lcom/android/server/audio/AudioService;I)I
    .locals 0

    iput p1, p0, Lcom/android/server/audio/AudioService;->mScoAudioMode:I

    return p1
.end method

.method static synthetic -set32(Lcom/android/server/audio/AudioService;I)I
    .locals 0

    iput p1, p0, Lcom/android/server/audio/AudioService;->mScoAudioState:I

    return p1
.end method

.method static synthetic -set33(Lcom/android/server/audio/AudioService;I)I
    .locals 0

    iput p1, p0, Lcom/android/server/audio/AudioService;->mSoundAliveEnabled:I

    return p1
.end method

.method static synthetic -set34(Lcom/android/server/audio/AudioService;Landroid/media/SoundPool;)Landroid/media/SoundPool;
    .locals 0

    iput-object p1, p0, Lcom/android/server/audio/AudioService;->mSoundPool:Landroid/media/SoundPool;

    return-object p1
.end method

.method static synthetic -set35(Lcom/android/server/audio/AudioService;Lcom/android/server/audio/AudioService$SoundPoolCallback;)Lcom/android/server/audio/AudioService$SoundPoolCallback;
    .locals 0

    iput-object p1, p0, Lcom/android/server/audio/AudioService;->mSoundPoolCallBack:Lcom/android/server/audio/AudioService$SoundPoolCallback;

    return-object p1
.end method

.method static synthetic -set36(Lcom/android/server/audio/AudioService;Lcom/android/server/audio/AudioService$SoundPoolListenerThread;)Lcom/android/server/audio/AudioService$SoundPoolListenerThread;
    .locals 0

    iput-object p1, p0, Lcom/android/server/audio/AudioService;->mSoundPoolListenerThread:Lcom/android/server/audio/AudioService$SoundPoolListenerThread;

    return-object p1
.end method

.method static synthetic -set37(Lcom/android/server/audio/AudioService;Landroid/os/Looper;)Landroid/os/Looper;
    .locals 0

    iput-object p1, p0, Lcom/android/server/audio/AudioService;->mSoundPoolLooper:Landroid/os/Looper;

    return-object p1
.end method

.method static synthetic -set38(Lcom/android/server/audio/AudioService;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/audio/AudioService;->mStartingSoundAssistant:Z

    return p1
.end method

.method static synthetic -set39(Lcom/android/server/audio/AudioService;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/audio/AudioService;->mStatusbarExpanded:Z

    return p1
.end method

.method static synthetic -set4(Lcom/android/server/audio/AudioService;I)I
    .locals 0

    iput p1, p0, Lcom/android/server/audio/AudioService;->mAudioPolicyCounter:I

    return p1
.end method

.method static synthetic -set40(Lcom/android/server/audio/AudioService;I)I
    .locals 0

    iput p1, p0, Lcom/android/server/audio/AudioService;->mTubeAmpEnabled:I

    return p1
.end method

.method static synthetic -set41(Lcom/android/server/audio/AudioService;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/audio/AudioService;->mUSBDetected:Z

    return p1
.end method

.method static synthetic -set42(Lcom/android/server/audio/AudioService;I)I
    .locals 0

    iput p1, p0, Lcom/android/server/audio/AudioService;->mUpscalerEnabled:I

    return p1
.end method

.method static synthetic -set43(Lcom/android/server/audio/AudioService;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/audio/AudioService;->mUserSwitchedReceived:Z

    return p1
.end method

.method static synthetic -set44(Lcom/android/server/audio/AudioService;I)I
    .locals 0

    iput p1, p0, Lcom/android/server/audio/AudioService;->mVolumeControlStream:I

    return p1
.end method

.method static synthetic -set45(Lcom/android/server/audio/AudioService;Landroid/widget/Toast;)Landroid/widget/Toast;
    .locals 0

    iput-object p1, p0, Lcom/android/server/audio/AudioService;->toast:Landroid/widget/Toast;

    return-object p1
.end method

.method static synthetic -set5(Lcom/android/server/audio/AudioService;Landroid/bluetooth/BluetoothHeadset;)Landroid/bluetooth/BluetoothHeadset;
    .locals 0

    iput-object p1, p0, Lcom/android/server/audio/AudioService;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

    return-object p1
.end method

.method static synthetic -set6(Lcom/android/server/audio/AudioService;Landroid/bluetooth/BluetoothDevice;)Landroid/bluetooth/BluetoothDevice;
    .locals 0

    iput-object p1, p0, Lcom/android/server/audio/AudioService;->mBluetoothHeadsetDevice:Landroid/bluetooth/BluetoothDevice;

    return-object p1
.end method

.method static synthetic -set7(Lcom/android/server/audio/AudioService;I)I
    .locals 0

    iput p1, p0, Lcom/android/server/audio/AudioService;->mBoostMode:I

    return p1
.end method

.method static synthetic -set8(Lcom/android/server/audio/AudioService;I)I
    .locals 0

    iput p1, p0, Lcom/android/server/audio/AudioService;->mBoostUpscalerEnabled:I

    return p1
.end method

.method static synthetic -set9(Lcom/android/server/audio/AudioService;I)I
    .locals 0

    iput p1, p0, Lcom/android/server/audio/AudioService;->mDockState:I

    return p1
.end method

.method static synthetic -wrap0(Lcom/android/server/audio/AudioService;)Landroid/media/session/ISessionManager;
    .locals 1

    invoke-direct {p0}, Lcom/android/server/audio/AudioService;->getSessionManager()Landroid/media/session/ISessionManager;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap1(Lcom/android/server/audio/AudioService;)Z
    .locals 1

    invoke-direct {p0}, Lcom/android/server/audio/AudioService;->checkCPUBoostForEffect()Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap10(Lcom/android/server/audio/AudioService;)I
    .locals 1

    invoke-direct {p0}, Lcom/android/server/audio/AudioService;->getCurOutDevice()I

    move-result v0

    return v0
.end method

.method static synthetic -wrap11(Lcom/android/server/audio/AudioService;I)I
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/server/audio/AudioService;->getDeviceForStream(I)I

    move-result v0

    return v0
.end method

.method static synthetic -wrap12(Lcom/android/server/audio/AudioService;I)I
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/server/audio/AudioService;->getDevicesForStream(I)I

    move-result v0

    return v0
.end method

.method static synthetic -wrap13(Lcom/android/server/audio/AudioService;III)I
    .locals 1

    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/audio/AudioService;->rescaleIndex(III)I

    move-result v0

    return v0
.end method

.method static synthetic -wrap14(Lcom/android/server/audio/AudioService;ILandroid/os/IBinder;ILjava/lang/String;)I
    .locals 1

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/audio/AudioService;->setModeInt(ILandroid/os/IBinder;ILjava/lang/String;)I

    move-result v0

    return v0
.end method

.method static synthetic -wrap15(Lcom/android/server/audio/AudioService;I)Ljava/lang/String;
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/server/audio/AudioService;->getAddressForDevice(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap16(Lcom/android/server/audio/AudioService;ILjava/lang/String;)Ljava/lang/String;
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/android/server/audio/AudioService;->makeDeviceListKey(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap17(Lcom/android/server/audio/AudioService;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/audio/AudioService;->acquireCPUBoost()V

    return-void
.end method

.method static synthetic -wrap18(Lcom/android/server/audio/AudioService;IIILjava/lang/String;Ljava/lang/String;I)V
    .locals 0

    invoke-direct/range {p0 .. p6}, Lcom/android/server/audio/AudioService;->adjustStreamVolume(IIILjava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic -wrap19(Lcom/android/server/audio/AudioService;IIILjava/lang/String;Ljava/lang/String;I)V
    .locals 0

    invoke-direct/range {p0 .. p6}, Lcom/android/server/audio/AudioService;->adjustSuggestedStreamVolume(IIILjava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic -wrap2(Lcom/android/server/audio/AudioService;I)Z
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/server/audio/AudioService;->checkDeviceConnected(I)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap20(Lcom/android/server/audio/AudioService;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/audio/AudioService;->broadcastScoConnectionState(I)V

    return-void
.end method

.method static synthetic -wrap21(Lcom/android/server/audio/AudioService;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/audio/AudioService;->checkAllFixedVolumeDevices()V

    return-void
.end method

.method static synthetic -wrap22(Lcom/android/server/audio/AudioService;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/audio/AudioService;->checkAndSendEarCareInfo()V

    return-void
.end method

.method static synthetic -wrap23(Lcom/android/server/audio/AudioService;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/audio/AudioService;->checkAndSetThemeSound(Z)V

    return-void
.end method

.method static synthetic -wrap24(Lcom/android/server/audio/AudioService;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/audio/AudioService;->checkScoAudioState()V

    return-void
.end method

.method static synthetic -wrap25(Lcom/android/server/audio/AudioService;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/audio/AudioService;->clearSoundAssistantSettings()V

    return-void
.end method

.method static synthetic -wrap26(Lcom/android/server/audio/AudioService;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/audio/AudioService;->disconnectBluetoothSco(I)V

    return-void
.end method

.method static synthetic -wrap27(Lcom/android/server/audio/AudioService;Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/audio/AudioService;->handleConfigurationChanged(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic -wrap28(Lcom/android/server/audio/AudioService;Landroid/content/pm/UserInfo;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/audio/AudioService;->killBackgroundUserProcessesWithRecordAudioPermission(Landroid/content/pm/UserInfo;)V

    return-void
.end method

.method static synthetic -wrap29(Lcom/android/server/audio/AudioService;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/audio/AudioService;->loadTouchSoundAssets()V

    return-void
.end method

.method static synthetic -wrap3(Lcom/android/server/audio/AudioService;)Z
    .locals 1

    invoke-direct {p0}, Lcom/android/server/audio/AudioService;->getBluetoothHeadset()Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap30(Lcom/android/server/audio/AudioService;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/audio/AudioService;->makeA2dpDeviceUnavailableNow(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic -wrap31(Lcom/android/server/audio/AudioService;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/audio/AudioService;->observeDevicesForStreams(I)V

    return-void
.end method

.method static synthetic -wrap32(Lcom/android/server/audio/AudioService;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/audio/AudioService;->onBroadcastScoConnectionState(I)V

    return-void
.end method

.method static synthetic -wrap33(Lcom/android/server/audio/AudioService;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/audio/AudioService;->onCheckMusicActive(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic -wrap34(Lcom/android/server/audio/AudioService;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/audio/AudioService;->onCheckMuteInterval(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic -wrap35(Lcom/android/server/audio/AudioService;ZLjava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/server/audio/AudioService;->onConfigureSafeVolume(ZLjava/lang/String;)V

    return-void
.end method

.method static synthetic -wrap36(Lcom/android/server/audio/AudioService;Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/server/audio/AudioService;->onDynPolicyMixStateUpdate(Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic -wrap37(Lcom/android/server/audio/AudioService;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/audio/AudioService;->onSendBecomingNoisyIntent(I)V

    return-void
.end method

.method static synthetic -wrap38(Lcom/android/server/audio/AudioService;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/server/audio/AudioService;->onSendBecomingNoisyIntent(II)V

    return-void
.end method

.method static synthetic -wrap39(Lcom/android/server/audio/AudioService;Landroid/bluetooth/BluetoothDevice;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/server/audio/AudioService;->onSetA2dpSinkConnectionState(Landroid/bluetooth/BluetoothDevice;I)V

    return-void
.end method

.method static synthetic -wrap4(Lcom/android/server/audio/AudioService;)Z
    .locals 1

    invoke-direct {p0}, Lcom/android/server/audio/AudioService;->isInCommunication()Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap40(Lcom/android/server/audio/AudioService;Landroid/bluetooth/BluetoothDevice;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/server/audio/AudioService;->onSetA2dpSourceConnectionState(Landroid/bluetooth/BluetoothDevice;I)V

    return-void
.end method

.method static synthetic -wrap41(Lcom/android/server/audio/AudioService;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Lcom/android/server/audio/AudioService;->onSetWiredDeviceConnectionState(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic -wrap42(Lcom/android/server/audio/AudioService;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/server/audio/AudioService;->onUnmuteStream(II)V

    return-void
.end method

.method static synthetic -wrap43(Lcom/android/server/audio/AudioService;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/audio/AudioService;->performSoftReset()V

    return-void
.end method

.method static synthetic -wrap44(Lcom/android/server/audio/AudioService;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/audio/AudioService;->playSilentModeSound()V

    return-void
.end method

.method static synthetic -wrap45(Lcom/android/server/audio/AudioService;Landroid/os/Handler;IIILjava/lang/Object;I)V
    .locals 0

    invoke-direct/range {p0 .. p6}, Lcom/android/server/audio/AudioService;->queueMsgUnderWakeLock(Landroid/os/Handler;IIILjava/lang/Object;I)V

    return-void
.end method

.method static synthetic -wrap46(Lcom/android/server/audio/AudioService;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/audio/AudioService;->readAudioSettings(Z)V

    return-void
.end method

.method static synthetic -wrap47(Lcom/android/server/audio/AudioService;Landroid/content/ContentResolver;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/audio/AudioService;->readDockAudioSettings(Landroid/content/ContentResolver;)V

    return-void
.end method

.method static synthetic -wrap48(Lcom/android/server/audio/AudioService;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/audio/AudioService;->releaseCPUBoost()V

    return-void
.end method

.method static synthetic -wrap49(Lcom/android/server/audio/AudioService;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/audio/AudioService;->reloadWhitelist()V

    return-void
.end method

.method static synthetic -wrap5(Lcom/android/server/audio/AudioService;)Z
    .locals 1

    invoke-direct {p0}, Lcom/android/server/audio/AudioService;->isPlatformTelevision()Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap50(Lcom/android/server/audio/AudioService;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/audio/AudioService;->resetBluetoothSco()V

    return-void
.end method

.method static synthetic -wrap51(Lcom/android/server/audio/AudioService;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/audio/AudioService;->runSoundAssistant()V

    return-void
.end method

.method static synthetic -wrap52(Lcom/android/server/audio/AudioService;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/audio/AudioService;->sendBecomingNoisyIntent(I)V

    return-void
.end method

.method static synthetic -wrap53(Lcom/android/server/audio/AudioService;Landroid/content/Intent;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/audio/AudioService;->sendBroadcastToAll(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic -wrap54(Lcom/android/server/audio/AudioService;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/audio/AudioService;->sendEncodedSurroundMode(I)V

    return-void
.end method

.method static synthetic -wrap55(Lcom/android/server/audio/AudioService;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/audio/AudioService;->sendHWParamServer()V

    return-void
.end method

.method static synthetic -wrap56(Landroid/os/Handler;IIIILjava/lang/Object;I)V
    .locals 0

    invoke-static/range {p0 .. p6}, Lcom/android/server/audio/AudioService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    return-void
.end method

.method static synthetic -wrap57(Lcom/android/server/audio/AudioService;Landroid/content/Intent;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/audio/AudioService;->sendStickyBroadcastToAll(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic -wrap58(Lcom/android/server/audio/AudioService;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/audio/AudioService;->setAllSoundMute()V

    return-void
.end method

.method static synthetic -wrap59(Lcom/android/server/audio/AudioService;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/audio/AudioService;->setDualMicMode(I)V

    return-void
.end method

.method static synthetic -wrap6(Lcom/android/server/audio/AudioService;)Z
    .locals 1

    invoke-direct {p0}, Lcom/android/server/audio/AudioService;->isTalkBackEnabled()Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap60(Lcom/android/server/audio/AudioService;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/server/audio/AudioService;->setForceUseInt_SyncDevices(II)V

    return-void
.end method

.method static synthetic -wrap61(Lcom/android/server/audio/AudioService;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/audio/AudioService;->setGlobalMySound(I)V

    return-void
.end method

.method static synthetic -wrap62(Lcom/android/server/audio/AudioService;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/audio/AudioService;->setGlobalUpscaler(I)V

    return-void
.end method

.method static synthetic -wrap63(Lcom/android/server/audio/AudioService;ZII)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/audio/AudioService;->setMasterMuteInternalNoCallerCheck(ZII)V

    return-void
.end method

.method static synthetic -wrap64(Lcom/android/server/audio/AudioService;ZI)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/server/audio/AudioService;->setMicrophoneMuteNoCallerCheck(ZI)V

    return-void
.end method

.method static synthetic -wrap65(Lcom/android/server/audio/AudioService;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/audio/AudioService;->setMonoMode(I)V

    return-void
.end method

.method static synthetic -wrap66(Lcom/android/server/audio/AudioService;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/audio/AudioService;->setNaturalSoundMode(I)V

    return-void
.end method

.method static synthetic -wrap67(Lcom/android/server/audio/AudioService;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/audio/AudioService;->setNbQualityMode(I)V

    return-void
.end method

.method static synthetic -wrap68(Lcom/android/server/audio/AudioService;IZ)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/server/audio/AudioService;->setRingerModeInt(IZ)V

    return-void
.end method

.method static synthetic -wrap69(Lcom/android/server/audio/AudioService;IIILjava/lang/String;Ljava/lang/String;I)V
    .locals 0

    invoke-direct/range {p0 .. p6}, Lcom/android/server/audio/AudioService;->setStreamVolume(IIILjava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic -wrap7(Lcom/android/server/audio/AudioService;)Z
    .locals 1

    invoke-direct {p0}, Lcom/android/server/audio/AudioService;->isUSBCheckStreamActive()Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap70(Lcom/android/server/audio/AudioService;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Lcom/android/server/audio/AudioService;->setWiredDeviceConnectionStateWithoutIntent(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic -wrap71(Lcom/android/server/audio/AudioService;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/audio/AudioService;->startCPUBoost(I)V

    return-void
.end method

.method static synthetic -wrap72(Lcom/android/server/audio/AudioService;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/audio/AudioService;->stopCPUBoost(I)V

    return-void
.end method

.method static synthetic -wrap73(Lcom/android/server/audio/AudioService;Landroid/content/ContentResolver;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/audio/AudioService;->updateMasterMono(Landroid/content/ContentResolver;)V

    return-void
.end method

.method static synthetic -wrap74(Lcom/android/server/audio/AudioService;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/audio/AudioService;->vibrateCall()V

    return-void
.end method

.method static synthetic -wrap8(Lcom/android/server/audio/AudioService;)Z
    .locals 1

    invoke-direct {p0}, Lcom/android/server/audio/AudioService;->updateRingerModeAffectedStreams()Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap9(Lcom/android/server/audio/AudioService;II)I
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/android/server/audio/AudioService;->checkSendBecomingNoisyIntent(II)I

    move-result v0

    return v0
.end method

.method static constructor <clinit>()V
    .locals 8

    const/16 v3, 0xa

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    const-string/jumbo v0, "AudioService"

    invoke-static {v0, v4}, Landroid/media/AudioManager$AudioLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/audio/AudioService;->DEBUG_MODE:Z

    const-string/jumbo v0, "AudioService"

    invoke-static {v0, v4}, Landroid/media/AudioManager$AudioLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/audio/AudioService;->DEBUG_AP:Z

    const-string/jumbo v0, "AudioService"

    invoke-static {v0, v4}, Landroid/media/AudioManager$AudioLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/audio/AudioService;->DEBUG_VOL:Z

    const-string/jumbo v0, "AudioService"

    invoke-static {v0, v4}, Landroid/media/AudioManager$AudioLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/audio/AudioService;->DEBUG_DEVICES:Z

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/server/audio/AudioService;->SOUND_EFFECT_FILES:Ljava/util/List;

    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v0

    const-string/jumbo v1, "SEC_FLOATING_FEATURE_AUDIO_SUPPORT_MULTI_DEVICE_SOUND"

    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/SemFloatingFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/audio/AudioService;->MULTISOUND_ENABLED:Z

    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v0

    const-string/jumbo v1, "SEC_FLOATING_FEATURE_AUDIO_SUPPORT_SAR_CONTROL_BY_EARJACK"

    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/SemFloatingFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/audio/AudioService;->SUPPORT_SAR_CONTROL_EARJACK_ENABLED:Z

    const/16 v0, 0xe

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/server/audio/AudioService;->MAX_STREAM_VOLUME:[I

    new-array v0, v3, [Ljava/lang/String;

    const-string/jumbo v1, "CR_MTIP"

    aput-object v1, v0, v4

    const-string/jumbo v1, "CR_QPBT"

    aput-object v1, v0, v5

    const-string/jumbo v1, "CR_QPUS"

    aput-object v1, v0, v6

    const-string/jumbo v1, "CR_QPWF"

    aput-object v1, v0, v7

    const-string/jumbo v1, "CR_QPRS"

    const/4 v2, 0x4

    aput-object v1, v0, v2

    const-string/jumbo v1, "CR_QPDF"

    const/4 v2, 0x5

    aput-object v1, v0, v2

    const-string/jumbo v1, "CR_SPCT"

    const/4 v2, 0x6

    aput-object v1, v0, v2

    const-string/jumbo v1, "CR_SPST"

    const/4 v2, 0x7

    aput-object v1, v0, v2

    const-string/jumbo v1, "CA_EVCT"

    const/16 v2, 0x8

    aput-object v1, v0, v2

    const-string/jumbo v1, "CA_WFCT"

    const/16 v2, 0x9

    aput-object v1, v0, v2

    sput-object v0, Lcom/android/server/audio/AudioService;->AUDIOCORE_BIGDATA:[Ljava/lang/String;

    const/16 v0, 0xe

    new-array v0, v0, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/android/server/audio/AudioService;->MIN_STREAM_VOLUME:[I

    new-array v0, v3, [I

    fill-array-data v0, :array_2

    sput-object v0, Lcom/android/server/audio/AudioService;->STREAM_VOLUME_OPS:[I

    new-instance v0, Ljava/lang/Long;

    const-wide/16 v2, 0x0

    invoke-direct {v0, v2, v3}, Ljava/lang/Long;-><init>(J)V

    sput-object v0, Lcom/android/server/audio/AudioService;->mLastDeviceConnectMsgTime:Ljava/lang/Long;

    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v0

    const-string/jumbo v1, "SEC_FLOATING_FEATURE_AUDIO_SUPPORT_LOW_POWER_MODE"

    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/SemFloatingFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/audio/AudioService;->LPM_ENABLED:Z

    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v0

    const-string/jumbo v1, "SEC_FLOATING_FEATURE_COMMON_SUPPORT_HIGH_PERFORMANCE_MODE"

    invoke-virtual {v0, v1, v4}, Lcom/samsung/android/feature/SemFloatingFeature;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/audio/AudioService;->SUPPORT_BOOST_MODE:Z

    new-array v0, v6, [Ljava/lang/String;

    const-string/jumbo v1, "Smart Dock with TA"

    aput-object v1, v0, v4

    const-string/jumbo v1, "Smart Dock+TA"

    aput-object v1, v0, v5

    sput-object v0, Lcom/android/server/audio/AudioService;->DOCK_DEVICE_NAME:[Ljava/lang/String;

    new-array v0, v7, [Ljava/lang/String;

    const-string/jumbo v1, "SILENT"

    aput-object v1, v0, v4

    const-string/jumbo v1, "VIBRATE"

    aput-object v1, v0, v5

    const-string/jumbo v1, "NORMAL"

    aput-object v1, v0, v6

    sput-object v0, Lcom/android/server/audio/AudioService;->RINGER_MODE_NAMES:[Ljava/lang/String;

    return-void

    nop

    :array_0
    .array-data 4
        0x5
        0x7
        0x7
        0xf
        0x7
        0x7
        0xf
        0x7
        0xf
        0xf
        0xf
        0x5
        0x5
        0xf
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
    .end array-data

    :array_2
    .array-data 4
        0x22
        0x24
        0x23
        0x24
        0x25
        0x26
        0x27
        0x24
        0x24
        0x24
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 23

    invoke-direct/range {p0 .. p0}, Landroid/media/IAudioService$Stub;-><init>()V

    new-instance v2, Lcom/android/server/audio/AudioService$VolumeController;

    invoke-direct {v2}, Lcom/android/server/audio/AudioService$VolumeController;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/audio/AudioService;->mVolumeController:Lcom/android/server/audio/AudioService$VolumeController;

    new-instance v2, Lcom/android/server/audio/AudioService$ControllerService;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lcom/android/server/audio/AudioService$ControllerService;-><init>(Lcom/android/server/audio/AudioService;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/audio/AudioService;->mControllerService:Lcom/android/server/audio/AudioService$ControllerService;

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/server/audio/AudioService;->mHMTDocked:Z

    const-string/jumbo v2, "h2w"

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/audio/AudioService;->mLateBootCompleted_WiredDeviceName_real:Ljava/lang/String;

    const-string/jumbo v2, "h2w-before-boot-completed"

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/audio/AudioService;->mLateBootCompleted_WiredDeviceName_temporary:Ljava/lang/String;

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/server/audio/AudioService;->mMode:I

    new-instance v2, Ljava/lang/Object;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/audio/AudioService;->mSettingsLock:Ljava/lang/Object;

    new-instance v2, Ljava/lang/Object;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/audio/AudioService;->mSoundEffectsLock:Ljava/lang/Object;

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/audio/AudioService;->SOUND_EFFECTS_PATH_THEME:Ljava/lang/String;

    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/16 v3, 0x10

    const/4 v4, 0x2

    filled-new-array {v3, v4}, [I

    move-result-object v3

    invoke-static {v2, v3}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [[I

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/audio/AudioService;->SOUND_EFFECT_FILES_MAP:[[I

    const/16 v2, 0xe

    new-array v2, v2, [I

    fill-array-data v2, :array_0

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/audio/AudioService;->MAX_STREAM_VOLUME2:[I

    const/16 v2, 0xe

    new-array v2, v2, [I

    fill-array-data v2, :array_1

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/audio/AudioService;->MAX_STREAM_VOLUME_DOUBLE:[I

    const/16 v2, 0xe

    new-array v2, v2, [I

    fill-array-data v2, :array_2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/audio/AudioService;->STREAM_VOLUME_ALIAS_VOICE:[I

    const/16 v2, 0xe

    new-array v2, v2, [I

    fill-array-data v2, :array_3

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/audio/AudioService;->STREAM_VOLUME_ALIAS_TELEVISION:[I

    const/16 v2, 0xe

    new-array v2, v2, [I

    fill-array-data v2, :array_4

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/audio/AudioService;->STREAM_VOLUME_ALIAS_DEFAULT:[I

    new-instance v2, Lcom/android/server/audio/AudioService$1;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lcom/android/server/audio/AudioService$1;-><init>(Lcom/android/server/audio/AudioService;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/audio/AudioService;->mAudioSystemCallback:Landroid/media/AudioSystem$ErrorCallback;

    const/4 v2, -0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/server/audio/AudioService;->mRingerModeExternal:I

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/server/audio/AudioService;->mRingerModeAffectedStreams:I

    new-instance v2, Lcom/android/server/audio/AudioService$AudioServiceBroadcastReceiver;

    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-direct {v2, v0, v3}, Lcom/android/server/audio/AudioService$AudioServiceBroadcastReceiver;-><init>(Lcom/android/server/audio/AudioService;Lcom/android/server/audio/AudioService$AudioServiceBroadcastReceiver;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/audio/AudioService;->mReceiver:Landroid/content/BroadcastReceiver;

    new-instance v2, Lcom/android/server/audio/AudioService$AudioServiceUserRestrictionsListener;

    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-direct {v2, v0, v3}, Lcom/android/server/audio/AudioService$AudioServiceUserRestrictionsListener;-><init>(Lcom/android/server/audio/AudioService;Lcom/android/server/audio/AudioService$AudioServiceUserRestrictionsListener;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/audio/AudioService;->mUserRestrictionsListener:Landroid/os/UserManagerInternal$UserRestrictionsListener;

    new-instance v2, Landroid/util/ArrayMap;

    invoke-direct {v2}, Landroid/util/ArrayMap;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/audio/AudioService;->mConnectedDevices:Landroid/util/ArrayMap;

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/audio/AudioService;->mLastConnectedDevice:Lcom/android/server/audio/AudioService$DeviceListSpec;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/audio/AudioService;->mSetModeDeathHandlers:Ljava/util/ArrayList;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/audio/AudioService;->mScoClients:Ljava/util/ArrayList;

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/audio/AudioService;->mSoundPoolLooper:Landroid/os/Looper;

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/server/audio/AudioService;->mPrevVolDirection:I

    const/4 v2, -0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/server/audio/AudioService;->mVolumeControlStream:I

    new-instance v2, Ljava/lang/Object;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/audio/AudioService;->mForceControlStreamLock:Ljava/lang/Object;

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/audio/AudioService;->mForceControlStreamClient:Lcom/android/server/audio/AudioService$ForceControlStreamClient;

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/server/audio/AudioService;->mDeviceOrientation:I

    new-instance v2, Ljava/lang/Object;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/audio/AudioService;->mBluetoothA2dpEnabledLock:Ljava/lang/Object;

    new-instance v2, Landroid/media/AudioRoutesInfo;

    invoke-direct {v2}, Landroid/media/AudioRoutesInfo;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/audio/AudioService;->mCurAudioRoutes:Landroid/media/AudioRoutesInfo;

    new-instance v2, Landroid/os/RemoteCallbackList;

    invoke-direct {v2}, Landroid/os/RemoteCallbackList;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/audio/AudioService;->mRoutesObservers:Landroid/os/RemoteCallbackList;

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/server/audio/AudioService;->mFixedVolumeDevices:I

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/server/audio/AudioService;->mFullVolumeDevices:I

    const/16 v2, 0xa

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/server/audio/AudioService;->FINE_VOLUME_LEVEL:I

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/server/audio/AudioService;->FINE_VOLUME_MIN:I

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/audio/AudioService;->FINE_VOLUME_LEVEL:I

    add-int/lit8 v2, v2, -0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/server/audio/AudioService;->FINE_VOLUME_MAX:I

    const/4 v2, -0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/server/audio/AudioService;->mForegroundUid:I

    new-instance v2, Lcom/android/server/audio/AudioService$2;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lcom/android/server/audio/AudioService$2;-><init>(Lcom/android/server/audio/AudioService;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/audio/AudioService;->mProcessObserver:Landroid/app/IProcessObserver;

    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/server/audio/AudioService;->mDockAudioMediaEnabled:Z

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/server/audio/AudioService;->mDockState:I

    new-instance v2, Ljava/lang/Object;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/audio/AudioService;->mA2dpAvrcpLock:Ljava/lang/Object;

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/server/audio/AudioService;->mAvrcpAbsVolSupported:Z

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/server/audio/AudioService;->isEarBackOff:Z

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v2

    const-string/jumbo v3, "CscFeature_Audio_ConfigActionVolumeKey"

    invoke-virtual {v2, v3}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/audio/AudioService;->ConfigVolumeKey:Ljava/lang/String;

    const-string/jumbo v2, "Silent"

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/audio/AudioService;->ConfigVolumeKey:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    const/4 v2, 0x1

    :goto_0
    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/server/audio/AudioService;->volumeDownToSilent:Z

    new-instance v2, Landroid/media/VolumePolicy;

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/server/audio/AudioService;->volumeDownToSilent:Z

    const/4 v4, 0x1

    const/4 v6, 0x1

    const/16 v7, 0x190

    invoke-direct {v2, v3, v4, v6, v7}, Landroid/media/VolumePolicy;-><init>(ZZZI)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/audio/AudioService;->mVolumePolicy:Landroid/media/VolumePolicy;

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/audio/AudioService;->multiSoundToast:Landroid/widget/Toast;

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/server/audio/AudioService;->mMediaSilentMode:Z

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/server/audio/AudioService;->mMediaLastAudibleIndex:I

    const/4 v2, -0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/server/audio/AudioService;->mLateBootCompleted_WiredDevice:I

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/server/audio/AudioService;->mIsTogether:Z

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/server/audio/AudioService;->mIsCoverSafetyVolume:Z

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/server/audio/AudioService;->mSplitSound:Z

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/server/audio/AudioService;->mIsExceptionalDevice:Z

    const-string/jumbo v2, "AudioFocus_For_Phone_Ring_And_Calls"

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/audio/AudioService;->IN_VOICE_COMM_FOCUS_ID:Ljava/lang/String;

    const-string/jumbo v2, "com.android.server.telecom"

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/audio/AudioService;->PHONE_PACKAGE_NAME:Ljava/lang/String;

    const-string/jumbo v2, "com.sec.android.app.voicenote"

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/audio/AudioService;->VOICENOTE_PACKAGE_NAME:Ljava/lang/String;

    const-string/jumbo v2, "com.android.settings"

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/audio/AudioService;->SETTING_PACKAGE_NAME:Ljava/lang/String;

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/server/audio/AudioService;->mIsMediaVolumeBackup:Z

    const/4 v2, 0x6

    new-array v2, v2, [I

    fill-array-data v2, :array_5

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/audio/AudioService;->mMediaVolumeBackup:[I

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/audio/AudioService;->mIsSetupwizardFinish:Ljava/lang/String;

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/audio/AudioService;->semDvfsCpuMin:Lcom/samsung/android/os/SemDvfsManager;

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/server/audio/AudioService;->mCPUBoostType:I

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/server/audio/AudioService;->mCPUBoostValueForVoip:I

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/server/audio/AudioService;->mCPUBoostValueForEffect:I

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/server/audio/AudioService;->mCPUBoostTryCnt:I

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/server/audio/AudioService;->mCPUBoostTryStandbyCnt:I

    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/server/audio/AudioService;->mIsScreenState:Z

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/audio/AudioService;->semLowPowerMode:Lcom/samsung/android/os/SemDvfsManager;

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/server/audio/AudioService;->mIsEarCareSettingOn:Z

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/server/audio/AudioService;->mIsEarCareEnabled:Z

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/server/audio/AudioService;->mOldIsSmartdock:Z

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/server/audio/AudioService;->mUsbSupportedFormat:I

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/audio/AudioService;->mCoverManager:Lcom/samsung/android/cover/CoverManager;

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/audio/AudioService;->mSContextManager:Landroid/hardware/scontext/SContextManager;

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/server/audio/AudioService;->mSilentModeOff:Z

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/server/audio/AudioService;->mIsPlaySilentModeOff:Z

    new-instance v2, Landroid/util/SparseArray;

    invoke-direct {v2}, Landroid/util/SparseArray;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/audio/AudioService;->mModeListOndump:Landroid/util/SparseArray;

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/server/audio/AudioService;->mIsFolderOpen:Z

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/server/audio/AudioService;->mIsFactoryMode:Z

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/server/audio/AudioService;->mIsFactorySim:Z

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/audio/AudioService;->mVibrator:Landroid/os/SystemVibrator;

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/server/audio/AudioService;->mIsVibrate:Z

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/audio/AudioService;->mMediaSessionService:Landroid/media/session/ISessionManager;

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/audio/AudioService;->mCategorizer:Lcom/android/server/audio/AudioService$AppCategorizer;

    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-short v2, v0, Lcom/android/server/audio/AudioService;->mHallSensorType:S

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/server/audio/AudioService;->mBtNxpShareIF_LSI:Z

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/server/audio/AudioService;->mIsDefaultStreamNotification:Z

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/server/audio/AudioService;->mIsScreenOffMusicOn:I

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/audio/AudioService;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/server/audio/AudioService;->mbVolumeLimitOn:Z

    const/16 v2, 0xf

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/server/audio/AudioService;->mVolumeLimitValue:I

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/audio/AudioService;->mAlarmManager:Landroid/app/AlarmManager;

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/audio/AudioService;->mSemHqmManager:Landroid/os/SemHqmManager;

    const-wide/16 v2, 0x0

    move-object/from16 v0, p0

    iput-wide v2, v0, Lcom/android/server/audio/AudioService;->mLastBluetoothA2dpDisconnectionTime:J

    const/16 v2, 0x3e8

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/server/audio/AudioService;->reconnectDelay:I

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/audio/AudioService;->toast:Landroid/widget/Toast;

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/audio/AudioService;->mSettingDBHelper:Lcom/android/server/audio/AudioService$AudioSettingsDBHelper;

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/server/audio/AudioService;->mIsSupportDisplayVolumeControl:Z

    new-instance v2, Landroid/util/SparseIntArray;

    const/4 v3, 0x5

    invoke-direct {v2, v3}, Landroid/util/SparseIntArray;-><init>(I)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/audio/AudioService;->mAppVolumeFromSoundAssistant:Landroid/util/SparseIntArray;

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/server/audio/AudioService;->mRmtSbmxFullVolRefCount:I

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/audio/AudioService;->mRmtSbmxFullVolDeathHandlers:Ljava/util/ArrayList;

    new-instance v2, Lcom/android/server/audio/AudioService$3;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lcom/android/server/audio/AudioService$3;-><init>(Lcom/android/server/audio/AudioService;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/audio/AudioService;->mBluetoothProfileServiceListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;

    const v2, 0x202ff8c

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/server/audio/AudioService;->mBecomingNoisyIntentDevices:I

    const/16 v2, 0x180

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/server/audio/AudioService;->mSafeMediaVolumeDevicesForA2DP:I

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/server/audio/AudioService;->mMuteIntervalMs:I

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/server/audio/AudioService;->mResetMuteInterval:Z

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/server/audio/AudioService;->mMcc:I

    const/16 v2, 0x18c

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/server/audio/AudioService;->mSafeMediaVolumeDevices:I

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/server/audio/AudioService;->mHdmiSystemAudioSupported:Z

    new-instance v2, Lcom/android/server/audio/AudioService$MyDisplayStatusCallback;

    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-direct {v2, v0, v3}, Lcom/android/server/audio/AudioService$MyDisplayStatusCallback;-><init>(Lcom/android/server/audio/AudioService;Lcom/android/server/audio/AudioService$MyDisplayStatusCallback;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/audio/AudioService;->mHdmiDisplayStatusCallback:Lcom/android/server/audio/AudioService$MyDisplayStatusCallback;

    new-instance v2, Lcom/android/server/audio/AudioService$4;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lcom/android/server/audio/AudioService$4;-><init>(Lcom/android/server/audio/AudioService;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/audio/AudioService;->mDynPolicyCallback:Landroid/media/AudioSystem$DynamicPolicyCallback;

    new-instance v2, Lcom/android/server/audio/RecordingActivityMonitor;

    invoke-direct {v2}, Lcom/android/server/audio/RecordingActivityMonitor;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/audio/AudioService;->mRecordMonitor:Lcom/android/server/audio/RecordingActivityMonitor;

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/audio/AudioService;->mAudioPolicies:Ljava/util/HashMap;

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/server/audio/AudioService;->mAudioPolicyCounter:I

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/server/audio/AudioService;->mStartingSoundAssistant:Z

    new-instance v2, Ljava/lang/Object;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/audio/AudioService;->mSoundAssistantLock:Ljava/lang/Object;

    new-instance v2, Lcom/android/server/audio/AudioService$5;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lcom/android/server/audio/AudioService$5;-><init>(Lcom/android/server/audio/AudioService;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/audio/AudioService;->mUEventUsbConnectObserver:Landroid/os/UEventObserver;

    new-instance v2, Lcom/android/server/audio/AudioService$6;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lcom/android/server/audio/AudioService$6;-><init>(Lcom/android/server/audio/AudioService;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/audio/AudioService;->mHallSensorListener:Landroid/hardware/scontext/SContextListener;

    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/audio/AudioService;->mContext:Landroid/content/Context;

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/audio/AudioService;->mContentResolver:Landroid/content/ContentResolver;

    const-string/jumbo v2, "appops"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/AppOpsManager;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/audio/AudioService;->mAppOps:Landroid/app/AppOpsManager;

    invoke-static/range {p1 .. p1}, Landroid/media/AudioSystem;->getPlatformType(Landroid/content/Context;)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/server/audio/AudioService;->mPlatformType:I

    const-class v2, Landroid/os/UserManagerInternal;

    invoke-static {v2}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/UserManagerInternal;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/audio/AudioService;->mUserManagerInternal:Landroid/os/UserManagerInternal;

    const-string/jumbo v2, "power"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Landroid/os/PowerManager;

    const-string/jumbo v2, "handleAudioEvent"

    const/4 v3, 0x1

    move-object/from16 v0, v20

    invoke-virtual {v0, v3, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/audio/AudioService;->mAudioEventWakeLock:Landroid/os/PowerManager$WakeLock;

    const-string/jumbo v2, "vibrator"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Landroid/os/Vibrator;

    if-nez v21, :cond_9

    const/4 v2, 0x0

    :goto_1
    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/server/audio/AudioService;->mHasVibrator:Z

    new-instance v2, Lcom/android/server/audio/AudioService$SoundKitchen;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lcom/android/server/audio/AudioService$SoundKitchen;-><init>(Lcom/android/server/audio/AudioService;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/audio/AudioService;->mSoundKitchen:Lcom/android/server/audio/AudioService$SoundKitchen;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/audio/AudioService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/audio/AudioService;->mPackageManager:Landroid/content/pm/PackageManager;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/audio/AudioService;->STREAM_VOLUME_ALIAS_VOICE:[I

    const/4 v3, 0x5

    const/4 v4, 0x5

    aput v3, v2, v4

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v2

    const-string/jumbo v3, "CscFeature_Audio_ConfigCallVolumeSteps"

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/audio/AudioService;->MAX_STREAM_VOLUME2:[I

    const/4 v6, 0x0

    aget v4, v4, v6

    invoke-virtual {v2, v3, v4}, Lcom/samsung/android/feature/SemCscFeature;->getInteger(Ljava/lang/String;I)I

    move-result v2

    sput v2, Lcom/android/server/audio/AudioService;->mCallVolumeSteps:I

    sget v2, Lcom/android/server/audio/AudioService;->mCallVolumeSteps:I

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/audio/AudioService;->MAX_STREAM_VOLUME2:[I

    const/4 v4, 0x0

    aget v3, v3, v4

    if-eq v2, v3, :cond_0

    const-string/jumbo v2, "ro.config.vc_call_vol_steps"

    sget v3, Lcom/android/server/audio/AudioService;->mCallVolumeSteps:I

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/audio/AudioService;->MAX_STREAM_VOLUME2:[I

    const-string/jumbo v3, "ro.config.vc_call_vol_steps"

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/audio/AudioService;->MAX_STREAM_VOLUME2:[I

    const/4 v6, 0x0

    aget v4, v4, v6

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v3

    const/4 v4, 0x0

    aput v3, v2, v4

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/audio/AudioService;->MAX_STREAM_VOLUME2:[I

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/audio/AudioService;->MAX_STREAM_VOLUME2:[I

    const/4 v4, 0x0

    aget v3, v3, v4

    const/16 v4, 0xb

    aput v3, v2, v4

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/audio/AudioService;->MAX_STREAM_VOLUME2:[I

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/audio/AudioService;->MAX_STREAM_VOLUME2:[I

    const/4 v4, 0x0

    aget v3, v3, v4

    const/16 v4, 0xc

    aput v3, v2, v4

    invoke-direct/range {p0 .. p0}, Lcom/android/server/audio/AudioService;->isPlatformVoice()Z

    move-result v2

    if-eqz v2, :cond_a

    const/4 v2, 0x0

    :goto_2
    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/server/audio/AudioService;->mIsDefaultStreamNotification:Z

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/server/audio/AudioService;->mIsTalkBackEnabled:Z

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/server/audio/AudioService;->mAdjustMediaVolumeOnly:Z

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/server/audio/AudioService;->mEnableSoundAssistant:Z

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x10e0004

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    sput v2, Lcom/android/server/audio/AudioService;->sSoundEffectVolumeDb:I

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/server/audio/AudioService;->mForcedUseForComm:I

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/server/audio/AudioService;->mForceSpeaker:I

    invoke-direct/range {p0 .. p0}, Lcom/android/server/audio/AudioService;->createAudioSystemThread()V

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/server/audio/AudioService;->mUSBDetected:Z

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/server/audio/AudioService;->mFakeState:Z

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/audio/AudioService;->mUEventUsbConnectObserver:Landroid/os/UEventObserver;

    const-string/jumbo v3, "USB_CONNECTION"

    invoke-virtual {v2, v3}, Landroid/os/UEventObserver;->startObserving(Ljava/lang/String;)V

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/audio/AudioService;->mExternalUsbInfo:Ljava/lang/String;

    new-instance v2, Lcom/samsung/android/cover/CoverManager;

    move-object/from16 v0, p1

    invoke-direct {v2, v0}, Lcom/samsung/android/cover/CoverManager;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/audio/AudioService;->mCoverManager:Lcom/samsung/android/cover/CoverManager;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/audio/AudioService;->mContentResolver:Landroid/content/ContentResolver;

    const-string/jumbo v3, "support_split_sound"

    const/4 v4, 0x1

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    invoke-direct/range {p0 .. p0}, Lcom/android/server/audio/AudioService;->hasVibrator()Z

    move-result v2

    if-eqz v2, :cond_1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/audio/AudioService;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "vibrator"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/SystemVibrator;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/audio/AudioService;->mVibrator:Landroid/os/SystemVibrator;

    :cond_1
    invoke-direct/range {p0 .. p0}, Lcom/android/server/audio/AudioService;->ChangeDefaultVolume()V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/audio/AudioService;->mAudioSystemCallback:Landroid/media/AudioSystem$ErrorCallback;

    invoke-static {v2}, Landroid/media/AudioSystem;->setErrorCallback(Landroid/media/AudioSystem$ErrorCallback;)V

    invoke-direct/range {p0 .. p0}, Lcom/android/server/audio/AudioService;->readCameraSoundForced()Z

    move-result v16

    new-instance v2, Ljava/lang/Boolean;

    move/from16 v0, v16

    invoke-direct {v2, v0}, Ljava/lang/Boolean;-><init>(Z)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/audio/AudioService;->mCameraSoundForced:Ljava/lang/Boolean;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/audio/AudioService;->mAudioHandler:Lcom/android/server/audio/AudioService$AudioHandler;

    if-eqz v16, :cond_b

    const/16 v6, 0xb

    :goto_3
    const/16 v3, 0x8

    const/4 v4, 0x2

    const/4 v5, 0x4

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-static/range {v2 .. v8}, Lcom/android/server/audio/AudioService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    new-instance v2, Ljava/lang/Integer;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/audio/AudioService;->mContentResolver:Landroid/content/ContentResolver;

    const-string/jumbo v4, "audio_safe_volume_state"

    const/4 v6, 0x0

    invoke-static {v3, v4, v6}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    invoke-direct {v2, v3}, Ljava/lang/Integer;-><init>(I)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/audio/AudioService;->mSafeMediaVolumeState:Ljava/lang/Integer;

    const/16 v2, 0x5a

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/server/audio/AudioService;->mSafeMediaVolumeIndex:I

    new-instance v2, Lcom/android/server/audio/AudioService$AudioSettingsDBHelper;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/audio/AudioService;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    invoke-direct {v2, v0, v3}, Lcom/android/server/audio/AudioService$AudioSettingsDBHelper;-><init>(Lcom/android/server/audio/AudioService;Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/audio/AudioService;->mSettingDBHelper:Lcom/android/server/audio/AudioService$AudioSettingsDBHelper;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/audio/AudioService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x1120084

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/server/audio/AudioService;->mUseFixedVolume:Z

    const-string/jumbo v2, "AudioService"

    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v2}, Lcom/android/server/audio/AudioService;->updateStreamVolumeAlias(ZLjava/lang/String;)V

    invoke-direct/range {p0 .. p0}, Lcom/android/server/audio/AudioService;->readPersistedSettings()V

    invoke-direct/range {p0 .. p0}, Lcom/android/server/audio/AudioService;->readUserRestrictions()V

    new-instance v2, Lcom/android/server/audio/AudioService$SettingsObserver;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lcom/android/server/audio/AudioService$SettingsObserver;-><init>(Lcom/android/server/audio/AudioService;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/audio/AudioService;->mSettingsObserver:Lcom/android/server/audio/AudioService$SettingsObserver;

    invoke-direct/range {p0 .. p0}, Lcom/android/server/audio/AudioService;->createStreamStates()V

    new-instance v2, Lcom/android/server/audio/AudioService$FineVolumeState;

    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-direct {v2, v0, v3}, Lcom/android/server/audio/AudioService$FineVolumeState;-><init>(Lcom/android/server/audio/AudioService;Lcom/android/server/audio/AudioService$FineVolumeState;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/audio/AudioService;->mFineMediaVolume:Lcom/android/server/audio/AudioService$FineVolumeState;

    new-instance v2, Lcom/android/server/audio/MediaFocusControl;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/audio/AudioService;->mAudioHandler:Lcom/android/server/audio/AudioService$AudioHandler;

    invoke-virtual {v3}, Lcom/android/server/audio/AudioService$AudioHandler;->getLooper()Landroid/os/Looper;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/audio/AudioService;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    invoke-direct {v2, v3, v4, v0}, Lcom/android/server/audio/MediaFocusControl;-><init>(Landroid/os/Looper;Landroid/content/Context;Lcom/android/server/audio/AudioService;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/audio/AudioService;->mMediaFocusControl:Lcom/android/server/audio/MediaFocusControl;

    invoke-static {}, Lcom/android/server/audio/AudioService;->readAndSetLowRamDevice()V

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/server/audio/AudioService;->mRingerModeMutedStreams:I

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/audio/AudioService;->getRingerModeInternal()I

    move-result v2

    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3}, Lcom/android/server/audio/AudioService;->setRingerModeInt(IZ)V

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/audio/AudioService;->mMonoMode:I

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/server/audio/AudioService;->setMonoMode(I)V

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/audio/AudioService;->mMySoundEnabled:I

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/server/audio/AudioService;->setGlobalMySound(I)V

    sget-boolean v2, Lcom/android/server/audio/AudioService;->SUPPORT_BOOST_MODE:Z

    if-eqz v2, :cond_c

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/audio/AudioService;->mBoostMode:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_c

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/audio/AudioService;->mBoostUpscalerEnabled:I

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/server/audio/AudioService;->setGlobalUpscaler(I)V

    :goto_4
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/audio/AudioService;->mNbQualityMode:I

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/server/audio/AudioService;->setNbQualityMode(I)V

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/audio/AudioService;->mDualMicMode:I

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/server/audio/AudioService;->setDualMicMode(I)V

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/audio/AudioService;->mAllSoundMute:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_2

    invoke-direct/range {p0 .. p0}, Lcom/android/server/audio/AudioService;->setAllSoundMute()V

    :cond_2
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/audio/AudioService;->mNaturalSound:I

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/server/audio/AudioService;->setNaturalSoundMode(I)V

    invoke-direct/range {p0 .. p0}, Lcom/android/server/audio/AudioService;->setSoundBalance()V

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/server/audio/AudioService;->mUhqBtSampleRate:I

    const-string/jumbo v2, "persist.audio.btnxpshareif"

    const/4 v3, 0x0

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/server/audio/AudioService;->mBtNxpShareIF_LSI:Z

    const-string/jumbo v2, "display"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/display/DisplayManager;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/audio/AudioService;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    new-instance v5, Landroid/content/IntentFilter;

    const-string/jumbo v2, "android.intent.action.PACKAGE_REMOVED"

    invoke-direct {v5, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const-string/jumbo v2, "package"

    invoke-virtual {v5, v2}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/audio/AudioService;->mReceiver:Landroid/content/BroadcastReceiver;

    sget-object v4, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v2, p1

    invoke-virtual/range {v2 .. v7}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    new-instance v9, Landroid/content/IntentFilter;

    const-string/jumbo v2, "android.bluetooth.headset.profile.action.AUDIO_STATE_CHANGED"

    invoke-direct {v9, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const-string/jumbo v2, "android.bluetooth.headset.profile.action.CONNECTION_STATE_CHANGED"

    invoke-virtual {v9, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v2, "android.intent.action.DOCK_EVENT"

    invoke-virtual {v9, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v2, "android.intent.action.SCREEN_ON"

    invoke-virtual {v9, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v2, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v9, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v2, "android.intent.action.USER_SWITCHED"

    invoke-virtual {v9, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v2, "android.intent.action.USER_BACKGROUND"

    invoke-virtual {v9, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v2, "android.intent.action.USER_FOREGROUND"

    invoke-virtual {v9, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v2, "android.hardware.usb.action.USB_DEVICE_ATTACHED"

    invoke-virtual {v9, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v2, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-virtual {v9, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v2, "android.intent.action.CONFIGURATION_CHANGED"

    invoke-virtual {v9, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v2, "android.intent.action.ACTION_SHUTDOWN"

    invoke-virtual {v9, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v2, "com.samsung.intent.action.WIFI_DISPLAY_SOURCE_STATE"

    invoke-virtual {v9, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v2, "com.samsung.intent.action.GOOGLE_CAST_MIRRORING_CONNECTION_CHANGED"

    invoke-virtual {v9, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v2, "com.sec.android.intent.action.SPLIT_SOUND"

    invoke-virtual {v9, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v2, "com.samsung.android.app.audio.epinforequest"

    invoke-virtual {v9, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v2, "com.samsung.intent.action.SETTINGS_SOFT_RESET"

    invoke-virtual {v9, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v2, "com.sec.tms.audio.server"

    invoke-virtual {v9, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v2, "com.samsung.intent.action.EMERGENCY_STATE_CHANGED"

    invoke-virtual {v9, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v2, "com.sec.factory.app.factorytest.FTA_ON"

    invoke-virtual {v9, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v2, "com.sec.factory.app.factorytest.FTA_OFF"

    invoke-virtual {v9, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v2, "com.sec.android.intent.action.INTERNAL_SPEAKER"

    invoke-virtual {v9, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v2, "android.intent.action.EXTERNAL_USB_HEADSET_PLUG"

    invoke-virtual {v9, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-class v2, Lcom/android/server/vr/GearVrManagerInternal;

    invoke-static {v2}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Lcom/android/server/vr/GearVrManagerInternal;

    if-eqz v22, :cond_d

    new-instance v2, Lcom/android/server/audio/AudioService$7;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lcom/android/server/audio/AudioService$7;-><init>(Lcom/android/server/audio/AudioService;)V

    move-object/from16 v0, v22

    invoke-virtual {v0, v2}, Lcom/android/server/vr/GearVrManagerInternal;->registerVrStateListener(Lcom/samsung/android/vr/IGearVrStateCallbacks;)V

    :goto_5
    const-string/jumbo v2, "com.samsung.intent.action.WIFIDISPLAY_NOTI_CONNECTION_MODE"

    invoke-virtual {v9, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v2, "android.settings.MONO_AUDIO_CHANGED"

    invoke-virtual {v9, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v2, "android.settings.ALL_SOUND_MUTE"

    invoke-virtual {v9, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v2, "com.android.phone.action.PERSONALISE_CALL_SOUND_CHANGED"

    invoke-virtual {v9, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v2, "com.android.phone.NOISE_REDUCTION"

    invoke-virtual {v9, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v2, "com.android.phone.NATURAL_SOUND"

    invoke-virtual {v9, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v2, "com.android.systemui.statusbar.ANIMATING"

    invoke-virtual {v9, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v2, "com.android.systemui.statusbar.COLLAPSED"

    invoke-virtual {v9, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v2, "android.intent.action.PHONE_STATE"

    invoke-virtual {v9, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v2, "com.samsung.flipfolder.OPEN"

    invoke-virtual {v9, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v2, "com.samsung.intent.action.WB_AMR"

    invoke-virtual {v9, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    sget-boolean v2, Lcom/android/server/audio/AudioService;->SUPPORT_SAR_CONTROL_EARJACK_ENABLED:Z

    if-eqz v2, :cond_3

    const-string/jumbo v2, "com.samsung.intent.action.SECPHONE_READY"

    invoke-virtual {v9, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    :cond_3
    const-string/jumbo v2, "android.intent.action.ACTION_SUBINFO_RECORD_UPDATED"

    invoke-virtual {v9, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v2, "sec.app.policy.UPDATE.audio"

    invoke-virtual {v9, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v2, "com.sec.media.action.AUDIOCORE_LOGGING"

    invoke-virtual {v9, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v2, "com.samsung.intent.action.SOUND_OFF_TOAST"

    invoke-virtual {v9, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v2, "android.intent.action.Launch_Setting"

    invoke-virtual {v9, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v2, "android.intent.action.TurnOff_MultiSound"

    invoke-virtual {v9, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v2, "ro.audio.monitorOrientation"

    const/4 v3, 0x0

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/server/audio/AudioService;->mMonitorOrientation:Z

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/server/audio/AudioService;->mMonitorOrientation:Z

    if-eqz v2, :cond_4

    const-string/jumbo v2, "AudioService"

    const-string/jumbo v3, "monitoring device orientation"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct/range {p0 .. p0}, Lcom/android/server/audio/AudioService;->setOrientationForAudioSystem()V

    :cond_4
    const-string/jumbo v2, "ro.audio.monitorRotation"

    const/4 v3, 0x0

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/server/audio/AudioService;->mMonitorRotation:Z

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/server/audio/AudioService;->mMonitorRotation:Z

    if-eqz v2, :cond_5

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/audio/AudioService;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/audio/AudioService;->mAudioHandler:Lcom/android/server/audio/AudioService$AudioHandler;

    invoke-static {v2, v3}, Lcom/android/server/audio/RotationHelper;->init(Landroid/content/Context;Landroid/os/Handler;)V

    :cond_5
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/audio/AudioService;->mReceiver:Landroid/content/BroadcastReceiver;

    sget-object v8, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object/from16 v6, p1

    invoke-virtual/range {v6 .. v11}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    new-instance v13, Landroid/content/IntentFilter;

    const-string/jumbo v2, "com.samsung.sec.knox.KNOX_MODE_CHANGED"

    invoke-direct {v13, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/audio/AudioService;->mReceiver:Landroid/content/BroadcastReceiver;

    sget-object v12, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const-string/jumbo v14, "com.samsung.container.OBSERVER"

    const/4 v15, 0x0

    move-object/from16 v10, p1

    invoke-virtual/range {v10 .. v15}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    const-class v2, Landroid/media/AudioManagerInternal;

    new-instance v3, Lcom/android/server/audio/AudioService$AudioServiceInternal;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lcom/android/server/audio/AudioService$AudioServiceInternal;-><init>(Lcom/android/server/audio/AudioService;)V

    invoke-static {v2, v3}, Lcom/android/server/LocalServices;->addService(Ljava/lang/Class;Ljava/lang/Object;)V

    invoke-static {}, Landroid/media/AudioSystem;->getNumStreamTypes()I

    move-result v19

    move/from16 v0, v19

    new-array v2, v0, [I

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/audio/AudioService;->mStreamMutedump:[I

    move/from16 v0, v19

    new-array v2, v0, [Ljava/lang/String;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/audio/AudioService;->mStreamMutePackagedump:[Ljava/lang/String;

    move/from16 v0, v19

    new-array v2, v0, [I

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/audio/AudioService;->mStreamUnMutedump:[I

    move/from16 v0, v19

    new-array v2, v0, [Ljava/lang/String;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/audio/AudioService;->mStreamUnMutePackagedump:[Ljava/lang/String;

    move/from16 v0, v19

    new-array v2, v0, [I

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/audio/AudioService;->mStreamToggleMutedump:[I

    move/from16 v0, v19

    new-array v2, v0, [Ljava/lang/String;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/audio/AudioService;->mStreamToggleMutePackagedump:[Ljava/lang/String;

    const/4 v2, 0x2

    new-array v2, v2, [I

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/audio/AudioService;->mBluetoothA2dpOndump:[I

    const/4 v2, 0x2

    new-array v2, v2, [I

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/audio/AudioService;->mBluetoothScoOndump:[I

    const/4 v2, 0x2

    new-array v2, v2, [I

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/audio/AudioService;->mSpeakerOndump:[I

    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v3, 0x2

    new-array v3, v3, [I

    const/4 v4, 0x0

    aput v19, v3, v4

    const/4 v4, 0x5

    const/4 v6, 0x1

    aput v4, v3, v6

    invoke-static {v2, v3}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [[I

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/audio/AudioService;->pIdOfsetVolumeIndex:[[I

    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v3, 0x2

    new-array v3, v3, [I

    const/4 v4, 0x0

    aput v19, v3, v4

    const/4 v4, 0x5

    const/4 v6, 0x1

    aput v4, v3, v6

    invoke-static {v2, v3}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [[I

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/audio/AudioService;->pIdOfsetVolume:[[I

    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v3, 0x2

    new-array v3, v3, [I

    const/4 v4, 0x0

    aput v19, v3, v4

    const/4 v4, 0x5

    const/4 v6, 0x1

    aput v4, v3, v6

    invoke-static {v2, v3}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [[I

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/audio/AudioService;->uIdOfsetVolume:[[I

    move/from16 v0, v19

    new-array v2, v0, [I

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/audio/AudioService;->indexOfsetVolume:[I

    move/from16 v0, v19

    new-array v2, v0, [I

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/audio/AudioService;->pIdOfadjustVolumeIndex:[I

    move/from16 v0, v19

    new-array v2, v0, [I

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/audio/AudioService;->pIdOfadjustVolume:[I

    move/from16 v0, v19

    new-array v2, v0, [I

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/audio/AudioService;->uIdOfadjustVolume:[I

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const/4 v3, 0x0

    const/4 v4, 0x1

    aput-object v3, v2, v4

    const/4 v3, 0x0

    const/4 v4, 0x2

    aput-object v3, v2, v4

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/audio/AudioService;->mCallingRingerMode:[Ljava/lang/String;

    const/4 v2, 0x3

    new-array v2, v2, [Z

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/audio/AudioService;->mIsExternalRingerMode:[Z

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/audio/AudioService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v2, v2, Landroid/content/res/Configuration;->orientation:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_e

    const/4 v2, 0x1

    :goto_6
    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/server/audio/AudioService;->mIsFolderOpen:Z

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "folder_open="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/server/audio/AudioService;->mIsFolderOpen:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/audio/AudioService;->mConnectedDevices:Landroid/util/ArrayMap;

    const-string/jumbo v3, ""

    const/4 v4, 0x2

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v3}, Lcom/android/server/audio/AudioService;->makeDeviceListKey(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/android/server/audio/AudioService$DeviceListSpec;

    const-string/jumbo v6, "Speaker"

    const-string/jumbo v7, ""

    const/4 v8, 0x2

    move-object/from16 v0, p0

    invoke-direct {v4, v0, v8, v6, v7}, Lcom/android/server/audio/AudioService$DeviceListSpec;-><init>(Lcom/android/server/audio/AudioService;ILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v3, v4}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/audio/AudioService;->mUserManagerInternal:Landroid/os/UserManagerInternal;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/audio/AudioService;->mUserRestrictionsListener:Landroid/os/UserManagerInternal$UserRestrictionsListener;

    invoke-virtual {v2, v3}, Landroid/os/UserManagerInternal;->addUserRestrictionsListener(Landroid/os/UserManagerInternal$UserRestrictionsListener;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/audio/AudioService;->mRecordMonitor:Lcom/android/server/audio/RecordingActivityMonitor;

    invoke-virtual {v2}, Lcom/android/server/audio/RecordingActivityMonitor;->initMonitor()V

    :try_start_0
    new-instance v18, Ljava/io/File;

    const-string/jumbo v2, "/efs/FactoryApp/earjack_count"

    move-object/from16 v0, v18

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v18 .. v18}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_6

    invoke-virtual/range {v18 .. v18}, Ljava/io/File;->createNewFile()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-direct/range {p0 .. p0}, Lcom/android/server/audio/AudioService;->increaseEARCount()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_6
    :goto_7
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/audio/AudioService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "volumelimit_on"

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_f

    const/4 v2, 0x1

    :goto_8
    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/server/audio/AudioService;->mbVolumeLimitOn:Z

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/audio/AudioService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "volume_limiter_value"

    const/16 v4, 0xf

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/server/audio/AudioService;->mVolumeLimitValue:I

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/audio/AudioService;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "alarm"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/AlarmManager;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/audio/AudioService;->mAlarmManager:Landroid/app/AlarmManager;

    const-string/jumbo v2, "HqmManagerService"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/SemHqmManager;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/audio/AudioService;->mSemHqmManager:Landroid/os/SemHqmManager;

    sget-boolean v2, Lcom/android/server/audio/AudioService;->MULTISOUND_ENABLED:Z

    if-eqz v2, :cond_7

    new-instance v2, Lcom/android/server/audio/AudioService$AppCategorizer;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/audio/AudioService;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    invoke-direct {v2, v0, v3}, Lcom/android/server/audio/AudioService$AppCategorizer;-><init>(Lcom/android/server/audio/AudioService;Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/audio/AudioService;->mCategorizer:Lcom/android/server/audio/AudioService$AppCategorizer;

    :cond_7
    return-void

    :cond_8
    const/4 v2, 0x0

    goto/16 :goto_0

    :cond_9
    invoke-virtual/range {v21 .. v21}, Landroid/os/Vibrator;->hasVibrator()Z

    move-result v2

    goto/16 :goto_1

    :cond_a
    const/4 v2, 0x1

    goto/16 :goto_2

    :cond_b
    const/4 v6, 0x0

    goto/16 :goto_3

    :cond_c
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/audio/AudioService;->mUpscalerEnabled:I

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/server/audio/AudioService;->setGlobalUpscaler(I)V

    goto/16 :goto_4

    :cond_d
    const-string/jumbo v2, "AudioService"

    const-string/jumbo v3, "HMT AudioService failed"

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_5

    :cond_e
    const/4 v2, 0x0

    goto/16 :goto_6

    :catch_0
    move-exception v17

    const-string/jumbo v2, "AudioService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "IOException : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v17

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_7

    :cond_f
    const/4 v2, 0x0

    goto/16 :goto_8

    nop

    :array_0
    .array-data 4
        0x5
        0xf
        0xf
        0xf
        0xf
        0xf
        0xf
        0xf
        0xf
        0xf
        0xf
        0x5
        0x5
        0xf
    .end array-data

    :array_1
    .array-data 4
        0x5
        0xf
        0xf
        0x1e
        0xf
        0xf
        0xf
        0xf
        0xf
        0x1e
        0x1e
        0x5
        0x5
        0x1e
    .end array-data

    :array_2
    .array-data 4
        0x0
        0x1
        0x2
        0x3
        0x4
        0x2
        0x6
        0x7
        0x2
        0x3
        0x3
        0x0
        0x0
        0x3
    .end array-data

    :array_3
    .array-data 4
        0x3
        0x3
        0x3
        0x3
        0x3
        0x3
        0x3
        0x3
        0x3
        0x3
        0x3
        0x3
        0x3
        0x3
    .end array-data

    :array_4
    .array-data 4
        0x0
        0x1
        0x2
        0x3
        0x4
        0x2
        0x6
        0x7
        0x2
        0x3
        0x3
        0x0
        0x0
        0x3
    .end array-data

    :array_5
    .array-data 4
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
    .end array-data
.end method

.method private ChangeDefaultVolume()V
    .locals 0

    return-void
.end method

.method private acquireCPUBoost()V
    .locals 7

    const/4 v1, 0x3

    const/4 v5, 0x0

    const/16 v4, 0x7530

    const/4 v3, 0x0

    const/16 v6, 0x3e8

    iget-object v0, p0, Lcom/android/server/audio/AudioService;->semDvfsCpuMin:Lcom/samsung/android/os/SemDvfsManager;

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/android/server/audio/AudioService;->mCPUBoostType:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_3

    const-string/jumbo v0, "AudioService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "acquire() cpu min lock for audio VoIP : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/audio/AudioService;->mCPUBoostValueForVoip:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/audio/AudioService;->semDvfsCpuMin:Lcom/samsung/android/os/SemDvfsManager;

    iget-object v1, p0, Lcom/android/server/audio/AudioService;->semDvfsCpuMin:Lcom/samsung/android/os/SemDvfsManager;

    iget v2, p0, Lcom/android/server/audio/AudioService;->mCPUBoostValueForVoip:I

    invoke-virtual {v1, v2}, Lcom/samsung/android/os/SemDvfsManager;->getApproximateFrequency(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/os/SemDvfsManager;->setDvfsValue(I)V

    iget-object v0, p0, Lcom/android/server/audio/AudioService;->semDvfsCpuMin:Lcom/samsung/android/os/SemDvfsManager;

    invoke-virtual {v0, v4}, Lcom/samsung/android/os/SemDvfsManager;->acquire(I)V

    sget-boolean v0, Lcom/android/server/audio/AudioService;->LPM_ENABLED:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/audio/AudioService;->semLowPowerMode:Lcom/samsung/android/os/SemDvfsManager;

    if-eqz v0, :cond_0

    const-string/jumbo v0, "AudioService"

    const-string/jumbo v1, "acquireCPUBoost LPM"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/audio/AudioService;->semLowPowerMode:Lcom/samsung/android/os/SemDvfsManager;

    invoke-virtual {v0, v4}, Lcom/samsung/android/os/SemDvfsManager;->acquire(I)V

    :cond_0
    const/16 v6, 0x6d60

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mAudioHandler:Lcom/android/server/audio/AudioService$AudioHandler;

    const/16 v1, 0x74

    const/4 v2, 0x1

    move v4, v3

    invoke-static/range {v0 .. v6}, Lcom/android/server/audio/AudioService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    :cond_2
    return-void

    :cond_3
    iget v0, p0, Lcom/android/server/audio/AudioService;->mCPUBoostType:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_5

    invoke-direct {p0}, Lcom/android/server/audio/AudioService;->checkCPUBoostForEffect()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-static {v1, v3}, Landroid/media/AudioSystem;->isStreamActive(II)Z

    move-result v0

    if-eqz v0, :cond_5

    iget v0, p0, Lcom/android/server/audio/AudioService;->mCPUBoostTryCnt:I

    if-nez v0, :cond_4

    const-string/jumbo v0, "AudioService"

    const-string/jumbo v1, "semDvfsCpuMin.acquire for effect"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/audio/AudioService;->semDvfsCpuMin:Lcom/samsung/android/os/SemDvfsManager;

    iget-object v1, p0, Lcom/android/server/audio/AudioService;->semDvfsCpuMin:Lcom/samsung/android/os/SemDvfsManager;

    iget v2, p0, Lcom/android/server/audio/AudioService;->mCPUBoostValueForEffect:I

    invoke-virtual {v1, v2}, Lcom/samsung/android/os/SemDvfsManager;->getApproximateFrequency(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/os/SemDvfsManager;->setDvfsValue(I)V

    iget-object v0, p0, Lcom/android/server/audio/AudioService;->semDvfsCpuMin:Lcom/samsung/android/os/SemDvfsManager;

    invoke-virtual {v0, v4}, Lcom/samsung/android/os/SemDvfsManager;->acquire(I)V

    :cond_4
    iget v0, p0, Lcom/android/server/audio/AudioService;->mCPUBoostTryCnt:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/server/audio/AudioService;->mCPUBoostTryCnt:I

    iget v0, p0, Lcom/android/server/audio/AudioService;->mCPUBoostTryCnt:I

    const/16 v1, 0xf

    if-lt v0, v1, :cond_1

    iget v0, p0, Lcom/android/server/audio/AudioService;->mCPUBoostTryCnt:I

    add-int/lit8 v0, v0, -0xf

    iput v0, p0, Lcom/android/server/audio/AudioService;->mCPUBoostTryCnt:I

    goto :goto_0

    :cond_5
    iget v0, p0, Lcom/android/server/audio/AudioService;->mCPUBoostTryStandbyCnt:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/server/audio/AudioService;->mCPUBoostTryStandbyCnt:I

    iget v0, p0, Lcom/android/server/audio/AudioService;->mCPUBoostTryStandbyCnt:I

    if-lt v0, v1, :cond_1

    const-string/jumbo v0, "AudioService"

    const-string/jumbo v1, "music is not active stopCPUBoost : Effect"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/android/server/audio/AudioService;->stopCPUBoost(I)V

    goto :goto_0
.end method

.method private adjustStreamVolume(IIILjava/lang/String;Ljava/lang/String;I)V
    .locals 44

    move-object/from16 v0, p0

    iget-boolean v6, v0, Lcom/android/server/audio/AudioService;->mEnableSoundAssistant:Z

    if-eqz v6, :cond_1

    const/4 v6, -0x1

    move/from16 v0, p2

    if-eq v0, v6, :cond_0

    const/4 v6, 0x1

    move/from16 v0, p2

    if-ne v0, v6, :cond_1

    :cond_0
    move-object/from16 v0, p0

    move-object/from16 v1, p5

    invoke-direct {v0, v1}, Lcom/android/server/audio/AudioService;->fromVolumeKey(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/audio/AudioService;->mAudioHandler:Lcom/android/server/audio/AudioService$AudioHandler;

    const/16 v7, 0x77

    const/4 v8, 0x1

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-static/range {v6 .. v12}, Lcom/android/server/audio/AudioService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    :cond_1
    move-object/from16 v0, p0

    iget-boolean v6, v0, Lcom/android/server/audio/AudioService;->mUseFixedVolume:Z

    if-eqz v6, :cond_2

    return-void

    :cond_2
    move-object/from16 v0, p0

    iget-boolean v6, v0, Lcom/android/server/audio/AudioService;->mIsSupportDisplayVolumeControl:Z

    if-eqz v6, :cond_4

    const/4 v6, 0x3

    const/4 v8, 0x0

    invoke-static {v6, v8}, Landroid/media/AudioSystem;->isStreamActiveRemotely(II)Z

    move-result v6

    if-eqz v6, :cond_4

    and-int/lit8 v6, p3, 0x1

    if-eqz v6, :cond_4

    const-string/jumbo v6, "AudioService"

    const-string/jumbo v8, "control Display Volume"

    invoke-static {v6, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v6, 0x3

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/android/server/audio/AudioService;->getStreamVolume(I)I

    move-result v6

    if-nez v6, :cond_3

    invoke-direct/range {p0 .. p0}, Lcom/android/server/audio/AudioService;->getFineVolume()Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v8, "0"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    :goto_0
    const/high16 v6, 0x800000

    or-int p3, p3, v6

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/audio/AudioService;->mVolumeController:Lcom/android/server/audio/AudioService$VolumeController;

    move/from16 v0, p1

    move/from16 v1, p3

    invoke-virtual {v6, v0, v1}, Lcom/android/server/audio/AudioService$VolumeController;->postVolumeChanged(II)V

    return-void

    :cond_3
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/audio/AudioService;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    const-string/jumbo v8, "vkev"

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v6, v8, v10}, Landroid/hardware/display/DisplayManager;->semSetWifiDisplayConfiguration(Ljava/lang/String;Ljava/lang/Object;)I

    goto :goto_0

    :cond_4
    const/16 v6, 0x64

    move/from16 v0, p2

    if-ne v0, v6, :cond_6

    const/4 v6, 0x1

    move/from16 v0, p1

    if-eq v0, v6, :cond_5

    const/4 v6, 0x5

    move/from16 v0, p1

    if-ne v0, v6, :cond_6

    :cond_5
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/audio/AudioService;->getRingerModeExternal()I

    move-result v6

    const/4 v8, 0x2

    if-eq v6, v8, :cond_6

    const-string/jumbo v6, "AudioService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "Couldn\'t unmute "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move/from16 v0, p1

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v10, " in "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/audio/AudioService;->getRingerModeExternal()I

    move-result v10

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_6
    sget-boolean v6, Lcom/android/server/audio/AudioService;->DEBUG_VOL:Z

    if-eqz v6, :cond_7

    const-string/jumbo v6, "AudioService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "adjustStreamVolume() stream="

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move/from16 v0, p1

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v10, ", dir="

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move/from16 v0, p2

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v10, ", flags="

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move/from16 v0, p3

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v10, ", caller="

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object/from16 v0, p5

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7
    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/server/audio/AudioService;->mAllSoundMute:I

    const/4 v8, 0x1

    if-ne v6, v8, :cond_8

    new-instance v30, Landroid/content/Intent;

    const-string/jumbo v6, "com.samsung.intent.action.SOUND_OFF_TOAST"

    move-object/from16 v0, v30

    invoke-direct {v0, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    sget-object v6, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    move-object/from16 v0, p0

    move-object/from16 v1, v30

    invoke-direct {v0, v1, v6}, Lcom/android/server/audio/AudioService;->sendBroadcastToUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    return-void

    :cond_8
    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/android/server/audio/AudioService;->ensureValidDirection(I)V

    invoke-direct/range {p0 .. p1}, Lcom/android/server/audio/AudioService;->ensureValidStreamType(I)V

    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/android/server/audio/AudioService;->isMuteAdjust(I)Z

    move-result v32

    if-eqz v32, :cond_9

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/audio/AudioService;->mStreamVolumeAlias:[I

    aget v6, v6, p1

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/android/server/audio/AudioService;->isStreamAffectedByMute(I)Z

    move-result v6

    if-eqz v6, :cond_d

    :cond_9
    move-object/from16 v0, p0

    iget-boolean v6, v0, Lcom/android/server/audio/AudioService;->mHMTDocked:Z

    if-eqz v6, :cond_a

    and-int/lit8 p3, p3, -0x2

    move/from16 v0, p3

    and-int/lit16 v0, v0, -0x401

    move/from16 p3, v0

    sget-boolean v6, Lcom/android/server/audio/AudioService;->DEBUG_VOL:Z

    if-eqz v6, :cond_a

    const-string/jumbo v6, "AudioService"

    const-string/jumbo v8, "adjustStreamVolume - block volume popup for gear vr"

    invoke-static {v6, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_a
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/audio/AudioService;->mStreamVolumeAlias:[I

    aget v21, v6, p1

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/audio/AudioService;->mVolumeController:Lcom/android/server/audio/AudioService$VolumeController;

    invoke-virtual {v6}, Lcom/android/server/audio/AudioService$VolumeController;->isSafeVolumeDialogShowing()Z

    move-result v6

    if-eqz v6, :cond_e

    const/4 v6, 0x1

    move/from16 v0, p2

    if-eq v0, v6, :cond_b

    if-nez p2, :cond_e

    :cond_b
    const/4 v6, 0x3

    move/from16 v0, v21

    if-eq v0, v6, :cond_e

    sget-boolean v6, Lcom/android/server/audio/AudioService;->DEBUG_VOL:Z

    if-eqz v6, :cond_c

    const-string/jumbo v6, "AudioService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "Skip volume increase action for stream: "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move/from16 v0, p1

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v10, " when Ear safety pop-up is visible"

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_c
    return-void

    :cond_d
    return-void

    :cond_e
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/audio/AudioService;->mStreamVolumeAlias:[I

    aget v37, v6, p1

    and-int/lit8 v6, p3, 0x4

    if-eqz v6, :cond_f

    move-object/from16 v0, p0

    iget-boolean v6, v0, Lcom/android/server/audio/AudioService;->mIsDefaultStreamNotification:Z

    if-eqz v6, :cond_11

    const/4 v6, 0x5

    move/from16 v0, v37

    if-eq v0, v6, :cond_f

    and-int/lit8 p3, p3, -0x5

    :cond_f
    :goto_1
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/audio/AudioService;->mStreamStates:[Lcom/android/server/audio/AudioService$VolumeStreamState;

    aget-object v42, v6, v21

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-direct {v0, v1}, Lcom/android/server/audio/AudioService;->getDeviceForStream(I)I

    move-result v17

    sget-boolean v6, Lcom/android/server/audio/AudioService;->MULTISOUND_ENABLED:Z

    if-eqz v6, :cond_16

    const/4 v6, 0x3

    move/from16 v0, p1

    if-ne v0, v6, :cond_16

    const/4 v6, 0x1

    move/from16 v0, p2

    if-eq v0, v6, :cond_10

    const/4 v6, -0x1

    move/from16 v0, p2

    if-ne v0, v6, :cond_15

    :cond_10
    if-nez p2, :cond_1a

    return-void

    :cond_11
    const/4 v6, 0x2

    move/from16 v0, v37

    if-eq v0, v6, :cond_12

    and-int/lit8 p3, p3, -0x5

    goto :goto_1

    :cond_12
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/audio/AudioService;->getMode()I

    move-result v6

    const/4 v8, 0x1

    if-eq v6, v8, :cond_13

    move-object/from16 v0, p0

    iget-boolean v6, v0, Lcom/android/server/audio/AudioService;->mIsTalkBackEnabled:Z

    if-eqz v6, :cond_14

    :cond_13
    and-int/lit8 p3, p3, -0x5

    goto :goto_1

    :cond_14
    const-string/jumbo v6, "isRecordActive"

    invoke-static {v6}, Landroid/media/AudioSystem;->getParameters(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v33

    const-string/jumbo v6, "TRUE"

    move-object/from16 v0, v33

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_f

    and-int/lit8 p3, p3, -0x5

    goto :goto_1

    :cond_15
    if-eqz p2, :cond_10

    :cond_16
    const/16 v6, 0xa

    move/from16 v0, p1

    if-ne v0, v6, :cond_17

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/audio/AudioService;->isRadioSpeakerOn()Z

    move-result v6

    if-eqz v6, :cond_17

    const/16 v17, 0x2

    :cond_17
    move-object/from16 v0, v42

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/server/audio/AudioService$VolumeStreamState;->getIndex(I)I

    move-result v7

    const/16 v25, 0x1

    sparse-switch p2, :sswitch_data_0

    :goto_2
    invoke-direct/range {p0 .. p0}, Lcom/android/server/audio/AudioService;->isFMRadioRecording()Z

    move-result v31

    if-eqz v31, :cond_1f

    const/16 v25, 0x0

    sget-boolean v6, Lcom/android/server/audio/AudioService;->DEBUG_VOL:Z

    if-eqz v6, :cond_18

    const-string/jumbo v6, "AudioService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "adjustStreamVolume - FM Recording... change adjustVolume value("

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move/from16 v0, v25

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v10, ")"

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_18
    const/high16 v6, 0x2000000

    move/from16 v0, p3

    if-eq v0, v6, :cond_19

    const/16 v6, 0x1011

    move/from16 v0, p3

    if-ne v0, v6, :cond_1d

    :cond_19
    return-void

    :cond_1a
    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/android/server/audio/AudioService;->selectDevice(I)I

    move-result v13

    const/4 v6, 0x2

    if-ne v13, v6, :cond_1b

    const/4 v6, 0x4

    move-object/from16 v0, p0

    invoke-direct {v0, v6}, Lcom/android/server/audio/AudioService;->checkDeviceConnected(I)Z

    move-result v6

    if-eqz v6, :cond_1c

    const/4 v13, 0x4

    :cond_1b
    :goto_3
    move/from16 v0, v17

    if-eq v0, v13, :cond_16

    const-string/jumbo v6, "AudioService"

    const-string/jumbo v8, "pin & default path is dirrerent"

    invoke-static {v6, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v6, 0x3

    move-object/from16 v0, p0

    invoke-direct {v0, v6, v13}, Lcom/android/server/audio/AudioService;->getStreamVolume(II)I

    move-result v27

    add-int v8, v27, p2

    const/4 v7, 0x3

    move-object/from16 v6, p0

    move/from16 v9, p3

    move-object/from16 v10, p4

    move-object/from16 v11, p4

    move/from16 v12, p6

    invoke-direct/range {v6 .. v13}, Lcom/android/server/audio/AudioService;->setStreamVolume(IIILjava/lang/String;Ljava/lang/String;II)V

    return-void

    :cond_1c
    const/16 v6, 0x8

    move-object/from16 v0, p0

    invoke-direct {v0, v6}, Lcom/android/server/audio/AudioService;->checkDeviceConnected(I)Z

    move-result v6

    if-eqz v6, :cond_1b

    const/16 v13, 0x8

    goto :goto_3

    :sswitch_0
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/audio/AudioService;->pIdOfadjustVolume:[I

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v8

    aput v8, v6, p1

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/audio/AudioService;->pIdOfadjustVolumeIndex:[I

    div-int/lit8 v8, v7, 0xa

    add-int v8, v8, p2

    aput v8, v6, p1

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/audio/AudioService;->uIdOfadjustVolume:[I

    aput p6, v6, p1

    goto/16 :goto_2

    :sswitch_1
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/audio/AudioService;->mStreamMutedump:[I

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v8

    aput v8, v6, p1

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/audio/AudioService;->mStreamMutePackagedump:[Ljava/lang/String;

    aput-object p4, v6, p1

    goto/16 :goto_2

    :sswitch_2
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/audio/AudioService;->mStreamUnMutedump:[I

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v8

    aput v8, v6, p1

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/audio/AudioService;->mStreamUnMutePackagedump:[Ljava/lang/String;

    aput-object p4, v6, p1

    goto/16 :goto_2

    :sswitch_3
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/audio/AudioService;->mStreamToggleMutedump:[I

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v8

    aput v8, v6, p1

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/audio/AudioService;->mStreamToggleMutePackagedump:[Ljava/lang/String;

    aput-object p4, v6, p1

    goto/16 :goto_2

    :cond_1d
    if-nez p3, :cond_1e

    const/16 v6, 0xa

    move/from16 v0, p1

    if-ne v0, v6, :cond_19

    :cond_1e
    and-int/lit8 v6, p3, 0x1

    if-eqz v6, :cond_1f

    const/4 v6, 0x3

    move/from16 v0, v21

    if-ne v0, v6, :cond_1f

    and-int/lit8 p3, p3, -0x2

    sget-boolean v6, Lcom/android/server/audio/AudioService;->DEBUG_VOL:Z

    if-eqz v6, :cond_1f

    const-string/jumbo v6, "AudioService"

    const-string/jumbo v8, "adjustStreamVolume - FM Recording... block Media volume bar"

    invoke-static {v6, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1f
    move/from16 v0, v17

    and-int/lit16 v6, v0, 0x380

    if-nez v6, :cond_20

    and-int/lit8 v6, p3, 0x40

    if-eqz v6, :cond_20

    return-void

    :cond_20
    const/16 v6, 0x3e8

    move/from16 v0, p6

    if-ne v0, v6, :cond_21

    invoke-direct/range {p0 .. p0}, Lcom/android/server/audio/AudioService;->getCurrentUserId()I

    move-result v6

    invoke-static/range {p6 .. p6}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v8

    invoke-static {v6, v8}, Landroid/os/UserHandle;->getUid(II)I

    move-result p6

    :cond_21
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/audio/AudioService;->mAppOps:Landroid/app/AppOpsManager;

    sget-object v8, Lcom/android/server/audio/AudioService;->STREAM_VOLUME_OPS:[I

    aget v8, v8, v21

    move/from16 v0, p6

    move-object/from16 v1, p4

    invoke-virtual {v6, v8, v0, v1}, Landroid/app/AppOpsManager;->noteOp(IILjava/lang/String;)I

    move-result v6

    if-eqz v6, :cond_22

    return-void

    :cond_22
    const/high16 v6, 0x4000000

    move-object/from16 v0, p0

    invoke-direct {v0, v6}, Lcom/android/server/audio/AudioService;->checkDeviceConnected(I)Z

    move-result v6

    if-eqz v6, :cond_23

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/server/audio/AudioService;->mMode:I

    if-nez v6, :cond_23

    return-void

    :cond_23
    const/4 v6, 0x3

    move-object/from16 v0, p0

    invoke-direct {v0, v6}, Lcom/android/server/audio/AudioService;->getDeviceForStream(I)I

    move-result v43

    move-object/from16 v0, p0

    iget-boolean v6, v0, Lcom/android/server/audio/AudioService;->mbVolumeLimitOn:Z

    if-eqz v6, :cond_25

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/audio/AudioService;->mStreamVolumeAlias:[I

    aget v6, v6, p1

    const/4 v8, 0x3

    if-ne v6, v8, :cond_25

    const/4 v6, 0x1

    move/from16 v0, p2

    if-ne v0, v6, :cond_25

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/audio/AudioService;->mStreamStates:[Lcom/android/server/audio/AudioService$VolumeStreamState;

    aget-object v6, v6, p1

    move/from16 v0, v43

    invoke-virtual {v6, v0}, Lcom/android/server/audio/AudioService$VolumeStreamState;->getIndex(I)I

    move-result v6

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/server/audio/AudioService;->mFineMediaVolume:Lcom/android/server/audio/AudioService$FineVolumeState;

    move/from16 v0, v17

    invoke-virtual {v8, v0}, Lcom/android/server/audio/AudioService$FineVolumeState;->getIndex(I)I

    move-result v8

    add-int/2addr v6, v8

    add-int/lit8 v6, v6, 0xa

    move-object/from16 v0, p0

    iget v8, v0, Lcom/android/server/audio/AudioService;->mVolumeLimitValue:I

    mul-int/lit8 v8, v8, 0xa

    if-le v6, v8, :cond_25

    move/from16 v0, v43

    and-int/lit16 v6, v0, 0x18c

    if-eqz v6, :cond_25

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/audio/AudioService;->mStreamStates:[Lcom/android/server/audio/AudioService$VolumeStreamState;

    aget-object v6, v6, p1

    move/from16 v0, v43

    invoke-virtual {v6, v0}, Lcom/android/server/audio/AudioService$VolumeStreamState;->getIndex(I)I

    move-result v6

    const/16 v8, 0x96

    if-eq v6, v8, :cond_24

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/audio/AudioService;->mVolumeController:Lcom/android/server/audio/AudioService$VolumeController;

    invoke-virtual {v6}, Lcom/android/server/audio/AudioService$VolumeController;->displayVolumeLimiterToast()V

    :cond_24
    const-string/jumbo v6, "AudioService"

    const-string/jumbo v8, "Volume index is already reached at volume limit value"

    invoke-static {v6, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    mul-int/lit8 v6, v43, 0xa

    mul-int/lit8 v8, v43, 0xa

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p3

    invoke-direct {v0, v1, v6, v8, v2}, Lcom/android/server/audio/AudioService;->sendVolumeUpdate(IIII)V

    return-void

    :cond_25
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/server/audio/AudioService;->mSafeMediaVolumeState:Ljava/lang/Integer;

    monitor-enter v8

    const/4 v6, 0x0

    :try_start_0
    move-object/from16 v0, p0

    iput-object v6, v0, Lcom/android/server/audio/AudioService;->mPendingVolumeCommand:Lcom/android/server/audio/AudioService$StreamVolumeCommand;

    const/4 v6, 0x0

    move-object/from16 v0, p0

    iput-object v6, v0, Lcom/android/server/audio/AudioService;->mPendingFineVolumeCommand:Lcom/android/server/audio/AudioService$StreamVolumeCommand;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v8

    and-int/lit8 p3, p3, -0x21

    const/4 v6, 0x3

    move/from16 v0, v21

    if-ne v0, v6, :cond_31

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/server/audio/AudioService;->mFixedVolumeDevices:I

    and-int v6, v6, v17

    if-eqz v6, :cond_31

    or-int/lit8 p3, p3, 0x20

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/audio/AudioService;->mSafeMediaVolumeState:Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    const/4 v8, 0x3

    if-ne v6, v8, :cond_30

    move/from16 v0, v17

    and-int/lit16 v6, v0, 0x18c

    if-eqz v6, :cond_30

    move-object/from16 v0, p0

    iget v9, v0, Lcom/android/server/audio/AudioService;->mSafeMediaVolumeIndex:I

    :goto_4
    if-eqz v7, :cond_26

    move v7, v9

    :cond_26
    :goto_5
    and-int/lit8 v6, p3, 0x2

    if-nez v6, :cond_27

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/audio/AudioService;->getUiSoundsStreamType()I

    move-result v6

    move/from16 v0, v21

    if-ne v0, v6, :cond_2a

    :cond_27
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/audio/AudioService;->getRingerModeInternal()I

    move-result v39

    const/4 v6, 0x1

    move/from16 v0, v39

    if-ne v0, v6, :cond_28

    and-int/lit8 p3, p3, -0x11

    :cond_28
    invoke-static/range {v42 .. v42}, Lcom/android/server/audio/AudioService$VolumeStreamState;->-get3(Lcom/android/server/audio/AudioService$VolumeStreamState;)Z

    move-result v10

    move-object/from16 v6, p0

    move/from16 v8, p2

    move-object/from16 v11, p4

    move/from16 v12, p3

    invoke-direct/range {v6 .. v12}, Lcom/android/server/audio/AudioService;->checkForRingerModeChange(IIIZLjava/lang/String;I)I

    move-result v38

    and-int/lit8 v6, v38, 0x1

    if-eqz v6, :cond_32

    const/16 v25, 0x1

    :goto_6
    move/from16 v0, v38

    and-int/lit16 v6, v0, 0x80

    if-eqz v6, :cond_29

    move/from16 v0, p3

    or-int/lit16 v0, v0, 0x80

    move/from16 p3, v0

    :cond_29
    move/from16 v0, v38

    and-int/lit16 v6, v0, 0x800

    if-eqz v6, :cond_2a

    move/from16 v0, p3

    or-int/lit16 v0, v0, 0x800

    move/from16 p3, v0

    :cond_2a
    move-object/from16 v0, p0

    move/from16 v1, v21

    move/from16 v2, p3

    invoke-direct {v0, v1, v2}, Lcom/android/server/audio/AudioService;->volumeAdjustmentAllowedByDnd(II)Z

    move-result v6

    if-nez v6, :cond_2b

    const/16 v25, 0x0

    :cond_2b
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/audio/AudioService;->mStreamStates:[Lcom/android/server/audio/AudioService$VolumeStreamState;

    aget-object v6, v6, p1

    move/from16 v0, v17

    invoke-virtual {v6, v0}, Lcom/android/server/audio/AudioService$VolumeStreamState;->getIndex(I)I

    move-result v36

    if-eqz v25, :cond_3d

    if-eqz p2, :cond_3d

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/audio/AudioService;->mAudioHandler:Lcom/android/server/audio/AudioService$AudioHandler;

    const/16 v8, 0x18

    invoke-virtual {v6, v8}, Lcom/android/server/audio/AudioService$AudioHandler;->removeMessages(I)V

    const/4 v6, 0x3

    move/from16 v0, v21

    if-ne v0, v6, :cond_2d

    move/from16 v0, v17

    and-int/lit16 v6, v0, 0x380

    if-eqz v6, :cond_2d

    and-int/lit8 v6, p3, 0x40

    if-nez v6, :cond_2d

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/server/audio/AudioService;->mA2dpAvrcpLock:Ljava/lang/Object;

    monitor-enter v8

    :try_start_1
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/audio/AudioService;->mA2dp:Landroid/bluetooth/BluetoothA2dp;

    if-eqz v6, :cond_2c

    move-object/from16 v0, p0

    iget-boolean v6, v0, Lcom/android/server/audio/AudioService;->mAvrcpAbsVolSupported:Z

    if-eqz v6, :cond_2c

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/audio/AudioService;->mA2dp:Landroid/bluetooth/BluetoothA2dp;

    move/from16 v0, p2

    invoke-virtual {v6, v0}, Landroid/bluetooth/BluetoothA2dp;->adjustAvrcpAbsoluteVolume(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :cond_2c
    monitor-exit v8

    :cond_2d
    if-eqz v32, :cond_38

    const/16 v6, 0x65

    move/from16 v0, p2

    if-ne v0, v6, :cond_34

    invoke-static/range {v42 .. v42}, Lcom/android/server/audio/AudioService$VolumeStreamState;->-get3(Lcom/android/server/audio/AudioService$VolumeStreamState;)Z

    move-result v6

    if-eqz v6, :cond_33

    const/16 v40, 0x0

    :goto_7
    const/4 v6, 0x3

    move/from16 v0, v21

    if-ne v0, v6, :cond_2e

    move-object/from16 v0, p0

    move/from16 v1, v40

    invoke-direct {v0, v1}, Lcom/android/server/audio/AudioService;->setSystemAudioMute(Z)V

    :cond_2e
    const/16 v41, 0x0

    :goto_8
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/audio/AudioService;->mStreamStates:[Lcom/android/server/audio/AudioService$VolumeStreamState;

    array-length v6, v6

    move/from16 v0, v41

    if-ge v0, v6, :cond_3a

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/audio/AudioService;->mStreamVolumeAlias:[I

    aget v6, v6, v41

    move/from16 v0, v21

    if-ne v0, v6, :cond_2f

    invoke-direct/range {p0 .. p0}, Lcom/android/server/audio/AudioService;->readCameraSoundForced()Z

    move-result v6

    if-eqz v6, :cond_37

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/audio/AudioService;->mStreamStates:[Lcom/android/server/audio/AudioService$VolumeStreamState;

    aget-object v6, v6, v41

    invoke-virtual {v6}, Lcom/android/server/audio/AudioService$VolumeStreamState;->getStreamType()I

    move-result v6

    const/4 v8, 0x7

    if-ne v6, v8, :cond_36

    const/4 v6, 0x1

    :goto_9
    if-nez v6, :cond_2f

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/audio/AudioService;->mStreamStates:[Lcom/android/server/audio/AudioService$VolumeStreamState;

    aget-object v6, v6, v41

    move/from16 v0, v40

    invoke-virtual {v6, v0}, Lcom/android/server/audio/AudioService$VolumeStreamState;->mute(Z)V

    :cond_2f
    add-int/lit8 v41, v41, 0x1

    goto :goto_8

    :catchall_0
    move-exception v6

    monitor-exit v8

    throw v6

    :cond_30
    invoke-virtual/range {v42 .. v42}, Lcom/android/server/audio/AudioService$VolumeStreamState;->getMaxIndex()I

    move-result v9

    goto/16 :goto_4

    :cond_31
    const/16 v6, 0xa

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, v21

    invoke-direct {v0, v6, v1, v2}, Lcom/android/server/audio/AudioService;->rescaleIndex(III)I

    move-result v9

    goto/16 :goto_5

    :cond_32
    const/16 v25, 0x0

    goto/16 :goto_6

    :catchall_1
    move-exception v6

    monitor-exit v8

    throw v6

    :cond_33
    const/16 v40, 0x1

    goto :goto_7

    :cond_34
    const/16 v6, -0x64

    move/from16 v0, p2

    if-ne v0, v6, :cond_35

    const/16 v40, 0x1

    goto :goto_7

    :cond_35
    const/16 v40, 0x0

    goto :goto_7

    :cond_36
    const/4 v6, 0x0

    goto :goto_9

    :cond_37
    const/4 v6, 0x0

    goto :goto_9

    :cond_38
    if-nez v31, :cond_39

    const/4 v6, 0x1

    move/from16 v0, p2

    if-ne v0, v6, :cond_39

    add-int v6, v7, v9

    move-object/from16 v0, p0

    move/from16 v1, v21

    move/from16 v2, v17

    invoke-direct {v0, v1, v6, v2}, Lcom/android/server/audio/AudioService;->checkSafeMediaVolume(III)Z

    move-result v6

    if-eqz v6, :cond_3e

    :cond_39
    const/4 v6, -0x1

    move/from16 v0, p2

    if-ne v0, v6, :cond_40

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/audio/AudioService;->mVolumeController:Lcom/android/server/audio/AudioService$VolumeController;

    invoke-virtual {v6}, Lcom/android/server/audio/AudioService$VolumeController;->isSafeVolumeDialogShowing()Z

    move-result v6

    if-eqz v6, :cond_40

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/audio/AudioService;->mVolumeController:Lcom/android/server/audio/AudioService$VolumeController;

    const/high16 v8, 0x10000000

    invoke-virtual {v6, v8}, Lcom/android/server/audio/AudioService$VolumeController;->postDisplaySafeVolumeWarning(I)V

    and-int/lit8 p3, p3, -0x2

    :cond_3a
    :goto_a
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/audio/AudioService;->mStreamStates:[Lcom/android/server/audio/AudioService$VolumeStreamState;

    aget-object v6, v6, p1

    move/from16 v0, v17

    invoke-virtual {v6, v0}, Lcom/android/server/audio/AudioService$VolumeStreamState;->getIndex(I)I

    move-result v35

    const/4 v6, 0x3

    move/from16 v0, v21

    if-ne v0, v6, :cond_3b

    invoke-virtual/range {p0 .. p1}, Lcom/android/server/audio/AudioService;->getStreamMaxVolume(I)I

    move-result v6

    move-object/from16 v0, p0

    move/from16 v1, v36

    move/from16 v2, v35

    move/from16 v3, p3

    invoke-direct {v0, v1, v2, v6, v3}, Lcom/android/server/audio/AudioService;->setSystemAudioVolume(IIII)V

    :cond_3b
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/audio/AudioService;->mHdmiManager:Landroid/hardware/hdmi/HdmiControlManager;

    if-eqz v6, :cond_3d

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/server/audio/AudioService;->mHdmiManager:Landroid/hardware/hdmi/HdmiControlManager;

    monitor-enter v8

    :try_start_2
    move-object/from16 v0, p0

    iget-boolean v6, v0, Lcom/android/server/audio/AudioService;->mHdmiCecSink:Z

    if-eqz v6, :cond_3c

    const/4 v6, 0x3

    move/from16 v0, v21

    if-ne v0, v6, :cond_3c

    move/from16 v0, v36

    move/from16 v1, v35

    if-eq v0, v1, :cond_3c

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/server/audio/AudioService;->mHdmiPlaybackClient:Landroid/hardware/hdmi/HdmiPlaybackClient;

    monitor-enter v10
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_4

    const/4 v6, -0x1

    move/from16 v0, p2

    if-ne v0, v6, :cond_4a

    const/16 v34, 0x19

    :goto_b
    :try_start_3
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    move-result-wide v28

    :try_start_4
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/audio/AudioService;->mHdmiPlaybackClient:Landroid/hardware/hdmi/HdmiPlaybackClient;

    const/4 v11, 0x1

    move/from16 v0, v34

    invoke-virtual {v6, v0, v11}, Landroid/hardware/hdmi/HdmiPlaybackClient;->sendKeyEvent(IZ)V

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/audio/AudioService;->mHdmiPlaybackClient:Landroid/hardware/hdmi/HdmiPlaybackClient;

    const/4 v11, 0x0

    move/from16 v0, v34

    invoke-virtual {v6, v0, v11}, Landroid/hardware/hdmi/HdmiPlaybackClient;->sendKeyEvent(IZ)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    :try_start_5
    invoke-static/range {v28 .. v29}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    :try_start_6
    monitor-exit v10
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_4

    :cond_3c
    monitor-exit v8

    :cond_3d
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/audio/AudioService;->mStreamStates:[Lcom/android/server/audio/AudioService$VolumeStreamState;

    aget-object v6, v6, p1

    move/from16 v0, v17

    invoke-virtual {v6, v0}, Lcom/android/server/audio/AudioService$VolumeStreamState;->getIndex(I)I

    move-result v27

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, v36

    move/from16 v3, v27

    move/from16 v4, p3

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/server/audio/AudioService;->sendVolumeUpdate(IIII)V

    return-void

    :cond_3e
    const-string/jumbo v6, "AudioService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "adjustStreamVolume() safe volume index = "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move/from16 v0, v36

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct/range {p0 .. p0}, Lcom/android/server/audio/AudioService;->isCoverOpen()Z

    move-result v6

    if-nez v6, :cond_3f

    const/4 v6, 0x1

    move-object/from16 v0, p0

    iput-boolean v6, v0, Lcom/android/server/audio/AudioService;->mIsCoverSafetyVolume:Z

    :cond_3f
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/audio/AudioService;->mVolumeController:Lcom/android/server/audio/AudioService$VolumeController;

    move/from16 v0, p3

    invoke-virtual {v6, v0}, Lcom/android/server/audio/AudioService$VolumeController;->postDisplaySafeVolumeWarning(I)V

    goto/16 :goto_a

    :cond_40
    const/4 v6, -0x1

    move/from16 v0, p2

    if-ne v0, v6, :cond_41

    add-int/lit8 v6, v36, 0x5

    div-int/lit8 v6, v6, 0xa

    if-nez v6, :cond_41

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/audio/AudioService;->mStreamVolumeAlias:[I

    aget v6, v6, p1

    const/4 v8, 0x3

    if-ne v6, v8, :cond_41

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/audio/AudioService;->mFineMediaVolume:Lcom/android/server/audio/AudioService$FineVolumeState;

    move/from16 v0, v17

    invoke-virtual {v6, v0}, Lcom/android/server/audio/AudioService$FineVolumeState;->getIndex(I)I

    move-result v6

    if-eqz v6, :cond_3a

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/audio/AudioService;->mFineMediaVolume:Lcom/android/server/audio/AudioService$FineVolumeState;

    const/4 v8, 0x0

    move/from16 v0, v17

    invoke-virtual {v6, v8, v0}, Lcom/android/server/audio/AudioService$FineVolumeState;->setIndex(II)Z

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/audio/AudioService;->mAudioHandler:Lcom/android/server/audio/AudioService$AudioHandler;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/audio/AudioService;->mFineMediaVolume:Lcom/android/server/audio/AudioService$FineVolumeState;

    move-object/from16 v19, v0

    const/16 v15, 0x70

    const/16 v16, 0x2

    const/16 v18, 0x0

    const/16 v20, 0x0

    invoke-static/range {v14 .. v20}, Lcom/android/server/audio/AudioService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    goto/16 :goto_a

    :cond_41
    mul-int v6, p2, v9

    move-object/from16 v0, v42

    move/from16 v1, v17

    move-object/from16 v2, p5

    invoke-virtual {v0, v6, v1, v2}, Lcom/android/server/audio/AudioService$VolumeStreamState;->adjustIndex(IILjava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_42

    invoke-static/range {v42 .. v42}, Lcom/android/server/audio/AudioService$VolumeStreamState;->-get3(Lcom/android/server/audio/AudioService$VolumeStreamState;)Z

    move-result v6

    if-eqz v6, :cond_3a

    :cond_42
    invoke-static/range {v42 .. v42}, Lcom/android/server/audio/AudioService$VolumeStreamState;->-get3(Lcom/android/server/audio/AudioService$VolumeStreamState;)Z

    move-result v6

    if-eqz v6, :cond_45

    const/4 v6, 0x1

    move/from16 v0, p2

    if-ne v0, v6, :cond_49

    const/4 v6, 0x5

    move/from16 v0, p1

    if-eq v0, v6, :cond_45

    const/4 v6, 0x3

    move/from16 v0, v21

    if-ne v0, v6, :cond_44

    const/16 v26, 0x0

    :goto_c
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/audio/AudioService;->mStreamStates:[Lcom/android/server/audio/AudioService$VolumeStreamState;

    array-length v6, v6

    move/from16 v0, v26

    if-ge v0, v6, :cond_45

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/audio/AudioService;->mStreamVolumeAlias:[I

    aget v6, v6, v26

    move/from16 v0, v21

    if-ne v0, v6, :cond_43

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/audio/AudioService;->mStreamStates:[Lcom/android/server/audio/AudioService$VolumeStreamState;

    aget-object v6, v6, v26

    const/4 v8, 0x0

    invoke-virtual {v6, v8}, Lcom/android/server/audio/AudioService$VolumeStreamState;->mute(Z)V

    :cond_43
    add-int/lit8 v26, v26, 0x1

    goto :goto_c

    :cond_44
    const/4 v6, 0x0

    move-object/from16 v0, v42

    invoke-virtual {v0, v6}, Lcom/android/server/audio/AudioService$VolumeStreamState;->mute(Z)V

    :cond_45
    :goto_d
    move-object/from16 v0, p0

    iget-boolean v6, v0, Lcom/android/server/audio/AudioService;->mIsCoverSafetyVolume:Z

    if-eqz v6, :cond_46

    const/4 v6, -0x1

    move/from16 v0, p2

    if-ne v0, v6, :cond_46

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/server/audio/AudioService;->mSafeMediaVolumeIndex:I

    move/from16 v0, v36

    if-ne v0, v6, :cond_46

    const-string/jumbo v6, "AudioService"

    const-string/jumbo v8, "adjustStreamVolume() Remove the safeVolumeWarning pop-up on S cover."

    invoke-static {v6, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/audio/AudioService;->mVolumeController:Lcom/android/server/audio/AudioService$VolumeController;

    const/high16 v8, 0x10000000

    invoke-virtual {v6, v8}, Lcom/android/server/audio/AudioService$VolumeController;->postDisplaySafeVolumeWarning(I)V

    const/4 v6, 0x0

    move-object/from16 v0, p0

    iput-boolean v6, v0, Lcom/android/server/audio/AudioService;->mIsCoverSafetyVolume:Z

    :cond_46
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/audio/AudioService;->mStreamVolumeAlias:[I

    aget v6, v6, p1

    const/4 v8, 0x3

    if-ne v6, v8, :cond_48

    const/4 v6, 0x1

    move/from16 v0, p2

    if-ne v0, v6, :cond_48

    add-int/lit8 v6, v36, 0x5

    div-int/lit8 v6, v6, 0xa

    sget-object v8, Lcom/android/server/audio/AudioService;->MAX_STREAM_VOLUME:[I

    const/4 v10, 0x3

    aget v8, v8, v10

    add-int/lit8 v8, v8, -0x1

    if-eq v6, v8, :cond_47

    add-int/lit8 v6, v36, 0x5

    div-int/lit8 v6, v6, 0xa

    move-object/from16 v0, p0

    iget v8, v0, Lcom/android/server/audio/AudioService;->mVolumeLimitValue:I

    add-int/lit8 v8, v8, -0x1

    if-ne v6, v8, :cond_48

    :cond_47
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/audio/AudioService;->mFineMediaVolume:Lcom/android/server/audio/AudioService$FineVolumeState;

    const/4 v8, 0x0

    move/from16 v0, v17

    invoke-virtual {v6, v8, v0}, Lcom/android/server/audio/AudioService$FineVolumeState;->setIndex(II)Z

    :cond_48
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/audio/AudioService;->mAudioHandler:Lcom/android/server/audio/AudioService$AudioHandler;

    const/4 v15, 0x0

    const/16 v16, 0x2

    const/16 v18, 0x0

    const/16 v20, 0x0

    move-object/from16 v19, v42

    invoke-static/range {v14 .. v20}, Lcom/android/server/audio/AudioService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    goto/16 :goto_a

    :cond_49
    const/4 v6, -0x1

    move/from16 v0, p2

    if-ne v0, v6, :cond_45

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/server/audio/AudioService;->mPlatformType:I

    const/4 v8, 0x2

    if-ne v6, v8, :cond_45

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/audio/AudioService;->mAudioHandler:Lcom/android/server/audio/AudioService$AudioHandler;

    move-object/from16 v18, v0

    const/16 v19, 0x18

    const/16 v20, 0x2

    const/16 v23, 0x0

    const/16 v24, 0x15e

    move/from16 v22, p3

    invoke-static/range {v18 .. v24}, Lcom/android/server/audio/AudioService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    goto/16 :goto_d

    :cond_4a
    const/16 v34, 0x18

    goto/16 :goto_b

    :catchall_2
    move-exception v6

    :try_start_7
    invoke-static/range {v28 .. v29}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v6
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    :catchall_3
    move-exception v6

    :try_start_8
    monitor-exit v10

    throw v6
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_4

    :catchall_4
    move-exception v6

    monitor-exit v8

    throw v6

    nop

    :sswitch_data_0
    .sparse-switch
        -0x64 -> :sswitch_1
        -0x1 -> :sswitch_0
        0x1 -> :sswitch_0
        0x64 -> :sswitch_2
        0x65 -> :sswitch_3
    .end sparse-switch
.end method

.method private adjustSuggestedStreamVolume(IIILjava/lang/String;Ljava/lang/String;I)V
    .locals 9

    sget-boolean v0, Lcom/android/server/audio/AudioService;->DEBUG_VOL:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "AudioService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "adjustSuggestedStreamVolume() stream="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", flags="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", caller="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-direct {p0, p1}, Lcom/android/server/audio/AudioService;->isMuteAdjust(I)Z

    move-result v7

    iget v0, p0, Lcom/android/server/audio/AudioService;->mVolumeControlStream:I

    const/4 v2, -0x1

    if-eq v0, v2, :cond_3

    iget v1, p0, Lcom/android/server/audio/AudioService;->mVolumeControlStream:I

    :goto_0
    invoke-direct {p0, v1}, Lcom/android/server/audio/AudioService;->ensureValidStreamType(I)V

    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mVolumeController:Lcom/android/server/audio/AudioService$VolumeController;

    invoke-virtual {v0}, Lcom/android/server/audio/AudioService$VolumeController;->isSafeVolumeDialogShowing()Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    if-nez p1, :cond_4

    :cond_1
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mStreamVolumeAlias:[I

    aget v0, v0, v1

    const/4 v2, 0x3

    if-eq v0, v2, :cond_4

    sget-boolean v0, Lcom/android/server/audio/AudioService;->DEBUG_VOL:Z

    if-eqz v0, :cond_2

    const-string/jumbo v0, "AudioService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Skip volume increase action for stream: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " when Ear safety pop-up is visible"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    return-void

    :cond_3
    invoke-virtual {p0, p2}, Lcom/android/server/audio/AudioService;->getActiveStreamType(I)I

    move-result v1

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mStreamVolumeAlias:[I

    aget v8, v0, v1

    invoke-direct {p0}, Lcom/android/server/audio/AudioService;->isCoverOpen()Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mStreamVolumeAlias:[I

    aget v0, v0, v1

    const/4 v2, 0x2

    if-ne v0, v2, :cond_5

    invoke-direct {p0}, Lcom/android/server/audio/AudioService;->isInCommunication()Z

    move-result v0

    if-nez v0, :cond_5

    const-string/jumbo v0, "AudioService"

    const-string/jumbo v2, "Volume change disabled : cover closed."

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_5
    move-object v0, p0

    move v2, p1

    move v3, p3

    move-object v4, p4

    move-object v5, p5

    move v6, p6

    invoke-direct/range {v0 .. v6}, Lcom/android/server/audio/AudioService;->adjustStreamVolume(IIILjava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method private broadcastMasterMuteStatus(Z)V
    .locals 2

    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "android.media.MASTER_MUTE_CHANGED_ACTION"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v1, "android.media.EXTRA_MASTER_VOLUME_MUTED"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const/high16 v1, 0x24000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    invoke-direct {p0, v0}, Lcom/android/server/audio/AudioService;->sendStickyBroadcastToAll(Landroid/content/Intent;)V

    return-void
.end method

.method private broadcastRingerMode(Ljava/lang/String;I)V
    .locals 2

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v1, "android.media.EXTRA_RINGER_MODE"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const/high16 v1, 0x24000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    invoke-direct {p0, v0}, Lcom/android/server/audio/AudioService;->sendStickyBroadcastToAll(Landroid/content/Intent;)V

    return-void
.end method

.method private broadcastScoConnectionState(I)V
    .locals 7

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mAudioHandler:Lcom/android/server/audio/AudioService$AudioHandler;

    const/16 v1, 0x13

    const/4 v2, 0x2

    const/4 v5, 0x0

    move v3, p1

    move v6, v4

    invoke-static/range {v0 .. v6}, Lcom/android/server/audio/AudioService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    return-void
.end method

.method private broadcastVibrateSetting(I)V
    .locals 3

    invoke-static {}, Landroid/app/ActivityManagerNative;->isSystemReady()Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "android.media.VIBRATE_SETTING_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v1, "android.media.EXTRA_VIBRATE_TYPE"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string/jumbo v1, "android.media.EXTRA_VIBRATE_SETTING"

    invoke-virtual {p0, p1}, Lcom/android/server/audio/AudioService;->getVibrateSetting(I)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-direct {p0, v0}, Lcom/android/server/audio/AudioService;->sendBroadcastToAll(Landroid/content/Intent;)V

    :cond_0
    return-void
.end method

.method private callLcdOn()V
    .locals 4

    iget-object v2, p0, Lcom/android/server/audio/AudioService;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "power"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    const-string/jumbo v2, "AudioService"

    const v3, 0x3000000a

    invoke-virtual {v0, v3, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v2

    if-nez v2, :cond_0

    const-wide/16 v2, 0x1388

    invoke-virtual {v1, v2, v3}, Landroid/os/PowerManager$WakeLock;->acquire(J)V

    :cond_0
    return-void
.end method

.method private callVibrateMsg()V
    .locals 7

    const/4 v2, 0x1

    const/4 v3, 0x0

    iget-boolean v0, p0, Lcom/android/server/audio/AudioService;->mIsVibrate:Z

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/android/server/audio/AudioService;->vibrateCall()V

    iput-boolean v2, p0, Lcom/android/server/audio/AudioService;->mIsVibrate:Z

    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mAudioHandler:Lcom/android/server/audio/AudioService$AudioHandler;

    const/16 v1, 0x6d

    const/4 v5, 0x0

    const/16 v6, 0x258

    move v4, v3

    invoke-static/range {v0 .. v6}, Lcom/android/server/audio/AudioService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    :cond_0
    return-void
.end method

.method private cancelA2dpDeviceTimeout()V
    .locals 2

    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mAudioHandler:Lcom/android/server/audio/AudioService$AudioHandler;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Lcom/android/server/audio/AudioService$AudioHandler;->removeMessages(I)V

    return-void
.end method

.method private checkAllAliasStreamVolumes()V
    .locals 6

    const-class v3, Lcom/android/server/audio/AudioService$VolumeStreamState;

    monitor-enter v3

    :try_start_0
    invoke-static {}, Landroid/media/AudioSystem;->getNumStreamTypes()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    iget-object v2, p0, Lcom/android/server/audio/AudioService;->mStreamVolumeAlias:[I

    aget v2, v2, v1

    if-eq v1, v2, :cond_0

    iget-object v2, p0, Lcom/android/server/audio/AudioService;->mStreamStates:[Lcom/android/server/audio/AudioService$VolumeStreamState;

    aget-object v2, v2, v1

    iget-object v4, p0, Lcom/android/server/audio/AudioService;->mStreamStates:[Lcom/android/server/audio/AudioService$VolumeStreamState;

    iget-object v5, p0, Lcom/android/server/audio/AudioService;->mStreamVolumeAlias:[I

    aget v5, v5, v1

    aget-object v4, v4, v5

    const-string/jumbo v5, "AudioService"

    invoke-virtual {v2, v4, v5}, Lcom/android/server/audio/AudioService$VolumeStreamState;->setAllIndexes(Lcom/android/server/audio/AudioService$VolumeStreamState;Ljava/lang/String;)V

    :cond_0
    iget-object v2, p0, Lcom/android/server/audio/AudioService;->mStreamStates:[Lcom/android/server/audio/AudioService$VolumeStreamState;

    aget-object v2, v2, v1

    invoke-static {v2}, Lcom/android/server/audio/AudioService$VolumeStreamState;->-get3(Lcom/android/server/audio/AudioService$VolumeStreamState;)Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/android/server/audio/AudioService;->mStreamStates:[Lcom/android/server/audio/AudioService$VolumeStreamState;

    aget-object v2, v2, v1

    invoke-virtual {v2}, Lcom/android/server/audio/AudioService$VolumeStreamState;->applyAllVolumes()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    monitor-exit v3

    return-void

    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.method private checkAllFixedVolumeDevices()V
    .locals 3

    invoke-static {}, Landroid/media/AudioSystem;->getNumStreamTypes()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    iget-object v2, p0, Lcom/android/server/audio/AudioService;->mStreamStates:[Lcom/android/server/audio/AudioService$VolumeStreamState;

    aget-object v2, v2, v1

    invoke-virtual {v2}, Lcom/android/server/audio/AudioService$VolumeStreamState;->checkFixedVolumeDevices()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private checkAllFixedVolumeDevices(I)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mStreamStates:[Lcom/android/server/audio/AudioService$VolumeStreamState;

    aget-object v0, v0, p1

    invoke-virtual {v0}, Lcom/android/server/audio/AudioService$VolumeStreamState;->checkFixedVolumeDevices()V

    return-void
.end method

.method private checkAndSendEarCareInfo()V
    .locals 14

    const/4 v5, 0x0

    const/16 v1, 0x68

    const/4 v2, 0x1

    const/4 v3, 0x0

    iget-boolean v0, p0, Lcom/android/server/audio/AudioService;->mSystemReady:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v7, Landroid/content/Intent;

    const-string/jumbo v0, "com.samsung.android.app.audio.epinforesponse"

    invoke-direct {v7, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    new-instance v8, Landroid/os/Bundle;

    invoke-direct {v8}, Landroid/os/Bundle;-><init>()V

    const/16 v0, 0x180

    invoke-direct {p0, v0}, Lcom/android/server/audio/AudioService;->checkDeviceConnected(I)Z

    move-result v9

    iget-boolean v0, p0, Lcom/android/server/audio/AudioService;->mIsEarCareSettingOn:Z

    if-eqz v0, :cond_5

    if-eqz v9, :cond_5

    const/4 v11, 0x0

    invoke-direct {p0}, Lcom/android/server/audio/AudioService;->getActiveStreamCount()I

    move-result v0

    if-lez v0, :cond_2

    const-string/jumbo v0, "earcare=on"

    invoke-static {v0}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    const/4 v11, 0x1

    :goto_0
    const-string/jumbo v0, "earcare_percent"

    invoke-static {v0}, Landroid/media/AudioSystem;->getParameters(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    if-eqz v13, :cond_3

    const-string/jumbo v0, ""

    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    :goto_1
    if-nez v0, :cond_1

    const-string/jumbo v12, "earcare_percent="

    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v4

    if-le v0, v4, :cond_4

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {v13, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v10

    const-string/jumbo v0, "AudioService"

    const-string/jumbo v4, "checkAndSendEarCareInfo() - send intent"

    invoke-static {v0, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v0, "state"

    invoke-virtual {v8, v0, v11}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo v0, "percent"

    invoke-virtual {v8, v0, v10}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    invoke-virtual {v7, v8}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    sget-object v0, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-direct {p0, v7, v0}, Lcom/android/server/audio/AudioService;->sendBroadcastToUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    const-string/jumbo v0, "AudioService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "checkAndSendEarCareInfo() state: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v6, " percent: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    const-string/jumbo v0, "AudioService"

    const-string/jumbo v4, "checkAndSendEarCareInfo() - Loop"

    invoke-static {v0, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mAudioHandler:Lcom/android/server/audio/AudioService$AudioHandler;

    const v6, 0xea60

    move v4, v3

    invoke-static/range {v0 .. v6}, Lcom/android/server/audio/AudioService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    return-void

    :cond_2
    const-string/jumbo v0, "earcare=noActive"

    invoke-static {v0}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    const/4 v11, 0x0

    goto/16 :goto_0

    :cond_3
    move v0, v2

    goto :goto_1

    :cond_4
    return-void

    :cond_5
    const-string/jumbo v0, "AudioService"

    const-string/jumbo v2, "checkAndSendEarCareInfo() - send off"

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v0, "earcare=off"

    invoke-static {v0}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    const-string/jumbo v0, "state"

    invoke-virtual {v8, v0, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    invoke-virtual {v7, v8}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    sget-object v0, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-direct {p0, v7, v0}, Lcom/android/server/audio/AudioService;->sendBroadcastToUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mAudioHandler:Lcom/android/server/audio/AudioService$AudioHandler;

    invoke-virtual {v0, v1}, Lcom/android/server/audio/AudioService$AudioHandler;->removeMessages(I)V

    return-void
.end method

.method private checkAndSetSplitSound(Landroid/media/AudioAttributes;Ljava/lang/String;I)V
    .locals 3

    const/4 v2, 0x0

    const-string/jumbo v0, "com.android.server.telecom"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Landroid/media/AudioAttributes;->getUsage()I

    move-result v0

    const/4 v1, 0x5

    if-ne v0, v1, :cond_3

    :cond_0
    :goto_0
    const/16 v0, 0x7c

    invoke-direct {p0, v0}, Lcom/android/server/audio/AudioService;->checkDeviceConnected(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/audio/AudioService;->mIsExceptionalDevice:Z

    const/high16 v0, 0x2000000

    invoke-direct {p0, v0}, Lcom/android/server/audio/AudioService;->checkDeviceConnected(I)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/server/audio/AudioService;->mIsExceptionalDevice:Z

    if-eqz v0, :cond_4

    :cond_1
    iput-boolean v2, p0, Lcom/android/server/audio/AudioService;->mSplitSound:Z

    :goto_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "audioParam;SplitSound="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/server/audio/AudioService;->mSplitSound:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    :cond_2
    return-void

    :cond_3
    invoke-virtual {p1}, Landroid/media/AudioAttributes;->getUsage()I

    move-result v0

    const/4 v1, 0x6

    if-eq v0, v1, :cond_0

    invoke-virtual {p1}, Landroid/media/AudioAttributes;->getUsage()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_2

    goto :goto_0

    :cond_4
    const/4 v0, 0x3

    invoke-static {v0, v2}, Landroid/media/AudioSystem;->isStreamActiveRemotely(II)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/audio/AudioService;->mSplitSound:Z

    goto :goto_1
.end method

.method private checkAndSetThemeSound(Z)V
    .locals 3

    const/4 v2, 0x0

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mContentResolver:Landroid/content/ContentResolver;

    const-string/jumbo v1, "theme_touch_sound"

    invoke-static {v0, v1}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/audio/AudioService;->SOUND_EFFECTS_PATH_THEME:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/android/server/audio/AudioService;->unloadSoundEffects()V

    invoke-virtual {p0}, Lcom/android/server/audio/AudioService;->loadSoundEffects()Z

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mContentResolver:Landroid/content/ContentResolver;

    const-string/jumbo v1, "theme_touch_sound"

    invoke-static {v0, v1}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mContentResolver:Landroid/content/ContentResolver;

    const-string/jumbo v1, "theme_touch_sound"

    invoke-static {v0, v1}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/audio/AudioService;->SOUND_EFFECTS_PATH_THEME:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_2
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->SOUND_EFFECTS_PATH_THEME:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mContentResolver:Landroid/content/ContentResolver;

    const-string/jumbo v1, "theme_touch_sound"

    invoke-static {v0, v1}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    iput-object v2, p0, Lcom/android/server/audio/AudioService;->SOUND_EFFECTS_PATH_THEME:Ljava/lang/String;

    const-string/jumbo v0, "AudioService"

    const-string/jumbo v1, "Theme is released."

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/server/audio/AudioService;->unloadSoundEffects()V

    invoke-virtual {p0}, Lcom/android/server/audio/AudioService;->loadSoundEffects()Z

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mContentResolver:Landroid/content/ContentResolver;

    const-string/jumbo v1, "theme_touch_sound"

    invoke-static {v0, v1}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/audio/AudioService;->SOUND_EFFECTS_PATH_THEME:Ljava/lang/String;

    const-string/jumbo v0, "AudioService"

    const-string/jumbo v1, "Theme is changed."

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/server/audio/AudioService;->unloadSoundEffects()V

    invoke-virtual {p0}, Lcom/android/server/audio/AudioService;->loadSoundEffects()Z

    goto :goto_0
.end method

.method private checkCPUBoostForEffect()Z
    .locals 3

    const/4 v2, 0x1

    const/4 v0, 0x0

    iget v1, p0, Lcom/android/server/audio/AudioService;->mSoundAliveEnabled:I

    if-eq v1, v2, :cond_0

    iget v1, p0, Lcom/android/server/audio/AudioService;->mTubeAmpEnabled:I

    if-ne v1, v2, :cond_1

    :cond_0
    const/16 v1, 0xc

    invoke-direct {p0, v1}, Lcom/android/server/audio/AudioService;->checkDeviceConnected(I)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v0, 0x1

    :cond_1
    return v0
.end method

.method private checkDeviceConnected(I)Z
    .locals 8

    const v4, 0x8000

    const/4 v7, 0x1

    const/high16 v6, -0x80000000

    const/4 v5, 0x0

    iget-object v3, p0, Lcom/android/server/audio/AudioService;->mConnectedDevices:Landroid/util/ArrayMap;

    monitor-enter v3

    and-int v2, p1, v6

    if-nez v2, :cond_3

    const/4 v1, 0x0

    :goto_0
    :try_start_0
    iget-object v2, p0, Lcom/android/server/audio/AudioService;->mConnectedDevices:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    iget-object v2, p0, Lcom/android/server/audio/AudioService;->mConnectedDevices:Landroid/util/ArrayMap;

    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/audio/AudioService$DeviceListSpec;

    iget v2, v0, Lcom/android/server/audio/AudioService$DeviceListSpec;->mDeviceType:I

    and-int/2addr v2, v6

    if-eqz v2, :cond_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    iget v2, v0, Lcom/android/server/audio/AudioService$DeviceListSpec;->mDeviceType:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    and-int/2addr v2, p1

    if-eqz v2, :cond_0

    monitor-exit v3

    return v7

    :cond_2
    if-ne p1, v4, :cond_5

    :try_start_1
    const-string/jumbo v2, "0"

    const v4, 0x8000

    invoke-static {v4, v2}, Landroid/media/AudioSystem;->getDeviceConnectionState(ILjava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v2

    if-lez v2, :cond_5

    monitor-exit v3

    return v7

    :cond_3
    const/4 v1, 0x0

    :goto_1
    :try_start_2
    iget-object v2, p0, Lcom/android/server/audio/AudioService;->mConnectedDevices:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v2

    if-ge v1, v2, :cond_5

    iget-object v2, p0, Lcom/android/server/audio/AudioService;->mConnectedDevices:Landroid/util/ArrayMap;

    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/audio/AudioService$DeviceListSpec;

    iget v2, v0, Lcom/android/server/audio/AudioService$DeviceListSpec;->mDeviceType:I

    and-int/2addr v2, v6

    if-eqz v2, :cond_4

    iget v2, v0, Lcom/android/server/audio/AudioService$DeviceListSpec;->mDeviceType:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    and-int/2addr v2, p1

    const v4, 0x7fffffff

    and-int/2addr v2, v4

    if-eqz v2, :cond_4

    monitor-exit v3

    return v7

    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_5
    monitor-exit v3

    return v5

    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.method private checkFactoryMode()Z
    .locals 1

    invoke-static {}, Landroid/os/FactoryTest;->isFactoryMode()Z

    move-result v0

    return v0
.end method

.method private checkFactorySim()Z
    .locals 7

    :try_start_0
    iget-object v4, p0, Lcom/android/server/audio/AudioService;->mContext:Landroid/content/Context;

    const-string/jumbo v5, "phone"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telephony/TelephonyManager;

    const-string/jumbo v0, "999999999999999"

    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getSubscriberId()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    const-string/jumbo v4, "999999999999999"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const-string/jumbo v4, "AudioService"

    const-string/jumbo v5, "Factory SIM is used now, So Popup UI will not be apear"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v4, 0x1

    return v4

    :catch_0
    move-exception v1

    const-string/jumbo v4, "AudioService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Error checking factory SIM: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v4, 0x0

    return v4
.end method

.method private checkForRingerModeChange(IIIZLjava/lang/String;I)I
    .locals 12

    iget v7, p0, Lcom/android/server/audio/AudioService;->mPlatformType:I

    const/4 v8, 0x2

    if-ne v7, v8, :cond_2

    const/4 v4, 0x1

    :goto_0
    const/4 v5, 0x1

    invoke-virtual {p0}, Lcom/android/server/audio/AudioService;->getRingerModeInternal()I

    move-result v6

    packed-switch v6, :pswitch_data_0

    const-string/jumbo v7, "AudioService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "checkForRingerModeChange() wrong ringer mode: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_1
    move-object/from16 v0, p5

    invoke-direct {p0, v0}, Lcom/android/server/audio/AudioService;->isAndroidNPlus(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-direct {p0, v6}, Lcom/android/server/audio/AudioService;->wouldToggleZenMode(I)Z

    move-result v7

    if-eqz v7, :cond_1

    iget-object v7, p0, Lcom/android/server/audio/AudioService;->mNm:Landroid/app/NotificationManager;

    move-object/from16 v0, p5

    invoke-virtual {v7, v0}, Landroid/app/NotificationManager;->isNotificationPolicyAccessGrantedForPackage(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_18

    :cond_1
    const-string/jumbo v7, "AudioService.checkForRingerModeChange"

    const/4 v8, 0x0

    invoke-direct {p0, v6, v7, v8}, Lcom/android/server/audio/AudioService;->setRingerMode(ILjava/lang/String;Z)V

    iput p2, p0, Lcom/android/server/audio/AudioService;->mPrevVolDirection:I

    return v5

    :cond_2
    const/4 v4, 0x0

    goto :goto_0

    :pswitch_0
    const/4 v7, -0x1

    if-ne p2, v7, :cond_6

    iget-boolean v7, p0, Lcom/android/server/audio/AudioService;->mHasVibrator:Z

    if-eqz v7, :cond_5

    if-gt p3, p1, :cond_4

    mul-int/lit8 v7, p3, 0x2

    if-ge p1, v7, :cond_4

    :goto_2
    const/4 v6, 0x1

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v8

    iput-wide v8, p0, Lcom/android/server/audio/AudioService;->mLoweredFromNormalToVibrateTime:J

    :cond_3
    :goto_3
    const/4 v7, 0x0

    iput-boolean v7, p0, Lcom/android/server/audio/AudioService;->mSilentModeOff:Z

    goto :goto_1

    :cond_4
    if-ge p1, p3, :cond_3

    goto :goto_2

    :cond_5
    if-ne p1, p3, :cond_3

    const/4 v6, 0x0

    goto :goto_3

    :cond_6
    if-eqz v4, :cond_0

    const/16 v7, 0x65

    if-eq p2, v7, :cond_7

    const/16 v7, -0x64

    if-ne p2, v7, :cond_0

    :cond_7
    iget-boolean v7, p0, Lcom/android/server/audio/AudioService;->mHasVibrator:Z

    if-eqz v7, :cond_8

    const/4 v6, 0x1

    :goto_4
    const/4 v5, 0x0

    goto :goto_1

    :cond_8
    const/4 v6, 0x0

    goto :goto_4

    :pswitch_1
    iget-boolean v7, p0, Lcom/android/server/audio/AudioService;->mHasVibrator:Z

    if-nez v7, :cond_9

    const-string/jumbo v7, "AudioService"

    const-string/jumbo v8, "checkForRingerModeChange() current ringer mode is vibratebut no vibrator is present"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_9
    const/4 v7, -0x1

    if-ne p2, v7, :cond_d

    if-eqz v4, :cond_b

    mul-int/lit8 v7, p3, 0x2

    if-lt p1, v7, :cond_b

    if-eqz p4, :cond_b

    const/4 v6, 0x2

    :cond_a
    :goto_5
    and-int/lit8 v5, v5, -0x2

    goto :goto_1

    :cond_b
    iget v7, p0, Lcom/android/server/audio/AudioService;->mPrevVolDirection:I

    const/4 v8, -0x1

    if-eq v7, v8, :cond_a

    iget-object v7, p0, Lcom/android/server/audio/AudioService;->mVolumePolicy:Landroid/media/VolumePolicy;

    iget-boolean v7, v7, Landroid/media/VolumePolicy;->volumeDownToEnterSilent:Z

    if-eqz v7, :cond_c

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v8

    iget-wide v10, p0, Lcom/android/server/audio/AudioService;->mLoweredFromNormalToVibrateTime:J

    sub-long v2, v8, v10

    iget-object v7, p0, Lcom/android/server/audio/AudioService;->mVolumePolicy:Landroid/media/VolumePolicy;

    iget v7, v7, Landroid/media/VolumePolicy;->vibrateToSilentDebounce:I

    int-to-long v8, v7

    cmp-long v7, v2, v8

    if-lez v7, :cond_a

    const/4 v6, 0x0

    goto :goto_5

    :cond_c
    const/16 v5, 0x801

    goto :goto_5

    :cond_d
    const/4 v7, 0x1

    if-eq p2, v7, :cond_e

    const/16 v7, 0x65

    if-ne p2, v7, :cond_10

    :cond_e
    :goto_6
    const/4 v6, 0x2

    const/4 v7, 0x1

    if-eq p2, v7, :cond_f

    const/16 v7, 0x64

    if-ne p2, v7, :cond_a

    :cond_f
    const/4 v7, 0x1

    iput-boolean v7, p0, Lcom/android/server/audio/AudioService;->mSilentModeOff:Z

    goto :goto_5

    :cond_10
    const/16 v7, 0x64

    if-ne p2, v7, :cond_a

    goto :goto_6

    :pswitch_2
    if-eqz v4, :cond_12

    const/4 v7, -0x1

    if-ne p2, v7, :cond_12

    mul-int/lit8 v7, p3, 0x2

    if-lt p1, v7, :cond_12

    if-eqz p4, :cond_12

    const/4 v6, 0x2

    :cond_11
    :goto_7
    and-int/lit8 v5, v5, -0x2

    goto/16 :goto_1

    :cond_12
    const/4 v7, 0x1

    if-eq p2, v7, :cond_13

    const/16 v7, 0x65

    if-ne p2, v7, :cond_14

    :cond_13
    :goto_8
    iget-object v7, p0, Lcom/android/server/audio/AudioService;->mVolumePolicy:Landroid/media/VolumePolicy;

    iget-boolean v7, v7, Landroid/media/VolumePolicy;->volumeUpToExitSilent:Z

    if-nez v7, :cond_15

    const/16 v5, 0x81

    goto :goto_7

    :cond_14
    const/16 v7, 0x64

    if-ne p2, v7, :cond_11

    goto :goto_8

    :cond_15
    iget-boolean v7, p0, Lcom/android/server/audio/AudioService;->mHasVibrator:Z

    if-eqz v7, :cond_16

    const/4 v7, 0x1

    if-ne p2, v7, :cond_16

    const/4 v6, 0x1

    goto :goto_7

    :cond_16
    const/4 v6, 0x2

    const/4 v7, 0x1

    if-eq p2, v7, :cond_17

    const/16 v7, 0x64

    if-ne p2, v7, :cond_11

    :cond_17
    const/4 v7, 0x1

    iput-boolean v7, p0, Lcom/android/server/audio/AudioService;->mSilentModeOff:Z

    goto :goto_7

    :cond_18
    move/from16 v0, p6

    and-int/lit16 v7, v0, 0x1000

    if-nez v7, :cond_1

    new-instance v7, Ljava/lang/SecurityException;

    const-string/jumbo v8, "Not allowed to change Do Not Disturb state"

    invoke-direct {v7, v8}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v7

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private checkMuteAffectedStreams()V
    .locals 5

    const/4 v0, 0x0

    :goto_0
    iget-object v2, p0, Lcom/android/server/audio/AudioService;->mStreamStates:[Lcom/android/server/audio/AudioService$VolumeStreamState;

    array-length v2, v2

    if-ge v0, v2, :cond_1

    iget-object v2, p0, Lcom/android/server/audio/AudioService;->mStreamStates:[Lcom/android/server/audio/AudioService$VolumeStreamState;

    aget-object v1, v2, v0

    invoke-static {v1}, Lcom/android/server/audio/AudioService$VolumeStreamState;->-get2(Lcom/android/server/audio/AudioService$VolumeStreamState;)I

    move-result v2

    if-lez v2, :cond_0

    iget v2, p0, Lcom/android/server/audio/AudioService;->mMuteAffectedStreams:I

    invoke-static {v1}, Lcom/android/server/audio/AudioService$VolumeStreamState;->-get4(Lcom/android/server/audio/AudioService$VolumeStreamState;)I

    move-result v3

    const/4 v4, 0x1

    shl-int v3, v4, v3

    not-int v3, v3

    and-int/2addr v2, v3

    iput v2, p0, Lcom/android/server/audio/AudioService;->mMuteAffectedStreams:I

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private checkSafeMediaVolume(III)Z
    .locals 6

    const/4 v5, 0x3

    const/4 v4, 0x0

    const/4 v3, 0x1

    iget-object v2, p0, Lcom/android/server/audio/AudioService;->mSafeMediaVolumeState:Ljava/lang/Integer;

    monitor-enter v2

    :try_start_0
    invoke-direct {p0}, Lcom/android/server/audio/AudioService;->isFactoryMode()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-eqz v1, :cond_0

    monitor-exit v2

    return v3

    :cond_0
    :try_start_1
    iget-boolean v1, p0, Lcom/android/server/audio/AudioService;->mHMTDocked:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v1, :cond_1

    monitor-exit v2

    return v3

    :cond_1
    :try_start_2
    iget-object v1, p0, Lcom/android/server/audio/AudioService;->mSafeMediaVolumeState:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ne v1, v5, :cond_4

    iget-object v1, p0, Lcom/android/server/audio/AudioService;->mStreamVolumeAlias:[I

    aget v1, v1, p1

    if-ne v1, v5, :cond_4

    and-int/lit16 v1, p3, 0x18c

    if-eqz v1, :cond_4

    iget v1, p0, Lcom/android/server/audio/AudioService;->mSafeMediaVolumeIndex:I

    if-lt p2, v1, :cond_4

    iget v1, p0, Lcom/android/server/audio/AudioService;->mSafeMediaVolumeIndex:I

    if-ne p2, v1, :cond_2

    iget-object v1, p0, Lcom/android/server/audio/AudioService;->mFineMediaVolume:Lcom/android/server/audio/AudioService$FineVolumeState;

    invoke-virtual {v1, p3}, Lcom/android/server/audio/AudioService$FineVolumeState;->getIndex(I)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v1

    if-nez v1, :cond_2

    monitor-exit v2

    return v3

    :cond_2
    :try_start_3
    iget-object v1, p0, Lcom/android/server/audio/AudioService;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "power"

    invoke-virtual {v1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    invoke-virtual {v0}, Landroid/os/PowerManager;->isScreenOn()Z

    move-result v1

    if-nez v1, :cond_3

    invoke-direct {p0}, Lcom/android/server/audio/AudioService;->callLcdOn()V

    invoke-direct {p0}, Lcom/android/server/audio/AudioService;->callVibrateMsg()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :cond_3
    monitor-exit v2

    return v4

    :cond_4
    monitor-exit v2

    return v3

    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method private checkScoAudioState()V
    .locals 2

    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mBluetoothHeadsetDevice:Landroid/bluetooth/BluetoothDevice;

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/server/audio/AudioService;->mScoAudioState:I

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

    iget-object v1, p0, Lcom/android/server/audio/AudioService;->mBluetoothHeadsetDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0, v1}, Landroid/bluetooth/BluetoothHeadset;->getAudioState(Landroid/bluetooth/BluetoothDevice;)I

    move-result v0

    const/16 v1, 0xa

    if-eq v0, v1, :cond_0

    const/4 v0, 0x2

    iput v0, p0, Lcom/android/server/audio/AudioService;->mScoAudioState:I

    :cond_0
    return-void
.end method

.method private checkSendBecomingNoisyIntent(II)I
    .locals 14

    const/4 v7, 0x0

    if-nez p2, :cond_f

    iget v0, p0, Lcom/android/server/audio/AudioService;->mBecomingNoisyIntentDevices:I

    and-int/2addr v0, p1

    if-eqz v0, :cond_f

    invoke-direct {p0}, Lcom/android/server/audio/AudioService;->getCurOutDevice()I

    move-result v10

    const/4 v0, -0x1

    if-eq v10, v0, :cond_5

    const/4 v0, 0x7

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/media/AudioSystem;->isStreamActive(II)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x4

    if-eq p1, v0, :cond_0

    const/16 v0, 0x8

    if-ne p1, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    invoke-static {v0}, Landroid/media/AudioSystem;->getForceUse(I)I

    move-result v0

    const/4 v1, 0x4

    if-eq v0, v1, :cond_1

    move v10, p1

    :cond_1
    and-int v0, v10, p1

    if-nez v0, :cond_2

    and-int/lit16 v0, p1, 0x380

    if-eqz v0, :cond_5

    iget v0, p0, Lcom/android/server/audio/AudioService;->mMode:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    iget v0, p0, Lcom/android/server/audio/AudioService;->mMode:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_7

    :cond_2
    :goto_0
    iget-boolean v0, p0, Lcom/android/server/audio/AudioService;->mSplitSound:Z

    if-eqz v0, :cond_9

    iget v0, p0, Lcom/android/server/audio/AudioService;->mMode:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_3

    iget v0, p0, Lcom/android/server/audio/AudioService;->mMode:I

    invoke-static {}, Landroid/media/AudioManager;->semGetVideoCallMode()I

    move-result v1

    if-ne v0, v1, :cond_9

    :cond_3
    const/4 v0, 0x4

    if-eq p1, v0, :cond_4

    const/16 v0, 0x8

    if-ne p1, v0, :cond_8

    :cond_4
    const/4 v0, 0x1

    :goto_1
    if-nez v0, :cond_a

    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mAudioHandler:Lcom/android/server/audio/AudioService$AudioHandler;

    const/16 v1, 0xf

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move v3, p1

    invoke-static/range {v0 .. v6}, Lcom/android/server/audio/AudioService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    :goto_2
    const/16 v0, 0x400

    if-ne p1, v0, :cond_b

    invoke-direct {p0}, Lcom/android/server/audio/AudioService;->isFactoryMode()Z

    move-result v0

    if-eqz v0, :cond_b

    const-string/jumbo v0, "AudioService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "hdmi delay in Factorymode  ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    :goto_3
    sget-boolean v0, Lcom/android/server/audio/AudioService;->MULTISOUND_ENABLED:Z

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mSoundKitchen:Lcom/android/server/audio/AudioService$SoundKitchen;

    invoke-virtual {v0}, Lcom/android/server/audio/AudioService$SoundKitchen;->getUidList()[I

    move-result-object v9

    const/4 v8, 0x0

    :goto_4
    array-length v0, v9

    if-ge v8, v0, :cond_f

    aget v11, v9, v8

    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mSoundKitchen:Lcom/android/server/audio/AudioService$SoundKitchen;

    invoke-virtual {v0, v11}, Lcom/android/server/audio/AudioService$SoundKitchen;->getDevice(I)I

    move-result v0

    if-ne v0, p1, :cond_6

    invoke-direct {p0, v11}, Lcom/android/server/audio/AudioService;->sendBecomingNoisyIntent(I)V

    :cond_6
    add-int/lit8 v8, v8, 0x1

    goto :goto_4

    :cond_7
    iget v0, p0, Lcom/android/server/audio/AudioService;->mMode:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_2

    iget v0, p0, Lcom/android/server/audio/AudioService;->mMode:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_5

    goto :goto_0

    :cond_8
    const/4 v0, 0x0

    goto :goto_1

    :cond_9
    const/4 v0, 0x0

    goto :goto_1

    :cond_a
    const-string/jumbo v0, "AudioService"

    const-string/jumbo v1, "Don\'t Stop music when removing earphone in SplitSound"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_b
    const/4 v0, 0x4

    if-eq p1, v0, :cond_c

    const/16 v0, 0x8

    if-ne p1, v0, :cond_e

    :cond_c
    iget v0, p0, Lcom/android/server/audio/AudioService;->mMode:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_d

    iget v0, p0, Lcom/android/server/audio/AudioService;->mMode:I

    invoke-static {}, Landroid/media/AudioManager;->semGetVideoCallMode()I

    move-result v1

    if-ne v0, v1, :cond_e

    :cond_d
    const/4 v7, 0x0

    const-string/jumbo v0, "AudioService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "in call wired headset/headphone delay ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    :cond_e
    const/16 v7, 0x1f4

    goto :goto_3

    :cond_f
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mAudioHandler:Lcom/android/server/audio/AudioService$AudioHandler;

    const/16 v1, 0x65

    invoke-virtual {v0, v1}, Lcom/android/server/audio/AudioService$AudioHandler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_10

    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mAudioHandler:Lcom/android/server/audio/AudioService$AudioHandler;

    const/16 v1, 0x66

    invoke-virtual {v0, v1}, Lcom/android/server/audio/AudioService$AudioHandler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_10

    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mAudioHandler:Lcom/android/server/audio/AudioService$AudioHandler;

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Lcom/android/server/audio/AudioService$AudioHandler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_12

    :cond_10
    sget-object v1, Lcom/android/server/audio/AudioService;->mLastDeviceConnectMsgTime:Ljava/lang/Long;

    monitor-enter v1

    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v12

    sget-object v0, Lcom/android/server/audio/AudioService;->mLastDeviceConnectMsgTime:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    cmp-long v0, v2, v12

    if-lez v0, :cond_11

    sget-object v0, Lcom/android/server/audio/AudioService;->mLastDeviceConnectMsgTime:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v2

    sub-long/2addr v2, v12

    long-to-int v0, v2

    add-int/lit8 v7, v0, 0x1e

    :cond_11
    monitor-exit v1

    :cond_12
    return v7

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private clearSoundAssistantSettings()V
    .locals 8

    const/4 v7, -0x2

    const/4 v6, 0x0

    iput-boolean v6, p0, Lcom/android/server/audio/AudioService;->mAdjustMediaVolumeOnly:Z

    iget-object v3, p0, Lcom/android/server/audio/AudioService;->mSettingDBHelper:Lcom/android/server/audio/AudioService$AudioSettingsDBHelper;

    const-string/jumbo v4, "adjust_media_volume_only"

    invoke-virtual {v3, v4}, Lcom/android/server/audio/AudioService$AudioSettingsDBHelper;->removeValue(Ljava/lang/String;)I

    iput-boolean v6, p0, Lcom/android/server/audio/AudioService;->mEnableSoundAssistant:Z

    iget-object v3, p0, Lcom/android/server/audio/AudioService;->mSettingDBHelper:Lcom/android/server/audio/AudioService$AudioSettingsDBHelper;

    const-string/jumbo v4, "enable_floating_button"

    invoke-virtual {v3, v4}, Lcom/android/server/audio/AudioService$AudioSettingsDBHelper;->removeValue(Ljava/lang/String;)I

    const/4 v1, 0x0

    :goto_0
    iget-object v3, p0, Lcom/android/server/audio/AudioService;->mAppVolumeFromSoundAssistant:Landroid/util/SparseIntArray;

    invoke-virtual {v3}, Landroid/util/SparseIntArray;->size()I

    move-result v3

    if-ge v1, v3, :cond_0

    iget-object v3, p0, Lcom/android/server/audio/AudioService;->mAppVolumeFromSoundAssistant:Landroid/util/SparseIntArray;

    invoke-virtual {v3, v1}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v0

    iget-object v3, p0, Lcom/android/server/audio/AudioService;->mSoundKitchen:Lcom/android/server/audio/AudioService$SoundKitchen;

    const/16 v4, 0x64

    invoke-virtual {v3, v0, v4}, Lcom/android/server/audio/AudioService$SoundKitchen;->setVolume(II)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    iget-object v3, p0, Lcom/android/server/audio/AudioService;->mAppVolumeFromSoundAssistant:Landroid/util/SparseIntArray;

    invoke-virtual {v3}, Landroid/util/SparseIntArray;->clear()V

    iget-object v3, p0, Lcom/android/server/audio/AudioService;->mSettingDBHelper:Lcom/android/server/audio/AudioService$AudioSettingsDBHelper;

    const-string/jumbo v4, "mono_audio_db"

    invoke-virtual {v3, v4}, Lcom/android/server/audio/AudioService$AudioSettingsDBHelper;->removeValue(Ljava/lang/String;)I

    move-result v2

    if-lez v2, :cond_1

    iput v6, p0, Lcom/android/server/audio/AudioService;->mMonoMode:I

    iget-object v3, p0, Lcom/android/server/audio/AudioService;->mContentResolver:Landroid/content/ContentResolver;

    const-string/jumbo v4, "mono_audio_db"

    iget v5, p0, Lcom/android/server/audio/AudioService;->mMonoMode:I

    invoke-static {v3, v4, v5, v7}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    iget v3, p0, Lcom/android/server/audio/AudioService;->mMonoMode:I

    invoke-direct {p0, v3}, Lcom/android/server/audio/AudioService;->setMonoMode(I)V

    :cond_1
    iget-object v3, p0, Lcom/android/server/audio/AudioService;->mSettingDBHelper:Lcom/android/server/audio/AudioService$AudioSettingsDBHelper;

    const-string/jumbo v4, "sound_balance"

    invoke-virtual {v3, v4}, Lcom/android/server/audio/AudioService$AudioSettingsDBHelper;->removeValue(Ljava/lang/String;)I

    move-result v2

    if-lez v2, :cond_2

    const/16 v3, 0x32

    iput v3, p0, Lcom/android/server/audio/AudioService;->mSoundBalance:I

    iget-object v3, p0, Lcom/android/server/audio/AudioService;->mContentResolver:Landroid/content/ContentResolver;

    const-string/jumbo v4, "sound_balance"

    iget v5, p0, Lcom/android/server/audio/AudioService;->mSoundBalance:I

    invoke-static {v3, v4, v5, v7}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "sound_balance="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/server/audio/AudioService;->mSoundBalance:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    :cond_2
    iget-object v3, p0, Lcom/android/server/audio/AudioService;->mSettingDBHelper:Lcom/android/server/audio/AudioService$AudioSettingsDBHelper;

    const-string/jumbo v4, "all_sound_off"

    invoke-virtual {v3, v4}, Lcom/android/server/audio/AudioService$AudioSettingsDBHelper;->removeValue(Ljava/lang/String;)I

    move-result v2

    if-lez v2, :cond_3

    iput v6, p0, Lcom/android/server/audio/AudioService;->mAllSoundMute:I

    iget-object v3, p0, Lcom/android/server/audio/AudioService;->mContentResolver:Landroid/content/ContentResolver;

    const-string/jumbo v4, "all_sound_off"

    iget v5, p0, Lcom/android/server/audio/AudioService;->mAllSoundMute:I

    invoke-static {v3, v4, v5, v7}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    invoke-direct {p0}, Lcom/android/server/audio/AudioService;->setAllSoundMute()V

    :cond_3
    return-void
.end method

.method private configureHdmiPlugIntent(Landroid/content/Intent;I)V
    .locals 20

    const-string/jumbo v17, "android.media.action.HDMI_AUDIO_PLUG"

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v17, "android.media.extra.AUDIO_PLUG_STATE"

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    move/from16 v2, p2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const/16 v17, 0x1

    move/from16 v0, p2

    move/from16 v1, v17

    if-ne v0, v1, :cond_8

    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    const/16 v17, 0x1

    move/from16 v0, v17

    new-array v14, v0, [I

    invoke-static {v15, v14}, Landroid/media/AudioSystem;->listAudioPorts(Ljava/util/ArrayList;[I)I

    move-result v16

    if-nez v16, :cond_8

    invoke-interface {v15}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :cond_0
    :goto_0
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_8

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/media/AudioPort;

    instance-of v0, v12, Landroid/media/AudioDevicePort;

    move/from16 v17, v0

    if-eqz v17, :cond_0

    move-object v4, v12

    check-cast v4, Landroid/media/AudioDevicePort;

    invoke-virtual {v4}, Landroid/media/AudioDevicePort;->type()I

    move-result v17

    const/16 v18, 0x400

    move/from16 v0, v17

    move/from16 v1, v18

    if-eq v0, v1, :cond_1

    invoke-virtual {v4}, Landroid/media/AudioDevicePort;->type()I

    move-result v17

    const/high16 v18, 0x40000

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_0

    :cond_1
    invoke-virtual {v4}, Landroid/media/AudioDevicePort;->formats()[I

    move-result-object v17

    invoke-static/range {v17 .. v17}, Landroid/media/AudioFormat;->filterPublicFormats([I)[I

    move-result-object v8

    array-length v0, v8

    move/from16 v17, v0

    if-lez v17, :cond_5

    new-instance v6, Ljava/util/ArrayList;

    const/16 v17, 0x1

    move/from16 v0, v17

    invoke-direct {v6, v0}, Ljava/util/ArrayList;-><init>(I)V

    const/16 v17, 0x0

    array-length v0, v8

    move/from16 v18, v0

    :goto_1
    move/from16 v0, v17

    move/from16 v1, v18

    if-ge v0, v1, :cond_3

    aget v7, v8, v17

    if-eqz v7, :cond_2

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    add-int/lit8 v17, v17, 0x1

    goto :goto_1

    :cond_3
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v17

    move/from16 v0, v17

    new-array v5, v0, [I

    const/4 v9, 0x0

    :goto_2
    array-length v0, v5

    move/from16 v17, v0

    move/from16 v0, v17

    if-ge v9, v0, :cond_4

    invoke-virtual {v6, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/lang/Integer;

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Integer;->intValue()I

    move-result v17

    aput v17, v5, v9

    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    :cond_4
    const-string/jumbo v17, "android.media.extra.ENCODINGS"

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[I)Landroid/content/Intent;

    :cond_5
    const/4 v11, 0x0

    invoke-virtual {v4}, Landroid/media/AudioDevicePort;->channelMasks()[I

    move-result-object v18

    const/16 v17, 0x0

    move-object/from16 v0, v18

    array-length v0, v0

    move/from16 v19, v0

    :goto_3
    move/from16 v0, v17

    move/from16 v1, v19

    if-ge v0, v1, :cond_7

    aget v10, v18, v17

    invoke-static {v10}, Landroid/media/AudioFormat;->channelCountFromOutChannelMask(I)I

    move-result v3

    if-le v3, v11, :cond_6

    move v11, v3

    :cond_6
    add-int/lit8 v17, v17, 0x1

    goto :goto_3

    :cond_7
    const-string/jumbo v17, "android.media.extra.MAX_CHANNEL_COUNT"

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto/16 :goto_0

    :cond_8
    return-void
.end method

.method private createAudioSystemThread()V
    .locals 1

    new-instance v0, Lcom/android/server/audio/AudioService$AudioSystemThread;

    invoke-direct {v0, p0}, Lcom/android/server/audio/AudioService$AudioSystemThread;-><init>(Lcom/android/server/audio/AudioService;)V

    iput-object v0, p0, Lcom/android/server/audio/AudioService;->mAudioSystemThread:Lcom/android/server/audio/AudioService$AudioSystemThread;

    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mAudioSystemThread:Lcom/android/server/audio/AudioService$AudioSystemThread;

    invoke-virtual {v0}, Lcom/android/server/audio/AudioService$AudioSystemThread;->start()V

    invoke-direct {p0}, Lcom/android/server/audio/AudioService;->waitForAudioHandlerCreation()V

    return-void
.end method

.method private createStreamStates()V
    .locals 6

    invoke-static {}, Landroid/media/AudioSystem;->getNumStreamTypes()I

    move-result v1

    new-array v2, v1, [Lcom/android/server/audio/AudioService$VolumeStreamState;

    iput-object v2, p0, Lcom/android/server/audio/AudioService;->mStreamStates:[Lcom/android/server/audio/AudioService$VolumeStreamState;

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_0

    new-instance v3, Lcom/android/server/audio/AudioService$VolumeStreamState;

    sget-object v4, Landroid/provider/Settings$System;->VOLUME_SETTINGS:[Ljava/lang/String;

    iget-object v5, p0, Lcom/android/server/audio/AudioService;->mStreamVolumeAlias:[I

    aget v5, v5, v0

    aget-object v4, v4, v5

    const/4 v5, 0x0

    invoke-direct {v3, p0, v4, v0, v5}, Lcom/android/server/audio/AudioService$VolumeStreamState;-><init>(Lcom/android/server/audio/AudioService;Ljava/lang/String;ILcom/android/server/audio/AudioService$VolumeStreamState;)V

    aput-object v3, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/android/server/audio/AudioService;->checkAllFixedVolumeDevices()V

    invoke-direct {p0}, Lcom/android/server/audio/AudioService;->checkAllAliasStreamVolumes()V

    invoke-direct {p0}, Lcom/android/server/audio/AudioService;->checkMuteAffectedStreams()V

    return-void
.end method

.method private discardRmtSbmxFullVolDeathHandlerFor(Landroid/os/IBinder;)Z
    .locals 3

    iget-object v2, p0, Lcom/android/server/audio/AudioService;->mRmtSbmxFullVolDeathHandlers:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/audio/AudioService$RmtSbmxFullVolDeathHandler;

    invoke-virtual {v0, p1}, Lcom/android/server/audio/AudioService$RmtSbmxFullVolDeathHandler;->isHandlerFor(Landroid/os/IBinder;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Lcom/android/server/audio/AudioService$RmtSbmxFullVolDeathHandler;->forget()V

    iget-object v2, p0, Lcom/android/server/audio/AudioService;->mRmtSbmxFullVolDeathHandlers:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    const/4 v2, 0x1

    return v2

    :cond_1
    const/4 v2, 0x0

    return v2
.end method

.method private disconnectBluetoothSco(I)V
    .locals 8

    const/4 v2, 0x4

    const/4 v1, 0x2

    iget-object v7, p0, Lcom/android/server/audio/AudioService;->mScoClients:Ljava/util/ArrayList;

    monitor-enter v7

    :try_start_0
    invoke-direct {p0}, Lcom/android/server/audio/AudioService;->checkScoAudioState()V

    iget v0, p0, Lcom/android/server/audio/AudioService;->mScoAudioState:I

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/android/server/audio/AudioService;->mScoAudioState:I

    if-ne v0, v2, :cond_3

    :cond_0
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mBluetoothHeadsetDevice:Landroid/bluetooth/BluetoothDevice;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

    iget-object v1, p0, Lcom/android/server/audio/AudioService;->mBluetoothHeadsetDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0, v1}, Landroid/bluetooth/BluetoothHeadset;->stopVoiceRecognition(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mAudioHandler:Lcom/android/server/audio/AudioService$AudioHandler;

    const/16 v1, 0x9

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static/range {v0 .. v6}, Lcom/android/server/audio/AudioService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    :goto_0
    monitor-exit v7

    return-void

    :cond_2
    :try_start_1
    iget v0, p0, Lcom/android/server/audio/AudioService;->mScoAudioState:I

    if-ne v0, v1, :cond_1

    invoke-direct {p0}, Lcom/android/server/audio/AudioService;->getBluetoothHeadset()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x4

    iput v0, p0, Lcom/android/server/audio/AudioService;->mScoAudioState:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v7

    throw v0

    :cond_3
    const/4 v0, 0x1

    :try_start_2
    invoke-virtual {p0, p1, v0}, Lcom/android/server/audio/AudioService;->clearAllScoClients(IZ)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method private dumpAudioPolicies(Ljava/io/PrintWriter;)V
    .locals 4

    const-string/jumbo v2, "\nAudio policies:"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/server/audio/AudioService;->mAudioPolicies:Ljava/util/HashMap;

    monitor-enter v3

    :try_start_0
    iget-object v2, p0, Lcom/android/server/audio/AudioService;->mAudioPolicies:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/audio/AudioService$AudioPolicyProxy;

    invoke-virtual {v0}, Lcom/android/server/audio/AudioService$AudioPolicyProxy;->toLogFriendlyString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2

    :cond_0
    monitor-exit v3

    return-void
.end method

.method private dumpRingerMode(Ljava/io/PrintWriter;)V
    .locals 4

    const-string/jumbo v1, "\nRinger mode: "

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "- mode (internal) = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/android/server/audio/AudioService;->RINGER_MODE_NAMES:[Ljava/lang/String;

    iget v3, p0, Lcom/android/server/audio/AudioService;->mRingerMode:I

    aget-object v2, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "- mode (external) = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/android/server/audio/AudioService;->RINGER_MODE_NAMES:[Ljava/lang/String;

    iget v3, p0, Lcom/android/server/audio/AudioService;->mRingerModeExternal:I

    aget-object v2, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string/jumbo v1, "affected"

    iget v2, p0, Lcom/android/server/audio/AudioService;->mRingerModeAffectedStreams:I

    invoke-direct {p0, p1, v1, v2}, Lcom/android/server/audio/AudioService;->dumpRingerModeStreams(Ljava/io/PrintWriter;Ljava/lang/String;I)V

    const-string/jumbo v1, "muted"

    iget v2, p0, Lcom/android/server/audio/AudioService;->mRingerModeMutedStreams:I

    invoke-direct {p0, p1, v1, v2}, Lcom/android/server/audio/AudioService;->dumpRingerModeStreams(Ljava/io/PrintWriter;Ljava/lang/String;I)V

    const-string/jumbo v1, "- delegate = "

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/audio/AudioService;->mRingerModeDelegate:Landroid/media/AudioManagerInternal$RingerModeDelegate;

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    const/4 v0, 0x0

    :goto_0
    sget-object v1, Lcom/android/server/audio/AudioService;->RINGER_MODE_NAMES:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lcom/android/server/audio/AudioService;->mCallingRingerMode:[Ljava/lang/String;

    aget-object v1, v1, v0

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "- "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/android/server/audio/AudioService;->RINGER_MODE_NAMES:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " MODE : Caller = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/audio/AudioService;->mCallingRingerMode:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", IsExternal = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/audio/AudioService;->mIsExternalRingerMode:[Z

    aget-boolean v2, v2, v0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private dumpRingerModeStreams(Ljava/io/PrintWriter;Ljava/lang/String;I)V
    .locals 5

    const/16 v4, 0x2c

    const-string/jumbo v3, "- ringer mode "

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v3, " streams = 0x"

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-static {p3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    if-eqz p3, :cond_5

    const-string/jumbo v3, " ("

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const/4 v0, 0x1

    const/4 v1, 0x0

    :goto_0
    sget-object v3, Landroid/media/AudioSystem;->STREAM_NAMES:[Ljava/lang/String;

    array-length v3, v3

    if-ge v1, v3, :cond_2

    const/4 v3, 0x1

    shl-int v2, v3, v1

    and-int v3, p3, v2

    if-eqz v3, :cond_1

    if-nez v0, :cond_0

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(C)V

    :cond_0
    sget-object v3, Landroid/media/AudioSystem;->STREAM_NAMES:[Ljava/lang/String;

    aget-object v3, v3, v1

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    not-int v3, v2

    and-int/2addr p3, v3

    const/4 v0, 0x0

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    if-eqz p3, :cond_4

    if-nez v0, :cond_3

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(C)V

    :cond_3
    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->print(I)V

    :cond_4
    const/16 v3, 0x29

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(C)V

    :cond_5
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    return-void
.end method

.method private dumpScoClients(Ljava/io/PrintWriter;)V
    .locals 6

    const-string/jumbo v3, "\nSco Client list entries: "

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/android/server/audio/AudioService;->mScoClients:Ljava/util/ArrayList;

    monitor-enter v4

    :try_start_0
    iget-object v3, p0, Lcom/android/server/audio/AudioService;->mScoClients:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v2, :cond_0

    iget-object v3, p0, Lcom/android/server/audio/AudioService;->mScoClients:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/audio/AudioService$ScoClient;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "\n  pid: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lcom/android/server/audio/AudioService$ScoClient;->getPid()I

    move-result v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    monitor-exit v4

    return-void

    :catchall_0
    move-exception v3

    monitor-exit v4

    throw v3
.end method

.method private dumpStreamStates(Ljava/io/PrintWriter;)V
    .locals 8

    const/4 v7, 0x1

    const/4 v6, 0x0

    const-string/jumbo v4, "\nStream volumes (device: index)"

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-static {}, Landroid/media/AudioSystem;->getNumStreamTypes()I

    move-result v3

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v3, :cond_0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "- "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Landroid/media/AudioSystem;->STREAM_NAMES:[Ljava/lang/String;

    aget-object v5, v5, v0

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ":"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/android/server/audio/AudioService;->mStreamStates:[Lcom/android/server/audio/AudioService$VolumeStreamState;

    aget-object v4, v4, v0

    invoke-static {v4, p1}, Lcom/android/server/audio/AudioService$VolumeStreamState;->-wrap0(Lcom/android/server/audio/AudioService$VolumeStreamState;Ljava/io/PrintWriter;)V

    const-string/jumbo v4, ""

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget-object v4, p0, Lcom/android/server/audio/AudioService;->mFineMediaVolume:Lcom/android/server/audio/AudioService$FineVolumeState;

    invoke-virtual {v4, p1}, Lcom/android/server/audio/AudioService$FineVolumeState;->dump(Ljava/io/PrintWriter;)V

    const-string/jumbo v4, "\n- mute affected streams = 0x"

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v4, p0, Lcom/android/server/audio/AudioService;->mMuteAffectedStreams:I

    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string/jumbo v4, "\nMute calling pid\'s"

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 v0, 0x0

    :goto_1
    if-ge v0, v3, :cond_1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "- "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Landroid/media/AudioSystem;->STREAM_NAMES:[Ljava/lang/String;

    aget-object v5, v5, v0

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/audio/AudioService;->mStreamMutedump:[I

    aget v5, v5, v0

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ", "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/audio/AudioService;->mStreamMutePackagedump:[Ljava/lang/String;

    aget-object v5, v5, v0

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    const-string/jumbo v4, "\nUnMute calling pid\'s"

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 v0, 0x0

    :goto_2
    if-ge v0, v3, :cond_2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "- "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Landroid/media/AudioSystem;->STREAM_NAMES:[Ljava/lang/String;

    aget-object v5, v5, v0

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/audio/AudioService;->mStreamUnMutedump:[I

    aget v5, v5, v0

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ", "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/audio/AudioService;->mStreamUnMutePackagedump:[Ljava/lang/String;

    aget-object v5, v5, v0

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_2
    const-string/jumbo v4, "\nToggleMute calling pid\'s"

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 v0, 0x0

    :goto_3
    if-ge v0, v3, :cond_3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "- "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Landroid/media/AudioSystem;->STREAM_NAMES:[Ljava/lang/String;

    aget-object v5, v5, v0

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/audio/AudioService;->mStreamToggleMutedump:[I

    aget v5, v5, v0

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ", "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/audio/AudioService;->mStreamToggleMutePackagedump:[Ljava/lang/String;

    aget-object v5, v5, v0

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_3
    const-string/jumbo v4, "\nVolume change calling pid\'s, setStreamVolume"

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 v0, 0x0

    :goto_4
    if-ge v0, v3, :cond_7

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "- "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Landroid/media/AudioSystem;->STREAM_NAMES:[Ljava/lang/String;

    aget-object v5, v5, v0

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/android/server/audio/AudioService;->indexOfsetVolume:[I

    aget v1, v4, v0

    const/4 v2, 0x0

    :goto_5
    const/4 v4, 0x5

    if-ge v2, v4, :cond_5

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, " INDEX : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/audio/AudioService;->pIdOfsetVolumeIndex:[[I

    aget-object v5, v5, v0

    aget v5, v5, v1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " by : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/audio/AudioService;->pIdOfsetVolume:[[I

    aget-object v5, v5, v0

    aget v5, v5, v1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ", "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/audio/AudioService;->uIdOfsetVolume:[[I

    aget-object v5, v5, v0

    aget v5, v5, v1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    add-int/lit8 v1, v1, -0x1

    if-gez v1, :cond_4

    const/4 v1, 0x4

    :cond_4
    iget-object v4, p0, Lcom/android/server/audio/AudioService;->pIdOfsetVolumeIndex:[[I

    aget-object v4, v4, v0

    aget v4, v4, v1

    if-nez v4, :cond_6

    :cond_5
    const-string/jumbo v4, ""

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    :cond_6
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    :cond_7
    const-string/jumbo v4, "\nVolume change calling pid\'s, adjustStreamVolume"

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 v0, 0x0

    :goto_6
    if-ge v0, v3, :cond_8

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "- "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Landroid/media/AudioSystem;->STREAM_NAMES:[Ljava/lang/String;

    aget-object v5, v5, v0

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " INDEX : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/audio/AudioService;->pIdOfadjustVolumeIndex:[I

    aget v5, v5, v0

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " by : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/audio/AudioService;->pIdOfadjustVolume:[I

    aget v5, v5, v0

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ", "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/audio/AudioService;->uIdOfadjustVolume:[I

    aget v5, v5, v0

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    :cond_8
    const-string/jumbo v4, "\nBT A2DP on/off calling pid\'s"

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "- A2DP NONE is called by PID: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/audio/AudioService;->mBluetoothA2dpOndump:[I

    aget v5, v5, v6

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "- NO_A2DP is called by PID: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/audio/AudioService;->mBluetoothA2dpOndump:[I

    aget v5, v5, v7

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string/jumbo v4, "\nBT SCO on/off calling pid\'s"

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "- BT SCO on is called by PID: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/audio/AudioService;->mBluetoothScoOndump:[I

    aget v5, v5, v6

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "- BT SCO off is called by PID: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/audio/AudioService;->mBluetoothScoOndump:[I

    aget v5, v5, v7

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string/jumbo v4, "\nSpeaker on/off calling pid\'s"

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "- Speaker on is called by PID: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/audio/AudioService;->mSpeakerOndump:[I

    aget v5, v5, v6

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "- Speaker off is called by PID: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/audio/AudioService;->mSpeakerOndump:[I

    aget v5, v5, v7

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method private enforceSafeMediaVolume(Ljava/lang/String;)V
    .locals 11

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mStreamStates:[Lcom/android/server/audio/AudioService$VolumeStreamState;

    const/4 v2, 0x3

    aget-object v5, v0, v2

    const/16 v7, 0x18c

    const/4 v8, 0x0

    move v9, v8

    :goto_0
    if-eqz v7, :cond_2

    add-int/lit8 v8, v9, 0x1

    const/4 v0, 0x1

    shl-int v3, v0, v9

    and-int v0, v3, v7

    if-nez v0, :cond_0

    move v9, v8

    goto :goto_0

    :cond_0
    invoke-virtual {v5, v3}, Lcom/android/server/audio/AudioService$VolumeStreamState;->getIndex(I)I

    move-result v10

    iget v0, p0, Lcom/android/server/audio/AudioService;->mSafeMediaVolumeIndex:I

    if-le v10, v0, :cond_1

    iget v0, p0, Lcom/android/server/audio/AudioService;->mSafeMediaVolumeIndex:I

    invoke-virtual {v5, v0, v3, p1}, Lcom/android/server/audio/AudioService$VolumeStreamState;->setIndex(IILjava/lang/String;)Z

    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mFineMediaVolume:Lcom/android/server/audio/AudioService$FineVolumeState;

    invoke-virtual {v0, v1, v3}, Lcom/android/server/audio/AudioService$FineVolumeState;->setIndex(II)Z

    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mAudioHandler:Lcom/android/server/audio/AudioService$AudioHandler;

    const/4 v2, 0x2

    move v4, v1

    move v6, v1

    invoke-static/range {v0 .. v6}, Lcom/android/server/audio/AudioService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    :cond_1
    not-int v0, v3

    and-int/2addr v7, v0

    move v9, v8

    goto :goto_0

    :cond_2
    return-void
.end method

.method private enforceVolumeController(Ljava/lang/String;)V
    .locals 4

    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mControllerService:Lcom/android/server/audio/AudioService$ControllerService;

    invoke-static {v0}, Lcom/android/server/audio/AudioService$ControllerService;->-get0(Lcom/android/server/audio/AudioService$ControllerService;)I

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    iget-object v1, p0, Lcom/android/server/audio/AudioService;->mControllerService:Lcom/android/server/audio/AudioService$ControllerService;

    invoke-static {v1}, Lcom/android/server/audio/AudioService$ControllerService;->-get0(Lcom/android/server/audio/AudioService$ControllerService;)I

    move-result v1

    if-ne v0, v1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "android.permission.STATUS_BAR_SERVICE"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Only SystemUI can "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private ensureValidDirection(I)V
    .locals 3

    sparse-switch p1, :sswitch_data_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Bad direction "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :sswitch_0
    return-void

    :sswitch_data_0
    .sparse-switch
        -0x64 -> :sswitch_0
        -0x1 -> :sswitch_0
        0x0 -> :sswitch_0
        0x1 -> :sswitch_0
        0x64 -> :sswitch_0
        0x65 -> :sswitch_0
    .end sparse-switch
.end method

.method private ensureValidRingerMode(I)V
    .locals 3

    invoke-virtual {p0, p1}, Lcom/android/server/audio/AudioService;->isValidRingerMode(I)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Bad ringer mode "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    return-void
.end method

.method private ensureValidStreamType(I)V
    .locals 3

    if-ltz p1, :cond_0

    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mStreamStates:[Lcom/android/server/audio/AudioService$VolumeStreamState;

    array-length v0, v0

    if-lt p1, v0, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Bad stream type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    return-void
.end method

.method private fromVolumeKey(Ljava/lang/String;)Z
    .locals 1

    const-string/jumbo v0, "FINE_VOLUME"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "com.android.settings"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "com.android.systemui"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method private getActiveStreamCount()I
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    invoke-static {}, Landroid/media/AudioSystem;->getNumStreamTypes()I

    move-result v2

    if-ge v1, v2, :cond_1

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/media/AudioSystem;->isStreamActive(II)Z

    move-result v2

    if-eqz v2, :cond_0

    add-int/lit8 v0, v0, 0x1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method

.method private getActiveStreams()I
    .locals 6

    const-string/jumbo v3, "audioParam;activeStream"

    invoke-static {v3}, Landroid/media/AudioSystem;->getParameters(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v0, 0x0

    :try_start_0
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    const-string/jumbo v3, "AudioService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "active stream is 0x"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v1

    const-string/jumbo v3, "AudioService"

    const-string/jumbo v4, "Can\'t get active stream"

    invoke-static {v3, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const v3, 0x8000

    return v3
.end method

.method private getAddressForDevice(I)Ljava/lang/String;
    .locals 9

    const-string/jumbo v1, ""

    invoke-static {p1}, Landroid/media/AudioDeviceInfo;->convertInternalDeviceToDeviceType(I)I

    move-result v7

    const/16 v8, 0x8

    if-ne v7, v8, :cond_0

    iget-object v7, p0, Lcom/android/server/audio/AudioService;->mA2dp:Landroid/bluetooth/BluetoothA2dp;

    if-eqz v7, :cond_0

    iget-object v7, p0, Lcom/android/server/audio/AudioService;->mA2dp:Landroid/bluetooth/BluetoothA2dp;

    invoke-virtual {v7}, Landroid/bluetooth/BluetoothA2dp;->semGetActiveStreamDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v1

    return-object v1

    :cond_0
    invoke-static {p1}, Landroid/media/AudioDeviceInfo;->convertInternalDeviceToDeviceType(I)I

    move-result v7

    const/4 v8, 0x7

    if-ne v7, v8, :cond_2

    iget-object v7, p0, Lcom/android/server/audio/AudioService;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

    if-eqz v7, :cond_2

    iget-object v7, p0, Lcom/android/server/audio/AudioService;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

    invoke-virtual {v7}, Landroid/bluetooth/BluetoothHeadset;->getConnectedDevices()Ljava/util/List;

    move-result-object v4

    if-eqz v4, :cond_2

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/bluetooth/BluetoothDevice;

    iget-object v7, p0, Lcom/android/server/audio/AudioService;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

    invoke-virtual {v7, v2}, Landroid/bluetooth/BluetoothHeadset;->isAudioConnected(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v7

    return-object v7

    :cond_2
    const v7, 0x8000

    if-ne p1, v7, :cond_3

    const-string/jumbo v7, "0"

    invoke-direct {p0, p1, v7}, Lcom/android/server/audio/AudioService;->makeDeviceListKey(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iget-object v7, p0, Lcom/android/server/audio/AudioService;->mConnectedDevices:Landroid/util/ArrayMap;

    invoke-virtual {v7, v5}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/audio/AudioService$DeviceListSpec;

    if-eqz v6, :cond_3

    const-string/jumbo v7, "0"

    return-object v7

    :cond_3
    const-string/jumbo v7, ""

    invoke-direct {p0, p1, v7}, Lcom/android/server/audio/AudioService;->makeDeviceListKey(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iget-object v7, p0, Lcom/android/server/audio/AudioService;->mConnectedDevices:Landroid/util/ArrayMap;

    invoke-virtual {v7, v5}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/audio/AudioService$DeviceListSpec;

    if-eqz v6, :cond_4

    iget-object v1, v6, Lcom/android/server/audio/AudioService$DeviceListSpec;->mDeviceAddress:Ljava/lang/String;

    :cond_4
    return-object v1
.end method

.method private getAppName(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    :try_start_0
    iget-object v2, p0, Lcom/android/server/audio/AudioService;->mPackageManager:Landroid/content/pm/PackageManager;

    const/4 v3, 0x0

    invoke-virtual {v2, p1, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/audio/AudioService;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v2, v1}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    return-object v2

    :catch_0
    move-exception v0

    const-string/jumbo v2, "AudioService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "getPackageNameFromUid, cannot find name of "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x0

    return-object v2
.end method

.method private getAudioCoreBigdata(Ljava/util/ArrayList;Ljava/util/ArrayList;)Ljava/lang/String;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    const/4 v3, 0x0

    :try_start_0
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v2, 0x0

    :goto_0
    :try_start_1
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v2, v5, :cond_0

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    move-object v3, v4

    :goto_1
    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v5, "\\{"

    const-string/jumbo v6, ""

    invoke-virtual {v0, v5, v6}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, "\\}"

    const-string/jumbo v7, ""

    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v1

    :goto_2
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_1

    :catch_1
    move-exception v1

    move-object v3, v4

    goto :goto_2
.end method

.method private getAvailableDeviceMaskForQuickSoundPath()I
    .locals 9

    const/high16 v8, 0x4000000

    const/4 v7, 0x1

    const v6, 0x5fffffff

    const/4 v0, 0x0

    iget-object v4, p0, Lcom/android/server/audio/AudioService;->mConnectedDevices:Landroid/util/ArrayMap;

    monitor-enter v4

    const/high16 v3, 0x4000000

    :try_start_0
    invoke-direct {p0, v3}, Lcom/android/server/audio/AudioService;->checkDeviceConnected(I)Z

    move-result v3

    if-eqz v3, :cond_0

    const v0, 0x5fffffff

    :cond_0
    const/high16 v3, -0x7ffe0000

    invoke-direct {p0, v3}, Lcom/android/server/audio/AudioService;->checkDeviceConnected(I)Z

    move-result v3

    if-eqz v3, :cond_1

    or-int/lit16 v0, v0, 0x380

    :cond_1
    const/4 v3, 0x0

    invoke-static {v3}, Landroid/media/AudioSystem;->getForceUse(I)I

    move-result v3

    const/4 v5, 0x3

    if-ne v3, v5, :cond_2

    or-int/2addr v0, v6

    :cond_2
    const v3, 0x8000

    invoke-direct {p0, v3}, Lcom/android/server/audio/AudioService;->checkDeviceConnected(I)Z

    move-result v3

    if-eqz v3, :cond_3

    const/high16 v3, 0x2000000

    invoke-direct {p0, v3}, Lcom/android/server/audio/AudioService;->checkDeviceConnected(I)Z

    move-result v3

    if-eqz v3, :cond_6

    iget-object v3, p0, Lcom/android/server/audio/AudioService;->mContext:Landroid/content/Context;

    const-string/jumbo v5, "display"

    invoke-virtual {v3, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/display/DisplayManager;

    invoke-virtual {v1}, Landroid/hardware/display/DisplayManager;->semGetActiveDlnaState()I

    move-result v3

    if-ne v3, v7, :cond_3

    or-int/2addr v0, v6

    :cond_3
    :goto_0
    const/16 v3, 0xa

    const/4 v5, 0x0

    invoke-static {v3, v5}, Landroid/media/AudioSystem;->isStreamActive(II)Z

    move-result v3

    if-eqz v3, :cond_4

    or-int/2addr v0, v6

    :cond_4
    const/4 v3, 0x1

    invoke-static {v3}, Landroid/media/AudioSystem;->getForceUse(I)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    const/16 v5, 0x2711

    if-ne v3, v5, :cond_5

    or-int/2addr v0, v6

    :cond_5
    monitor-exit v4

    or-int v3, v8, v0

    not-int v3, v3

    and-int v2, v6, v3

    const-string/jumbo v3, "AudioService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Quick sound path is available with bit mask ==> 0x"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_6
    or-int/2addr v0, v6

    goto :goto_0

    :catchall_0
    move-exception v3

    monitor-exit v4

    throw v3
.end method

.method private getBluetoothHeadset()Z
    .locals 9

    const/4 v5, 0x0

    const/4 v2, 0x0

    const/4 v8, 0x0

    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v7

    if-eqz v7, :cond_0

    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/audio/AudioService;->mBluetoothProfileServiceListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;

    const/4 v3, 0x1

    invoke-virtual {v7, v0, v1, v3}, Landroid/bluetooth/BluetoothAdapter;->getProfileProxy(Landroid/content/Context;Landroid/bluetooth/BluetoothProfile$ServiceListener;I)Z

    move-result v8

    :cond_0
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mAudioHandler:Lcom/android/server/audio/AudioService$AudioHandler;

    if-eqz v8, :cond_1

    const/16 v6, 0xbb8

    :goto_0
    const/16 v1, 0x9

    move v3, v2

    move v4, v2

    invoke-static/range {v0 .. v6}, Lcom/android/server/audio/AudioService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    return v8

    :cond_1
    move v6, v2

    goto :goto_0
.end method

.method private getCurOutDevice()I
    .locals 3

    const-string/jumbo v1, "audioParam;outDevice;audioservice"

    invoke-static {v1}, Landroid/media/AudioSystem;->getParameters(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string/jumbo v1, ""

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const-string/jumbo v1, "AudioService"

    const-string/jumbo v2, "getCurOutDevice : Can\'t get outDevice"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, -0x1

    return v1

    :cond_1
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    return v1
.end method

.method private getCurrentUserId()I
    .locals 5

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v4

    invoke-interface {v4}, Landroid/app/IActivityManager;->getCurrentUser()Landroid/content/pm/UserInfo;

    move-result-object v0

    iget v4, v0, Landroid/content/pm/UserInfo;->id:I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v4

    :catch_0
    move-exception v1

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    const/4 v4, 0x0

    return v4

    :catchall_0
    move-exception v4

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v4
.end method

.method private getDeviceForStream(I)I
    .locals 2

    invoke-direct {p0, p1}, Lcom/android/server/audio/AudioService;->getDevicesForStream(I)I

    move-result v0

    add-int/lit8 v1, v0, -0x1

    and-int/2addr v1, v0

    if-eqz v1, :cond_0

    and-int/lit8 v1, v0, 0x2

    if-eqz v1, :cond_1

    const/4 v0, 0x2

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/high16 v1, 0x40000

    and-int/2addr v1, v0

    if-eqz v1, :cond_2

    const/high16 v0, 0x40000

    goto :goto_0

    :cond_2
    const/high16 v1, 0x80000

    and-int/2addr v1, v0

    if-eqz v1, :cond_3

    const/high16 v0, 0x80000

    goto :goto_0

    :cond_3
    const/high16 v1, 0x200000

    and-int/2addr v1, v0

    if-eqz v1, :cond_4

    const/high16 v0, 0x200000

    goto :goto_0

    :cond_4
    and-int/lit16 v0, v0, 0x380

    goto :goto_0
.end method

.method private getDevicesForStream(I)I
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/android/server/audio/AudioService;->getDevicesForStream(IZ)I

    move-result v0

    return v0
.end method

.method private getDevicesForStream(IZ)I
    .locals 2

    invoke-direct {p0, p1}, Lcom/android/server/audio/AudioService;->ensureValidStreamType(I)V

    const-class v1, Lcom/android/server/audio/AudioService$VolumeStreamState;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mStreamStates:[Lcom/android/server/audio/AudioService$VolumeStreamState;

    aget-object v0, v0, p1

    invoke-virtual {v0, p2}, Lcom/android/server/audio/AudioService$VolumeStreamState;->observeDevicesForStream_syncVSS(Z)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit v1

    return v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private getFineVolume()Ljava/lang/String;
    .locals 3

    const/4 v2, 0x3

    iget-object v1, p0, Lcom/android/server/audio/AudioService;->mStreamStates:[Lcom/android/server/audio/AudioService$VolumeStreamState;

    aget-object v1, v1, v2

    invoke-static {v1}, Lcom/android/server/audio/AudioService$VolumeStreamState;->-get3(Lcom/android/server/audio/AudioService$VolumeStreamState;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    return-object v1

    :cond_0
    iget-object v1, p0, Lcom/android/server/audio/AudioService;->mFineMediaVolume:Lcom/android/server/audio/AudioService$FineVolumeState;

    invoke-direct {p0, v2}, Lcom/android/server/audio/AudioService;->getDeviceForStream(I)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/server/audio/AudioService$FineVolumeState;->getIndex(I)I

    move-result v0

    goto :goto_0
.end method

.method private getFlagsForDeviceConnect(I)I
    .locals 2

    const/high16 v0, 0x2000000

    if-nez p1, :cond_0

    const/high16 v1, 0x22000000

    return v1

    :cond_0
    return v0
.end method

.method private getForegroundPackage()Ljava/lang/String;
    .locals 3

    iget-object v1, p0, Lcom/android/server/audio/AudioService;->mActivityManager:Landroid/app/ActivityManager;

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/server/audio/AudioService;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "activity"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager;

    iput-object v1, p0, Lcom/android/server/audio/AudioService;->mActivityManager:Landroid/app/ActivityManager;

    :cond_0
    iget-object v1, p0, Lcom/android/server/audio/AudioService;->mActivityManager:Landroid/app/ActivityManager;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    const-string/jumbo v1, "None"

    :goto_0
    return-object v1

    :cond_1
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v1, v1, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method private getHWBidata()Ljava/lang/String;
    .locals 20

    const-string/jumbo v17, "AudioService"

    const-string/jumbo v18, "getHWBidata()+"

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v15, 0x0

    new-instance v13, Ljava/lang/StringBuilder;

    const-string/jumbo v17, ""

    move-object/from16 v0, v17

    invoke-direct {v13, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    :try_start_0
    new-instance v17, Ljava/io/File;

    const-string/jumbo v18, "/efs/FactoryApp/earjack_count"

    invoke-direct/range {v17 .. v18}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/16 v18, 0x0

    const/16 v19, 0x0

    invoke-static/range {v17 .. v19}, Landroid/os/FileUtils;->readTextFile(Ljava/io/File;ILjava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v15

    :goto_0
    const/4 v2, 0x0

    :try_start_1
    new-instance v6, Ljava/io/File;

    const-string/jumbo v17, "/data/snd/hw_audio_param.txt"

    move-object/from16 v0, v17

    invoke-direct {v6, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    if-eqz v6, :cond_2

    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v17

    if-eqz v17, :cond_2

    new-instance v7, Ljava/io/FileInputStream;

    invoke-direct {v7, v6}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    new-instance v10, Ljava/io/InputStreamReader;

    invoke-direct {v10, v7}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    new-instance v1, Ljava/io/BufferedReader;

    invoke-direct {v1, v10}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V

    new-instance v14, Ljava/util/StringTokenizer;

    const-string/jumbo v17, " "

    move-object/from16 v0, v17

    invoke-direct {v14, v9, v0}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v17, 0x11

    move/from16 v0, v17

    new-array v12, v0, [Ljava/lang/String;

    const-string/jumbo v17, "cst"

    const/16 v18, 0x0

    aput-object v17, v12, v18

    const-string/jumbo v17, "csv"

    const/16 v18, 0x1

    aput-object v17, v12, v18

    const-string/jumbo v17, "csc"

    const/16 v18, 0x2

    aput-object v17, v12, v18

    const-string/jumbo v17, "crt"

    const/16 v18, 0x3

    aput-object v17, v12, v18

    const-string/jumbo v17, "crv"

    const/16 v18, 0x4

    aput-object v17, v12, v18

    const-string/jumbo v17, "crc"

    const/16 v18, 0x5

    aput-object v17, v12, v18

    const-string/jumbo v17, "cet"

    const/16 v18, 0x6

    aput-object v17, v12, v18

    const-string/jumbo v17, "cev"

    const/16 v18, 0x7

    aput-object v17, v12, v18

    const-string/jumbo v17, "cec"

    const/16 v18, 0x8

    aput-object v17, v12, v18

    const-string/jumbo v17, "mst"

    const/16 v18, 0x9

    aput-object v17, v12, v18

    const-string/jumbo v17, "msv"

    const/16 v18, 0xa

    aput-object v17, v12, v18

    const-string/jumbo v17, "msc"

    const/16 v18, 0xb

    aput-object v17, v12, v18

    const-string/jumbo v17, "met"

    const/16 v18, 0xc

    aput-object v17, v12, v18

    const-string/jumbo v17, "mev"

    const/16 v18, 0xd

    aput-object v17, v12, v18

    const-string/jumbo v17, "mec"

    const/16 v18, 0xe

    aput-object v17, v12, v18

    const-string/jumbo v17, "evc"

    const/16 v18, 0xf

    aput-object v17, v12, v18

    const-string/jumbo v17, "ejc"

    const/16 v18, 0x10

    aput-object v17, v12, v18

    const/16 v17, 0x11

    move/from16 v0, v17

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v16, v0

    const/4 v8, 0x0

    :goto_1
    invoke-virtual {v14}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v17

    if-eqz v17, :cond_0

    invoke-virtual {v14}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v17

    aput-object v17, v16, v8
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    :catch_0
    move-exception v5

    const-string/jumbo v17, "AudioService"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v19, "NumberFormatException : "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :catch_1
    move-exception v3

    const-string/jumbo v17, "AudioService"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v19, "IOException : "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_0
    :try_start_2
    aput-object v15, v16, v8

    const/4 v11, 0x0

    :goto_2
    const/16 v17, 0x11

    move/from16 v0, v17

    if-ge v11, v0, :cond_3

    const-string/jumbo v17, "\""

    move-object/from16 v0, v17

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v17, v12, v11

    move-object/from16 v0, v17

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v17, "\""

    move-object/from16 v0, v17

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v17, ":"

    move-object/from16 v0, v17

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v17, "\""

    move-object/from16 v0, v17

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v17, v16, v11

    move-object/from16 v0, v17

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v17, "\""

    move-object/from16 v0, v17

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v17, 0x10

    move/from16 v0, v17

    if-ge v11, v0, :cond_1

    const-string/jumbo v17, ","

    move-object/from16 v0, v17

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    add-int/lit8 v11, v11, 0x1

    goto :goto_2

    :cond_2
    const-string/jumbo v17, "AudioService"

    const-string/jumbo v18, "file object creation error"

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    :cond_3
    :goto_3
    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    return-object v17

    :catch_2
    move-exception v4

    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_3
.end method

.method private getIntValueFromString(Ljava/lang/String;I)I
    .locals 4

    const/4 v1, 0x0

    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    return v1

    :catch_0
    move-exception v0

    const-string/jumbo v2, "AudioService"

    const-string/jumbo v3, "NumberFormatException"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move v1, p2

    goto :goto_0
.end method

.method private getNewRingerMode(III)I
    .locals 2

    and-int/lit8 v1, p3, 0x2

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lcom/android/server/audio/AudioService;->getUiSoundsStreamType()I

    move-result v1

    if-ne p1, v1, :cond_4

    :cond_0
    if-nez p2, :cond_3

    iget-boolean v1, p0, Lcom/android/server/audio/AudioService;->mHasVibrator:Z

    if-eqz v1, :cond_1

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lcom/android/server/audio/AudioService;->mVolumePolicy:Landroid/media/VolumePolicy;

    iget-boolean v1, v1, Landroid/media/VolumePolicy;->volumeDownToEnterSilent:Z

    if-eqz v1, :cond_2

    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    const/4 v0, 0x2

    goto :goto_0

    :cond_3
    const/4 v0, 0x2

    goto :goto_0

    :cond_4
    invoke-virtual {p0}, Lcom/android/server/audio/AudioService;->getRingerModeExternal()I

    move-result v1

    return v1
.end method

.method private getNewWhiteListVersion()Ljava/lang/String;
    .locals 15

    const/4 v13, 0x0

    const/4 v12, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/audio/AudioService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {}, Lcom/android/server/audio/AudioService$EffectPolicy;->-get2()Landroid/net/Uri;

    move-result-object v1

    invoke-static {}, Lcom/android/server/audio/AudioService$EffectPolicy;->-get3()[Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "policyName=?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const-string/jumbo v5, "audio"

    const/4 v14, 0x0

    aput-object v5, v4, v14

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v13

    if-eqz v13, :cond_0

    invoke-interface {v13}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-lez v1, :cond_0

    invoke-interface {v13}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    invoke-interface {v13, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v12

    :cond_0
    if-eqz v13, :cond_1

    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    :goto_0
    const/4 v13, 0x0

    :cond_1
    const-string/jumbo v1, "AudioService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "EffectPolicy new version:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v12, :cond_3

    const-string/jumbo v1, "AudioService"

    const-string/jumbo v2, "EffectPolicy version value is null"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    return-object v1

    :catch_0
    move-exception v8

    :try_start_1
    invoke-virtual {v8}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v13, :cond_1

    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    goto :goto_0

    :catchall_0
    move-exception v1

    if-eqz v13, :cond_2

    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    const/4 v13, 0x0

    :cond_2
    throw v1

    :cond_3
    const-string/jumbo v1, "whitelistVersion"

    invoke-static {v1}, Landroid/media/AudioSystem;->getParameters(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    const-string/jumbo v1, "AudioService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "EffectPolicy current version"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v11, :cond_4

    const-string/jumbo v1, ""

    invoke-virtual {v1, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    :cond_4
    return-object v12

    :cond_5
    new-instance v7, Ljava/text/SimpleDateFormat;

    const-string/jumbo v1, "yyyyMMddHHmmss"

    invoke-direct {v7, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    const/4 v10, 0x0

    const/4 v6, 0x0

    :try_start_2
    invoke-virtual {v7, v12}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v10

    invoke-virtual {v7, v11}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;
    :try_end_2
    .catch Ljava/text/ParseException; {:try_start_2 .. :try_end_2} :catch_1

    move-result-object v6

    if-nez v10, :cond_6

    const/4 v1, 0x0

    return-object v1

    :catch_1
    move-exception v9

    const-string/jumbo v1, "AudioService"

    const-string/jumbo v2, "version parsing error"

    invoke-static {v1, v2, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v1, 0x0

    return-object v1

    :cond_6
    if-nez v6, :cond_7

    return-object v12

    :cond_7
    invoke-virtual {v10, v6}, Ljava/util/Date;->compareTo(Ljava/util/Date;)I

    move-result v1

    if-lez v1, :cond_8

    return-object v12

    :cond_8
    const/4 v1, 0x0

    return-object v1
.end method

.method private getScoClient(Landroid/os/IBinder;Z)Lcom/android/server/audio/AudioService$ScoClient;
    .locals 6

    iget-object v5, p0, Lcom/android/server/audio/AudioService;->mScoClients:Ljava/util/ArrayList;

    monitor-enter v5

    const/4 v0, 0x0

    :try_start_0
    iget-object v4, p0, Lcom/android/server/audio/AudioService;->mScoClients:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    const/4 v2, 0x0

    move-object v1, v0

    :goto_0
    if-ge v2, v3, :cond_1

    :try_start_1
    iget-object v4, p0, Lcom/android/server/audio/AudioService;->mScoClients:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/audio/AudioService$ScoClient;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    invoke-virtual {v0}, Lcom/android/server/audio/AudioService$ScoClient;->getBinder()Landroid/os/IBinder;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v4

    if-ne v4, p1, :cond_0

    monitor-exit v5

    return-object v0

    :cond_0
    add-int/lit8 v2, v2, 0x1

    move-object v1, v0

    goto :goto_0

    :cond_1
    if-eqz p2, :cond_2

    :try_start_3
    new-instance v0, Lcom/android/server/audio/AudioService$ScoClient;

    invoke-direct {v0, p0, p1}, Lcom/android/server/audio/AudioService$ScoClient;-><init>(Lcom/android/server/audio/AudioService;Landroid/os/IBinder;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    iget-object v4, p0, Lcom/android/server/audio/AudioService;->mScoClients:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :goto_1
    monitor-exit v5

    return-object v0

    :catchall_0
    move-exception v4

    :goto_2
    monitor-exit v5

    throw v4

    :catchall_1
    move-exception v4

    move-object v0, v1

    goto :goto_2

    :cond_2
    move-object v0, v1

    goto :goto_1
.end method

.method private getSessionManager()Landroid/media/session/ISessionManager;
    .locals 2

    iget-object v1, p0, Lcom/android/server/audio/AudioService;->mMediaSessionService:Landroid/media/session/ISessionManager;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/audio/AudioService;->mMediaSessionService:Landroid/media/session/ISessionManager;

    return-object v1

    :cond_0
    const-string/jumbo v1, "media_session"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/media/session/ISessionManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/session/ISessionManager;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/audio/AudioService;->mMediaSessionService:Landroid/media/session/ISessionManager;

    iget-object v1, p0, Lcom/android/server/audio/AudioService;->mMediaSessionService:Landroid/media/session/ISessionManager;

    return-object v1
.end method

.method private getStreamVolume(II)I
    .locals 8

    const/16 v7, 0xa

    const/4 v6, 0x3

    const/4 v3, 0x0

    const/4 v1, 0x0

    const/16 v2, 0x3e8

    if-lt p1, v2, :cond_0

    add-int/lit16 p1, p1, -0x3e8

    const/4 v1, 0x1

    :cond_0
    invoke-direct {p0, p1}, Lcom/android/server/audio/AudioService;->ensureValidStreamType(I)V

    if-nez p2, :cond_1

    invoke-direct {p0, p1}, Lcom/android/server/audio/AudioService;->getDeviceForStream(I)I

    move-result p2

    :cond_1
    if-ne p1, v6, :cond_2

    iget-boolean v2, p0, Lcom/android/server/audio/AudioService;->mIsScreenState:Z

    if-nez v2, :cond_2

    iget v2, p0, Lcom/android/server/audio/AudioService;->mCPUBoostType:I

    and-int/lit8 v2, v2, 0x2

    if-nez v2, :cond_2

    invoke-direct {p0}, Lcom/android/server/audio/AudioService;->checkCPUBoostForEffect()Z

    move-result v2

    if-eqz v2, :cond_2

    const-string/jumbo v2, "persist.audio.effectcpufreq"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/android/server/audio/AudioService;->mCPUBoostValueForEffect:I

    iget v2, p0, Lcom/android/server/audio/AudioService;->mCPUBoostValueForEffect:I

    if-lez v2, :cond_2

    const-string/jumbo v2, "AudioService"

    const-string/jumbo v3, "getStreamVolume::startCPUBoost(DVFS_CPU_BOOST_ACTION_TYPE_EFFECT)"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x2

    invoke-direct {p0, v2}, Lcom/android/server/audio/AudioService;->startCPUBoost(I)V

    :cond_2
    const-class v3, Lcom/android/server/audio/AudioService$VolumeStreamState;

    monitor-enter v3

    :try_start_0
    iget-object v2, p0, Lcom/android/server/audio/AudioService;->mStreamStates:[Lcom/android/server/audio/AudioService$VolumeStreamState;

    aget-object v2, v2, p1

    invoke-virtual {v2, p2}, Lcom/android/server/audio/AudioService$VolumeStreamState;->getIndex(I)I

    move-result v0

    const-string/jumbo v2, "AudioService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "getStreamVolume "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " index "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-ne p1, v7, :cond_7

    iget-object v2, p0, Lcom/android/server/audio/AudioService;->mStreamStates:[Lcom/android/server/audio/AudioService$VolumeStreamState;

    const/4 v4, 0x3

    aget-object v2, v2, v4

    invoke-static {v2}, Lcom/android/server/audio/AudioService$VolumeStreamState;->-get3(Lcom/android/server/audio/AudioService$VolumeStreamState;)Z

    move-result v2

    if-eqz v2, :cond_3

    const/4 v0, 0x0

    :cond_3
    :goto_0
    if-ne p1, v7, :cond_4

    invoke-virtual {p0}, Lcom/android/server/audio/AudioService;->isRadioSpeakerOn()Z

    move-result v2

    if-eqz v2, :cond_4

    const/4 p2, 0x2

    :cond_4
    if-eqz v0, :cond_5

    iget-object v2, p0, Lcom/android/server/audio/AudioService;->mStreamVolumeAlias:[I

    aget v2, v2, p1

    if-ne v2, v6, :cond_5

    iget v2, p0, Lcom/android/server/audio/AudioService;->mFixedVolumeDevices:I

    and-int/2addr v2, p2

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/android/server/audio/AudioService;->mStreamStates:[Lcom/android/server/audio/AudioService$VolumeStreamState;

    aget-object v2, v2, p1

    invoke-virtual {v2}, Lcom/android/server/audio/AudioService$VolumeStreamState;->getMaxIndex()I

    move-result v0

    :cond_5
    iget-object v2, p0, Lcom/android/server/audio/AudioService;->mStreamVolumeAlias:[I

    aget v2, v2, p1

    if-ne v2, v6, :cond_6

    if-eqz v1, :cond_8

    :cond_6
    :goto_1
    add-int/lit8 v2, v0, 0x5

    div-int/lit8 v2, v2, 0xa
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v3

    return v2

    :cond_7
    :try_start_1
    iget-object v2, p0, Lcom/android/server/audio/AudioService;->mStreamStates:[Lcom/android/server/audio/AudioService$VolumeStreamState;

    aget-object v2, v2, p1

    invoke-static {v2}, Lcom/android/server/audio/AudioService$VolumeStreamState;->-get3(Lcom/android/server/audio/AudioService$VolumeStreamState;)Z

    move-result v2

    if-eqz v2, :cond_3

    const/4 v0, 0x0

    goto :goto_0

    :cond_8
    if-nez v0, :cond_6

    iget-object v2, p0, Lcom/android/server/audio/AudioService;->mFineMediaVolume:Lcom/android/server/audio/AudioService$FineVolumeState;

    invoke-virtual {v2, p2}, Lcom/android/server/audio/AudioService$FineVolumeState;->getIndex(I)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v2

    if-eqz v2, :cond_6

    const/16 v0, 0xa

    goto :goto_1

    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.method private handleConfigurationChanged(Landroid/content/Context;)V
    .locals 14

    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v9

    iget-boolean v0, p0, Lcom/android/server/audio/AudioService;->mMonitorOrientation:Z

    if-eqz v0, :cond_0

    iget v11, v9, Landroid/content/res/Configuration;->orientation:I

    iget v0, p0, Lcom/android/server/audio/AudioService;->mDeviceOrientation:I

    if-eq v11, v0, :cond_0

    iput v11, p0, Lcom/android/server/audio/AudioService;->mDeviceOrientation:I

    invoke-direct {p0}, Lcom/android/server/audio/AudioService;->setOrientationForAudioSystem()V

    :cond_0
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mAudioHandler:Lcom/android/server/audio/AudioService$AudioHandler;

    const-string/jumbo v5, "AudioService"

    const/16 v1, 0x10

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x0

    invoke-static/range {v0 .. v6}, Lcom/android/server/audio/AudioService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    invoke-direct {p0}, Lcom/android/server/audio/AudioService;->readCameraSoundForced()Z

    move-result v7

    iget-object v13, p0, Lcom/android/server/audio/AudioService;->mSettingsLock:Ljava/lang/Object;

    monitor-enter v13
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v8, 0x0

    :try_start_1
    iget-object v1, p0, Lcom/android/server/audio/AudioService;->mCameraSoundForced:Ljava/lang/Boolean;

    monitor-enter v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mCameraSoundForced:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eq v7, v0, :cond_1

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/audio/AudioService;->mCameraSoundForced:Ljava/lang/Boolean;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    const/4 v8, 0x1

    :cond_1
    :try_start_3
    monitor-exit v1

    if-eqz v8, :cond_3

    invoke-direct {p0}, Lcom/android/server/audio/AudioService;->isPlatformTelevision()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mStreamStates:[Lcom/android/server/audio/AudioService$VolumeStreamState;

    const/4 v1, 0x7

    aget-object v12, v0, v1

    if-eqz v7, :cond_4

    invoke-virtual {v12}, Lcom/android/server/audio/AudioService$VolumeStreamState;->setAllIndexesToMax()V

    iget v0, p0, Lcom/android/server/audio/AudioService;->mRingerModeAffectedStreams:I

    and-int/lit16 v0, v0, -0x81

    iput v0, p0, Lcom/android/server/audio/AudioService;->mRingerModeAffectedStreams:I

    :goto_0
    invoke-virtual {p0}, Lcom/android/server/audio/AudioService;->getRingerModeInternal()I

    move-result v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/server/audio/AudioService;->setRingerModeInt(IZ)V

    :cond_2
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mAudioHandler:Lcom/android/server/audio/AudioService$AudioHandler;

    if-eqz v7, :cond_5

    const/16 v4, 0xb

    :goto_1
    const/16 v1, 0x8

    const/4 v2, 0x2

    const/4 v3, 0x4

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static/range {v0 .. v6}, Lcom/android/server/audio/AudioService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mAudioHandler:Lcom/android/server/audio/AudioService$AudioHandler;

    iget-object v1, p0, Lcom/android/server/audio/AudioService;->mStreamStates:[Lcom/android/server/audio/AudioService$VolumeStreamState;

    const/4 v2, 0x7

    aget-object v5, v1, v2

    const/16 v1, 0xa

    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x0

    invoke-static/range {v0 .. v6}, Lcom/android/server/audio/AudioService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :cond_3
    :try_start_4
    monitor-exit v13

    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mVolumeController:Lcom/android/server/audio/AudioService$VolumeController;

    invoke-virtual {v9}, Landroid/content/res/Configuration;->getLayoutDirection()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/server/audio/AudioService$VolumeController;->setLayoutDirection(I)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    :goto_2
    return-void

    :catchall_0
    move-exception v0

    :try_start_5
    monitor-exit v1

    throw v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :catchall_1
    move-exception v0

    :try_start_6
    monitor-exit v13

    throw v0
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0

    :catch_0
    move-exception v10

    const-string/jumbo v0, "AudioService"

    const-string/jumbo v1, "Error handling configuration change: "

    invoke-static {v0, v1, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    :cond_4
    :try_start_7
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mStreamStates:[Lcom/android/server/audio/AudioService$VolumeStreamState;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    const-string/jumbo v1, "AudioService"

    invoke-virtual {v12, v0, v1}, Lcom/android/server/audio/AudioService$VolumeStreamState;->setAllIndexes(Lcom/android/server/audio/AudioService$VolumeStreamState;Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/audio/AudioService;->mRingerModeAffectedStreams:I

    or-int/lit16 v0, v0, 0x80

    iput v0, p0, Lcom/android/server/audio/AudioService;->mRingerModeAffectedStreams:I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    goto :goto_0

    :cond_5
    const/4 v4, 0x0

    goto :goto_1
.end method

.method private handleDeviceConnection(ZILjava/lang/String;Ljava/lang/String;)Z
    .locals 10

    sget-boolean v5, Lcom/android/server/audio/AudioService;->DEBUG_DEVICES:Z

    if-eqz v5, :cond_0

    const-string/jumbo v5, "AudioService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "handleDeviceConnection("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " dev:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {p2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " address:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " name:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, ")"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v6, p0, Lcom/android/server/audio/AudioService;->mConnectedDevices:Landroid/util/ArrayMap;

    monitor-enter v6

    :try_start_0
    invoke-direct {p0, p2, p3}, Lcom/android/server/audio/AudioService;->makeDeviceListKey(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-boolean v5, Lcom/android/server/audio/AudioService;->DEBUG_DEVICES:Z

    if-eqz v5, :cond_1

    const-string/jumbo v5, "AudioService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "deviceKey:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    iget-object v5, p0, Lcom/android/server/audio/AudioService;->mConnectedDevices:Landroid/util/ArrayMap;

    invoke-virtual {v5, v0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/audio/AudioService$DeviceListSpec;

    if-eqz v1, :cond_3

    const/4 v2, 0x1

    :goto_0
    sget-boolean v5, Lcom/android/server/audio/AudioService;->DEBUG_DEVICES:Z

    if-eqz v5, :cond_2

    const-string/jumbo v5, "AudioService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "deviceSpec:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, " is(already)Connected:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    const-string/jumbo v5, "AudioService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "connect:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, " device:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, " isConnected:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p1, :cond_4

    if-nez v2, :cond_4

    const-string/jumbo v5, "AudioService"

    const-string/jumbo v7, "handleDeviceConnection no more unavailable device, return false"

    invoke-static {v5, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v5, 0x0

    monitor-exit v6

    return v5

    :cond_3
    const/4 v2, 0x0

    goto :goto_0

    :cond_4
    if-eqz v2, :cond_7

    if-eqz p1, :cond_7

    const/16 v5, 0x1000

    if-eq p2, v5, :cond_5

    const/16 v5, 0x400

    if-ne p2, v5, :cond_7

    :cond_5
    const/4 v5, 0x0

    :try_start_1
    invoke-static {p2, v5, p3, p4}, Landroid/media/AudioSystem;->setDeviceConnectionState(IILjava/lang/String;Ljava/lang/String;)I

    iget-object v5, p0, Lcom/android/server/audio/AudioService;->mConnectedDevices:Landroid/util/ArrayMap;

    invoke-virtual {v5, v0}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v5, p0, Lcom/android/server/audio/AudioService;->mLastConnectedDevice:Lcom/android/server/audio/AudioService$DeviceListSpec;

    if-eqz v5, :cond_6

    iget-object v5, p0, Lcom/android/server/audio/AudioService;->mLastConnectedDevice:Lcom/android/server/audio/AudioService$DeviceListSpec;

    invoke-virtual {v5}, Lcom/android/server/audio/AudioService$DeviceListSpec;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1}, Lcom/android/server/audio/AudioService$DeviceListSpec;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    const/4 v5, 0x0

    iput-object v5, p0, Lcom/android/server/audio/AudioService;->mLastConnectedDevice:Lcom/android/server/audio/AudioService$DeviceListSpec;

    :cond_6
    const/4 v2, 0x0

    :cond_7
    if-eqz p1, :cond_8

    if-eqz v2, :cond_c

    :cond_8
    if-nez p1, :cond_14

    if-eqz v2, :cond_14

    const/4 v5, 0x4

    if-eq p2, v5, :cond_9

    const/16 v5, 0x8

    if-ne p2, v5, :cond_a

    :cond_9
    const/4 v5, 0x0

    invoke-virtual {p0, v5}, Lcom/android/server/audio/AudioService;->setEarphoneStateForSARTest(Z)V

    :cond_a
    const/4 v5, 0x0

    invoke-static {p2, v5, p3, p4}, Landroid/media/AudioSystem;->setDeviceConnectionState(IILjava/lang/String;Ljava/lang/String;)I

    iget-object v5, p0, Lcom/android/server/audio/AudioService;->mConnectedDevices:Landroid/util/ArrayMap;

    invoke-virtual {v5, v0}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v5, p0, Lcom/android/server/audio/AudioService;->mLastConnectedDevice:Lcom/android/server/audio/AudioService$DeviceListSpec;

    if-eqz v5, :cond_b

    iget-object v5, p0, Lcom/android/server/audio/AudioService;->mLastConnectedDevice:Lcom/android/server/audio/AudioService$DeviceListSpec;

    invoke-virtual {v5}, Lcom/android/server/audio/AudioService$DeviceListSpec;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1}, Lcom/android/server/audio/AudioService$DeviceListSpec;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_b

    const/4 v5, 0x0

    iput-object v5, p0, Lcom/android/server/audio/AudioService;->mLastConnectedDevice:Lcom/android/server/audio/AudioService$DeviceListSpec;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_b
    const/4 v5, 0x1

    monitor-exit v6

    return v5

    :cond_c
    const/4 v5, 0x4

    if-eq p2, v5, :cond_d

    const/16 v5, 0x8

    if-ne p2, v5, :cond_f

    :cond_d
    :try_start_2
    const-string/jumbo v5, "AudioService"

    const-string/jumbo v7, "onReceive set Screen power on for Contextual Awareness."

    invoke-static {v5, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v5, "ro.product.name"

    invoke-static {v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v7, "c7ltezc"

    invoke-virtual {v5, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_e

    const-string/jumbo v5, "ro.product.name"

    invoke-static {v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v7, "c5pltezc"

    invoke-virtual {v5, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_10

    :cond_e
    :goto_1
    const/4 v5, 0x1

    invoke-virtual {p0, v5}, Lcom/android/server/audio/AudioService;->setEarphoneStateForSARTest(Z)V

    :cond_f
    const/4 v5, 0x1

    invoke-static {p2, v5, p3, p4}, Landroid/media/AudioSystem;->setDeviceConnectionState(IILjava/lang/String;Ljava/lang/String;)I

    move-result v4

    if-eqz v4, :cond_12

    const-string/jumbo v5, "AudioService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "not connecting device 0x"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {p2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, " due to command error "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    const/4 v5, 0x0

    monitor-exit v6

    return v5

    :cond_10
    :try_start_3
    invoke-direct {p0}, Lcom/android/server/audio/AudioService;->isScreenOffMusicOn()I

    move-result v5

    iput v5, p0, Lcom/android/server/audio/AudioService;->mIsScreenOffMusicOn:I

    const/4 v7, 0x1

    if-ne v5, v7, :cond_11

    const-string/jumbo v5, "AudioService"

    const-string/jumbo v7, "lcd on will be handled by screen off music"

    invoke-static {v5, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v5

    monitor-exit v6

    throw v5

    :cond_11
    :try_start_4
    iget-object v5, p0, Lcom/android/server/audio/AudioService;->mContext:Landroid/content/Context;

    const-string/jumbo v7, "power"

    invoke-virtual {v5, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/PowerManager;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v8

    const/16 v5, 0xc

    invoke-virtual {v3, v8, v9, v5}, Landroid/os/PowerManager;->wakeUp(JI)V

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v8

    const/4 v5, 0x0

    invoke-virtual {v3, v8, v9, v5}, Landroid/os/PowerManager;->userActivity(JZ)V

    goto :goto_1

    :cond_12
    iget-object v5, p0, Lcom/android/server/audio/AudioService;->mConnectedDevices:Landroid/util/ArrayMap;

    new-instance v7, Lcom/android/server/audio/AudioService$DeviceListSpec;

    invoke-direct {v7, p0, p2, p4, p3}, Lcom/android/server/audio/AudioService$DeviceListSpec;-><init>(Lcom/android/server/audio/AudioService;ILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v5, v0, v7}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/high16 v5, -0x80000000

    and-int/2addr v5, p2

    if-nez v5, :cond_13

    new-instance v5, Lcom/android/server/audio/AudioService$DeviceListSpec;

    invoke-direct {v5, p0, p2, p4, p3}, Lcom/android/server/audio/AudioService$DeviceListSpec;-><init>(Lcom/android/server/audio/AudioService;ILjava/lang/String;Ljava/lang/String;)V

    iput-object v5, p0, Lcom/android/server/audio/AudioService;->mLastConnectedDevice:Lcom/android/server/audio/AudioService$DeviceListSpec;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :cond_13
    const/4 v5, 0x1

    monitor-exit v6

    return v5

    :cond_14
    monitor-exit v6

    const/4 v5, 0x0

    return v5
.end method

.method private hasRmtSbmxFullVolDeathHandlerFor(Landroid/os/IBinder;)Z
    .locals 2

    iget-object v1, p0, Lcom/android/server/audio/AudioService;->mRmtSbmxFullVolDeathHandlers:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/audio/AudioService$RmtSbmxFullVolDeathHandler;

    invoke-virtual {v1, p1}, Lcom/android/server/audio/AudioService$RmtSbmxFullVolDeathHandler;->isHandlerFor(Landroid/os/IBinder;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    return v1

    :cond_1
    const/4 v1, 0x0

    return v1
.end method

.method private hasScheduledA2dpDockTimeout()Z
    .locals 2

    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mAudioHandler:Lcom/android/server/audio/AudioService$AudioHandler;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Lcom/android/server/audio/AudioService$AudioHandler;->hasMessages(I)Z

    move-result v0

    return v0
.end method

.method private hasVibrator()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/audio/AudioService;->mHasVibrator:Z

    return v0
.end method

.method private increaseEARCount()V
    .locals 10

    :try_start_0
    new-instance v5, Ljava/io/File;

    const-string/jumbo v6, "/efs/FactoryApp/earjack_count"

    invoke-direct {v5, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-static {v5, v6, v7}, Landroid/os/FileUtils;->readTextFile(Ljava/io/File;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_0

    const-string/jumbo v5, ""

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    :cond_0
    const-string/jumbo v5, "/efs/FactoryApp/earjack_count"

    const-string/jumbo v6, "0"

    invoke-static {v5, v6}, Landroid/os/FileUtils;->stringToFile(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_1
    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    const-wide/16 v8, 0x1

    add-long v2, v6, v8

    const-string/jumbo v5, "/efs/FactoryApp/earjack_count"

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/os/FileUtils;->stringToFile(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    :catch_0
    move-exception v0

    const-string/jumbo v5, "AudioService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "IOException : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catch_1
    move-exception v1

    const-string/jumbo v5, "AudioService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "NumberFormatException : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private initCPUBoost()V
    .locals 3

    iget-object v0, p0, Lcom/android/server/audio/AudioService;->semDvfsCpuMin:Lcom/samsung/android/os/SemDvfsManager;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mContext:Landroid/content/Context;

    const-class v1, Lcom/android/server/audio/AudioService;

    invoke-virtual {v1}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0xc

    invoke-static {v0, v1, v2}, Lcom/samsung/android/os/SemDvfsManager;->createInstance(Landroid/content/Context;Ljava/lang/String;I)Lcom/samsung/android/os/SemDvfsManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/audio/AudioService;->semDvfsCpuMin:Lcom/samsung/android/os/SemDvfsManager;

    :cond_0
    iget v0, p0, Lcom/android/server/audio/AudioService;->mCPUBoostType:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_1

    sget-boolean v0, Lcom/android/server/audio/AudioService;->LPM_ENABLED:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/audio/AudioService;->semLowPowerMode:Lcom/samsung/android/os/SemDvfsManager;

    if-nez v0, :cond_1

    const-string/jumbo v0, "AudioService"

    const-string/jumbo v1, "initCPUBoost create LPM"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mContext:Landroid/content/Context;

    const-class v1, Lcom/android/server/audio/AudioService;

    invoke-virtual {v1}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x17

    invoke-static {v0, v1, v2}, Lcom/samsung/android/os/SemDvfsManager;->createInstance(Landroid/content/Context;Ljava/lang/String;I)Lcom/samsung/android/os/SemDvfsManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/audio/AudioService;->semLowPowerMode:Lcom/samsung/android/os/SemDvfsManager;

    :cond_1
    return-void
.end method

.method private isAfMusicActiveRecently(I)Z
    .locals 2

    const/4 v1, 0x3

    invoke-static {v1, p1}, Landroid/media/AudioSystem;->isStreamActive(II)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {v1, p1}, Landroid/media/AudioSystem;->isStreamActiveRemotely(II)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private isAndroidNPlus(Ljava/lang/String;)Z
    .locals 7

    const/4 v6, 0x1

    const/4 v5, 0x0

    :try_start_0
    iget-object v2, p0, Lcom/android/server/audio/AudioService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    invoke-static {v3}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v3

    const/4 v4, 0x0

    invoke-virtual {v2, p1, v4, v3}, Landroid/content/pm/PackageManager;->getApplicationInfoAsUser(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget v2, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    const/16 v3, 0x18

    if-lt v2, v3, :cond_0

    return v6

    :cond_0
    return v5

    :catch_0
    move-exception v1

    return v6
.end method

.method private isCoverOpen()Z
    .locals 2

    iget-object v1, p0, Lcom/android/server/audio/AudioService;->mCoverManager:Lcom/samsung/android/cover/CoverManager;

    invoke-virtual {v1}, Lcom/samsung/android/cover/CoverManager;->getCoverState()Lcom/samsung/android/cover/CoverState;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/samsung/android/cover/CoverState;->getSwitchState()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x0

    return v1

    :cond_0
    const/4 v1, 0x1

    return v1
.end method

.method private isFMRadioRecording()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method private isFactoryMode()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/audio/AudioService;->mIsFactoryMode:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/server/audio/AudioService;->mIsFactorySim:Z

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    return v0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method private isInCommunication()Z
    .locals 7

    const/4 v4, 0x1

    const/4 v0, 0x0

    iget-object v5, p0, Lcom/android/server/audio/AudioService;->mContext:Landroid/content/Context;

    const-string/jumbo v6, "telecom"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telecom/TelecomManager;

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    invoke-virtual {v1}, Landroid/telecom/TelecomManager;->isInCall()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-virtual {v1}, Landroid/telecom/TelecomManager;->isRinging()Z

    move-result v5

    if-eqz v5, :cond_4

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1}, Landroid/telecom/TelecomManager;->isRinging()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-virtual {p0}, Lcom/android/server/audio/AudioService;->getMode()I

    move-result v5

    const/4 v6, 0x2

    if-eq v5, v6, :cond_1

    invoke-virtual {p0}, Lcom/android/server/audio/AudioService;->getMode()I

    move-result v5

    const/4 v6, 0x4

    if-ne v5, v6, :cond_2

    :cond_1
    invoke-virtual {v1}, Landroid/telecom/TelecomManager;->isRinging()Z

    move-result v5

    or-int/2addr v0, v5

    :cond_2
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    if-nez v0, :cond_3

    invoke-virtual {p0}, Lcom/android/server/audio/AudioService;->getMode()I

    move-result v5

    const/4 v6, 0x3

    if-ne v5, v6, :cond_5

    :cond_3
    :goto_1
    return v4

    :cond_4
    const/4 v0, 0x1

    goto :goto_0

    :cond_5
    const/4 v4, 0x0

    goto :goto_1
.end method

.method private isMusicVideoGame(Ljava/lang/String;)Z
    .locals 3

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/server/audio/AudioService;->mCategorizer:Lcom/android/server/audio/AudioService$AppCategorizer;

    invoke-virtual {v2, p1}, Lcom/android/server/audio/AudioService$AppCategorizer;->getCategoryForPackage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    return v1

    :cond_0
    const-string/jumbo v2, "MUSIC"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string/jumbo v2, "VIDEO"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string/jumbo v2, "GAME"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    :cond_1
    const/4 v1, 0x1

    :cond_2
    return v1
.end method

.method private isMuteAdjust(I)Z
    .locals 2

    const/4 v0, 0x1

    const/16 v1, -0x64

    if-eq p1, v1, :cond_0

    const/16 v1, 0x64

    if-ne p1, v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/16 v1, 0x65

    if-eq p1, v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isPlatformTelevision()Z
    .locals 2

    iget v0, p0, Lcom/android/server/audio/AudioService;->mPlatformType:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isPlatformVoice()Z
    .locals 2

    const/4 v0, 0x1

    iget v1, p0, Lcom/android/server/audio/AudioService;->mPlatformType:I

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isRestrictionHeadphone()Z
    .locals 9

    const/4 v8, 0x1

    const/4 v7, 0x0

    const/4 v2, 0x0

    const-string/jumbo v0, "content://com.sec.knox.provider/RestrictionPolicy2"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v3, "isHeadPhoneEnabled"

    new-array v4, v8, [Ljava/lang/String;

    const-string/jumbo v5, "true"

    aput-object v5, v4, v7

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    if-eqz v6, :cond_1

    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    const-string/jumbo v0, "isHeadPhoneEnabled"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v2, "false"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "AudioService"

    const-string/jumbo v2, "Headset disabled"

    invoke-static {v0, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    return v8

    :cond_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_1
    return v7

    :catchall_0
    move-exception v0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method private isScreenOffMusicOn()I
    .locals 15

    const/4 v3, 0x0

    const-string/jumbo v13, "com.sec.android.app.music.shared"

    const-string/jumbo v11, "com.samsung.android.app.music.chn.setting"

    const-string/jumbo v14, "setting/ready_screen_off_music"

    const/4 v8, 0x0

    iget-object v2, p0, Lcom/android/server/audio/AudioService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {v2, v13, v3}, Landroid/content/pm/PackageManager;->resolveContentProvider(Ljava/lang/String;I)Landroid/content/pm/ProviderInfo;

    move-result-object v2

    if-eqz v2, :cond_1

    const/4 v9, 0x1

    :goto_0
    iget-object v2, p0, Lcom/android/server/audio/AudioService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {v2, v11, v3}, Landroid/content/pm/PackageManager;->resolveContentProvider(Ljava/lang/String;I)Landroid/content/pm/ProviderInfo;

    move-result-object v2

    if-eqz v2, :cond_2

    const/4 v7, 0x1

    :goto_1
    if-nez v9, :cond_3

    if-nez v7, :cond_3

    const-string/jumbo v2, "AudioService"

    const-string/jumbo v3, "ScreenOffMusicProvider does not exist"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v8, 0x0

    :cond_0
    :goto_2
    return v8

    :cond_1
    const/4 v9, 0x0

    goto :goto_0

    :cond_2
    const/4 v7, 0x0

    goto :goto_1

    :cond_3
    const/4 v10, 0x0

    iget-object v2, p0, Lcom/android/server/audio/AudioService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    if-eqz v7, :cond_5

    :try_start_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "content://"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-static {v2, v14}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    :goto_3
    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    if-eqz v10, :cond_4

    invoke-interface {v10}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-gtz v2, :cond_6

    :cond_4
    const-string/jumbo v2, "AudioService"

    const-string/jumbo v3, "screen off music query failed"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_4
    if-eqz v10, :cond_0

    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    :goto_5
    const/4 v10, 0x0

    goto :goto_2

    :cond_5
    :try_start_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "content://"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-static {v2, v14}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    goto :goto_3

    :cond_6
    invoke-interface {v10}, Landroid/database/Cursor;->moveToFirst()Z

    const/4 v2, 0x1

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    const-string/jumbo v2, "true"

    invoke-virtual {v12, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v2

    if-eqz v2, :cond_7

    const/4 v8, 0x1

    goto :goto_4

    :cond_7
    const/4 v8, 0x0

    goto :goto_4

    :catch_0
    move-exception v6

    :try_start_2
    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v10, :cond_0

    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    goto :goto_5

    :catchall_0
    move-exception v2

    if-eqz v10, :cond_8

    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    const/4 v10, 0x0

    :cond_8
    throw v2
.end method

.method private isSmartDockConnected()Z
    .locals 22

    const-wide/16 v20, 0x64

    :try_start_0
    invoke-static/range {v20 .. v21}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    const/16 v19, 0x8

    move/from16 v0, v19

    new-array v4, v0, [C

    const-string/jumbo v3, "/sys/class/sec/switch/device"

    const-string/jumbo v2, "/sys/class/sec/switch/adc"

    const/4 v11, 0x0

    const/4 v14, 0x0

    const/16 v17, 0x0

    const/16 v16, 0x0

    const/4 v6, 0x0

    const/4 v5, 0x0

    :try_start_1
    new-instance v12, Ljava/io/FileReader;

    invoke-direct {v12, v2}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_6
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/16 v19, 0x0

    const/16 v20, 0x8

    :try_start_2
    move/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v12, v4, v0, v1}, Ljava/io/FileReader;->read([CII)I

    move-result v18

    invoke-virtual {v12}, Ljava/io/FileReader;->close()V

    const/16 v19, 0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-le v0, v1, :cond_3

    new-instance v7, Ljava/lang/String;

    add-int/lit8 v19, v18, -0x1

    const/16 v20, 0x0

    move/from16 v0, v20

    move/from16 v1, v19

    invoke-direct {v7, v4, v0, v1}, Ljava/lang/String;-><init>([CII)V

    move-object v6, v7

    :goto_1
    const-string/jumbo v19, "10"

    move-object/from16 v0, v19

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_b

    const/16 v16, 0x1

    new-instance v15, Ljava/io/BufferedReader;

    new-instance v19, Ljava/io/FileReader;

    move-object/from16 v0, v19

    invoke-direct {v0, v3}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v19

    invoke-direct {v15, v0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_9
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_b
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :try_start_3
    invoke-virtual {v15}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v15}, Ljava/io/BufferedReader;->close()V

    if-eqz v5, :cond_0

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/String;->length()I
    :try_end_3
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_a
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_c
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    move-result v19

    if-nez v19, :cond_4

    :cond_0
    const/16 v19, 0x0

    if-eqz v12, :cond_1

    :try_start_4
    invoke-virtual {v12}, Ljava/io/FileReader;->close()V

    :cond_1
    if-eqz v15, :cond_2

    invoke-virtual {v15}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    :cond_2
    :goto_2
    return v19

    :catch_0
    move-exception v10

    const-string/jumbo v19, "AudioService"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v21, "Error in Thread.sleep() : "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_3
    :try_start_5
    new-instance v7, Ljava/lang/String;

    const/16 v19, 0x0

    move/from16 v0, v19

    move/from16 v1, v18

    invoke-direct {v7, v4, v0, v1}, Ljava/lang/String;-><init>([CII)V
    :try_end_5
    .catch Ljava/io/FileNotFoundException; {:try_start_5 .. :try_end_5} :catch_9
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_b
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    move-object v6, v7

    goto :goto_1

    :catch_1
    move-exception v9

    invoke-virtual {v9}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    :cond_4
    :try_start_6
    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    const/4 v13, 0x0

    :goto_3
    sget-object v19, Lcom/android/server/audio/AudioService;->DOCK_DEVICE_NAME:[Ljava/lang/String;

    move-object/from16 v0, v19

    array-length v0, v0

    move/from16 v19, v0

    move/from16 v0, v19

    if-ge v13, v0, :cond_5

    if-eqz v17, :cond_8

    :cond_5
    const-string/jumbo v19, "AudioService"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v21, "isSmartDockString = "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catch Ljava/io/FileNotFoundException; {:try_start_6 .. :try_end_6} :catch_a
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_c
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    if-eqz v17, :cond_a

    const/16 v19, 0x1

    if-eqz v12, :cond_6

    :try_start_7
    invoke-virtual {v12}, Ljava/io/FileReader;->close()V

    :cond_6
    if-eqz v15, :cond_7

    invoke-virtual {v15}, Ljava/io/BufferedReader;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_2

    :cond_7
    :goto_4
    return v19

    :cond_8
    :try_start_8
    sget-object v19, Lcom/android/server/audio/AudioService;->DOCK_DEVICE_NAME:[Ljava/lang/String;

    aget-object v19, v19, v13

    move-object/from16 v0, v19

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_8
    .catch Ljava/io/FileNotFoundException; {:try_start_8 .. :try_end_8} :catch_a
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_c
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    move-result v19

    if-eqz v19, :cond_9

    const/16 v17, 0x1

    :cond_9
    add-int/lit8 v13, v13, 0x1

    goto :goto_3

    :catch_2
    move-exception v9

    invoke-virtual {v9}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_4

    :cond_a
    move-object v14, v15

    :cond_b
    if-eqz v12, :cond_c

    :try_start_9
    invoke-virtual {v12}, Ljava/io/FileReader;->close()V

    :cond_c
    if-eqz v14, :cond_d

    invoke-virtual {v14}, Ljava/io/BufferedReader;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_3

    :cond_d
    :goto_5
    move-object v11, v12

    :cond_e
    :goto_6
    const/16 v19, 0x0

    return v19

    :catch_3
    move-exception v9

    invoke-virtual {v9}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_5

    :catch_4
    move-exception v10

    :goto_7
    :try_start_a
    const-string/jumbo v19, "AudioService"

    const-string/jumbo v20, ""

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-static {v0, v1, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    if-eqz v11, :cond_f

    :try_start_b
    invoke-virtual {v11}, Ljava/io/FileReader;->close()V

    :cond_f
    if-eqz v14, :cond_e

    invoke-virtual {v14}, Ljava/io/BufferedReader;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_5

    goto :goto_6

    :catch_5
    move-exception v9

    invoke-virtual {v9}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_6

    :catch_6
    move-exception v8

    :goto_8
    :try_start_c
    const-string/jumbo v19, "AudioService"

    const-string/jumbo v20, "checkSmartDock This kernel does not have wired headset support "

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    if-eqz v11, :cond_10

    :try_start_d
    invoke-virtual {v11}, Ljava/io/FileReader;->close()V

    :cond_10
    if-eqz v14, :cond_11

    invoke-virtual {v14}, Ljava/io/BufferedReader;->close()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_7

    :cond_11
    :goto_9
    return v16

    :catch_7
    move-exception v9

    invoke-virtual {v9}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_9

    :catchall_0
    move-exception v19

    :goto_a
    if-eqz v11, :cond_12

    :try_start_e
    invoke-virtual {v11}, Ljava/io/FileReader;->close()V

    :cond_12
    if-eqz v14, :cond_13

    invoke-virtual {v14}, Ljava/io/BufferedReader;->close()V
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_8

    :cond_13
    :goto_b
    throw v19

    :catch_8
    move-exception v9

    invoke-virtual {v9}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_b

    :catchall_1
    move-exception v19

    move-object v11, v12

    goto :goto_a

    :catchall_2
    move-exception v19

    move-object v14, v15

    move-object v11, v12

    goto :goto_a

    :catch_9
    move-exception v8

    move-object v11, v12

    goto :goto_8

    :catch_a
    move-exception v8

    move-object v14, v15

    move-object v11, v12

    goto :goto_8

    :catch_b
    move-exception v10

    move-object v11, v12

    goto :goto_7

    :catch_c
    move-exception v10

    move-object v14, v15

    move-object v11, v12

    goto :goto_7
.end method

.method private isStreamMutedByRingerMode(I)Z
    .locals 4

    const/4 v1, 0x0

    const/4 v0, 0x1

    iget-boolean v2, p0, Lcom/android/server/audio/AudioService;->mSystemReady:Z

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/server/audio/AudioService;->mNm:Landroid/app/NotificationManager;

    invoke-virtual {v2}, Landroid/app/NotificationManager;->getZenMode()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    const/4 v2, 0x3

    if-ne p1, v2, :cond_0

    return v0

    :cond_0
    iget v2, p0, Lcom/android/server/audio/AudioService;->mRingerModeMutedStreams:I

    shl-int v3, v0, p1

    and-int/2addr v2, v3

    if-eqz v2, :cond_1

    :goto_0
    return v0

    :cond_1
    move v0, v1

    goto :goto_0
.end method

.method private isTalkBackEnabled()Z
    .locals 5

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/server/audio/AudioService;->mContentResolver:Landroid/content/ContentResolver;

    const-string/jumbo v3, "enabled_accessibility_services"

    const/4 v4, -0x2

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string/jumbo v2, "(?i).*com.samsung.android.app.talkback.TalkBackService.*"

    invoke-virtual {v0, v2}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string/jumbo v2, "(?i).*com.google.android.marvin.talkback.TalkBackService.*"

    invoke-virtual {v0, v2}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v1

    :cond_0
    :goto_0
    const-string/jumbo v2, "AudioService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Talkback state is changed : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_1
    const/4 v1, 0x1

    goto :goto_0
.end method

.method private isUSBCheckStreamActive()Z
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x4

    invoke-static {v1, v0}, Landroid/media/AudioSystem;->isStreamActive(II)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x5

    invoke-static {v1, v0}, Landroid/media/AudioSystem;->isStreamActive(II)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x2

    invoke-static {v1, v0}, Landroid/media/AudioSystem;->isStreamActive(II)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private killBackgroundUserProcessesWithRecordAudioPermission(Landroid/content/pm/UserInfo;)V
    .locals 12

    const/4 v10, 0x0

    iget-object v8, p0, Lcom/android/server/audio/AudioService;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    const/4 v1, 0x0

    invoke-virtual {p1}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    move-result v8

    if-nez v8, :cond_0

    const-class v8, Landroid/app/ActivityManagerInternal;

    invoke-static {v8}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/app/ActivityManagerInternal;

    iget v9, p1, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v8, v9}, Landroid/app/ActivityManagerInternal;->getHomeActivityForUser(I)Landroid/content/ComponentName;

    move-result-object v1

    :cond_0
    const/4 v8, 0x1

    new-array v4, v8, [Ljava/lang/String;

    const-string/jumbo v8, "android.permission.RECORD_AUDIO"

    aput-object v8, v4, v10

    :try_start_0
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v8

    iget v9, p1, Landroid/content/pm/UserInfo;->id:I

    const/4 v10, 0x0

    invoke-interface {v8, v4, v10, v9}, Landroid/content/pm/IPackageManager;->getPackagesHoldingPermissions([Ljava/lang/String;II)Landroid/content/pm/ParceledListSlice;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v8

    add-int/lit8 v2, v8, -0x1

    :goto_0
    if-ltz v2, :cond_4

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/PackageInfo;

    iget-object v8, v5, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-nez v8, :cond_2

    :cond_1
    :goto_1
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v8, Landroid/util/AndroidRuntimeException;

    invoke-direct {v8, v0}, Landroid/util/AndroidRuntimeException;-><init>(Ljava/lang/Exception;)V

    throw v8

    :cond_2
    iget-object v8, v5, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v8, v8, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v8}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v8

    const/16 v9, 0x2710

    if-lt v8, v9, :cond_1

    const-string/jumbo v8, "android.permission.INTERACT_ACROSS_USERS"

    iget-object v9, v5, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v6, v8, v9}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result v8

    if-eqz v8, :cond_1

    if-eqz v1, :cond_3

    iget-object v8, v5, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    iget-object v8, v5, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v8}, Landroid/content/pm/ApplicationInfo;->isSystemApp()Z

    move-result v8

    if-nez v8, :cond_1

    :cond_3
    :try_start_1
    iget-object v8, v5, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v7, v8, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v8

    invoke-static {v7}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v9

    invoke-static {v7}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v10

    const-string/jumbo v11, "killBackgroundUserProcessesWithAudioRecordPermission"

    invoke-interface {v8, v9, v10, v11}, Landroid/app/IActivityManager;->killUid(IILjava/lang/String;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    const-string/jumbo v8, "AudioService"

    const-string/jumbo v9, "Error calling killUid"

    invoke-static {v8, v9, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    :cond_4
    return-void
.end method

.method private loadTouchSoundAssetDefaults()V
    .locals 5

    const/4 v4, 0x0

    sget-object v1, Lcom/android/server/audio/AudioService;->SOUND_EFFECT_FILES:Ljava/util/List;

    const-string/jumbo v2, "Effect_Tick.ogg"

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v0, 0x0

    :goto_0
    const/16 v1, 0x10

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/android/server/audio/AudioService;->SOUND_EFFECT_FILES_MAP:[[I

    aget-object v1, v1, v0

    aput v4, v1, v4

    iget-object v1, p0, Lcom/android/server/audio/AudioService;->SOUND_EFFECT_FILES_MAP:[[I

    aget-object v1, v1, v0

    const/4 v2, -0x1

    const/4 v3, 0x1

    aput v2, v1, v3

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private loadTouchSoundAssets()V
    .locals 18

    const/4 v13, 0x0

    sget-object v15, Lcom/android/server/audio/AudioService;->SOUND_EFFECT_FILES:Ljava/util/List;

    invoke-interface {v15}, Ljava/util/List;->isEmpty()Z

    move-result v15

    if-nez v15, :cond_0

    return-void

    :cond_0
    invoke-direct/range {p0 .. p0}, Lcom/android/server/audio/AudioService;->loadTouchSoundAssetDefaults()V

    :try_start_0
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/audio/AudioService;->mContext:Landroid/content/Context;

    invoke-virtual {v15}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    const v16, 0x1110001

    invoke-virtual/range {v15 .. v16}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v13

    const-string/jumbo v15, "audio_assets"

    invoke-static {v13, v15}, Lcom/android/internal/util/XmlUtils;->beginDocument(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V

    const-string/jumbo v15, "version"

    const/16 v16, 0x0

    move-object/from16 v0, v16

    invoke-interface {v13, v0, v15}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    const/4 v11, 0x0

    const-string/jumbo v15, "1.0"

    invoke-virtual {v15, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_2

    :cond_1
    invoke-static {v13}, Lcom/android/internal/util/XmlUtils;->nextElement(Lorg/xmlpull/v1/XmlPullParser;)V

    invoke-interface {v13}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_4

    :goto_0
    if-eqz v11, :cond_2

    invoke-static {v13}, Lcom/android/internal/util/XmlUtils;->nextElement(Lorg/xmlpull/v1/XmlPullParser;)V

    invoke-interface {v13}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v5

    if-nez v5, :cond_5

    :cond_2
    if-eqz v13, :cond_3

    invoke-interface {v13}, Landroid/content/res/XmlResourceParser;->close()V

    :cond_3
    :goto_1
    return-void

    :cond_4
    :try_start_1
    const-string/jumbo v15, "group"

    invoke-virtual {v5, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_1

    const-string/jumbo v15, "name"

    const/16 v16, 0x0

    move-object/from16 v0, v16

    invoke-interface {v13, v0, v15}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    const-string/jumbo v15, "touch_sounds"

    invoke-virtual {v15, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_1

    const/4 v11, 0x1

    goto :goto_0

    :cond_5
    const-string/jumbo v15, "asset"

    invoke-virtual {v5, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_2

    const-string/jumbo v15, "id"

    const/16 v16, 0x0

    move-object/from16 v0, v16

    invoke-interface {v13, v0, v15}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    const-string/jumbo v15, "file"

    const/16 v16, 0x0

    move-object/from16 v0, v16

    invoke-interface {v13, v0, v15}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_1
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v7

    :try_start_2
    const-class v15, Landroid/media/AudioManager;

    invoke-virtual {v15, v10}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v6

    const/4 v15, 0x0

    invoke-virtual {v6, v15}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v8

    const/16 v15, 0x64

    if-lt v8, v15, :cond_6

    add-int/lit8 v15, v8, -0x64

    add-int/lit8 v8, v15, 0xa

    :cond_6
    :try_start_3
    sget-object v15, Lcom/android/server/audio/AudioService;->SOUND_EFFECT_FILES:Ljava/util/List;

    invoke-interface {v15, v7}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v9

    const/4 v15, -0x1

    if-ne v9, v15, :cond_7

    sget-object v15, Lcom/android/server/audio/AudioService;->SOUND_EFFECT_FILES:Ljava/util/List;

    invoke-interface {v15}, Ljava/util/List;->size()I

    move-result v9

    sget-object v15, Lcom/android/server/audio/AudioService;->SOUND_EFFECT_FILES:Ljava/util/List;

    invoke-interface {v15, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_7
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/audio/AudioService;->SOUND_EFFECT_FILES_MAP:[[I

    aget-object v15, v15, v8

    const/16 v16, 0x0

    aput v9, v15, v16
    :try_end_3
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v1

    :try_start_4
    const-string/jumbo v15, "AudioService"

    const-string/jumbo v16, "audio assets file not found"

    move-object/from16 v0, v16

    invoke-static {v15, v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    if-eqz v13, :cond_3

    invoke-interface {v13}, Landroid/content/res/XmlResourceParser;->close()V

    goto/16 :goto_1

    :catch_1
    move-exception v3

    :try_start_5
    const-string/jumbo v15, "AudioService"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v17, "Invalid touch sound ID: "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_5 .. :try_end_5} :catch_2
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto/16 :goto_0

    :catch_2
    move-exception v4

    :try_start_6
    const-string/jumbo v15, "AudioService"

    const-string/jumbo v16, "XML parser exception reading touch sound assets"

    move-object/from16 v0, v16

    invoke-static {v15, v0, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    if-eqz v13, :cond_3

    invoke-interface {v13}, Landroid/content/res/XmlResourceParser;->close()V

    goto/16 :goto_1

    :catch_3
    move-exception v2

    :try_start_7
    const-string/jumbo v15, "AudioService"

    const-string/jumbo v16, "I/O exception reading touch sound assets"

    move-object/from16 v0, v16

    invoke-static {v15, v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    if-eqz v13, :cond_3

    invoke-interface {v13}, Landroid/content/res/XmlResourceParser;->close()V

    goto/16 :goto_1

    :catchall_0
    move-exception v15

    if-eqz v13, :cond_8

    invoke-interface {v13}, Landroid/content/res/XmlResourceParser;->close()V

    :cond_8
    throw v15
.end method

.method private makeA2dpDeviceAvailable(Ljava/lang/String;Ljava/lang/String;)V
    .locals 8

    const/4 v7, 0x1

    const/4 v1, 0x0

    const/16 v3, 0x80

    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mStreamStates:[Lcom/android/server/audio/AudioService$VolumeStreamState;

    const/4 v2, 0x3

    aget-object v5, v0, v2

    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mAudioHandler:Lcom/android/server/audio/AudioService$AudioHandler;

    const/4 v2, 0x2

    move v4, v1

    move v6, v1

    invoke-static/range {v0 .. v6}, Lcom/android/server/audio/AudioService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    invoke-virtual {p0, v7}, Lcom/android/server/audio/AudioService;->setBluetoothA2dpOnInt(Z)V

    invoke-static {v3, v7, p1, p2}, Landroid/media/AudioSystem;->setDeviceConnectionState(IILjava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v0, "A2dpSuspended=false"

    invoke-static {v0}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mConnectedDevices:Landroid/util/ArrayMap;

    invoke-direct {p0, v3, p1}, Lcom/android/server/audio/AudioService;->makeDeviceListKey(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/android/server/audio/AudioService$DeviceListSpec;

    invoke-direct {v2, p0, v3, p2, p1}, Lcom/android/server/audio/AudioService$DeviceListSpec;-><init>(Lcom/android/server/audio/AudioService;ILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcom/android/server/audio/AudioService$DeviceListSpec;

    invoke-direct {v0, p0, v3, p2, p1}, Lcom/android/server/audio/AudioService$DeviceListSpec;-><init>(Lcom/android/server/audio/AudioService;ILjava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/audio/AudioService;->mLastConnectedDevice:Lcom/android/server/audio/AudioService$DeviceListSpec;

    return-void
.end method

.method private makeA2dpDeviceUnavailableLater(Ljava/lang/String;I)V
    .locals 4

    const-string/jumbo v1, "A2dpSuspended=true"

    invoke-static {v1}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/server/audio/AudioService;->mConnectedDevices:Landroid/util/ArrayMap;

    const/16 v2, 0x80

    invoke-direct {p0, v2, p1}, Lcom/android/server/audio/AudioService;->makeDeviceListKey(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/android/server/audio/AudioService;->mAudioHandler:Lcom/android/server/audio/AudioService$AudioHandler;

    const/4 v2, 0x6

    invoke-virtual {v1, v2, p1}, Lcom/android/server/audio/AudioService$AudioHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/audio/AudioService;->mAudioHandler:Lcom/android/server/audio/AudioService$AudioHandler;

    int-to-long v2, p2

    invoke-virtual {v1, v0, v2, v3}, Lcom/android/server/audio/AudioService$AudioHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void
.end method

.method private makeA2dpDeviceUnavailableNow(Ljava/lang/String;)V
    .locals 8

    const/16 v4, 0x80

    const/4 v3, 0x0

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mA2dpAvrcpLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    :try_start_0
    iput-boolean v1, p0, Lcom/android/server/audio/AudioService;->mAvrcpAbsVolSupported:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    const-string/jumbo v0, ""

    invoke-static {v4, v2, p1, v0}, Landroid/media/AudioSystem;->setDeviceConnectionState(IILjava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mConnectedDevices:Landroid/util/ArrayMap;

    invoke-direct {p0, v4, p1}, Lcom/android/server/audio/AudioService;->makeDeviceListKey(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mLastConnectedDevice:Lcom/android/server/audio/AudioService$DeviceListSpec;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mLastConnectedDevice:Lcom/android/server/audio/AudioService$DeviceListSpec;

    iget v0, v0, Lcom/android/server/audio/AudioService$DeviceListSpec;->mDeviceType:I

    if-ne v0, v4, :cond_0

    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mLastConnectedDevice:Lcom/android/server/audio/AudioService$DeviceListSpec;

    iget-object v0, v0, Lcom/android/server/audio/AudioService$DeviceListSpec;->mDeviceAddress:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iput-object v3, p0, Lcom/android/server/audio/AudioService;->mLastConnectedDevice:Lcom/android/server/audio/AudioService$DeviceListSpec;

    :cond_0
    invoke-direct {p0, v4}, Lcom/android/server/audio/AudioService;->checkDeviceConnected(I)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v7, p0, Lcom/android/server/audio/AudioService;->mCurAudioRoutes:Landroid/media/AudioRoutesInfo;

    monitor-enter v7

    :try_start_1
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mCurAudioRoutes:Landroid/media/AudioRoutesInfo;

    iget-object v0, v0, Landroid/media/AudioRoutesInfo;->bluetoothName:Ljava/lang/CharSequence;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mCurAudioRoutes:Landroid/media/AudioRoutesInfo;

    const/4 v1, 0x0

    iput-object v1, v0, Landroid/media/AudioRoutesInfo;->bluetoothName:Ljava/lang/CharSequence;

    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mAudioHandler:Lcom/android/server/audio/AudioService$AudioHandler;

    const/16 v1, 0xc

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static/range {v0 .. v6}, Lcom/android/server/audio/AudioService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :cond_1
    monitor-exit v7

    :cond_2
    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1

    :catchall_1
    move-exception v0

    monitor-exit v7

    throw v0
.end method

.method private makeA2dpSrcAvailable(Ljava/lang/String;)V
    .locals 5

    const/high16 v4, -0x7ffe0000

    const-string/jumbo v0, ""

    const/4 v1, 0x1

    invoke-static {v4, v1, p1, v0}, Landroid/media/AudioSystem;->setDeviceConnectionState(IILjava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mConnectedDevices:Landroid/util/ArrayMap;

    invoke-direct {p0, v4, p1}, Lcom/android/server/audio/AudioService;->makeDeviceListKey(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/android/server/audio/AudioService$DeviceListSpec;

    const-string/jumbo v3, ""

    invoke-direct {v2, p0, v4, v3, p1}, Lcom/android/server/audio/AudioService$DeviceListSpec;-><init>(Lcom/android/server/audio/AudioService;ILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private makeA2dpSrcUnavailable(Ljava/lang/String;)V
    .locals 3

    const/high16 v2, -0x7ffe0000

    const-string/jumbo v0, ""

    const/4 v1, 0x0

    invoke-static {v2, v1, p1, v0}, Landroid/media/AudioSystem;->setDeviceConnectionState(IILjava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mConnectedDevices:Landroid/util/ArrayMap;

    invoke-direct {p0, v2, p1}, Lcom/android/server/audio/AudioService;->makeDeviceListKey(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static makeAlsaAddressString(II)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "card="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ";device="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ";"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private makeDeviceListKey(ILjava/lang/String;)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private muteRingerModeStreams()V
    .locals 18

    invoke-static {}, Landroid/media/AudioSystem;->getNumStreamTypes()I

    move-result v11

    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/server/audio/AudioService;->mRingerMode:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_0

    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/server/audio/AudioService;->mRingerMode:I

    if-nez v1, :cond_1

    const/4 v12, 0x1

    :goto_0
    add-int/lit8 v14, v11, -0x1

    :goto_1
    if-ltz v14, :cond_9

    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/android/server/audio/AudioService;->isStreamMutedByRingerMode(I)Z

    move-result v10

    if-eqz v12, :cond_2

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/android/server/audio/AudioService;->isStreamAffectedByRingerMode(I)Z

    move-result v13

    :goto_2
    if-ne v10, v13, :cond_3

    :goto_3
    add-int/lit8 v14, v14, -0x1

    goto :goto_1

    :cond_0
    const/4 v12, 0x1

    goto :goto_0

    :cond_1
    const/4 v12, 0x0

    goto :goto_0

    :cond_2
    const/4 v13, 0x0

    goto :goto_2

    :cond_3
    if-nez v13, :cond_8

    const/4 v8, 0x2

    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/android/server/audio/AudioService;->mIsDefaultStreamNotification:Z

    if-eqz v1, :cond_4

    const/4 v8, 0x5

    :cond_4
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/audio/AudioService;->mStreamVolumeAlias:[I

    aget v1, v1, v14

    if-ne v1, v8, :cond_7

    const-class v17, Lcom/android/server/audio/AudioService$VolumeStreamState;

    monitor-enter v17

    :try_start_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/audio/AudioService;->mStreamStates:[Lcom/android/server/audio/AudioService$VolumeStreamState;

    aget-object v16, v1, v14

    const/4 v9, 0x0

    :goto_4
    invoke-static/range {v16 .. v16}, Lcom/android/server/audio/AudioService$VolumeStreamState;->-get0(Lcom/android/server/audio/AudioService$VolumeStreamState;)Landroid/util/SparseIntArray;

    move-result-object v1

    invoke-virtual {v1}, Landroid/util/SparseIntArray;->size()I

    move-result v1

    if-ge v9, v1, :cond_6

    invoke-static/range {v16 .. v16}, Lcom/android/server/audio/AudioService$VolumeStreamState;->-get0(Lcom/android/server/audio/AudioService$VolumeStreamState;)Landroid/util/SparseIntArray;

    move-result-object v1

    invoke-virtual {v1, v9}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v4

    invoke-static/range {v16 .. v16}, Lcom/android/server/audio/AudioService$VolumeStreamState;->-get0(Lcom/android/server/audio/AudioService$VolumeStreamState;)Landroid/util/SparseIntArray;

    move-result-object v1

    invoke-virtual {v1, v9}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v15

    if-nez v15, :cond_5

    const-string/jumbo v1, "AudioService"

    const/16 v2, 0xa

    move-object/from16 v0, v16

    invoke-virtual {v0, v2, v4, v1}, Lcom/android/server/audio/AudioService$VolumeStreamState;->setIndex(IILjava/lang/String;)Z

    move-object/from16 v0, v16

    invoke-virtual {v0, v4}, Lcom/android/server/audio/AudioService$VolumeStreamState;->getIndex(I)I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v14, v2, v1, v3}, Lcom/android/server/audio/AudioService;->sendVolumeUpdate(IIII)V

    :cond_5
    add-int/lit8 v9, v9, 0x1

    goto :goto_4

    :cond_6
    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/android/server/audio/AudioService;->getDeviceForStream(I)I

    move-result v4

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/audio/AudioService;->mAudioHandler:Lcom/android/server/audio/AudioService$AudioHandler;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/audio/AudioService;->mStreamStates:[Lcom/android/server/audio/AudioService$VolumeStreamState;

    aget-object v6, v2, v14

    const/4 v2, 0x1

    const/4 v3, 0x2

    const/4 v5, 0x0

    const/16 v7, 0x1f4

    invoke-static/range {v1 .. v7}, Lcom/android/server/audio/AudioService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v17

    :cond_7
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/audio/AudioService;->mStreamStates:[Lcom/android/server/audio/AudioService$VolumeStreamState;

    aget-object v1, v1, v14

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/server/audio/AudioService$VolumeStreamState;->mute(Z)V

    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/server/audio/AudioService;->mRingerModeMutedStreams:I

    const/4 v2, 0x1

    shl-int/2addr v2, v14

    not-int v2, v2

    and-int/2addr v1, v2

    move-object/from16 v0, p0

    iput v1, v0, Lcom/android/server/audio/AudioService;->mRingerModeMutedStreams:I

    goto/16 :goto_3

    :catchall_0
    move-exception v1

    monitor-exit v17

    throw v1

    :cond_8
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/audio/AudioService;->mStreamStates:[Lcom/android/server/audio/AudioService$VolumeStreamState;

    aget-object v1, v1, v14

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/server/audio/AudioService$VolumeStreamState;->mute(Z)V

    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/server/audio/AudioService;->mRingerModeMutedStreams:I

    const/4 v2, 0x1

    shl-int/2addr v2, v14

    or-int/2addr v1, v2

    move-object/from16 v0, p0

    iput v1, v0, Lcom/android/server/audio/AudioService;->mRingerModeMutedStreams:I

    goto/16 :goto_3

    :cond_9
    return-void
.end method

.method private observeDevicesForStreams(I)V
    .locals 4

    const-class v2, Lcom/android/server/audio/AudioService$VolumeStreamState;

    monitor-enter v2

    const/4 v0, 0x0

    :goto_0
    :try_start_0
    iget-object v1, p0, Lcom/android/server/audio/AudioService;->mStreamStates:[Lcom/android/server/audio/AudioService$VolumeStreamState;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    if-eq v0, p1, :cond_0

    iget-object v1, p0, Lcom/android/server/audio/AudioService;->mStreamStates:[Lcom/android/server/audio/AudioService$VolumeStreamState;

    aget-object v1, v1, v0

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Lcom/android/server/audio/AudioService$VolumeStreamState;->observeDevicesForStream_syncVSS(Z)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    monitor-exit v2

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method private onBroadcastScoConnectionState(I)V
    .locals 3

    iget v1, p0, Lcom/android/server/audio/AudioService;->mScoConnectionState:I

    if-eq p1, v1, :cond_0

    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "android.media.ACTION_SCO_AUDIO_STATE_UPDATED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v1, "android.media.extra.SCO_AUDIO_STATE"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string/jumbo v1, "android.media.extra.SCO_AUDIO_PREVIOUS_STATE"

    iget v2, p0, Lcom/android/server/audio/AudioService;->mScoConnectionState:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-direct {p0, v0}, Lcom/android/server/audio/AudioService;->sendStickyBroadcastToAll(Landroid/content/Intent;)V

    iput p1, p0, Lcom/android/server/audio/AudioService;->mScoConnectionState:I

    :cond_0
    return-void
.end method

.method private onCheckMusicActive(Ljava/lang/String;)V
    .locals 11

    const v10, 0xea60

    iget-object v9, p0, Lcom/android/server/audio/AudioService;->mSafeMediaVolumeState:Ljava/lang/Integer;

    monitor-enter v9

    :try_start_0
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mSafeMediaVolumeState:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x3

    invoke-direct {p0, v0}, Lcom/android/server/audio/AudioService;->getDeviceForStream(I)I

    move-result v7

    and-int/lit16 v0, v7, 0x18c

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mAudioHandler:Lcom/android/server/audio/AudioService$AudioHandler;

    const/16 v1, 0xe

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const v6, 0xea60

    move-object v5, p1

    invoke-static/range {v0 .. v6}, Lcom/android/server/audio/AudioService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mStreamStates:[Lcom/android/server/audio/AudioService$VolumeStreamState;

    const/4 v1, 0x3

    aget-object v0, v0, v1

    invoke-virtual {v0, v7}, Lcom/android/server/audio/AudioService$VolumeStreamState;->getIndex(I)I

    move-result v8

    const/4 v0, 0x3

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/media/AudioSystem;->isStreamActive(II)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/server/audio/AudioService;->mSafeMediaVolumeIndex:I

    if-le v8, v0, :cond_0

    iget v0, p0, Lcom/android/server/audio/AudioService;->mMusicActiveMs:I

    add-int/2addr v0, v10

    iput v0, p0, Lcom/android/server/audio/AudioService;->mMusicActiveMs:I

    iget v0, p0, Lcom/android/server/audio/AudioService;->mMusicActiveMs:I

    const v1, 0x44aa200

    if-le v0, v1, :cond_0

    const/4 v0, 0x1

    invoke-direct {p0, v0, p1}, Lcom/android/server/audio/AudioService;->setSafeMediaVolumeEnabled(ZLjava/lang/String;)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/audio/AudioService;->mMusicActiveMs:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit v9

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v9

    throw v0
.end method

.method private onCheckMuteInterval(Ljava/lang/String;)V
    .locals 7

    const v6, 0xea60

    const/4 v2, 0x0

    iget v0, p0, Lcom/android/server/audio/AudioService;->mMuteIntervalMs:I

    sub-int/2addr v0, v6

    iput v0, p0, Lcom/android/server/audio/AudioService;->mMuteIntervalMs:I

    iget v0, p0, Lcom/android/server/audio/AudioService;->mMuteIntervalMs:I

    if-gtz v0, :cond_1

    iput v2, p0, Lcom/android/server/audio/AudioService;->mMuteIntervalMs:I

    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "mode_ringer_time_on"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/android/server/audio/AudioService;->mPrevRingerMode:I

    invoke-direct {p0, v0, p1, v2}, Lcom/android/server/audio/AudioService;->setRingerMode(ILjava/lang/String;Z)V

    :cond_0
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "mode_ringer_time_on"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mAudioHandler:Lcom/android/server/audio/AudioService$AudioHandler;

    const/16 v1, 0x73

    move v3, v2

    move v4, v2

    move-object v5, p1

    invoke-static/range {v0 .. v6}, Lcom/android/server/audio/AudioService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    goto :goto_0
.end method

.method private onConfigureSafeVolume(ZLjava/lang/String;)V
    .locals 11

    const/4 v2, 0x2

    iget-object v10, p0, Lcom/android/server/audio/AudioService;->mSafeMediaVolumeState:Ljava/lang/Integer;

    monitor-enter v10

    :try_start_0
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v7, v0, Landroid/content/res/Configuration;->mcc:I

    iget v0, p0, Lcom/android/server/audio/AudioService;->mMcc:I

    if-ne v0, v7, :cond_0

    iget v0, p0, Lcom/android/server/audio/AudioService;->mMcc:I

    if-nez v0, :cond_3

    if-eqz p1, :cond_3

    :cond_0
    const/16 v0, 0x5a

    iput v0, p0, Lcom/android/server/audio/AudioService;->mSafeMediaVolumeIndex:I

    const/4 v9, 0x1

    const-string/jumbo v0, "audio.safemedia.bypass"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v8

    invoke-direct {p0}, Lcom/android/server/audio/AudioService;->isFactoryMode()Z

    move-result v8

    if-eqz v9, :cond_1

    if-eqz v8, :cond_4

    :cond_1
    const/4 v3, 0x1

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/audio/AudioService;->mSafeMediaVolumeState:Ljava/lang/Integer;

    :cond_2
    :goto_0
    iput v7, p0, Lcom/android/server/audio/AudioService;->mMcc:I

    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mAudioHandler:Lcom/android/server/audio/AudioService$AudioHandler;

    const/16 v1, 0x12

    const/4 v2, 0x2

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static/range {v0 .. v6}, Lcom/android/server/audio/AudioService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_3
    monitor-exit v10

    return-void

    :cond_4
    const/4 v3, 0x3

    :try_start_1
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mSafeMediaVolumeState:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-eq v0, v2, :cond_2

    const/4 v0, 0x3

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/audio/AudioService;->mSafeMediaVolumeState:Ljava/lang/Integer;

    const-string/jumbo v0, "AudioService"

    invoke-direct {p0, v0}, Lcom/android/server/audio/AudioService;->enforceSafeMediaVolume(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v10

    throw v0
.end method

.method private onDynPolicyMixStateUpdate(Ljava/lang/String;I)V
    .locals 9

    sget-boolean v5, Lcom/android/server/audio/AudioService;->DEBUG_AP:Z

    if-eqz v5, :cond_0

    const-string/jumbo v5, "AudioService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "onDynamicPolicyMixStateUpdate("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, ", "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, ")"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v6, p0, Lcom/android/server/audio/AudioService;->mAudioPolicies:Ljava/util/HashMap;

    monitor-enter v6

    :try_start_0
    iget-object v5, p0, Lcom/android/server/audio/AudioService;->mAudioPolicies:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/audio/AudioService$AudioPolicyProxy;

    invoke-virtual {v3}, Lcom/android/server/audio/AudioService$AudioPolicyProxy;->getMixes()Ljava/util/ArrayList;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/audiopolicy/AudioMix;

    invoke-virtual {v1}, Landroid/media/audiopolicy/AudioMix;->getRegistration()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v5

    if-eqz v5, :cond_2

    :try_start_1
    iget-object v5, v3, Lcom/android/server/audio/AudioService$AudioPolicyProxy;->mPolicyCallback:Landroid/media/audiopolicy/IAudioPolicyCallback;

    invoke-interface {v5, p1, p2}, Landroid/media/audiopolicy/IAudioPolicyCallback;->notifyMixStateUpdate(Ljava/lang/String;I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    monitor-exit v6

    return-void

    :catch_0
    move-exception v0

    :try_start_2
    const-string/jumbo v5, "AudioService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Can\'t call notifyMixStateUpdate() on IAudioPolicyCallback "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, v3, Lcom/android/server/audio/AudioService$AudioPolicyProxy;->mPolicyCallback:Landroid/media/audiopolicy/IAudioPolicyCallback;

    invoke-interface {v8}, Landroid/media/audiopolicy/IAudioPolicyCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v5

    monitor-exit v6

    throw v5

    :cond_3
    monitor-exit v6

    return-void
.end method

.method private onSendBecomingNoisyIntent(I)V
    .locals 4

    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v2, "android.media.AUDIO_BECOMING_NOISY_SEC"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v1}, Lcom/android/server/audio/AudioService;->sendBroadcastToAll(Landroid/content/Intent;)V

    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v2, "android.media.AUDIO_BECOMING_NOISY"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    and-int/lit16 v2, p1, 0x380

    if-eqz v2, :cond_0

    const-string/jumbo v2, "android.bluetooth.a2dp.extra.DISCONNECT_A2DP"

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    :cond_0
    invoke-direct {p0, v0}, Lcom/android/server/audio/AudioService;->sendBroadcastToAll(Landroid/content/Intent;)V

    return-void
.end method

.method private onSendBecomingNoisyIntent(II)V
    .locals 4

    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v2, "android.media.AUDIO_BECOMING_NOISY_SEC"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/audio/AudioService;->mContext:Landroid/content/Context;

    new-instance v3, Landroid/os/UserHandle;

    invoke-direct {v3, p2}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v2, v1, v3}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v2, "android.media.AUDIO_BECOMING_NOISY"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    and-int/lit16 v2, p1, 0x380

    if-eqz v2, :cond_0

    const-string/jumbo v2, "android.bluetooth.a2dp.extra.DISCONNECT_A2DP"

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    :cond_0
    iget-object v2, p0, Lcom/android/server/audio/AudioService;->mContext:Landroid/content/Context;

    new-instance v3, Landroid/os/UserHandle;

    invoke-direct {v3, p2}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v2, v0, v3}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    return-void
.end method

.method private onSetA2dpSinkConnectionState(Landroid/bluetooth/BluetoothDevice;I)V
    .locals 17

    sget-boolean v2, Lcom/android/server/audio/AudioService;->DEBUG_VOL:Z

    if-eqz v2, :cond_0

    const-string/jumbo v2, "AudioService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "onSetA2dpSinkConnectionState btDevice="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "state="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p2

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    if-nez p1, :cond_1

    return-void

    :cond_1
    invoke-virtual/range {p1 .. p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Landroid/bluetooth/BluetoothAdapter;->checkBluetoothAddress(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string/jumbo v9, ""

    :cond_2
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/audio/AudioService;->mConnectedDevices:Landroid/util/ArrayMap;

    monitor-enter v15

    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/audio/AudioService;->mStreamStates:[Lcom/android/server/audio/AudioService$VolumeStreamState;

    const/4 v3, 0x3

    aget-object v2, v2, v3

    const/4 v3, 0x3

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/server/audio/AudioService;->getDeviceForStream(I)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/server/audio/AudioService$VolumeStreamState;->getIndex(I)I

    move-result v14

    invoke-virtual/range {p1 .. p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x80

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v2}, Lcom/android/server/audio/AudioService;->makeDeviceListKey(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/audio/AudioService;->mConnectedDevices:Landroid/util/ArrayMap;

    invoke-virtual {v2, v12}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/server/audio/AudioService$DeviceListSpec;

    if-eqz v10, :cond_6

    const/4 v11, 0x1

    :goto_0
    if-eqz v11, :cond_8

    const/4 v2, 0x2

    move/from16 v0, p2

    if-eq v0, v2, :cond_8

    invoke-virtual/range {p1 .. p1}, Landroid/bluetooth/BluetoothDevice;->isBluetoothDock()Z

    move-result v2

    if-eqz v2, :cond_7

    if-nez p2, :cond_3

    const/16 v2, 0x1f40

    move-object/from16 v0, p0

    invoke-direct {v0, v9, v2}, Lcom/android/server/audio/AudioService;->makeA2dpDeviceUnavailableLater(Ljava/lang/String;I)V

    :cond_3
    :goto_1
    const/16 v2, 0x80

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/server/audio/AudioService;->checkDeviceConnected(I)Z

    move-result v2

    if-nez v2, :cond_5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/audio/AudioService;->mCurAudioRoutes:Landroid/media/AudioRoutesInfo;

    move-object/from16 v16, v0

    monitor-enter v16
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/audio/AudioService;->mCurAudioRoutes:Landroid/media/AudioRoutesInfo;

    iget-object v2, v2, Landroid/media/AudioRoutesInfo;->bluetoothName:Ljava/lang/CharSequence;

    if-eqz v2, :cond_4

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/audio/AudioService;->mCurAudioRoutes:Landroid/media/AudioRoutesInfo;

    const/4 v3, 0x0

    iput-object v3, v2, Landroid/media/AudioRoutesInfo;->bluetoothName:Ljava/lang/CharSequence;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/audio/AudioService;->mAudioHandler:Lcom/android/server/audio/AudioService$AudioHandler;

    const/16 v3, 0xc

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-static/range {v2 .. v8}, Lcom/android/server/audio/AudioService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :cond_4
    :try_start_2
    monitor-exit v16

    :cond_5
    :goto_2
    invoke-direct/range {p0 .. p0}, Lcom/android/server/audio/AudioService;->checkAndSendEarCareInfo()V

    invoke-direct/range {p0 .. p0}, Lcom/android/server/audio/AudioService;->isFMRadioRecording()Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v2

    if-eqz v2, :cond_c

    monitor-exit v15

    return-void

    :cond_6
    const/4 v11, 0x0

    goto :goto_0

    :cond_7
    :try_start_3
    move-object/from16 v0, p0

    invoke-direct {v0, v9}, Lcom/android/server/audio/AudioService;->makeA2dpDeviceUnavailableNow(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v2

    monitor-exit v15

    throw v2

    :catchall_1
    move-exception v2

    :try_start_4
    monitor-exit v16

    throw v2

    :cond_8
    if-nez v11, :cond_5

    const/4 v2, 0x2

    move/from16 v0, p2

    if-ne v0, v2, :cond_5

    invoke-virtual/range {p1 .. p1}, Landroid/bluetooth/BluetoothDevice;->isBluetoothDock()Z

    move-result v2

    if-eqz v2, :cond_b

    invoke-direct/range {p0 .. p0}, Lcom/android/server/audio/AudioService;->cancelA2dpDeviceTimeout()V

    move-object/from16 v0, p0

    iput-object v9, v0, Lcom/android/server/audio/AudioService;->mDockAddress:Ljava/lang/String;

    :cond_9
    :goto_3
    invoke-virtual/range {p1 .. p1}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-direct {v0, v9, v2}, Lcom/android/server/audio/AudioService;->makeA2dpDeviceAvailable(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/audio/AudioService;->mCurAudioRoutes:Landroid/media/AudioRoutesInfo;

    move-object/from16 v16, v0

    monitor-enter v16
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    invoke-virtual/range {p1 .. p1}, Landroid/bluetooth/BluetoothDevice;->getAliasName()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/audio/AudioService;->mCurAudioRoutes:Landroid/media/AudioRoutesInfo;

    iget-object v2, v2, Landroid/media/AudioRoutesInfo;->bluetoothName:Ljava/lang/CharSequence;

    invoke-static {v2, v13}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_a

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/audio/AudioService;->mCurAudioRoutes:Landroid/media/AudioRoutesInfo;

    iput-object v13, v2, Landroid/media/AudioRoutesInfo;->bluetoothName:Ljava/lang/CharSequence;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/audio/AudioService;->mAudioHandler:Lcom/android/server/audio/AudioService$AudioHandler;

    const/16 v3, 0xc

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-static/range {v2 .. v8}, Lcom/android/server/audio/AudioService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    :cond_a
    :try_start_6
    monitor-exit v16

    goto :goto_2

    :cond_b
    invoke-direct/range {p0 .. p0}, Lcom/android/server/audio/AudioService;->hasScheduledA2dpDockTimeout()Z

    move-result v2

    if-eqz v2, :cond_9

    invoke-direct/range {p0 .. p0}, Lcom/android/server/audio/AudioService;->cancelA2dpDeviceTimeout()V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/audio/AudioService;->mDockAddress:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/server/audio/AudioService;->makeA2dpDeviceUnavailableNow(Ljava/lang/String;)V

    goto :goto_3

    :catchall_2
    move-exception v2

    monitor-exit v16

    throw v2

    :cond_c
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/audio/AudioService;->mStreamStates:[Lcom/android/server/audio/AudioService$VolumeStreamState;

    const/4 v3, 0x3

    aget-object v2, v2, v3

    const/4 v3, 0x3

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/server/audio/AudioService;->getDeviceForStream(I)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/server/audio/AudioService$VolumeStreamState;->getIndex(I)I

    move-result v2

    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/android/server/audio/AudioService;->getFlagsForDeviceConnect(I)I

    move-result v3

    const/4 v4, 0x3

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v14, v2, v3}, Lcom/android/server/audio/AudioService;->sendVolumeUpdate(IIII)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    monitor-exit v15

    return-void
.end method

.method private onSetA2dpSourceConnectionState(Landroid/bluetooth/BluetoothDevice;I)V
    .locals 8

    const/4 v7, 0x2

    sget-boolean v4, Lcom/android/server/audio/AudioService;->DEBUG_VOL:Z

    if-eqz v4, :cond_0

    const-string/jumbo v4, "AudioService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "onSetA2dpSourceConnectionState btDevice="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " state="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    if-nez p1, :cond_1

    return-void

    :cond_1
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/bluetooth/BluetoothAdapter;->checkBluetoothAddress(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_2

    const-string/jumbo v0, ""

    :cond_2
    iget-object v5, p0, Lcom/android/server/audio/AudioService;->mConnectedDevices:Landroid/util/ArrayMap;

    monitor-enter v5

    const/high16 v4, -0x7ffe0000

    :try_start_0
    invoke-direct {p0, v4, v0}, Lcom/android/server/audio/AudioService;->makeDeviceListKey(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/audio/AudioService;->mConnectedDevices:Landroid/util/ArrayMap;

    invoke-virtual {v4, v3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/audio/AudioService$DeviceListSpec;

    if-eqz v1, :cond_4

    const/4 v2, 0x1

    :goto_0
    if-eqz v2, :cond_5

    if-eq p2, v7, :cond_5

    invoke-direct {p0, v0}, Lcom/android/server/audio/AudioService;->makeA2dpSrcUnavailable(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_3
    :goto_1
    monitor-exit v5

    return-void

    :cond_4
    const/4 v2, 0x0

    goto :goto_0

    :cond_5
    if-nez v2, :cond_3

    if-ne p2, v7, :cond_3

    :try_start_1
    invoke-direct {p0, v0}, Lcom/android/server/audio/AudioService;->makeA2dpSrcAvailable(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v4

    monitor-exit v5

    throw v4
.end method

.method private onSetStreamVolume(IIIILjava/lang/String;)V
    .locals 7

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mStreamVolumeAlias:[I

    aget v1, v0, p1

    move-object v0, p0

    move v2, p2

    move v3, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/android/server/audio/AudioService;->setStreamVolumeInt(IIIZLjava/lang/String;)V

    const/high16 v0, 0x4000000

    and-int/2addr v0, p3

    if-nez v0, :cond_1

    and-int/lit8 v0, p3, 0x2

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/server/audio/AudioService;->getUiSoundsStreamType()I

    move-result v0

    if-ne v1, v0, :cond_1

    :cond_0
    invoke-direct {p0, v1, p2, p3}, Lcom/android/server/audio/AudioService;->getNewRingerMode(III)I

    move-result v0

    const-string/jumbo v2, "AudioService.onSetStreamVolume"

    invoke-direct {p0, v0, v2, v4}, Lcom/android/server/audio/AudioService;->setRingerMode(ILjava/lang/String;Z)V

    :cond_1
    if-eqz p2, :cond_4

    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mStreamStates:[Lcom/android/server/audio/AudioService$VolumeStreamState;

    aget-object v0, v0, v1

    invoke-static {v0}, Lcom/android/server/audio/AudioService$VolumeStreamState;->-get3(Lcom/android/server/audio/AudioService$VolumeStreamState;)Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 v0, 0x2

    if-eq v1, v0, :cond_2

    const/4 v0, 0x3

    if-ne v1, v0, :cond_4

    :cond_2
    const/4 v6, 0x0

    :goto_0
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mStreamStates:[Lcom/android/server/audio/AudioService$VolumeStreamState;

    array-length v0, v0

    if-ge v6, v0, :cond_4

    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mStreamVolumeAlias:[I

    aget v0, v0, v6

    if-ne v1, v0, :cond_3

    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mStreamStates:[Lcom/android/server/audio/AudioService$VolumeStreamState;

    aget-object v0, v0, v6

    invoke-virtual {v0, v4}, Lcom/android/server/audio/AudioService$VolumeStreamState;->mute(Z)V

    :cond_3
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_4
    return-void
.end method

.method private onSetWiredDeviceConnectionState(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 12

    sget-boolean v1, Lcom/android/server/audio/AudioService;->DEBUG_DEVICES:Z

    if-eqz v1, :cond_0

    const-string/jumbo v1, "AudioService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onSetWiredDeviceConnectionState(dev:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " state:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " address:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " deviceName:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p4

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " caller: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p5

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ");"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v11, p0, Lcom/android/server/audio/AudioService;->mConnectedDevices:Landroid/util/ArrayMap;

    monitor-enter v11

    :try_start_0
    iget-object v1, p0, Lcom/android/server/audio/AudioService;->mStreamStates:[Lcom/android/server/audio/AudioService$VolumeStreamState;

    const/4 v2, 0x3

    aget-object v1, v1, v2

    const/4 v2, 0x3

    invoke-direct {p0, v2}, Lcom/android/server/audio/AudioService;->getDeviceForStream(I)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/server/audio/AudioService$VolumeStreamState;->getIndex(I)I

    move-result v10

    const-string/jumbo v9, ""

    if-nez p2, :cond_2

    const/4 v1, 0x4

    if-eq p1, v1, :cond_1

    const/16 v1, 0x8

    if-ne p1, v1, :cond_6

    :cond_1
    :goto_0
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/android/server/audio/AudioService;->setBluetoothA2dpOnInt(Z)V

    :cond_2
    const/16 v1, 0x1000

    if-eq p1, v1, :cond_3

    const v1, -0x7ffffc00

    if-ne p1, v1, :cond_4

    :cond_3
    move-object v9, p3

    :cond_4
    if-eqz p2, :cond_5

    invoke-direct {p0}, Lcom/android/server/audio/AudioService;->isFactoryMode()Z

    move-result v1

    if-eqz v1, :cond_7

    :cond_5
    :goto_1
    and-int/lit16 v1, p1, -0x6001

    if-eqz v1, :cond_9

    const/high16 v1, -0x80000000

    and-int/2addr v1, p1

    if-eqz v1, :cond_b

    const v1, 0x7fffe7ff

    and-int/2addr v1, p1

    if-nez v1, :cond_a

    const/4 v8, 0x1

    :goto_2
    const/4 v1, 0x1

    if-ne p2, v1, :cond_c

    const/4 v1, 0x1

    :goto_3
    move-object/from16 v0, p4

    invoke-direct {p0, v1, p1, p3, v0}, Lcom/android/server/audio/AudioService;->handleDeviceConnection(ZILjava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-nez v1, :cond_d

    monitor-exit v11

    return-void

    :cond_6
    const/high16 v1, 0x20000

    if-ne p1, v1, :cond_2

    goto :goto_0

    :cond_7
    const/4 v1, 0x4

    if-eq p1, v1, :cond_8

    const/16 v1, 0x8

    if-ne p1, v1, :cond_5

    :cond_8
    :try_start_1
    iget-object v1, p0, Lcom/android/server/audio/AudioService;->mStreamStates:[Lcom/android/server/audio/AudioService$VolumeStreamState;

    const/4 v2, 0x3

    aget-object v1, v1, v2

    invoke-virtual {v1, p1}, Lcom/android/server/audio/AudioService$VolumeStreamState;->getIndex(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x5

    div-int/lit8 v1, v1, 0xa

    const/16 v2, 0x9

    if-le v1, v2, :cond_5

    iget-object v1, p0, Lcom/android/server/audio/AudioService;->mFineMediaVolume:Lcom/android/server/audio/AudioService$FineVolumeState;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, p1}, Lcom/android/server/audio/AudioService$FineVolumeState;->setIndex(II)Z

    const/4 v1, 0x3

    const/16 v2, 0x9

    invoke-static {v1, v2, p1}, Landroid/media/AudioSystem;->setStreamVolumeIndex(III)I

    iget-object v1, p0, Lcom/android/server/audio/AudioService;->mStreamVolumeAlias:[I

    const/4 v2, 0x3

    aget v2, v1, v2

    iget-object v1, p0, Lcom/android/server/audio/AudioService;->mStreamVolumeAlias:[I

    const/4 v3, 0x3

    aget v1, v1, v3

    const/16 v3, 0x5a

    const/4 v4, 0x3

    invoke-direct {p0, v3, v4, v1}, Lcom/android/server/audio/AudioService;->rescaleIndex(III)I

    move-result v3

    const-string/jumbo v6, "AudioService"

    const/4 v5, 0x0

    move-object v1, p0

    move v4, p1

    invoke-direct/range {v1 .. v6}, Lcom/android/server/audio/AudioService;->setStreamVolumeInt(IIIZLjava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v1

    monitor-exit v11

    throw v1

    :cond_9
    const/4 v8, 0x1

    goto :goto_2

    :cond_a
    const/4 v8, 0x0

    goto :goto_2

    :cond_b
    const/4 v8, 0x0

    goto :goto_2

    :cond_c
    const/4 v1, 0x0

    goto :goto_3

    :cond_d
    if-eqz p2, :cond_15

    const/4 v1, 0x4

    if-eq p1, v1, :cond_e

    const/16 v1, 0x8

    if-ne p1, v1, :cond_14

    :cond_e
    :goto_4
    :try_start_2
    invoke-direct {p0}, Lcom/android/server/audio/AudioService;->increaseEARCount()V

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/android/server/audio/AudioService;->setBluetoothA2dpOnInt(Z)V

    :cond_f
    and-int/lit16 v1, p1, 0x18c

    if-eqz v1, :cond_10

    iget-object v1, p0, Lcom/android/server/audio/AudioService;->mAudioHandler:Lcom/android/server/audio/AudioService$AudioHandler;

    const/16 v2, 0xe

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const v7, 0xea60

    move-object/from16 v6, p5

    invoke-static/range {v1 .. v7}, Lcom/android/server/audio/AudioService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    :cond_10
    invoke-direct {p0}, Lcom/android/server/audio/AudioService;->isPlatformTelevision()Z

    move-result v1

    if-eqz v1, :cond_12

    and-int/lit16 v1, p1, 0x400

    if-eqz v1, :cond_12

    iget v1, p0, Lcom/android/server/audio/AudioService;->mFixedVolumeDevices:I

    or-int/lit16 v1, v1, 0x400

    iput v1, p0, Lcom/android/server/audio/AudioService;->mFixedVolumeDevices:I

    invoke-direct {p0}, Lcom/android/server/audio/AudioService;->checkAllFixedVolumeDevices()V

    iget-object v1, p0, Lcom/android/server/audio/AudioService;->mHdmiManager:Landroid/hardware/hdmi/HdmiControlManager;

    if-eqz v1, :cond_12

    iget-object v2, p0, Lcom/android/server/audio/AudioService;->mHdmiManager:Landroid/hardware/hdmi/HdmiControlManager;

    monitor-enter v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    iget-object v1, p0, Lcom/android/server/audio/AudioService;->mHdmiPlaybackClient:Landroid/hardware/hdmi/HdmiPlaybackClient;

    if-eqz v1, :cond_11

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/audio/AudioService;->mHdmiCecSink:Z

    iget-object v1, p0, Lcom/android/server/audio/AudioService;->mHdmiPlaybackClient:Landroid/hardware/hdmi/HdmiPlaybackClient;

    iget-object v3, p0, Lcom/android/server/audio/AudioService;->mHdmiDisplayStatusCallback:Lcom/android/server/audio/AudioService$MyDisplayStatusCallback;

    invoke-virtual {v1, v3}, Landroid/hardware/hdmi/HdmiPlaybackClient;->queryDisplayStatus(Landroid/hardware/hdmi/HdmiPlaybackClient$DisplayStatusCallback;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :cond_11
    :try_start_4
    monitor-exit v2

    :cond_12
    :goto_5
    if-nez v8, :cond_13

    const v1, -0x7ffffff0

    if-eq p1, v1, :cond_13

    invoke-direct/range {p0 .. p4}, Lcom/android/server/audio/AudioService;->sendDeviceConnectionIntent(IILjava/lang/String;Ljava/lang/String;)V

    :cond_13
    iget-object v1, p0, Lcom/android/server/audio/AudioService;->mStreamStates:[Lcom/android/server/audio/AudioService$VolumeStreamState;

    const/4 v2, 0x3

    aget-object v1, v1, v2

    const/4 v2, 0x3

    invoke-direct {p0, v2}, Lcom/android/server/audio/AudioService;->getDeviceForStream(I)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/server/audio/AudioService$VolumeStreamState;->getIndex(I)I

    move-result v1

    invoke-direct {p0, p2}, Lcom/android/server/audio/AudioService;->getFlagsForDeviceConnect(I)I

    move-result v2

    const/4 v3, 0x3

    invoke-direct {p0, v3, v10, v1, v2}, Lcom/android/server/audio/AudioService;->sendVolumeUpdate(IIII)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    monitor-exit v11

    return-void

    :cond_14
    const/high16 v1, 0x20000

    if-ne p1, v1, :cond_f

    goto :goto_4

    :catchall_1
    move-exception v1

    :try_start_5
    monitor-exit v2

    throw v1

    :cond_15
    invoke-direct {p0}, Lcom/android/server/audio/AudioService;->isPlatformTelevision()Z

    move-result v1

    if-eqz v1, :cond_12

    and-int/lit16 v1, p1, 0x400

    if-eqz v1, :cond_12

    iget-object v1, p0, Lcom/android/server/audio/AudioService;->mHdmiManager:Landroid/hardware/hdmi/HdmiControlManager;

    if-eqz v1, :cond_12

    iget-object v1, p0, Lcom/android/server/audio/AudioService;->mHdmiManager:Landroid/hardware/hdmi/HdmiControlManager;

    monitor-enter v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    const/4 v2, 0x0

    :try_start_6
    iput-boolean v2, p0, Lcom/android/server/audio/AudioService;->mHdmiCecSink:Z
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    :try_start_7
    monitor-exit v1

    goto :goto_5

    :catchall_2
    move-exception v2

    monitor-exit v1

    throw v2
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0
.end method

.method private onUnmuteStream(II)V
    .locals 4

    iget-object v3, p0, Lcom/android/server/audio/AudioService;->mStreamStates:[Lcom/android/server/audio/AudioService$VolumeStreamState;

    aget-object v2, v3, p1

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/android/server/audio/AudioService$VolumeStreamState;->mute(Z)V

    invoke-direct {p0, p1}, Lcom/android/server/audio/AudioService;->getDeviceForStream(I)I

    move-result v0

    iget-object v3, p0, Lcom/android/server/audio/AudioService;->mStreamStates:[Lcom/android/server/audio/AudioService$VolumeStreamState;

    aget-object v3, v3, p1

    invoke-virtual {v3, v0}, Lcom/android/server/audio/AudioService$VolumeStreamState;->getIndex(I)I

    move-result v1

    invoke-direct {p0, p1, v1, v1, p2}, Lcom/android/server/audio/AudioService;->sendVolumeUpdate(IIII)V

    return-void
.end method

.method private performSoftReset()V
    .locals 18

    const-string/jumbo v2, "AudioService"

    const-string/jumbo v3, "Perform soft reset start"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/server/audio/AudioService;->mMonoMode:I

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/audio/AudioService;->mContentResolver:Landroid/content/ContentResolver;

    const-string/jumbo v3, "mono_audio_db"

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/server/audio/AudioService;->mMonoMode:I

    const/4 v6, -0x2

    invoke-static {v2, v3, v4, v6}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/audio/AudioService;->mMonoMode:I

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/server/audio/AudioService;->setMonoMode(I)V

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/server/audio/AudioService;->mMySoundEnabled:I

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/audio/AudioService;->mContentResolver:Landroid/content/ContentResolver;

    const-string/jumbo v3, "hearing_musiccheck"

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/server/audio/AudioService;->mMySoundEnabled:I

    const/4 v6, -0x2

    invoke-static {v2, v3, v4, v6}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/audio/AudioService;->mMySoundEnabled:I

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/server/audio/AudioService;->setGlobalMySound(I)V

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/server/audio/AudioService;->mSoundAliveEnabled:I

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/audio/AudioService;->mContentResolver:Landroid/content/ContentResolver;

    const-string/jumbo v3, "sound_alive_effect"

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/server/audio/AudioService;->mSoundAliveEnabled:I

    const/4 v6, -0x2

    invoke-static {v2, v3, v4, v6}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/server/audio/AudioService;->mUpscalerEnabled:I

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/audio/AudioService;->mContentResolver:Landroid/content/ContentResolver;

    const-string/jumbo v3, "k2hd_effect"

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/server/audio/AudioService;->mUpscalerEnabled:I

    const/4 v6, -0x2

    invoke-static {v2, v3, v4, v6}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/audio/AudioService;->mUpscalerEnabled:I

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/server/audio/AudioService;->setGlobalUpscaler(I)V

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/server/audio/AudioService;->mTubeAmpEnabled:I

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/audio/AudioService;->mContentResolver:Landroid/content/ContentResolver;

    const-string/jumbo v3, "tube_amp_effect"

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/server/audio/AudioService;->mTubeAmpEnabled:I

    const/4 v6, -0x2

    invoke-static {v2, v3, v4, v6}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    sget-boolean v2, Lcom/android/server/audio/AudioService;->SUPPORT_BOOST_MODE:Z

    if-eqz v2, :cond_0

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/server/audio/AudioService;->mBoostMode:I

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/server/audio/AudioService;->mBoostUpscalerEnabled:I

    :cond_0
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/server/audio/AudioService;->mNbQualityMode:I

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/audio/AudioService;->mContentResolver:Landroid/content/ContentResolver;

    const-string/jumbo v3, "personalise_call_sound_soft"

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/audio/AudioService;->mNbQualityMode:I

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/server/audio/AudioService;->setNbQualityMode(I)V

    const-string/jumbo v2, "USE_DUALMIC;USE_VT"

    const-string/jumbo v3, "USE_DUALMIC"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/server/audio/AudioService;->mDualMicMode:I

    :goto_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/audio/AudioService;->mContentResolver:Landroid/content/ContentResolver;

    const-string/jumbo v3, "call_noise_reduction"

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/server/audio/AudioService;->mDualMicMode:I

    const/4 v6, -0x2

    invoke-static {v2, v3, v4, v6}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/audio/AudioService;->mDualMicMode:I

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/server/audio/AudioService;->setDualMicMode(I)V

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/server/audio/AudioService;->mAllSoundMute:I

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/audio/AudioService;->mContentResolver:Landroid/content/ContentResolver;

    const-string/jumbo v3, "all_sound_off"

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/server/audio/AudioService;->mAllSoundMute:I

    const/4 v6, -0x2

    invoke-static {v2, v3, v4, v6}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    invoke-direct/range {p0 .. p0}, Lcom/android/server/audio/AudioService;->setAllSoundMute()V

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/server/audio/AudioService;->mNaturalSound:I

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/audio/AudioService;->mContentResolver:Landroid/content/ContentResolver;

    const-string/jumbo v3, "call_natural_sound"

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/server/audio/AudioService;->mNaturalSound:I

    const/4 v6, -0x2

    invoke-static {v2, v3, v4, v6}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/audio/AudioService;->mNaturalSound:I

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/server/audio/AudioService;->setNaturalSoundMode(I)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/audio/AudioService;->mSettingDBHelper:Lcom/android/server/audio/AudioService$AudioSettingsDBHelper;

    invoke-virtual {v2}, Lcom/android/server/audio/AudioService$AudioSettingsDBHelper;->resetTable()V

    const-string/jumbo v2, "AudioService.performSoftReset"

    const/4 v3, 0x2

    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v2, v4}, Lcom/android/server/audio/AudioService;->setRingerMode(ILjava/lang/String;Z)V

    const/4 v9, 0x0

    invoke-static {}, Landroid/media/AudioSystem;->getNumStreamTypes()I

    move-result v13

    const/16 v16, 0x0

    :goto_1
    move/from16 v0, v16

    if-ge v0, v13, :cond_8

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/audio/AudioService;->mStreamStates:[Lcom/android/server/audio/AudioService$VolumeStreamState;

    aget-object v7, v2, v16

    const-string/jumbo v15, "name LIKE ?"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v7}, Lcom/android/server/audio/AudioService$VolumeStreamState;->-get5(Lcom/android/server/audio/AudioService$VolumeStreamState;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "%"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    const/4 v2, 0x1

    new-array v14, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v12, v14, v2

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/audio/AudioService;->mStreamVolumeAlias:[I

    aget v2, v2, v16

    const/4 v3, 0x3

    if-ne v2, v3, :cond_2

    const/4 v2, 0x3

    move/from16 v0, v16

    if-eq v0, v2, :cond_2

    :goto_2
    add-int/lit8 v16, v16, 0x1

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/server/audio/AudioService;->mDualMicMode:I

    goto/16 :goto_0

    :cond_2
    monitor-enter v7

    const/4 v10, 0x0

    :goto_3
    :try_start_0
    invoke-static {v7}, Lcom/android/server/audio/AudioService$VolumeStreamState;->-get0(Lcom/android/server/audio/AudioService$VolumeStreamState;)Landroid/util/SparseIntArray;

    move-result-object v2

    invoke-virtual {v2}, Landroid/util/SparseIntArray;->size()I

    move-result v2

    if-ge v10, v2, :cond_7

    invoke-static {v7}, Lcom/android/server/audio/AudioService$VolumeStreamState;->-get0(Lcom/android/server/audio/AudioService$VolumeStreamState;)Landroid/util/SparseIntArray;

    move-result-object v2

    invoke-virtual {v2, v10}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v5

    sget-object v2, Landroid/media/AudioSystem;->DEFAULT_STREAM_VOLUME:[I

    aget v11, v2, v16

    const/4 v2, 0x3

    move/from16 v0, v16

    if-ne v0, v2, :cond_3

    and-int/lit16 v2, v5, 0x8c

    if-eqz v2, :cond_3

    const/16 v11, 0x8

    :cond_3
    const/4 v2, 0x3

    move/from16 v0, v16

    if-ne v0, v2, :cond_4

    const v2, 0x8000

    and-int/2addr v2, v5

    if-eqz v2, :cond_4

    const/16 v11, 0xf

    :cond_4
    invoke-static {v7}, Lcom/android/server/audio/AudioService$VolumeStreamState;->-get0(Lcom/android/server/audio/AudioService$VolumeStreamState;)Landroid/util/SparseIntArray;

    move-result-object v2

    mul-int/lit8 v3, v11, 0xa

    invoke-virtual {v2, v5, v3}, Landroid/util/SparseIntArray;->put(II)V

    invoke-virtual {v7, v5}, Lcom/android/server/audio/AudioService$VolumeStreamState;->applyDeviceVolume_syncVSS(I)V

    add-int/lit8 v17, v13, -0x1

    :goto_4
    if-ltz v17, :cond_6

    invoke-static {v7}, Lcom/android/server/audio/AudioService$VolumeStreamState;->-get4(Lcom/android/server/audio/AudioService$VolumeStreamState;)I

    move-result v2

    move/from16 v0, v17

    if-eq v0, v2, :cond_5

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/audio/AudioService;->mStreamVolumeAlias:[I

    aget v2, v2, v17

    invoke-static {v7}, Lcom/android/server/audio/AudioService$VolumeStreamState;->-get4(Lcom/android/server/audio/AudioService$VolumeStreamState;)I

    move-result v3

    if-ne v2, v3, :cond_5

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/audio/AudioService;->mStreamStates:[Lcom/android/server/audio/AudioService$VolumeStreamState;

    aget-object v2, v2, v17

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/android/server/audio/AudioService;->getDeviceForStream(I)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/server/audio/AudioService$VolumeStreamState;->applyDeviceVolume_syncVSS(I)V

    :cond_5
    add-int/lit8 v17, v17, -0x1

    goto :goto_4

    :cond_6
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/audio/AudioService;->mAudioHandler:Lcom/android/server/audio/AudioService$AudioHandler;

    const/4 v3, 0x1

    const/4 v4, 0x2

    const/4 v6, 0x0

    const/16 v8, 0x1f4

    invoke-static/range {v2 .. v8}, Lcom/android/server/audio/AudioService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    add-int/lit8 v10, v10, 0x1

    goto :goto_3

    :cond_7
    monitor-exit v7

    goto/16 :goto_2

    :catchall_0
    move-exception v2

    monitor-exit v7

    throw v2

    :cond_8
    const-string/jumbo v2, "AudioService"

    const-string/jumbo v3, "Perform soft reset end"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private playSilentModeSound()V
    .locals 7

    const/4 v2, 0x1

    const/4 v3, 0x0

    iget-boolean v0, p0, Lcom/android/server/audio/AudioService;->mSilentModeOff:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "AudioService"

    const-string/jumbo v1, "mSilentModeOff TRUE"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/android/server/audio/AudioService;->getMode()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    const-string/jumbo v0, "AudioService"

    const-string/jumbo v1, "sikp playSilentModeSound"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    iput-boolean v2, p0, Lcom/android/server/audio/AudioService;->mIsPlaySilentModeOff:Z

    const/16 v0, 0xb

    invoke-virtual {p0, v0}, Lcom/android/server/audio/AudioService;->playSoundEffect(I)V

    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mAudioHandler:Lcom/android/server/audio/AudioService$AudioHandler;

    const/16 v1, 0x6c

    const/4 v5, 0x0

    const/16 v6, 0x1f4

    move v4, v3

    invoke-static/range {v0 .. v6}, Lcom/android/server/audio/AudioService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    return-void
.end method

.method private porcessUsbAudioDevicePlug(Landroid/content/Intent;)V
    .locals 20

    const/4 v3, 0x0

    const/16 v18, 0x0

    const-string/jumbo v2, "state"

    const/4 v6, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    const-string/jumbo v2, "card"

    const/4 v6, -0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v12

    const-string/jumbo v2, "device"

    const/4 v6, -0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v13

    const-string/jumbo v2, "hasPlayback"

    const/4 v6, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v17

    const-string/jumbo v2, "hasCapture"

    const/4 v6, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v15

    const-string/jumbo v2, "hasMIDI"

    const/4 v6, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v16

    const/4 v2, -0x1

    if-ne v12, v2, :cond_0

    const/4 v2, -0x1

    if-ne v13, v2, :cond_0

    const-string/jumbo v5, ""

    :goto_0
    invoke-direct/range {p0 .. p0}, Lcom/android/server/audio/AudioService;->isSmartDockConnected()Z

    move-result v19

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/audio/AudioService;->mContentResolver:Landroid/content/ContentResolver;

    const-string/jumbo v6, "cradle_enable"

    const/4 v8, 0x0

    const/4 v9, -0x2

    invoke-static {v2, v6, v8, v9}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v14

    if-eqz v19, :cond_3

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/server/audio/AudioService;->mOldIsSmartdock:Z

    move/from16 v0, v19

    if-eq v0, v2, :cond_5

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/audio/AudioService;->mOldIsSmartdock:Z

    const/4 v2, 0x1

    if-ne v4, v2, :cond_1

    move-object v2, v5

    :goto_1
    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/audio/AudioService;->mExternalUsbInfo:Ljava/lang/String;

    const/4 v2, 0x1

    if-ne v14, v2, :cond_2

    const-string/jumbo v2, "AudioService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "cradleEnabled change path, state : "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v3, 0x4000

    const-string/jumbo v6, ""

    const-string/jumbo v7, "AudioService"

    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v7}, Lcom/android/server/audio/AudioService;->setWiredDeviceConnectionStateWithoutIntent(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move/from16 v7, v18

    :goto_2
    return-void

    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "card="

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v6, ";device="

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    goto :goto_1

    :cond_2
    const-string/jumbo v2, "AudioService"

    const-string/jumbo v6, "cradle disabled no any action"

    invoke-static {v2, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move/from16 v7, v18

    goto :goto_2

    :cond_3
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/server/audio/AudioService;->mOldIsSmartdock:Z

    if-eqz v17, :cond_4

    const/16 v3, 0x4000

    const-string/jumbo v6, ""

    const-string/jumbo v7, "AudioService"

    move-object/from16 v2, p0

    invoke-virtual/range {v2 .. v7}, Lcom/android/server/audio/AudioService;->setWiredDeviceConnectionState(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    if-eqz v15, :cond_5

    const v7, -0x7ffff000

    const-string/jumbo v10, ""

    const-string/jumbo v11, "AudioService"

    move-object/from16 v6, p0

    move v8, v4

    move-object v9, v5

    invoke-virtual/range {v6 .. v11}, Lcom/android/server/audio/AudioService;->setWiredDeviceConnectionState(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :cond_5
    move/from16 v7, v18

    goto :goto_2
.end method

.method private queueMsgUnderWakeLock(Landroid/os/Handler;IIILjava/lang/Object;I)V
    .locals 10

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v8

    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mAudioEventWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    const/4 v2, 0x2

    move-object v0, p1

    move v1, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    move/from16 v6, p6

    invoke-static/range {v0 .. v6}, Lcom/android/server/audio/AudioService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    return-void
.end method

.method private static readAndSetLowRamDevice()V
    .locals 4

    invoke-static {}, Landroid/app/ActivityManager;->isLowRamDeviceStatic()Z

    move-result v1

    invoke-static {v1}, Landroid/media/AudioSystem;->setLowRamDevice(Z)I

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v1, "AudioService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "AudioFlinger informed of device\'s low RAM attribute; status "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method private readAudioSettings(Z)V
    .locals 7

    const/4 v6, 0x3

    const/4 v5, 0x0

    invoke-direct {p0}, Lcom/android/server/audio/AudioService;->readPersistedSettings()V

    invoke-direct {p0}, Lcom/android/server/audio/AudioService;->readUserRestrictions()V

    invoke-direct {p0}, Lcom/android/server/audio/AudioService;->setAllSoundMute()V

    invoke-static {}, Landroid/media/AudioSystem;->getNumStreamTypes()I

    move-result v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_4

    iget-object v3, p0, Lcom/android/server/audio/AudioService;->mStreamStates:[Lcom/android/server/audio/AudioService$VolumeStreamState;

    aget-object v1, v3, v2

    if-eqz p1, :cond_0

    iget-object v3, p0, Lcom/android/server/audio/AudioService;->mStreamVolumeAlias:[I

    aget v3, v3, v2

    if-ne v3, v6, :cond_0

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Lcom/android/server/audio/AudioService$VolumeStreamState;->readSettings()V

    const-class v4, Lcom/android/server/audio/AudioService$VolumeStreamState;

    monitor-enter v4

    :try_start_0
    invoke-static {v1}, Lcom/android/server/audio/AudioService$VolumeStreamState;->-get3(Lcom/android/server/audio/AudioService$VolumeStreamState;)Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-virtual {p0, v2}, Lcom/android/server/audio/AudioService;->isStreamAffectedByMute(I)Z

    move-result v3

    if-nez v3, :cond_1

    invoke-direct {p0, v2}, Lcom/android/server/audio/AudioService;->isStreamMutedByRingerMode(I)Z

    move-result v3

    if-eqz v3, :cond_2

    :cond_1
    iget-boolean v3, p0, Lcom/android/server/audio/AudioService;->mUseFixedVolume:Z

    if-eqz v3, :cond_3

    :cond_2
    const/4 v3, 0x0

    invoke-static {v1, v3}, Lcom/android/server/audio/AudioService$VolumeStreamState;->-set0(Lcom/android/server/audio/AudioService$VolumeStreamState;Z)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_3
    monitor-exit v4

    goto :goto_1

    :catchall_0
    move-exception v3

    monitor-exit v4

    throw v3

    :cond_4
    invoke-virtual {p0}, Lcom/android/server/audio/AudioService;->getRingerModeInternal()I

    move-result v3

    invoke-direct {p0, v3, v5}, Lcom/android/server/audio/AudioService;->setRingerModeInt(IZ)V

    invoke-direct {p0}, Lcom/android/server/audio/AudioService;->checkAllFixedVolumeDevices()V

    invoke-direct {p0}, Lcom/android/server/audio/AudioService;->checkAllAliasStreamVolumes()V

    invoke-direct {p0}, Lcom/android/server/audio/AudioService;->checkMuteAffectedStreams()V

    iget-object v4, p0, Lcom/android/server/audio/AudioService;->mSafeMediaVolumeState:Ljava/lang/Integer;

    monitor-enter v4

    :try_start_1
    iget-object v3, p0, Lcom/android/server/audio/AudioService;->mSafeMediaVolumeState:Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-ne v3, v6, :cond_5

    const-string/jumbo v3, "AudioService"

    invoke-direct {p0, v3}, Lcom/android/server/audio/AudioService;->enforceSafeMediaVolume(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :cond_5
    monitor-exit v4

    return-void

    :catchall_1
    move-exception v3

    monitor-exit v4

    throw v3
.end method

.method private readCameraSoundForced()Z
    .locals 2

    const-string/jumbo v0, "audio.camerasound.force"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x112007f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private readDockAudioSettings(Landroid/content/ContentResolver;)V
    .locals 7

    const/16 v1, 0x8

    const/4 v0, 0x1

    const/4 v6, 0x0

    const-string/jumbo v2, "dock_audio_media_enabled"

    invoke-static {p1, v2, v6}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v0, :cond_0

    :goto_0
    iput-boolean v0, p0, Lcom/android/server/audio/AudioService;->mDockAudioMediaEnabled:Z

    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mAudioHandler:Lcom/android/server/audio/AudioService$AudioHandler;

    iget-boolean v2, p0, Lcom/android/server/audio/AudioService;->mDockAudioMediaEnabled:Z

    if-eqz v2, :cond_1

    move v4, v1

    :goto_1
    const/4 v2, 0x2

    const/4 v3, 0x3

    const/4 v5, 0x0

    invoke-static/range {v0 .. v6}, Lcom/android/server/audio/AudioService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    return-void

    :cond_0
    move v0, v6

    goto :goto_0

    :cond_1
    move v4, v6

    goto :goto_1
.end method

.method private readPersistedSettings()V
    .locals 11

    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mContentResolver:Landroid/content/ContentResolver;

    const-string/jumbo v6, "mode_ringer"

    const/4 v7, 0x2

    invoke-static {v0, v6, v7}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    move v4, v5

    invoke-virtual {p0, v5}, Lcom/android/server/audio/AudioService;->isValidRingerMode(I)Z

    move-result v6

    if-nez v6, :cond_0

    const/4 v4, 0x2

    :cond_0
    const/4 v6, 0x1

    if-ne v4, v6, :cond_1

    iget-boolean v6, p0, Lcom/android/server/audio/AudioService;->mHasVibrator:Z

    if-eqz v6, :cond_9

    :cond_1
    :goto_0
    if-eq v4, v5, :cond_2

    const-string/jumbo v6, "mode_ringer"

    invoke-static {v0, v6, v4}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_2
    iget-boolean v6, p0, Lcom/android/server/audio/AudioService;->mUseFixedVolume:Z

    if-nez v6, :cond_3

    invoke-direct {p0}, Lcom/android/server/audio/AudioService;->isPlatformTelevision()Z

    move-result v6

    if-eqz v6, :cond_4

    :cond_3
    const/4 v4, 0x2

    :cond_4
    iget-object v7, p0, Lcom/android/server/audio/AudioService;->mSettingsLock:Ljava/lang/Object;

    monitor-enter v7

    :try_start_0
    iput v4, p0, Lcom/android/server/audio/AudioService;->mRingerMode:I

    iget v6, p0, Lcom/android/server/audio/AudioService;->mRingerModeExternal:I

    const/4 v8, -0x1

    if-ne v6, v8, :cond_5

    iget v6, p0, Lcom/android/server/audio/AudioService;->mRingerMode:I

    iput v6, p0, Lcom/android/server/audio/AudioService;->mRingerModeExternal:I

    :cond_5
    iget-boolean v6, p0, Lcom/android/server/audio/AudioService;->mHasVibrator:Z

    if-eqz v6, :cond_a

    const/4 v6, 0x2

    :goto_1
    const/4 v8, 0x0

    const/4 v9, 0x1

    invoke-static {v8, v9, v6}, Landroid/media/AudioSystem;->getValueForVibrateSetting(III)I

    move-result v6

    iput v6, p0, Lcom/android/server/audio/AudioService;->mVibrateSetting:I

    iget v8, p0, Lcom/android/server/audio/AudioService;->mVibrateSetting:I

    iget-boolean v6, p0, Lcom/android/server/audio/AudioService;->mHasVibrator:Z

    if-eqz v6, :cond_b

    const/4 v6, 0x2

    :goto_2
    const/4 v9, 0x0

    invoke-static {v8, v9, v6}, Landroid/media/AudioSystem;->getValueForVibrateSetting(III)I

    move-result v6

    iput v6, p0, Lcom/android/server/audio/AudioService;->mVibrateSetting:I

    const-string/jumbo v6, "mono_audio_db"

    const/4 v8, 0x0

    const/4 v9, -0x2

    invoke-static {v0, v6, v8, v9}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v6

    iput v6, p0, Lcom/android/server/audio/AudioService;->mMonoMode:I

    iget-object v6, p0, Lcom/android/server/audio/AudioService;->mContentResolver:Landroid/content/ContentResolver;

    const-string/jumbo v8, "hearing_musiccheck"

    const/4 v9, 0x0

    const/4 v10, -0x2

    invoke-static {v6, v8, v9, v10}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v6

    iput v6, p0, Lcom/android/server/audio/AudioService;->mMySoundEnabled:I

    iget-object v6, p0, Lcom/android/server/audio/AudioService;->mContentResolver:Landroid/content/ContentResolver;

    const-string/jumbo v8, "sound_alive_effect"

    const/4 v9, 0x0

    const/4 v10, -0x2

    invoke-static {v6, v8, v9, v10}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v6

    iput v6, p0, Lcom/android/server/audio/AudioService;->mSoundAliveEnabled:I

    iget-object v6, p0, Lcom/android/server/audio/AudioService;->mContentResolver:Landroid/content/ContentResolver;

    const-string/jumbo v8, "k2hd_effect"

    const/4 v9, 0x0

    const/4 v10, -0x2

    invoke-static {v6, v8, v9, v10}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v6

    iput v6, p0, Lcom/android/server/audio/AudioService;->mUpscalerEnabled:I

    iget-object v6, p0, Lcom/android/server/audio/AudioService;->mContentResolver:Landroid/content/ContentResolver;

    const-string/jumbo v8, "tube_amp_effect"

    const/4 v9, 0x0

    const/4 v10, -0x2

    invoke-static {v6, v8, v9, v10}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v6

    iput v6, p0, Lcom/android/server/audio/AudioService;->mTubeAmpEnabled:I

    sget-boolean v6, Lcom/android/server/audio/AudioService;->SUPPORT_BOOST_MODE:Z

    if-eqz v6, :cond_6

    iget-object v6, p0, Lcom/android/server/audio/AudioService;->mContentResolver:Landroid/content/ContentResolver;

    const-string/jumbo v8, "sem_perfomance_mode"

    const/4 v9, 0x0

    const/4 v10, -0x2

    invoke-static {v6, v8, v9, v10}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v6

    iput v6, p0, Lcom/android/server/audio/AudioService;->mBoostMode:I

    iget v6, p0, Lcom/android/server/audio/AudioService;->mBoostMode:I

    const/4 v8, 0x2

    if-ne v6, v8, :cond_6

    iget-object v6, p0, Lcom/android/server/audio/AudioService;->mContentResolver:Landroid/content/ContentResolver;

    const-string/jumbo v8, "pbm_uhq_upscaler"

    const/4 v9, 0x0

    invoke-static {v6, v8, v9}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    iput v6, p0, Lcom/android/server/audio/AudioService;->mBoostUpscalerEnabled:I

    :cond_6
    iget-object v6, p0, Lcom/android/server/audio/AudioService;->mContentResolver:Landroid/content/ContentResolver;

    const-string/jumbo v8, "personalise_call_sound_soft"

    const/4 v9, 0x0

    invoke-static {v6, v8, v9}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    iput v6, p0, Lcom/android/server/audio/AudioService;->mNbQualityMode:I

    const-string/jumbo v6, "call_noise_reduction"

    const/4 v8, 0x1

    const/4 v9, -0x2

    invoke-static {v0, v6, v8, v9}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v6

    iput v6, p0, Lcom/android/server/audio/AudioService;->mDualMicMode:I

    const-string/jumbo v6, "all_sound_off"

    const/4 v8, 0x0

    const/4 v9, -0x2

    invoke-static {v0, v6, v8, v9}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v6

    iput v6, p0, Lcom/android/server/audio/AudioService;->mAllSoundMute:I

    const-string/jumbo v6, "call_natural_sound"

    const/4 v8, 0x0

    const/4 v9, -0x2

    invoke-static {v0, v6, v8, v9}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v6

    iput v6, p0, Lcom/android/server/audio/AudioService;->mNaturalSound:I

    const-string/jumbo v6, "theme_touch_sound"

    invoke-static {v0, v6}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/android/server/audio/AudioService;->SOUND_EFFECTS_PATH_THEME:Ljava/lang/String;

    invoke-direct {p0}, Lcom/android/server/audio/AudioService;->isTalkBackEnabled()Z

    move-result v6

    iput-boolean v6, p0, Lcom/android/server/audio/AudioService;->mIsTalkBackEnabled:Z

    iget-object v6, p0, Lcom/android/server/audio/AudioService;->mSettingDBHelper:Lcom/android/server/audio/AudioService$AudioSettingsDBHelper;

    const-string/jumbo v8, "adjust_media_volume_only"

    invoke-virtual {v6, v8}, Lcom/android/server/audio/AudioService$AudioSettingsDBHelper;->getBooleanValue(Ljava/lang/String;)Z

    move-result v6

    iput-boolean v6, p0, Lcom/android/server/audio/AudioService;->mAdjustMediaVolumeOnly:Z

    iget-object v6, p0, Lcom/android/server/audio/AudioService;->mSettingDBHelper:Lcom/android/server/audio/AudioService$AudioSettingsDBHelper;

    const-string/jumbo v8, "enable_floating_button"

    invoke-virtual {v6, v8}, Lcom/android/server/audio/AudioService$AudioSettingsDBHelper;->getBooleanValue(Ljava/lang/String;)Z

    move-result v6

    iput-boolean v6, p0, Lcom/android/server/audio/AudioService;->mEnableSoundAssistant:Z

    const-string/jumbo v6, "encrypted"

    const-string/jumbo v8, "ro.crypto.state"

    invoke-static {v8}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7

    const-string/jumbo v6, "default"

    const-string/jumbo v8, "vold.crypt.type"

    invoke-static {v8}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_c

    :cond_7
    :goto_3
    invoke-direct {p0}, Lcom/android/server/audio/AudioService;->updateRingerModeAffectedStreams()Z

    invoke-direct {p0, v0}, Lcom/android/server/audio/AudioService;->readDockAudioSettings(Landroid/content/ContentResolver;)V

    invoke-direct {p0, v0}, Lcom/android/server/audio/AudioService;->sendEncodedSurroundMode(Landroid/content/ContentResolver;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v7

    const-string/jumbo v6, "mute_streams_affected"

    const/16 v7, 0x2e

    const/4 v8, -0x2

    invoke-static {v0, v6, v7, v8}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v6

    iput v6, p0, Lcom/android/server/audio/AudioService;->mMuteAffectedStreams:I

    iget-boolean v6, p0, Lcom/android/server/audio/AudioService;->mIsDefaultStreamNotification:Z

    if-eqz v6, :cond_8

    iget-object v6, p0, Lcom/android/server/audio/AudioService;->STREAM_VOLUME_ALIAS_DEFAULT:[I

    const/4 v7, 0x5

    const/4 v8, 0x2

    aput v7, v6, v8

    iget-object v6, p0, Lcom/android/server/audio/AudioService;->STREAM_VOLUME_ALIAS_DEFAULT:[I

    const/4 v7, 0x5

    const/4 v8, 0x5

    aput v7, v6, v8

    :cond_8
    invoke-direct {p0, v0}, Lcom/android/server/audio/AudioService;->updateMasterMono(Landroid/content/ContentResolver;)V

    const-string/jumbo v6, "android.media.RINGER_MODE_CHANGED"

    iget v7, p0, Lcom/android/server/audio/AudioService;->mRingerModeExternal:I

    invoke-direct {p0, v6, v7}, Lcom/android/server/audio/AudioService;->broadcastRingerMode(Ljava/lang/String;I)V

    const-string/jumbo v6, "android.media.INTERNAL_RINGER_MODE_CHANGED_ACTION"

    iget v7, p0, Lcom/android/server/audio/AudioService;->mRingerMode:I

    invoke-direct {p0, v6, v7}, Lcom/android/server/audio/AudioService;->broadcastRingerMode(Ljava/lang/String;I)V

    const/4 v6, 0x0

    invoke-direct {p0, v6}, Lcom/android/server/audio/AudioService;->broadcastVibrateSetting(I)V

    const/4 v6, 0x1

    invoke-direct {p0, v6}, Lcom/android/server/audio/AudioService;->broadcastVibrateSetting(I)V

    iget-object v6, p0, Lcom/android/server/audio/AudioService;->mVolumeController:Lcom/android/server/audio/AudioService$VolumeController;

    invoke-virtual {v6, v0}, Lcom/android/server/audio/AudioService$VolumeController;->loadSettings(Landroid/content/ContentResolver;)V

    return-void

    :cond_9
    const/4 v4, 0x0

    goto/16 :goto_0

    :cond_a
    const/4 v6, 0x0

    goto/16 :goto_1

    :cond_b
    const/4 v6, 0x0

    goto/16 :goto_2

    :cond_c
    :try_start_1
    const-string/jumbo v6, "trigger_restart_min_framework"

    const-string/jumbo v8, "vold.decrypt"

    invoke-static {v8}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7

    const-string/jumbo v6, "AudioService"

    const-string/jumbo v8, "need to check tmpfs property with device encryption"

    invoke-static {v6, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    const-string/jumbo v6, "mount"

    invoke-static {v6}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v6

    invoke-static {v6}, Landroid/os/storage/IMountService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/storage/IMountService;

    move-result-object v3

    if-eqz v3, :cond_7

    const-string/jumbo v6, "FooterAudioInfo"

    invoke-interface {v3, v6}, Landroid/os/storage/IMountService;->getPropertyFromFooter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    and-int/lit8 v6, v6, 0x10

    if-eqz v6, :cond_d

    const-string/jumbo v6, "AudioService"

    const-string/jumbo v8, "ringer mode is silent state"

    invoke-static {v6, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v6, 0x1

    iput v6, p0, Lcom/android/server/audio/AudioService;->mRingerMode:I

    const/4 v6, 0x1

    iput v6, p0, Lcom/android/server/audio/AudioService;->mRingerModeExternal:I

    :cond_d
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    and-int/lit8 v6, v6, 0x1

    if-eqz v6, :cond_7

    const-string/jumbo v6, "AudioService"

    const-string/jumbo v8, "all sound mute is enabled"

    invoke-static {v6, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v6, 0x1

    iput v6, p0, Lcom/android/server/audio/AudioService;->mAllSoundMute:I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_3

    :catch_0
    move-exception v1

    :try_start_3
    const-string/jumbo v6, "AudioService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Error calling mount service "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_3

    :catchall_0
    move-exception v6

    monitor-exit v7

    throw v6
.end method

.method private readUserRestrictions()V
    .locals 10

    const/4 v9, 0x2

    const/4 v8, 0x1

    const/4 v7, 0x0

    invoke-direct {p0}, Lcom/android/server/audio/AudioService;->getCurrentUserId()I

    move-result v0

    iget-object v3, p0, Lcom/android/server/audio/AudioService;->mUserManagerInternal:Landroid/os/UserManagerInternal;

    const-string/jumbo v4, "no_adjust_volume"

    invoke-virtual {v3, v0, v4}, Landroid/os/UserManagerInternal;->getUserRestriction(ILjava/lang/String;)Z

    move-result v1

    iget-boolean v3, p0, Lcom/android/server/audio/AudioService;->mUseFixedVolume:Z

    if-eqz v3, :cond_0

    const/4 v1, 0x0

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-static {v3}, Landroid/media/AudioSystem;->setMasterVolume(F)I

    :cond_0
    sget-boolean v3, Lcom/android/server/audio/AudioService;->DEBUG_VOL:Z

    if-eqz v3, :cond_1

    const-string/jumbo v3, "AudioService"

    const-string/jumbo v4, "Master mute %s, user=%d"

    new-array v5, v9, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v8

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    invoke-direct {p0, v1}, Lcom/android/server/audio/AudioService;->setSystemAudioMute(Z)V

    invoke-static {v1}, Landroid/media/AudioSystem;->setMasterMute(Z)I

    invoke-direct {p0, v1}, Lcom/android/server/audio/AudioService;->broadcastMasterMuteStatus(Z)V

    iget-object v3, p0, Lcom/android/server/audio/AudioService;->mUserManagerInternal:Landroid/os/UserManagerInternal;

    const-string/jumbo v4, "no_unmute_microphone"

    invoke-virtual {v3, v0, v4}, Landroid/os/UserManagerInternal;->getUserRestriction(ILjava/lang/String;)Z

    move-result v2

    sget-boolean v3, Lcom/android/server/audio/AudioService;->DEBUG_VOL:Z

    if-eqz v3, :cond_2

    const-string/jumbo v3, "AudioService"

    const-string/jumbo v4, "Mic mute %s, user=%d"

    new-array v5, v9, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v8

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    invoke-static {v2}, Landroid/media/AudioSystem;->muteMicrophone(Z)I

    return-void
.end method

.method private releaseCPUBoost()V
    .locals 2

    iget-object v0, p0, Lcom/android/server/audio/AudioService;->semDvfsCpuMin:Lcom/samsung/android/os/SemDvfsManager;

    if-eqz v0, :cond_0

    const-string/jumbo v0, "AudioService"

    const-string/jumbo v1, "release() cpu min lock"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/audio/AudioService;->semDvfsCpuMin:Lcom/samsung/android/os/SemDvfsManager;

    invoke-virtual {v0}, Lcom/samsung/android/os/SemDvfsManager;->release()V

    :cond_0
    sget-boolean v0, Lcom/android/server/audio/AudioService;->LPM_ENABLED:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/audio/AudioService;->semLowPowerMode:Lcom/samsung/android/os/SemDvfsManager;

    if-eqz v0, :cond_1

    const-string/jumbo v0, "AudioService"

    const-string/jumbo v1, "releaseCPUBoost LPM"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/audio/AudioService;->semLowPowerMode:Lcom/samsung/android/os/SemDvfsManager;

    invoke-virtual {v0}, Lcom/samsung/android/os/SemDvfsManager;->release()V

    :cond_1
    return-void
.end method

.method private reloadWhitelist()V
    .locals 20

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/audio/AudioService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const-string/jumbo v3, "com.samsung.android.sm.policy"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->resolveContentProvider(Ljava/lang/String;I)Landroid/content/pm/ProviderInfo;

    move-result-object v2

    if-eqz v2, :cond_0

    const/4 v13, 0x1

    :goto_0
    if-nez v13, :cond_1

    const-string/jumbo v2, "AudioService"

    const-string/jumbo v3, "SCPMClient is not exist"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const/4 v13, 0x0

    goto :goto_0

    :cond_1
    invoke-direct/range {p0 .. p0}, Lcom/android/server/audio/AudioService;->getNewWhiteListVersion()Ljava/lang/String;

    move-result-object v15

    if-nez v15, :cond_2

    const-string/jumbo v2, "AudioService"

    const-string/jumbo v3, "EffectPolicy server version is not latest or incorrect"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_2
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    const/4 v14, 0x0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/audio/AudioService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    :try_start_0
    invoke-static {}, Lcom/android/server/audio/AudioService$EffectPolicy;->-get1()Landroid/net/Uri;

    move-result-object v2

    invoke-static {}, Lcom/android/server/audio/AudioService$EffectPolicy;->-get0()[Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v14

    if-eqz v14, :cond_5

    invoke-interface {v14}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-lez v2, :cond_5

    :goto_1
    invoke-interface {v14}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_5

    const/4 v2, 0x0

    invoke-interface {v14, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v16

    const/4 v2, 0x1

    invoke-interface {v14, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    new-instance v2, Lcom/android/server/audio/AudioService$EffectPolicy;

    move-object/from16 v0, v16

    invoke-direct {v2, v0, v7}, Lcom/android/server/audio/AudioService$EffectPolicy;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v10, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catch_0
    move-exception v9

    :try_start_1
    invoke-virtual {v9}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v14, :cond_3

    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    :goto_2
    const/4 v14, 0x0

    :cond_3
    new-instance v19, Ljava/io/StringWriter;

    invoke-direct/range {v19 .. v19}, Ljava/io/StringWriter;-><init>()V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "version "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Ljava/io/StringWriter;->write(Ljava/lang/String;)V

    const/4 v12, 0x0

    :goto_3
    invoke-static {}, Lcom/android/server/audio/AudioService$EffectPolicy;->-get4()[Ljava/lang/String;

    move-result-object v2

    array-length v2, v2

    if-ge v12, v2, :cond_8

    invoke-static {}, Lcom/android/server/audio/AudioService$EffectPolicy;->-get4()[Ljava/lang/String;

    move-result-object v2

    aget-object v11, v2, v12

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " {\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Ljava/io/StringWriter;->write(Ljava/lang/String;)V

    invoke-interface {v10}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v18

    :cond_4
    :goto_4
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/android/server/audio/AudioService$EffectPolicy;

    invoke-virtual/range {v17 .. v17}, Lcom/android/server/audio/AudioService$EffectPolicy;->getEffectType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "    package "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual/range {v17 .. v17}, Lcom/android/server/audio/AudioService$EffectPolicy;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Ljava/io/StringWriter;->write(Ljava/lang/String;)V

    goto :goto_4

    :cond_5
    if-eqz v14, :cond_3

    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    goto/16 :goto_2

    :catchall_0
    move-exception v2

    if-eqz v14, :cond_6

    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    const/4 v14, 0x0

    :cond_6
    throw v2

    :cond_7
    const-string/jumbo v2, "}\n"

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Ljava/io/StringWriter;->write(Ljava/lang/String;)V

    add-int/lit8 v12, v12, 0x1

    goto :goto_3

    :cond_8
    :try_start_2
    const-string/jumbo v2, "/data/snd/effect_policy.conf"

    invoke-virtual/range {v19 .. v19}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/os/FileUtils;->stringToFile(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v2, "/data/snd/effect_policy.conf"

    const/16 v3, 0x1b0

    const/16 v4, 0x3e8

    const/16 v5, 0x3ed

    invoke-static {v2, v3, v4, v5}, Landroid/os/FileUtils;->setPermissions(Ljava/lang/String;III)I
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    invoke-virtual {v10}, Ljava/util/ArrayList;->clear()V

    const-string/jumbo v2, "reloadWhitelist"

    invoke-static {v2}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    return-void

    :catch_1
    move-exception v8

    const-string/jumbo v2, "AudioService"

    const-string/jumbo v3, "Failed update effectpolicy"

    invoke-static {v2, v3, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method private rescaleIndex(III)I
    .locals 2

    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mStreamStates:[Lcom/android/server/audio/AudioService$VolumeStreamState;

    aget-object v0, v0, p3

    invoke-virtual {v0}, Lcom/android/server/audio/AudioService$VolumeStreamState;->getMaxIndex()I

    move-result v0

    mul-int/2addr v0, p1

    iget-object v1, p0, Lcom/android/server/audio/AudioService;->mStreamStates:[Lcom/android/server/audio/AudioService$VolumeStreamState;

    aget-object v1, v1, p2

    invoke-virtual {v1}, Lcom/android/server/audio/AudioService$VolumeStreamState;->getMaxIndex()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/android/server/audio/AudioService;->mStreamStates:[Lcom/android/server/audio/AudioService$VolumeStreamState;

    aget-object v1, v1, p2

    invoke-virtual {v1}, Lcom/android/server/audio/AudioService$VolumeStreamState;->getMaxIndex()I

    move-result v1

    div-int/2addr v0, v1

    return v0
.end method

.method private resetBluetoothSco()V
    .locals 4

    const/4 v3, 0x0

    iget-object v1, p0, Lcom/android/server/audio/AudioService;->mScoClients:Ljava/util/ArrayList;

    monitor-enter v1

    const/4 v0, 0x0

    const/4 v2, 0x0

    :try_start_0
    invoke-virtual {p0, v0, v2}, Lcom/android/server/audio/AudioService;->clearAllScoClients(IZ)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/audio/AudioService;->mScoAudioState:I

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/server/audio/AudioService;->broadcastScoConnectionState(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    invoke-virtual {p0, v3}, Lcom/android/server/audio/AudioService;->setBluetoothScoOnInt(Z)V

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private runSoundAssistant()V
    .locals 3

    iget-object v1, p0, Lcom/android/server/audio/AudioService;->mSoundAssistantLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-boolean v0, p0, Lcom/android/server/audio/AudioService;->mStartingSoundAssistant:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    monitor-exit v1

    return-void

    :cond_0
    const/4 v0, 0x1

    :try_start_1
    iput-boolean v0, p0, Lcom/android/server/audio/AudioService;->mStartingSoundAssistant:Z

    new-instance v0, Ljava/lang/Thread;

    new-instance v2, Lcom/android/server/audio/AudioService$9;

    invoke-direct {v2, p0}, Lcom/android/server/audio/AudioService$9;-><init>(Lcom/android/server/audio/AudioService;)V

    invoke-direct {v0, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private static safeMediaVolumeStateToString(Ljava/lang/Integer;)Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    const/4 v0, 0x0

    return-object v0

    :pswitch_0
    const-string/jumbo v0, "SAFE_MEDIA_VOLUME_NOT_CONFIGURED"

    return-object v0

    :pswitch_1
    const-string/jumbo v0, "SAFE_MEDIA_VOLUME_DISABLED"

    return-object v0

    :pswitch_2
    const-string/jumbo v0, "SAFE_MEDIA_VOLUME_INACTIVE"

    return-object v0

    :pswitch_3
    const-string/jumbo v0, "SAFE_MEDIA_VOLUME_ACTIVE"

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private saveMusicActiveMs()V
    .locals 4

    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mAudioHandler:Lcom/android/server/audio/AudioService$AudioHandler;

    iget v1, p0, Lcom/android/server/audio/AudioService;->mMusicActiveMs:I

    const/16 v2, 0x16

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v1, v3}, Lcom/android/server/audio/AudioService$AudioHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method private selectDevice(I)I
    .locals 6

    const/4 v5, 0x0

    iget-object v3, p0, Lcom/android/server/audio/AudioService;->mSoundKitchen:Lcom/android/server/audio/AudioService$SoundKitchen;

    invoke-virtual {v3}, Lcom/android/server/audio/AudioService$SoundKitchen;->getState()Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/android/server/audio/AudioService;->mSoundKitchen:Lcom/android/server/audio/AudioService$SoundKitchen;

    iget v4, p0, Lcom/android/server/audio/AudioService;->mForegroundUid:I

    invoke-virtual {v3, v4}, Lcom/android/server/audio/AudioService$SoundKitchen;->getDevice(I)I

    move-result v3

    if-eqz v3, :cond_0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "hasActiveTrackUID="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/server/audio/AudioService;->mForegroundUid:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/media/AudioSystem;->getParameters(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v3, "TRUE"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    const/4 v3, 0x3

    invoke-static {v3, v5}, Landroid/media/AudioSystem;->isStreamActive(II)Z

    move-result v3

    if-eqz v3, :cond_1

    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "hasActiveTrackDevice="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/media/AudioSystem;->getParameters(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "TRUE"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    return p1

    :cond_1
    iget-object v3, p0, Lcom/android/server/audio/AudioService;->mSoundKitchen:Lcom/android/server/audio/AudioService$SoundKitchen;

    iget v4, p0, Lcom/android/server/audio/AudioService;->mForegroundUid:I

    invoke-virtual {v3, v4}, Lcom/android/server/audio/AudioService$SoundKitchen;->getDevice(I)I

    move-result p1

    return p1

    :cond_2
    iget-object v3, p0, Lcom/android/server/audio/AudioService;->mSoundKitchen:Lcom/android/server/audio/AudioService$SoundKitchen;

    invoke-virtual {v3}, Lcom/android/server/audio/AudioService$SoundKitchen;->getUidList()[I

    move-result-object v2

    const/4 v0, 0x0

    :goto_0
    array-length v3, v2

    if-ge v0, v3, :cond_3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "hasActiveTrackUID="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget v4, v2, v0

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/media/AudioSystem;->getParameters(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v3, "TRUE"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/android/server/audio/AudioService;->mSoundKitchen:Lcom/android/server/audio/AudioService$SoundKitchen;

    aget v4, v2, v0

    invoke-virtual {v3, v4}, Lcom/android/server/audio/AudioService$SoundKitchen;->getDevice(I)I

    move-result p1

    :cond_3
    return p1

    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private sendAudioCoreBigdata(Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const/4 v1, 0x1

    const-string/jumbo v2, "Audio"

    const-string/jumbo v3, "FWAC"

    const-string/jumbo v4, "sm"

    const-string/jumbo v5, "0.0"

    const-string/jumbo v6, "sec"

    const-string/jumbo v7, ""

    invoke-direct {p0, p1, p2}, Lcom/android/server/audio/AudioService;->getAudioCoreBigdata(Ljava/util/ArrayList;Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object v8

    const-string/jumbo v9, ""

    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mSemHqmManager:Landroid/os/SemHqmManager;

    if-eqz v0, :cond_0

    const-string/jumbo v0, "AudioService"

    const-string/jumbo v10, "sendAudioCoreBigdata() mSemHqmManager.sendHWParamToHQM !!!"

    invoke-static {v0, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mSemHqmManager:Landroid/os/SemHqmManager;

    invoke-virtual/range {v0 .. v9}, Landroid/os/SemHqmManager;->sendHWParamToHQM(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    :goto_0
    return-void

    :cond_0
    const-string/jumbo v0, "AudioService"

    const-string/jumbo v10, "sendAudioCoreBigdata() mSemHqmManager is null!!"

    invoke-static {v0, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private sendBecomingNoisyIntent(I)V
    .locals 6

    const/4 v5, 0x0

    iget-object v2, p0, Lcom/android/server/audio/AudioService;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v2, p1}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    array-length v2, v1

    if-lez v2, :cond_0

    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v2, "android.media.AUDIO_BECOMING_NOISY"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    aget-object v2, v1, v5

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    invoke-direct {p0, v0}, Lcom/android/server/audio/AudioService;->sendBroadcastToAll(Landroid/content/Intent;)V

    const-string/jumbo v2, "AudioService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "sendBecomingNoisyIntent to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget-object v4, v1, v5

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method private sendBecomingNoisyIntentToDevice(I)V
    .locals 6

    const-string/jumbo v3, "AudioService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "sendBecomingNoisyIntentToDevice, "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v3

    invoke-interface {v3}, Landroid/app/IActivityManager;->getRunningAppProcesses()Ljava/util/List;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    :goto_0
    if-nez v1, :cond_0

    const-string/jumbo v3, "AudioService"

    const-string/jumbo v4, "runningAppInfo == null"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v3, "AudioService"

    const-string/jumbo v4, "RemoteException"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    const-string/jumbo v2, ""

    const-string/jumbo v3, "AudioService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "uidList "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private sendBroadcastToAll(Landroid/content/Intent;)V
    .locals 4

    iget-boolean v2, p0, Lcom/android/server/audio/AudioService;->mSystemReady:Z

    if-nez v2, :cond_0

    return-void

    :cond_0
    const/high16 v2, 0x4000000

    invoke-virtual {p1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const/high16 v2, 0x10000000

    invoke-virtual {p1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    :try_start_0
    iget-object v2, p0, Lcom/android/server/audio/AudioService;->mContext:Landroid/content/Context;

    sget-object v3, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v2, p1, v3}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method private sendBroadcastToUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    .locals 3

    iget-boolean v2, p0, Lcom/android/server/audio/AudioService;->mSystemReady:Z

    if-nez v2, :cond_0

    return-void

    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    :try_start_0
    iget-object v2, p0, Lcom/android/server/audio/AudioService;->mContext:Landroid/content/Context;

    invoke-virtual {v2, p1, p2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method private sendDeviceConnectionIntent(IILjava/lang/String;Ljava/lang/String;)V
    .locals 16

    sget-boolean v2, Lcom/android/server/audio/AudioService;->DEBUG_DEVICES:Z

    if-eqz v2, :cond_0

    const-string/jumbo v2, "AudioService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "sendDeviceConnectionIntent(dev:0x"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " state:0x"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " address:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " name:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p4

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ");"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/server/audio/AudioService;->mSystemReady:Z

    if-nez v2, :cond_1

    return-void

    :cond_1
    new-instance v12, Landroid/content/Intent;

    invoke-direct {v12}, Landroid/content/Intent;-><init>()V

    const-string/jumbo v2, "state"

    move/from16 v0, p2

    invoke-virtual {v12, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string/jumbo v2, "address"

    move-object/from16 v0, p3

    invoke-virtual {v12, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v2, "portName"

    move-object/from16 v0, p4

    invoke-virtual {v12, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v2, 0x40000000    # 2.0f

    invoke-virtual {v12, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const/4 v9, 0x0

    const/4 v2, 0x4

    move/from16 v0, p1

    if-ne v0, v2, :cond_6

    const/4 v9, 0x1

    const-string/jumbo v2, "android.intent.action.HEADSET_PLUG"

    invoke-virtual {v12, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v2, "microphone"

    const/4 v3, 0x1

    invoke-virtual {v12, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    :cond_2
    :goto_0
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/audio/AudioService;->mCurAudioRoutes:Landroid/media/AudioRoutesInfo;

    monitor-enter v15

    if-eqz v9, :cond_3

    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/audio/AudioService;->mCurAudioRoutes:Landroid/media/AudioRoutesInfo;

    iget v14, v2, Landroid/media/AudioRoutesInfo;->mainType:I

    if-eqz p2, :cond_b

    or-int/2addr v14, v9

    :goto_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/audio/AudioService;->mCurAudioRoutes:Landroid/media/AudioRoutesInfo;

    iget v2, v2, Landroid/media/AudioRoutesInfo;->mainType:I

    if-eq v14, v2, :cond_3

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/audio/AudioService;->mCurAudioRoutes:Landroid/media/AudioRoutesInfo;

    iput v14, v2, Landroid/media/AudioRoutesInfo;->mainType:I

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/audio/AudioService;->mAudioHandler:Lcom/android/server/audio/AudioService$AudioHandler;

    const/16 v3, 0xc

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-static/range {v2 .. v8}, Lcom/android/server/audio/AudioService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_3
    monitor-exit v15

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v10

    const/4 v2, 0x0

    const/4 v3, -0x1

    :try_start_1
    invoke-static {v12, v2, v3}, Landroid/app/ActivityManagerNative;->broadcastStickyIntent(Landroid/content/Intent;Ljava/lang/String;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    const/4 v2, 0x4

    move/from16 v0, p1

    if-eq v0, v2, :cond_4

    const/16 v2, 0x8

    move/from16 v0, p1

    if-ne v0, v2, :cond_5

    :cond_4
    new-instance v13, Landroid/content/Intent;

    const-string/jumbo v2, "com.sec.android.contextaware.HEADSET_PLUG"

    invoke-direct {v13, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v13, v12}, Landroid/content/Intent;->putExtras(Landroid/content/Intent;)Landroid/content/Intent;

    const/16 v2, 0x20

    invoke-virtual {v13, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string/jumbo v2, "AudioService"

    const-string/jumbo v3, "send broadcast HEADSET_PLUG to CA "

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/android/server/audio/AudioService;->sendStickyBroadcastToAll(Landroid/content/Intent;)V

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/audio/AudioService;->mForceSpeaker:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_5

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/audio/AudioService;->mAudioHandler:Lcom/android/server/audio/AudioService$AudioHandler;

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/server/audio/AudioService;->mForceSpeaker:I

    const/16 v3, 0x8

    const/4 v4, 0x2

    const/4 v5, 0x1

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-static/range {v2 .. v8}, Lcom/android/server/audio/AudioService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    :cond_5
    return-void

    :cond_6
    const/16 v2, 0x8

    move/from16 v0, p1

    if-eq v0, v2, :cond_7

    const/high16 v2, 0x20000

    move/from16 v0, p1

    if-ne v0, v2, :cond_8

    :cond_7
    const/4 v9, 0x2

    const-string/jumbo v2, "android.intent.action.HEADSET_PLUG"

    invoke-virtual {v12, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v2, "microphone"

    const/4 v3, 0x0

    invoke-virtual {v12, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto/16 :goto_0

    :cond_8
    const/16 v2, 0x400

    move/from16 v0, p1

    if-eq v0, v2, :cond_9

    const/high16 v2, 0x40000

    move/from16 v0, p1

    if-ne v0, v2, :cond_a

    :cond_9
    const/16 v9, 0x8

    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-direct {v0, v12, v1}, Lcom/android/server/audio/AudioService;->configureHdmiPlugIntent(Landroid/content/Intent;I)V

    goto/16 :goto_0

    :cond_a
    const/16 v2, 0x4000

    move/from16 v0, p1

    if-ne v0, v2, :cond_2

    const/16 v9, 0x10

    goto/16 :goto_0

    :cond_b
    not-int v2, v9

    and-int/2addr v14, v2

    goto/16 :goto_1

    :catchall_0
    move-exception v2

    monitor-exit v15

    throw v2

    :catchall_1
    move-exception v2

    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method private sendEncodedSurroundMode(I)V
    .locals 7

    const/16 v4, 0xf

    packed-switch p1, :pswitch_data_0

    const-string/jumbo v0, "AudioService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateSurroundSoundSettings: illegal value "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    const/16 v0, 0xf

    if-eq v4, v0, :cond_0

    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mAudioHandler:Lcom/android/server/audio/AudioService$AudioHandler;

    const/16 v1, 0x8

    const/4 v2, 0x2

    const/4 v3, 0x6

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static/range {v0 .. v6}, Lcom/android/server/audio/AudioService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    :cond_0
    return-void

    :pswitch_0
    const/4 v4, 0x0

    goto :goto_0

    :pswitch_1
    const/16 v4, 0xd

    goto :goto_0

    :pswitch_2
    const/16 v4, 0xe

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private sendEncodedSurroundMode(Landroid/content/ContentResolver;)V
    .locals 3

    const-string/jumbo v1, "encoded_surround_output"

    const/4 v2, 0x0

    invoke-static {p1, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/server/audio/AudioService;->sendEncodedSurroundMode(I)V

    return-void
.end method

.method private sendHWParamServer()V
    .locals 10

    const/4 v1, 0x1

    const-string/jumbo v2, "Audio"

    const-string/jumbo v6, "ACHW"

    const-string/jumbo v5, "sm"

    const-string/jumbo v3, "0.0"

    const-string/jumbo v4, "sec"

    invoke-direct {p0}, Lcom/android/server/audio/AudioService;->getHWBidata()Ljava/lang/String;

    move-result-object v7

    const-string/jumbo v8, ""

    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mSemHqmManager:Landroid/os/SemHqmManager;

    if-eqz v0, :cond_0

    const-string/jumbo v0, "AudioService"

    const-string/jumbo v9, "mSemHqmManager.sendHWParamServer !!"

    invoke-static {v0, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mSemHqmManager:Landroid/os/SemHqmManager;

    invoke-virtual/range {v0 .. v8}, Landroid/os/SemHqmManager;->sendHWParamServer(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    :goto_0
    return-void

    :cond_0
    const-string/jumbo v0, "AudioService"

    const-string/jumbo v9, "CustomFrequncyManager is null!!"

    invoke-static {v0, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private sendMasterMuteUpdate(ZI)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mVolumeController:Lcom/android/server/audio/AudioService$VolumeController;

    invoke-direct {p0, p2}, Lcom/android/server/audio/AudioService;->updateFlagsForSystemAudio(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/server/audio/AudioService$VolumeController;->postMasterMuteChanged(I)V

    invoke-direct {p0, p1}, Lcom/android/server/audio/AudioService;->broadcastMasterMuteStatus(Z)V

    return-void
.end method

.method private static sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V
    .locals 8

    if-nez p2, :cond_3

    invoke-virtual {p0, p1}, Landroid/os/Handler;->removeMessages(I)V

    :cond_0
    sget-object v3, Lcom/android/server/audio/AudioService;->mLastDeviceConnectMsgTime:Ljava/lang/Long;

    monitor-enter v3

    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    int-to-long v6, p6

    add-long v0, v4, v6

    invoke-virtual {p0, p1, p3, p4, p5}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {p0, v2, v0, v1}, Landroid/os/Handler;->sendMessageAtTime(Landroid/os/Message;J)Z

    const/16 v2, 0x64

    if-eq p1, v2, :cond_1

    const/16 v2, 0x65

    if-ne p1, v2, :cond_4

    :cond_1
    :goto_0
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    sput-object v2, Lcom/android/server/audio/AudioService;->mLastDeviceConnectMsgTime:Ljava/lang/Long;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_2
    monitor-exit v3

    return-void

    :cond_3
    const/4 v2, 0x1

    if-ne p2, v2, :cond_0

    invoke-virtual {p0, p1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v2

    if-eqz v2, :cond_0

    return-void

    :cond_4
    const/16 v2, 0x66

    if-ne p1, v2, :cond_2

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.method private sendStickyBroadcastToAll(Landroid/content/Intent;)V
    .locals 4

    const/high16 v2, 0x10000000

    invoke-virtual {p1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    :try_start_0
    iget-object v2, p0, Lcom/android/server/audio/AudioService;->mContext:Landroid/content/Context;

    sget-object v3, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v2, p1, v3}, Landroid/content/Context;->sendStickyBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method private sendVolumeUpdate(IIII)V
    .locals 6

    const/4 v5, 0x1

    const/4 v4, 0x3

    iget-object v1, p0, Lcom/android/server/audio/AudioService;->mStreamVolumeAlias:[I

    aget p1, v1, p1

    const/4 v1, 0x2

    if-ne v1, p1, :cond_0

    if-nez p4, :cond_0

    if-lez p3, :cond_0

    invoke-direct {p0}, Lcom/android/server/audio/AudioService;->isFactoryMode()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string/jumbo v1, "AudioService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "enforce to FLAG_PLAY_SOUND volume index = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    or-int/lit8 p4, p4, 0x4

    :cond_0
    iget-object v1, p0, Lcom/android/server/audio/AudioService;->mStreamVolumeAlias:[I

    aget v1, v1, p1

    if-ne v1, v4, :cond_1

    if-nez p3, :cond_1

    iget-object v1, p0, Lcom/android/server/audio/AudioService;->mFineMediaVolume:Lcom/android/server/audio/AudioService$FineVolumeState;

    invoke-direct {p0, v4}, Lcom/android/server/audio/AudioService;->getDeviceForStream(I)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/server/audio/AudioService$FineVolumeState;->getIndex(I)I

    move-result v1

    if-eqz v1, :cond_1

    const/16 p3, 0xa

    :cond_1
    if-ne p1, v4, :cond_2

    invoke-direct {p0, p4}, Lcom/android/server/audio/AudioService;->updateFlagsForSystemAudio(I)I

    move-result p4

    :cond_2
    iget v1, p0, Lcom/android/server/audio/AudioService;->mAllSoundMute:I

    if-ne v1, v5, :cond_3

    and-int/lit8 p4, p4, -0x2

    :cond_3
    iget-object v1, p0, Lcom/android/server/audio/AudioService;->mVolumeController:Lcom/android/server/audio/AudioService$VolumeController;

    invoke-virtual {v1, p1, p4}, Lcom/android/server/audio/AudioService$VolumeController;->postVolumeChanged(II)V

    and-int/lit8 v1, p4, 0x20

    if-nez v1, :cond_6

    add-int/lit8 v1, p2, 0x5

    div-int/lit8 p2, v1, 0xa

    add-int/lit8 v1, p3, 0x5

    div-int/lit8 p3, v1, 0xa

    invoke-virtual {p0, p1}, Lcom/android/server/audio/AudioService;->isStreamMute(I)Z

    move-result v1

    if-eqz v1, :cond_4

    const/4 p3, 0x0

    :cond_4
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "android.media.VOLUME_CHANGED_ACTION"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v1, "android.media.EXTRA_VOLUME_STREAM_TYPE"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string/jumbo v1, "android.media.EXTRA_VOLUME_STREAM_VALUE"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string/jumbo v1, "android.media.EXTRA_PREV_VOLUME_STREAM_VALUE"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const/high16 v1, 0x20000000

    and-int/2addr v1, p4

    if-eqz v1, :cond_5

    const-string/jumbo v1, "AudioService"

    const-string/jumbo v2, "Do not play volume index information through Voice Assistant"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v1, "voice_assistant_bypass"

    invoke-virtual {v0, v1, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    :cond_5
    invoke-direct {p0, v0}, Lcom/android/server/audio/AudioService;->sendBroadcastToAll(Landroid/content/Intent;)V

    :cond_6
    return-void
.end method

.method private setAllSoundMute()V
    .locals 7

    const/4 v4, 0x0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "audioParam;allsoundmute="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/audio/AudioService;->mAllSoundMute:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mAudioHandler:Lcom/android/server/audio/AudioService$AudioHandler;

    iget v3, p0, Lcom/android/server/audio/AudioService;->mAllSoundMute:I

    const-string/jumbo v5, "persist.audio.allsoundmute"

    const/16 v1, 0x6f

    const/4 v2, 0x2

    move v6, v4

    invoke-static/range {v0 .. v6}, Lcom/android/server/audio/AudioService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    return-void
.end method

.method private setDualMicMode(I)V
    .locals 2

    const-string/jumbo v0, "USE_DUALMIC;USE_VT"

    const-string/jumbo v1, "USE_DUALMIC"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    if-lez p1, :cond_1

    const-string/jumbo v0, "dualmic_enabled=true"

    invoke-static {v0}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string/jumbo v0, "dualmic_enabled=false"

    invoke-static {v0}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    goto :goto_0
.end method

.method private setFineVolume(I)V
    .locals 11

    const/4 v6, 0x0

    const/4 v3, 0x3

    invoke-direct {p0, v3}, Lcom/android/server/audio/AudioService;->getDeviceForStream(I)I

    move-result v5

    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mStreamStates:[Lcom/android/server/audio/AudioService$VolumeStreamState;

    aget-object v0, v0, v3

    invoke-virtual {v0, v5}, Lcom/android/server/audio/AudioService$VolumeStreamState;->getIndex(I)I

    move-result v10

    const-string/jumbo v0, "AudioService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setFineVolume device="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", streamVolume="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 v0, v10, 0x5

    div-int/lit8 v0, v0, 0xa

    sget-object v1, Lcom/android/server/audio/AudioService;->MAX_STREAM_VOLUME:[I

    aget v1, v1, v3

    if-ne v0, v1, :cond_0

    iget p1, p0, Lcom/android/server/audio/AudioService;->FINE_VOLUME_MIN:I

    :cond_0
    iget-object v7, p0, Lcom/android/server/audio/AudioService;->mSafeMediaVolumeState:Ljava/lang/Integer;

    monitor-enter v7

    :try_start_0
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mSafeMediaVolumeState:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v0, v3, :cond_2

    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mStreamVolumeAlias:[I

    const/4 v1, 0x3

    aget v0, v0, v1

    if-ne v0, v3, :cond_2

    and-int/lit16 v0, v5, 0x18c

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/android/server/audio/AudioService;->mSafeMediaVolumeIndex:I

    if-ne v10, v0, :cond_2

    if-eqz p1, :cond_2

    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "power"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/os/PowerManager;

    invoke-virtual {v9}, Landroid/os/PowerManager;->isScreenOn()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/android/server/audio/AudioService;->callLcdOn()V

    invoke-direct {p0}, Lcom/android/server/audio/AudioService;->callVibrateMsg()V

    :cond_1
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mVolumeController:Lcom/android/server/audio/AudioService$VolumeController;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/server/audio/AudioService$VolumeController;->postDisplaySafeVolumeWarning(I)V

    const-string/jumbo v0, "AudioService"

    const-string/jumbo v1, "setFineVolume mPendingFineVolumeCommand"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/android/server/audio/AudioService$StreamVolumeCommand;

    const/4 v2, 0x3

    const/4 v4, 0x0

    move-object v1, p0

    move v3, p1

    invoke-direct/range {v0 .. v5}, Lcom/android/server/audio/AudioService$StreamVolumeCommand;-><init>(Lcom/android/server/audio/AudioService;IIII)V

    iput-object v0, p0, Lcom/android/server/audio/AudioService;->mPendingFineVolumeCommand:Lcom/android/server/audio/AudioService$StreamVolumeCommand;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v7

    return-void

    :cond_2
    :try_start_1
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mPendingVolumeCommand:Lcom/android/server/audio/AudioService$StreamVolumeCommand;

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mVolumeController:Lcom/android/server/audio/AudioService$VolumeController;

    invoke-virtual {v0}, Lcom/android/server/audio/AudioService$VolumeController;->isSafeVolumeDialogShowing()Z

    move-result v0

    if-eqz v0, :cond_4

    :cond_3
    const-string/jumbo v0, "AudioService"

    const-string/jumbo v1, "setFineVolume mPendingFineVolumeCommand"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/android/server/audio/AudioService$StreamVolumeCommand;

    const/4 v2, 0x3

    const/4 v4, 0x0

    move-object v1, p0

    move v3, p1

    invoke-direct/range {v0 .. v5}, Lcom/android/server/audio/AudioService$StreamVolumeCommand;-><init>(Lcom/android/server/audio/AudioService;IIII)V

    iput-object v0, p0, Lcom/android/server/audio/AudioService;->mPendingFineVolumeCommand:Lcom/android/server/audio/AudioService$StreamVolumeCommand;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v7

    return-void

    :cond_4
    monitor-exit v7

    const-string/jumbo v0, "AudioService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setFineVolume device="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", fineVolume="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mFineMediaVolume:Lcom/android/server/audio/AudioService$FineVolumeState;

    invoke-virtual {v0, p1, v5}, Lcom/android/server/audio/AudioService$FineVolumeState;->setIndex(II)Z

    iget-object v2, p0, Lcom/android/server/audio/AudioService;->mAudioHandler:Lcom/android/server/audio/AudioService$AudioHandler;

    iget-object v7, p0, Lcom/android/server/audio/AudioService;->mFineMediaVolume:Lcom/android/server/audio/AudioService$FineVolumeState;

    const/16 v3, 0x70

    const/4 v4, 0x2

    move v8, v6

    invoke-static/range {v2 .. v8}, Lcom/android/server/audio/AudioService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v7

    throw v0
.end method

.method private setForceUseInt_SyncDevices(II)V
    .locals 2

    invoke-static {p1, p2}, Landroid/media/AudioSystem;->setForceUse(II)I

    iget-boolean v0, p0, Lcom/android/server/audio/AudioService;->mSystemReady:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x3

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/server/audio/AudioService;->getDevicesForStream(IZ)I

    :cond_0
    return-void
.end method

.method private setGlobalMySound(I)V
    .locals 7

    const/4 v6, 0x0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "audioEffectParam;setGlobalMSEffect="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    const-string/jumbo v2, "0,0,0,0,0,0,0,0,0,0,0,0,0,0"

    iget-object v4, p0, Lcom/android/server/audio/AudioService;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string/jumbo v5, "hearing_diagnosis"

    invoke-static {v4, v5, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_0

    iget-object v4, p0, Lcom/android/server/audio/AudioService;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string/jumbo v5, "hearing_revision"

    invoke-static {v4, v5, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    iget-object v4, p0, Lcom/android/server/audio/AudioService;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string/jumbo v5, "hearing_direction"

    invoke-static {v4, v5, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    iget-object v4, p0, Lcom/android/server/audio/AudioService;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string/jumbo v5, "hearing_parameters"

    invoke-static {v4, v5}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "audioEffectParam;dha="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    const-string/jumbo v4, "AudioService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "setGlobalMySoundGain dha Parameter : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private setGlobalUpscaler(I)V
    .locals 1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    const-string/jumbo v0, "upscaler=on"

    invoke-static {v0}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    const-string/jumbo v0, "upscaler=off"

    invoke-static {v0}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    goto :goto_0
.end method

.method private setMasterMuteInternal(ZILjava/lang/String;II)V
    .locals 2

    const/16 v0, 0x3e8

    if-ne p4, v0, :cond_0

    invoke-static {p4}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v0

    invoke-static {p5, v0}, Landroid/os/UserHandle;->getUid(II)I

    move-result p4

    :cond_0
    if-nez p1, :cond_1

    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mAppOps:Landroid/app/AppOpsManager;

    const/16 v1, 0x21

    invoke-virtual {v0, v1, p4, p3}, Landroid/app/AppOpsManager;->noteOp(IILjava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_1

    return-void

    :cond_1
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    if-eq p5, v0, :cond_2

    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "android.permission.INTERACT_ACROSS_USERS_FULL"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_2

    return-void

    :cond_2
    invoke-direct {p0, p1, p2, p5}, Lcom/android/server/audio/AudioService;->setMasterMuteInternalNoCallerCheck(ZII)V

    return-void
.end method

.method private setMasterMuteInternalNoCallerCheck(ZII)V
    .locals 6

    sget-boolean v1, Lcom/android/server/audio/AudioService;->DEBUG_VOL:Z

    if-eqz v1, :cond_0

    const-string/jumbo v1, "AudioService"

    const-string/jumbo v2, "Master mute %s, %d, user=%d"

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x1

    aput-object v4, v3, v5

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x2

    aput-object v4, v3, v5

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-boolean v1, p0, Lcom/android/server/audio/AudioService;->mUseFixedVolume:Z

    if-eqz v1, :cond_1

    return-void

    :cond_1
    invoke-direct {p0}, Lcom/android/server/audio/AudioService;->getCurrentUserId()I

    move-result v1

    if-ne v1, p3, :cond_2

    invoke-static {}, Landroid/media/AudioSystem;->getMasterMute()Z

    move-result v1

    if-eq p1, v1, :cond_2

    invoke-direct {p0, p1}, Lcom/android/server/audio/AudioService;->setSystemAudioMute(Z)V

    invoke-static {p1}, Landroid/media/AudioSystem;->setMasterMute(Z)I

    invoke-direct {p0, p1, p2}, Lcom/android/server/audio/AudioService;->sendMasterMuteUpdate(ZI)V

    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "android.media.MASTER_MUTE_CHANGED_ACTION"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v1, "android.media.EXTRA_MASTER_VOLUME_MUTED"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    invoke-direct {p0, v0}, Lcom/android/server/audio/AudioService;->sendBroadcastToAll(Landroid/content/Intent;)V

    :cond_2
    return-void
.end method

.method private setMediaVolumeBackup(III)I
    .locals 12

    const/4 v11, 0x2

    const/4 v6, 0x0

    const/4 v10, -0x1

    const/4 v5, 0x1

    const/4 v9, 0x3

    invoke-direct {p0, p1}, Lcom/android/server/audio/AudioService;->getDeviceForStream(I)I

    move-result v0

    const/4 v2, 0x0

    const-string/jumbo v4, "AudioService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "setMediaVolumeBackup() device="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, " streamType="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, ", index="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, ", flags="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-ne p3, v10, :cond_0

    if-ne p2, v5, :cond_3

    move v4, v5

    :goto_0
    iput-boolean v4, p0, Lcom/android/server/audio/AudioService;->mIsMediaVolumeBackup:Z

    :cond_0
    const/4 v1, 0x1

    const/4 v3, 0x0

    :goto_1
    const/16 v4, 0x80

    if-gt v1, v4, :cond_2

    if-eq v1, v11, :cond_1

    const/4 v4, 0x4

    if-ne v1, v4, :cond_4

    :cond_1
    if-ne v0, v1, :cond_5

    move v2, v3

    if-eq p3, v10, :cond_5

    :cond_2
    if-eq p3, v10, :cond_8

    iget-object v4, p0, Lcom/android/server/audio/AudioService;->mMediaVolumeBackup:[I

    mul-int/lit8 v7, p2, 0xa

    aput v7, v4, v2

    :goto_2
    const-string/jumbo v4, "AudioService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "setMediaVolumeBackup() device="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, ", BackupVolIdxs=("

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/server/audio/AudioService;->mMediaVolumeBackup:[I

    aget v6, v8, v6

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, ", "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/server/audio/AudioService;->mMediaVolumeBackup:[I

    aget v5, v7, v5

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ", "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/server/audio/AudioService;->mMediaVolumeBackup:[I

    aget v6, v6, v11

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ", "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/server/audio/AudioService;->mMediaVolumeBackup:[I

    aget v6, v6, v9

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ", "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/server/audio/AudioService;->mMediaVolumeBackup:[I

    const/4 v7, 0x4

    aget v6, v6, v7

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ", "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/server/audio/AudioService;->mMediaVolumeBackup:[I

    const/4 v7, 0x5

    aget v6, v6, v7

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return p2

    :cond_3
    move v4, v6

    goto/16 :goto_0

    :cond_4
    const/16 v4, 0x8

    if-eq v1, v4, :cond_1

    const/16 v4, 0x10

    if-eq v1, v4, :cond_1

    const/16 v4, 0x20

    if-eq v1, v4, :cond_1

    const/16 v4, 0x80

    if-eq v1, v4, :cond_1

    :goto_3
    shl-int/lit8 v1, v1, 0x1

    goto/16 :goto_1

    :cond_5
    if-ne p3, v10, :cond_6

    iget-boolean v4, p0, Lcom/android/server/audio/AudioService;->mIsMediaVolumeBackup:Z

    if-eqz v4, :cond_7

    iget-object v4, p0, Lcom/android/server/audio/AudioService;->mMediaVolumeBackup:[I

    iget-object v7, p0, Lcom/android/server/audio/AudioService;->mStreamStates:[Lcom/android/server/audio/AudioService$VolumeStreamState;

    aget-object v7, v7, v9

    invoke-virtual {v7, v1}, Lcom/android/server/audio/AudioService$VolumeStreamState;->getIndex(I)I

    move-result v7

    aput v7, v4, v3

    iget-object v4, p0, Lcom/android/server/audio/AudioService;->mMediaVolumeBackup:[I

    aget v4, v4, v3

    if-lez v4, :cond_6

    iget-object v4, p0, Lcom/android/server/audio/AudioService;->mStreamStates:[Lcom/android/server/audio/AudioService$VolumeStreamState;

    aget-object v4, v4, v9

    const-string/jumbo v7, "AudioService"

    invoke-virtual {v4, v5, v1, v7}, Lcom/android/server/audio/AudioService$VolumeStreamState;->setIndex(IILjava/lang/String;)Z

    invoke-static {v9, v5, v1}, Landroid/media/AudioSystem;->setStreamVolumeIndex(III)I

    :cond_6
    :goto_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    :cond_7
    iget-object v4, p0, Lcom/android/server/audio/AudioService;->mStreamStates:[Lcom/android/server/audio/AudioService$VolumeStreamState;

    aget-object v4, v4, v9

    iget-object v7, p0, Lcom/android/server/audio/AudioService;->mMediaVolumeBackup:[I

    aget v7, v7, v3

    const-string/jumbo v8, "AudioService"

    invoke-virtual {v4, v7, v1, v8}, Lcom/android/server/audio/AudioService$VolumeStreamState;->setIndex(IILjava/lang/String;)Z

    iget-object v4, p0, Lcom/android/server/audio/AudioService;->mMediaVolumeBackup:[I

    aget v4, v4, v3

    add-int/lit8 v4, v4, 0x5

    div-int/lit8 v4, v4, 0xa

    invoke-static {v9, v4, v1}, Landroid/media/AudioSystem;->setStreamVolumeIndex(III)I

    goto :goto_4

    :cond_8
    iget-boolean v4, p0, Lcom/android/server/audio/AudioService;->mIsMediaVolumeBackup:Z

    if-eqz v4, :cond_9

    iget-object v4, p0, Lcom/android/server/audio/AudioService;->mMediaVolumeBackup:[I

    aget v4, v4, v2

    if-lez v4, :cond_9

    const/4 p2, 0x1

    goto/16 :goto_2

    :cond_9
    iget-object v4, p0, Lcom/android/server/audio/AudioService;->mMediaVolumeBackup:[I

    aget v4, v4, v2

    add-int/lit8 v4, v4, 0x5

    div-int/lit8 p2, v4, 0xa

    goto/16 :goto_2
.end method

.method private setMicrophoneMuteNoCallerCheck(ZI)V
    .locals 5

    sget-boolean v0, Lcom/android/server/audio/AudioService;->DEBUG_VOL:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "AudioService"

    const-string/jumbo v1, "Mic mute %s, user=%d"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x1

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-direct {p0}, Lcom/android/server/audio/AudioService;->getCurrentUserId()I

    move-result v0

    if-ne v0, p2, :cond_1

    invoke-static {p1}, Landroid/media/AudioSystem;->muteMicrophone(Z)I

    :cond_1
    return-void
.end method

.method private setModeInt(ILandroid/os/IBinder;ILjava/lang/String;)I
    .locals 18

    sget-boolean v3, Lcom/android/server/audio/AudioService;->DEBUG_MODE:Z

    if-eqz v3, :cond_0

    const-string/jumbo v3, "AudioService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "setModeInt(mode="

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, p1

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v7, ", pid="

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, p3

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v7, ", uid="

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v7, ", caller="

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v7, ")"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    const/4 v15, 0x0

    if-nez p2, :cond_1

    const-string/jumbo v3, "AudioService"

    const-string/jumbo v4, "setModeInt() called with null binder"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v15

    :cond_0
    const-string/jumbo v3, "AudioService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "setModeInt(mode="

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, p1

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v7, ", pid="

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, p3

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v7, ")"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    const/4 v12, 0x0

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/audio/AudioService;->mSetModeDeathHandlers:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v14

    :cond_2
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/server/audio/AudioService$SetModeDeathHandler;

    invoke-virtual {v11}, Lcom/android/server/audio/AudioService$SetModeDeathHandler;->getPid()I

    move-result v3

    move/from16 v0, p3

    if-ne v3, v0, :cond_2

    move-object v12, v11

    invoke-interface {v14}, Ljava/util/Iterator;->remove()V

    :try_start_0
    invoke-virtual {v11}, Lcom/android/server/audio/AudioService$SetModeDeathHandler;->getBinder()Landroid/os/IBinder;

    move-result-object v3

    const/4 v4, 0x0

    invoke-interface {v3, v11, v4}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z
    :try_end_0
    .catch Ljava/util/NoSuchElementException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_3
    :goto_1
    const/16 v16, 0x0

    :cond_4
    if-nez p1, :cond_c

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/audio/AudioService;->mSetModeDeathHandlers:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_5

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/audio/AudioService;->mSetModeDeathHandlers:Ljava/util/ArrayList;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/server/audio/AudioService$SetModeDeathHandler;

    invoke-virtual {v12}, Lcom/android/server/audio/AudioService$SetModeDeathHandler;->getBinder()Landroid/os/IBinder;

    move-result-object p2

    invoke-virtual {v12}, Lcom/android/server/audio/AudioService$SetModeDeathHandler;->getMode()I

    move-result p1

    invoke-static {v12}, Lcom/android/server/audio/AudioService$SetModeDeathHandler;->-get0(Lcom/android/server/audio/AudioService$SetModeDeathHandler;)I

    move-result v3

    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/server/audio/AudioService;->mSetModeOndump:I

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/audio/AudioService;->mModeListOndump:Landroid/util/SparseArray;

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/server/audio/AudioService;->mSetModeOndump:I

    invoke-virtual {v3, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/server/audio/AudioService;->mCallingModeOndump:Ljava/lang/String;

    sget-boolean v3, Lcom/android/server/audio/AudioService;->DEBUG_MODE:Z

    if-eqz v3, :cond_5

    const-string/jumbo v3, "AudioService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, " using mode="

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, p1

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v7, " instead due to death hdlr at pid="

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v12}, Lcom/android/server/audio/AudioService$SetModeDeathHandler;->-get0(Lcom/android/server/audio/AudioService$SetModeDeathHandler;)I

    move-result v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v7, " caller="

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/audio/AudioService;->mCallingModeOndump:Ljava/lang/String;

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    :goto_2
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/server/audio/AudioService;->mMode:I

    move/from16 v0, p1

    if-eq v0, v3, :cond_12

    if-nez p1, :cond_6

    const-string/jumbo v3, "AudioService"

    const-string/jumbo v4, "setModeInt() called setPhoneState"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    invoke-static/range {p1 .. p1}, Landroid/media/AudioSystem;->setPhoneState(I)I

    move-result v16

    if-nez v16, :cond_f

    const-string/jumbo v3, "persist.audio.voipcpufreq"

    const/4 v4, 0x0

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v3

    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/server/audio/AudioService;->mCPUBoostValueForVoip:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/server/audio/AudioService;->mCPUBoostValueForVoip:I

    if-lez v3, :cond_7

    const/4 v3, 0x3

    move/from16 v0, p1

    if-ne v0, v3, :cond_e

    const/4 v3, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/server/audio/AudioService;->startCPUBoost(I)V

    :cond_7
    :goto_3
    sget-boolean v3, Lcom/android/server/audio/AudioService;->DEBUG_MODE:Z

    if-eqz v3, :cond_8

    const-string/jumbo v3, "AudioService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, " mode successfully set to "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, p1

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_8
    move/from16 v0, p1

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/audio/AudioService;->mMode:I

    move/from16 v0, p3

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/audio/AudioService;->mSetModeOndump:I

    move-object/from16 v0, p4

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/audio/AudioService;->mCallingModeOndump:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/audio/AudioService;->mModeListOndump:Landroid/util/SparseArray;

    move/from16 v0, p3

    move-object/from16 v1, p4

    invoke-virtual {v3, v0, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :goto_4
    if-eqz v16, :cond_9

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/audio/AudioService;->mSetModeDeathHandlers:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_4

    :cond_9
    if-nez v16, :cond_b

    if-eqz p1, :cond_a

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/audio/AudioService;->mSetModeDeathHandlers:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_13

    const-string/jumbo v3, "AudioService"

    const-string/jumbo v4, "setMode() different from MODE_NORMAL with empty mode client stack"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_a
    :goto_5
    const/high16 v3, -0x80000000

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/server/audio/AudioService;->getActiveStreamType(I)I

    move-result v17

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/android/server/audio/AudioService;->getDeviceForStream(I)I

    move-result v6

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/audio/AudioService;->mStreamStates:[Lcom/android/server/audio/AudioService$VolumeStreamState;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/audio/AudioService;->mStreamVolumeAlias:[I

    aget v4, v4, v17

    aget-object v3, v3, v4

    invoke-virtual {v3, v6}, Lcom/android/server/audio/AudioService$VolumeStreamState;->getIndex(I)I

    move-result v5

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/audio/AudioService;->mStreamVolumeAlias:[I

    aget v4, v3, v17

    const/4 v7, 0x1

    move-object/from16 v3, p0

    move-object/from16 v8, p4

    invoke-direct/range {v3 .. v8}, Lcom/android/server/audio/AudioService;->setStreamVolumeInt(IIIZLjava/lang/String;)V

    const/4 v3, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p4

    invoke-direct {v0, v3, v1}, Lcom/android/server/audio/AudioService;->updateStreamVolumeAlias(ZLjava/lang/String;)V

    new-instance v13, Landroid/content/Intent;

    const-string/jumbo v3, "android.samsung.media.action.AUDIO_MODE"

    invoke-direct {v13, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v3, "android.samsung.media.extra.AUDIO_MODE"

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/server/audio/AudioService;->mMode:I

    invoke-virtual {v13, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/android/server/audio/AudioService;->sendBroadcastToAll(Landroid/content/Intent;)V

    :cond_b
    return v15

    :catch_0
    move-exception v10

    const-string/jumbo v3, "AudioService"

    const-string/jumbo v4, "SetModeDeathHandler not registered to binder"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    :cond_c
    if-nez v12, :cond_d

    new-instance v12, Lcom/android/server/audio/AudioService$SetModeDeathHandler;

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move/from16 v2, p3

    invoke-direct {v12, v0, v1, v2}, Lcom/android/server/audio/AudioService$SetModeDeathHandler;-><init>(Lcom/android/server/audio/AudioService;Landroid/os/IBinder;I)V

    :cond_d
    const/4 v3, 0x0

    :try_start_1
    move-object/from16 v0, p2

    invoke-interface {v0, v12, v3}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    :goto_6
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/audio/AudioService;->mSetModeDeathHandlers:Ljava/util/ArrayList;

    const/4 v4, 0x0

    invoke-virtual {v3, v4, v12}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    move/from16 v0, p1

    invoke-virtual {v12, v0}, Lcom/android/server/audio/AudioService$SetModeDeathHandler;->setMode(I)V

    move/from16 v0, p3

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/audio/AudioService;->mSetModeOndump:I

    move-object/from16 v0, p4

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/audio/AudioService;->mCallingModeOndump:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/audio/AudioService;->mModeListOndump:Landroid/util/SparseArray;

    move/from16 v0, p3

    move-object/from16 v1, p4

    invoke-virtual {v3, v0, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto/16 :goto_2

    :catch_1
    move-exception v9

    const-string/jumbo v3, "AudioService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "setMode() could not link to "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p2

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v7, " binder death"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6

    :cond_e
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/server/audio/AudioService;->mCPUBoostType:I

    and-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_7

    const/4 v3, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/server/audio/AudioService;->stopCPUBoost(I)V

    goto/16 :goto_3

    :cond_f
    if-eqz v12, :cond_10

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/audio/AudioService;->mSetModeDeathHandlers:Ljava/util/ArrayList;

    invoke-virtual {v3, v12}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    const/4 v3, 0x0

    :try_start_2
    move-object/from16 v0, p2

    invoke-interface {v0, v12, v3}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z
    :try_end_2
    .catch Ljava/util/NoSuchElementException; {:try_start_2 .. :try_end_2} :catch_2

    :cond_10
    :goto_7
    sget-boolean v3, Lcom/android/server/audio/AudioService;->DEBUG_MODE:Z

    if-eqz v3, :cond_11

    const-string/jumbo v3, "AudioService"

    const-string/jumbo v4, " mode set to MODE_NORMAL after phoneState pb"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_11
    const/16 p1, 0x0

    goto/16 :goto_4

    :catch_2
    move-exception v10

    const-string/jumbo v3, "AudioService"

    const-string/jumbo v4, "SetModeDeathHandler not registered to binder"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7

    :cond_12
    const/16 v16, 0x0

    goto/16 :goto_4

    :cond_13
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/audio/AudioService;->mSetModeDeathHandlers:Ljava/util/ArrayList;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/audio/AudioService$SetModeDeathHandler;

    invoke-virtual {v3}, Lcom/android/server/audio/AudioService$SetModeDeathHandler;->getPid()I

    move-result v15

    goto/16 :goto_5
.end method

.method private setMonoMode(I)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "toMono="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    return-void
.end method

.method private setNaturalSoundMode(I)V
    .locals 3

    const-string/jumbo v0, "AudioService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setNaturalSoundMode() - mode:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-lez p1, :cond_0

    const-string/jumbo v0, "bwe=on"

    invoke-static {v0}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    const-string/jumbo v0, "bwe=off"

    invoke-static {v0}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    goto :goto_0
.end method

.method private setNbQualityMode(I)V
    .locals 1

    if-lez p1, :cond_0

    const-string/jumbo v0, "nb_quality=on"

    invoke-static {v0}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    const-string/jumbo v0, "nb_quality=off"

    invoke-static {v0}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    goto :goto_0
.end method

.method private setOrientationForAudioSystem()V
    .locals 2

    iget v0, p0, Lcom/android/server/audio/AudioService;->mDeviceOrientation:I

    packed-switch v0, :pswitch_data_0

    const-string/jumbo v0, "AudioService"

    const-string/jumbo v1, "Unknown orientation"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :pswitch_0
    const-string/jumbo v0, "orientation=landscape"

    invoke-static {v0}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    goto :goto_0

    :pswitch_1
    const-string/jumbo v0, "orientation=portrait"

    invoke-static {v0}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    goto :goto_0

    :pswitch_2
    const-string/jumbo v0, "orientation=square"

    invoke-static {v0}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    goto :goto_0

    :pswitch_3
    const-string/jumbo v0, "orientation=undefined"

    invoke-static {v0}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method private setRingerMode(ILjava/lang/String;Z)V
    .locals 12

    const/4 v2, 0x1

    iget-boolean v0, p0, Lcom/android/server/audio/AudioService;->mUseFixedVolume:Z

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/android/server/audio/AudioService;->isPlatformTelevision()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    return-void

    :cond_1
    if-eqz p2, :cond_2

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_3

    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Bad caller: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    invoke-direct {p0, p1}, Lcom/android/server/audio/AudioService;->ensureValidRingerMode(I)V

    if-ne p1, v2, :cond_4

    iget-boolean v0, p0, Lcom/android/server/audio/AudioService;->mHasVibrator:Z

    if-eqz v0, :cond_7

    :cond_4
    :goto_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v10

    :try_start_0
    iget-object v9, p0, Lcom/android/server/audio/AudioService;->mSettingsLock:Ljava/lang/Object;

    monitor-enter v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-virtual {p0}, Lcom/android/server/audio/AudioService;->getRingerModeInternal()I

    move-result v4

    invoke-virtual {p0}, Lcom/android/server/audio/AudioService;->getRingerModeExternal()I

    move-result v1

    if-eqz p3, :cond_8

    invoke-direct {p0, p1}, Lcom/android/server/audio/AudioService;->setRingerModeExt(I)V

    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mRingerModeDelegate:Landroid/media/AudioManagerInternal$RingerModeDelegate;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mRingerModeDelegate:Landroid/media/AudioManagerInternal$RingerModeDelegate;

    iget-object v5, p0, Lcom/android/server/audio/AudioService;->mVolumePolicy:Landroid/media/VolumePolicy;

    move v2, p1

    move-object v3, p2

    invoke-interface/range {v0 .. v5}, Landroid/media/AudioManagerInternal$RingerModeDelegate;->onSetRingerModeExternal(IILjava/lang/String;ILandroid/media/VolumePolicy;)I

    move-result p1

    :cond_5
    if-eq p1, v4, :cond_6

    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mCallingRingerMode:[Ljava/lang/String;

    aput-object p2, v0, p1

    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mIsExternalRingerMode:[Z

    aput-boolean p3, v0, p1

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/android/server/audio/AudioService;->setRingerModeInt(IZ)V

    invoke-direct {p0, p1, p2}, Lcom/android/server/audio/AudioService;->setRingerModeInt_sub(ILjava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_6
    :goto_1
    :try_start_2
    monitor-exit v9
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :cond_7
    const/4 p1, 0x0

    goto :goto_0

    :cond_8
    if-eq p1, v4, :cond_9

    :try_start_3
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mCallingRingerMode:[Ljava/lang/String;

    aput-object p2, v0, p1

    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mIsExternalRingerMode:[Z

    aput-boolean p3, v0, p1

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/android/server/audio/AudioService;->setRingerModeInt(IZ)V

    invoke-direct {p0, p1, p2}, Lcom/android/server/audio/AudioService;->setRingerModeInt_sub(ILjava/lang/String;)V

    :cond_9
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mRingerModeDelegate:Landroid/media/AudioManagerInternal$RingerModeDelegate;

    if-eqz v0, :cond_a

    iget-object v3, p0, Lcom/android/server/audio/AudioService;->mRingerModeDelegate:Landroid/media/AudioManagerInternal$RingerModeDelegate;

    iget-object v8, p0, Lcom/android/server/audio/AudioService;->mVolumePolicy:Landroid/media/VolumePolicy;

    move v5, p1

    move-object v6, p2

    move v7, v1

    invoke-interface/range {v3 .. v8}, Landroid/media/AudioManagerInternal$RingerModeDelegate;->onSetRingerModeInternal(IILjava/lang/String;ILandroid/media/VolumePolicy;)I

    move-result p1

    :cond_a
    invoke-direct {p0, p1}, Lcom/android/server/audio/AudioService;->setRingerModeExt(I)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    :try_start_4
    monitor-exit v9

    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :catchall_1
    move-exception v0

    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0
.end method

.method private setRingerModeExt(I)V
    .locals 2

    iget-object v1, p0, Lcom/android/server/audio/AudioService;->mSettingsLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget v0, p0, Lcom/android/server/audio/AudioService;->mRingerModeExternal:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne p1, v0, :cond_0

    monitor-exit v1

    return-void

    :cond_0
    :try_start_1
    iput p1, p0, Lcom/android/server/audio/AudioService;->mRingerModeExternal:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v1

    const-string/jumbo v0, "android.media.RINGER_MODE_CHANGED"

    invoke-direct {p0, v0, p1}, Lcom/android/server/audio/AudioService;->broadcastRingerMode(Ljava/lang/String;I)V

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private setRingerModeInt(IZ)V
    .locals 9

    const/4 v2, 0x0

    iget-object v1, p0, Lcom/android/server/audio/AudioService;->mSettingsLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget v0, p0, Lcom/android/server/audio/AudioService;->mRingerMode:I

    if-eq v0, p1, :cond_2

    const/4 v7, 0x1

    :goto_0
    iget v0, p0, Lcom/android/server/audio/AudioService;->mRingerMode:I

    iput v0, p0, Lcom/android/server/audio/AudioService;->mPrevRingerMode:I

    iput p1, p0, Lcom/android/server/audio/AudioService;->mRingerMode:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setRingerModeInt is called by pid: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", uid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", Mode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/audio/AudioService;->mRingerMode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const-string/jumbo v0, "AudioService"

    invoke-static {v0, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/server/audio/AudioService;->muteRingerModeStreams()V

    if-eqz p2, :cond_0

    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mAudioHandler:Lcom/android/server/audio/AudioService$AudioHandler;

    const/4 v1, 0x3

    const/4 v5, 0x0

    const/16 v6, 0x1f4

    move v3, v2

    move v4, v2

    invoke-static/range {v0 .. v6}, Lcom/android/server/audio/AudioService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    :cond_0
    if-eqz v7, :cond_1

    const-string/jumbo v0, "android.media.INTERNAL_RINGER_MODE_CHANGED_ACTION"

    invoke-direct {p0, v0, p1}, Lcom/android/server/audio/AudioService;->broadcastRingerMode(Ljava/lang/String;I)V

    :cond_1
    return-void

    :cond_2
    const/4 v7, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private setRingerModeInt_sub(ILjava/lang/String;)V
    .locals 8

    const-string/jumbo v0, "com.drivemode"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    packed-switch p1, :pswitch_data_0

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mAudioHandler:Lcom/android/server/audio/AudioService$AudioHandler;

    const-string/jumbo v5, "persist.audio.ringermode"

    const/16 v1, 0x6f

    const/4 v2, 0x2

    const/4 v4, 0x0

    const/4 v6, 0x0

    move v3, p1

    invoke-static/range {v0 .. v6}, Lcom/android/server/audio/AudioService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_2

    :cond_1
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mAudioHandler:Lcom/android/server/audio/AudioService$AudioHandler;

    const-string/jumbo v5, "persist.sys.silent"

    const/16 v1, 0x6f

    const/4 v2, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v6, 0x0

    invoke-static/range {v0 .. v6}, Lcom/android/server/audio/AudioService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    :goto_1
    return-void

    :pswitch_0
    const-string/jumbo v0, "AudioService"

    const-string/jumbo v1, "Ringer mode : silent & set driving mode off"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/audio/AudioService;->mSilentModeOff:Z

    goto :goto_0

    :pswitch_1
    const-string/jumbo v0, "AudioService"

    const-string/jumbo v1, "Ringer mode : vibrate"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/audio/AudioService;->mSilentModeOff:Z

    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mAudioHandler:Lcom/android/server/audio/AudioService$AudioHandler;

    const/16 v1, 0x6b

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static/range {v0 .. v6}, Lcom/android/server/audio/AudioService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    goto :goto_0

    :pswitch_2
    const-string/jumbo v0, "AudioService"

    const-string/jumbo v1, "Ringer mode : normal"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v7, :cond_0

    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mAudioHandler:Lcom/android/server/audio/AudioService$AudioHandler;

    const/16 v1, 0x6a

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static/range {v0 .. v6}, Lcom/android/server/audio/AudioService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mAudioHandler:Lcom/android/server/audio/AudioService$AudioHandler;

    const-string/jumbo v5, "persist.sys.silent"

    const/16 v1, 0x6f

    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x0

    invoke-static/range {v0 .. v6}, Lcom/android/server/audio/AudioService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    goto :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private setSafeMediaVolumeEnabled(ZLjava/lang/String;)V
    .locals 8

    const/4 v3, 0x3

    const/4 v2, 0x2

    iget-object v7, p0, Lcom/android/server/audio/AudioService;->mSafeMediaVolumeState:Ljava/lang/Integer;

    monitor-enter v7

    :try_start_0
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mSafeMediaVolumeState:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mSafeMediaVolumeState:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mSafeMediaVolumeState:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v0, v2, :cond_1

    const/4 v0, 0x3

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/audio/AudioService;->mSafeMediaVolumeState:Ljava/lang/Integer;

    invoke-direct {p0, p2}, Lcom/android/server/audio/AudioService;->enforceSafeMediaVolume(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    :goto_0
    monitor-exit v7

    return-void

    :cond_1
    if-nez p1, :cond_0

    :try_start_1
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mSafeMediaVolumeState:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v0, v3, :cond_0

    const/4 v0, 0x2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/audio/AudioService;->mSafeMediaVolumeState:Ljava/lang/Integer;

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/audio/AudioService;->mMusicActiveMs:I

    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mAudioHandler:Lcom/android/server/audio/AudioService$AudioHandler;

    const/16 v1, 0xe

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const v6, 0xea60

    move-object v5, p2

    invoke-static/range {v0 .. v6}, Lcom/android/server/audio/AudioService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v7

    throw v0
.end method

.method private setSoundAssistant(Landroid/media/AudioParameter;)V
    .locals 10

    const/16 v9, 0x64

    const/4 v8, -0x1

    const/4 v4, 0x1

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/android/server/audio/AudioService;->mContext:Landroid/content/Context;

    const-string/jumbo v7, "android.permission.MODIFY_PHONE_STATE"

    invoke-virtual {v6, v7}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v6

    if-eqz v6, :cond_0

    const-string/jumbo v4, "AudioService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "MODIFY_PHONE_STATE Permission Denial: setMode(MODE_IN_CALL) from pid="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ", uid="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const/4 v2, 0x0

    const-string/jumbo v6, "adjust_media_volume_only"

    invoke-virtual {p1, v6}, Landroid/media/AudioParameter;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_3

    invoke-direct {p0, v2, v5}, Lcom/android/server/audio/AudioService;->getIntValueFromString(Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v4, :cond_2

    :goto_0
    iput-boolean v4, p0, Lcom/android/server/audio/AudioService;->mAdjustMediaVolumeOnly:Z

    iget-object v4, p0, Lcom/android/server/audio/AudioService;->mSettingDBHelper:Lcom/android/server/audio/AudioService$AudioSettingsDBHelper;

    const-string/jumbo v5, "adjust_media_volume_only"

    iget-boolean v6, p0, Lcom/android/server/audio/AudioService;->mAdjustMediaVolumeOnly:Z

    invoke-virtual {v4, v5, v6}, Lcom/android/server/audio/AudioService$AudioSettingsDBHelper;->setBooleanValue(Ljava/lang/String;Z)V

    :cond_1
    :goto_1
    return-void

    :cond_2
    move v4, v5

    goto :goto_0

    :cond_3
    const-string/jumbo v6, "remove_app_volume"

    invoke-virtual {p1, v6}, Landroid/media/AudioParameter;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_6

    invoke-direct {p0, v2, v8}, Lcom/android/server/audio/AudioService;->getIntValueFromString(Ljava/lang/String;I)I

    move-result v3

    if-eq v3, v8, :cond_4

    iget-object v4, p0, Lcom/android/server/audio/AudioService;->mAppVolumeFromSoundAssistant:Landroid/util/SparseIntArray;

    invoke-virtual {v4, v3, v8}, Landroid/util/SparseIntArray;->get(II)I

    move-result v4

    if-ne v4, v8, :cond_5

    :cond_4
    const-string/jumbo v4, "AudioService"

    const-string/jumbo v5, "Invalid uid from SoundAssistant"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_5
    iget-object v4, p0, Lcom/android/server/audio/AudioService;->mAppVolumeFromSoundAssistant:Landroid/util/SparseIntArray;

    invoke-virtual {v4, v3}, Landroid/util/SparseIntArray;->delete(I)V

    iget-object v4, p0, Lcom/android/server/audio/AudioService;->mSoundKitchen:Lcom/android/server/audio/AudioService$SoundKitchen;

    invoke-virtual {v4, v3, v9}, Lcom/android/server/audio/AudioService$SoundKitchen;->setVolume(II)V

    goto :goto_1

    :cond_6
    const-string/jumbo v6, "sound_balance"

    invoke-virtual {p1, v6}, Landroid/media/AudioParameter;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_9

    const/16 v4, 0x32

    invoke-direct {p0, v2, v4}, Lcom/android/server/audio/AudioService;->getIntValueFromString(Ljava/lang/String;I)I

    move-result v0

    if-ltz v0, :cond_7

    if-le v0, v9, :cond_8

    :cond_7
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v5, "Invalid balance"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_8
    const-string/jumbo v4, "sound_balance"

    invoke-direct {p0, v4, v0}, Lcom/android/server/audio/AudioService;->setSystemSettingForSoundAssistant(Ljava/lang/String;I)V

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "sound_balance="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    iput v0, p0, Lcom/android/server/audio/AudioService;->mSoundBalance:I

    goto :goto_1

    :cond_9
    const-string/jumbo v6, "mono_sound"

    invoke-virtual {p1, v6}, Landroid/media/AudioParameter;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_b

    invoke-direct {p0, v2, v5}, Lcom/android/server/audio/AudioService;->getIntValueFromString(Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_a

    if-eq v1, v4, :cond_a

    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v5, "Invalid balance"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_a
    const-string/jumbo v4, "mono_audio_db"

    invoke-direct {p0, v4, v1}, Lcom/android/server/audio/AudioService;->setSystemSettingForSoundAssistant(Ljava/lang/String;I)V

    iput v1, p0, Lcom/android/server/audio/AudioService;->mMonoMode:I

    invoke-direct {p0, v1}, Lcom/android/server/audio/AudioService;->setMonoMode(I)V

    goto/16 :goto_1

    :cond_b
    const-string/jumbo v6, "all_sound_mute"

    invoke-virtual {p1, v6}, Landroid/media/AudioParameter;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_d

    invoke-direct {p0, v2, v5}, Lcom/android/server/audio/AudioService;->getIntValueFromString(Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_c

    if-eq v1, v4, :cond_c

    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v5, "Invalid balance"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_c
    const-string/jumbo v4, "all_sound_off"

    invoke-direct {p0, v4, v1}, Lcom/android/server/audio/AudioService;->setSystemSettingForSoundAssistant(Ljava/lang/String;I)V

    iput v1, p0, Lcom/android/server/audio/AudioService;->mAllSoundMute:I

    invoke-direct {p0}, Lcom/android/server/audio/AudioService;->setAllSoundMute()V

    goto/16 :goto_1

    :cond_d
    const-string/jumbo v6, "enable_floating_button"

    invoke-virtual {p1, v6}, Landroid/media/AudioParameter;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-direct {p0, v2, v5}, Lcom/android/server/audio/AudioService;->getIntValueFromString(Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v4, :cond_e

    :goto_2
    iput-boolean v4, p0, Lcom/android/server/audio/AudioService;->mEnableSoundAssistant:Z

    iget-object v4, p0, Lcom/android/server/audio/AudioService;->mSettingDBHelper:Lcom/android/server/audio/AudioService$AudioSettingsDBHelper;

    const-string/jumbo v5, "enable_floating_button"

    iget-boolean v6, p0, Lcom/android/server/audio/AudioService;->mEnableSoundAssistant:Z

    invoke-virtual {v4, v5, v6}, Lcom/android/server/audio/AudioService$AudioSettingsDBHelper;->setBooleanValue(Ljava/lang/String;Z)V

    goto/16 :goto_1

    :cond_e
    move v4, v5

    goto :goto_2
.end method

.method private setSoundBalance()V
    .locals 5

    iget-object v1, p0, Lcom/android/server/audio/AudioService;->mContentResolver:Landroid/content/ContentResolver;

    const-string/jumbo v2, "sound_balance"

    const/16 v3, 0x32

    const/4 v4, -0x2

    invoke-static {v1, v2, v3, v4}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "sound_balance="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    iput v0, p0, Lcom/android/server/audio/AudioService;->mSoundBalance:I

    return-void
.end method

.method private setStreamVolume(IIILjava/lang/String;Ljava/lang/String;I)V
    .locals 8

    const/4 v7, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    move-object v5, p5

    move v6, p6

    invoke-direct/range {v0 .. v7}, Lcom/android/server/audio/AudioService;->setStreamVolume(IIILjava/lang/String;Ljava/lang/String;II)V

    return-void
.end method

.method private setStreamVolume(IIILjava/lang/String;Ljava/lang/String;II)V
    .locals 22

    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/android/server/audio/AudioService;->mEnableSoundAssistant:Z

    if-eqz v5, :cond_0

    move-object/from16 v0, p0

    move-object/from16 v1, p5

    invoke-direct {v0, v1}, Lcom/android/server/audio/AudioService;->fromVolumeKey(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/audio/AudioService;->mAudioHandler:Lcom/android/server/audio/AudioService$AudioHandler;

    const/16 v6, 0x77

    const/4 v7, 0x1

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-static/range {v5 .. v11}, Lcom/android/server/audio/AudioService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    :cond_0
    const/4 v12, 0x0

    const/4 v5, 0x3

    move/from16 v0, p1

    if-ne v0, v5, :cond_2

    const-string/jumbo v5, "FINE_VOLUME"

    move-object/from16 v0, p5

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    const/16 v5, 0x96

    move/from16 v0, p2

    if-le v0, v5, :cond_1

    const/4 v12, 0x0

    :goto_0
    div-int/lit8 p2, p2, 0xa

    :goto_1
    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/android/server/audio/AudioService;->mUseFixedVolume:Z

    if-eqz v5, :cond_3

    return-void

    :cond_1
    rem-int/lit8 v12, p2, 0xa

    goto :goto_0

    :cond_2
    const-string/jumbo v5, "AudioService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "setStreamVolume:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, p1

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " index:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, p2

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "flags:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, p3

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " package:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p4

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " device:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, p7

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_3
    const/4 v5, 0x3

    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/android/server/audio/AudioService;->getDeviceForStream(I)I

    move-result v21

    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/android/server/audio/AudioService;->mbVolumeLimitOn:Z

    if-eqz v5, :cond_4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/audio/AudioService;->mStreamVolumeAlias:[I

    aget v5, v5, p1

    const/4 v6, 0x3

    if-ne v5, v6, :cond_4

    mul-int/lit8 v5, p2, 0xa

    add-int/2addr v5, v12

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/server/audio/AudioService;->mVolumeLimitValue:I

    mul-int/lit8 v6, v6, 0xa

    if-le v5, v6, :cond_4

    move/from16 v0, v21

    and-int/lit16 v5, v0, 0x18c

    if-eqz v5, :cond_4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/audio/AudioService;->mVolumeController:Lcom/android/server/audio/AudioService$VolumeController;

    invoke-virtual {v5}, Lcom/android/server/audio/AudioService$VolumeController;->displayVolumeLimiterToast()V

    const-string/jumbo v5, "AudioService"

    const-string/jumbo v6, "SetStreamVolume : already reached at volume limit value"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/audio/AudioService;->mStreamStates:[Lcom/android/server/audio/AudioService$VolumeStreamState;

    const/4 v6, 0x3

    aget-object v5, v5, v6

    move/from16 v0, v21

    invoke-virtual {v5, v0}, Lcom/android/server/audio/AudioService$VolumeStreamState;->getIndex(I)I

    move-result v14

    new-instance v15, Landroid/content/Intent;

    const-string/jumbo v5, "android.media.VOLUME_CHANGED_ACTION"

    invoke-direct {v15, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v5, "android.media.EXTRA_VOLUME_STREAM_TYPE"

    move/from16 v0, p1

    invoke-virtual {v15, v5, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string/jumbo v5, "android.media.EXTRA_VOLUME_STREAM_VALUE"

    invoke-virtual {v15, v5, v14}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string/jumbo v5, "android.media.EXTRA_PREV_VOLUME_STREAM_VALUE"

    invoke-virtual {v15, v5, v14}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lcom/android/server/audio/AudioService;->sendBroadcastToAll(Landroid/content/Intent;)V

    return-void

    :cond_4
    const/4 v5, -0x1

    move/from16 v0, p3

    if-eq v0, v5, :cond_5

    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/android/server/audio/AudioService;->mIsMediaVolumeBackup:Z

    if-eqz v5, :cond_6

    :cond_5
    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/android/server/audio/AudioService;->mIsTalkBackEnabled:Z

    if-eqz v5, :cond_8

    :cond_6
    :goto_2
    invoke-direct/range {p0 .. p1}, Lcom/android/server/audio/AudioService;->ensureValidStreamType(I)V

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/audio/AudioService;->mStreamVolumeAlias:[I

    aget v20, v5, p1

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/audio/AudioService;->mStreamStates:[Lcom/android/server/audio/AudioService$VolumeStreamState;

    aget-object v19, v5, v20

    invoke-direct/range {p0 .. p0}, Lcom/android/server/audio/AudioService;->isFMRadioRecording()Z

    move-result v16

    if-eqz v16, :cond_a

    const/high16 v5, 0x2000000

    move/from16 v0, p3

    if-eq v0, v5, :cond_7

    const/16 v5, 0x11

    move/from16 v0, p3

    if-ne v0, v5, :cond_9

    :cond_7
    return-void

    :cond_8
    invoke-direct/range {p0 .. p3}, Lcom/android/server/audio/AudioService;->setMediaVolumeBackup(III)I

    move-result p2

    const/16 p3, 0x0

    goto :goto_2

    :cond_9
    if-nez p3, :cond_a

    const/16 v5, 0xa

    move/from16 v0, p1

    if-ne v0, v5, :cond_7

    :cond_a
    sget-boolean v5, Lcom/android/server/audio/AudioService;->MULTISOUND_ENABLED:Z

    if-eqz v5, :cond_10

    if-nez p7, :cond_f

    invoke-direct/range {p0 .. p1}, Lcom/android/server/audio/AudioService;->getDeviceForStream(I)I

    move-result p7

    :goto_3
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v18

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/audio/AudioService;->indexOfsetVolume:[I

    aget v13, v5, p1

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/audio/AudioService;->pIdOfsetVolume:[[I

    aget-object v5, v5, p1

    aget v5, v5, v13

    move/from16 v0, v18

    if-eq v0, v5, :cond_b

    add-int/lit8 v5, v13, 0x1

    rem-int/lit8 v13, v5, 0x5

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/audio/AudioService;->pIdOfsetVolume:[[I

    aget-object v5, v5, p1

    aput v18, v5, v13

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/audio/AudioService;->uIdOfsetVolume:[[I

    aget-object v5, v5, p1

    aput p6, v5, v13

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/audio/AudioService;->indexOfsetVolume:[I

    aput v13, v5, p1

    :cond_b
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/audio/AudioService;->pIdOfsetVolumeIndex:[[I

    aget-object v5, v5, p1

    aput p2, v5, v13

    const/16 v5, 0xa

    move/from16 v0, p1

    if-ne v0, v5, :cond_c

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/audio/AudioService;->isRadioSpeakerOn()Z

    move-result v5

    if-nez v5, :cond_d

    :cond_c
    const-string/jumbo v5, "com.sec.android.app.voicenote"

    move-object/from16 v0, p4

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_e

    :cond_d
    const/16 p7, 0x2

    :cond_e
    move/from16 v0, p7

    and-int/lit16 v5, v0, 0x380

    if-nez v5, :cond_11

    and-int/lit8 v5, p3, 0x40

    if-eqz v5, :cond_11

    return-void

    :cond_f
    const/high16 v5, 0x1000000

    or-int p3, p3, v5

    const-string/jumbo v5, "AudioService"

    const-string/jumbo v6, "add MULTI_SOUND flag32"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    :cond_10
    invoke-direct/range {p0 .. p1}, Lcom/android/server/audio/AudioService;->getDeviceForStream(I)I

    move-result p7

    goto :goto_3

    :cond_11
    move-object/from16 v0, p0

    move-object/from16 v1, p4

    invoke-direct {v0, v1}, Lcom/android/server/audio/AudioService;->isAndroidNPlus(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_12

    move-object/from16 v0, p0

    move/from16 v1, v20

    move/from16 v2, p2

    move/from16 v3, p3

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/audio/AudioService;->getNewRingerMode(III)I

    move-result v5

    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/android/server/audio/AudioService;->wouldToggleZenMode(I)Z

    move-result v5

    if-eqz v5, :cond_12

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/audio/AudioService;->mNm:Landroid/app/NotificationManager;

    move-object/from16 v0, p4

    invoke-virtual {v5, v0}, Landroid/app/NotificationManager;->isNotificationPolicyAccessGrantedForPackage(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_13

    :cond_12
    move-object/from16 v0, p0

    move/from16 v1, v20

    move/from16 v2, p3

    invoke-direct {v0, v1, v2}, Lcom/android/server/audio/AudioService;->volumeAdjustmentAllowedByDnd(II)Z

    move-result v5

    if-nez v5, :cond_14

    return-void

    :cond_13
    new-instance v5, Ljava/lang/SecurityException;

    const-string/jumbo v6, "Not allowed to change Do Not Disturb state"

    invoke-direct {v5, v6}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v5

    :cond_14
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/audio/AudioService;->mSafeMediaVolumeState:Ljava/lang/Integer;

    monitor-enter v11

    const/4 v5, 0x0

    :try_start_0
    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/android/server/audio/AudioService;->mPendingVolumeCommand:Lcom/android/server/audio/AudioService$StreamVolumeCommand;

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/android/server/audio/AudioService;->mPendingFineVolumeCommand:Lcom/android/server/audio/AudioService$StreamVolumeCommand;

    move-object/from16 v0, v19

    move/from16 v1, p7

    invoke-virtual {v0, v1}, Lcom/android/server/audio/AudioService$VolumeStreamState;->getIndex(I)I

    move-result v17

    mul-int/lit8 v5, p2, 0xa

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, v20

    invoke-direct {v0, v5, v1, v2}, Lcom/android/server/audio/AudioService;->rescaleIndex(III)I

    move-result p2

    const/4 v5, 0x3

    move/from16 v0, v20

    if-ne v0, v5, :cond_16

    move/from16 v0, p7

    and-int/lit16 v5, v0, 0x380

    if-eqz v5, :cond_16

    and-int/lit8 v5, p3, 0x40

    if-nez v5, :cond_16

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/audio/AudioService;->mA2dpAvrcpLock:Ljava/lang/Object;

    monitor-enter v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/audio/AudioService;->mA2dp:Landroid/bluetooth/BluetoothA2dp;

    if-eqz v5, :cond_15

    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/android/server/audio/AudioService;->mAvrcpAbsVolSupported:Z

    if-eqz v5, :cond_15

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/audio/AudioService;->mA2dp:Landroid/bluetooth/BluetoothA2dp;

    div-int/lit8 v7, p2, 0xa

    invoke-virtual {v5, v7}, Landroid/bluetooth/BluetoothA2dp;->setAvrcpAbsoluteVolume(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_15
    :try_start_2
    monitor-exit v6

    :cond_16
    const/4 v5, 0x3

    move/from16 v0, v20

    if-ne v0, v5, :cond_17

    invoke-virtual/range {p0 .. p1}, Lcom/android/server/audio/AudioService;->getStreamMaxVolume(I)I

    move-result v5

    move-object/from16 v0, p0

    move/from16 v1, v17

    move/from16 v2, p2

    move/from16 v3, p3

    invoke-direct {v0, v1, v2, v5, v3}, Lcom/android/server/audio/AudioService;->setSystemAudioVolume(IIII)V

    :cond_17
    and-int/lit8 p3, p3, -0x21

    const/4 v5, 0x3

    move/from16 v0, v20

    if-ne v0, v5, :cond_18

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/server/audio/AudioService;->mFixedVolumeDevices:I

    and-int v5, v5, p7

    if-eqz v5, :cond_18

    or-int/lit8 p3, p3, 0x20

    if-eqz p2, :cond_18

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/audio/AudioService;->mSafeMediaVolumeState:Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    const/4 v6, 0x3

    if-ne v5, v6, :cond_1c

    move/from16 v0, p7

    and-int/lit16 v5, v0, 0x18c

    if-eqz v5, :cond_1c

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/audio/AudioService;->mSafeMediaVolumeIndex:I

    move/from16 p2, v0

    :cond_18
    :goto_4
    if-nez v16, :cond_19

    move-object/from16 v0, p0

    move/from16 v1, v20

    move/from16 v2, p2

    move/from16 v3, p7

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/audio/AudioService;->checkSafeMediaVolume(III)Z

    move-result v5

    if-eqz v5, :cond_1d

    :cond_19
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/audio/AudioService;->mVolumeController:Lcom/android/server/audio/AudioService$VolumeController;

    invoke-virtual {v5}, Lcom/android/server/audio/AudioService$VolumeController;->isSafeVolumeDialogShowing()Z

    move-result v5

    if-eqz v5, :cond_1a

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/audio/AudioService;->mVolumeController:Lcom/android/server/audio/AudioService$VolumeController;

    const/high16 v6, 0x10000000

    invoke-virtual {v5, v6}, Lcom/android/server/audio/AudioService$VolumeController;->postDisplaySafeVolumeWarning(I)V

    and-int/lit8 p3, p3, -0x2

    :cond_1a
    move-object/from16 v5, p0

    move/from16 v6, p1

    move/from16 v7, p2

    move/from16 v8, p3

    move/from16 v9, p7

    move-object/from16 v10, p5

    invoke-direct/range {v5 .. v10}, Lcom/android/server/audio/AudioService;->onSetStreamVolume(IIIILjava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/audio/AudioService;->mStreamStates:[Lcom/android/server/audio/AudioService$VolumeStreamState;

    aget-object v5, v5, p1

    move/from16 v0, p7

    invoke-virtual {v5, v0}, Lcom/android/server/audio/AudioService$VolumeStreamState;->getIndex(I)I

    move-result p2

    :goto_5
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/audio/AudioService;->mStreamVolumeAlias:[I

    aget v5, v5, p1

    const/4 v6, 0x3

    if-ne v5, v6, :cond_1b

    move-object/from16 v0, p0

    invoke-direct {v0, v12}, Lcom/android/server/audio/AudioService;->setFineVolume(I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :cond_1b
    monitor-exit v11

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, v17

    move/from16 v3, p2

    move/from16 v4, p3

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/server/audio/AudioService;->sendVolumeUpdate(IIII)V

    return-void

    :catchall_0
    move-exception v5

    :try_start_3
    monitor-exit v6

    throw v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception v5

    monitor-exit v11

    throw v5

    :cond_1c
    :try_start_4
    invoke-virtual/range {v19 .. v19}, Lcom/android/server/audio/AudioService$VolumeStreamState;->getMaxIndex()I

    move-result p2

    goto :goto_4

    :cond_1d
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/audio/AudioService;->mVolumeController:Lcom/android/server/audio/AudioService$VolumeController;

    move/from16 v0, p3

    invoke-virtual {v5, v0}, Lcom/android/server/audio/AudioService$VolumeController;->postDisplaySafeVolumeWarning(I)V

    new-instance v5, Lcom/android/server/audio/AudioService$StreamVolumeCommand;

    move-object/from16 v6, p0

    move/from16 v7, p1

    move/from16 v8, p2

    move/from16 v9, p3

    move/from16 v10, p7

    invoke-direct/range {v5 .. v10}, Lcom/android/server/audio/AudioService$StreamVolumeCommand;-><init>(Lcom/android/server/audio/AudioService;IIII)V

    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/android/server/audio/AudioService;->mPendingVolumeCommand:Lcom/android/server/audio/AudioService$StreamVolumeCommand;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_5
.end method

.method private setStreamVolumeInt(IIIZLjava/lang/String;)V
    .locals 16

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/audio/AudioService;->mStreamStates:[Lcom/android/server/audio/AudioService$VolumeStreamState;

    aget-object v8, v3, p1

    move/from16 v0, p2

    move/from16 v1, p3

    move-object/from16 v2, p5

    invoke-virtual {v8, v0, v1, v2}, Lcom/android/server/audio/AudioService$VolumeStreamState;->setIndex(IILjava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    if-eqz p4, :cond_2

    :cond_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/audio/AudioService;->mAudioHandler:Lcom/android/server/audio/AudioService$AudioHandler;

    const/4 v4, 0x0

    const/4 v5, 0x2

    const/4 v7, 0x0

    const/4 v9, 0x0

    move/from16 v6, p3

    invoke-static/range {v3 .. v9}, Lcom/android/server/audio/AudioService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/audio/AudioService;->mFineMediaVolume:Lcom/android/server/audio/AudioService$FineVolumeState;

    move/from16 v0, p3

    invoke-virtual {v3, v0}, Lcom/android/server/audio/AudioService$FineVolumeState;->getIndex(I)I

    move-result v3

    if-nez v3, :cond_3

    if-nez p2, :cond_1

    :cond_3
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/server/audio/AudioService;->mAudioHandler:Lcom/android/server/audio/AudioService$AudioHandler;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/audio/AudioService;->mFineMediaVolume:Lcom/android/server/audio/AudioService$FineVolumeState;

    const/16 v10, 0x70

    const/4 v11, 0x2

    const/4 v13, 0x0

    const/4 v15, 0x0

    move/from16 v12, p3

    invoke-static/range {v9 .. v15}, Lcom/android/server/audio/AudioService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    goto :goto_0
.end method

.method private setSystemAudioMute(Z)V
    .locals 5

    iget-object v2, p0, Lcom/android/server/audio/AudioService;->mHdmiManager:Landroid/hardware/hdmi/HdmiControlManager;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/server/audio/AudioService;->mHdmiTvClient:Landroid/hardware/hdmi/HdmiTvClient;

    if-nez v2, :cond_1

    :cond_0
    return-void

    :cond_1
    iget-object v3, p0, Lcom/android/server/audio/AudioService;->mHdmiManager:Landroid/hardware/hdmi/HdmiControlManager;

    monitor-enter v3

    :try_start_0
    iget-boolean v2, p0, Lcom/android/server/audio/AudioService;->mHdmiSystemAudioSupported:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    if-nez v2, :cond_2

    monitor-exit v3

    return-void

    :cond_2
    :try_start_1
    iget-object v4, p0, Lcom/android/server/audio/AudioService;->mHdmiTvClient:Landroid/hardware/hdmi/HdmiTvClient;

    monitor-enter v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    :try_start_2
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-result-wide v0

    :try_start_3
    iget-object v2, p0, Lcom/android/server/audio/AudioService;->mHdmiTvClient:Landroid/hardware/hdmi/HdmiTvClient;

    invoke-virtual {v2, p1}, Landroid/hardware/hdmi/HdmiTvClient;->setSystemAudioMute(Z)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :try_start_5
    monitor-exit v4
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    monitor-exit v3

    return-void

    :catchall_0
    move-exception v2

    :try_start_6
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :catchall_1
    move-exception v2

    :try_start_7
    monitor-exit v4

    throw v2
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    :catchall_2
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.method private setSystemAudioVolume(IIII)V
    .locals 5

    iget-object v2, p0, Lcom/android/server/audio/AudioService;->mHdmiManager:Landroid/hardware/hdmi/HdmiControlManager;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/server/audio/AudioService;->mHdmiTvClient:Landroid/hardware/hdmi/HdmiTvClient;

    if-nez v2, :cond_1

    :cond_0
    return-void

    :cond_1
    if-eq p1, p2, :cond_0

    and-int/lit16 v2, p4, 0x100

    if-nez v2, :cond_0

    iget-object v3, p0, Lcom/android/server/audio/AudioService;->mHdmiManager:Landroid/hardware/hdmi/HdmiControlManager;

    monitor-enter v3

    :try_start_0
    iget-boolean v2, p0, Lcom/android/server/audio/AudioService;->mHdmiSystemAudioSupported:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    if-nez v2, :cond_2

    monitor-exit v3

    return-void

    :cond_2
    :try_start_1
    iget-object v4, p0, Lcom/android/server/audio/AudioService;->mHdmiTvClient:Landroid/hardware/hdmi/HdmiTvClient;

    monitor-enter v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    :try_start_2
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-result-wide v0

    :try_start_3
    iget-object v2, p0, Lcom/android/server/audio/AudioService;->mHdmiTvClient:Landroid/hardware/hdmi/HdmiTvClient;

    invoke-virtual {v2, p1, p2, p3}, Landroid/hardware/hdmi/HdmiTvClient;->setSystemAudioVolume(III)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :try_start_5
    monitor-exit v4
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    monitor-exit v3

    return-void

    :catchall_0
    move-exception v2

    :try_start_6
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :catchall_1
    move-exception v2

    :try_start_7
    monitor-exit v4

    throw v2
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    :catchall_2
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.method private setSystemSettingForSoundAssistant(Ljava/lang/String;I)V
    .locals 4

    const-string/jumbo v2, "sound_balance"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string/jumbo v2, "mono_audio_db"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    :try_start_0
    iget-object v2, p0, Lcom/android/server/audio/AudioService;->mContentResolver:Landroid/content/ContentResolver;

    const/4 v3, -0x2

    invoke-static {v2, p1, p2, v3}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    iget-object v2, p0, Lcom/android/server/audio/AudioService;->mSettingDBHelper:Lcom/android/server/audio/AudioService$AudioSettingsDBHelper;

    invoke-virtual {v2, p1, p2}, Lcom/android/server/audio/AudioService$AudioSettingsDBHelper;->setIntValue(Ljava/lang/String;I)V

    return-void

    :cond_1
    const-string/jumbo v2, "all_sound_off"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string/jumbo v2, "AudioService"

    const-string/jumbo v3, "Invalid key"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method private setWiredDeviceConnectionStateBeforeBoot()V
    .locals 12

    const/4 v2, 0x1

    const/4 v7, -0x1

    const/4 v9, 0x0

    :try_start_0
    new-instance v10, Ljava/io/FileReader;

    const-string/jumbo v0, "/sys/class/switch/h2w/state"

    invoke-direct {v10, v0}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-virtual {v10}, Ljava/io/FileReader;->ready()Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x400

    new-array v6, v0, [C

    const/4 v0, 0x0

    const/16 v1, 0x400

    invoke-virtual {v10, v6, v0, v1}, Ljava/io/FileReader;->read([CII)I

    move-result v11

    new-instance v0, Ljava/lang/String;

    const/4 v1, 0x0

    invoke-direct {v0, v6, v1, v11}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result v7

    :cond_0
    if-eqz v10, :cond_2

    :try_start_2
    invoke-virtual {v10}, Ljava/io/FileReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    :goto_0
    const/4 v9, 0x0

    :cond_1
    :goto_1
    packed-switch v7, :pswitch_data_0

    :goto_2
    return-void

    :catch_0
    move-exception v8

    :cond_2
    move-object v9, v10

    goto :goto_1

    :catch_1
    move-exception v8

    :goto_3
    if-eqz v9, :cond_1

    :try_start_3
    invoke-virtual {v9}, Ljava/io/FileReader;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_0

    :catch_2
    move-exception v8

    goto :goto_1

    :catchall_0
    move-exception v0

    :goto_4
    if-eqz v9, :cond_3

    :try_start_4
    invoke-virtual {v9}, Ljava/io/FileReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    const/4 v9, 0x0

    :cond_3
    :goto_5
    throw v0

    :catch_3
    move-exception v8

    goto :goto_5

    :pswitch_0
    const-string/jumbo v3, ""

    const-string/jumbo v4, "h2w-before-boot-completed"

    const-string/jumbo v5, "AudioService"

    const/4 v1, 0x4

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/audio/AudioService;->setWiredDeviceConnectionState(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :pswitch_1
    const-string/jumbo v3, ""

    const-string/jumbo v4, "h2w-before-boot-completed"

    const-string/jumbo v5, "AudioService"

    const/16 v1, 0x8

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/audio/AudioService;->setWiredDeviceConnectionState(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :catchall_1
    move-exception v0

    move-object v9, v10

    goto :goto_4

    :catch_4
    move-exception v8

    move-object v9, v10

    goto :goto_3

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private setWiredDeviceConnectionStateWithoutIntent(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 10

    iget-object v8, p0, Lcom/android/server/audio/AudioService;->mConnectedDevices:Landroid/util/ArrayMap;

    monitor-enter v8

    const/4 v7, 0x0

    :try_start_0
    iget-object v9, p0, Lcom/android/server/audio/AudioService;->mAudioHandler:Lcom/android/server/audio/AudioService$AudioHandler;

    new-instance v0, Lcom/android/server/audio/AudioService$WiredDeviceConnectionState;

    move-object v1, p0

    move v2, p1

    move v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/android/server/audio/AudioService$WiredDeviceConnectionState;-><init>(Lcom/android/server/audio/AudioService;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/16 v3, 0x64

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, p0

    move-object v2, v9

    move-object v6, v0

    invoke-direct/range {v1 .. v7}, Lcom/android/server/audio/AudioService;->queueMsgUnderWakeLock(Landroid/os/Handler;IIILjava/lang/Object;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v8

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v8

    throw v0
.end method

.method private startCPUBoost(I)V
    .locals 2

    const/4 v1, 0x0

    iget v0, p0, Lcom/android/server/audio/AudioService;->mCPUBoostType:I

    or-int/2addr v0, p1

    iput v0, p0, Lcom/android/server/audio/AudioService;->mCPUBoostType:I

    iput v1, p0, Lcom/android/server/audio/AudioService;->mCPUBoostTryStandbyCnt:I

    iput v1, p0, Lcom/android/server/audio/AudioService;->mCPUBoostTryCnt:I

    invoke-direct {p0}, Lcom/android/server/audio/AudioService;->initCPUBoost()V

    invoke-direct {p0}, Lcom/android/server/audio/AudioService;->acquireCPUBoost()V

    return-void
.end method

.method private startLogging()V
    .locals 8

    const/4 v1, 0x0

    new-instance v7, Landroid/content/Intent;

    const-string/jumbo v0, "com.sec.media.action.AUDIOCORE_LOGGING"

    invoke-direct {v7, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mContext:Landroid/content/Context;

    invoke-static {v0, v1, v7, v1}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v6

    const-wide/32 v4, 0x5265c00

    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mAlarmManager:Landroid/app/AlarmManager;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    const/4 v1, 0x3

    invoke-virtual/range {v0 .. v6}, Landroid/app/AlarmManager;->setRepeating(IJJLandroid/app/PendingIntent;)V

    const-string/jumbo v0, "logging"

    invoke-static {v0}, Landroid/media/AudioSystem;->getParameters(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/audio/AudioService;->setAudioServiceConfig(Ljava/lang/String;)V

    return-void
.end method

.method private stopCPUBoost(I)V
    .locals 7

    const/4 v2, 0x0

    iget v0, p0, Lcom/android/server/audio/AudioService;->mCPUBoostType:I

    not-int v1, p1

    and-int/2addr v0, v1

    iput v0, p0, Lcom/android/server/audio/AudioService;->mCPUBoostType:I

    iput v2, p0, Lcom/android/server/audio/AudioService;->mCPUBoostTryStandbyCnt:I

    iput v2, p0, Lcom/android/server/audio/AudioService;->mCPUBoostTryCnt:I

    iget v0, p0, Lcom/android/server/audio/AudioService;->mCPUBoostType:I

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mAudioHandler:Lcom/android/server/audio/AudioService$AudioHandler;

    const/16 v1, 0x74

    const/4 v5, 0x0

    move v3, v2

    move v4, v2

    move v6, v2

    invoke-static/range {v0 .. v6}, Lcom/android/server/audio/AudioService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    :cond_0
    return-void
.end method

.method private updateFlagsForSystemAudio(I)I
    .locals 2

    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mHdmiTvClient:Landroid/hardware/hdmi/HdmiTvClient;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mHdmiTvClient:Landroid/hardware/hdmi/HdmiTvClient;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Lcom/android/server/audio/AudioService;->mHdmiSystemAudioSupported:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    and-int/lit16 v1, p1, 0x100

    if-nez v1, :cond_0

    and-int/lit8 p1, p1, -0x2

    :cond_0
    monitor-exit v0

    :cond_1
    return p1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private updateMasterMono(Landroid/content/ContentResolver;)V
    .locals 6

    const/4 v3, 0x1

    const/4 v5, 0x0

    const-string/jumbo v1, "master_mono"

    const/4 v2, -0x2

    invoke-static {p1, v1, v5, v2}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    if-ne v1, v3, :cond_1

    const/4 v0, 0x1

    :goto_0
    sget-boolean v1, Lcom/android/server/audio/AudioService;->DEBUG_VOL:Z

    if-eqz v1, :cond_0

    const-string/jumbo v1, "AudioService"

    const-string/jumbo v2, "Master mono %b"

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-static {v0}, Landroid/media/AudioSystem;->setMasterMono(Z)I

    return-void

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private updateRingerModeAffectedStreams()Z
    .locals 6

    const/4 v5, 0x2

    const/4 v4, -0x2

    iget-object v1, p0, Lcom/android/server/audio/AudioService;->mContentResolver:Landroid/content/ContentResolver;

    const-string/jumbo v2, "mode_ringer_streams_affected"

    const/16 v3, 0xa6

    invoke-static {v1, v2, v3, v4}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    or-int/lit16 v0, v0, 0x126

    iget v1, p0, Lcom/android/server/audio/AudioService;->mPlatformType:I

    if-ne v1, v5, :cond_0

    const/4 v0, 0x0

    :goto_0
    iget-object v2, p0, Lcom/android/server/audio/AudioService;->mCameraSoundForced:Ljava/lang/Boolean;

    monitor-enter v2

    :try_start_0
    iget-object v1, p0, Lcom/android/server/audio/AudioService;->mCameraSoundForced:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-eqz v1, :cond_4

    and-int/lit16 v0, v0, -0x81

    :goto_1
    monitor-exit v2

    iget-object v1, p0, Lcom/android/server/audio/AudioService;->mStreamVolumeAlias:[I

    const/16 v2, 0x8

    aget v1, v1, v2

    if-ne v1, v5, :cond_5

    or-int/lit16 v0, v0, 0x100

    :goto_2
    iget v1, p0, Lcom/android/server/audio/AudioService;->mRingerModeAffectedStreams:I

    if-eq v0, v1, :cond_6

    iget-object v1, p0, Lcom/android/server/audio/AudioService;->mContentResolver:Landroid/content/ContentResolver;

    const-string/jumbo v2, "mode_ringer_streams_affected"

    invoke-static {v1, v2, v0, v4}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    iput v0, p0, Lcom/android/server/audio/AudioService;->mRingerModeAffectedStreams:I

    const/4 v1, 0x1

    return v1

    :cond_0
    iget-object v1, p0, Lcom/android/server/audio/AudioService;->mRingerModeDelegate:Landroid/media/AudioManagerInternal$RingerModeDelegate;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/server/audio/AudioService;->mRingerModeDelegate:Landroid/media/AudioManagerInternal$RingerModeDelegate;

    invoke-interface {v1, v0}, Landroid/media/AudioManagerInternal$RingerModeDelegate;->getRingerModeAffectedStreams(I)I

    move-result v0

    :cond_1
    iget-boolean v1, p0, Lcom/android/server/audio/AudioService;->mIsDefaultStreamNotification:Z

    if-eqz v1, :cond_2

    and-int/lit8 v0, v0, -0x9

    goto :goto_0

    :cond_2
    invoke-direct {p0}, Lcom/android/server/audio/AudioService;->isPlatformVoice()Z

    move-result v1

    if-eqz v1, :cond_3

    and-int/lit8 v0, v0, -0x9

    goto :goto_0

    :cond_3
    or-int/lit8 v0, v0, 0x8

    goto :goto_0

    :cond_4
    or-int/lit16 v0, v0, 0x80

    goto :goto_1

    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1

    :cond_5
    and-int/lit16 v0, v0, -0x101

    goto :goto_2

    :cond_6
    const/4 v1, 0x0

    return v1
.end method

.method private updateStreamVolumeAlias(ZLjava/lang/String;)V
    .locals 8

    const/4 v2, 0x2

    const/16 v4, 0x8

    const/4 v3, 0x0

    iget v0, p0, Lcom/android/server/audio/AudioService;->mPlatformType:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lcom/android/server/audio/AudioService;->STREAM_VOLUME_ALIAS_DEFAULT:[I

    iput-object v0, p0, Lcom/android/server/audio/AudioService;->mStreamVolumeAlias:[I

    iget-boolean v0, p0, Lcom/android/server/audio/AudioService;->mIsDefaultStreamNotification:Z

    if-eqz v0, :cond_1

    const/4 v7, 0x5

    :goto_0
    invoke-direct {p0}, Lcom/android/server/audio/AudioService;->isPlatformTelevision()Z

    move-result v0

    if-eqz v0, :cond_2

    iput v3, p0, Lcom/android/server/audio/AudioService;->mRingerModeAffectedStreams:I

    :goto_1
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mStreamVolumeAlias:[I

    aput v7, v0, v4

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mStreamStates:[Lcom/android/server/audio/AudioService$VolumeStreamState;

    aget-object v0, v0, v4

    iget-object v1, p0, Lcom/android/server/audio/AudioService;->mStreamStates:[Lcom/android/server/audio/AudioService$VolumeStreamState;

    aget-object v1, v1, v7

    invoke-virtual {v0, v1, p2}, Lcom/android/server/audio/AudioService$VolumeStreamState;->setAllIndexes(Lcom/android/server/audio/AudioService$VolumeStreamState;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/server/audio/AudioService;->getRingerModeInternal()I

    move-result v0

    invoke-direct {p0, v0, v3}, Lcom/android/server/audio/AudioService;->setRingerModeInt(IZ)V

    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mAudioHandler:Lcom/android/server/audio/AudioService$AudioHandler;

    iget-object v1, p0, Lcom/android/server/audio/AudioService;->mStreamStates:[Lcom/android/server/audio/AudioService$VolumeStreamState;

    aget-object v5, v1, v4

    const/16 v1, 0xa

    move v4, v3

    move v6, v3

    invoke-static/range {v0 .. v6}, Lcom/android/server/audio/AudioService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    :cond_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->STREAM_VOLUME_ALIAS_VOICE:[I

    iput-object v0, p0, Lcom/android/server/audio/AudioService;->mStreamVolumeAlias:[I

    const/4 v7, 0x2

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->STREAM_VOLUME_ALIAS_TELEVISION:[I

    iput-object v0, p0, Lcom/android/server/audio/AudioService;->mStreamVolumeAlias:[I

    const/4 v7, 0x3

    goto :goto_0

    :cond_1
    const/4 v7, 0x3

    goto :goto_0

    :cond_2
    invoke-direct {p0}, Lcom/android/server/audio/AudioService;->isInCommunication()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {p0}, Lcom/android/server/audio/AudioService;->getMode()I

    move-result v0

    if-ne v0, v2, :cond_4

    :cond_3
    const/4 v7, 0x0

    iget v0, p0, Lcom/android/server/audio/AudioService;->mRingerModeAffectedStreams:I

    and-int/lit16 v0, v0, -0x101

    iput v0, p0, Lcom/android/server/audio/AudioService;->mRingerModeAffectedStreams:I

    goto :goto_1

    :cond_4
    iget v0, p0, Lcom/android/server/audio/AudioService;->mRingerModeAffectedStreams:I

    or-int/lit16 v0, v0, 0x100

    iput v0, p0, Lcom/android/server/audio/AudioService;->mRingerModeAffectedStreams:I

    goto :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private vibrateCall()V
    .locals 6

    :try_start_0
    invoke-direct {p0}, Lcom/android/server/audio/AudioService;->hasVibrator()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/audio/AudioService;->mVibrator:Landroid/os/SystemVibrator;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/audio/AudioService;->mVibrator:Landroid/os/SystemVibrator;

    sget-object v2, Landroid/os/Vibrator$SemMagnitudeTypes;->TYPE_CALL:Landroid/os/Vibrator$SemMagnitudeTypes;

    const v3, 0xc370

    const/4 v4, -0x1

    const/4 v5, 0x0

    invoke-virtual {v1, v3, v4, v5, v2}, Landroid/os/SystemVibrator;->semVibrate(IILandroid/media/AudioAttributes;Landroid/os/Vibrator$SemMagnitudeTypes;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v1, "AudioService"

    const-string/jumbo v2, "Vibrator error"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private volumeAdjustmentAllowedByDnd(II)Z
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mNm:Landroid/app/NotificationManager;

    invoke-virtual {v0}, Landroid/app/NotificationManager;->getZenMode()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    invoke-direct {p0, p1}, Lcom/android/server/audio/AudioService;->isStreamMutedByRingerMode(I)Z

    move-result v0

    if-eqz v0, :cond_0

    and-int/lit8 v0, p2, 0x2

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/server/audio/AudioService;->getUiSoundsStreamType()I

    move-result v0

    if-eq p1, v0, :cond_0

    return v2

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method private waitForAudioHandlerCreation()V
    .locals 3

    monitor-enter p0

    :goto_0
    :try_start_0
    iget-object v1, p0, Lcom/android/server/audio/AudioService;->mAudioHandler:Lcom/android/server/audio/AudioService$AudioHandler;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    :try_start_1
    invoke-virtual {p0}, Lcom/android/server/audio/AudioService;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_2
    const-string/jumbo v1, "AudioService"

    const-string/jumbo v2, "Interrupted while waiting on volume handler."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    :cond_0
    monitor-exit p0

    return-void
.end method

.method private wouldToggleZenMode(I)Z
    .locals 3

    const/4 v2, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/android/server/audio/AudioService;->getRingerModeExternal()I

    move-result v0

    if-nez v0, :cond_0

    if-eqz p1, :cond_0

    return v2

    :cond_0
    invoke-virtual {p0}, Lcom/android/server/audio/AudioService;->getRingerModeExternal()I

    move-result v0

    if-eqz v0, :cond_1

    if-nez p1, :cond_1

    return v2

    :cond_1
    return v1
.end method


# virtual methods
.method public abandonAudioFocus(Landroid/media/IAudioFocusDispatcher;Ljava/lang/String;Landroid/media/AudioAttributes;)I
    .locals 1

    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mMediaFocusControl:Lcom/android/server/audio/MediaFocusControl;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/audio/MediaFocusControl;->abandonAudioFocus(Landroid/media/IAudioFocusDispatcher;Ljava/lang/String;Landroid/media/AudioAttributes;)I

    move-result v0

    return v0
.end method

.method public adjustStreamVolume(IIILjava/lang/String;)V
    .locals 7

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v6

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    move-object v5, p4

    invoke-direct/range {v0 .. v6}, Lcom/android/server/audio/AudioService;->adjustStreamVolume(IIILjava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method public adjustSuggestedStreamVolume(IIILjava/lang/String;Ljava/lang/String;)V
    .locals 7

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v6

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v6}, Lcom/android/server/audio/AudioService;->adjustSuggestedStreamVolume(IIILjava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method public avrcpSupportsAbsoluteVolume(Ljava/lang/String;Z)V
    .locals 8

    iget-object v7, p0, Lcom/android/server/audio/AudioService;->mA2dpAvrcpLock:Ljava/lang/Object;

    monitor-enter v7

    :try_start_0
    iput-boolean p2, p0, Lcom/android/server/audio/AudioService;->mAvrcpAbsVolSupported:Z

    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mAudioHandler:Lcom/android/server/audio/AudioService$AudioHandler;

    iget-object v1, p0, Lcom/android/server/audio/AudioService;->mStreamStates:[Lcom/android/server/audio/AudioService$VolumeStreamState;

    const/4 v2, 0x3

    aget-object v5, v1, v2

    const/4 v1, 0x0

    const/4 v2, 0x2

    const/16 v3, 0x80

    const/4 v4, 0x0

    const/4 v6, 0x0

    invoke-static/range {v0 .. v6}, Lcom/android/server/audio/AudioService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mAudioHandler:Lcom/android/server/audio/AudioService$AudioHandler;

    iget-object v1, p0, Lcom/android/server/audio/AudioService;->mStreamStates:[Lcom/android/server/audio/AudioService$VolumeStreamState;

    const/4 v2, 0x2

    aget-object v5, v1, v2

    const/4 v1, 0x0

    const/4 v2, 0x2

    const/4 v3, 0x2

    const/4 v4, 0x0

    const/4 v6, 0x0

    invoke-static/range {v0 .. v6}, Lcom/android/server/audio/AudioService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v7

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v7

    throw v0
.end method

.method checkAudioSettingsPermission(Ljava/lang/String;)Z
    .locals 4

    const/4 v3, 0x0

    iget-object v1, p0, Lcom/android/server/audio/AudioService;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "android.permission.MODIFY_AUDIO_SETTINGS"

    invoke-virtual {v1, v2}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    return v1

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Audio Settings Permission Denial: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " from pid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", uid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "AudioService"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v3
.end method

.method public clearAllScoClients(IZ)V
    .locals 6

    iget-object v5, p0, Lcom/android/server/audio/AudioService;->mScoClients:Ljava/util/ArrayList;

    monitor-enter v5

    const/4 v2, 0x0

    :try_start_0
    iget-object v4, p0, Lcom/android/server/audio/AudioService;->mScoClients:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v3, :cond_1

    iget-object v4, p0, Lcom/android/server/audio/AudioService;->mScoClients:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/audio/AudioService$ScoClient;

    invoke-virtual {v0}, Lcom/android/server/audio/AudioService$ScoClient;->getPid()I

    move-result v4

    if-eq v4, p1, :cond_0

    invoke-virtual {v0, p2}, Lcom/android/server/audio/AudioService$ScoClient;->clearCount(Z)V

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    move-object v2, v0

    goto :goto_1

    :cond_1
    iget-object v4, p0, Lcom/android/server/audio/AudioService;->mScoClients:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    if-eqz v2, :cond_2

    iget-object v4, p0, Lcom/android/server/audio/AudioService;->mScoClients:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_2
    monitor-exit v5

    return-void

    :catchall_0
    move-exception v4

    monitor-exit v5

    throw v4
.end method

.method public clearNotification()V
    .locals 2

    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mNm:Landroid/app/NotificationManager;

    const/16 v1, 0x3ec

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    return-void
.end method

.method public disableSafeMediaVolume(Ljava/lang/String;)V
    .locals 9

    const-string/jumbo v0, "disable the safe media volume"

    invoke-direct {p0, v0}, Lcom/android/server/audio/AudioService;->enforceVolumeController(Ljava/lang/String;)V

    iget-object v8, p0, Lcom/android/server/audio/AudioService;->mSafeMediaVolumeState:Ljava/lang/Integer;

    monitor-enter v8

    const/4 v0, 0x0

    :try_start_0
    invoke-direct {p0, v0, p1}, Lcom/android/server/audio/AudioService;->setSafeMediaVolumeEnabled(ZLjava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mPendingVolumeCommand:Lcom/android/server/audio/AudioService$StreamVolumeCommand;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mPendingVolumeCommand:Lcom/android/server/audio/AudioService$StreamVolumeCommand;

    iget v1, v0, Lcom/android/server/audio/AudioService$StreamVolumeCommand;->mStreamType:I

    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mPendingVolumeCommand:Lcom/android/server/audio/AudioService$StreamVolumeCommand;

    iget v2, v0, Lcom/android/server/audio/AudioService$StreamVolumeCommand;->mIndex:I

    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mPendingVolumeCommand:Lcom/android/server/audio/AudioService$StreamVolumeCommand;

    iget v3, v0, Lcom/android/server/audio/AudioService$StreamVolumeCommand;->mFlags:I

    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mPendingVolumeCommand:Lcom/android/server/audio/AudioService$StreamVolumeCommand;

    iget v4, v0, Lcom/android/server/audio/AudioService$StreamVolumeCommand;->mDevice:I

    move-object v0, p0

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Lcom/android/server/audio/AudioService;->onSetStreamVolume(IIIILjava/lang/String;)V

    new-instance v7, Landroid/content/Intent;

    const-string/jumbo v0, "android.media.VOLUME_CHANGED_ACTION"

    invoke-direct {v7, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v0, "android.media.EXTRA_VOLUME_STREAM_TYPE"

    iget-object v1, p0, Lcom/android/server/audio/AudioService;->mPendingVolumeCommand:Lcom/android/server/audio/AudioService$StreamVolumeCommand;

    iget v1, v1, Lcom/android/server/audio/AudioService$StreamVolumeCommand;->mStreamType:I

    invoke-virtual {v7, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string/jumbo v0, "android.media.EXTRA_VOLUME_STREAM_VALUE"

    iget-object v1, p0, Lcom/android/server/audio/AudioService;->mPendingVolumeCommand:Lcom/android/server/audio/AudioService$StreamVolumeCommand;

    iget v1, v1, Lcom/android/server/audio/AudioService$StreamVolumeCommand;->mIndex:I

    div-int/lit8 v1, v1, 0xa

    invoke-virtual {v7, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-direct {p0, v7}, Lcom/android/server/audio/AudioService;->sendBroadcastToAll(Landroid/content/Intent;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/audio/AudioService;->mPendingVolumeCommand:Lcom/android/server/audio/AudioService$StreamVolumeCommand;

    :cond_0
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mPendingFineVolumeCommand:Lcom/android/server/audio/AudioService$StreamVolumeCommand;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mFineMediaVolume:Lcom/android/server/audio/AudioService$FineVolumeState;

    iget-object v1, p0, Lcom/android/server/audio/AudioService;->mPendingFineVolumeCommand:Lcom/android/server/audio/AudioService$StreamVolumeCommand;

    iget v1, v1, Lcom/android/server/audio/AudioService$StreamVolumeCommand;->mIndex:I

    iget-object v2, p0, Lcom/android/server/audio/AudioService;->mPendingFineVolumeCommand:Lcom/android/server/audio/AudioService$StreamVolumeCommand;

    iget v2, v2, Lcom/android/server/audio/AudioService$StreamVolumeCommand;->mDevice:I

    invoke-virtual {v0, v1, v2}, Lcom/android/server/audio/AudioService$FineVolumeState;->setIndex(II)Z

    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mAudioHandler:Lcom/android/server/audio/AudioService$AudioHandler;

    iget-object v1, p0, Lcom/android/server/audio/AudioService;->mPendingFineVolumeCommand:Lcom/android/server/audio/AudioService$StreamVolumeCommand;

    iget v3, v1, Lcom/android/server/audio/AudioService$StreamVolumeCommand;->mDevice:I

    iget-object v5, p0, Lcom/android/server/audio/AudioService;->mFineMediaVolume:Lcom/android/server/audio/AudioService$FineVolumeState;

    const/16 v1, 0x70

    const/4 v2, 0x2

    const/4 v4, 0x0

    const/4 v6, 0x0

    invoke-static/range {v0 .. v6}, Lcom/android/server/audio/AudioService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/audio/AudioService;->mPendingFineVolumeCommand:Lcom/android/server/audio/AudioService$StreamVolumeCommand;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    monitor-exit v8

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v8

    throw v0
.end method

.method disconnectA2dp()V
    .locals 9

    const/16 v8, 0x80

    iget-object v6, p0, Lcom/android/server/audio/AudioService;->mConnectedDevices:Landroid/util/ArrayMap;

    monitor-enter v6

    :try_start_0
    iget-object v7, p0, Lcom/android/server/audio/AudioService;->mA2dpAvrcpLock:Ljava/lang/Object;

    monitor-enter v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/4 v3, 0x0

    const/4 v2, 0x0

    move-object v4, v3

    :goto_0
    :try_start_1
    iget-object v5, p0, Lcom/android/server/audio/AudioService;->mConnectedDevices:Landroid/util/ArrayMap;

    invoke-virtual {v5}, Landroid/util/ArrayMap;->size()I

    move-result v5

    if-ge v2, v5, :cond_1

    iget-object v5, p0, Lcom/android/server/audio/AudioService;->mConnectedDevices:Landroid/util/ArrayMap;

    invoke-virtual {v5, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/audio/AudioService$DeviceListSpec;

    iget v5, v1, Lcom/android/server/audio/AudioService$DeviceListSpec;->mDeviceType:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-ne v5, v8, :cond_3

    if-eqz v4, :cond_0

    move-object v3, v4

    :goto_1
    :try_start_2
    iget-object v5, v1, Lcom/android/server/audio/AudioService$DeviceListSpec;->mDeviceAddress:Ljava/lang/String;

    invoke-virtual {v3, v5}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    :goto_2
    add-int/lit8 v2, v2, 0x1

    move-object v4, v3

    goto :goto_0

    :cond_0
    :try_start_3
    new-instance v3, Landroid/util/ArraySet;

    invoke-direct {v3}, Landroid/util/ArraySet;-><init>()V

    goto :goto_1

    :cond_1
    if-eqz v4, :cond_2

    const/16 v5, 0x80

    const/4 v8, 0x0

    invoke-direct {p0, v5, v8}, Lcom/android/server/audio/AudioService;->checkSendBecomingNoisyIntent(II)I

    move-result v0

    const/4 v2, 0x0

    :goto_3
    invoke-virtual {v4}, Landroid/util/ArraySet;->size()I

    move-result v5

    if-ge v2, v5, :cond_2

    invoke-virtual {v4, v2}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-direct {p0, v5, v0}, Lcom/android/server/audio/AudioService;->makeA2dpDeviceUnavailableLater(Ljava/lang/String;I)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_2
    :try_start_4
    monitor-exit v7
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    monitor-exit v6

    return-void

    :catchall_0
    move-exception v5

    move-object v3, v4

    :goto_4
    :try_start_5
    monitor-exit v7

    throw v5
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :catchall_1
    move-exception v5

    monitor-exit v6

    throw v5

    :catchall_2
    move-exception v5

    goto :goto_4

    :cond_3
    move-object v3, v4

    goto :goto_2
.end method

.method disconnectA2dpSink()V
    .locals 7

    iget-object v5, p0, Lcom/android/server/audio/AudioService;->mConnectedDevices:Landroid/util/ArrayMap;

    monitor-enter v5

    const/4 v2, 0x0

    const/4 v1, 0x0

    move-object v3, v2

    :goto_0
    :try_start_0
    iget-object v4, p0, Lcom/android/server/audio/AudioService;->mConnectedDevices:Landroid/util/ArrayMap;

    invoke-virtual {v4}, Landroid/util/ArrayMap;->size()I

    move-result v4

    if-ge v1, v4, :cond_1

    iget-object v4, p0, Lcom/android/server/audio/AudioService;->mConnectedDevices:Landroid/util/ArrayMap;

    invoke-virtual {v4, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/audio/AudioService$DeviceListSpec;

    iget v4, v0, Lcom/android/server/audio/AudioService$DeviceListSpec;->mDeviceType:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/high16 v6, -0x7ffe0000

    if-ne v4, v6, :cond_3

    if-eqz v3, :cond_0

    move-object v2, v3

    :goto_1
    :try_start_1
    iget-object v4, v0, Lcom/android/server/audio/AudioService$DeviceListSpec;->mDeviceAddress:Ljava/lang/String;

    invoke-virtual {v2, v4}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :goto_2
    add-int/lit8 v1, v1, 0x1

    move-object v3, v2

    goto :goto_0

    :cond_0
    :try_start_2
    new-instance v2, Landroid/util/ArraySet;

    invoke-direct {v2}, Landroid/util/ArraySet;-><init>()V

    goto :goto_1

    :cond_1
    if-eqz v3, :cond_2

    const/4 v1, 0x0

    :goto_3
    invoke-virtual {v3}, Landroid/util/ArraySet;->size()I

    move-result v4

    if-ge v1, v4, :cond_2

    invoke-virtual {v3, v1}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-direct {p0, v4}, Lcom/android/server/audio/AudioService;->makeA2dpSrcUnavailable(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_2
    monitor-exit v5

    return-void

    :catchall_0
    move-exception v4

    move-object v2, v3

    :goto_4
    monitor-exit v5

    throw v4

    :catchall_1
    move-exception v4

    goto :goto_4

    :cond_3
    move-object v2, v3

    goto :goto_2
.end method

.method disconnectAllBluetoothProfiles()V
    .locals 0

    invoke-virtual {p0}, Lcom/android/server/audio/AudioService;->disconnectA2dp()V

    invoke-virtual {p0}, Lcom/android/server/audio/AudioService;->disconnectA2dpSink()V

    invoke-virtual {p0}, Lcom/android/server/audio/AudioService;->disconnectHeadset()V

    return-void
.end method

.method disconnectHeadset()V
    .locals 3

    iget-object v1, p0, Lcom/android/server/audio/AudioService;->mScoClients:Ljava/util/ArrayList;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mBluetoothHeadsetDevice:Landroid/bluetooth/BluetoothDevice;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mBluetoothHeadsetDevice:Landroid/bluetooth/BluetoothDevice;

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v2}, Lcom/android/server/audio/AudioService;->setBtScoDeviceConnectionState(Landroid/bluetooth/BluetoothDevice;I)V

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/audio/AudioService;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public dismissVolumePanel()V
    .locals 1

    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mVolumeController:Lcom/android/server/audio/AudioService$VolumeController;

    invoke-virtual {v0}, Lcom/android/server/audio/AudioService$VolumeController;->postDismiss()V

    return-void
.end method

.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "android.permission.DUMP"

    const-string/jumbo v2, "AudioService"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mMediaFocusControl:Lcom/android/server/audio/MediaFocusControl;

    invoke-virtual {v0, p2}, Lcom/android/server/audio/MediaFocusControl;->dump(Ljava/io/PrintWriter;)V

    const-string/jumbo v0, "  mMySoundEnabled="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/audio/AudioService;->mMySoundEnabled:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(I)V

    const-string/jumbo v0, "  mSoundAliveEnabled="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/audio/AudioService;->mSoundAliveEnabled:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(I)V

    const-string/jumbo v0, "  mUpscalerEnabled="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/audio/AudioService;->mUpscalerEnabled:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(I)V

    const-string/jumbo v0, "  mTubeAmpEnabled="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/audio/AudioService;->mTubeAmpEnabled:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(I)V

    sget-boolean v0, Lcom/android/server/audio/AudioService;->SUPPORT_BOOST_MODE:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "  mBoostMode="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/audio/AudioService;->mBoostMode:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(I)V

    const-string/jumbo v0, "  mBoostUpscalerEnabled="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/audio/AudioService;->mBoostUpscalerEnabled:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(I)V

    :cond_0
    const-string/jumbo v0, "  mAllSoundMute="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/audio/AudioService;->mAllSoundMute:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(I)V

    const-string/jumbo v0, "  mNbQualityMode="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/audio/AudioService;->mNbQualityMode:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(I)V

    const-string/jumbo v0, "  mDualMicMode="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/audio/AudioService;->mDualMicMode:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(I)V

    const-string/jumbo v0, "  mNaturalSound="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/audio/AudioService;->mNaturalSound:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(I)V

    const-string/jumbo v0, "  mUhqBtSampleRate="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/audio/AudioService;->mUhqBtSampleRate:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(I)V

    const-string/jumbo v0, "  mSoundBalance="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/audio/AudioService;->mSoundBalance:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(I)V

    const-string/jumbo v0, "  isTalkBackEnabled="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/audio/AudioService;->mIsTalkBackEnabled:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    const-string/jumbo v0, "  isFactoryMode="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/server/audio/AudioService;->isFactoryMode()Z

    move-result v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    const-string/jumbo v0, "  mAdjustMediaVolumeOnly="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/audio/AudioService;->mAdjustMediaVolumeOnly:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    const-string/jumbo v0, "  mEnableSoundAssistant="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/audio/AudioService;->mEnableSoundAssistant:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    const-string/jumbo v0, "  mIsScreenOffMusicOn="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/audio/AudioService;->mIsScreenOffMusicOn:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(I)V

    invoke-direct {p0, p2}, Lcom/android/server/audio/AudioService;->dumpScoClients(Ljava/io/PrintWriter;)V

    invoke-direct {p0, p2}, Lcom/android/server/audio/AudioService;->dumpStreamStates(Ljava/io/PrintWriter;)V

    invoke-direct {p0, p2}, Lcom/android/server/audio/AudioService;->dumpRingerMode(Ljava/io/PrintWriter;)V

    const-string/jumbo v0, "\nAudio Mode: "

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string/jumbo v0, "- mMode="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/audio/AudioService;->mMode:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(I)V

    const-string/jumbo v0, "- setMode is called by PID:"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/audio/AudioService;->mSetModeOndump:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    const-string/jumbo v0, ", Caller:"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mCallingModeOndump:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string/jumbo v0, "\nAudio routes:"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string/jumbo v0, "  mMainType=0x"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mCurAudioRoutes:Landroid/media/AudioRoutesInfo;

    iget v0, v0, Landroid/media/AudioRoutesInfo;->mainType:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string/jumbo v0, "  mBluetoothName="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mCurAudioRoutes:Landroid/media/AudioRoutesInfo;

    iget-object v0, v0, Landroid/media/AudioRoutesInfo;->bluetoothName:Ljava/lang/CharSequence;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    const-string/jumbo v0, "\nOther state:"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string/jumbo v0, "  mVolumeController="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mVolumeController:Lcom/android/server/audio/AudioService$VolumeController;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    const-string/jumbo v0, "  mSafeMediaVolumeState="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mSafeMediaVolumeState:Ljava/lang/Integer;

    invoke-static {v0}, Lcom/android/server/audio/AudioService;->safeMediaVolumeStateToString(Ljava/lang/Integer;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string/jumbo v0, "  mSafeMediaVolumeIndex="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/audio/AudioService;->mSafeMediaVolumeIndex:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(I)V

    const-string/jumbo v0, "  mPendingVolumeCommand="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mPendingVolumeCommand:Lcom/android/server/audio/AudioService$StreamVolumeCommand;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    const-string/jumbo v0, "  mMusicActiveMs="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/audio/AudioService;->mMusicActiveMs:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(I)V

    const-string/jumbo v0, "  mMcc="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/audio/AudioService;->mMcc:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(I)V

    const-string/jumbo v0, "  mCameraSoundForced="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mCameraSoundForced:Ljava/lang/Boolean;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    const-string/jumbo v0, "  mHasVibrator="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/audio/AudioService;->mHasVibrator:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    const-string/jumbo v0, "  mControllerService="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mControllerService:Lcom/android/server/audio/AudioService$ControllerService;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    const-string/jumbo v0, "  mVolumePolicy="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mVolumePolicy:Landroid/media/VolumePolicy;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    const-string/jumbo v0, "  mHMTDocked="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/audio/AudioService;->mHMTDocked:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    const-string/jumbo v0, "  mCPUBoostType="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/audio/AudioService;->mCPUBoostType:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(I)V

    invoke-direct {p0, p2}, Lcom/android/server/audio/AudioService;->dumpAudioPolicies(Ljava/io/PrintWriter;)V

    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mSoundKitchen:Lcom/android/server/audio/AudioService$SoundKitchen;

    invoke-virtual {v0, p2}, Lcom/android/server/audio/AudioService$SoundKitchen;->dump(Ljava/io/PrintWriter;)V

    return-void
.end method

.method public forceRemoteSubmixFullVolume(ZLandroid/os/IBinder;)V
    .locals 5

    const v4, 0x8000

    const v3, -0x8001

    if-nez p2, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lcom/android/server/audio/AudioService;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "android.permission.CAPTURE_AUDIO_OUTPUT"

    invoke-virtual {v1, v2}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_1

    const-string/jumbo v1, "AudioService"

    const-string/jumbo v2, "Trying to call forceRemoteSubmixFullVolume() without CAPTURE_AUDIO_OUTPUT"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    iget-object v2, p0, Lcom/android/server/audio/AudioService;->mRmtSbmxFullVolDeathHandlers:Ljava/util/ArrayList;

    monitor-enter v2

    const/4 v0, 0x0

    if-eqz p1, :cond_5

    :try_start_0
    invoke-direct {p0, p2}, Lcom/android/server/audio/AudioService;->hasRmtSbmxFullVolDeathHandlerFor(Landroid/os/IBinder;)Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/android/server/audio/AudioService;->mRmtSbmxFullVolDeathHandlers:Ljava/util/ArrayList;

    new-instance v3, Lcom/android/server/audio/AudioService$RmtSbmxFullVolDeathHandler;

    invoke-direct {v3, p0, p2}, Lcom/android/server/audio/AudioService$RmtSbmxFullVolDeathHandler;-><init>(Lcom/android/server/audio/AudioService;Landroid/os/IBinder;)V

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget v1, p0, Lcom/android/server/audio/AudioService;->mRmtSbmxFullVolRefCount:I

    if-nez v1, :cond_2

    iget v1, p0, Lcom/android/server/audio/AudioService;->mFullVolumeDevices:I

    or-int/2addr v1, v4

    iput v1, p0, Lcom/android/server/audio/AudioService;->mFullVolumeDevices:I

    iget v1, p0, Lcom/android/server/audio/AudioService;->mFixedVolumeDevices:I

    or-int/2addr v1, v4

    iput v1, p0, Lcom/android/server/audio/AudioService;->mFixedVolumeDevices:I

    const/4 v0, 0x1

    :cond_2
    iget v1, p0, Lcom/android/server/audio/AudioService;->mRmtSbmxFullVolRefCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/server/audio/AudioService;->mRmtSbmxFullVolRefCount:I

    :cond_3
    :goto_0
    if-eqz v0, :cond_4

    const/4 v1, 0x3

    invoke-direct {p0, v1}, Lcom/android/server/audio/AudioService;->checkAllFixedVolumeDevices(I)V

    iget-object v1, p0, Lcom/android/server/audio/AudioService;->mStreamStates:[Lcom/android/server/audio/AudioService$VolumeStreamState;

    const/4 v3, 0x3

    aget-object v1, v1, v3

    invoke-virtual {v1}, Lcom/android/server/audio/AudioService$VolumeStreamState;->applyAllVolumes()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_4
    monitor-exit v2

    return-void

    :cond_5
    :try_start_1
    invoke-direct {p0, p2}, Lcom/android/server/audio/AudioService;->discardRmtSbmxFullVolDeathHandlerFor(Landroid/os/IBinder;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget v1, p0, Lcom/android/server/audio/AudioService;->mRmtSbmxFullVolRefCount:I

    if-lez v1, :cond_3

    iget v1, p0, Lcom/android/server/audio/AudioService;->mRmtSbmxFullVolRefCount:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/android/server/audio/AudioService;->mRmtSbmxFullVolRefCount:I

    iget v1, p0, Lcom/android/server/audio/AudioService;->mRmtSbmxFullVolRefCount:I

    if-nez v1, :cond_3

    iget v1, p0, Lcom/android/server/audio/AudioService;->mFullVolumeDevices:I

    and-int/2addr v1, v3

    iput v1, p0, Lcom/android/server/audio/AudioService;->mFullVolumeDevices:I

    iget v1, p0, Lcom/android/server/audio/AudioService;->mFixedVolumeDevices:I

    and-int/2addr v1, v3

    iput v1, p0, Lcom/android/server/audio/AudioService;->mFixedVolumeDevices:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v0, 0x1

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public forceVolumeControlStream(ILandroid/os/IBinder;)V
    .locals 3

    iget-object v1, p0, Lcom/android/server/audio/AudioService;->mForceControlStreamLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iput p1, p0, Lcom/android/server/audio/AudioService;->mVolumeControlStream:I

    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mForceControlStreamClient:Lcom/android/server/audio/AudioService$ForceControlStreamClient;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mForceControlStreamClient:Lcom/android/server/audio/AudioService$ForceControlStreamClient;

    invoke-virtual {v0}, Lcom/android/server/audio/AudioService$ForceControlStreamClient;->release()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/audio/AudioService;->mForceControlStreamClient:Lcom/android/server/audio/AudioService$ForceControlStreamClient;

    :cond_0
    iget v0, p0, Lcom/android/server/audio/AudioService;->mVolumeControlStream:I

    const/4 v2, -0x1

    if-eq v0, v2, :cond_1

    new-instance v0, Lcom/android/server/audio/AudioService$ForceControlStreamClient;

    invoke-direct {v0, p0, p2}, Lcom/android/server/audio/AudioService$ForceControlStreamClient;-><init>(Lcom/android/server/audio/AudioService;Landroid/os/IBinder;)V

    iput-object v0, p0, Lcom/android/server/audio/AudioService;->mForceControlStreamClient:Lcom/android/server/audio/AudioService$ForceControlStreamClient;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public getActiveRecordingConfigurations()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/media/AudioRecordingConfiguration;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mRecordMonitor:Lcom/android/server/audio/RecordingActivityMonitor;

    invoke-virtual {v0}, Lcom/android/server/audio/RecordingActivityMonitor;->getActiveRecordingConfigurations()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getActiveStreamType(I)I
    .locals 8

    const/4 v7, 0x2

    const/high16 v3, -0x80000000

    const/4 v6, 0x5

    const/4 v5, 0x3

    const/4 v4, 0x0

    invoke-static {}, Lcom/sec/enterprise/knoxcustom/CustomDeviceManagerProxy;->getInstance()Lcom/sec/enterprise/knoxcustom/CustomDeviceManagerProxy;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/sec/enterprise/knoxcustom/CustomDeviceManagerProxy;->getVolumeControlStream()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    :cond_0
    iget v2, p0, Lcom/android/server/audio/AudioService;->mPlatformType:I

    packed-switch v2, :pswitch_data_1

    invoke-direct {p0}, Lcom/android/server/audio/AudioService;->isInCommunication()Z

    move-result v2

    if-eqz v2, :cond_12

    invoke-static {v4}, Landroid/media/AudioSystem;->getForceUse(I)I

    move-result v2

    if-ne v2, v5, :cond_10

    sget-boolean v2, Lcom/android/server/audio/AudioService;->DEBUG_VOL:Z

    if-eqz v2, :cond_1

    const-string/jumbo v2, "AudioService"

    const-string/jumbo v3, "getActiveStreamType: Forcing STREAM_BLUETOOTH_SCO"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    const/4 v2, 0x6

    return v2

    :pswitch_0
    const/4 v2, 0x1

    return v2

    :pswitch_1
    return v7

    :pswitch_2
    return v5

    :pswitch_3
    return v6

    :pswitch_4
    invoke-direct {p0}, Lcom/android/server/audio/AudioService;->isInCommunication()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-static {v4}, Landroid/media/AudioSystem;->getForceUse(I)I

    move-result v2

    if-ne v2, v5, :cond_2

    const/4 v2, 0x6

    return v2

    :cond_2
    return v4

    :cond_3
    if-ne p1, v3, :cond_e

    invoke-direct {p0}, Lcom/android/server/audio/AudioService;->getActiveStreams()I

    move-result v0

    and-int/lit16 v2, v0, 0x4208

    if-nez v2, :cond_4

    invoke-static {v5, v4}, Landroid/media/AudioSystem;->isStreamActiveRemotely(II)Z

    move-result v2

    if-eqz v2, :cond_6

    :cond_4
    sget-boolean v2, Lcom/android/server/audio/AudioService;->DEBUG_VOL:Z

    if-eqz v2, :cond_5

    const-string/jumbo v2, "AudioService"

    const-string/jumbo v3, "getActiveStreamType: Forcing STREAM_MUSIC stream active"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    return v5

    :cond_6
    and-int/lit8 v2, v0, 0x10

    if-eqz v2, :cond_7

    const/4 v2, 0x4

    return v2

    :cond_7
    and-int/lit8 v2, v0, 0x20

    if-eqz v2, :cond_8

    return v6

    :cond_8
    and-int/lit8 v2, v0, 0x1

    if-eqz v2, :cond_9

    return v4

    :cond_9
    and-int/lit16 v2, v0, 0x400

    if-eqz v2, :cond_a

    const/16 v2, 0xa

    return v2

    :cond_a
    sget-boolean v2, Lcom/android/server/audio/AudioService;->DEBUG_VOL:Z

    if-eqz v2, :cond_b

    const-string/jumbo v2, "AudioService"

    const-string/jumbo v3, "getActiveStreamType: Forcing STREAM_RING b/c default"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_b
    iget-boolean v2, p0, Lcom/android/server/audio/AudioService;->mAdjustMediaVolumeOnly:Z

    if-eqz v2, :cond_d

    sget-boolean v2, Lcom/android/server/audio/AudioService;->DEBUG_VOL:Z

    if-eqz v2, :cond_c

    const-string/jumbo v2, "AudioService"

    const-string/jumbo v3, "Only adjust media volume"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_c
    return v5

    :cond_d
    return v7

    :cond_e
    invoke-direct {p0, v4}, Lcom/android/server/audio/AudioService;->isAfMusicActiveRecently(I)Z

    move-result v2

    if-eqz v2, :cond_21

    sget-boolean v2, Lcom/android/server/audio/AudioService;->DEBUG_VOL:Z

    if-eqz v2, :cond_f

    const-string/jumbo v2, "AudioService"

    const-string/jumbo v3, "getActiveStreamType: Forcing STREAM_MUSIC stream active"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_f
    return v5

    :pswitch_5
    if-ne p1, v3, :cond_21

    return v5

    :cond_10
    sget-boolean v2, Lcom/android/server/audio/AudioService;->DEBUG_VOL:Z

    if-eqz v2, :cond_11

    const-string/jumbo v2, "AudioService"

    const-string/jumbo v3, "getActiveStreamType: Forcing STREAM_VOICE_CALL"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_11
    return v4

    :cond_12
    sget v2, Lcom/android/server/audio/AudioService$StreamOverride;->sDelayMs:I

    invoke-static {v6, v2}, Landroid/media/AudioSystem;->isStreamActive(II)Z

    move-result v2

    if-nez v2, :cond_13

    sget v2, Lcom/android/server/audio/AudioService$StreamOverride;->sDelayMs:I

    invoke-static {v7, v2}, Landroid/media/AudioSystem;->isStreamActive(II)Z

    move-result v2

    if-eqz v2, :cond_14

    :cond_13
    iget-boolean v2, p0, Lcom/android/server/audio/AudioService;->mIsPlaySilentModeOff:Z

    if-eqz v2, :cond_17

    :cond_14
    if-ne p1, v3, :cond_21

    invoke-direct {p0}, Lcom/android/server/audio/AudioService;->getActiveStreams()I

    move-result v0

    and-int/lit16 v2, v0, 0x4208

    if-nez v2, :cond_15

    invoke-static {v5, v4}, Landroid/media/AudioSystem;->isStreamActiveRemotely(II)Z

    move-result v2

    if-eqz v2, :cond_19

    :cond_15
    sget-boolean v2, Lcom/android/server/audio/AudioService;->DEBUG_VOL:Z

    if-eqz v2, :cond_16

    const-string/jumbo v2, "AudioService"

    const-string/jumbo v3, "getActiveStreamType: forcing STREAM_MUSIC"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_16
    return v5

    :cond_17
    sget-boolean v2, Lcom/android/server/audio/AudioService;->DEBUG_VOL:Z

    if-eqz v2, :cond_18

    const-string/jumbo v2, "AudioService"

    const-string/jumbo v3, "getActiveStreamType: Forcing STREAM_NOTIFICATION"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_18
    return v6

    :cond_19
    and-int/lit8 v2, v0, 0x10

    if-eqz v2, :cond_1a

    const/4 v2, 0x4

    return v2

    :cond_1a
    and-int/lit8 v2, v0, 0x20

    if-eqz v2, :cond_1b

    return v6

    :cond_1b
    and-int/lit8 v2, v0, 0x1

    if-eqz v2, :cond_1c

    return v4

    :cond_1c
    and-int/lit16 v2, v0, 0x400

    if-eqz v2, :cond_1d

    const/16 v2, 0xa

    return v2

    :cond_1d
    iget-boolean v2, p0, Lcom/android/server/audio/AudioService;->mIsDefaultStreamNotification:Z

    if-eqz v2, :cond_1f

    sget-boolean v2, Lcom/android/server/audio/AudioService;->DEBUG_VOL:Z

    if-eqz v2, :cond_1e

    const-string/jumbo v2, "AudioService"

    const-string/jumbo v3, "getActiveStreamType: using STREAM_NOTIFICATION as default"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1e
    return v6

    :cond_1f
    sget-boolean v2, Lcom/android/server/audio/AudioService;->DEBUG_VOL:Z

    if-eqz v2, :cond_20

    const-string/jumbo v2, "AudioService"

    const-string/jumbo v3, "getActiveStreamType: using STREAM_MUSIC as default"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_20
    return v5

    :cond_21
    sget-boolean v2, Lcom/android/server/audio/AudioService;->DEBUG_VOL:Z

    if-eqz v2, :cond_22

    const-string/jumbo v2, "AudioService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "getActiveStreamType: Returning suggested type "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_22
    return p1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public getAppDevice(I)I
    .locals 3

    const-string/jumbo v0, "AudioService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "GetAppDevice, uid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mSoundKitchen:Lcom/android/server/audio/AudioService$SoundKitchen;

    invoke-virtual {v0, p1}, Lcom/android/server/audio/AudioService$SoundKitchen;->getDevice(I)I

    move-result v0

    return v0
.end method

.method public getAppVolume(I)I
    .locals 3

    const-string/jumbo v0, "AudioService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "getAppVolume, uid:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mSoundKitchen:Lcom/android/server/audio/AudioService$SoundKitchen;

    invoke-virtual {v0, p1}, Lcom/android/server/audio/AudioService$SoundKitchen;->getVolume(I)I

    move-result v0

    return v0
.end method

.method public getAudioServiceConfig(Ljava/lang/String;)Ljava/lang/String;
    .locals 10

    const/4 v9, 0x3

    const/4 v4, 0x0

    const-string/jumbo v6, "SplitSound"

    invoke-virtual {v6, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    iget-boolean v6, p0, Lcom/android/server/audio/AudioService;->mSplitSound:Z

    if-eqz v6, :cond_1

    const-string/jumbo v4, "true"

    :cond_0
    :goto_0
    return-object v4

    :cond_1
    const-string/jumbo v4, "false"

    goto :goto_0

    :cond_2
    const-string/jumbo v6, "HMTstate"

    invoke-virtual {v6, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    iget-boolean v6, p0, Lcom/android/server/audio/AudioService;->mHMTDocked:Z

    if-eqz v6, :cond_3

    const-string/jumbo v4, "true"

    goto :goto_0

    :cond_3
    const-string/jumbo v4, "false"

    goto :goto_0

    :cond_4
    const-string/jumbo v6, "SafeMediaVolumeDevice"

    invoke-virtual {v6, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    invoke-direct {p0, v9}, Lcom/android/server/audio/AudioService;->getDeviceForStream(I)I

    move-result v1

    and-int/lit16 v6, v1, 0x18c

    if-eqz v6, :cond_5

    const-string/jumbo v4, "true"

    goto :goto_0

    :cond_5
    const-string/jumbo v4, "false"

    goto :goto_0

    :cond_6
    const-string/jumbo v6, "fine_volume"

    invoke-virtual {v6, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7

    invoke-direct {p0}, Lcom/android/server/audio/AudioService;->getFineVolume()Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    :cond_7
    const-string/jumbo v6, "fine_volume_v2"

    invoke-virtual {v6, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_9

    const/16 v6, 0x3eb

    invoke-virtual {p0, v6}, Lcom/android/server/audio/AudioService;->getStreamVolume(I)I

    move-result v6

    mul-int/lit8 v6, v6, 0xa

    iget-object v7, p0, Lcom/android/server/audio/AudioService;->mFineMediaVolume:Lcom/android/server/audio/AudioService$FineVolumeState;

    invoke-direct {p0, v9}, Lcom/android/server/audio/AudioService;->getDeviceForStream(I)I

    move-result v8

    invoke-virtual {v7, v8}, Lcom/android/server/audio/AudioService$FineVolumeState;->getIndex(I)I

    move-result v7

    add-int v3, v6, v7

    iget-object v6, p0, Lcom/android/server/audio/AudioService;->mStreamStates:[Lcom/android/server/audio/AudioService$VolumeStreamState;

    aget-object v6, v6, v9

    invoke-static {v6}, Lcom/android/server/audio/AudioService$VolumeStreamState;->-get3(Lcom/android/server/audio/AudioService$VolumeStreamState;)Z

    move-result v6

    if-eqz v6, :cond_8

    const/4 v3, 0x0

    :cond_8
    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v6, "AudioService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "getFineVolume, index:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_9
    const-string/jumbo v6, "is_fine_volume"

    invoke-virtual {v6, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_a

    const-string/jumbo v4, "true"

    goto/16 :goto_0

    :cond_a
    const-string/jumbo v6, "active_addr"

    invoke-virtual {v6, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_b

    invoke-direct {p0, v9}, Lcom/android/server/audio/AudioService;->getDeviceForStream(I)I

    move-result v6

    invoke-direct {p0, v6}, Lcom/android/server/audio/AudioService;->getAddressForDevice(I)Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_0

    :cond_b
    const-string/jumbo v6, "device_mask_QSP"

    invoke-virtual {v6, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_c

    invoke-direct {p0}, Lcom/android/server/audio/AudioService;->getAvailableDeviceMaskForQuickSoundPath()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_0

    :cond_c
    const-string/jumbo v6, "isAvailableUHQ"

    invoke-virtual {v6, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_d

    const-string/jumbo v4, "true"

    goto/16 :goto_0

    :cond_d
    const-string/jumbo v6, "volumelimit_on"

    invoke-virtual {v6, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_f

    iget-boolean v6, p0, Lcom/android/server/audio/AudioService;->mbVolumeLimitOn:Z

    if-eqz v6, :cond_e

    const-string/jumbo v4, "true"

    goto/16 :goto_0

    :cond_e
    const-string/jumbo v4, "false"

    goto/16 :goto_0

    :cond_f
    const-string/jumbo v6, "volumelimit_value"

    invoke-virtual {v6, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_10

    iget v6, p0, Lcom/android/server/audio/AudioService;->mVolumeLimitValue:I

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_0

    :cond_10
    if-eqz p1, :cond_11

    const-string/jumbo v6, "sound_assistant;"

    invoke-virtual {p1, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_11

    const-string/jumbo v6, "sound_assistant"

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    add-int/lit8 v6, v6, 0x1

    invoke-virtual {p1, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/android/server/audio/AudioService;->getSoundAssistant(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    return-object v6

    :cond_11
    if-eqz p1, :cond_13

    const-string/jumbo v6, "multisound"

    invoke-virtual {p1, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_13

    sget-boolean v6, Lcom/android/server/audio/AudioService;->MULTISOUND_ENABLED:Z

    if-eqz v6, :cond_0

    new-instance v0, Landroid/media/AudioParameter;

    invoke-direct {v0, p1}, Landroid/media/AudioParameter;-><init>(Ljava/lang/String;)V

    const-string/jumbo v6, "multisound_pinappname"

    invoke-virtual {v0, v6}, Landroid/media/AudioParameter;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_12

    const/4 v1, -0x1

    :try_start_0
    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_1
    invoke-virtual {p0, v1}, Lcom/android/server/audio/AudioService;->getPinAppInfo(I)Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v6, "AudioService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "device="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, ", pinappinfo="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :catch_0
    move-exception v2

    const-string/jumbo v6, "AudioService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "invlidate value "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_12
    const-string/jumbo v6, "multisound_getprioritydevice"

    invoke-virtual {v6, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-virtual {p0}, Lcom/android/server/audio/AudioService;->getPriorityDevice()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_0

    :cond_13
    if-eqz p1, :cond_0

    const-string/jumbo v6, "SafeMediaVolumeDevice"

    invoke-virtual {p1, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_0

    sget-boolean v6, Lcom/android/server/audio/AudioService;->MULTISOUND_ENABLED:Z

    if-eqz v6, :cond_0

    new-instance v0, Landroid/media/AudioParameter;

    invoke-direct {v0, p1}, Landroid/media/AudioParameter;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x0

    const-string/jumbo v6, "SafeMediaVolumeDevice"

    invoke-virtual {v0, v6}, Landroid/media/AudioParameter;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_14

    :try_start_1
    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v1

    :cond_14
    :goto_2
    const/4 v6, 0x2

    if-ne v1, v6, :cond_15

    const/4 v6, 0x4

    invoke-direct {p0, v6}, Lcom/android/server/audio/AudioService;->checkDeviceConnected(I)Z

    move-result v6

    if-eqz v6, :cond_16

    const/4 v1, 0x4

    :cond_15
    :goto_3
    and-int/lit16 v6, v1, 0x18c

    if-eqz v6, :cond_17

    const-string/jumbo v4, "true"

    goto/16 :goto_0

    :catch_1
    move-exception v2

    const-string/jumbo v6, "AudioService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "invlidate value "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_16
    const/16 v6, 0x8

    invoke-direct {p0, v6}, Lcom/android/server/audio/AudioService;->checkDeviceConnected(I)Z

    move-result v6

    if-eqz v6, :cond_15

    const/16 v1, 0x8

    goto :goto_3

    :cond_17
    const-string/jumbo v4, "false"

    goto/16 :goto_0
.end method

.method public getCurrentAudioFocus()I
    .locals 1

    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mMediaFocusControl:Lcom/android/server/audio/MediaFocusControl;

    invoke-virtual {v0}, Lcom/android/server/audio/MediaFocusControl;->getCurrentAudioFocus()I

    move-result v0

    return v0
.end method

.method public getCurrentAudioFocusPackageName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mMediaFocusControl:Lcom/android/server/audio/MediaFocusControl;

    invoke-virtual {v0}, Lcom/android/server/audio/MediaFocusControl;->getCurrentAudioFocusPackageName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLastAudibleStreamVolume(I)I
    .locals 2

    invoke-direct {p0, p1}, Lcom/android/server/audio/AudioService;->ensureValidStreamType(I)V

    invoke-direct {p0, p1}, Lcom/android/server/audio/AudioService;->getDeviceForStream(I)I

    move-result v0

    iget-object v1, p0, Lcom/android/server/audio/AudioService;->mStreamStates:[Lcom/android/server/audio/AudioService$VolumeStreamState;

    aget-object v1, v1, p1

    invoke-virtual {v1, v0}, Lcom/android/server/audio/AudioService$VolumeStreamState;->getIndex(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x5

    div-int/lit8 v1, v1, 0xa

    return v1
.end method

.method public getMediaAppList()[I
    .locals 9

    new-instance v5, Landroid/content/Intent;

    const-string/jumbo v7, "android.intent.action.MAIN"

    const/4 v8, 0x0

    invoke-direct {v5, v7, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const-string/jumbo v7, "android.intent.category.LAUNCHER"

    invoke-virtual {v5, v7}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v7, p0, Lcom/android/server/audio/AudioService;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    const/4 v8, 0x0

    invoke-virtual {v7, v5, v8}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v7

    if-ge v3, v7, :cond_1

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/pm/ResolveInfo;

    iget-object v7, v7, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v4, v7, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v7, v4, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-direct {p0, v7}, Lcom/android/server/audio/AudioService;->isMusicVideoGame(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_0

    iget v7, v4, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v6

    new-array v2, v6, [I

    const/4 v3, 0x0

    :goto_1
    if-ge v3, v6, :cond_2

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    aput v7, v2, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_2
    return-object v2
.end method

.method public getMode()I
    .locals 1

    iget v0, p0, Lcom/android/server/audio/AudioService;->mMode:I

    return v0
.end method

.method public getMuteInterval()I
    .locals 3

    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "mode_ringer_time"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getPinAppInfo(I)Ljava/lang/String;
    .locals 3

    const-string/jumbo v0, "AudioService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "getPinAppInfo, device="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mSoundKitchen:Lcom/android/server/audio/AudioService$SoundKitchen;

    invoke-virtual {v0, p1}, Lcom/android/server/audio/AudioService$SoundKitchen;->getPinAppInfo(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPinDevice()I
    .locals 1

    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mSoundKitchen:Lcom/android/server/audio/AudioService$SoundKitchen;

    invoke-virtual {v0}, Lcom/android/server/audio/AudioService$SoundKitchen;->getPinDevice()I

    move-result v0

    return v0
.end method

.method public getPrevRingerMode()I
    .locals 1

    iget v0, p0, Lcom/android/server/audio/AudioService;->mPrevRingerMode:I

    return v0
.end method

.method public getPriorityDevice()I
    .locals 10

    const/4 v5, 0x0

    const/4 v1, 0x2

    const/16 v6, 0x9

    new-array v4, v6, [I

    fill-array-data v4, :array_0

    iget-object v7, p0, Lcom/android/server/audio/AudioService;->mConnectedDevices:Landroid/util/ArrayMap;

    monitor-enter v7

    const/4 v2, 0x0

    :goto_0
    :try_start_0
    array-length v6, v4

    if-ge v2, v6, :cond_2

    const/4 v3, 0x0

    :goto_1
    iget-object v6, p0, Lcom/android/server/audio/AudioService;->mConnectedDevices:Landroid/util/ArrayMap;

    invoke-virtual {v6}, Landroid/util/ArrayMap;->size()I

    move-result v6

    if-ge v3, v6, :cond_1

    iget-object v6, p0, Lcom/android/server/audio/AudioService;->mConnectedDevices:Landroid/util/ArrayMap;

    invoke-virtual {v6, v3}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    move-object v0, v6

    check-cast v0, Lcom/android/server/audio/AudioService$DeviceListSpec;

    move-object v5, v0

    iget v6, v5, Lcom/android/server/audio/AudioService$DeviceListSpec;->mDeviceType:I

    aget v8, v4, v2

    if-ne v6, v8, :cond_0

    const-string/jumbo v6, "AudioService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "getPriorityDevice, "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, v5, Lcom/android/server/audio/AudioService$DeviceListSpec;->mDeviceType:I

    invoke-static {v9}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, " selected"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v6, v5, Lcom/android/server/audio/AudioService$DeviceListSpec;->mDeviceType:I

    invoke-static {v6}, Landroid/media/AudioDeviceInfo;->convertDeviceTypeToInternalDevice(I)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    monitor-exit v7

    return v1

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    monitor-exit v7

    if-nez v5, :cond_3

    const-string/jumbo v6, "AudioService"

    const-string/jumbo v7, "getPriorityDevice, device not selected"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    return v1

    :catchall_0
    move-exception v6

    monitor-exit v7

    throw v6

    :array_0
    .array-data 4
        0x80
        0x8
        0x4
        0x2000
        0x4000
        0x1000
        0x400
        0x800
        0x2
    .end array-data
.end method

.method public getRemainingMuteIntervalMs()I
    .locals 1

    iget v0, p0, Lcom/android/server/audio/AudioService;->mMuteIntervalMs:I

    return v0
.end method

.method public getRingerModeExternal()I
    .locals 2

    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mSettingsLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget v1, p0, Lcom/android/server/audio/AudioService;->mRingerModeExternal:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public getRingerModeInternal()I
    .locals 2

    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mSettingsLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget v1, p0, Lcom/android/server/audio/AudioService;->mRingerMode:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public getRingtonePlayer()Landroid/media/IRingtonePlayer;
    .locals 1

    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mRingtonePlayer:Landroid/media/IRingtonePlayer;

    return-object v0
.end method

.method getSoundAssistant(Ljava/lang/String;)Ljava/lang/String;
    .locals 8

    const/4 v3, 0x0

    const-string/jumbo v6, "adjust_media_volume_only"

    invoke-virtual {v6, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    iget-boolean v6, p0, Lcom/android/server/audio/AudioService;->mAdjustMediaVolumeOnly:Z

    if-eqz v6, :cond_0

    const-string/jumbo v3, "1"

    :goto_0
    return-object v3

    :cond_0
    const-string/jumbo v3, "0"

    goto :goto_0

    :cond_1
    const-string/jumbo v6, "version"

    invoke-virtual {v6, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    const-string/jumbo v4, "3"

    return-object v4

    :cond_2
    const-string/jumbo v6, "get_app_volume_list"

    invoke-virtual {v6, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    :goto_1
    iget-object v6, p0, Lcom/android/server/audio/AudioService;->mAppVolumeFromSoundAssistant:Landroid/util/SparseIntArray;

    invoke-virtual {v6}, Landroid/util/SparseIntArray;->size()I

    move-result v6

    if-ge v1, v6, :cond_4

    iget-object v6, p0, Lcom/android/server/audio/AudioService;->mAppVolumeFromSoundAssistant:Landroid/util/SparseIntArray;

    invoke-virtual {v6, v1}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v5

    iget-object v6, p0, Lcom/android/server/audio/AudioService;->mAppVolumeFromSoundAssistant:Landroid/util/SparseIntArray;

    invoke-virtual {v6, v1}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v2

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/android/server/audio/AudioService;->mAppVolumeFromSoundAssistant:Landroid/util/SparseIntArray;

    invoke-virtual {v6}, Landroid/util/SparseIntArray;->size()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    if-eq v1, v6, :cond_3

    const-string/jumbo v6, ";"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_4
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    return-object v6

    :cond_5
    const-string/jumbo v6, "enable_floating_button"

    invoke-virtual {v6, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7

    iget-boolean v6, p0, Lcom/android/server/audio/AudioService;->mEnableSoundAssistant:Z

    if-eqz v6, :cond_6

    const-string/jumbo v3, "1"

    :goto_2
    return-object v3

    :cond_6
    const-string/jumbo v3, "0"

    goto :goto_2

    :cond_7
    return-object v3
.end method

.method public getStreamMaxVolume(I)I
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/server/audio/AudioService;->ensureValidStreamType(I)V

    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mStreamStates:[Lcom/android/server/audio/AudioService$VolumeStreamState;

    aget-object v0, v0, p1

    invoke-virtual {v0}, Lcom/android/server/audio/AudioService$VolumeStreamState;->getMaxIndex()I

    move-result v0

    add-int/lit8 v0, v0, 0x5

    div-int/lit8 v0, v0, 0xa

    return v0
.end method

.method public getStreamMinVolume(I)I
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/server/audio/AudioService;->ensureValidStreamType(I)V

    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mStreamStates:[Lcom/android/server/audio/AudioService$VolumeStreamState;

    aget-object v0, v0, p1

    invoke-virtual {v0}, Lcom/android/server/audio/AudioService$VolumeStreamState;->getMinIndex()I

    move-result v0

    add-int/lit8 v0, v0, 0x5

    div-int/lit8 v0, v0, 0xa

    return v0
.end method

.method public getStreamVolume(I)I
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/server/audio/AudioService;->getStreamVolume(II)I

    move-result v0

    return v0
.end method

.method public getStreamVolumeForDevice(II)I
    .locals 1

    sget-boolean v0, Lcom/android/server/audio/AudioService;->MULTISOUND_ENABLED:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    if-ne p2, v0, :cond_0

    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lcom/android/server/audio/AudioService;->checkDeviceConnected(I)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 p2, 0x4

    :cond_0
    :goto_0
    invoke-direct {p0, p1, p2}, Lcom/android/server/audio/AudioService;->getStreamVolume(II)I

    move-result v0

    return v0

    :cond_1
    const/16 v0, 0x8

    invoke-direct {p0, v0}, Lcom/android/server/audio/AudioService;->checkDeviceConnected(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 p2, 0x8

    goto :goto_0
.end method

.method public getTogether()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/audio/AudioService;->mIsTogether:Z

    return v0
.end method

.method public getUiSoundsStreamType()I
    .locals 4

    const/4 v3, 0x5

    const/4 v2, 0x3

    invoke-static {}, Lcom/sec/enterprise/knoxcustom/CustomDeviceManagerProxy;->getInstance()Lcom/sec/enterprise/knoxcustom/CustomDeviceManagerProxy;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/sec/enterprise/knoxcustom/CustomDeviceManagerProxy;->getVolumeControlStream()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    :cond_0
    :pswitch_0
    iget-boolean v1, p0, Lcom/android/server/audio/AudioService;->mIsDefaultStreamNotification:Z

    if-eqz v1, :cond_1

    return v3

    :pswitch_1
    const/4 v1, 0x1

    return v1

    :pswitch_2
    return v3

    :cond_1
    invoke-direct {p0}, Lcom/android/server/audio/AudioService;->isPlatformVoice()Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v1, 0x2

    return v1

    :cond_2
    invoke-direct {p0}, Lcom/android/server/audio/AudioService;->isPlatformTelevision()Z

    move-result v1

    if-eqz v1, :cond_3

    return v2

    :cond_3
    return v2

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public getUidForDevice(I)I
    .locals 3

    const-string/jumbo v0, "AudioService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "getUidForDevice, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mMediaFocusControl:Lcom/android/server/audio/MediaFocusControl;

    invoke-virtual {v0, p1}, Lcom/android/server/audio/MediaFocusControl;->getUidForDevice(I)I

    move-result v0

    return v0
.end method

.method public getVibrateSetting(I)I
    .locals 2

    iget-boolean v0, p0, Lcom/android/server/audio/AudioService;->mHasVibrator:Z

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    iget v0, p0, Lcom/android/server/audio/AudioService;->mVibrateSetting:I

    mul-int/lit8 v1, p1, 0x2

    shr-int/2addr v0, v1

    and-int/lit8 v0, v0, 0x3

    return v0
.end method

.method public isBluetoothA2dpOn()Z
    .locals 2

    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mBluetoothA2dpEnabledLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Lcom/android/server/audio/AudioService;->mBluetoothA2dpEnabled:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public isBluetoothScoOn()Z
    .locals 2

    iget v0, p0, Lcom/android/server/audio/AudioService;->mForcedUseForComm:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isCameraSoundForced()Z
    .locals 2

    iget-object v1, p0, Lcom/android/server/audio/AudioService;->mCameraSoundForced:Ljava/lang/Boolean;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mCameraSoundForced:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit v1

    return v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public isFMPlayerActive()Z
    .locals 5

    const/4 v4, 0x1

    const/4 v3, 0x0

    :try_start_0
    const-string/jumbo v2, "persist.audio.isfmactive"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    if-ne v2, v4, :cond_0

    return v4

    :cond_0
    return v3

    :catch_0
    move-exception v0

    return v3
.end method

.method public isForceSpeakerOn()Z
    .locals 2

    const/4 v0, 0x1

    iget v1, p0, Lcom/android/server/audio/AudioService;->mForceSpeaker:I

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isHdmiSystemAudioSupported()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/audio/AudioService;->mHdmiSystemAudioSupported:Z

    return v0
.end method

.method public isMasterMute()Z
    .locals 1

    invoke-static {}, Landroid/media/AudioSystem;->getMasterMute()Z

    move-result v0

    return v0
.end method

.method public isMediaSilentMode()Z
    .locals 3

    const-string/jumbo v0, "AudioService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "isMediaSilentMode "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/server/audio/AudioService;->mMediaSilentMode:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v0, p0, Lcom/android/server/audio/AudioService;->mMediaSilentMode:Z

    return v0
.end method

.method public isMultiSoundOn()Z
    .locals 1

    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mSoundKitchen:Lcom/android/server/audio/AudioService$SoundKitchen;

    invoke-virtual {v0}, Lcom/android/server/audio/AudioService$SoundKitchen;->getState()Z

    move-result v0

    return v0
.end method

.method public isRadioSpeakerOn()Z
    .locals 2

    const/4 v1, 0x1

    iget v0, p0, Lcom/android/server/audio/AudioService;->mForcedUseForFMRadio:I

    if-ne v0, v1, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isSpeakerphoneOn()Z
    .locals 2

    const/4 v0, 0x1

    iget v1, p0, Lcom/android/server/audio/AudioService;->mForcedUseForComm:I

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isStreamAffectedByMute(I)Z
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    iget v2, p0, Lcom/android/server/audio/AudioService;->mMuteAffectedStreams:I

    shl-int v3, v0, p1

    and-int/2addr v2, v3

    if-eqz v2, :cond_0

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method public isStreamAffectedByRingerMode(I)Z
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    iget v2, p0, Lcom/android/server/audio/AudioService;->mRingerModeAffectedStreams:I

    shl-int v3, v0, p1

    and-int/2addr v2, v3

    if-eqz v2, :cond_0

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method public isStreamMute(I)Z
    .locals 2

    const/high16 v0, -0x80000000

    if-ne p1, v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/android/server/audio/AudioService;->getActiveStreamType(I)I

    move-result p1

    :cond_0
    const-class v1, Lcom/android/server/audio/AudioService$VolumeStreamState;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mStreamStates:[Lcom/android/server/audio/AudioService$VolumeStreamState;

    aget-object v0, v0, p1

    invoke-static {v0}, Lcom/android/server/audio/AudioService$VolumeStreamState;->-get3(Lcom/android/server/audio/AudioService$VolumeStreamState;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit v1

    return v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public isValidRingerMode(I)Z
    .locals 2

    const/4 v0, 0x0

    if-ltz p1, :cond_0

    const/4 v1, 0x2

    if-gt p1, v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public loadSoundEffects()Z
    .locals 12

    const/4 v10, 0x1

    const/4 v11, 0x0

    const/4 v7, 0x3

    new-instance v5, Lcom/android/server/audio/AudioService$LoadSoundEffectReply;

    invoke-direct {v5, p0}, Lcom/android/server/audio/AudioService$LoadSoundEffectReply;-><init>(Lcom/android/server/audio/AudioService;)V

    monitor-enter v5

    :try_start_0
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mAudioHandler:Lcom/android/server/audio/AudioService$AudioHandler;

    const/4 v1, 0x7

    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x0

    invoke-static/range {v0 .. v6}, Lcom/android/server/audio/AudioService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v8, v7

    :goto_0
    :try_start_1
    iget v0, v5, Lcom/android/server/audio/AudioService$LoadSoundEffectReply;->mStatus:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-ne v0, v10, :cond_0

    add-int/lit8 v7, v8, -0x1

    if-lez v8, :cond_1

    const-wide/16 v0, 0x1388

    :try_start_2
    invoke-virtual {v5, v0, v1}, Lcom/android/server/audio/AudioService$LoadSoundEffectReply;->wait(J)V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_1
    move v8, v7

    goto :goto_0

    :cond_0
    move v7, v8

    :cond_1
    monitor-exit v5

    iget v0, v5, Lcom/android/server/audio/AudioService$LoadSoundEffectReply;->mStatus:I

    if-nez v0, :cond_2

    move v0, v10

    :goto_2
    return v0

    :catch_0
    move-exception v9

    :try_start_3
    const-string/jumbo v0, "AudioService"

    const-string/jumbo v1, "loadSoundEffects Interrupted while waiting sound pool loaded."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    :goto_3
    monitor-exit v5

    throw v0

    :cond_2
    move v0, v11

    goto :goto_2

    :catchall_1
    move-exception v0

    move v7, v8

    goto :goto_3
.end method

.method public notifyVolumeControllerVisible(Landroid/media/IVolumeController;Z)V
    .locals 3

    const-string/jumbo v0, "notify about volume controller visibility"

    invoke-direct {p0, v0}, Lcom/android/server/audio/AudioService;->enforceVolumeController(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mVolumeController:Lcom/android/server/audio/AudioService$VolumeController;

    invoke-virtual {v0, p1}, Lcom/android/server/audio/AudioService$VolumeController;->isSameBinder(Landroid/media/IVolumeController;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mVolumeController:Lcom/android/server/audio/AudioService$VolumeController;

    invoke-virtual {v0, p2}, Lcom/android/server/audio/AudioService$VolumeController;->setVisible(Z)V

    sget-boolean v0, Lcom/android/server/audio/AudioService;->DEBUG_VOL:Z

    if-eqz v0, :cond_1

    const-string/jumbo v0, "AudioService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Volume controller visible: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-void
.end method

.method public onAudioServerDied()V
    .locals 18

    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/android/server/audio/AudioService;->mSystemReady:Z

    if-eqz v1, :cond_0

    invoke-static {}, Landroid/media/AudioSystem;->checkAudioFlinger()I

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const-string/jumbo v1, "AudioService"

    const-string/jumbo v2, "Audioserver died."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/audio/AudioService;->mAudioHandler:Lcom/android/server/audio/AudioService$AudioHandler;

    const/4 v2, 0x4

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/16 v7, 0x1f4

    invoke-static/range {v1 .. v7}, Lcom/android/server/audio/AudioService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    return-void

    :cond_1
    const-string/jumbo v1, "AudioService"

    const-string/jumbo v2, "Audioserver started."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/server/audio/AudioService;->mMode:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_2

    invoke-direct/range {p0 .. p0}, Lcom/android/server/audio/AudioService;->isInCommunication()Z

    move-result v1

    if-eqz v1, :cond_2

    const-string/jumbo v1, "AudioService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "CallState=2 in case of "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/server/audio/AudioService;->mMode:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v1, "CallState=2"

    invoke-static {v1}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    :cond_2
    const-string/jumbo v1, "restarting=true"

    invoke-static {v1}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    invoke-static {}, Lcom/android/server/audio/AudioService;->readAndSetLowRamDevice()V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "UHQ_BT="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/audio/AudioService;->mUhqBtSampleRate:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/audio/AudioService;->mConnectedDevices:Landroid/util/ArrayMap;

    monitor-enter v2

    const/4 v8, 0x0

    :goto_0
    :try_start_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/audio/AudioService;->mConnectedDevices:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v1

    if-ge v8, v1, :cond_4

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/audio/AudioService;->mConnectedDevices:Landroid/util/ArrayMap;

    invoke-virtual {v1, v8}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/server/audio/AudioService$DeviceListSpec;

    iget v1, v13, Lcom/android/server/audio/AudioService$DeviceListSpec;->mDeviceType:I

    const/high16 v3, 0x2000000

    if-ne v1, v3, :cond_3

    iget-object v1, v13, Lcom/android/server/audio/AudioService$DeviceListSpec;->mDeviceAddress:Ljava/lang/String;

    invoke-static {v1}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    :cond_3
    iget v1, v13, Lcom/android/server/audio/AudioService$DeviceListSpec;->mDeviceType:I

    iget-object v3, v13, Lcom/android/server/audio/AudioService$DeviceListSpec;->mDeviceAddress:Ljava/lang/String;

    iget-object v4, v13, Lcom/android/server/audio/AudioService$DeviceListSpec;->mDeviceName:Ljava/lang/String;

    const/4 v5, 0x1

    invoke-static {v1, v5, v3, v4}, Landroid/media/AudioSystem;->setDeviceConnectionState(IILjava/lang/String;Ljava/lang/String;)I

    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    :cond_4
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/audio/AudioService;->mLastConnectedDevice:Lcom/android/server/audio/AudioService$DeviceListSpec;

    if-eqz v1, :cond_5

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/audio/AudioService;->mLastConnectedDevice:Lcom/android/server/audio/AudioService$DeviceListSpec;

    iget v1, v1, Lcom/android/server/audio/AudioService$DeviceListSpec;->mDeviceType:I

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/audio/AudioService;->mLastConnectedDevice:Lcom/android/server/audio/AudioService$DeviceListSpec;

    iget-object v3, v3, Lcom/android/server/audio/AudioService$DeviceListSpec;->mDeviceAddress:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/audio/AudioService;->mLastConnectedDevice:Lcom/android/server/audio/AudioService$DeviceListSpec;

    iget-object v4, v4, Lcom/android/server/audio/AudioService$DeviceListSpec;->mDeviceName:Ljava/lang/String;

    const/4 v5, 0x2

    invoke-static {v1, v5, v3, v4}, Landroid/media/AudioSystem;->setDeviceConnectionState(IILjava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_1
    monitor-exit v2

    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/server/audio/AudioService;->mMode:I

    invoke-static {v1}, Landroid/media/AudioSystem;->setPhoneState(I)I

    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/server/audio/AudioService;->mForcedUseForComm:I

    const/4 v2, 0x0

    invoke-static {v2, v1}, Landroid/media/AudioSystem;->setForceUse(II)I

    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/server/audio/AudioService;->mForcedUseForComm:I

    const/4 v2, 0x2

    invoke-static {v2, v1}, Landroid/media/AudioSystem;->setForceUse(II)I

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/audio/AudioService;->mCameraSoundForced:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_6

    const/16 v1, 0xb

    :goto_2
    const/4 v2, 0x4

    invoke-static {v2, v1}, Landroid/media/AudioSystem;->setForceUse(II)I

    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/server/audio/AudioService;->mForcedUseForFMRadio:I

    const/4 v2, 0x7

    invoke-static {v2, v1}, Landroid/media/AudioSystem;->setForceUse(II)I

    invoke-static {}, Landroid/media/AudioSystem;->getNumStreamTypes()I

    move-result v10

    add-int/lit8 v15, v10, -0x1

    :goto_3
    if-ltz v15, :cond_7

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/audio/AudioService;->mStreamStates:[Lcom/android/server/audio/AudioService$VolumeStreamState;

    aget-object v14, v1, v15

    invoke-static {v14}, Lcom/android/server/audio/AudioService$VolumeStreamState;->-get2(Lcom/android/server/audio/AudioService$VolumeStreamState;)I

    move-result v1

    div-int/lit8 v1, v1, 0xa

    invoke-static {v14}, Lcom/android/server/audio/AudioService$VolumeStreamState;->-get1(Lcom/android/server/audio/AudioService$VolumeStreamState;)I

    move-result v2

    div-int/lit8 v2, v2, 0xa

    invoke-static {v15, v1, v2}, Landroid/media/AudioSystem;->initStreamVolume(III)I

    invoke-virtual {v14}, Lcom/android/server/audio/AudioService$VolumeStreamState;->applyAllVolumes()V

    add-int/lit8 v15, v15, -0x1

    goto :goto_3

    :cond_5
    :try_start_1
    const-string/jumbo v1, "mediaserver_died"

    const-string/jumbo v3, ""

    const/high16 v4, 0x40000000    # 2.0f

    const/4 v5, 0x1

    invoke-static {v4, v5, v1, v3}, Landroid/media/AudioSystem;->setDeviceConnectionState(IILjava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v1, "mediaserver_died"

    const-string/jumbo v3, ""

    const/high16 v4, 0x40000000    # 2.0f

    const/4 v5, 0x0

    invoke-static {v4, v5, v1, v3}, Landroid/media/AudioSystem;->setDeviceConnectionState(IILjava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1

    :cond_6
    const/4 v1, 0x0

    goto :goto_2

    :cond_7
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/audio/AudioService;->isFMPlayerActive()Z

    move-result v1

    if-eqz v1, :cond_8

    const-string/jumbo v1, ""

    const-string/jumbo v2, ""

    const v3, -0x7fffe000

    const/4 v4, 0x1

    invoke-static {v3, v4, v1, v2}, Landroid/media/AudioSystem;->setDeviceConnectionState(IILjava/lang/String;Ljava/lang/String;)I

    :cond_8
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/audio/AudioService;->mContentResolver:Landroid/content/ContentResolver;

    move-object/from16 v0, p0

    invoke-direct {v0, v1}, Lcom/android/server/audio/AudioService;->updateMasterMono(Landroid/content/ContentResolver;)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/audio/AudioService;->getRingerModeInternal()I

    move-result v1

    const/4 v2, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v1, v2}, Lcom/android/server/audio/AudioService;->setRingerModeInt(IZ)V

    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/android/server/audio/AudioService;->mMonitorOrientation:Z

    if-eqz v1, :cond_9

    invoke-direct/range {p0 .. p0}, Lcom/android/server/audio/AudioService;->setOrientationForAudioSystem()V

    :cond_9
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/android/server/audio/AudioService;->mMonitorRotation:Z

    if-eqz v1, :cond_a

    invoke-static {}, Lcom/android/server/audio/RotationHelper;->updateOrientation()V

    :cond_a
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/audio/AudioService;->mBluetoothA2dpEnabledLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_2
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/android/server/audio/AudioService;->mBluetoothA2dpEnabled:Z

    if-eqz v1, :cond_d

    const/4 v1, 0x0

    :goto_4
    const/4 v3, 0x1

    invoke-static {v3, v1}, Landroid/media/AudioSystem;->setForceUse(II)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    monitor-exit v2

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/audio/AudioService;->mSettingsLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_3
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/android/server/audio/AudioService;->mDockAudioMediaEnabled:Z

    if-eqz v1, :cond_e

    const/16 v1, 0x8

    :goto_5
    const/4 v3, 0x3

    invoke-static {v3, v1}, Landroid/media/AudioSystem;->setForceUse(II)I

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/audio/AudioService;->mContentResolver:Landroid/content/ContentResolver;

    move-object/from16 v0, p0

    invoke-direct {v0, v1}, Lcom/android/server/audio/AudioService;->sendEncodedSurroundMode(Landroid/content/ContentResolver;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    monitor-exit v2

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/audio/AudioService;->mHdmiManager:Landroid/hardware/hdmi/HdmiControlManager;

    if-eqz v1, :cond_c

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/audio/AudioService;->mHdmiManager:Landroid/hardware/hdmi/HdmiControlManager;

    monitor-enter v2

    :try_start_4
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/audio/AudioService;->mHdmiTvClient:Landroid/hardware/hdmi/HdmiTvClient;

    if-eqz v1, :cond_b

    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/android/server/audio/AudioService;->mHdmiSystemAudioSupported:Z

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/android/server/audio/AudioService;->setHdmiSystemAudioSupported(Z)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    :cond_b
    monitor-exit v2

    :cond_c
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/audio/AudioService;->mAudioPolicies:Ljava/util/HashMap;

    monitor-enter v2

    :try_start_5
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/audio/AudioService;->mAudioPolicies:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :goto_6
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_f

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/server/audio/AudioService$AudioPolicyProxy;

    invoke-virtual {v11}, Lcom/android/server/audio/AudioService$AudioPolicyProxy;->connectMixes()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_6

    :catchall_1
    move-exception v1

    monitor-exit v2

    throw v1

    :cond_d
    const/16 v1, 0xa

    goto :goto_4

    :catchall_2
    move-exception v1

    monitor-exit v2

    throw v1

    :cond_e
    const/4 v1, 0x0

    goto :goto_5

    :catchall_3
    move-exception v1

    monitor-exit v2

    throw v1

    :catchall_4
    move-exception v1

    monitor-exit v2

    throw v1

    :cond_f
    monitor-exit v2

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/audio/AudioService;->onIndicateSystemReady()V

    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/server/audio/AudioService;->mMonoMode:I

    move-object/from16 v0, p0

    invoke-direct {v0, v1}, Lcom/android/server/audio/AudioService;->setMonoMode(I)V

    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/server/audio/AudioService;->mMySoundEnabled:I

    move-object/from16 v0, p0

    invoke-direct {v0, v1}, Lcom/android/server/audio/AudioService;->setGlobalMySound(I)V

    sget-boolean v1, Lcom/android/server/audio/AudioService;->SUPPORT_BOOST_MODE:Z

    if-eqz v1, :cond_13

    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/server/audio/AudioService;->mBoostMode:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_13

    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/server/audio/AudioService;->mBoostUpscalerEnabled:I

    move-object/from16 v0, p0

    invoke-direct {v0, v1}, Lcom/android/server/audio/AudioService;->setGlobalUpscaler(I)V

    :goto_7
    new-instance v9, Landroid/content/Intent;

    const-string/jumbo v1, "com.samsung.intent.action.MEDIA_SERVER_REBOOTED"

    invoke-direct {v9, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    sget-object v1, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    move-object/from16 v0, p0

    invoke-direct {v0, v9, v1}, Lcom/android/server/audio/AudioService;->sendBroadcastToUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    const-string/jumbo v1, "AudioService"

    const-string/jumbo v2, "mediaServer Restart Intent"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/server/audio/AudioService;->mNbQualityMode:I

    move-object/from16 v0, p0

    invoke-direct {v0, v1}, Lcom/android/server/audio/AudioService;->setNbQualityMode(I)V

    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/server/audio/AudioService;->mDualMicMode:I

    move-object/from16 v0, p0

    invoke-direct {v0, v1}, Lcom/android/server/audio/AudioService;->setDualMicMode(I)V

    invoke-direct/range {p0 .. p0}, Lcom/android/server/audio/AudioService;->setAllSoundMute()V

    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/server/audio/AudioService;->mNaturalSound:I

    move-object/from16 v0, p0

    invoke-direct {v0, v1}, Lcom/android/server/audio/AudioService;->setNaturalSoundMode(I)V

    invoke-direct/range {p0 .. p0}, Lcom/android/server/audio/AudioService;->setSoundBalance()V

    const-string/jumbo v1, "persist.audio.voicetrig"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    if-eqz v16, :cond_10

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "voice_trig="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object/from16 v0, v16

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    :cond_10
    const-string/jumbo v1, "persist.audio.voicewakeup"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    if-eqz v17, :cond_12

    const-string/jumbo v1, "on"

    move-object/from16 v0, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_11

    const-string/jumbo v1, "off"

    move-object/from16 v0, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_12

    :cond_11
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "voice_wakeup_mic="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object/from16 v0, v17

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    :cond_12
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/audio/AudioService;->mSoundKitchen:Lcom/android/server/audio/AudioService$SoundKitchen;

    invoke-virtual {v1}, Lcom/android/server/audio/AudioService$SoundKitchen;->initByAudiosServerDied()V

    const-string/jumbo v1, "restarting=false"

    invoke-static {v1}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    return-void

    :cond_13
    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/server/audio/AudioService;->mUpscalerEnabled:I

    move-object/from16 v0, p0

    invoke-direct {v0, v1}, Lcom/android/server/audio/AudioService;->setGlobalUpscaler(I)V

    goto/16 :goto_7
.end method

.method onIndicateSystemReady()V
    .locals 7

    const/4 v2, 0x0

    invoke-static {}, Landroid/media/AudioSystem;->systemReady()I

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mAudioHandler:Lcom/android/server/audio/AudioService$AudioHandler;

    const/16 v1, 0x1a

    const/4 v5, 0x0

    const/16 v6, 0x3e8

    move v3, v2

    move v4, v2

    invoke-static/range {v0 .. v6}, Lcom/android/server/audio/AudioService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    return-void
.end method

.method public onSystemReady()V
    .locals 10

    const/4 v2, 0x2

    const/4 v5, 0x0

    const/4 v3, 0x0

    iget-boolean v0, p0, Lcom/android/server/audio/AudioService;->mSystemReady:Z

    if-nez v0, :cond_0

    const-string/jumbo v0, "system_ready=1"

    invoke-static {v0}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/server/audio/AudioService;->checkFactoryMode()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/audio/AudioService;->mIsFactoryMode:Z

    invoke-direct {p0}, Lcom/android/server/audio/AudioService;->checkFactorySim()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/audio/AudioService;->mIsFactorySim:Z

    :cond_0
    invoke-direct {p0}, Lcom/android/server/audio/AudioService;->setWiredDeviceConnectionStateBeforeBoot()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/audio/AudioService;->mSystemReady:Z

    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mAudioHandler:Lcom/android/server/audio/AudioService$AudioHandler;

    const/4 v1, 0x7

    move v4, v3

    move v6, v3

    invoke-static/range {v0 .. v6}, Lcom/android/server/audio/AudioService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/audio/AudioService;->mScoConnectionState:I

    invoke-direct {p0}, Lcom/android/server/audio/AudioService;->resetBluetoothSco()V

    invoke-direct {p0}, Lcom/android/server/audio/AudioService;->getBluetoothHeadset()Z

    new-instance v9, Landroid/content/Intent;

    const-string/jumbo v0, "android.media.SCO_AUDIO_STATE_CHANGED"

    invoke-direct {v9, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v0, "android.media.extra.SCO_AUDIO_STATE"

    invoke-virtual {v9, v0, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-direct {p0, v9}, Lcom/android/server/audio/AudioService;->sendStickyBroadcastToAll(Landroid/content/Intent;)V

    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v8

    if-eqz v8, :cond_1

    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/audio/AudioService;->mBluetoothProfileServiceListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;

    invoke-virtual {v8, v0, v1, v2}, Landroid/bluetooth/BluetoothAdapter;->getProfileProxy(Landroid/content/Context;Landroid/bluetooth/BluetoothProfile$ServiceListener;I)Z

    :cond_1
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "hdmi_control"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/hdmi/HdmiControlManager;

    iput-object v0, p0, Lcom/android/server/audio/AudioService;->mHdmiManager:Landroid/hardware/hdmi/HdmiControlManager;

    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mHdmiManager:Landroid/hardware/hdmi/HdmiControlManager;

    if-eqz v0, :cond_3

    iget-object v1, p0, Lcom/android/server/audio/AudioService;->mHdmiManager:Landroid/hardware/hdmi/HdmiControlManager;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mHdmiManager:Landroid/hardware/hdmi/HdmiControlManager;

    invoke-virtual {v0}, Landroid/hardware/hdmi/HdmiControlManager;->getTvClient()Landroid/hardware/hdmi/HdmiTvClient;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/audio/AudioService;->mHdmiTvClient:Landroid/hardware/hdmi/HdmiTvClient;

    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mHdmiTvClient:Landroid/hardware/hdmi/HdmiTvClient;

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/android/server/audio/AudioService;->mFixedVolumeDevices:I

    const v2, -0x2c0003

    and-int/2addr v0, v2

    iput v0, p0, Lcom/android/server/audio/AudioService;->mFixedVolumeDevices:I

    :cond_2
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mHdmiManager:Landroid/hardware/hdmi/HdmiControlManager;

    invoke-virtual {v0}, Landroid/hardware/hdmi/HdmiControlManager;->getPlaybackClient()Landroid/hardware/hdmi/HdmiPlaybackClient;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/audio/AudioService;->mHdmiPlaybackClient:Landroid/hardware/hdmi/HdmiPlaybackClient;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/audio/AudioService;->mHdmiCecSink:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    :cond_3
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "notification"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    iput-object v0, p0, Lcom/android/server/audio/AudioService;->mNm:Landroid/app/NotificationManager;

    iget-object v1, p0, Lcom/android/server/audio/AudioService;->mAudioHandler:Lcom/android/server/audio/AudioService$AudioHandler;

    const-string/jumbo v6, "AudioService"

    const/16 v2, 0x11

    const/16 v7, 0x7530

    move v4, v3

    move v5, v3

    invoke-static/range {v1 .. v7}, Lcom/android/server/audio/AudioService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/server/audio/AudioService$StreamOverride;->init(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mControllerService:Lcom/android/server/audio/AudioService$ControllerService;

    invoke-virtual {v0}, Lcom/android/server/audio/AudioService$ControllerService;->init()V

    invoke-virtual {p0}, Lcom/android/server/audio/AudioService;->onIndicateSystemReady()V

    invoke-direct {p0}, Lcom/android/server/audio/AudioService;->startLogging()V

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public playSoundEffect(I)V
    .locals 1

    const/high16 v0, -0x40800000    # -1.0f

    invoke-virtual {p0, p1, v0}, Lcom/android/server/audio/AudioService;->playSoundEffectVolume(IF)V

    return-void
.end method

.method public playSoundEffectVolume(IF)V
    .locals 7

    const/4 v6, 0x0

    const/16 v0, 0x10

    if-ge p1, v0, :cond_0

    if-gez p1, :cond_1

    :cond_0
    const-string/jumbo v0, "AudioService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "AudioService effectType value "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " out of range"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    const-string/jumbo v0, "AudioService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "AudioService playSoundEffect Type : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", volume : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mAudioHandler:Lcom/android/server/audio/AudioService$AudioHandler;

    const/high16 v1, 0x447a0000    # 1000.0f

    mul-float/2addr v1, p2

    float-to-int v4, v1

    const/4 v1, 0x5

    const/4 v2, 0x2

    const/4 v5, 0x0

    move v3, p1

    invoke-static/range {v0 .. v6}, Lcom/android/server/audio/AudioService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    return-void
.end method

.method public registerAudioPolicy(Landroid/media/audiopolicy/AudioPolicyConfig;Landroid/media/audiopolicy/IAudioPolicyCallback;Z)Ljava/lang/String;
    .locals 9

    const/4 v8, 0x0

    const/4 v2, 0x0

    iget-object v4, p0, Lcom/android/server/audio/AudioService;->mDynPolicyCallback:Landroid/media/AudioSystem$DynamicPolicyCallback;

    invoke-static {v4}, Landroid/media/AudioSystem;->setDynamicPolicyCallback(Landroid/media/AudioSystem$DynamicPolicyCallback;)V

    sget-boolean v4, Lcom/android/server/audio/AudioService;->DEBUG_AP:Z

    if-eqz v4, :cond_0

    const-string/jumbo v4, "AudioService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "registerAudioPolicy for "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface {p2}, Landroid/media/audiopolicy/IAudioPolicyCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " with config:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v3, 0x0

    iget-object v4, p0, Lcom/android/server/audio/AudioService;->mContext:Landroid/content/Context;

    const-string/jumbo v5, "android.permission.MODIFY_AUDIO_ROUTING"

    invoke-virtual {v4, v5}, Landroid/content/Context;->checkCallingPermission(Ljava/lang/String;)I

    move-result v4

    if-nez v4, :cond_1

    const/4 v2, 0x1

    :cond_1
    if-nez v2, :cond_2

    const-string/jumbo v4, "AudioService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Can\'t register audio policy for pid "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " / uid "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ", need MODIFY_AUDIO_ROUTING"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v8

    :cond_2
    iget-object v5, p0, Lcom/android/server/audio/AudioService;->mAudioPolicies:Ljava/util/HashMap;

    monitor-enter v5

    :try_start_0
    iget-object v4, p0, Lcom/android/server/audio/AudioService;->mAudioPolicies:Ljava/util/HashMap;

    invoke-interface {p2}, Landroid/media/audiopolicy/IAudioPolicyCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    const-string/jumbo v4, "AudioService"

    const-string/jumbo v6, "Cannot re-register policy"

    invoke-static {v4, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v5

    return-object v8

    :cond_3
    :try_start_1
    new-instance v0, Lcom/android/server/audio/AudioService$AudioPolicyProxy;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/android/server/audio/AudioService$AudioPolicyProxy;-><init>(Lcom/android/server/audio/AudioService;Landroid/media/audiopolicy/AudioPolicyConfig;Landroid/media/audiopolicy/IAudioPolicyCallback;Z)V

    invoke-interface {p2}, Landroid/media/audiopolicy/IAudioPolicyCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v4

    const/4 v6, 0x0

    invoke-interface {v4, v0, v6}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V

    invoke-virtual {v0}, Lcom/android/server/audio/AudioService$AudioPolicyProxy;->getRegistrationId()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/audio/AudioService;->mAudioPolicies:Ljava/util/HashMap;

    invoke-interface {p2}, Landroid/media/audiopolicy/IAudioPolicyCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v6

    invoke-virtual {v4, v6, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v5

    return-object v3

    :catch_0
    move-exception v1

    :try_start_2
    const-string/jumbo v4, "AudioService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Audio policy registration failed, could not link to "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " binder death"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit v5

    return-object v8

    :catchall_0
    move-exception v4

    monitor-exit v5

    throw v4
.end method

.method public registerRecordingCallback(Landroid/media/IRecordingConfigDispatcher;)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mRecordMonitor:Lcom/android/server/audio/RecordingActivityMonitor;

    invoke-virtual {v0, p1}, Lcom/android/server/audio/RecordingActivityMonitor;->registerRecordingCallback(Landroid/media/IRecordingConfigDispatcher;)V

    return-void
.end method

.method public reloadAudioSettings()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/server/audio/AudioService;->readAudioSettings(Z)V

    return-void
.end method

.method public requestAudioFocus(Landroid/media/AudioAttributes;ILandroid/os/IBinder;Landroid/media/IAudioFocusDispatcher;Ljava/lang/String;Ljava/lang/String;ILandroid/media/audiopolicy/IAudioPolicyCallback;)I
    .locals 8

    and-int/lit8 v0, p7, 0x4

    const/4 v1, 0x4

    if-ne v0, v1, :cond_1

    const-string/jumbo v0, "AudioFocus_For_Phone_Ring_And_Calls"

    invoke-virtual {v0, p5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "android.permission.MODIFY_PHONE_STATE"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_1

    const-string/jumbo v0, "AudioService"

    const-string/jumbo v1, "Invalid permission to (un)lock audio focus"

    new-instance v2, Ljava/lang/Exception;

    invoke-direct {v2}, Ljava/lang/Exception;-><init>()V

    invoke-static {v0, v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v0, 0x0

    return v0

    :cond_0
    iget-object v1, p0, Lcom/android/server/audio/AudioService;->mAudioPolicies:Ljava/util/HashMap;

    monitor-enter v1

    if-eqz p8, :cond_2

    :try_start_0
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mAudioPolicies:Ljava/util/HashMap;

    invoke-interface/range {p8 .. p8}, Landroid/media/audiopolicy/IAudioPolicyCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_2

    monitor-exit v1

    :cond_1
    invoke-direct {p0, p1, p6, p2}, Lcom/android/server/audio/AudioService;->checkAndSetSplitSound(Landroid/media/AudioAttributes;Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mMediaFocusControl:Lcom/android/server/audio/MediaFocusControl;

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    move v7, p7

    invoke-virtual/range {v0 .. v7}, Lcom/android/server/audio/MediaFocusControl;->requestAudioFocus(Landroid/media/AudioAttributes;ILandroid/os/IBinder;Landroid/media/IAudioFocusDispatcher;Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    return v0

    :cond_2
    :try_start_1
    const-string/jumbo v0, "AudioService"

    const-string/jumbo v2, "Invalid unregistered AudioPolicy to (un)lock audio focus"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v0, 0x0

    monitor-exit v1

    return v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public setAppDevice(II)V
    .locals 7

    const/4 v6, 0x0

    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v0, p1}, Landroid/content/pm/PackageManager;->getNameForUid(I)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Bad uid "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    const-string/jumbo v0, "AudioService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setAppDevice, uid:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", device:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p2}, Landroid/media/AudioDeviceInfo;->convertDeviceTypeToInternalDevice(I)I

    move-result p2

    const-string/jumbo v0, "AudioService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setAppDevice, uid:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", device:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mAudioHandler:Lcom/android/server/audio/AudioService$AudioHandler;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/16 v1, 0x76

    const/4 v2, 0x2

    move v3, p1

    move v4, p2

    invoke-static/range {v0 .. v6}, Lcom/android/server/audio/AudioService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    return-void
.end method

.method public setAppVolume(IILjava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v0, p1}, Landroid/content/pm/PackageManager;->getNameForUid(I)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Bad uid "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    const-string/jumbo v0, "AudioService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setAppVolume, uid:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", volume:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", package:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mSoundKitchen:Lcom/android/server/audio/AudioService$SoundKitchen;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/audio/AudioService$SoundKitchen;->setVolume(II)V

    const-string/jumbo v0, "com.samsung.android.soundassistant"

    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mAppVolumeFromSoundAssistant:Landroid/util/SparseIntArray;

    invoke-virtual {v0, p1, p2}, Landroid/util/SparseIntArray;->put(II)V

    :cond_1
    return-void
.end method

.method public setAudioServiceConfig(Ljava/lang/String;)V
    .locals 14

    const/4 v13, 0x3

    const/4 v12, 0x0

    new-instance v0, Landroid/media/AudioParameter;

    invoke-direct {v0, p1}, Landroid/media/AudioParameter;-><init>(Ljava/lang/String;)V

    const/4 v6, 0x0

    const-string/jumbo v10, "fine_volume"

    invoke-virtual {v0, v10}, Landroid/media/AudioParameter;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_1

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    invoke-direct {p0, v5}, Lcom/android/server/audio/AudioService;->setFineVolume(I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string/jumbo v10, "fine_volume_v2"

    invoke-virtual {v0, v10}, Landroid/media/AudioParameter;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_2

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    const-string/jumbo v10, "fine_volume_v2_flag"

    invoke-virtual {v0, v10}, Landroid/media/AudioParameter;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_0

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    const-string/jumbo v10, "FINE_VOLUME"

    invoke-virtual {p0, v13, v5, v2, v10}, Lcom/android/server/audio/AudioService;->setStreamVolume(IIILjava/lang/String;)V

    goto :goto_0

    :cond_2
    const-string/jumbo v10, "setForceUseForMedia"

    invoke-virtual {v0, v10}, Landroid/media/AudioParameter;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_3

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {p0, v3}, Lcom/android/server/audio/AudioService;->setForceUseForMedia(I)V

    goto :goto_0

    :cond_3
    const-string/jumbo v10, "UHQ_BT"

    invoke-virtual {v0, v10}, Landroid/media/AudioParameter;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_5

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    if-nez v8, :cond_4

    invoke-direct {p0, v13, v12}, Lcom/android/server/audio/AudioService;->getDevicesForStream(IZ)I

    goto :goto_0

    :cond_4
    iput v8, p0, Lcom/android/server/audio/AudioService;->mUhqBtSampleRate:I

    invoke-static {p1}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    goto :goto_0

    :cond_5
    const-string/jumbo v10, "audioHDR"

    invoke-virtual {v0, v10}, Landroid/media/AudioParameter;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_6

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "audioEffectParam;audioHDR="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, ";"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, "packageName"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, "="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-direct {p0}, Lcom/android/server/audio/AudioService;->getForegroundPackage()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    const-string/jumbo v10, "AudioService"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "audioEffectParam;audioHDR="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, ";"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, "packageName"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, "="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-direct {p0}, Lcom/android/server/audio/AudioService;->getForegroundPackage()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_6
    const-string/jumbo v10, "volumelimit_value"

    invoke-virtual {v0, v10}, Landroid/media/AudioParameter;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_7

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    iput v10, p0, Lcom/android/server/audio/AudioService;->mVolumeLimitValue:I

    invoke-direct {p0, v13}, Lcom/android/server/audio/AudioService;->getDeviceForStream(I)I

    move-result v1

    iget-object v10, p0, Lcom/android/server/audio/AudioService;->mStreamStates:[Lcom/android/server/audio/AudioService$VolumeStreamState;

    aget-object v10, v10, v13

    invoke-virtual {v10, v1}, Lcom/android/server/audio/AudioService$VolumeStreamState;->getIndex(I)I

    move-result v10

    iget-object v11, p0, Lcom/android/server/audio/AudioService;->mFineMediaVolume:Lcom/android/server/audio/AudioService$FineVolumeState;

    invoke-virtual {v11, v1}, Lcom/android/server/audio/AudioService$FineVolumeState;->getIndex(I)I

    move-result v11

    add-int/2addr v10, v11

    iget v11, p0, Lcom/android/server/audio/AudioService;->mVolumeLimitValue:I

    mul-int/lit8 v11, v11, 0xa

    if-le v10, v11, :cond_0

    and-int/lit16 v10, v1, 0x18c

    if-eqz v10, :cond_0

    iget v10, p0, Lcom/android/server/audio/AudioService;->mVolumeLimitValue:I

    mul-int/lit8 v10, v10, 0xa

    const-string/jumbo v11, "FINE_VOLUME"

    invoke-virtual {p0, v13, v10, v12, v11}, Lcom/android/server/audio/AudioService;->setStreamVolume(IIILjava/lang/String;)V

    goto/16 :goto_0

    :cond_7
    const-string/jumbo v10, "volumelimit_on"

    invoke-virtual {v0, v10}, Landroid/media/AudioParameter;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_9

    const-string/jumbo v10, "true"

    invoke-virtual {v6, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_8

    const/4 v10, 0x1

    iput-boolean v10, p0, Lcom/android/server/audio/AudioService;->mbVolumeLimitOn:Z

    const-string/jumbo v10, "AudioService"

    const-string/jumbo v11, "Volume Limit on"

    invoke-static {v10, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_8
    iput-boolean v12, p0, Lcom/android/server/audio/AudioService;->mbVolumeLimitOn:Z

    const-string/jumbo v10, "AudioService"

    const-string/jumbo v11, "Volume Limit off"

    invoke-static {v10, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_9
    const-string/jumbo v10, "sound_assistant"

    invoke-virtual {v0, v10}, Landroid/media/AudioParameter;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_a

    invoke-direct {p0, v0}, Lcom/android/server/audio/AudioService;->setSoundAssistant(Landroid/media/AudioParameter;)V

    return-void

    :cond_a
    const-string/jumbo v10, "logging"

    invoke-virtual {v0, v10}, Landroid/media/AudioParameter;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_0

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    const/4 v4, 0x0

    :goto_1
    sget-object v10, Lcom/android/server/audio/AudioService;->AUDIOCORE_BIGDATA:[Ljava/lang/String;

    array-length v10, v10

    if-ge v4, v10, :cond_c

    sget-object v10, Lcom/android/server/audio/AudioService;->AUDIOCORE_BIGDATA:[Ljava/lang/String;

    aget-object v10, v10, v4

    invoke-virtual {v0, v10}, Landroid/media/AudioParameter;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_b

    sget-object v10, Lcom/android/server/audio/AudioService;->AUDIOCORE_BIGDATA:[Ljava/lang/String;

    aget-object v10, v10, v4

    invoke-virtual {v7, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v9, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_b
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_c
    invoke-direct {p0, v7, v9}, Lcom/android/server/audio/AudioService;->sendAudioCoreBigdata(Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    goto/16 :goto_0
.end method

.method public setBluetoothA2dpDeviceConnectionState(Landroid/bluetooth/BluetoothDevice;II)I
    .locals 10

    const/4 v6, 0x0

    const/4 v0, 0x2

    if-eq p3, v0, :cond_0

    const/16 v0, 0xb

    if-eq p3, v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "invalid profile "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v7, p0, Lcom/android/server/audio/AudioService;->mConnectedDevices:Landroid/util/ArrayMap;

    monitor-enter v7

    const/4 v0, 0x2

    if-ne p3, v0, :cond_a

    const/4 v0, 0x4

    if-ne p2, v0, :cond_5

    const/4 p2, 0x0

    :try_start_0
    iget v0, p0, Lcom/android/server/audio/AudioService;->mMode:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    iget v0, p0, Lcom/android/server/audio/AudioService;->mMode:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_4

    :cond_1
    :goto_0
    const/4 v0, 0x0

    const/16 v1, 0x80

    invoke-direct {p0, v1, v0}, Lcom/android/server/audio/AudioService;->checkSendBecomingNoisyIntent(II)I

    move-result v6

    :cond_2
    :goto_1
    const/4 v0, 0x2

    if-ne p3, v0, :cond_3

    const/4 v0, 0x2

    if-ne p2, v0, :cond_3

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/server/audio/AudioService;->mLastBluetoothA2dpDisconnectionTime:J

    sub-long/2addr v0, v2

    int-to-long v2, v6

    add-long v8, v0, v2

    const-wide/16 v0, 0x3e8

    cmp-long v0, v0, v8

    if-lez v0, :cond_3

    const-string/jumbo v0, "AudioService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setBluetoothA2dpDeviceConnectionState delay was "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "ms, but now "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-wide/16 v2, 0x3e8

    sub-long/2addr v2, v8

    int-to-long v4, v6

    add-long/2addr v2, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "ms"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-wide/16 v0, 0x3e8

    sub-long/2addr v0, v8

    long-to-int v0, v0

    add-int/2addr v6, v0

    :cond_3
    iget-object v1, p0, Lcom/android/server/audio/AudioService;->mAudioHandler:Lcom/android/server/audio/AudioService$AudioHandler;

    const/4 v0, 0x2

    if-ne p3, v0, :cond_b

    const/16 v2, 0x66

    :goto_2
    const/4 v4, 0x0

    move-object v0, p0

    move v3, p2

    move-object v5, p1

    invoke-direct/range {v0 .. v6}, Lcom/android/server/audio/AudioService;->queueMsgUnderWakeLock(Landroid/os/Handler;IIILjava/lang/Object;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v7

    return v6

    :cond_4
    :try_start_1
    iget v0, p0, Lcom/android/server/audio/AudioService;->mMode:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_1

    iget v0, p0, Lcom/android/server/audio/AudioService;->mMode:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    goto :goto_0

    :cond_5
    const/4 v0, 0x1

    if-ne p2, v0, :cond_6

    const/16 v0, 0x80

    invoke-direct {p0, v0}, Lcom/android/server/audio/AudioService;->checkDeviceConnected(I)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    if-eqz v0, :cond_6

    const/4 v0, 0x0

    monitor-exit v7

    return v0

    :cond_6
    const/4 v0, 0x3

    if-ne p2, v0, :cond_7

    const/16 v0, 0x80

    :try_start_2
    invoke-direct {p0, v0}, Lcom/android/server/audio/AudioService;->checkDeviceConnected(I)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v0

    if-eqz v0, :cond_7

    const/4 v0, 0x0

    monitor-exit v7

    return v0

    :cond_7
    const/4 v0, 0x1

    if-eq p2, v0, :cond_8

    const/4 v0, 0x2

    if-ne p2, v0, :cond_9

    :cond_8
    const/4 v0, 0x1

    :goto_3
    const/16 v1, 0x80

    :try_start_3
    invoke-direct {p0, v1, v0}, Lcom/android/server/audio/AudioService;->checkSendBecomingNoisyIntent(II)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result v6

    goto/16 :goto_1

    :cond_9
    const/4 v0, 0x0

    goto :goto_3

    :cond_a
    const/4 v6, 0x0

    goto/16 :goto_1

    :cond_b
    const/16 v2, 0x65

    goto :goto_2

    :catchall_0
    move-exception v0

    monitor-exit v7

    throw v0
.end method

.method public setBluetoothA2dpOn(Z)V
    .locals 9

    const/4 v8, 0x1

    const/4 v4, 0x0

    iget-object v7, p0, Lcom/android/server/audio/AudioService;->mBluetoothA2dpEnabledLock:Ljava/lang/Object;

    monitor-enter v7

    :try_start_0
    iput-boolean p1, p0, Lcom/android/server/audio/AudioService;->mBluetoothA2dpEnabled:Z

    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mAudioHandler:Lcom/android/server/audio/AudioService$AudioHandler;

    iget-boolean v1, p0, Lcom/android/server/audio/AudioService;->mBluetoothA2dpEnabled:Z

    if-eqz v1, :cond_1

    :goto_0
    const/16 v1, 0xd

    const/4 v2, 0x2

    const/4 v3, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static/range {v0 .. v6}, Lcom/android/server/audio/AudioService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    iget v0, p0, Lcom/android/server/audio/AudioService;->mForceSpeaker:I

    if-ne v0, v8, :cond_0

    if-eqz p1, :cond_2

    :cond_0
    :goto_1
    const-string/jumbo v0, "AudioService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setBluetoothA2dpOn() "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/server/audio/AudioService;->mBluetoothA2dpEnabled:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v0, p0, Lcom/android/server/audio/AudioService;->mBluetoothA2dpEnabled:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mBluetoothA2dpOndump:[I

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    const/4 v2, 0x0

    aput v1, v0, v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_2
    monitor-exit v7

    invoke-direct {p0}, Lcom/android/server/audio/AudioService;->checkAndSendEarCareInfo()V

    return-void

    :cond_1
    const/16 v4, 0xa

    goto :goto_0

    :cond_2
    :try_start_1
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mAudioHandler:Lcom/android/server/audio/AudioService$AudioHandler;

    iget v4, p0, Lcom/android/server/audio/AudioService;->mForceSpeaker:I

    const/16 v1, 0x8

    const/4 v2, 0x2

    const/4 v3, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static/range {v0 .. v6}, Lcom/android/server/audio/AudioService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit v7

    throw v0

    :cond_3
    :try_start_2
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mBluetoothA2dpOndump:[I

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    const/4 v2, 0x1

    aput v1, v0, v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2
.end method

.method public setBluetoothA2dpOnInt(Z)V
    .locals 4

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/server/audio/AudioService;->mBluetoothA2dpEnabledLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iput-boolean p1, p0, Lcom/android/server/audio/AudioService;->mBluetoothA2dpEnabled:Z

    iget-object v2, p0, Lcom/android/server/audio/AudioService;->mAudioHandler:Lcom/android/server/audio/AudioService$AudioHandler;

    const/16 v3, 0xd

    invoke-virtual {v2, v3}, Lcom/android/server/audio/AudioService$AudioHandler;->removeMessages(I)V

    iget-boolean v2, p0, Lcom/android/server/audio/AudioService;->mBluetoothA2dpEnabled:Z

    if-eqz v2, :cond_0

    :goto_0
    const/4 v2, 0x1

    invoke-direct {p0, v2, v0}, Lcom/android/server/audio/AudioService;->setForceUseInt_SyncDevices(II)V

    iget-boolean v0, p0, Lcom/android/server/audio/AudioService;->mBluetoothA2dpEnabled:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mBluetoothA2dpOndump:[I

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    const/4 v3, 0x0

    aput v2, v0, v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_1
    monitor-exit v1

    return-void

    :cond_0
    const/16 v0, 0xa

    goto :goto_0

    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mBluetoothA2dpOndump:[I

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    const/4 v3, 0x1

    aput v2, v0, v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public setBluetoothScoOn(Z)V
    .locals 1

    const-string/jumbo v0, "setBluetoothScoOn()"

    invoke-virtual {p0, v0}, Lcom/android/server/audio/AudioService;->checkAudioSettingsPermission(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/server/audio/AudioService;->setBluetoothScoOnInt(Z)V

    return-void
.end method

.method public setBluetoothScoOnInt(Z)V
    .locals 9

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

    const/4 v1, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x3

    filled-new-array {v1, v2, v3}, [I

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/bluetooth/BluetoothHeadset;->getDevicesMatchingConnectionStates([I)Ljava/util/List;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

    iget-object v1, p0, Lcom/android/server/audio/AudioService;->mBluetoothHeadsetDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0, v1}, Landroid/bluetooth/BluetoothHeadset;->getAudioState(Landroid/bluetooth/BluetoothDevice;)I

    move-result v8

    const/16 v0, 0xb

    if-eq v8, v0, :cond_0

    const/16 v0, 0xc

    if-eq v8, v0, :cond_0

    const-string/jumbo v0, "AudioService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setBluetoothScoOn() wrong sco state:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " mScoAudioState:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/audio/AudioService;->mScoAudioState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    if-eqz p1, :cond_3

    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mBluetoothScoOndump:[I

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    const/4 v2, 0x0

    aput v1, v0, v2

    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mBluetoothScoOndump:[I

    const/4 v1, 0x0

    const/4 v2, 0x1

    aput v1, v0, v2

    :goto_0
    if-eqz p1, :cond_4

    iget-boolean v0, p0, Lcom/android/server/audio/AudioService;->mBtNxpShareIF_LSI:Z

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/android/server/audio/AudioService;->mForcedUseForComm:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/server/audio/AudioService;->setSpeakerphoneOn(Z)V

    :cond_1
    const/4 v0, 0x3

    iput v0, p0, Lcom/android/server/audio/AudioService;->mForcedUseForComm:I

    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mAudioHandler:Lcom/android/server/audio/AudioService$AudioHandler;

    iget v4, p0, Lcom/android/server/audio/AudioService;->mForcedUseForComm:I

    const/16 v1, 0x8

    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static/range {v0 .. v6}, Lcom/android/server/audio/AudioService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mAudioHandler:Lcom/android/server/audio/AudioService$AudioHandler;

    iget v4, p0, Lcom/android/server/audio/AudioService;->mForcedUseForComm:I

    const/16 v1, 0x8

    const/4 v2, 0x2

    const/4 v3, 0x2

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static/range {v0 .. v6}, Lcom/android/server/audio/AudioService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    return-void

    :cond_3
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mBluetoothScoOndump:[I

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    const/4 v2, 0x1

    aput v1, v0, v2

    goto :goto_0

    :cond_4
    iget v0, p0, Lcom/android/server/audio/AudioService;->mForcedUseForComm:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_2

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/audio/AudioService;->mForcedUseForComm:I

    iget-boolean v0, p0, Lcom/android/server/audio/AudioService;->mBtNxpShareIF_LSI:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

    iget-object v1, p0, Lcom/android/server/audio/AudioService;->mBluetoothHeadsetDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0, v1}, Landroid/bluetooth/BluetoothHeadset;->stopScoUsingVirtualVoiceCall(Landroid/bluetooth/BluetoothDevice;)Z

    goto :goto_1
.end method

.method setBtScoDeviceConnectionState(Landroid/bluetooth/BluetoothDevice;I)V
    .locals 10

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getBluetoothClass()Landroid/bluetooth/BluetoothClass;

    move-result-object v1

    const/16 v5, 0x10

    const v4, -0x7ffffff8

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothClass;->getDeviceClass()I

    move-result v7

    sparse-switch v7, :sswitch_data_0

    :cond_1
    :goto_0
    invoke-static {v0}, Landroid/bluetooth/BluetoothAdapter;->checkBluetoothAddress(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_2

    const-string/jumbo v0, ""

    :cond_2
    const/4 v7, 0x2

    if-ne p2, v7, :cond_5

    const/4 v3, 0x1

    :goto_1
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_3

    const-string/jumbo v2, ""

    :cond_3
    invoke-direct {p0, v3, v5, v0, v2}, Lcom/android/server/audio/AudioService;->handleDeviceConnection(ZILjava/lang/String;Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_6

    invoke-direct {p0, v3, v4, v0, v2}, Lcom/android/server/audio/AudioService;->handleDeviceConnection(ZILjava/lang/String;Ljava/lang/String;)Z

    move-result v6

    :goto_2
    if-eqz p2, :cond_4

    const/4 v7, 0x3

    if-ne p2, v7, :cond_7

    :cond_4
    iget-object v7, p0, Lcom/android/server/audio/AudioService;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

    if-eqz v7, :cond_7

    iget-object v7, p0, Lcom/android/server/audio/AudioService;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

    invoke-virtual {v7, p1}, Landroid/bluetooth/BluetoothHeadset;->getAudioState(Landroid/bluetooth/BluetoothDevice;)I

    move-result v7

    const/16 v8, 0xc

    if-ne v7, v8, :cond_7

    const-string/jumbo v7, "AudioService"

    const-string/jumbo v8, "SCO is there with another device, returning"

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :sswitch_0
    const/16 v5, 0x20

    goto :goto_0

    :sswitch_1
    const/16 v5, 0x40

    goto :goto_0

    :cond_5
    const/4 v3, 0x0

    goto :goto_1

    :cond_6
    const/4 v6, 0x0

    goto :goto_2

    :cond_7
    if-eqz v6, :cond_9

    iget-object v8, p0, Lcom/android/server/audio/AudioService;->mScoClients:Ljava/util/ArrayList;

    monitor-enter v8

    if-eqz v3, :cond_a

    :try_start_0
    iget-boolean v7, p0, Lcom/android/server/audio/AudioService;->mSplitSound:Z

    if-eqz v7, :cond_8

    const/4 v7, 0x0

    iput-boolean v7, p0, Lcom/android/server/audio/AudioService;->mSplitSound:Z

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "audioParam;SplitSound="

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-boolean v9, p0, Lcom/android/server/audio/AudioService;->mSplitSound:Z

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    const/16 v7, 0x20

    invoke-direct {p0, v7}, Lcom/android/server/audio/AudioService;->onSendBecomingNoisyIntent(I)V

    :cond_8
    iput-object p1, p0, Lcom/android/server/audio/AudioService;->mBluetoothHeadsetDevice:Landroid/bluetooth/BluetoothDevice;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_3
    monitor-exit v8

    :cond_9
    return-void

    :cond_a
    const/4 v7, 0x0

    :try_start_1
    iput-object v7, p0, Lcom/android/server/audio/AudioService;->mBluetoothHeadsetDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-direct {p0}, Lcom/android/server/audio/AudioService;->resetBluetoothSco()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_3

    :catchall_0
    move-exception v7

    monitor-exit v8

    throw v7

    :sswitch_data_0
    .sparse-switch
        0x404 -> :sswitch_0
        0x408 -> :sswitch_0
        0x420 -> :sswitch_1
    .end sparse-switch
.end method

.method public setDeviceToForceByUser(ILjava/lang/String;)I
    .locals 18

    const-string/jumbo v2, "AudioService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setDeviceToForceByUser("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p2

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/audio/AudioService;->mConnectedDevices:Landroid/util/ArrayMap;

    move-object/from16 v16, v0

    monitor-enter v16

    const/4 v15, 0x0

    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/audio/AudioService;->mConnectedDevices:Landroid/util/ArrayMap;

    invoke-direct/range {p0 .. p2}, Lcom/android/server/audio/AudioService;->makeDeviceListKey(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/android/server/audio/AudioService$DeviceListSpec;

    const/4 v12, 0x0

    if-eqz v14, :cond_6

    invoke-static/range {p1 .. p1}, Landroid/media/AudioDeviceInfo;->convertInternalDeviceToDeviceType(I)I

    move-result v2

    const/16 v3, 0x8

    if-ne v2, v3, :cond_3

    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v9

    if-nez v9, :cond_0

    const-string/jumbo v2, "AudioService"

    const-string/jumbo v3, "BluetoothAdapter is null"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/4 v2, -0x1

    monitor-exit v16

    return v2

    :cond_0
    :try_start_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/audio/AudioService;->mA2dp:Landroid/bluetooth/BluetoothA2dp;

    if-eqz v2, :cond_2

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/audio/AudioService;->mA2dp:Landroid/bluetooth/BluetoothA2dp;

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothA2dp;->getConnectedDevices()Ljava/util/List;

    move-result-object v13

    if-eqz v13, :cond_5

    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x1

    if-le v2, v3, :cond_5

    invoke-interface {v13}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :cond_1
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v10}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p2

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v9, v10}, Landroid/bluetooth/BluetoothAdapter;->selectstream(Landroid/bluetooth/BluetoothDevice;)Z

    invoke-virtual {v10}, Landroid/bluetooth/BluetoothDevice;->getAliasName()Ljava/lang/String;

    move-result-object v12

    :cond_2
    :goto_0
    const/4 v2, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/server/audio/AudioService;->setBluetoothA2dpOnInt(Z)V

    :cond_3
    const-string/jumbo v2, ""

    const/4 v3, 0x2

    move/from16 v0, p1

    move-object/from16 v1, p2

    invoke-static {v0, v3, v1, v2}, Landroid/media/AudioSystem;->setDeviceConnectionState(IILjava/lang/String;Ljava/lang/String;)I

    move-result v15

    if-nez v15, :cond_4

    const/4 v2, 0x3

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/server/audio/AudioService;->getDeviceForStream(I)I

    move-result v2

    move/from16 v0, p1

    if-ne v0, v2, :cond_4

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/android/server/audio/AudioService;->mLastConnectedDevice:Lcom/android/server/audio/AudioService$DeviceListSpec;

    const-string/jumbo v2, "AudioService"

    const-string/jumbo v3, "Device is changed successfully by force"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/audio/AudioService;->mCurAudioRoutes:Landroid/media/AudioRoutesInfo;

    move-object/from16 v17, v0

    monitor-enter v17
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    const-string/jumbo v2, "AudioService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "send NEW_ROUTES MSG, BT Name is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/audio/AudioService;->mCurAudioRoutes:Landroid/media/AudioRoutesInfo;

    iput-object v12, v2, Landroid/media/AudioRoutesInfo;->bluetoothName:Ljava/lang/CharSequence;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/audio/AudioService;->mAudioHandler:Lcom/android/server/audio/AudioService$AudioHandler;

    const/16 v3, 0xc

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-static/range {v2 .. v8}, Lcom/android/server/audio/AudioService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    monitor-exit v17
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :goto_1
    monitor-exit v16

    return v15

    :cond_5
    :try_start_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/audio/AudioService;->mA2dp:Landroid/bluetooth/BluetoothA2dp;

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothA2dp;->semGetActiveStreamDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v10

    if-eqz v10, :cond_2

    invoke-virtual {v10}, Landroid/bluetooth/BluetoothDevice;->getAliasName()Ljava/lang/String;

    move-result-object v12

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v17

    throw v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :catchall_1
    move-exception v2

    monitor-exit v16

    throw v2

    :cond_6
    :try_start_5
    const-string/jumbo v2, "AudioService"

    const-string/jumbo v3, "There is no device spec in connected devices"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    const/4 v15, -0x1

    goto :goto_1
.end method

.method public setEarphoneStateForSARTest(Z)V
    .locals 8

    const/4 v1, 0x0

    const/16 v0, 0x200

    sget-boolean v5, Lcom/android/server/audio/AudioService;->SUPPORT_SAR_CONTROL_EARJACK_ENABLED:Z

    if-eqz v5, :cond_0

    const/4 v4, 0x0

    const-string/jumbo v5, "phone"

    invoke-static {v5}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v4

    const-string/jumbo v5, "AudioService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "setEarphoneStateForSAR Test "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v4, :cond_2

    const-string/jumbo v5, "ril.backoffstate"

    invoke-static {v5, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v2

    if-eqz p1, :cond_1

    or-int/lit16 v2, v2, 0x200

    :goto_0
    :try_start_0
    invoke-interface {v4, v2}, Lcom/android/internal/telephony/ITelephony;->setTransmitPower(I)Z

    const-string/jumbo v5, "AudioService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "set ear back off "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    iput-boolean p1, p0, Lcom/android/server/audio/AudioService;->isEarBackOff:Z

    :cond_0
    return-void

    :cond_1
    not-int v5, v0

    and-int/2addr v2, v5

    goto :goto_0

    :catch_0
    move-exception v3

    const-string/jumbo v5, "AudioService"

    const-string/jumbo v6, "RemoteException occurs in setTransmitPower"

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_2
    const-string/jumbo v5, "AudioService"

    const-string/jumbo v6, "Telephone Service isn\'t ready"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public setFocusPropertiesForPolicy(ILandroid/media/audiopolicy/IAudioPolicyCallback;)I
    .locals 10

    const/4 v9, -0x1

    const/4 v5, 0x0

    const/4 v4, 0x1

    sget-boolean v6, Lcom/android/server/audio/AudioService;->DEBUG_AP:Z

    if-eqz v6, :cond_0

    const-string/jumbo v6, "AudioService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "setFocusPropertiesForPolicy() duck behavior="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, " policy "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-interface {p2}, Landroid/media/audiopolicy/IAudioPolicyCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v6, p0, Lcom/android/server/audio/AudioService;->mContext:Landroid/content/Context;

    const-string/jumbo v7, "android.permission.MODIFY_AUDIO_ROUTING"

    invoke-virtual {v6, v7}, Landroid/content/Context;->checkCallingPermission(Ljava/lang/String;)I

    move-result v6

    if-nez v6, :cond_1

    move v1, v4

    :goto_0
    if-nez v1, :cond_2

    const-string/jumbo v4, "AudioService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Cannot change audio policy ducking handling for pid "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " / uid "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ", need MODIFY_AUDIO_ROUTING"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v9

    :cond_1
    move v1, v5

    goto :goto_0

    :cond_2
    iget-object v6, p0, Lcom/android/server/audio/AudioService;->mAudioPolicies:Ljava/util/HashMap;

    monitor-enter v6

    :try_start_0
    iget-object v7, p0, Lcom/android/server/audio/AudioService;->mAudioPolicies:Ljava/util/HashMap;

    invoke-interface {p2}, Landroid/media/audiopolicy/IAudioPolicyCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_3

    const-string/jumbo v4, "AudioService"

    const-string/jumbo v5, "Cannot change audio policy focus properties, unregistered policy"

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v6

    return v9

    :cond_3
    :try_start_1
    iget-object v7, p0, Lcom/android/server/audio/AudioService;->mAudioPolicies:Ljava/util/HashMap;

    invoke-interface {p2}, Landroid/media/audiopolicy/IAudioPolicyCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/audio/AudioService$AudioPolicyProxy;

    if-ne p1, v4, :cond_5

    iget-object v7, p0, Lcom/android/server/audio/AudioService;->mAudioPolicies:Ljava/util/HashMap;

    invoke-virtual {v7}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v7

    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_4
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/audio/AudioService$AudioPolicyProxy;

    iget v7, v2, Lcom/android/server/audio/AudioService$AudioPolicyProxy;->mFocusDuckBehavior:I

    if-ne v7, v4, :cond_4

    const-string/jumbo v4, "AudioService"

    const-string/jumbo v5, "Cannot change audio policy ducking behavior, already handled"

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v6

    return v9

    :cond_5
    :try_start_2
    iput p1, v0, Lcom/android/server/audio/AudioService$AudioPolicyProxy;->mFocusDuckBehavior:I

    iget-object v7, p0, Lcom/android/server/audio/AudioService;->mMediaFocusControl:Lcom/android/server/audio/MediaFocusControl;

    if-ne p1, v4, :cond_6

    :goto_1
    invoke-virtual {v7, v4}, Lcom/android/server/audio/MediaFocusControl;->setDuckingInExtPolicyAvailable(Z)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit v6

    return v5

    :cond_6
    move v4, v5

    goto :goto_1

    :catchall_0
    move-exception v4

    monitor-exit v6

    throw v4
.end method

.method public setForceSpeakerOn(Z)V
    .locals 7

    const/4 v3, 0x1

    const/4 v6, 0x0

    if-eqz p1, :cond_1

    move v0, v3

    :goto_0
    iput v0, p0, Lcom/android/server/audio/AudioService;->mForceSpeaker:I

    const/4 v0, 0x3

    invoke-direct {p0, v0}, Lcom/android/server/audio/AudioService;->getDeviceForStream(I)I

    move-result v0

    and-int/lit16 v0, v0, 0x380

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mAudioHandler:Lcom/android/server/audio/AudioService$AudioHandler;

    iget v4, p0, Lcom/android/server/audio/AudioService;->mForceSpeaker:I

    const/16 v1, 0x8

    const/4 v2, 0x2

    const/4 v5, 0x0

    invoke-static/range {v0 .. v6}, Lcom/android/server/audio/AudioService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    :cond_0
    return-void

    :cond_1
    move v0, v6

    goto :goto_0
.end method

.method public setForceUseForMedia(I)V
    .locals 7

    const/16 v1, 0x2711

    const/4 v3, 0x1

    const/4 v6, 0x0

    const-string/jumbo v0, "setForceUseForMedia()"

    invoke-virtual {p0, v0}, Lcom/android/server/audio/AudioService;->checkAudioSettingsPermission(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-ne p1, v1, :cond_1

    invoke-static {v3, v1}, Landroid/media/AudioSystem;->setForceUse(II)I

    iput v1, p0, Lcom/android/server/audio/AudioService;->mForcedUseForMedia:I

    :goto_0
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mAudioHandler:Lcom/android/server/audio/AudioService$AudioHandler;

    iget v4, p0, Lcom/android/server/audio/AudioService;->mForcedUseForMedia:I

    const/16 v1, 0x8

    const/4 v2, 0x2

    const/4 v5, 0x0

    invoke-static/range {v0 .. v6}, Lcom/android/server/audio/AudioService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    return-void

    :cond_1
    invoke-static {v3, v6}, Landroid/media/AudioSystem;->setForceUse(II)I

    iput v6, p0, Lcom/android/server/audio/AudioService;->mForcedUseForMedia:I

    goto :goto_0
.end method

.method public setHdmiSystemAudioSupported(Z)I
    .locals 5

    const/4 v1, 0x0

    const/4 v0, 0x0

    iget-object v2, p0, Lcom/android/server/audio/AudioService;->mHdmiManager:Landroid/hardware/hdmi/HdmiControlManager;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/android/server/audio/AudioService;->mHdmiManager:Landroid/hardware/hdmi/HdmiControlManager;

    monitor-enter v2

    :try_start_0
    iget-object v3, p0, Lcom/android/server/audio/AudioService;->mHdmiTvClient:Landroid/hardware/hdmi/HdmiTvClient;

    if-nez v3, :cond_0

    const-string/jumbo v3, "AudioService"

    const-string/jumbo v4, "Only Hdmi-Cec enabled TV device supports system audio mode."

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    monitor-exit v2

    return v1

    :cond_0
    :try_start_1
    iget-object v3, p0, Lcom/android/server/audio/AudioService;->mHdmiTvClient:Landroid/hardware/hdmi/HdmiTvClient;

    monitor-enter v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    iget-boolean v4, p0, Lcom/android/server/audio/AudioService;->mHdmiSystemAudioSupported:Z

    if-eq v4, p1, :cond_2

    iput-boolean p1, p0, Lcom/android/server/audio/AudioService;->mHdmiSystemAudioSupported:Z

    if-eqz p1, :cond_1

    const/16 v1, 0xc

    :cond_1
    const/4 v4, 0x5

    invoke-static {v4, v1}, Landroid/media/AudioSystem;->setForceUse(II)I

    :cond_2
    const/4 v1, 0x3

    invoke-direct {p0, v1}, Lcom/android/server/audio/AudioService;->getDevicesForStream(I)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v0

    :try_start_3
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    monitor-exit v2

    :cond_3
    return v0

    :catchall_0
    move-exception v1

    :try_start_4
    monitor-exit v3

    throw v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :catchall_1
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public setMasterMute(ZILjava/lang/String;I)V
    .locals 6

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/server/audio/AudioService;->setMasterMuteInternal(ZILjava/lang/String;II)V

    return-void
.end method

.method public setMediaSilentMode(Z)V
    .locals 7

    const/high16 v6, 0x2000000

    const/4 v5, 0x3

    const/4 v4, 0x0

    iget-boolean v1, p0, Lcom/android/server/audio/AudioService;->mMediaSilentMode:Z

    if-eq p1, v1, :cond_1

    invoke-virtual {p0, v5}, Lcom/android/server/audio/AudioService;->getStreamVolume(I)I

    move-result v0

    const-string/jumbo v1, "AudioService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setMediaSilentMode musicLev"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_2

    if-eqz v0, :cond_0

    iput v0, p0, Lcom/android/server/audio/AudioService;->mMediaLastAudibleIndex:I

    iget-object v1, p0, Lcom/android/server/audio/AudioService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v5, v4, v6, v1}, Lcom/android/server/audio/AudioService;->setStreamVolume(IIILjava/lang/String;)V

    :cond_0
    :goto_0
    iput-boolean p1, p0, Lcom/android/server/audio/AudioService;->mMediaSilentMode:Z

    :cond_1
    return-void

    :cond_2
    iget v1, p0, Lcom/android/server/audio/AudioService;->mMediaLastAudibleIndex:I

    iget-object v2, p0, Lcom/android/server/audio/AudioService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v5, v1, v6, v2}, Lcom/android/server/audio/AudioService;->setStreamVolume(IIILjava/lang/String;)V

    iput v4, p0, Lcom/android/server/audio/AudioService;->mMediaLastAudibleIndex:I

    goto :goto_0
.end method

.method public setMicrophoneMute(ZLjava/lang/String;I)V
    .locals 3

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    const/16 v1, 0x3e8

    if-ne v0, v1, :cond_0

    invoke-static {v0}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v1

    invoke-static {p3, v1}, Landroid/os/UserHandle;->getUid(II)I

    move-result v0

    :cond_0
    if-nez p1, :cond_1

    iget-object v1, p0, Lcom/android/server/audio/AudioService;->mAppOps:Landroid/app/AppOpsManager;

    const/16 v2, 0x2c

    invoke-virtual {v1, v2, v0, p2}, Landroid/app/AppOpsManager;->noteOp(IILjava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_1

    return-void

    :cond_1
    const-string/jumbo v1, "setMicrophoneMute()"

    invoke-virtual {p0, v1}, Lcom/android/server/audio/AudioService;->checkAudioSettingsPermission(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    return-void

    :cond_2
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v1

    if-eq p3, v1, :cond_3

    iget-object v1, p0, Lcom/android/server/audio/AudioService;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "android.permission.INTERACT_ACROSS_USERS_FULL"

    invoke-virtual {v1, v2}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_3

    return-void

    :cond_3
    invoke-direct {p0, p1, p3}, Lcom/android/server/audio/AudioService;->setMicrophoneMuteNoCallerCheck(ZI)V

    return-void
.end method

.method public setMode(ILandroid/os/IBinder;Ljava/lang/String;)V
    .locals 5

    const/4 v4, -0x1

    sget-boolean v1, Lcom/android/server/audio/AudioService;->DEBUG_MODE:Z

    if-eqz v1, :cond_0

    const-string/jumbo v1, "AudioService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setMode(mode="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", callingPackage="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const-string/jumbo v1, "setMode()"

    invoke-virtual {p0, v1}, Lcom/android/server/audio/AudioService;->checkAudioSettingsPermission(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    return-void

    :cond_1
    const/4 v1, 0x2

    if-ne p1, v1, :cond_2

    iget-object v1, p0, Lcom/android/server/audio/AudioService;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "android.permission.MODIFY_PHONE_STATE"

    invoke-virtual {v1, v2}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_2

    const-string/jumbo v1, "AudioService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "MODIFY_PHONE_STATE Permission Denial: setMode(MODE_IN_CALL) from pid="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", uid="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_2
    if-lt p1, v4, :cond_3

    const/4 v1, 0x5

    if-lt p1, v1, :cond_4

    :cond_3
    return-void

    :cond_4
    const/4 v0, 0x0

    iget-object v2, p0, Lcom/android/server/audio/AudioService;->mSetModeDeathHandlers:Ljava/util/ArrayList;

    monitor-enter v2

    if-ne p1, v4, :cond_5

    :try_start_0
    iget p1, p0, Lcom/android/server/audio/AudioService;->mMode:I

    :cond_5
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    invoke-direct {p0, p1, p2, v1, p3}, Lcom/android/server/audio/AudioService;->setModeInt(ILandroid/os/IBinder;ILjava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit v2

    if-eqz v0, :cond_6

    invoke-direct {p0, v0}, Lcom/android/server/audio/AudioService;->disconnectBluetoothSco(I)V

    :cond_6
    return-void

    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public setMultiSoundOn(Z)V
    .locals 7

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mAudioHandler:Lcom/android/server/audio/AudioService$AudioHandler;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    const/16 v1, 0x75

    const/4 v2, 0x2

    move v4, v3

    move v6, v3

    invoke-static/range {v0 .. v6}, Lcom/android/server/audio/AudioService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    return-void
.end method

.method public setMuteInterval(ILjava/lang/String;)V
    .locals 6

    const v5, 0xea60

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    :try_start_0
    iget-object v2, p0, Lcom/android/server/audio/AudioService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "mode_ringer_time"

    const/4 v4, -0x2

    invoke-static {v2, v3, p1, v4}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    mul-int v2, p1, v5

    add-int/2addr v2, v5

    iput v2, p0, Lcom/android/server/audio/AudioService;->mMuteIntervalMs:I

    iget v2, p0, Lcom/android/server/audio/AudioService;->mMuteIntervalMs:I

    if-eqz v2, :cond_0

    const-string/jumbo v2, "AudioService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "start unmute timer caller="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, p2}, Lcom/android/server/audio/AudioService;->onCheckMuteInterval(Ljava/lang/String;)V

    :cond_0
    return-void

    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method public setRadioSpeakerOn(Z)V
    .locals 4

    const/4 v3, 0x7

    const/4 v2, 0x1

    const/4 v1, 0x0

    const-string/jumbo v0, "setRadioSpeakerOn()"

    invoke-virtual {p0, v0}, Lcom/android/server/audio/AudioService;->checkAudioSettingsPermission(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_1

    invoke-static {v3, v2}, Landroid/media/AudioSystem;->setForceUse(II)I

    iput v2, p0, Lcom/android/server/audio/AudioService;->mForcedUseForFMRadio:I

    :goto_0
    return-void

    :cond_1
    invoke-static {v3, v1}, Landroid/media/AudioSystem;->setForceUse(II)I

    iput v1, p0, Lcom/android/server/audio/AudioService;->mForcedUseForFMRadio:I

    goto :goto_0
.end method

.method public setRingerModeExternal(ILjava/lang/String;)V
    .locals 2

    invoke-direct {p0, p2}, Lcom/android/server/audio/AudioService;->isAndroidNPlus(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Lcom/android/server/audio/AudioService;->wouldToggleZenMode(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mNm:Landroid/app/NotificationManager;

    invoke-virtual {v0, p2}, Landroid/app/NotificationManager;->isNotificationPolicyAccessGrantedForPackage(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Lcom/android/server/audio/AudioService;->setRingerMode(ILjava/lang/String;Z)V

    return-void

    :cond_1
    new-instance v0, Ljava/lang/SecurityException;

    const-string/jumbo v1, "Not allowed to change Do Not Disturb state"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setRingerModeInternal(ILjava/lang/String;)V
    .locals 1

    const-string/jumbo v0, "setRingerModeInternal"

    invoke-direct {p0, v0}, Lcom/android/server/audio/AudioService;->enforceVolumeController(Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/server/audio/AudioService;->setRingerMode(ILjava/lang/String;Z)V

    return-void
.end method

.method public setRingtonePlayer(Landroid/media/IRingtonePlayer;)V
    .locals 3

    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "android.permission.REMOTE_AUDIO_PLAYBACK"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/android/server/audio/AudioService;->mRingtonePlayer:Landroid/media/IRingtonePlayer;

    return-void
.end method

.method public setSpeakerphoneOn(Z)V
    .locals 13

    const/16 v1, 0x8

    const/4 v5, 0x0

    const/4 v2, 0x2

    const/4 v7, 0x1

    const/4 v4, 0x0

    const-string/jumbo v0, "setSpeakerphoneOn()"

    invoke-virtual {p0, v0}, Lcom/android/server/audio/AudioService;->checkAudioSettingsPermission(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_4

    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mSpeakerOndump:[I

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v3

    aput v3, v0, v4

    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mSpeakerOndump:[I

    aput v4, v0, v7

    :goto_0
    if-eqz p1, :cond_5

    iget v0, p0, Lcom/android/server/audio/AudioService;->mForcedUseForComm:I

    const/4 v3, 0x3

    if-ne v0, v3, :cond_2

    iget-boolean v0, p0, Lcom/android/server/audio/AudioService;->mBtNxpShareIF_LSI:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0, v4}, Lcom/android/server/audio/AudioService;->setBluetoothScoOn(Z)V

    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

    iget-object v3, p0, Lcom/android/server/audio/AudioService;->mBluetoothHeadsetDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0, v3}, Landroid/bluetooth/BluetoothHeadset;->stopScoUsingVirtualVoiceCall(Landroid/bluetooth/BluetoothDevice;)Z

    :cond_1
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mAudioHandler:Lcom/android/server/audio/AudioService$AudioHandler;

    move v3, v2

    move v6, v4

    invoke-static/range {v0 .. v6}, Lcom/android/server/audio/AudioService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    :cond_2
    iput v7, p0, Lcom/android/server/audio/AudioService;->mForcedUseForComm:I

    :cond_3
    :goto_1
    iget-object v6, p0, Lcom/android/server/audio/AudioService;->mAudioHandler:Lcom/android/server/audio/AudioService$AudioHandler;

    iget v10, p0, Lcom/android/server/audio/AudioService;->mForcedUseForComm:I

    move v7, v1

    move v8, v2

    move v9, v4

    move-object v11, v5

    move v12, v4

    invoke-static/range {v6 .. v12}, Lcom/android/server/audio/AudioService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    return-void

    :cond_4
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mSpeakerOndump:[I

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v3

    aput v3, v0, v7

    goto :goto_0

    :cond_5
    iget v0, p0, Lcom/android/server/audio/AudioService;->mForcedUseForComm:I

    if-ne v0, v7, :cond_3

    iput v4, p0, Lcom/android/server/audio/AudioService;->mForcedUseForComm:I

    goto :goto_1
.end method

.method public setStreamVolume(IIILjava/lang/String;)V
    .locals 7

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v6

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    move-object v5, p4

    invoke-direct/range {v0 .. v6}, Lcom/android/server/audio/AudioService;->setStreamVolume(IIILjava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method public setStreamVolumeForDevice(IIILjava/lang/String;I)V
    .locals 8

    sget-boolean v0, Lcom/android/server/audio/AudioService;->MULTISOUND_ENABLED:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    if-ne p5, v0, :cond_0

    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lcom/android/server/audio/AudioService;->checkDeviceConnected(I)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 p5, 0x4

    :cond_0
    :goto_0
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v6

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    move-object v5, p4

    move v7, p5

    invoke-direct/range {v0 .. v7}, Lcom/android/server/audio/AudioService;->setStreamVolume(IIILjava/lang/String;Ljava/lang/String;II)V

    return-void

    :cond_1
    const/16 v0, 0x8

    invoke-direct {p0, v0}, Lcom/android/server/audio/AudioService;->checkDeviceConnected(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 p5, 0x8

    goto :goto_0
.end method

.method public setTogether(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/audio/AudioService;->mIsTogether:Z

    return-void
.end method

.method public setVibrateSetting(II)V
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/audio/AudioService;->mHasVibrator:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget v0, p0, Lcom/android/server/audio/AudioService;->mVibrateSetting:I

    invoke-static {v0, p1, p2}, Landroid/media/AudioSystem;->getValueForVibrateSetting(III)I

    move-result v0

    iput v0, p0, Lcom/android/server/audio/AudioService;->mVibrateSetting:I

    invoke-direct {p0, p1}, Lcom/android/server/audio/AudioService;->broadcastVibrateSetting(I)V

    return-void
.end method

.method public setVolumeController(Landroid/media/IVolumeController;)V
    .locals 4

    const-string/jumbo v1, "set the volume controller"

    invoke-direct {p0, v1}, Lcom/android/server/audio/AudioService;->enforceVolumeController(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/audio/AudioService;->mVolumeController:Lcom/android/server/audio/AudioService$VolumeController;

    invoke-virtual {v1, p1}, Lcom/android/server/audio/AudioService$VolumeController;->isSameBinder(Landroid/media/IVolumeController;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lcom/android/server/audio/AudioService;->mVolumeController:Lcom/android/server/audio/AudioService$VolumeController;

    invoke-virtual {v1}, Lcom/android/server/audio/AudioService$VolumeController;->postDismiss()V

    if-eqz p1, :cond_1

    :try_start_0
    invoke-interface {p1}, Landroid/media/IVolumeController;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    new-instance v2, Lcom/android/server/audio/AudioService$8;

    invoke-direct {v2, p0, p1}, Lcom/android/server/audio/AudioService$8;-><init>(Lcom/android/server/audio/AudioService;Landroid/media/IVolumeController;)V

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/android/server/audio/AudioService;->mVolumeController:Lcom/android/server/audio/AudioService$VolumeController;

    invoke-virtual {v1, p1}, Lcom/android/server/audio/AudioService$VolumeController;->setController(Landroid/media/IVolumeController;)V

    sget-boolean v1, Lcom/android/server/audio/AudioService;->DEBUG_VOL:Z

    if-eqz v1, :cond_2

    const-string/jumbo v1, "AudioService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Volume controller: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/audio/AudioService;->mVolumeController:Lcom/android/server/audio/AudioService$VolumeController;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public setVolumePolicy(Landroid/media/VolumePolicy;)V
    .locals 3

    const-string/jumbo v0, "set volume policy"

    invoke-direct {p0, v0}, Lcom/android/server/audio/AudioService;->enforceVolumeController(Ljava/lang/String;)V

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mVolumePolicy:Landroid/media/VolumePolicy;

    invoke-virtual {p1, v0}, Landroid/media/VolumePolicy;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iput-object p1, p0, Lcom/android/server/audio/AudioService;->mVolumePolicy:Landroid/media/VolumePolicy;

    sget-boolean v0, Lcom/android/server/audio/AudioService;->DEBUG_VOL:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "AudioService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Volume policy changed: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/audio/AudioService;->mVolumePolicy:Landroid/media/VolumePolicy;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public setWiredDeviceConnectionState(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 10

    iget-object v8, p0, Lcom/android/server/audio/AudioService;->mConnectedDevices:Landroid/util/ArrayMap;

    monitor-enter v8

    :try_start_0
    sget-boolean v0, Lcom/android/server/audio/AudioService;->DEBUG_DEVICES:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "AudioService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setWiredDeviceConnectionState("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " nm: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " addr:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    if-eqz p2, :cond_2

    const/4 v0, 0x4

    if-eq p1, v0, :cond_1

    const/16 v0, 0x8

    if-ne p1, v0, :cond_3

    :cond_1
    :goto_0
    invoke-direct {p0}, Lcom/android/server/audio/AudioService;->isRestrictionHeadphone()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-direct {p0, p1}, Lcom/android/server/audio/AudioService;->checkDeviceConnected(I)Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 p2, 0x0

    :cond_2
    invoke-direct {p0, p1, p2}, Lcom/android/server/audio/AudioService;->checkSendBecomingNoisyIntent(II)I

    move-result v7

    iget-object v9, p0, Lcom/android/server/audio/AudioService;->mAudioHandler:Lcom/android/server/audio/AudioService$AudioHandler;

    new-instance v0, Lcom/android/server/audio/AudioService$WiredDeviceConnectionState;

    move-object v1, p0

    move v2, p1

    move v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/android/server/audio/AudioService$WiredDeviceConnectionState;-><init>(Lcom/android/server/audio/AudioService;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/16 v3, 0x64

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, p0

    move-object v2, v9

    move-object v6, v0

    invoke-direct/range {v1 .. v7}, Lcom/android/server/audio/AudioService;->queueMsgUnderWakeLock(Landroid/os/Handler;IIILjava/lang/Object;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v8

    return-void

    :cond_3
    const v0, -0x7ffffff0

    if-ne p1, v0, :cond_2

    goto :goto_0

    :cond_4
    monitor-exit v8

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v8

    throw v0
.end method

.method public shouldVibrate(I)Z
    .locals 3

    const/4 v0, 0x1

    const/4 v1, 0x0

    iget-boolean v2, p0, Lcom/android/server/audio/AudioService;->mHasVibrator:Z

    if-nez v2, :cond_0

    return v1

    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/server/audio/AudioService;->getVibrateSetting(I)I

    move-result v2

    packed-switch v2, :pswitch_data_0

    return v1

    :pswitch_0
    invoke-virtual {p0}, Lcom/android/server/audio/AudioService;->getRingerModeExternal()I

    move-result v2

    if-eqz v2, :cond_1

    :goto_0
    return v0

    :cond_1
    move v0, v1

    goto :goto_0

    :pswitch_1
    invoke-virtual {p0}, Lcom/android/server/audio/AudioService;->getRingerModeExternal()I

    move-result v2

    if-ne v2, v0, :cond_2

    :goto_1
    return v0

    :cond_2
    move v0, v1

    goto :goto_1

    :pswitch_2
    return v1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public showMultisoundToast()V
    .locals 4

    const v3, 0x10408f8

    iget-object v1, p0, Lcom/android/server/audio/AudioService;->multiSoundToast:Landroid/widget/Toast;

    if-nez v1, :cond_0

    new-instance v0, Landroid/view/ContextThemeWrapper;

    iget-object v1, p0, Lcom/android/server/audio/AudioService;->mContext:Landroid/content/Context;

    const v2, 0x103012b

    invoke-direct {v0, v1, v2}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    iget-object v1, p0, Lcom/android/server/audio/AudioService;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/audio/AudioService;->multiSoundToast:Landroid/widget/Toast;

    :goto_0
    iget-object v1, p0, Lcom/android/server/audio/AudioService;->multiSoundToast:Landroid/widget/Toast;

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    return-void

    :cond_0
    iget-object v1, p0, Lcom/android/server/audio/AudioService;->multiSoundToast:Landroid/widget/Toast;

    iget-object v2, p0, Lcom/android/server/audio/AudioService;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/Toast;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public showNotification(ZI)V
    .locals 12

    invoke-virtual {p0}, Lcom/android/server/audio/AudioService;->clearNotification()V

    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v6, "android.intent.action.Launch_Setting"

    invoke-direct {v1, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v6, p0, Lcom/android/server/audio/AudioService;->mContext:Landroid/content/Context;

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-static {v6, v7, v1, v8}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    new-instance v5, Landroid/content/Intent;

    const-string/jumbo v6, "android.intent.action.TurnOff_MultiSound"

    invoke-direct {v5, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v6, p0, Lcom/android/server/audio/AudioService;->mContext:Landroid/content/Context;

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-static {v6, v7, v5, v8}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v3

    new-instance v0, Landroid/app/Notification$Builder;

    iget-object v6, p0, Lcom/android/server/audio/AudioService;->mContext:Landroid/content/Context;

    invoke-direct {v0, v6}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    const/4 v6, 0x2

    if-ne p2, v6, :cond_0

    iget-object v6, p0, Lcom/android/server/audio/AudioService;->mContext:Landroid/content/Context;

    const v7, 0x10408f9

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    :goto_0
    if-eqz p1, :cond_2

    invoke-virtual {p0, p2}, Lcom/android/server/audio/AudioService;->getPinAppInfo(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v6

    new-instance v7, Landroid/app/Notification$BigTextStyle;

    invoke-direct {v7}, Landroid/app/Notification$BigTextStyle;-><init>()V

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v9, p0, Lcom/android/server/audio/AudioService;->mContext:Landroid/content/Context;

    const v10, 0x10408f5

    invoke-virtual {v9, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, " "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {p0, p2}, Lcom/android/server/audio/AudioService;->getPinAppInfo(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, " "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/android/server/audio/AudioService;->mContext:Landroid/content/Context;

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    aput-object v4, v10, v11

    const v11, 0x10408f7

    invoke-virtual {v9, v11, v10}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/app/Notification$BigTextStyle;->bigText(Ljava/lang/CharSequence;)Landroid/app/Notification$BigTextStyle;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/app/Notification$Builder;->setStyle(Landroid/app/Notification$Style;)Landroid/app/Notification$Builder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/server/audio/AudioService;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x10408f3

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v7

    const v8, 0x1080078

    invoke-virtual {v6, v8, v7, v2}, Landroid/app/Notification$Builder;->addAction(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    :goto_1
    const v6, 0x1080078

    invoke-virtual {v0, v6}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/server/audio/AudioService;->mContext:Landroid/content/Context;

    const v8, 0x10408f5

    invoke-virtual {v7, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/app/Notification$Builder;->setAutoCancel(Z)Landroid/app/Notification$Builder;

    move-result-object v6

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Landroid/app/Notification$Builder;->setOngoing(Z)Landroid/app/Notification$Builder;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/app/Notification$Builder;->setVibrate([J)Landroid/app/Notification$Builder;

    move-result-object v6

    invoke-virtual {v6, v3}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/server/audio/AudioService;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x10408f4

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v7

    const v8, 0x1080078

    invoke-virtual {v6, v8, v7, v3}, Landroid/app/Notification$Builder;->addAction(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    iget-object v6, p0, Lcom/android/server/audio/AudioService;->mNm:Landroid/app/NotificationManager;

    invoke-virtual {v0}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v7

    const/16 v8, 0x3ec

    invoke-virtual {v6, v8, v7}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    return-void

    :cond_0
    const/16 v6, 0x80

    if-ne p2, v6, :cond_1

    iget-object v6, p0, Lcom/android/server/audio/AudioService;->mContext:Landroid/content/Context;

    const v7, 0x10408fb

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_0

    :cond_1
    iget-object v6, p0, Lcom/android/server/audio/AudioService;->mContext:Landroid/content/Context;

    const v7, 0x10408fa

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_0

    :cond_2
    iget-object v6, p0, Lcom/android/server/audio/AudioService;->mContext:Landroid/content/Context;

    const v7, 0x10408f6

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    goto :goto_1
.end method

.method public startBluetoothSco(Landroid/os/IBinder;I)V
    .locals 2

    const/16 v1, 0x12

    if-ge p2, v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0, p1, v0}, Lcom/android/server/audio/AudioService;->startBluetoothScoInt(Landroid/os/IBinder;I)V

    return-void

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method startBluetoothScoInt(Landroid/os/IBinder;I)V
    .locals 4

    const-string/jumbo v1, "startBluetoothSco()"

    invoke-virtual {p0, v1}, Lcom/android/server/audio/AudioService;->checkAudioSettingsPermission(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/android/server/audio/AudioService;->mSystemReady:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    invoke-direct {p0, p1, v1}, Lcom/android/server/audio/AudioService;->getScoClient(Landroid/os/IBinder;Z)Lcom/android/server/audio/AudioService$ScoClient;

    move-result-object v0

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    invoke-virtual {v0, p2}, Lcom/android/server/audio/AudioService$ScoClient;->incCount(I)V

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :cond_0
    return-void
.end method

.method public startBluetoothScoVirtualCall(Landroid/os/IBinder;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/server/audio/AudioService;->startBluetoothScoInt(Landroid/os/IBinder;I)V

    return-void
.end method

.method public startWatchingRoutes(Landroid/media/IAudioRoutesObserver;)Landroid/media/AudioRoutesInfo;
    .locals 3

    iget-object v2, p0, Lcom/android/server/audio/AudioService;->mCurAudioRoutes:Landroid/media/AudioRoutesInfo;

    monitor-enter v2

    :try_start_0
    new-instance v0, Landroid/media/AudioRoutesInfo;

    iget-object v1, p0, Lcom/android/server/audio/AudioService;->mCurAudioRoutes:Landroid/media/AudioRoutesInfo;

    invoke-direct {v0, v1}, Landroid/media/AudioRoutesInfo;-><init>(Landroid/media/AudioRoutesInfo;)V

    iget-object v1, p0, Lcom/android/server/audio/AudioService;->mRoutesObservers:Landroid/os/RemoteCallbackList;

    invoke-virtual {v1, p1}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v2

    return-object v0

    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public stopBluetoothSco(Landroid/os/IBinder;)V
    .locals 4

    const-string/jumbo v1, "stopBluetoothSco()"

    invoke-virtual {p0, v1}, Lcom/android/server/audio/AudioService;->checkAudioSettingsPermission(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lcom/android/server/audio/AudioService;->mSystemReady:Z

    if-eqz v1, :cond_1

    const/4 v1, 0x0

    invoke-direct {p0, p1, v1}, Lcom/android/server/audio/AudioService;->getScoClient(Landroid/os/IBinder;Z)Lcom/android/server/audio/AudioService$ScoClient;

    move-result-object v0

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/server/audio/AudioService$ScoClient;->decCount()V

    :cond_0
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :cond_1
    return-void
.end method

.method public systemReady()V
    .locals 7

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mAudioHandler:Lcom/android/server/audio/AudioService$AudioHandler;

    const/16 v1, 0x15

    const/4 v2, 0x2

    const/4 v5, 0x0

    move v4, v3

    move v6, v3

    invoke-static/range {v0 .. v6}, Lcom/android/server/audio/AudioService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    return-void
.end method

.method public unloadSoundEffects()V
    .locals 7

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mAudioHandler:Lcom/android/server/audio/AudioService$AudioHandler;

    const/16 v1, 0x14

    const/4 v2, 0x2

    const/4 v5, 0x0

    move v4, v3

    move v6, v3

    invoke-static/range {v0 .. v6}, Lcom/android/server/audio/AudioService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    return-void
.end method

.method public unregisterAudioFocusClient(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mMediaFocusControl:Lcom/android/server/audio/MediaFocusControl;

    invoke-virtual {v0, p1}, Lcom/android/server/audio/MediaFocusControl;->unregisterAudioFocusClient(Ljava/lang/String;)V

    return-void
.end method

.method public unregisterAudioPolicyAsync(Landroid/media/audiopolicy/IAudioPolicyCallback;)V
    .locals 5

    sget-boolean v1, Lcom/android/server/audio/AudioService;->DEBUG_AP:Z

    if-eqz v1, :cond_0

    const-string/jumbo v1, "AudioService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "unregisterAudioPolicyAsync for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {p1}, Landroid/media/audiopolicy/IAudioPolicyCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v2, p0, Lcom/android/server/audio/AudioService;->mAudioPolicies:Ljava/util/HashMap;

    monitor-enter v2

    :try_start_0
    iget-object v1, p0, Lcom/android/server/audio/AudioService;->mAudioPolicies:Ljava/util/HashMap;

    invoke-interface {p1}, Landroid/media/audiopolicy/IAudioPolicyCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/audio/AudioService$AudioPolicyProxy;

    if-nez v0, :cond_1

    const-string/jumbo v1, "AudioService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Trying to unregister unknown audio policy for pid "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " / uid "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v2

    return-void

    :cond_1
    :try_start_1
    invoke-interface {p1}, Landroid/media/audiopolicy/IAudioPolicyCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    const/4 v3, 0x0

    invoke-interface {v1, v0, v3}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    invoke-virtual {v0}, Lcom/android/server/audio/AudioService$AudioPolicyProxy;->release()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v2

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public unregisterRecordingCallback(Landroid/media/IRecordingConfigDispatcher;)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mRecordMonitor:Lcom/android/server/audio/RecordingActivityMonitor;

    invoke-virtual {v0, p1}, Lcom/android/server/audio/RecordingActivityMonitor;->unregisterRecordingCallback(Landroid/media/IRecordingConfigDispatcher;)V

    return-void
.end method
