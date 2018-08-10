.class Lcom/android/server/audio/AudioService$SecGlobalVariable;
.super Ljava/lang/Object;
.source "AudioService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/audio/AudioService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SecGlobalVariable"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/audio/AudioService$SecGlobalVariable$1;
    }
.end annotation


# static fields
.field private static final ENCRYPTED_ALL_SOUND_MUTE:I = 0x1

.field private static final ENCRYPTED_RINGER_SILENT_MODE:I = 0x10

.field private static final ENCRYPTED_SYSTEM_VOLUME_MUTE:I = 0x100

.field private static final FLAG_ERROR:I = 0x8000

.field private static final FLAG_STREAM_ACCESSIBILITY:I = 0x400

.field private static final FLAG_STREAM_ALARM:I = 0x10

.field private static final FLAG_STREAM_BLUETOOTH_SCO:I = 0x40

.field private static final FLAG_STREAM_DTMF:I = 0x100

.field private static final FLAG_STREAM_FM_RADIO:I = 0x800

.field private static final FLAG_STREAM_MUSIC:I = 0x8

.field private static final FLAG_STREAM_NOTIFICATION:I = 0x20

.field private static final FLAG_STREAM_RING:I = 0x4

.field private static final FLAG_STREAM_SEC_VOICE_COMMUNICATION:I = 0x2000

.field private static final FLAG_STREAM_SYSTEM:I = 0x2

.field private static final FLAG_STREAM_SYSTEM_ENFORCED:I = 0x80

.field private static final FLAG_STREAM_TTS:I = 0x200

.field private static final FLAG_STREAM_VIDEO_CALL:I = 0x1000

.field private static final FLAG_STREAM_VOICENOTE:I = 0x4000

.field private static final FLAG_STREAM_VOICE_CALL:I = 0x1

.field private static final NOTIFICATION_CHANNEL_ID:Ljava/lang/String; = "AudioCore_Notification"

.field private static final SAMSUNGCONNECT_PACKAGE:Ljava/lang/String; = "com.samsung.android.oneconnect"


# instance fields
.field public final ACTING_AUDIOCORE_BIGDATA_APP:Ljava/lang/String;

.field public final ACTING_AUDIOCORE_LOGGING:Ljava/lang/String;

.field public final ACTING_CHECKING_MUTE_INTERVAL:Ljava/lang/String;

.field private final ACTION_DLNA_STATUS:Ljava/lang/String;

.field private final ACTION_EFFECT_POLICY:Ljava/lang/String;

.field public final ACTION_HEADUP_NOTIFICATION_CHANGE_DEVICE:Ljava/lang/String;

.field public final ACTION_HEADUP_NOTIFICATION_CLOSE:Ljava/lang/String;

.field public final ACTION_LAUNCH_SETTING:Ljava/lang/String;

.field public final ACTION_MULTISOUND_STATE_CHANGE:Ljava/lang/String;

.field public final ACTION_NOTIFICATION_CLOSE:Ljava/lang/String;

.field public final ACTION_SAFE_MEDIA_VOLUME_ACTIVE:Ljava/lang/String;

.field private final ACTION_SOUND_OFF_TOAST:Ljava/lang/String;

.field public final ACTION_TURN_OFF_MULTISOUND:Ljava/lang/String;

