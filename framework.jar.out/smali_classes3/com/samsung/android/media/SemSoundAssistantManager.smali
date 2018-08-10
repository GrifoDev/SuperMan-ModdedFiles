.class public Lcom/samsung/android/media/SemSoundAssistantManager;
.super Ljava/lang/Object;
.source "SemSoundAssistantManager.java"


# static fields
.field public static final ACTION_SOUND_EVENT_CHANGED:Ljava/lang/String; = "com.samsung.android.intent.action.SOUND_EVENT"

.field public static final ADJUST_MEDIA_ONLY:Ljava/lang/String; = "adjust_media_volume_only"

.field public static final DEVICE_BLUETOOTH:I = 0x2

.field public static final DEVICE_DEFAULT:I = 0x0

.field public static final DEVICE_HEADSET:I = 0x3

.field public static final DEVICE_SPEAKER_OR_HEADSET:I = 0x1

.field public static final ENABLE_FLOATING_BUTTON:Ljava/lang/String; = "enable_floating_button"

.field public static final GET_APP_VOLUME_LIST:Ljava/lang/String; = "get_app_volume_list"

.field public static final IGNORE_AUDIO_FOCUS:Ljava/lang/String; = "ignore_audio_focus"

.field public static final MEDIA_VOLUME_MULTI_STEP:Ljava/lang/String; = "sec_volume_steps"

.field public static final MEDIA_VOLUME_STEP_DEFAULT:I = 0xa

.field public static final MEDIA_VOLUME_STEP_INDEX:Ljava/lang/String; = "media_volume_step_index"

.field public static final MEDIA_VOLUME_STEP_MAX:I = 0xa

.field public static final MEDIA_VOLUME_STEP_MIN:I = 0x1

.field public static final MODE_ADJUST_MEDIA_VOLUME_ONLY:I = 0x1

.field public static final MODE_DEFAULT:I = 0x0

.field public static final MONO_SOUND:Ljava/lang/String; = "mono_sound"

.field public static final PARAMETER_PREFIX:Ljava/lang/String; = "sound_assistant"

.field public static final REMOVE_APP_VOLUME:Ljava/lang/String; = "remove_app_volume"

.field public static final RINGTONE_THROUGH_HEADSET_ONLY:Ljava/lang/String; = "ring_through_headset"

.field public static final SELFIESTICK:Ljava/lang/String; = "selfiestick"

.field public static final SELFIESTICK_CONNECTED:Ljava/lang/String; = "selfiestick_connected"

.field public static final SET_FORCE_OUTPUT_FOR_APP:Ljava/lang/String; = "set_force_output_for_app"

.field public static final SOUNDSETTING_EVENT_A2DP_CONNECTION_CHANGED:I = 0x8

.field public static final SOUNDSETTING_EVENT_HEADSET_CONNECTION_CHANGED:I = 0x4

.field public static final SOUNDSETTING_EVENT_MEDIA_MUTE_CHANGED:I = 0x2

.field public static final SOUNDSETTING_EVENT_NONE:I = 0x0

.field public static final SOUNDSETTING_EVENT_PLAYBACK_STATE_CHANGED:I = 0x10

.field public static final SOUNDSETTING_EVENT_RINGERMODE_CHANGED:I = 0x1

.field public static final SOUNDSETTING_EVENT_VOLUMEKEY_LONGPRESS:I = 0x20

.field public static final SOUNDSETTING_EXTRA_EVENT_CALLING_PACKAGE:Ljava/lang/String; = "package"

.field public static final SOUNDSETTING_EXTRA_EVENT_TYPE:Ljava/lang/String; = "type"

.field public static final SOUNDSETTING_EXTRA_EVENT_VALUE:Ljava/lang/String; = "value"

.field public static final SOUND_BALANCE:Ljava/lang/String; = "sound_balance"

.field public static final SOUND_LR_SWITCH:Ljava/lang/String; = "sound_lr_switch"

.field private static final TAG:Ljava/lang/String; = "SemSoundAssistant"

.field public static final UID_FOR_SOUNDASSISTANT:Ljava/lang/String; = "uid_for_soundassistant"

.field public static final VERSION:Ljava/lang/String; = "version"

.field private static sService:Landroid/media/IAudioService;


# instance fields
.field private mApplicationContext:Landroid/content/Context;

.field private mAudioManager:Landroid/media/AudioManager;

.field private mOriginalContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-direct {p0, p1}, Lcom/samsung/android/media/SemSoundAssistantManager;->setContext(Landroid/content/Context;)V

    invoke-direct {p0}, Lcom/samsung/android/media/SemSoundAssistantManager;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "audio"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/samsung/android/media/SemSoundAssistantManager;->mAudioManager:Landroid/media/AudioManager;

    return-void
.end method

.method private getContext()Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/media/SemSoundAssistantManager;->mApplicationContext:Landroid/content/Context;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/media/SemSoundAssistantManager;->mOriginalContext:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/samsung/android/media/SemSoundAssistantManager;->setContext(Landroid/content/Context;)V

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/media/SemSoundAssistantManager;->mApplicationContext:Landroid/content/Context;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/media/SemSoundAssistantManager;->mApplicationContext:Landroid/content/Context;

    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/media/SemSoundAssistantManager;->mOriginalContext:Landroid/content/Context;

    return-object v0
.end method