.field private BIGDATA_ITEM:[[Ljava/lang/String;

.field private final COUNT_MODEON:I

.field private final COUNT_SETVOLUME:I

.field private final ConfigVolumeKey:Ljava/lang/String;

.field private final DOCK_DEVICE_NAME:[Ljava/lang/String;

.field private final DVFS_CPU_BOOST_ACTION_TYPE_ALL:I

.field private final DVFS_CPU_BOOST_ACTION_TYPE_EFFECT:I

.field private final DVFS_CPU_BOOST_ACTION_TYPE_OFF:I

.field private final DVFS_CPU_BOOST_ACTION_TYPE_VOIP:I

.field private final DVFS_CPU_BOOST_MAX_TIME:I

.field private final DVFS_CPU_BOOST_RETRY_DELAY_MS:I

.field private final DVFS_CPU_BOOST_RETRY_HALF_DELAY_MS:I

.field private final DVFS_CPU_BOOST_RETRY_MAX_CNT:I

.field private final DVFS_CPU_BOOST_SHORT_RETRY_DELAY_MS:I

.field private final DVFS_SOUNDALIVE_PACKAGE_NAME:Ljava/lang/String;

.field private final EARJACK_COUNT_PATH:Ljava/lang/String;

.field private final FINE_VOLUME_ENABLED:Z

.field private final FINE_VOLUME_OFFSET:I

.field private final FOLDER_OPENED:Ljava/lang/String;

.field public final ID_MULTISOUND_HEADUP_NOTIFICATION:I

.field public final ID_MULTISOUND_NOTIFICATION:I

.field private final LIMITER_MAXIMUM_LEVEL:I

.field private final LOGGING_TYPE_SIZE:I

.field private final LPM_ENABLED:Z

.field private final MAX_STREAM_VOLUME2:[I

.field private final MAX_STREAM_VOLUME_DOUBLE:[I

.field private final MS_PER_HOUR:I

.field private final MULTISOUND_ENABLED:Z

.field public final MULTISOUND_STATE:Ljava/lang/String;

.field private final PHONE_PACKAGE_NAME:Ljava/lang/String;

.field private final PSEUDO_DUAL_SPEAKER_ENABLED:Z

.field private final SETTING_ADAPTSOUND_CHECKED:Ljava/lang/String;

.field private final SETTING_ALL_SOUND_OFF:Ljava/lang/String;

.field private final SETTING_BOOSTMODE_ENTERTAINMENT:I

.field private final SETTING_BOOSTMODE_UPSCALER_VALUE:Ljava/lang/String;

.field private final SETTING_BOOSTMODE_VALUE:Ljava/lang/String;

.field private final SETTING_MONO_AUDIO:Ljava/lang/String;

.field private final SETTING_PACKAGE_NAME:Ljava/lang/String;

.field private final SETTING_SOUNDALIVE_CHECKED:Ljava/lang/String;

.field private final SETTING_SOUND_BALANCE:Ljava/lang/String;

.field private final SETTING_TUBEAMP_CHECKED:Ljava/lang/String;

.field private final SETTING_UPSCALER_CHECKED:Ljava/lang/String;

.field private final SETTING_UPSCALER_FROM_USER:Ljava/lang/String;

.field private final SMART_DOCK_CONNECTED:Ljava/lang/String;

.field private final SOUNDASSISTANT_PACKAGE:Ljava/lang/String;

.field private SOUND_EFFECTS_PATH_THEME:Ljava/lang/String;

.field private final STREAM_MULTI_SOUND:I

.field private final SUPPORT_BOOST_MODE:Z

.field private final SUPPORT_HQM:Z

.field private final TMS_ACTION_TYPE_START:I

.field private final TMS_ACTION_TYPE_STOP:I

.field private final UHQ_ENABLED:Z

.field private final VOICENOTE_PACKAGE_NAME:Ljava/lang/String;

.field private allSoundMuteToast:Landroid/widget/Toast;

.field private changeRecVolCnt:I

.field private defaultPreset:Lcom/android/server/audio/AudioService$RampInPreset;

.field private dualspkPreset:Lcom/android/server/audio/AudioService$RampInPreset;

.field private emergencyManager:Lcom/samsung/android/emergencymode/SemEmergencyManager;

.field private indexOfsetVolume:[I

.field private m1stBTAddr:Ljava/lang/String;

.field private m2ndBTAddr:Ljava/lang/String;

.field private mActivityManager:Landroid/app/ActivityManager;

.field private mAdjustMediaVolumeOnly:Z

.field mAlarmManager:Landroid/app/AlarmManager;

.field private mAllSoundMute:I

.field private mAppVolumeFromSoundAssistant:Landroid/util/SparseIntArray;

.field private mBTAddress:Ljava/lang/String;

.field private mBluetoothA2dpOndump:[I

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

.field private mCategorizer:Lcom/android/server/audio/AudioService$AppCategorizer;

.field mConnectedBTList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mCoverManager:Lcom/samsung/android/cover/CoverManager;

.field private mCurRCVBackOffState:Z

.field private mDesktopModeManager:Lcom/samsung/android/desktopmode/SemDesktopModeManager;

.field private mDexConnectedState:Z

.field private mDexPadConnectedState:Z

.field private mDexState:Z

.field mDisplayManager:Landroid/hardware/display/DisplayManager;

.field private mDualSpkEnable:I

.field private mEnableSoundAssistant:Z

.field mEventReceivers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/audio/AudioService$SoundEventReceiver;",
            ">;"
        }
    .end annotation
.end field

.field private mExternalUsbInfo:Ljava/lang/String;

.field private mFakeState:Z

.field private mFineMediaVolume:Lcom/android/server/audio/AudioService$FineVolumeState;

.field private mFlatMotionChangedDuringRingtone:Z

.field private mForceControlStreamPid:I

.field private mForceControlStreamUid:I

.field private mForceSpeaker:I

.field private mForcedUseForFMRadio:I

.field private mForcedUseForMedia:I

.field private mForegroundUid:I

.field private mGameManagerService:Lcom/samsung/android/game/IGameManagerService;

.field public mHMTDocked:Z

.field private mHallSensorType:S

.field private mHeadsetOnlyStream:I

.field protected mIgnoreAudioFocusUid:I

.field private mIsBigdataApp:Z

.field private mIsBtOffloadEnabled:I

.field private mIsCoverSafetyVolume:Z

.field private mIsDLNAStatus:Z

.field private mIsDefaultStreamNotification:Z

.field private mIsEarCareSettingOn:Z

.field public mIsExceptionalDevice:Z

.field private mIsExternalRingerMode:[Z

.field private mIsFactoryMode:Z

.field private mIsFactorySim:Z

.field private mIsFolderOpen:Z

.field private mIsHWVolumeControlEnable:Z

.field private mIsMediaVolumeBackup:Z

.field private mIsMicMute:Z

.field private mIsPlaySilentModeOff:Z

.field private mIsScreenOffMusicOn:I

.field public mIsScreenState:Z

.field private mIsSupportDisplayVolumeControl:Z

.field private mIsTalkBackEnabled:Z

.field private mIsTogether:Z

.field private mIsVibrate:Z

.field private mKeyguardManager:Landroid/app/KeyguardManager;

.field private mLRSwitching:I

.field private mLastBluetoothA2dpDisconnectionTime:J

.field private mLastConnectedDevice:Lcom/android/server/audio/AudioService$DeviceListSpec;

.field private mLateBootCompleted_WiredDevice:I

.field private final mLateBootCompleted_WiredDeviceName_real:Ljava/lang/String;

.field private final mLateBootCompleted_WiredDeviceName_temporary:Ljava/lang/String;

.field private mMediaLastAudibleIndex:I

.field private mMediaSessionService:Lcom/android/server/media/MediaSessionService$MediaSessionServiceInternal;

.field private mMediaSilentMode:Z

.field private mMediaVolumeBackup:[I

.field private mMediaVolumeStepIndex:I

.field private mMicMuteCallingTimedump:[Ljava/lang/String;

.field private mMicMutedump:[I

.field private mModeHisList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/audio/AudioService$AudioModeDump;",
            ">;"
        }
    .end annotation
.end field

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

.field private mMonoMode:I

.field private mMuteIntervalMs:I

.field private mMySoundEnabled:I

.field private mNaturalSound:I

.field private mNbQualityMode:I

.field private mOldIsSmartdock:Z

.field private mPackageManager:Landroid/content/pm/PackageManager;

.field private mPendingFineVolumeCommand:Lcom/android/server/audio/AudioService$StreamVolumeCommand;

.field private mPrevRingerMode:I

.field private final mProcessObserver:Landroid/app/IProcessObserver;

.field private mSContextManager:Landroid/hardware/scontext/SContextManager;

.field private final mSafeMediaVolumeDevicesForA2DP:I

.field private final mSafeMediaVolumeStateLock:Ljava/lang/Object;

.field private mScreenSharingStateResumed:Z

.field private mSelfiestickIsConnected:Z

.field private mSemDeviceStatusListener:Landroid/hardware/display/SemDeviceStatusListener;

.field private mSemHqmManager:Landroid/os/SemHqmManager;

.field private mSensorThread:Lcom/android/server/audio/AudioService$SensorThread;

.field private mSetModeOndump:I

.field private mSetModeTime:Ljava/lang/String;

.field private mSettingDBHelper:Lcom/android/server/audio/AudioService$AudioSettingsDBHelper;

.field private mSilentModeOff:Z

.field private mSoundAliveEnabled:I

.field private mSoundBalance:I

.field private mSoundKitchen:Lcom/android/server/audio/AudioService$SoundKitchen;

.field private mSpeakerOndump:[I

.field public mSplitSound:Z

.field private mStatusbarExpanded:Z

.field private mStreamMutePackagedump:[Ljava/lang/String;

.field private mStreamMutedump:[I

.field private mStreamToggleMutePackagedump:[Ljava/lang/String;

.field private mStreamToggleMutedump:[I

.field private mStreamUnMutePackagedump:[Ljava/lang/String;

.field private mStreamUnMutedump:[I

.field private mTubeAmpEnabled:I

.field private mUSBDetected:Z

.field private mUhqBtSampleRate:I

.field private mUpscalerEnabled:I

.field private mVibrator:Landroid/os/SystemVibrator;

.field private mVoiceAssistant:Z

.field private mVolumeControllerStream:I

.field private mVolumeLimitValue:I

.field private mVolumeMap:[Lcom/android/server/audio/AudioService$VolumeMap;

.field private mVolumeSteps:[I

.field private mZenMode:I

.field private mbVolumeLimitOn:Z

.field private multiSoundToast:Landroid/widget/Toast;

.field private pIdOfadjustVolume:[I

.field private pIdOfadjustVolumeIndex:[I

.field private pIdOfsetVolume:[[I

.field private pIdOfsetVolumeIndex:[[I

.field public final primaryDevice:I

.field private final reconnectDelay:I

.field private semDvfsCpuMin:Lcom/samsung/android/os/SemDvfsManager;

.field private semLowPowerMode:Lcom/samsung/android/os/SemDvfsManager;

.field final synthetic this$0:Lcom/android/server/audio/AudioService;

.field private uIdOfadjustVolume:[I

.field private uIdOfsetVolume:[[I

.field private final volumeDownToSilent:Z


# direct methods
.method static synthetic -get0(Lcom/android/server/audio/AudioService$SecGlobalVariable;)[Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/server/audio/AudioService$SecGlobalVariable;->DOCK_DEVICE_NAME:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/server/audio/AudioService$SecGlobalVariable;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/audio/AudioService$SecGlobalVariable;->LPM_ENABLED:Z

    return v0
.end method

.method static synthetic -get10(Lcom/android/server/audio/AudioService$SecGlobalVariable;)Lcom/samsung/android/emergencymode/SemEmergencyManager;
    .locals 1

    iget-object v0, p0, Lcom/android/server/audio/AudioService$SecGlobalVariable;->emergencyManager:Lcom/samsung/android/emergencymode/SemEmergencyManager;

    return-object v0
.end method

.method static synthetic -get100(Lcom/android/server/audio/AudioService$SecGlobalVariable;)I
    .locals 1

    iget v0, p0, Lcom/android/server/audio/AudioService$SecGlobalVariable;->mSoundAliveEnabled:I

    return v0
.end method

.method static synthetic -get101(Lcom/android/server/audio/AudioService$SecGlobalVariable;)I
    .locals 1

    iget v0, p0, Lcom/android/server/audio/AudioService$SecGlobalVariable;->mSoundBalance:I

    return v0
.end method

.method static synthetic -get102(Lcom/android/server/audio/AudioService$SecGlobalVariable;)Lcom/android/server/audio/AudioService$SoundKitchen;
    .locals 1

    iget-object v0, p0, Lcom/android/server/audio/AudioService$SecGlobalVariable;->mSoundKitchen:Lcom/android/server/audio/AudioService$SoundKitchen;

    return-object v0
.end method

.method static synthetic -get103(Lcom/android/server/audio/AudioService$SecGlobalVariable;)[I
    .locals 1

    iget-object v0, p0, Lcom/android/server/audio/AudioService$SecGlobalVariable;->mSpeakerOndump:[I

    return-object v0
.end method

.method static synthetic -get104(Lcom/android/server/audio/AudioService$SecGlobalVariable;)[Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/server/audio/AudioService$SecGlobalVariable;->mStreamMutePackagedump:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get105(Lcom/android/server/audio/AudioService$SecGlobalVariable;)[I
    .locals 1

    iget-object v0, p0, Lcom/android/server/audio/AudioService$SecGlobalVariable;->mStreamMutedump:[I

    return-object v0
.end method

.method static synthetic -get106(Lcom/android/server/audio/AudioService$SecGlobalVariable;)[Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/server/audio/AudioService$SecGlobalVariable;->mStreamToggleMutePackagedump:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get107(Lcom/android/server/audio/AudioService$SecGlobalVariable;)[I
    .locals 1

    iget-object v0, p0, Lcom/android/server/audio/AudioService$SecGlobalVariable;->mStreamToggleMutedump:[I

    return-object v0
.end method

.method static synthetic -get108(Lcom/android/server/audio/AudioService$SecGlobalVariable;)[Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/server/audio/AudioService$SecGlobalVariable;->mStreamUnMutePackagedump:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get109(Lcom/android/server/audio/AudioService$SecGlobalVariable;)[I
    .locals 1

    iget-object v0, p0, Lcom/android/server/audio/AudioService$SecGlobalVariable;->mStreamUnMutedump:[I

    return-object v0
.end method

.method static synthetic -get11(Lcom/android/server/audio/AudioService$SecGlobalVariable;)[I
    .locals 1

    iget-object v0, p0, Lcom/android/server/audio/AudioService$SecGlobalVariable;->indexOfsetVolume:[I

    return-object v0
.end method

.method static synthetic -get110(Lcom/android/server/audio/AudioService$SecGlobalVariable;)I
    .locals 1

    iget v0, p0, Lcom/android/server/audio/AudioService$SecGlobalVariable;->mTubeAmpEnabled:I

    return v0
.end method

.method static synthetic -get111(Lcom/android/server/audio/AudioService$SecGlobalVariable;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/audio/AudioService$SecGlobalVariable;->mUSBDetected:Z

    return v0
.end method

.method static synthetic -get112(Lcom/android/server/audio/AudioService$SecGlobalVariable;)I
    .locals 1

    iget v0, p0, Lcom/android/server/audio/AudioService$SecGlobalVariable;->mUhqBtSampleRate:I

    return v0
.end method

.method static synthetic -get113(Lcom/android/server/audio/AudioService$SecGlobalVariable;)I
    .locals 1

    iget v0, p0, Lcom/android/server/audio/AudioService$SecGlobalVariable;->mUpscalerEnabled:I

    return v0
.end method

.method static synthetic -get114(Lcom/android/server/audio/AudioService$SecGlobalVariable;)Landroid/os/SystemVibrator;
    .locals 1

    iget-object v0, p0, Lcom/android/server/audio/AudioService$SecGlobalVariable;->mVibrator:Landroid/os/SystemVibrator;

    return-object v0
.end method

.method static synthetic -get115(Lcom/android/server/audio/AudioService$SecGlobalVariable;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/audio/AudioService$SecGlobalVariable;->mVoiceAssistant:Z

    return v0
.end method

.method static synthetic -get116(Lcom/android/server/audio/AudioService$SecGlobalVariable;)I
    .locals 1

    iget v0, p0, Lcom/android/server/audio/AudioService$SecGlobalVariable;->mVolumeControllerStream:I

    return v0
.end method

.method static synthetic -get117(Lcom/android/server/audio/AudioService$SecGlobalVariable;)I
    .locals 1

    iget v0, p0, Lcom/android/server/audio/AudioService$SecGlobalVariable;->mVolumeLimitValue:I

    return v0
.end method

.method static synthetic -get118(Lcom/android/server/audio/AudioService$SecGlobalVariable;)[Lcom/android/server/audio/AudioService$VolumeMap;
    .locals 1

    iget-object v0, p0, Lcom/android/server/audio/AudioService$SecGlobalVariable;->mVolumeMap:[Lcom/android/server/audio/AudioService$VolumeMap;

    return-object v0
.end method

.method static synthetic -get119(Lcom/android/server/audio/AudioService$SecGlobalVariable;)[I
    .locals 1

    iget-object v0, p0, Lcom/android/server/audio/AudioService$SecGlobalVariable;->mVolumeSteps:[I

    return-object v0
.end method

.method static synthetic -get12(Lcom/android/server/audio/AudioService$SecGlobalVariable;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/server/audio/AudioService$SecGlobalVariable;->m1stBTAddr:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get120(Lcom/android/server/audio/AudioService$SecGlobalVariable;)I
    .locals 1

    iget v0, p0, Lcom/android/server/audio/AudioService$SecGlobalVariable;->mZenMode:I

    return v0
.end method

.method static synthetic -get121(Lcom/android/server/audio/AudioService$SecGlobalVariable;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/audio/AudioService$SecGlobalVariable;->mbVolumeLimitOn:Z

    return v0
.end method

.method static synthetic -get122(Lcom/android/server/audio/AudioService$SecGlobalVariable;)Landroid/widget/Toast;
    .locals 1

    iget-object v0, p0, Lcom/android/server/audio/AudioService$SecGlobalVariable;->multiSoundToast:Landroid/widget/Toast;

    return-object v0
.end method

.method static synthetic -get123(Lcom/android/server/audio/AudioService$SecGlobalVariable;)[I
    .locals 1

    iget-object v0, p0, Lcom/android/server/audio/AudioService$SecGlobalVariable;->pIdOfadjustVolume:[I

    return-object v0
.end method

.method static synthetic -get124(Lcom/android/server/audio/AudioService$SecGlobalVariable;)[I
    .locals 1

    iget-object v0, p0, Lcom/android/server/audio/AudioService$SecGlobalVariable;->pIdOfadjustVolumeIndex:[I

    return-object v0
.end method

.method static synthetic -get125(Lcom/android/server/audio/AudioService$SecGlobalVariable;)[[I
    .locals 1

    iget-object v0, p0, Lcom/android/server/audio/AudioService$SecGlobalVariable;->pIdOfsetVolume:[[I

    return-object v0
.end method

.method static synthetic -get126(Lcom/android/server/audio/AudioService$SecGlobalVariable;)[[I
    .locals 1

    iget-object v0, p0, Lcom/android/server/audio/AudioService$SecGlobalVariable;->pIdOfsetVolumeIndex:[[I

    return-object v0
.end method

.method static synthetic -get127(Lcom/android/server/audio/AudioService$SecGlobalVariable;)Lcom/samsung/android/os/SemDvfsManager;
    .locals 1

    iget-object v0, p0, Lcom/android/server/audio/AudioService$SecGlobalVariable;->semDvfsCpuMin:Lcom/samsung/android/os/SemDvfsManager;

    return-object v0
.end method

.method static synthetic -get128(Lcom/android/server/audio/AudioService$SecGlobalVariable;)Lcom/samsung/android/os/SemDvfsManager;
    .locals 1

    iget-object v0, p0, Lcom/android/server/audio/AudioService$SecGlobalVariable;->semLowPowerMode:Lcom/samsung/android/os/SemDvfsManager;

    return-object v0
.end method

.method static synthetic -get129(Lcom/android/server/audio/AudioService$SecGlobalVariable;)[I
    .locals 1

    iget-object v0, p0, Lcom/android/server/audio/AudioService$SecGlobalVariable;->uIdOfadjustVolume:[I

    return-object v0
.end method

.method static synthetic -get13(Lcom/android/server/audio/AudioService$SecGlobalVariable;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/server/audio/AudioService$SecGlobalVariable;->m2ndBTAddr:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get130(Lcom/android/server/audio/AudioService$SecGlobalVariable;)[[I
    .locals 1

    iget-object v0, p0, Lcom/android/server/audio/AudioService$SecGlobalVariable;->uIdOfsetVolume:[[I

    return-object v0
.end method

.method static synthetic -get131(Lcom/android/server/audio/AudioService$SecGlobalVariable;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/audio/AudioService$SecGlobalVariable;->volumeDownToSilent:Z

    return v0
.end method

.method static synthetic -get14(Lcom/android/server/audio/AudioService$SecGlobalVariable;)Landroid/app/ActivityManager;
    .locals 1

    iget-object v0, p0, Lcom/android/server/audio/AudioService$SecGlobalVariable;->mActivityManager:Landroid/app/ActivityManager;

    return-object v0
.end method

.method static synthetic -get15(Lcom/android/server/audio/AudioService$SecGlobalVariable;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/audio/AudioService$SecGlobalVariable;->mAdjustMediaVolumeOnly:Z

    return v0
.end method

.method static synthetic -get16(Lcom/android/server/audio/AudioService$SecGlobalVariable;)I
    .locals 1

    iget v0, p0, Lcom/android/server/audio/AudioService$SecGlobalVariable;->mAllSoundMute:I

    return v0
.end method

.method static synthetic -get17(Lcom/android/server/audio/AudioService$SecGlobalVariable;)Landroid/util/SparseIntArray;
    .locals 1

    iget-object v0, p0, Lcom/android/server/audio/AudioService$SecGlobalVariable;->mAppVolumeFromSoundAssistant:Landroid/util/SparseIntArray;

    return-object v0
.end method

.method static synthetic -get18(Lcom/android/server/audio/AudioService$SecGlobalVariable;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/server/audio/AudioService$SecGlobalVariable;->mBTAddress:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get19(Lcom/android/server/audio/AudioService$SecGlobalVariable;)[I
    .locals 1

    iget-object v0, p0, Lcom/android/server/audio/AudioService$SecGlobalVariable;->mBluetoothA2dpOndump:[I

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/server/audio/AudioService$SecGlobalVariable;)[I
    .locals 1

    iget-object v0, p0, Lcom/android/server/audio/AudioService$SecGlobalVariable;->MAX_STREAM_VOLUME2:[I

    return-object v0
.end method

.method static synthetic -get20(Lcom/android/server/audio/AudioService$SecGlobalVariable;)[I
    .locals 1

    iget-object v0, p0, Lcom/android/server/audio/AudioService$SecGlobalVariable;->mBluetoothScoOndump:[I

    return-object v0
.end method

.method static synthetic -get21(Lcom/android/server/audio/AudioService$SecGlobalVariable;)I
    .locals 1

    iget v0, p0, Lcom/android/server/audio/AudioService$SecGlobalVariable;->mBoostMode:I

    return v0
.end method

.method static synthetic -get22(Lcom/android/server/audio/AudioService$SecGlobalVariable;)I
    .locals 1

    iget v0, p0, Lcom/android/server/audio/AudioService$SecGlobalVariable;->mBoostUpscalerEnabled:I

    return v0
.end method

.method static synthetic -get23(Lcom/android/server/audio/AudioService$SecGlobalVariable;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/audio/AudioService$SecGlobalVariable;->mBtNxpShareIF_LSI:Z

    return v0
.end method

.method static synthetic -get24(Lcom/android/server/audio/AudioService$SecGlobalVariable;)I
    .locals 1

    iget v0, p0, Lcom/android/server/audio/AudioService$SecGlobalVariable;->mCPUBoostType:I

    return v0
.end method

.method static synthetic -get25(Lcom/android/server/audio/AudioService$SecGlobalVariable;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/server/audio/AudioService$SecGlobalVariable;->mCallingModeOndump:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get26(Lcom/android/server/audio/AudioService$SecGlobalVariable;)[Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/server/audio/AudioService$SecGlobalVariable;->mCallingRingerMode:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get27(Lcom/android/server/audio/AudioService$SecGlobalVariable;)Lcom/android/server/audio/AudioService$AppCategorizer;
    .locals 1

    iget-object v0, p0, Lcom/android/server/audio/AudioService$SecGlobalVariable;->mCategorizer:Lcom/android/server/audio/AudioService$AppCategorizer;

    return-object v0
.end method

.method static synthetic -get28(Lcom/android/server/audio/AudioService$SecGlobalVariable;)Lcom/samsung/android/cover/CoverManager;
    .locals 1

    iget-object v0, p0, Lcom/android/server/audio/AudioService$SecGlobalVariable;->mCoverManager:Lcom/samsung/android/cover/CoverManager;

    return-object v0
.end method

.method static synthetic -get29(Lcom/android/server/audio/AudioService$SecGlobalVariable;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/audio/AudioService$SecGlobalVariable;->mCurRCVBackOffState:Z

    return v0
.end method

.method static synthetic -get3(Lcom/android/server/audio/AudioService$SecGlobalVariable;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/audio/AudioService$SecGlobalVariable;->MULTISOUND_ENABLED:Z

    return v0
.end method

.method static synthetic -get30(Lcom/android/server/audio/AudioService$SecGlobalVariable;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/audio/AudioService$SecGlobalVariable;->mDexConnectedState:Z

    return v0
.end method

.method static synthetic -get31(Lcom/android/server/audio/AudioService$SecGlobalVariable;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/audio/AudioService$SecGlobalVariable;->mDexPadConnectedState:Z

    return v0
.end method

.method static synthetic -get32(Lcom/android/server/audio/AudioService$SecGlobalVariable;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/audio/AudioService$SecGlobalVariable;->mDexState:Z

    return v0
.end method

.method static synthetic -get33(Lcom/android/server/audio/AudioService$SecGlobalVariable;)I
    .locals 1

    iget v0, p0, Lcom/android/server/audio/AudioService$SecGlobalVariable;->mDualSpkEnable:I

    return v0
.end method

.method static synthetic -get34(Lcom/android/server/audio/AudioService$SecGlobalVariable;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/audio/AudioService$SecGlobalVariable;->mEnableSoundAssistant:Z

    return v0
.end method

.method static synthetic -get35(Lcom/android/server/audio/AudioService$SecGlobalVariable;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/server/audio/AudioService$SecGlobalVariable;->mExternalUsbInfo:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get36(Lcom/android/server/audio/AudioService$SecGlobalVariable;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/audio/AudioService$SecGlobalVariable;->mFakeState:Z

    return v0
.end method

.method static synthetic -get37(Lcom/android/server/audio/AudioService$SecGlobalVariable;)Lcom/android/server/audio/AudioService$FineVolumeState;
    .locals 1

    iget-object v0, p0, Lcom/android/server/audio/AudioService$SecGlobalVariable;->mFineMediaVolume:Lcom/android/server/audio/AudioService$FineVolumeState;

    return-object v0
.end method

.method static synthetic -get38(Lcom/android/server/audio/AudioService$SecGlobalVariable;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/audio/AudioService$SecGlobalVariable;->mFlatMotionChangedDuringRingtone:Z

    return v0
.end method

.method static synthetic -get39(Lcom/android/server/audio/AudioService$SecGlobalVariable;)I
    .locals 1

    iget v0, p0, Lcom/android/server/audio/AudioService$SecGlobalVariable;->mForceControlStreamPid:I

    return v0
.end method

.method static synthetic -get4(Lcom/android/server/audio/AudioService$SecGlobalVariable;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/audio/AudioService$SecGlobalVariable;->PSEUDO_DUAL_SPEAKER_ENABLED:Z

    return v0
.end method

.method static synthetic -get40(Lcom/android/server/audio/AudioService$SecGlobalVariable;)I
    .locals 1

    iget v0, p0, Lcom/android/server/audio/AudioService$SecGlobalVariable;->mForceControlStreamUid:I

    return v0
.end method

.method static synthetic -get41(Lcom/android/server/audio/AudioService$SecGlobalVariable;)I
    .locals 1

    iget v0, p0, Lcom/android/server/audio/AudioService$SecGlobalVariable;->mForceSpeaker:I

    return v0
.end method

.method static synthetic -get42(Lcom/android/server/audio/AudioService$SecGlobalVariable;)I
    .locals 1

    iget v0, p0, Lcom/android/server/audio/AudioService$SecGlobalVariable;->mForcedUseForFMRadio:I

    return v0
.end method

.method static synthetic -get43(Lcom/android/server/audio/AudioService$SecGlobalVariable;)I
    .locals 1

    iget v0, p0, Lcom/android/server/audio/AudioService$SecGlobalVariable;->mForcedUseForMedia:I

    return v0
.end method

.method static synthetic -get44(Lcom/android/server/audio/AudioService$SecGlobalVariable;)I
    .locals 1

    iget v0, p0, Lcom/android/server/audio/AudioService$SecGlobalVariable;->mForegroundUid:I

    return v0
.end method

.method static synthetic -get45(Lcom/android/server/audio/AudioService$SecGlobalVariable;)Lcom/samsung/android/game/IGameManagerService;
    .locals 1

    iget-object v0, p0, Lcom/android/server/audio/AudioService$SecGlobalVariable;->mGameManagerService:Lcom/samsung/android/game/IGameManagerService;

    return-object v0
.end method

.method static synthetic -get46(Lcom/android/server/audio/AudioService$SecGlobalVariable;)S
    .locals 1

    iget-short v0, p0, Lcom/android/server/audio/AudioService$SecGlobalVariable;->mHallSensorType:S

    return v0
.end method

.method static synthetic -get47(Lcom/android/server/audio/AudioService$SecGlobalVariable;)I
    .locals 1

    iget v0, p0, Lcom/android/server/audio/AudioService$SecGlobalVariable;->mHeadsetOnlyStream:I

    return v0
.end method

.method static synthetic -get48(Lcom/android/server/audio/AudioService$SecGlobalVariable;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/audio/AudioService$SecGlobalVariable;->mIsBigdataApp:Z

    return v0
.end method

.method static synthetic -get49(Lcom/android/server/audio/AudioService$SecGlobalVariable;)I
    .locals 1

    iget v0, p0, Lcom/android/server/audio/AudioService$SecGlobalVariable;->mIsBtOffloadEnabled:I

    return v0
.end method

.method static synthetic -get5(Lcom/android/server/audio/AudioService$SecGlobalVariable;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/server/audio/AudioService$SecGlobalVariable;->SOUND_EFFECTS_PATH_THEME:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get50(Lcom/android/server/audio/AudioService$SecGlobalVariable;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/audio/AudioService$SecGlobalVariable;->mIsCoverSafetyVolume:Z

    return v0
.end method

.method static synthetic -get51(Lcom/android/server/audio/AudioService$SecGlobalVariable;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/audio/AudioService$SecGlobalVariable;->mIsDLNAStatus:Z

    return v0
.end method

.method static synthetic -get52(Lcom/android/server/audio/AudioService$SecGlobalVariable;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/audio/AudioService$SecGlobalVariable;->mIsDefaultStreamNotification:Z

    return v0
.end method

.method static synthetic -get53(Lcom/android/server/audio/AudioService$SecGlobalVariable;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/audio/AudioService$SecGlobalVariable;->mIsEarCareSettingOn:Z

    return v0
.end method

.method static synthetic -get54(Lcom/android/server/audio/AudioService$SecGlobalVariable;)[Z
    .locals 1

    iget-object v0, p0, Lcom/android/server/audio/AudioService$SecGlobalVariable;->mIsExternalRingerMode:[Z

    return-object v0
.end method

.method static synthetic -get55(Lcom/android/server/audio/AudioService$SecGlobalVariable;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/audio/AudioService$SecGlobalVariable;->mIsFactoryMode:Z

    return v0
.end method

.method static synthetic -get56(Lcom/android/server/audio/AudioService$SecGlobalVariable;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/audio/AudioService$SecGlobalVariable;->mIsFactorySim:Z

    return v0
.end method

.method static synthetic -get57(Lcom/android/server/audio/AudioService$SecGlobalVariable;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/audio/AudioService$SecGlobalVariable;->mIsFolderOpen:Z

    return v0
.end method

.method static synthetic -get58(Lcom/android/server/audio/AudioService$SecGlobalVariable;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/audio/AudioService$SecGlobalVariable;->mIsHWVolumeControlEnable:Z

    return v0
.end method

.method static synthetic -get59(Lcom/android/server/audio/AudioService$SecGlobalVariable;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/audio/AudioService$SecGlobalVariable;->mIsMediaVolumeBackup:Z

    return v0
.end method

.method static synthetic -get6(Lcom/android/server/audio/AudioService$SecGlobalVariable;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/audio/AudioService$SecGlobalVariable;->SUPPORT_BOOST_MODE:Z

    return v0
.end method

.method static synthetic -get60(Lcom/android/server/audio/AudioService$SecGlobalVariable;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/audio/AudioService$SecGlobalVariable;->mIsMicMute:Z

    return v0
.end method

.method static synthetic -get61(Lcom/android/server/audio/AudioService$SecGlobalVariable;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/audio/AudioService$SecGlobalVariable;->mIsPlaySilentModeOff:Z

    return v0
.end method

.method static synthetic -get62(Lcom/android/server/audio/AudioService$SecGlobalVariable;)I
    .locals 1

    iget v0, p0, Lcom/android/server/audio/AudioService$SecGlobalVariable;->mIsScreenOffMusicOn:I

    return v0
.end method

.method static synthetic -get63(Lcom/android/server/audio/AudioService$SecGlobalVariable;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/audio/AudioService$SecGlobalVariable;->mIsSupportDisplayVolumeControl:Z

    return v0
.end method

.method static synthetic -get64(Lcom/android/server/audio/AudioService$SecGlobalVariable;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/audio/AudioService$SecGlobalVariable;->mIsTalkBackEnabled:Z

    return v0
.end method

.method static synthetic -get65(Lcom/android/server/audio/AudioService$SecGlobalVariable;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/audio/AudioService$SecGlobalVariable;->mIsTogether:Z

    return v0
.end method

.method static synthetic -get66(Lcom/android/server/audio/AudioService$SecGlobalVariable;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/audio/AudioService$SecGlobalVariable;->mIsVibrate:Z

    return v0
.end method

.method static synthetic -get67(Lcom/android/server/audio/AudioService$SecGlobalVariable;)Landroid/app/KeyguardManager;
    .locals 1

    iget-object v0, p0, Lcom/android/server/audio/AudioService$SecGlobalVariable;->mKeyguardManager:Landroid/app/KeyguardManager;

    return-object v0
.end method

.method static synthetic -get68(Lcom/android/server/audio/AudioService$SecGlobalVariable;)I
    .locals 1

    iget v0, p0, Lcom/android/server/audio/AudioService$SecGlobalVariable;->mLRSwitching:I

    return v0
.end method

.method static synthetic -get69(Lcom/android/server/audio/AudioService$SecGlobalVariable;)J
    .locals 2

    iget-wide v0, p0, Lcom/android/server/audio/AudioService$SecGlobalVariable;->mLastBluetoothA2dpDisconnectionTime:J

    return-wide v0
.end method

.method static synthetic -get7(Lcom/android/server/audio/AudioService$SecGlobalVariable;)I
    .locals 1

    iget v0, p0, Lcom/android/server/audio/AudioService$SecGlobalVariable;->changeRecVolCnt:I

    return v0
.end method

.method static synthetic -get70(Lcom/android/server/audio/AudioService$SecGlobalVariable;)Lcom/android/server/audio/AudioService$DeviceListSpec;
    .locals 1

    iget-object v0, p0, Lcom/android/server/audio/AudioService$SecGlobalVariable;->mLastConnectedDevice:Lcom/android/server/audio/AudioService$DeviceListSpec;

    return-object v0
.end method

.method static synthetic -get71(Lcom/android/server/audio/AudioService$SecGlobalVariable;)I
    .locals 1

    iget v0, p0, Lcom/android/server/audio/AudioService$SecGlobalVariable;->mMediaLastAudibleIndex:I

    return v0
.end method

.method static synthetic -get72(Lcom/android/server/audio/AudioService$SecGlobalVariable;)Lcom/android/server/media/MediaSessionService$MediaSessionServiceInternal;
    .locals 1

    iget-object v0, p0, Lcom/android/server/audio/AudioService$SecGlobalVariable;->mMediaSessionService:Lcom/android/server/media/MediaSessionService$MediaSessionServiceInternal;

    return-object v0
.end method

.method static synthetic -get73(Lcom/android/server/audio/AudioService$SecGlobalVariable;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/audio/AudioService$SecGlobalVariable;->mMediaSilentMode:Z

    return v0
.end method

.method static synthetic -get74(Lcom/android/server/audio/AudioService$SecGlobalVariable;)[I
    .locals 1

    iget-object v0, p0, Lcom/android/server/audio/AudioService$SecGlobalVariable;->mMediaVolumeBackup:[I

    return-object v0
.end method

.method static synthetic -get75(Lcom/android/server/audio/AudioService$SecGlobalVariable;)I
    .locals 1

    iget v0, p0, Lcom/android/server/audio/AudioService$SecGlobalVariable;->mMediaVolumeStepIndex:I

    return v0
.end method

.method static synthetic -get76(Lcom/android/server/audio/AudioService$SecGlobalVariable;)[Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/server/audio/AudioService$SecGlobalVariable;->mMicMuteCallingTimedump:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get77(Lcom/android/server/audio/AudioService$SecGlobalVariable;)[I
    .locals 1

    iget-object v0, p0, Lcom/android/server/audio/AudioService$SecGlobalVariable;->mMicMutedump:[I

    return-object v0
.end method

.method static synthetic -get78(Lcom/android/server/audio/AudioService$SecGlobalVariable;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/android/server/audio/AudioService$SecGlobalVariable;->mModeHisList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic -get79(Lcom/android/server/audio/AudioService$SecGlobalVariable;)Landroid/util/SparseArray;
    .locals 1

    iget-object v0, p0, Lcom/android/server/audio/AudioService$SecGlobalVariable;->mModeListOndump:Landroid/util/SparseArray;

    return-object v0
.end method

.method static synthetic -get8(Lcom/android/server/audio/AudioService$SecGlobalVariable;)Lcom/android/server/audio/AudioService$RampInPreset;
    .locals 1

    iget-object v0, p0, Lcom/android/server/audio/AudioService$SecGlobalVariable;->defaultPreset:Lcom/android/server/audio/AudioService$RampInPreset;

    return-object v0
.end method

.method static synthetic -get80(Lcom/android/server/audio/AudioService$SecGlobalVariable;)I
    .locals 1

    iget v0, p0, Lcom/android/server/audio/AudioService$SecGlobalVariable;->mMonoMode:I

    return v0
.end method

.method static synthetic -get81(Lcom/android/server/audio/AudioService$SecGlobalVariable;)I
    .locals 1

    iget v0, p0, Lcom/android/server/audio/AudioService$SecGlobalVariable;->mMuteIntervalMs:I

    return v0
.end method

.method static synthetic -get82(Lcom/android/server/audio/AudioService$SecGlobalVariable;)I
    .locals 1

    iget v0, p0, Lcom/android/server/audio/AudioService$SecGlobalVariable;->mMySoundEnabled:I

    return v0
.end method

.method static synthetic -get83(Lcom/android/server/audio/AudioService$SecGlobalVariable;)I
    .locals 1

    iget v0, p0, Lcom/android/server/audio/AudioService$SecGlobalVariable;->mNaturalSound:I

    return v0
.end method

.method static synthetic -get84(Lcom/android/server/audio/AudioService$SecGlobalVariable;)I
    .locals 1

    iget v0, p0, Lcom/android/server/audio/AudioService$SecGlobalVariable;->mNbQualityMode:I

    return v0
.end method

.method static synthetic -get85(Lcom/android/server/audio/AudioService$SecGlobalVariable;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/audio/AudioService$SecGlobalVariable;->mOldIsSmartdock:Z

    return v0
.end method

.method static synthetic -get86(Lcom/android/server/audio/AudioService$SecGlobalVariable;)Landroid/content/pm/PackageManager;
    .locals 1

    iget-object v0, p0, Lcom/android/server/audio/AudioService$SecGlobalVariable;->mPackageManager:Landroid/content/pm/PackageManager;

    return-object v0
.end method

.method static synthetic -get87(Lcom/android/server/audio/AudioService$SecGlobalVariable;)Lcom/android/server/audio/AudioService$StreamVolumeCommand;
    .locals 1

    iget-object v0, p0, Lcom/android/server/audio/AudioService$SecGlobalVariable;->mPendingFineVolumeCommand:Lcom/android/server/audio/AudioService$StreamVolumeCommand;

    return-object v0
.end method

.method static synthetic -get88(Lcom/android/server/audio/AudioService$SecGlobalVariable;)I
    .locals 1

    iget v0, p0, Lcom/android/server/audio/AudioService$SecGlobalVariable;->mPrevRingerMode:I

    return v0
.end method

.method static synthetic -get89(Lcom/android/server/audio/AudioService$SecGlobalVariable;)Landroid/app/IProcessObserver;
    .locals 1

    iget-object v0, p0, Lcom/android/server/audio/AudioService$SecGlobalVariable;->mProcessObserver:Landroid/app/IProcessObserver;

    return-object v0
.end method

.method static synthetic -get9(Lcom/android/server/audio/AudioService$SecGlobalVariable;)Lcom/android/server/audio/AudioService$RampInPreset;
    .locals 1

    iget-object v0, p0, Lcom/android/server/audio/AudioService$SecGlobalVariable;->dualspkPreset:Lcom/android/server/audio/AudioService$RampInPreset;

    return-object v0
.end method

.method static synthetic -get90(Lcom/android/server/audio/AudioService$SecGlobalVariable;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/android/server/audio/AudioService$SecGlobalVariable;->mSafeMediaVolumeStateLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic -get91(Lcom/android/server/audio/AudioService$SecGlobalVariable;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/audio/AudioService$SecGlobalVariable;->mScreenSharingStateResumed:Z

    return v0
.end method

.method static synthetic -get92(Lcom/android/server/audio/AudioService$SecGlobalVariable;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/audio/AudioService$SecGlobalVariable;->mSelfiestickIsConnected:Z

    return v0
.end method

.method static synthetic -get93(Lcom/android/server/audio/AudioService$SecGlobalVariable;)Landroid/hardware/display/SemDeviceStatusListener;
    .locals 1

    iget-object v0, p0, Lcom/android/server/audio/AudioService$SecGlobalVariable;->mSemDeviceStatusListener:Landroid/hardware/display/SemDeviceStatusListener;

    return-object v0
.end method

.method static synthetic -get94(Lcom/android/server/audio/AudioService$SecGlobalVariable;)Landroid/os/SemHqmManager;
    .locals 1

    iget-object v0, p0, Lcom/android/server/audio/AudioService$SecGlobalVariable;->mSemHqmManager:Landroid/os/SemHqmManager;

    return-object v0
.end method

.method static synthetic -get95(Lcom/android/server/audio/AudioService$SecGlobalVariable;)Lcom/android/server/audio/AudioService$SensorThread;
    .locals 1

    iget-object v0, p0, Lcom/android/server/audio/AudioService$SecGlobalVariable;->mSensorThread:Lcom/android/server/audio/AudioService$SensorThread;

    return-object v0
.end method

.method static synthetic -get96(Lcom/android/server/audio/AudioService$SecGlobalVariable;)I
    .locals 1

    iget v0, p0, Lcom/android/server/audio/AudioService$SecGlobalVariable;->mSetModeOndump:I

    return v0
.end method

.method static synthetic -get97(Lcom/android/server/audio/AudioService$SecGlobalVariable;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/server/audio/AudioService$SecGlobalVariable;->mSetModeTime:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get98(Lcom/android/server/audio/AudioService$SecGlobalVariable;)Lcom/android/server/audio/AudioService$AudioSettingsDBHelper;
    .locals 1

    iget-object v0, p0, Lcom/android/server/audio/AudioService$SecGlobalVariable;->mSettingDBHelper:Lcom/android/server/audio/AudioService$AudioSettingsDBHelper;

    return-object v0
.end method

.method static synthetic -get99(Lcom/android/server/audio/AudioService$SecGlobalVariable;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/audio/AudioService$SecGlobalVariable;->mSilentModeOff:Z

    return v0
.end method

.method static synthetic -set0(Lcom/android/server/audio/AudioService$SecGlobalVariable;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/android/server/audio/AudioService$SecGlobalVariable;->SOUND_EFFECTS_PATH_THEME:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic -set1(Lcom/android/server/audio/AudioService$SecGlobalVariable;I)I
    .locals 0

    iput p1, p0, Lcom/android/server/audio/AudioService$SecGlobalVariable;->changeRecVolCnt:I

    return p1
.end method

.method static synthetic -set10(Lcom/android/server/audio/AudioService$SecGlobalVariable;[I)[I
    .locals 0

    iput-object p1, p0, Lcom/android/server/audio/AudioService$SecGlobalVariable;->mBluetoothA2dpOndump:[I

    return-object p1
.end method

.method static synthetic -set100(Lcom/android/server/audio/AudioService$SecGlobalVariable;I)I
    .locals 0

    iput p1, p0, Lcom/android/server/audio/AudioService$SecGlobalVariable;->mVolumeControllerStream:I

    return p1
.end method

.method static synthetic -set101(Lcom/android/server/audio/AudioService$SecGlobalVariable;I)I
    .locals 0

    iput p1, p0, Lcom/android/server/audio/AudioService$SecGlobalVariable;->mVolumeLimitValue:I

    return p1
.end method

.method static synthetic -set102(Lcom/android/server/audio/AudioService$SecGlobalVariable;[Lcom/android/server/audio/AudioService$VolumeMap;)[Lcom/android/server/audio/AudioService$VolumeMap;
    .locals 0

    iput-object p1, p0, Lcom/android/server/audio/AudioService$SecGlobalVariable;->mVolumeMap:[Lcom/android/server/audio/AudioService$VolumeMap;

    return-object p1
.end method

.method static synthetic -set103(Lcom/android/server/audio/AudioService$SecGlobalVariable;[I)[I
    .locals 0

    iput-object p1, p0, Lcom/android/server/audio/AudioService$SecGlobalVariable;->mVolumeSteps:[I

    return-object p1
.end method

.method static synthetic -set104(Lcom/android/server/audio/AudioService$SecGlobalVariable;I)I
    .locals 0

    iput p1, p0, Lcom/android/server/audio/AudioService$SecGlobalVariable;->mZenMode:I

    return p1
.end method

.method static synthetic -set105(Lcom/android/server/audio/AudioService$SecGlobalVariable;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/audio/AudioService$SecGlobalVariable;->mbVolumeLimitOn:Z

    return p1
.end method

.method static synthetic -set106(Lcom/android/server/audio/AudioService$SecGlobalVariable;Landroid/widget/Toast;)Landroid/widget/Toast;
    .locals 0

    iput-object p1, p0, Lcom/android/server/audio/AudioService$SecGlobalVariable;->multiSoundToast:Landroid/widget/Toast;

    return-object p1
.end method

.method static synthetic -set107(Lcom/android/server/audio/AudioService$SecGlobalVariable;[I)[I
    .locals 0

    iput-object p1, p0, Lcom/android/server/audio/AudioService$SecGlobalVariable;->pIdOfadjustVolume:[I

    return-object p1
.end method

.method static synthetic -set108(Lcom/android/server/audio/AudioService$SecGlobalVariable;[I)[I
    .locals 0

    iput-object p1, p0, Lcom/android/server/audio/AudioService$SecGlobalVariable;->pIdOfadjustVolumeIndex:[I

    return-object p1
.end method

.method static synthetic -set109(Lcom/android/server/audio/AudioService$SecGlobalVariable;[[I)[[I
    .locals 0

    iput-object p1, p0, Lcom/android/server/audio/AudioService$SecGlobalVariable;->pIdOfsetVolume:[[I

    return-object p1
.end method

.method static synthetic -set11(Lcom/android/server/audio/AudioService$SecGlobalVariable;[I)[I
    .locals 0

    iput-object p1, p0, Lcom/android/server/audio/AudioService$SecGlobalVariable;->mBluetoothScoOndump:[I

    return-object p1
.end method

.method static synthetic -set110(Lcom/android/server/audio/AudioService$SecGlobalVariable;[[I)[[I
    .locals 0

    iput-object p1, p0, Lcom/android/server/audio/AudioService$SecGlobalVariable;->pIdOfsetVolumeIndex:[[I

    return-object p1
.end method

.method static synthetic -set111(Lcom/android/server/audio/AudioService$SecGlobalVariable;Lcom/samsung/android/os/SemDvfsManager;)Lcom/samsung/android/os/SemDvfsManager;
    .locals 0

    iput-object p1, p0, Lcom/android/server/audio/AudioService$SecGlobalVariable;->semDvfsCpuMin:Lcom/samsung/android/os/SemDvfsManager;

    return-object p1
.end method

.method static synthetic -set112(Lcom/android/server/audio/AudioService$SecGlobalVariable;Lcom/samsung/android/os/SemDvfsManager;)Lcom/samsung/android/os/SemDvfsManager;
    .locals 0

    iput-object p1, p0, Lcom/android/server/audio/AudioService$SecGlobalVariable;->semLowPowerMode:Lcom/samsung/android/os/SemDvfsManager;

    return-object p1
.end method

.method static synthetic -set113(Lcom/android/server/audio/AudioService$SecGlobalVariable;[I)[I
    .locals 0

    iput-object p1, p0, Lcom/android/server/audio/AudioService$SecGlobalVariable;->uIdOfadjustVolume:[I

    return-object p1
.end method

.method static synthetic -set114(Lcom/android/server/audio/AudioService$SecGlobalVariable;[[I)[[I
    .locals 0

    iput-object p1, p0, Lcom/android/server/audio/AudioService$SecGlobalVariable;->uIdOfsetVolume:[[I

    return-object p1
.end method

.method static synthetic -set12(Lcom/android/server/audio/AudioService$SecGlobalVariable;I)I
    .locals 0

    iput p1, p0, Lcom/android/server/audio/AudioService$SecGlobalVariable;->mBoostMode:I

    return p1
.end method

.method static synthetic -set13(Lcom/android/server/audio/AudioService$SecGlobalVariable;I)I
    .locals 0

    iput p1, p0, Lcom/android/server/audio/AudioService$SecGlobalVariable;->mBoostUpscalerEnabled:I

    return p1
.end method

.method static synthetic -set14(Lcom/android/server/audio/AudioService$SecGlobalVariable;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/audio/AudioService$SecGlobalVariable;->mBtNxpShareIF_LSI:Z

    return p1
.end method

.method static synthetic -set15(Lcom/android/server/audio/AudioService$SecGlobalVariable;I)I
    .locals 0

    iput p1, p0, Lcom/android/server/audio/AudioService$SecGlobalVariable;->mCPUBoostType:I

    return p1
.end method

.method static synthetic -set16(Lcom/android/server/audio/AudioService$SecGlobalVariable;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/android/server/audio/AudioService$SecGlobalVariable;->mCallingModeOndump:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic -set17(Lcom/android/server/audio/AudioService$SecGlobalVariable;[Ljava/lang/String;)[Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/android/server/audio/AudioService$SecGlobalVariable;->mCallingRingerMode:[Ljava/lang/String;

    return-object p1
.end method

.method static synthetic -set18(Lcom/android/server/audio/AudioService$SecGlobalVariable;Lcom/android/server/audio/AudioService$AppCategorizer;)Lcom/android/server/audio/AudioService$AppCategorizer;
    .locals 0

    iput-object p1, p0, Lcom/android/server/audio/AudioService$SecGlobalVariable;->mCategorizer:Lcom/android/server/audio/AudioService$AppCategorizer;

    return-object p1
.end method

.method static synthetic -set19(Lcom/android/server/audio/AudioService$SecGlobalVariable;Lcom/samsung/android/cover/CoverManager;)Lcom/samsung/android/cover/CoverManager;
    .locals 0

    iput-object p1, p0, Lcom/android/server/audio/AudioService$SecGlobalVariable;->mCoverManager:Lcom/samsung/android/cover/CoverManager;

    return-object p1
.end method

.method static synthetic -set2(Lcom/android/server/audio/AudioService$SecGlobalVariable;Lcom/samsung/android/emergencymode/SemEmergencyManager;)Lcom/samsung/android/emergencymode/SemEmergencyManager;
    .locals 0

    iput-object p1, p0, Lcom/android/server/audio/AudioService$SecGlobalVariable;->emergencyManager:Lcom/samsung/android/emergencymode/SemEmergencyManager;

    return-object p1
.end method

.method static synthetic -set20(Lcom/android/server/audio/AudioService$SecGlobalVariable;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/audio/AudioService$SecGlobalVariable;->mCurRCVBackOffState:Z

    return p1
.end method

.method static synthetic -set21(Lcom/android/server/audio/AudioService$SecGlobalVariable;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/audio/AudioService$SecGlobalVariable;->mDexConnectedState:Z

    return p1
.end method

.method static synthetic -set22(Lcom/android/server/audio/AudioService$SecGlobalVariable;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/audio/AudioService$SecGlobalVariable;->mDexPadConnectedState:Z

    return p1
.end method

.method static synthetic -set23(Lcom/android/server/audio/AudioService$SecGlobalVariable;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/audio/AudioService$SecGlobalVariable;->mDexState:Z

    return p1
.end method

.method static synthetic -set24(Lcom/android/server/audio/AudioService$SecGlobalVariable;I)I
    .locals 0

    iput p1, p0, Lcom/android/server/audio/AudioService$SecGlobalVariable;->mDualSpkEnable:I

    return p1
.end method

.method static synthetic -set25(Lcom/android/server/audio/AudioService$SecGlobalVariable;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/audio/AudioService$SecGlobalVariable;->mEnableSoundAssistant:Z

    return p1
.end method

.method static synthetic -set26(Lcom/android/server/audio/AudioService$SecGlobalVariable;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/android/server/audio/AudioService$SecGlobalVariable;->mExternalUsbInfo:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic -set27(Lcom/android/server/audio/AudioService$SecGlobalVariable;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/audio/AudioService$SecGlobalVariable;->mFakeState:Z

    return p1
.end method

.method static synthetic -set28(Lcom/android/server/audio/AudioService$SecGlobalVariable;Lcom/android/server/audio/AudioService$FineVolumeState;)Lcom/android/server/audio/AudioService$FineVolumeState;
    .locals 0

    iput-object p1, p0, Lcom/android/server/audio/AudioService$SecGlobalVariable;->mFineMediaVolume:Lcom/android/server/audio/AudioService$FineVolumeState;

    return-object p1
.end method

.method static synthetic -set29(Lcom/android/server/audio/AudioService$SecGlobalVariable;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/audio/AudioService$SecGlobalVariable;->mFlatMotionChangedDuringRingtone:Z

    return p1
.end method

.method static synthetic -set3(Lcom/android/server/audio/AudioService$SecGlobalVariable;[I)[I
    .locals 0

    iput-object p1, p0, Lcom/android/server/audio/AudioService$SecGlobalVariable;->indexOfsetVolume:[I

    return-object p1
.end method

.method static synthetic -set30(Lcom/android/server/audio/AudioService$SecGlobalVariable;I)I
    .locals 0

    iput p1, p0, Lcom/android/server/audio/AudioService$SecGlobalVariable;->mForceControlStreamPid:I

    return p1
.end method

.method static synthetic -set31(Lcom/android/server/audio/AudioService$SecGlobalVariable;I)I
    .locals 0

    iput p1, p0, Lcom/android/server/audio/AudioService$SecGlobalVariable;->mForceControlStreamUid:I

    return p1
.end method

.method static synthetic -set32(Lcom/android/server/audio/AudioService$SecGlobalVariable;I)I
    .locals 0

    iput p1, p0, Lcom/android/server/audio/AudioService$SecGlobalVariable;->mForceSpeaker:I

    return p1
.end method

.method static synthetic -set33(Lcom/android/server/audio/AudioService$SecGlobalVariable;I)I
    .locals 0

    iput p1, p0, Lcom/android/server/audio/AudioService$SecGlobalVariable;->mForcedUseForFMRadio:I

    return p1
.end method

.method static synthetic -set34(Lcom/android/server/audio/AudioService$SecGlobalVariable;I)I
    .locals 0

    iput p1, p0, Lcom/android/server/audio/AudioService$SecGlobalVariable;->mForcedUseForMedia:I

    return p1
.end method

.method static synthetic -set35(Lcom/android/server/audio/AudioService$SecGlobalVariable;I)I
    .locals 0

    iput p1, p0, Lcom/android/server/audio/AudioService$SecGlobalVariable;->mForegroundUid:I

    return p1
.end method

.method static synthetic -set36(Lcom/android/server/audio/AudioService$SecGlobalVariable;Lcom/samsung/android/game/IGameManagerService;)Lcom/samsung/android/game/IGameManagerService;
    .locals 0

    iput-object p1, p0, Lcom/android/server/audio/AudioService$SecGlobalVariable;->mGameManagerService:Lcom/samsung/android/game/IGameManagerService;

    return-object p1
.end method

.method static synthetic -set37(Lcom/android/server/audio/AudioService$SecGlobalVariable;I)I
    .locals 0

    iput p1, p0, Lcom/android/server/audio/AudioService$SecGlobalVariable;->mHeadsetOnlyStream:I

    return p1
.end method

.method static synthetic -set38(Lcom/android/server/audio/AudioService$SecGlobalVariable;I)I
    .locals 0

    iput p1, p0, Lcom/android/server/audio/AudioService$SecGlobalVariable;->mIsBtOffloadEnabled:I

    return p1
.end method

.method static synthetic -set39(Lcom/android/server/audio/AudioService$SecGlobalVariable;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/audio/AudioService$SecGlobalVariable;->mIsCoverSafetyVolume:Z

    return p1
.end method

.method static synthetic -set4(Lcom/android/server/audio/AudioService$SecGlobalVariable;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/android/server/audio/AudioService$SecGlobalVariable;->m1stBTAddr:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic -set40(Lcom/android/server/audio/AudioService$SecGlobalVariable;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/audio/AudioService$SecGlobalVariable;->mIsDLNAStatus:Z

    return p1
.end method

.method static synthetic -set41(Lcom/android/server/audio/AudioService$SecGlobalVariable;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/audio/AudioService$SecGlobalVariable;->mIsDefaultStreamNotification:Z

    return p1
.end method

.method static synthetic -set42(Lcom/android/server/audio/AudioService$SecGlobalVariable;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/audio/AudioService$SecGlobalVariable;->mIsEarCareSettingOn:Z

    return p1
.end method

.method static synthetic -set43(Lcom/android/server/audio/AudioService$SecGlobalVariable;[Z)[Z
    .locals 0

    iput-object p1, p0, Lcom/android/server/audio/AudioService$SecGlobalVariable;->mIsExternalRingerMode:[Z

    return-object p1
.end method

.method static synthetic -set44(Lcom/android/server/audio/AudioService$SecGlobalVariable;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/audio/AudioService$SecGlobalVariable;->mIsFactoryMode:Z

    return p1
.end method

.method static synthetic -set45(Lcom/android/server/audio/AudioService$SecGlobalVariable;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/audio/AudioService$SecGlobalVariable;->mIsFactorySim:Z

    return p1
.end method

.method static synthetic -set46(Lcom/android/server/audio/AudioService$SecGlobalVariable;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/audio/AudioService$SecGlobalVariable;->mIsFolderOpen:Z

    return p1
.end method

.method static synthetic -set47(Lcom/android/server/audio/AudioService$SecGlobalVariable;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/audio/AudioService$SecGlobalVariable;->mIsMediaVolumeBackup:Z

    return p1
.end method

.method static synthetic -set48(Lcom/android/server/audio/AudioService$SecGlobalVariable;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/audio/AudioService$SecGlobalVariable;->mIsMicMute:Z

    return p1
.end method

.method static synthetic -set49(Lcom/android/server/audio/AudioService$SecGlobalVariable;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/audio/AudioService$SecGlobalVariable;->mIsPlaySilentModeOff:Z

    return p1
.end method

.method static synthetic -set5(Lcom/android/server/audio/AudioService$SecGlobalVariable;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/android/server/audio/AudioService$SecGlobalVariable;->m2ndBTAddr:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic -set50(Lcom/android/server/audio/AudioService$SecGlobalVariable;I)I
    .locals 0

    iput p1, p0, Lcom/android/server/audio/AudioService$SecGlobalVariable;->mIsScreenOffMusicOn:I

    return p1
.end method

.method static synthetic -set51(Lcom/android/server/audio/AudioService$SecGlobalVariable;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/audio/AudioService$SecGlobalVariable;->mIsSupportDisplayVolumeControl:Z

    return p1
.end method

.method static synthetic -set52(Lcom/android/server/audio/AudioService$SecGlobalVariable;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/audio/AudioService$SecGlobalVariable;->mIsTalkBackEnabled:Z

    return p1
.end method

.method static synthetic -set53(Lcom/android/server/audio/AudioService$SecGlobalVariable;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/audio/AudioService$SecGlobalVariable;->mIsTogether:Z

    return p1
.end method

.method static synthetic -set54(Lcom/android/server/audio/AudioService$SecGlobalVariable;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/audio/AudioService$SecGlobalVariable;->mIsVibrate:Z

    return p1
.end method

.method static synthetic -set55(Lcom/android/server/audio/AudioService$SecGlobalVariable;Landroid/app/KeyguardManager;)Landroid/app/KeyguardManager;
    .locals 0

    iput-object p1, p0, Lcom/android/server/audio/AudioService$SecGlobalVariable;->mKeyguardManager:Landroid/app/KeyguardManager;

    return-object p1
.end method

.method static synthetic -set56(Lcom/android/server/audio/AudioService$SecGlobalVariable;I)I
    .locals 0

    iput p1, p0, Lcom/android/server/audio/AudioService$SecGlobalVariable;->mLRSwitching:I

    return p1
.end method

.method static synthetic -set57(Lcom/android/server/audio/AudioService$SecGlobalVariable;J)J
    .locals 1

    iput-wide p1, p0, Lcom/android/server/audio/AudioService$SecGlobalVariable;->mLastBluetoothA2dpDisconnectionTime:J

    return-wide p1
.end method

.method static synthetic -set58(Lcom/android/server/audio/AudioService$SecGlobalVariable;Lcom/android/server/audio/AudioService$DeviceListSpec;)Lcom/android/server/audio/AudioService$DeviceListSpec;
    .locals 0

    iput-object p1, p0, Lcom/android/server/audio/AudioService$SecGlobalVariable;->mLastConnectedDevice:Lcom/android/server/audio/AudioService$DeviceListSpec;

    return-object p1
.end method

.method static synthetic -set59(Lcom/android/server/audio/AudioService$SecGlobalVariable;I)I
    .locals 0

    iput p1, p0, Lcom/android/server/audio/AudioService$SecGlobalVariable;->mLateBootCompleted_WiredDevice:I

    return p1
.end method

.method static synthetic -set6(Lcom/android/server/audio/AudioService$SecGlobalVariable;Landroid/app/ActivityManager;)Landroid/app/ActivityManager;
    .locals 0

    iput-object p1, p0, Lcom/android/server/audio/AudioService$SecGlobalVariable;->mActivityManager:Landroid/app/ActivityManager;

    return-object p1
.end method

.method static synthetic -set60(Lcom/android/server/audio/AudioService$SecGlobalVariable;I)I
    .locals 0

    iput p1, p0, Lcom/android/server/audio/AudioService$SecGlobalVariable;->mMediaLastAudibleIndex:I

    return p1
.end method

.method static synthetic -set61(Lcom/android/server/audio/AudioService$SecGlobalVariable;Lcom/android/server/media/MediaSessionService$MediaSessionServiceInternal;)Lcom/android/server/media/MediaSessionService$MediaSessionServiceInternal;
    .locals 0

    iput-object p1, p0, Lcom/android/server/audio/AudioService$SecGlobalVariable;->mMediaSessionService:Lcom/android/server/media/MediaSessionService$MediaSessionServiceInternal;

    return-object p1
.end method

.method static synthetic -set62(Lcom/android/server/audio/AudioService$SecGlobalVariable;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/audio/AudioService$SecGlobalVariable;->mMediaSilentMode:Z

    return p1
.end method

.method static synthetic -set63(Lcom/android/server/audio/AudioService$SecGlobalVariable;I)I
    .locals 0

    iput p1, p0, Lcom/android/server/audio/AudioService$SecGlobalVariable;->mMediaVolumeStepIndex:I

    return p1
.end method

.method static synthetic -set64(Lcom/android/server/audio/AudioService$SecGlobalVariable;[Ljava/lang/String;)[Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/android/server/audio/AudioService$SecGlobalVariable;->mMicMuteCallingTimedump:[Ljava/lang/String;

    return-object p1
.end method

.method static synthetic -set65(Lcom/android/server/audio/AudioService$SecGlobalVariable;[I)[I
    .locals 0

    iput-object p1, p0, Lcom/android/server/audio/AudioService$SecGlobalVariable;->mMicMutedump:[I

    return-object p1
.end method

.method static synthetic -set66(Lcom/android/server/audio/AudioService$SecGlobalVariable;I)I
    .locals 0

    iput p1, p0, Lcom/android/server/audio/AudioService$SecGlobalVariable;->mMonoMode:I

    return p1
.end method

.method static synthetic -set67(Lcom/android/server/audio/AudioService$SecGlobalVariable;I)I
    .locals 0

    iput p1, p0, Lcom/android/server/audio/AudioService$SecGlobalVariable;->mMuteIntervalMs:I

    return p1
.end method

.method static synthetic -set68(Lcom/android/server/audio/AudioService$SecGlobalVariable;I)I
    .locals 0

    iput p1, p0, Lcom/android/server/audio/AudioService$SecGlobalVariable;->mMySoundEnabled:I

    return p1
.end method

.method static synthetic -set69(Lcom/android/server/audio/AudioService$SecGlobalVariable;I)I
    .locals 0

    iput p1, p0, Lcom/android/server/audio/AudioService$SecGlobalVariable;->mNaturalSound:I

    return p1
.end method

.method static synthetic -set7(Lcom/android/server/audio/AudioService$SecGlobalVariable;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/audio/AudioService$SecGlobalVariable;->mAdjustMediaVolumeOnly:Z

    return p1
.end method

.method static synthetic -set70(Lcom/android/server/audio/AudioService$SecGlobalVariable;I)I
    .locals 0

    iput p1, p0, Lcom/android/server/audio/AudioService$SecGlobalVariable;->mNbQualityMode:I

    return p1
.end method

.method static synthetic -set71(Lcom/android/server/audio/AudioService$SecGlobalVariable;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/audio/AudioService$SecGlobalVariable;->mOldIsSmartdock:Z

    return p1
.end method

.method static synthetic -set72(Lcom/android/server/audio/AudioService$SecGlobalVariable;Landroid/content/pm/PackageManager;)Landroid/content/pm/PackageManager;
    .locals 0

    iput-object p1, p0, Lcom/android/server/audio/AudioService$SecGlobalVariable;->mPackageManager:Landroid/content/pm/PackageManager;

    return-object p1
.end method

.method static synthetic -set73(Lcom/android/server/audio/AudioService$SecGlobalVariable;Lcom/android/server/audio/AudioService$StreamVolumeCommand;)Lcom/android/server/audio/AudioService$StreamVolumeCommand;
    .locals 0

    iput-object p1, p0, Lcom/android/server/audio/AudioService$SecGlobalVariable;->mPendingFineVolumeCommand:Lcom/android/server/audio/AudioService$StreamVolumeCommand;

    return-object p1
.end method

.method static synthetic -set74(Lcom/android/server/audio/AudioService$SecGlobalVariable;I)I
    .locals 0

    iput p1, p0, Lcom/android/server/audio/AudioService$SecGlobalVariable;->mPrevRingerMode:I

    return p1
.end method

.method static synthetic -set75(Lcom/android/server/audio/AudioService$SecGlobalVariable;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/audio/AudioService$SecGlobalVariable;->mScreenSharingStateResumed:Z

    return p1
.end method

.method static synthetic -set76(Lcom/android/server/audio/AudioService$SecGlobalVariable;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/audio/AudioService$SecGlobalVariable;->mSelfiestickIsConnected:Z

    return p1
.end method

.method static synthetic -set77(Lcom/android/server/audio/AudioService$SecGlobalVariable;Landroid/hardware/display/SemDeviceStatusListener;)Landroid/hardware/display/SemDeviceStatusListener;
    .locals 0

    iput-object p1, p0, Lcom/android/server/audio/AudioService$SecGlobalVariable;->mSemDeviceStatusListener:Landroid/hardware/display/SemDeviceStatusListener;

    return-object p1
.end method

.method static synthetic -set78(Lcom/android/server/audio/AudioService$SecGlobalVariable;Landroid/os/SemHqmManager;)Landroid/os/SemHqmManager;
    .locals 0

    iput-object p1, p0, Lcom/android/server/audio/AudioService$SecGlobalVariable;->mSemHqmManager:Landroid/os/SemHqmManager;

    return-object p1
.end method

.method static synthetic -set79(Lcom/android/server/audio/AudioService$SecGlobalVariable;Lcom/android/server/audio/AudioService$SensorThread;)Lcom/android/server/audio/AudioService$SensorThread;
    .locals 0

    iput-object p1, p0, Lcom/android/server/audio/AudioService$SecGlobalVariable;->mSensorThread:Lcom/android/server/audio/AudioService$SensorThread;

    return-object p1
.end method

.method static synthetic -set8(Lcom/android/server/audio/AudioService$SecGlobalVariable;I)I
    .locals 0

    iput p1, p0, Lcom/android/server/audio/AudioService$SecGlobalVariable;->mAllSoundMute:I

    return p1
.end method

.method static synthetic -set80(Lcom/android/server/audio/AudioService$SecGlobalVariable;I)I
    .locals 0

    iput p1, p0, Lcom/android/server/audio/AudioService$SecGlobalVariable;->mSetModeOndump:I

    return p1
.end method

.method static synthetic -set81(Lcom/android/server/audio/AudioService$SecGlobalVariable;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/android/server/audio/AudioService$SecGlobalVariable;->mSetModeTime:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic -set82(Lcom/android/server/audio/AudioService$SecGlobalVariable;Lcom/android/server/audio/AudioService$AudioSettingsDBHelper;)Lcom/android/server/audio/AudioService$AudioSettingsDBHelper;
    .locals 0

    iput-object p1, p0, Lcom/android/server/audio/AudioService$SecGlobalVariable;->mSettingDBHelper:Lcom/android/server/audio/AudioService$AudioSettingsDBHelper;

    return-object p1
.end method

.method static synthetic -set83(Lcom/android/server/audio/AudioService$SecGlobalVariable;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/audio/AudioService$SecGlobalVariable;->mSilentModeOff:Z

    return p1
.end method

.method static synthetic -set84(Lcom/android/server/audio/AudioService$SecGlobalVariable;I)I
    .locals 0

    iput p1, p0, Lcom/android/server/audio/AudioService$SecGlobalVariable;->mSoundAliveEnabled:I

    return p1
.end method

.method static synthetic -set85(Lcom/android/server/audio/AudioService$SecGlobalVariable;I)I
    .locals 0

    iput p1, p0, Lcom/android/server/audio/AudioService$SecGlobalVariable;->mSoundBalance:I

    return p1
.end method

.method static synthetic -set86(Lcom/android/server/audio/AudioService$SecGlobalVariable;[I)[I
    .locals 0

    iput-object p1, p0, Lcom/android/server/audio/AudioService$SecGlobalVariable;->mSpeakerOndump:[I

    return-object p1
.end method

.method static synthetic -set87(Lcom/android/server/audio/AudioService$SecGlobalVariable;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/audio/AudioService$SecGlobalVariable;->mStatusbarExpanded:Z

    return p1
.end method

.method static synthetic -set88(Lcom/android/server/audio/AudioService$SecGlobalVariable;[Ljava/lang/String;)[Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/android/server/audio/AudioService$SecGlobalVariable;->mStreamMutePackagedump:[Ljava/lang/String;

    return-object p1
.end method

.method static synthetic -set89(Lcom/android/server/audio/AudioService$SecGlobalVariable;[I)[I
    .locals 0

    iput-object p1, p0, Lcom/android/server/audio/AudioService$SecGlobalVariable;->mStreamMutedump:[I

    return-object p1
.end method

.method static synthetic -set9(Lcom/android/server/audio/AudioService$SecGlobalVariable;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/android/server/audio/AudioService$SecGlobalVariable;->mBTAddress:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic -set90(Lcom/android/server/audio/AudioService$SecGlobalVariable;[Ljava/lang/String;)[Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/android/server/audio/AudioService$SecGlobalVariable;->mStreamToggleMutePackagedump:[Ljava/lang/String;

    return-object p1
.end method

.method static synthetic -set91(Lcom/android/server/audio/AudioService$SecGlobalVariable;[I)[I
    .locals 0

    iput-object p1, p0, Lcom/android/server/audio/AudioService$SecGlobalVariable;->mStreamToggleMutedump:[I

    return-object p1
.end method

.method static synthetic -set92(Lcom/android/server/audio/AudioService$SecGlobalVariable;[Ljava/lang/String;)[Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/android/server/audio/AudioService$SecGlobalVariable;->mStreamUnMutePackagedump:[Ljava/lang/String;

    return-object p1
.end method

.method static synthetic -set93(Lcom/android/server/audio/AudioService$SecGlobalVariable;[I)[I
    .locals 0

    iput-object p1, p0, Lcom/android/server/audio/AudioService$SecGlobalVariable;->mStreamUnMutedump:[I

    return-object p1
.end method

.method static synthetic -set94(Lcom/android/server/audio/AudioService$SecGlobalVariable;I)I
    .locals 0

    iput p1, p0, Lcom/android/server/audio/AudioService$SecGlobalVariable;->mTubeAmpEnabled:I

    return p1
.end method

.method static synthetic -set95(Lcom/android/server/audio/AudioService$SecGlobalVariable;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/audio/AudioService$SecGlobalVariable;->mUSBDetected:Z

    return p1
.end method

.method static synthetic -set96(Lcom/android/server/audio/AudioService$SecGlobalVariable;I)I
    .locals 0

    iput p1, p0, Lcom/android/server/audio/AudioService$SecGlobalVariable;->mUhqBtSampleRate:I

    return p1
.end method

.method static synthetic -set97(Lcom/android/server/audio/AudioService$SecGlobalVariable;I)I
    .locals 0

    iput p1, p0, Lcom/android/server/audio/AudioService$SecGlobalVariable;->mUpscalerEnabled:I

    return p1
.end method

.method static synthetic -set98(Lcom/android/server/audio/AudioService$SecGlobalVariable;Landroid/os/SystemVibrator;)Landroid/os/SystemVibrator;
    .locals 0

    iput-object p1, p0, Lcom/android/server/audio/AudioService$SecGlobalVariable;->mVibrator:Landroid/os/SystemVibrator;

    return-object p1
.end method

.method static synthetic -set99(Lcom/android/server/audio/AudioService$SecGlobalVariable;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/audio/AudioService$SecGlobalVariable;->mVoiceAssistant:Z

    return p1
.end method

.method constructor <init>(Lcom/android/server/audio/AudioService;)V
    .locals 9

    const/16 v8, 0xf

    const/4 v7, 0x2

    const/4 v1, 0x1

    const/4 v6, 0x0

    const/4 v2, 0x0

    iput-object p1, p0, Lcom/android/server/audio/AudioService$SecGlobalVariable;->this$0:Lcom/android/server/audio/AudioService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v2, p0, Lcom/android/server/audio/AudioService$SecGlobalVariable;->mHMTDocked:Z

    const-string/jumbo v0, "h2w"

    iput-object v0, p0, Lcom/android/server/audio/AudioService$SecGlobalVariable;->mLateBootCompleted_WiredDeviceName_real:Ljava/lang/String;

    const-string/jumbo v0, "h2w-before-boot-completed"

    iput-object v0, p0, Lcom/android/server/audio/AudioService$SecGlobalVariable;->mLateBootCompleted_WiredDeviceName_temporary:Ljava/lang/String;

    iput v1, p0, Lcom/android/server/audio/AudioService$SecGlobalVariable;->TMS_ACTION_TYPE_START:I

    iput v7, p0, Lcom/android/server/audio/AudioService$SecGlobalVariable;->TMS_ACTION_TYPE_STOP:I

    iput v2, p0, Lcom/android/server/audio/AudioService$SecGlobalVariable;->DVFS_CPU_BOOST_ACTION_TYPE_OFF:I

    iput v1, p0, Lcom/android/server/audio/AudioService$SecGlobalVariable;->DVFS_CPU_BOOST_ACTION_TYPE_VOIP:I

    iput v7, p0, Lcom/android/server/audio/AudioService$SecGlobalVariable;->DVFS_CPU_BOOST_ACTION_TYPE_EFFECT:I

    const/4 v0, 0x3

    iput v0, p0, Lcom/android/server/audio/AudioService$SecGlobalVariable;->DVFS_CPU_BOOST_ACTION_TYPE_ALL:I

    const/16 v0, 0x3e8

    iput v0, p0, Lcom/android/server/audio/AudioService$SecGlobalVariable;->DVFS_CPU_BOOST_SHORT_RETRY_DELAY_MS:I

    const/16 v0, 0x6d60

    iput v0, p0, Lcom/android/server/audio/AudioService$SecGlobalVariable;->DVFS_CPU_BOOST_RETRY_DELAY_MS:I

    iput v8, p0, Lcom/android/server/audio/AudioService$SecGlobalVariable;->DVFS_CPU_BOOST_RETRY_HALF_DELAY_MS:I

    const/16 v0, 0x7530

    iput v0, p0, Lcom/android/server/audio/AudioService$SecGlobalVariable;->DVFS_CPU_BOOST_MAX_TIME:I

    const/4 v0, 0x3

    iput v0, p0, Lcom/android/server/audio/AudioService$SecGlobalVariable;->DVFS_CPU_BOOST_RETRY_MAX_CNT:I

    const-string/jumbo v0, "com.sec.android.app.soundalive.compatibility.SAContentProvider"

    iput-object v0, p0, Lcom/android/server/audio/AudioService$SecGlobalVariable;->DVFS_SOUNDALIVE_PACKAGE_NAME:Ljava/lang/String;

    iput-object v6, p0, Lcom/android/server/audio/AudioService$SecGlobalVariable;->SOUND_EFFECTS_PATH_THEME:Ljava/lang/String;

    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v0

    const-string/jumbo v3, "SEC_FLOATING_FEATURE_AUDIO_SUPPORT_MULTI_DEVICE_SOUND"

    invoke-virtual {v0, v3}, Lcom/samsung/android/feature/SemFloatingFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/audio/AudioService$SecGlobalVariable;->MULTISOUND_ENABLED:Z

    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v0

    const-string/jumbo v3, "SEC_FLOATING_FEATURE_AUDIO_SUPPORT_PSEUDO_DUAL_SPEAKER"

    invoke-virtual {v0, v3}, Lcom/samsung/android/feature/SemFloatingFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/audio/AudioService$SecGlobalVariable;->PSEUDO_DUAL_SPEAKER_ENABLED:Z

    const/4 v0, 0x4

    new-array v0, v0, [[Ljava/lang/String;

    const/16 v3, 0x13

    new-array v3, v3, [Ljava/lang/String;

    const-string/jumbo v4, "HW_CSPT"

    aput-object v4, v3, v2

    const-string/jumbo v4, "HW_CSPV"

    aput-object v4, v3, v1

    const-string/jumbo v4, "HW_CSPC"

    aput-object v4, v3, v7

    const-string/jumbo v4, "HW_CRET"

    const/4 v5, 0x3

    aput-object v4, v3, v5

    const-string/jumbo v4, "HW_CREV"

    const/4 v5, 0x4

    aput-object v4, v3, v5

    const-string/jumbo v4, "HW_CREC"

    const/4 v5, 0x5

    aput-object v4, v3, v5

    const-string/jumbo v4, "HW_CEAT"

    const/4 v5, 0x6

    aput-object v4, v3, v5

    const-string/jumbo v4, "HW_CEAV"

    const/4 v5, 0x7

    aput-object v4, v3, v5

    const-string/jumbo v4, "HW_CEAC"

    const/16 v5, 0x8

    aput-object v4, v3, v5

    const-string/jumbo v4, "HW_REVC"

    const/16 v5, 0x9

    aput-object v4, v3, v5

    const-string/jumbo v4, "HW_CUSC"

    const/16 v5, 0xa

    aput-object v4, v3, v5

    const-string/jumbo v4, "HW_VOTI"

    const/16 v5, 0xb

    aput-object v4, v3, v5

    const-string/jumbo v4, "HW_VSPV"

    const/16 v5, 0xc

    aput-object v4, v3, v5

    const-string/jumbo v4, "HW_VSPC"

    const/16 v5, 0xd

    aput-object v4, v3, v5

    const-string/jumbo v4, "HW_VREV"

    const/16 v5, 0xe

    aput-object v4, v3, v5

    const-string/jumbo v4, "HW_VREC"

    aput-object v4, v3, v8

    const-string/jumbo v4, "HW_EVSC"

    const/16 v5, 0x10

    aput-object v4, v3, v5

    const-string/jumbo v4, "HW_CBTT"

    const/16 v5, 0x11

    aput-object v4, v3, v5

    const-string/jumbo v4, "HW_CBTC"

    const/16 v5, 0x12

    aput-object v4, v3, v5

    aput-object v3, v0, v2

    const/16 v3, 0x11

    new-array v3, v3, [Ljava/lang/String;

    const-string/jumbo v4, "HW_MSPT"

    aput-object v4, v3, v2

    const-string/jumbo v4, "HW_MSPV"

    aput-object v4, v3, v1

    const-string/jumbo v4, "HW_MSPC"

    aput-object v4, v3, v7

    const-string/jumbo v4, "HW_MEAT"

    const/4 v5, 0x3

    aput-object v4, v3, v5

    const-string/jumbo v4, "HW_MEAV"

    const/4 v5, 0x4

    aput-object v4, v3, v5

    const-string/jumbo v4, "HW_MEAC"

    const/4 v5, 0x5

    aput-object v4, v3, v5

    const-string/jumbo v4, "HW_MBTT"

    const/4 v5, 0x6

    aput-object v4, v3, v5

    const-string/jumbo v4, "HW_MBTV"

    const/4 v5, 0x7

    aput-object v4, v3, v5

    const-string/jumbo v4, "HW_MBTC"

    const/16 v5, 0x8

    aput-object v4, v3, v5

    const-string/jumbo v4, "HW_MUST"

    const/16 v5, 0x9

    aput-object v4, v3, v5

    const-string/jumbo v4, "HW_MUSV"

    const/16 v5, 0xa

    aput-object v4, v3, v5

    const-string/jumbo v4, "HW_MUSC"

    const/16 v5, 0xb

    aput-object v4, v3, v5

    const-string/jumbo v4, "HW_3EJC"

    const/16 v5, 0xc

    aput-object v4, v3, v5

    const-string/jumbo v4, "HW_4EJC"

    const/16 v5, 0xd

    aput-object v4, v3, v5

    const-string/jumbo v4, "HW_MEDT"

    const/16 v5, 0xe

    aput-object v4, v3, v5

    const-string/jumbo v4, "HW_MEDV"

    aput-object v4, v3, v8

    const-string/jumbo v4, "HW_MEDC"

    const/16 v5, 0x10

    aput-object v4, v3, v5

    aput-object v3, v0, v1

    const/16 v3, 0x11

    new-array v3, v3, [Ljava/lang/String;

    const-string/jumbo v4, "CR_MTIP"

    aput-object v4, v3, v2

    const-string/jumbo v4, "FM_FWBT"

    aput-object v4, v3, v1

    const-string/jumbo v4, "FM_FVBT"

    aput-object v4, v3, v7

    const-string/jumbo v4, "PP_MSOC"

    const/4 v5, 0x3

    aput-object v4, v3, v5

    const-string/jumbo v4, "PP_MSPA"

    const/4 v5, 0x4

    aput-object v4, v3, v5

    const-string/jumbo v4, "PP_MSDS"

    const/4 v5, 0x5

    aput-object v4, v3, v5

    const-string/jumbo v4, "PP_MSDB"

    const/4 v5, 0x6

    aput-object v4, v3, v5

    const-string/jumbo v4, "PP_MSAF"

    const/4 v5, 0x7

    aput-object v4, v3, v5

    const-string/jumbo v4, "PP_MSST"

    const/16 v5, 0x8

    aput-object v4, v3, v5

    const-string/jumbo v4, "PP_MSSC"

    const/16 v5, 0x9

    aput-object v4, v3, v5

    const-string/jumbo v4, "PP_MSET"

    const/16 v5, 0xa

    aput-object v4, v3, v5

    const-string/jumbo v4, "PP_MSEC"

    const/16 v5, 0xb

    aput-object v4, v3, v5

    const-string/jumbo v4, "PP_MSBT"

    const/16 v5, 0xc

    aput-object v4, v3, v5

    const-string/jumbo v4, "PP_MSBC"

    const/16 v5, 0xd

    aput-object v4, v3, v5

    const-string/jumbo v4, "PP_MSUT"

    const/16 v5, 0xe

    aput-object v4, v3, v5

    const-string/jumbo v4, "PP_MSUC"

    aput-object v4, v3, v8

    const-string/jumbo v4, "FW_CRFC"

    const/16 v5, 0x10

    aput-object v4, v3, v5

    aput-object v3, v0, v7

    new-array v3, v1, [Ljava/lang/String;

    const-string/jumbo v4, "FW_CRVC"

    aput-object v4, v3, v2

    const/4 v4, 0x3

    aput-object v3, v0, v4

    iput-object v0, p0, Lcom/android/server/audio/AudioService$SecGlobalVariable;->BIGDATA_ITEM:[[Ljava/lang/String;

    new-array v0, v8, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/android/server/audio/AudioService$SecGlobalVariable;->MAX_STREAM_VOLUME2:[I

    new-array v0, v8, [I

    fill-array-data v0, :array_1

    iput-object v0, p0, Lcom/android/server/audio/AudioService$SecGlobalVariable;->MAX_STREAM_VOLUME_DOUBLE:[I

    iput v2, p0, Lcom/android/server/audio/AudioService$SecGlobalVariable;->mZenMode:I

    iput v7, p0, Lcom/android/server/audio/AudioService$SecGlobalVariable;->mPrevRingerMode:I

    iput-object v6, p0, Lcom/android/server/audio/AudioService$SecGlobalVariable;->mLastConnectedDevice:Lcom/android/server/audio/AudioService$DeviceListSpec;

    iput v2, p0, Lcom/android/server/audio/AudioService$SecGlobalVariable;->mForceSpeaker:I

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/audio/AudioService$SecGlobalVariable;->mForceControlStreamPid:I

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/audio/AudioService$SecGlobalVariable;->mForceControlStreamUid:I

    iput-object v6, p0, Lcom/android/server/audio/AudioService$SecGlobalVariable;->mKeyguardManager:Landroid/app/KeyguardManager;

    iput-object v6, p0, Lcom/android/server/audio/AudioService$SecGlobalVariable;->mMediaSessionService:Lcom/android/server/media/MediaSessionService$MediaSessionServiceInternal;

    const/16 v0, 0x3e8

    iput v0, p0, Lcom/android/server/audio/AudioService$SecGlobalVariable;->FINE_VOLUME_OFFSET:I

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/audio/AudioService$SecGlobalVariable;->mForegroundUid:I

    new-instance v0, Lcom/android/server/audio/AudioService$SecGlobalVariable$1;

    invoke-direct {v0, p0}, Lcom/android/server/audio/AudioService$SecGlobalVariable$1;-><init>(Lcom/android/server/audio/AudioService$SecGlobalVariable;)V

    iput-object v0, p0, Lcom/android/server/audio/AudioService$SecGlobalVariable;->mProcessObserver:Landroid/app/IProcessObserver;

    const/16 v0, 0x400e

    iput v0, p0, Lcom/android/server/audio/AudioService$SecGlobalVariable;->primaryDevice:I

    iput-boolean v2, p0, Lcom/android/server/audio/AudioService$SecGlobalVariable;->mCurRCVBackOffState:Z

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v0

    const-string/jumbo v3, "CscFeature_Audio_ConfigActionVolumeKey"

    invoke-virtual {v0, v3}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/audio/AudioService$SecGlobalVariable;->ConfigVolumeKey:Ljava/lang/String;

    const-string/jumbo v0, "Silent"

    iget-object v3, p0, Lcom/android/server/audio/AudioService$SecGlobalVariable;->ConfigVolumeKey:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/android/server/audio/AudioService$SecGlobalVariable;->volumeDownToSilent:Z

    const-string/jumbo v0, "android.intent.action.Launch_Setting"

    iput-object v0, p0, Lcom/android/server/audio/AudioService$SecGlobalVariable;->ACTION_LAUNCH_SETTING:Ljava/lang/String;

    const-string/jumbo v0, "android.intent.action.SAS_NOTIFICATION_CLEAR"

    iput-object v0, p0, Lcom/android/server/audio/AudioService$SecGlobalVariable;->ACTION_NOTIFICATION_CLOSE:Ljava/lang/String;

    const-string/jumbo v0, "android.intent.action.TurnOff_MultiSound"

    iput-object v0, p0, Lcom/android/server/audio/AudioService$SecGlobalVariable;->ACTION_TURN_OFF_MULTISOUND:Ljava/lang/String;

    const-string/jumbo v0, "android.intent.action.Headup_Notification_Close"

    iput-object v0, p0, Lcom/android/server/audio/AudioService$SecGlobalVariable;->ACTION_HEADUP_NOTIFICATION_CLOSE:Ljava/lang/String;

    const-string/jumbo v0, "android.intent.action.Headup_Notification_ChangeDevice"

    iput-object v0, p0, Lcom/android/server/audio/AudioService$SecGlobalVariable;->ACTION_HEADUP_NOTIFICATION_CHANGE_DEVICE:Ljava/lang/String;

    const-string/jumbo v0, "android.intent.action.MULTISOUND_STATE_CHANGE"

    iput-object v0, p0, Lcom/android/server/audio/AudioService$SecGlobalVariable;->ACTION_MULTISOUND_STATE_CHANGE:Ljava/lang/String;

    const/16 v0, 0x3ec

    iput v0, p0, Lcom/android/server/audio/AudioService$SecGlobalVariable;->ID_MULTISOUND_NOTIFICATION:I

    const/16 v0, 0x3ed

    iput v0, p0, Lcom/android/server/audio/AudioService$SecGlobalVariable;->ID_MULTISOUND_HEADUP_NOTIFICATION:I

    iput-object v6, p0, Lcom/android/server/audio/AudioService$SecGlobalVariable;->multiSoundToast:Landroid/widget/Toast;

    const-string/jumbo v0, "multisound_state"

    iput-object v0, p0, Lcom/android/server/audio/AudioService$SecGlobalVariable;->MULTISOUND_STATE:Ljava/lang/String;

    const-string/jumbo v0, "sec.app.policy.UPDATE.audio"

    iput-object v0, p0, Lcom/android/server/audio/AudioService$SecGlobalVariable;->ACTION_EFFECT_POLICY:Ljava/lang/String;

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/android/server/audio/AudioService$SecGlobalVariable;->mBTAddress:Ljava/lang/String;

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/android/server/audio/AudioService$SecGlobalVariable;->m1stBTAddr:Ljava/lang/String;

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/android/server/audio/AudioService$SecGlobalVariable;->m2ndBTAddr:Ljava/lang/String;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/audio/AudioService$SecGlobalVariable;->mConnectedBTList:Ljava/util/ArrayList;

    iput-boolean v2, p0, Lcom/android/server/audio/AudioService$SecGlobalVariable;->mMediaSilentMode:Z

    iput v2, p0, Lcom/android/server/audio/AudioService$SecGlobalVariable;->mMediaLastAudibleIndex:I

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/audio/AudioService$SecGlobalVariable;->mLateBootCompleted_WiredDevice:I

    iput-boolean v2, p0, Lcom/android/server/audio/AudioService$SecGlobalVariable;->mIsMicMute:Z

    const/4 v0, 0x5

    iput v0, p0, Lcom/android/server/audio/AudioService$SecGlobalVariable;->COUNT_SETVOLUME:I

    const/16 v0, 0xa

    iput v0, p0, Lcom/android/server/audio/AudioService$SecGlobalVariable;->COUNT_MODEON:I

    iput-boolean v2, p0, Lcom/android/server/audio/AudioService$SecGlobalVariable;->mIsTogether:Z

    iput-boolean v2, p0, Lcom/android/server/audio/AudioService$SecGlobalVariable;->mIsCoverSafetyVolume:Z

    iput-boolean v2, p0, Lcom/android/server/audio/AudioService$SecGlobalVariable;->mSplitSound:Z

    iput-boolean v2, p0, Lcom/android/server/audio/AudioService$SecGlobalVariable;->mIsExceptionalDevice:Z

    const-string/jumbo v0, "com.android.server.telecom"

    iput-object v0, p0, Lcom/android/server/audio/AudioService$SecGlobalVariable;->PHONE_PACKAGE_NAME:Ljava/lang/String;

    const-string/jumbo v0, "com.sec.android.app.voicenote"

    iput-object v0, p0, Lcom/android/server/audio/AudioService$SecGlobalVariable;->VOICENOTE_PACKAGE_NAME:Ljava/lang/String;

    const-string/jumbo v0, "com.android.settings"

    iput-object v0, p0, Lcom/android/server/audio/AudioService$SecGlobalVariable;->SETTING_PACKAGE_NAME:Ljava/lang/String;

    iput-boolean v2, p0, Lcom/android/server/audio/AudioService$SecGlobalVariable;->mIsMediaVolumeBackup:Z

    const/4 v0, 0x6

    new-array v0, v0, [I

    fill-array-data v0, :array_2

    iput-object v0, p0, Lcom/android/server/audio/AudioService$SecGlobalVariable;->mMediaVolumeBackup:[I

    iput-object v6, p0, Lcom/android/server/audio/AudioService$SecGlobalVariable;->semDvfsCpuMin:Lcom/samsung/android/os/SemDvfsManager;

    iput v2, p0, Lcom/android/server/audio/AudioService$SecGlobalVariable;->mCPUBoostType:I

    iput v2, p0, Lcom/android/server/audio/AudioService$SecGlobalVariable;->mCPUBoostValueForVoip:I

    iput v2, p0, Lcom/android/server/audio/AudioService$SecGlobalVariable;->mCPUBoostValueForEffect:I

    iput v2, p0, Lcom/android/server/audio/AudioService$SecGlobalVariable;->mCPUBoostTryCnt:I

    iput v2, p0, Lcom/android/server/audio/AudioService$SecGlobalVariable;->mCPUBoostTryStandbyCnt:I

    iput-boolean v1, p0, Lcom/android/server/audio/AudioService$SecGlobalVariable;->mIsScreenState:Z

    iput-object v6, p0, Lcom/android/server/audio/AudioService$SecGlobalVariable;->semLowPowerMode:Lcom/samsung/android/os/SemDvfsManager;

    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v0

    const-string/jumbo v3, "SEC_FLOATING_FEATURE_AUDIO_SUPPORT_LOW_POWER_MODE"

    invoke-virtual {v0, v3}, Lcom/samsung/android/feature/SemFloatingFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/audio/AudioService$SecGlobalVariable;->LPM_ENABLED:Z

    iput-boolean v2, p0, Lcom/android/server/audio/AudioService$SecGlobalVariable;->mUSBDetected:Z

    iput-boolean v2, p0, Lcom/android/server/audio/AudioService$SecGlobalVariable;->mFakeState:Z

    iput-boolean v2, p0, Lcom/android/server/audio/AudioService$SecGlobalVariable;->mIsEarCareSettingOn:Z

    iput-object v6, p0, Lcom/android/server/audio/AudioService$SecGlobalVariable;->emergencyManager:Lcom/samsung/android/emergencymode/SemEmergencyManager;

    iput-boolean v2, p0, Lcom/android/server/audio/AudioService$SecGlobalVariable;->mOldIsSmartdock:Z

    iput-object v6, p0, Lcom/android/server/audio/AudioService$SecGlobalVariable;->mCoverManager:Lcom/samsung/android/cover/CoverManager;

    iput-object v6, p0, Lcom/android/server/audio/AudioService$SecGlobalVariable;->mSContextManager:Landroid/hardware/scontext/SContextManager;

    iput-boolean v2, p0, Lcom/android/server/audio/AudioService$SecGlobalVariable;->mSilentModeOff:Z

    iput-boolean v2, p0, Lcom/android/server/audio/AudioService$SecGlobalVariable;->mIsPlaySilentModeOff:Z

    iput-object v6, p0, Lcom/android/server/audio/AudioService$SecGlobalVariable;->mGameManagerService:Lcom/samsung/android/game/IGameManagerService;

    new-instance v0, Lcom/android/server/audio/AudioService$RampInPreset;

    invoke-direct {v0}, Lcom/android/server/audio/AudioService$RampInPreset;-><init>()V

    iput-object v0, p0, Lcom/android/server/audio/AudioService$SecGlobalVariable;->defaultPreset:Lcom/android/server/audio/AudioService$RampInPreset;

    new-instance v0, Lcom/android/server/audio/AudioService$RampInPreset;

    const-string/jumbo v3, "dual_spk_on_off"

    invoke-direct {v0, v3}, Lcom/android/server/audio/AudioService$RampInPreset;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/audio/AudioService$SecGlobalVariable;->dualspkPreset:Lcom/android/server/audio/AudioService$RampInPreset;

    iput-object v6, p0, Lcom/android/server/audio/AudioService$SecGlobalVariable;->mSensorThread:Lcom/android/server/audio/AudioService$SensorThread;

    iput-boolean v2, p0, Lcom/android/server/audio/AudioService$SecGlobalVariable;->mFlatMotionChangedDuringRingtone:Z

    iput-boolean v1, p0, Lcom/android/server/audio/AudioService$SecGlobalVariable;->UHQ_ENABLED:Z

    iput-boolean v1, p0, Lcom/android/server/audio/AudioService$SecGlobalVariable;->FINE_VOLUME_ENABLED:Z

    const-string/jumbo v0, "hearing_musiccheck"

    iput-object v0, p0, Lcom/android/server/audio/AudioService$SecGlobalVariable;->SETTING_ADAPTSOUND_CHECKED:Ljava/lang/String;

    const-string/jumbo v0, "sound_alive_effect"

    iput-object v0, p0, Lcom/android/server/audio/AudioService$SecGlobalVariable;->SETTING_SOUNDALIVE_CHECKED:Ljava/lang/String;

    const-string/jumbo v0, "k2hd_effect"

    iput-object v0, p0, Lcom/android/server/audio/AudioService$SecGlobalVariable;->SETTING_UPSCALER_CHECKED:Ljava/lang/String;

    const-string/jumbo v0, "k2hd_effect_from_user"

    iput-object v0, p0, Lcom/android/server/audio/AudioService$SecGlobalVariable;->SETTING_UPSCALER_FROM_USER:Ljava/lang/String;

    const-string/jumbo v0, "tube_amp_effect"

    iput-object v0, p0, Lcom/android/server/audio/AudioService$SecGlobalVariable;->SETTING_TUBEAMP_CHECKED:Ljava/lang/String;

    const-string/jumbo v0, "mono_audio_db"

    iput-object v0, p0, Lcom/android/server/audio/AudioService$SecGlobalVariable;->SETTING_MONO_AUDIO:Ljava/lang/String;

    const-string/jumbo v0, "sound_balance"

    iput-object v0, p0, Lcom/android/server/audio/AudioService$SecGlobalVariable;->SETTING_SOUND_BALANCE:Ljava/lang/String;

    const-string/jumbo v0, "all_sound_off"

    iput-object v0, p0, Lcom/android/server/audio/AudioService$SecGlobalVariable;->SETTING_ALL_SOUND_OFF:Ljava/lang/String;

    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v0

    const-string/jumbo v3, "SEC_FLOATING_FEATURE_COMMON_SUPPORT_HIGH_PERFORMANCE_MODE"

    invoke-virtual {v0, v3, v2}, Lcom/samsung/android/feature/SemFloatingFeature;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/audio/AudioService$SecGlobalVariable;->SUPPORT_BOOST_MODE:Z

    const-string/jumbo v0, "sem_perfomance_mode"

    iput-object v0, p0, Lcom/android/server/audio/AudioService$SecGlobalVariable;->SETTING_BOOSTMODE_VALUE:Ljava/lang/String;

    const-string/jumbo v0, "pbm_uhq_upscaler"

    iput-object v0, p0, Lcom/android/server/audio/AudioService$SecGlobalVariable;->SETTING_BOOSTMODE_UPSCALER_VALUE:Ljava/lang/String;

    iput v7, p0, Lcom/android/server/audio/AudioService$SecGlobalVariable;->SETTING_BOOSTMODE_ENTERTAINMENT:I

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/audio/AudioService$SecGlobalVariable;->mModeListOndump:Landroid/util/SparseArray;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/audio/AudioService$SecGlobalVariable;->mModeHisList:Ljava/util/ArrayList;

    const-string/jumbo v0, "/efs/FactoryApp/earjack_count"

    iput-object v0, p0, Lcom/android/server/audio/AudioService$SecGlobalVariable;->EARJACK_COUNT_PATH:Ljava/lang/String;

    const-string/jumbo v0, "10"

    iput-object v0, p0, Lcom/android/server/audio/AudioService$SecGlobalVariable;->SMART_DOCK_CONNECTED:Ljava/lang/String;

    new-array v0, v7, [Ljava/lang/String;

    const-string/jumbo v3, "Smart Dock with TA"

    aput-object v3, v0, v2

    const-string/jumbo v3, "Smart Dock+TA"

    aput-object v3, v0, v1

    iput-object v0, p0, Lcom/android/server/audio/AudioService$SecGlobalVariable;->DOCK_DEVICE_NAME:[Ljava/lang/String;

    const-string/jumbo v0, "com.samsung.flipfolder.OPEN"

    iput-object v0, p0, Lcom/android/server/audio/AudioService$SecGlobalVariable;->FOLDER_OPENED:Ljava/lang/String;

    iput-boolean v2, p0, Lcom/android/server/audio/AudioService$SecGlobalVariable;->mIsFolderOpen:Z

    iput-boolean v2, p0, Lcom/android/server/audio/AudioService$SecGlobalVariable;->mIsFactoryMode:Z

    iput-boolean v2, p0, Lcom/android/server/audio/AudioService$SecGlobalVariable;->mIsFactorySim:Z

    iput-object v6, p0, Lcom/android/server/audio/AudioService$SecGlobalVariable;->mVibrator:Landroid/os/SystemVibrator;

    iput-boolean v2, p0, Lcom/android/server/audio/AudioService$SecGlobalVariable;->mIsVibrate:Z

    new-instance v0, Lcom/android/server/audio/AudioService$SoundKitchen;

    iget-object v3, p0, Lcom/android/server/audio/AudioService$SecGlobalVariable;->this$0:Lcom/android/server/audio/AudioService;

    invoke-direct {v0, v3}, Lcom/android/server/audio/AudioService$SoundKitchen;-><init>(Lcom/android/server/audio/AudioService;)V

    iput-object v0, p0, Lcom/android/server/audio/AudioService$SecGlobalVariable;->mSoundKitchen:Lcom/android/server/audio/AudioService$SoundKitchen;

    iput-object v6, p0, Lcom/android/server/audio/AudioService$SecGlobalVariable;->mCategorizer:Lcom/android/server/audio/AudioService$AppCategorizer;

    iput-short v1, p0, Lcom/android/server/audio/AudioService$SecGlobalVariable;->mHallSensorType:S

    iput-boolean v2, p0, Lcom/android/server/audio/AudioService$SecGlobalVariable;->mBtNxpShareIF_LSI:Z

    iput-boolean v2, p0, Lcom/android/server/audio/AudioService$SecGlobalVariable;->mIsDefaultStreamNotification:Z

    iput v2, p0, Lcom/android/server/audio/AudioService$SecGlobalVariable;->mIsScreenOffMusicOn:I

    iput-object v6, p0, Lcom/android/server/audio/AudioService$SecGlobalVariable;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    iput-boolean v2, p0, Lcom/android/server/audio/AudioService$SecGlobalVariable;->mbVolumeLimitOn:Z

    iput v8, p0, Lcom/android/server/audio/AudioService$SecGlobalVariable;->mVolumeLimitValue:I

    iput v8, p0, Lcom/android/server/audio/AudioService$SecGlobalVariable;->LIMITER_MAXIMUM_LEVEL:I

    iput-object v6, p0, Lcom/android/server/audio/AudioService$SecGlobalVariable;->mAlarmManager:Landroid/app/AlarmManager;

    const v0, 0x36ee80

    iput v0, p0, Lcom/android/server/audio/AudioService$SecGlobalVariable;->MS_PER_HOUR:I

    const-string/jumbo v0, "com.sec.media.action.AUDIOCORE_LOGGING"

    iput-object v0, p0, Lcom/android/server/audio/AudioService$SecGlobalVariable;->ACTING_AUDIOCORE_LOGGING:Ljava/lang/String;

    const-string/jumbo v0, "com.sec.android.intent.action.DHR_HQM_REFRESH_REQ"

    iput-object v0, p0, Lcom/android/server/audio/AudioService$SecGlobalVariable;->ACTING_AUDIOCORE_BIGDATA_APP:Ljava/lang/String;

    iput-object v6, p0, Lcom/android/server/audio/AudioService$SecGlobalVariable;->mSemHqmManager:Landroid/os/SemHqmManager;

    iput-boolean v2, p0, Lcom/android/server/audio/AudioService$SecGlobalVariable;->mIsBigdataApp:Z

    const/4 v0, 0x4

    iput v0, p0, Lcom/android/server/audio/AudioService$SecGlobalVariable;->LOGGING_TYPE_SIZE:I

    iput-boolean v2, p0, Lcom/android/server/audio/AudioService$SecGlobalVariable;->SUPPORT_HQM:Z

    iput v2, p0, Lcom/android/server/audio/AudioService$SecGlobalVariable;->changeRecVolCnt:I

    const-wide/16 v4, 0x0

    iput-wide v4, p0, Lcom/android/server/audio/AudioService$SecGlobalVariable;->mLastBluetoothA2dpDisconnectionTime:J

    const/16 v0, 0x3e8

    iput v0, p0, Lcom/android/server/audio/AudioService$SecGlobalVariable;->reconnectDelay:I

    const-string/jumbo v0, "com.samsung.intent.action.SOUND_OFF_TOAST"

    iput-object v0, p0, Lcom/android/server/audio/AudioService$SecGlobalVariable;->ACTION_SOUND_OFF_TOAST:Ljava/lang/String;

    iput-boolean v2, p0, Lcom/android/server/audio/AudioService$SecGlobalVariable;->mIsTalkBackEnabled:Z

    iput-object v6, p0, Lcom/android/server/audio/AudioService$SecGlobalVariable;->allSoundMuteToast:Landroid/widget/Toast;

    iput-boolean v2, p0, Lcom/android/server/audio/AudioService$SecGlobalVariable;->mAdjustMediaVolumeOnly:Z

    iput-boolean v2, p0, Lcom/android/server/audio/AudioService$SecGlobalVariable;->mEnableSoundAssistant:Z

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/audio/AudioService$SecGlobalVariable;->mIgnoreAudioFocusUid:I

    iput-object v6, p0, Lcom/android/server/audio/AudioService$SecGlobalVariable;->mSettingDBHelper:Lcom/android/server/audio/AudioService$AudioSettingsDBHelper;

    sget v0, Landroid/os/Build$VERSION;->SEM_INT:I

    const/16 v3, 0x963

    if-lt v0, v3, :cond_1

    move v0, v1

    :goto_1
    iput-boolean v0, p0, Lcom/android/server/audio/AudioService$SecGlobalVariable;->mIsHWVolumeControlEnable:Z

    iput-boolean v2, p0, Lcom/android/server/audio/AudioService$SecGlobalVariable;->mIsSupportDisplayVolumeControl:Z

    iput-boolean v2, p0, Lcom/android/server/audio/AudioService$SecGlobalVariable;->mScreenSharingStateResumed:Z

    iput-boolean v2, p0, Lcom/android/server/audio/AudioService$SecGlobalVariable;->mIsDLNAStatus:Z

    const-string/jumbo v0, "com.samsung.intent.action.DLNA_STATUS_CHANGED"

    iput-object v0, p0, Lcom/android/server/audio/AudioService$SecGlobalVariable;->ACTION_DLNA_STATUS:Ljava/lang/String;

    const-string/jumbo v0, "com.samsung.android.soundassistant"

    iput-object v0, p0, Lcom/android/server/audio/AudioService$SecGlobalVariable;->SOUNDASSISTANT_PACKAGE:Ljava/lang/String;

    new-instance v0, Landroid/util/SparseIntArray;

    const/4 v3, 0x5

    invoke-direct {v0, v3}, Landroid/util/SparseIntArray;-><init>(I)V

    iput-object v0, p0, Lcom/android/server/audio/AudioService$SecGlobalVariable;->mAppVolumeFromSoundAssistant:Landroid/util/SparseIntArray;

    const/16 v0, 0xa

    iput v0, p0, Lcom/android/server/audio/AudioService$SecGlobalVariable;->mMediaVolumeStepIndex:I

    iput v2, p0, Lcom/android/server/audio/AudioService$SecGlobalVariable;->mHeadsetOnlyStream:I

    iput v2, p0, Lcom/android/server/audio/AudioService$SecGlobalVariable;->mLRSwitching:I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/android/server/audio/AudioService$SecGlobalVariable;->mEventReceivers:Ljava/util/ArrayList;

    iput-object v6, p0, Lcom/android/server/audio/AudioService$SecGlobalVariable;->mDesktopModeManager:Lcom/samsung/android/desktopmode/SemDesktopModeManager;

    const-string/jumbo v0, "com.sec.media.action.mute_interval"

    iput-object v0, p0, Lcom/android/server/audio/AudioService$SecGlobalVariable;->ACTING_CHECKING_MUTE_INTERVAL:Ljava/lang/String;

    const-string/jumbo v0, "com.sec.android.intent.action.SAFE_MEDIA_VOLUME_ACTIVE"

    iput-object v0, p0, Lcom/android/server/audio/AudioService$SecGlobalVariable;->ACTION_SAFE_MEDIA_VOLUME_ACTIVE:Ljava/lang/String;

    const/16 v0, 0x180

    iput v0, p0, Lcom/android/server/audio/AudioService$SecGlobalVariable;->mSafeMediaVolumeDevicesForA2DP:I

    iput v2, p0, Lcom/android/server/audio/AudioService$SecGlobalVariable;->mMuteIntervalMs:I

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/audio/AudioService$SecGlobalVariable;->mSafeMediaVolumeStateLock:Ljava/lang/Object;

    const/16 v0, 0x2713

    iput v0, p0, Lcom/android/server/audio/AudioService$SecGlobalVariable;->STREAM_MULTI_SOUND:I

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/audio/AudioService$SecGlobalVariable;->mVolumeControllerStream:I

    iput-object v6, p0, Lcom/android/server/audio/AudioService$SecGlobalVariable;->mVolumeSteps:[I

    iput-object v6, p0, Lcom/android/server/audio/AudioService$SecGlobalVariable;->mVolumeMap:[Lcom/android/server/audio/AudioService$VolumeMap;

    return-void

    :cond_0
    move v0, v2

    goto/16 :goto_0

    :cond_1
    move v0, v2

    goto :goto_1

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
        0x1e
        0x5
        0x5
        0x1e
    .end array-data

    :array_2
    .array-data 4
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
    .end array-data
.end method