.method private getIntegerArrayFromString(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    const/4 v5, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_1

    :cond_0
    return-object v5

    :cond_1
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    new-instance v2, Ljava/util/StringTokenizer;

    const-string/jumbo v4, ";"

    invoke-direct {v2, p1, v4}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    :goto_0
    invoke-virtual {v2}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-virtual {v2}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_2

    :try_start_0
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_0

    :cond_3
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-nez v4, :cond_4

    return-object v5

    :cond_4
    return-object v3
.end method

.method private static getService()Landroid/media/IAudioService;
    .locals 2

    sget-object v1, Lcom/samsung/android/media/SemSoundAssistantManager;->sService:Landroid/media/IAudioService;

    if-eqz v1, :cond_0

    sget-object v1, Lcom/samsung/android/media/SemSoundAssistantManager;->sService:Landroid/media/IAudioService;

    return-object v1

    :cond_0
    const-string/jumbo v1, "audio"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/media/IAudioService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/IAudioService;

    move-result-object v1

    sput-object v1, Lcom/samsung/android/media/SemSoundAssistantManager;->sService:Landroid/media/IAudioService;

    sget-object v1, Lcom/samsung/android/media/SemSoundAssistantManager;->sService:Landroid/media/IAudioService;

    return-object v1
.end method

.method private setContext(Landroid/content/Context;)V
    .locals 2

    const/4 v1, 0x0

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/media/SemSoundAssistantManager;->mApplicationContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/samsung/android/media/SemSoundAssistantManager;->mApplicationContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    iput-object v1, p0, Lcom/samsung/android/media/SemSoundAssistantManager;->mOriginalContext:Landroid/content/Context;

    :goto_0
    return-void

    :cond_0
    iput-object p1, p0, Lcom/samsung/android/media/SemSoundAssistantManager;->mOriginalContext:Landroid/content/Context;

    goto :goto_0
.end method


# virtual methods
.method public activateFloatingButton(Z)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "enable_floating_button="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/samsung/android/media/SemSoundAssistantManager;->setSoundAssistantParam(Ljava/lang/String;)V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public adjustSoundBalance(I)V
    .locals 2

    if-ltz p1, :cond_0

    const/16 v0, 0x64

    if-le p1, v0, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Bad raio value"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "sound_balance="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/samsung/android/media/SemSoundAssistantManager;->setSoundAssistantParam(Ljava/lang/String;)V

    return-void
.end method

.method public enableSelfieStickMode()Z
    .locals 2

    const-string/jumbo v0, "selfiestick=true"

    invoke-virtual {p0, v0}, Lcom/samsung/android/media/SemSoundAssistantManager;->setSoundAssistantProperty(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/media/SemSoundAssistantManager;->isSelfieStickModeEnabled()Z

    move-result v1

    return v1
.end method

.method public forceMonoSound(Z)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mono_sound="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/samsung/android/media/SemSoundAssistantManager;->setSoundAssistantParam(Ljava/lang/String;)V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getApplicationUidListUsingAudio()Ljava/util/ArrayList;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    iget-object v1, p0, Lcom/samsung/android/media/SemSoundAssistantManager;->mAudioManager:Landroid/media/AudioManager;

    const-string/jumbo v2, "use_audio_uids"

    invoke-virtual {v1, v2}, Landroid/media/AudioManager;->getParameters(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/samsung/android/media/SemSoundAssistantManager;->getIntegerArrayFromString(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    return-object v1
.end method

.method public getApplicationVolume(I)I
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/media/SemSoundAssistantManager;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0, p1}, Landroid/media/AudioManager;->getAppVolume(I)I

    move-result v0

    return v0
.end method

.method public getAudioFrameworkVersion()I
    .locals 4

    const-string/jumbo v3, "version"

    invoke-virtual {p0, v3}, Lcom/samsung/android/media/SemSoundAssistantManager;->getSoundAssistantProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    :try_start_0
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    :goto_0
    return v2

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public getDeviceForStream(I)I
    .locals 6

    const/4 v5, 0x0

    const/4 v3, 0x2

    if-eq p1, v3, :cond_0

    const/4 v3, 0x5

    if-eq p1, v3, :cond_0

    const/4 v3, 0x4

    if-eq p1, v3, :cond_0

    const-string/jumbo v3, "SemSoundAssistant"

    const-string/jumbo v4, "Invalid parameter"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const-string/jumbo v3, "ring_through_headset"

    invoke-virtual {p0, v3}, Lcom/samsung/android/media/SemSoundAssistantManager;->getSoundAssistantParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    :try_start_0
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    :goto_0
    const/4 v3, 0x1

    shl-int/2addr v3, p1

    and-int/2addr v3, v2

    if-eqz v3, :cond_1

    const/4 v3, 0x3

    return v3

    :cond_1
    return v5

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public getMediaVolumeInterval()I
    .locals 4

    const-string/jumbo v3, "media_volume_step_index"

    invoke-virtual {p0, v3}, Lcom/samsung/android/media/SemSoundAssistantManager;->getSoundAssistantProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v1, 0x0

    :try_start_0
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    return v1

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public getMediaVolumeSteps()[I
    .locals 2

    :try_start_0
    invoke-static {}, Lcom/samsung/android/media/SemSoundAssistantManager;->getService()Landroid/media/IAudioService;

    move-result-object v1

    invoke-interface {v1}, Landroid/media/IAudioService;->getMediaVolumeSteps()[I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    const/4 v1, 0x0

    return-object v1
.end method

.method public getMultiSoundDeviceVolume(I)I
    .locals 2

    invoke-virtual {p0}, Lcom/samsung/android/media/SemSoundAssistantManager;->isMultiSoundOn()Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "SemSoundAssistant"

    const-string/jumbo v1, "Multisound is disable"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, -0x1

    return v0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/media/SemSoundAssistantManager;->mAudioManager:Landroid/media/AudioManager;

    iget-object v1, p0, Lcom/samsung/android/media/SemSoundAssistantManager;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v1}, Landroid/media/AudioManager;->semGetPinDevice()I

    move-result v1

    invoke-virtual {v0, p1, v1}, Landroid/media/AudioManager;->getFineVolume(II)I

    move-result v0

    return v0
.end method

.method public getRecommandedPackagesForSoundAssistant()[Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/media/SemSoundAssistantManager;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->getMediaAppList()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSoundAssistantParam(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "sound_assistant;"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/media/SemSoundAssistantManager;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v1, v0}, Landroid/media/AudioManager;->getAudioServiceConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getSoundAssistantProperty(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "sound_assistant;"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/media/SemSoundAssistantManager;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v1, v0}, Landroid/media/AudioManager;->getAudioServiceConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getUidIgnoredAudioFocus()I
    .locals 4

    const-string/jumbo v3, "ignore_audio_focus"

    invoke-virtual {p0, v3}, Lcom/samsung/android/media/SemSoundAssistantManager;->getSoundAssistantParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    :try_start_0
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    :goto_0
    return v2

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public getVolumeKeyMode()I
    .locals 5

    const/4 v3, 0x1

    const-string/jumbo v4, "adjust_media_volume_only"

    invoke-virtual {p0, v4}, Lcom/samsung/android/media/SemSoundAssistantManager;->getSoundAssistantProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v1, 0x0

    :try_start_0
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    if-ne v1, v3, :cond_0

    :goto_1
    return v3

    :cond_0
    const/4 v3, 0x0

    goto :goto_1

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public ignoreAudioFocusForApp(IZ)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "ignore_audio_focus="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    if-eqz p2, :cond_0

    const-string/jumbo v0, "1"

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ";"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "uid_for_soundassistant"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/samsung/android/media/SemSoundAssistantManager;->setSoundAssistantParam(Ljava/lang/String;)V

    return-void

    :cond_0
    const-string/jumbo v0, "0"

    goto :goto_0
.end method

.method public initApplicationVolume(I)V
    .locals 3

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "remove_app_volume="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/samsung/android/media/SemSoundAssistantManager;->setSoundAssistantProperty(Ljava/lang/String;)V

    return-void
.end method

.method public isFloatingButtonActivated()Z
    .locals 3

    const/4 v1, 0x1

    const-string/jumbo v2, "enable_floating_button"

    invoke-virtual {p0, v2}, Lcom/samsung/android/media/SemSoundAssistantManager;->getSoundAssistantParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ne v2, v1, :cond_0

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isMultiSoundOn()Z
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/media/SemSoundAssistantManager;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->isMultiSoundOn()Z

    move-result v0

    return v0
.end method

.method public isSelfieStickModeEnabled()Z
    .locals 5

    const/4 v3, 0x1

    const-string/jumbo v4, "selfiestick_connected"

    invoke-virtual {p0, v4}, Lcom/samsung/android/media/SemSoundAssistantManager;->getSoundAssistantProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v1, 0x0

    :try_start_0
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    if-ne v1, v3, :cond_0

    :goto_1
    return v3

    :cond_0
    const/4 v3, 0x0

    goto :goto_1

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public setApplicationVolume(II)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/media/SemSoundAssistantManager;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0, p1, p2}, Landroid/media/AudioManager;->setAppVolume(II)V

    return-void
.end method

.method public setDefaultSoundOutputDevice(I)Z
    .locals 14

    const/4 v1, 0x0

    iget-object v9, p0, Lcom/samsung/android/media/SemSoundAssistantManager;->mAudioManager:Landroid/media/AudioManager;

    const-string/jumbo v10, "audioParam;outDevice"

    invoke-virtual {v9, v10}, Landroid/media/AudioManager;->getParameters(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_0

    invoke-virtual {v8}, Ljava/lang/String;->isEmpty()Z

    move-result v9

    if-eqz v9, :cond_1

    :cond_0
    const/4 v1, 0x2

    :cond_1
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iget-object v9, p0, Lcom/samsung/android/media/SemSoundAssistantManager;->mAudioManager:Landroid/media/AudioManager;

    const/4 v10, 0x2

    invoke-virtual {v9, v10}, Landroid/media/AudioManager;->getDevices(I)[Landroid/media/AudioDeviceInfo;

    move-result-object v6

    move v3, v1

    const-string/jumbo v2, ""

    const/4 v9, 0x1

    if-ne p1, v9, :cond_6

    const/16 v9, 0x9

    new-array v7, v9, [I

    fill-array-data v7, :array_0

    const/4 v9, 0x0

    array-length v11, v7

    move v10, v9

    :goto_0
    if-ge v10, v11, :cond_3

    aget v5, v7, v10

    const/4 v4, 0x0

    const/4 v9, 0x0

    array-length v12, v6

    :goto_1
    if-ge v9, v12, :cond_2

    aget-object v0, v6, v9

    invoke-virtual {v0}, Landroid/media/AudioDeviceInfo;->getDeviceId()I

    move-result v13

    if-ne v13, v5, :cond_4

    move v3, v5

    invoke-virtual {v0}, Landroid/media/AudioDeviceInfo;->getAddress()Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x1

    :cond_2
    if-eqz v4, :cond_5

    :cond_3
    iget-object v9, p0, Lcom/samsung/android/media/SemSoundAssistantManager;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v9, v3, v2}, Landroid/media/AudioManager;->setDeviceToForceByUser(ILjava/lang/String;)I

    move-result v9

    if-nez v9, :cond_9

    const/4 v9, 0x1

    :goto_2
    return v9

    :cond_4
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    :cond_5
    add-int/lit8 v9, v10, 0x1

    move v10, v9

    goto :goto_0

    :cond_6
    const/4 v9, 0x2

    if-ne p1, v9, :cond_3

    const/4 v4, 0x0

    const/4 v9, 0x0

    array-length v10, v6

    :goto_3
    if-ge v9, v10, :cond_7

    aget-object v0, v6, v9

    invoke-virtual {v0}, Landroid/media/AudioDeviceInfo;->getDeviceId()I

    move-result v11

    const/16 v12, 0x80

    if-ne v11, v12, :cond_8

    const/16 v3, 0x80

    invoke-virtual {v0}, Landroid/media/AudioDeviceInfo;->getAddress()Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x1

    :cond_7
    if-nez v4, :cond_3

    const/4 v9, 0x0

    return v9

    :cond_8
    add-int/lit8 v9, v9, 0x1

    goto :goto_3

    :cond_9
    const/4 v9, 0x0

    goto :goto_2

    nop

    :array_0
    .array-data 4
        0x8000
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

.method public setDeviceForStream(II)V
    .locals 7

    const/4 v6, 0x3

    const/4 v5, 0x1

    const/4 v4, 0x2

    if-eq p1, v4, :cond_0

    const/4 v4, 0x5

    if-eq p1, v4, :cond_0

    const/4 v4, 0x4

    if-eq p1, v4, :cond_0

    const-string/jumbo v4, "SemSoundAssistant"

    const-string/jumbo v5, "Invalid parameter"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    if-eqz p2, :cond_1

    if-eq p2, v6, :cond_1

    const-string/jumbo v4, "SemSoundAssistant"

    const-string/jumbo v5, "Invalid parameter"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    const-string/jumbo v4, "ring_through_headset"

    invoke-virtual {p0, v4}, Lcom/samsung/android/media/SemSoundAssistantManager;->getSoundAssistantParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    :try_start_0
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    :goto_0
    if-ne p2, v6, :cond_2

    shl-int v4, v5, p1

    or-int/2addr v3, v4

    :goto_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "ring_through_headset="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/samsung/android/media/SemSoundAssistantManager;->setSoundAssistantProperty(Ljava/lang/String;)V

    return-void

    :cond_2
    shl-int v4, v5, p1

    not-int v4, v4

    and-int/2addr v3, v4

    goto :goto_1

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public setForceDeviceForAppSoundOutput(II)V
    .locals 3

    const/4 v2, 0x2

    if-ltz p2, :cond_0

    if-le p2, v2, :cond_1

    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "Invalid parameter"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    const/4 v0, 0x0

    const/4 v1, 0x1

    if-ne p2, v1, :cond_3

    const/4 v0, 0x2

    :cond_2
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "set_force_output_for_app="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ";"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "uid_for_soundassistant"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/samsung/android/media/SemSoundAssistantManager;->setSoundAssistantParam(Ljava/lang/String;)V

    return-void

    :cond_3
    if-ne p2, v2, :cond_2

    const/16 v0, 0x8

    goto :goto_0
.end method

.method public setMediaVolumeInterval(I)V
    .locals 3

    const/4 v1, 0x1

    if-lt p1, v1, :cond_0

    const/16 v1, 0xa

    if-le p1, v1, :cond_1

    :cond_0
    const-string/jumbo v1, "SemSoundAssistant"

    const-string/jumbo v2, "Invalide index"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "media_volume_step_index="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/samsung/android/media/SemSoundAssistantManager;->setSoundAssistantProperty(Ljava/lang/String;)V

    return-void
.end method

.method public setMediaVolumeSteps([I)Z
    .locals 2

    :try_start_0
    invoke-static {}, Lcom/samsung/android/media/SemSoundAssistantManager;->getService()Landroid/media/IAudioService;

    move-result-object v1

    invoke-interface {v1, p1}, Landroid/media/IAudioService;->setMediaVolumeSteps([I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    const/4 v1, 0x0

    return v1
.end method

.method public setMultiSoundDevice(II)V
    .locals 3

    const/4 v2, 0x2

    if-ltz p2, :cond_0

    if-le p2, v2, :cond_1

    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "Invalid parameter"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    const/4 v0, 0x0

    const/4 v1, 0x1

    if-ne p2, v1, :cond_3

    const/4 v0, 0x2

    :cond_2
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "set_force_output_for_app="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ";"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "uid_for_soundassistant"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/samsung/android/media/SemSoundAssistantManager;->setSoundAssistantParam(Ljava/lang/String;)V

    return-void

    :cond_3
    if-ne p2, v2, :cond_2

    const/16 v0, 0x8

    goto :goto_0
.end method

.method public setMultiSoundDeviceVolume(III)Z
    .locals 2

    invoke-virtual {p0}, Lcom/samsung/android/media/SemSoundAssistantManager;->isMultiSoundOn()Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "SemSoundAssistant"

    const-string/jumbo v1, "Multisound is diable"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return v0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/media/SemSoundAssistantManager;->mAudioManager:Landroid/media/AudioManager;

    iget-object v1, p0, Lcom/samsung/android/media/SemSoundAssistantManager;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v1}, Landroid/media/AudioManager;->semGetPinDevice()I

    move-result v1

    invoke-virtual {v0, p1, p2, p3, v1}, Landroid/media/AudioManager;->setFineVolume(IIII)V

    const/4 v0, 0x1

    return v0
.end method

.method public setMultiSoundOn(Z)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/media/SemSoundAssistantManager;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0, p1}, Landroid/media/AudioManager;->setMultiSoundOn(Z)V

    return-void
.end method

.method public setSoundAssistantParam(Ljava/lang/String;)V
    .locals 3

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "sound_assistant=1;"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/media/SemSoundAssistantManager;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v1, v0}, Landroid/media/AudioManager;->setAudioServiceConfig(Ljava/lang/String;)V

    return-void
.end method

.method public setSoundAssistantProperty(Ljava/lang/String;)V
    .locals 3

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "sound_assistant=1;"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/media/SemSoundAssistantManager;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v1, v0}, Landroid/media/AudioManager;->setAudioServiceConfig(Ljava/lang/String;)V

    return-void
.end method

.method public setSoundSettingEventBroadcastIntent(ILandroid/app/PendingIntent;)V
    .locals 4

    if-nez p2, :cond_0

    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v3, "Invalid parameter"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_0
    invoke-static {}, Lcom/samsung/android/media/SemSoundAssistantManager;->getService()Landroid/media/IAudioService;

    move-result-object v1

    :try_start_0
    invoke-interface {v1, p1, p2}, Landroid/media/IAudioService;->setSoundSettingEventBroadcastIntent(ILandroid/app/PendingIntent;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v2, "SemSoundAssistant"

    const-string/jumbo v3, "Dead object in setAppDevice"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public setVolumeKeyMode(I)V
    .locals 3

    if-eqz p1, :cond_0

    const/4 v1, 0x1

    if-eq p1, v1, :cond_0

    const-string/jumbo v1, "SemSoundAssistant"

    const-string/jumbo v2, "Invalide mode"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "adjust_media_volume_only="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/samsung/android/media/SemSoundAssistantManager;->setSoundAssistantProperty(Ljava/lang/String;)V

    return-void
.end method
