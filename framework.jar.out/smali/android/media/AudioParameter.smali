.class public Landroid/media/AudioParameter;
.super Ljava/lang/Object;
.source "AudioParameter.java"


# static fields
.field public static final AUDIO_PARAMETER_KEY_AUDIOCORE_LOGGING:Ljava/lang/String; = "logging"

.field public static final AUDIO_PARAMETER_KEY_FINEVOLUME:Ljava/lang/String; = "fine_volume"

.field public static final AUDIO_PARAMETER_KEY_FINEVOLUME_V2:Ljava/lang/String; = "fine_volume_v2"

.field public static final AUDIO_PARAMETER_KEY_FINEVOLUME_V2_FLAG:Ljava/lang/String; = "fine_volume_v2_flag"

.field public static final AUDIO_PARAMETER_KEY_GET_ACTIVE_ADDRESS:Ljava/lang/String; = "active_addr"

.field public static final AUDIO_PARAMETER_KEY_GET_DEVICE_MASK_FOR_QUICK_SOUND_PATH:Ljava/lang/String; = "device_mask_QSP"

.field public static final AUDIO_PARAMETER_KEY_GET_MULTISOUND_PRIORITY_DEVICE:Ljava/lang/String; = "multisound_getprioritydevice"

.field public static final AUDIO_PARAMETER_KEY_HIDDENSOUND_PID:Ljava/lang/String; = "hiddensound_pid"

.field public static final AUDIO_PARAMETER_KEY_HIDDENSOUND_VERSION:Ljava/lang/String; = "hiddensound_version"

.field public static final AUDIO_PARAMETER_KEY_HIDDENSOUND_VOLUME:Ljava/lang/String; = "hiddensound_volume"

.field public static final AUDIO_PARAMETER_KEY_HMT_STATE:Ljava/lang/String; = "HMTstate"

.field public static final AUDIO_PARAMETER_KEY_IS_FINEVOLUME:Ljava/lang/String; = "is_fine_volume"

.field public static final AUDIO_PARAMETER_KEY_IS_SAFE_MEDIA_VOLUME_DEVICE:Ljava/lang/String; = "SafeMediaVolumeDevice"

.field public static final AUDIO_PARAMETER_KEY_IS_UHQ:Ljava/lang/String; = "isAvailableUHQ"

.field public static final AUDIO_PARAMETER_KEY_IS_USE_AUDIO:Ljava/lang/String; = "isUseAudio"

.field public static final AUDIO_PARAMETER_KEY_MULTISOUND_ON:Ljava/lang/String; = "multisound_on"

.field public static final AUDIO_PARAMETER_KEY_MULTISOUND_PREFIX:Ljava/lang/String; = "multisound"

.field public static final AUDIO_PARAMETER_KEY_MULTISOUND_SETDEVICE_DEVICE:Ljava/lang/String; = "multisound_setdevice_device"

.field public static final AUDIO_PARAMETER_KEY_MULTISOUND_SETDEVICE_UID:Ljava/lang/String; = "multisound_setdevice_uid"

.field public static final AUDIO_PARAMETER_KEY_MULTISOUND_SETVOLUME_UID:Ljava/lang/String; = "multisound_setvolume_uid"

.field public static final AUDIO_PARAMETER_KEY_MULTISOUND_SETVOLUME_VOLUME:Ljava/lang/String; = "multisound_setvolume_volume"

.field public static final AUDIO_PARAMETER_KEY_PIN_APP_NAME:Ljava/lang/String; = "multisound_pinappname"

.field public static final AUDIO_PARAMETER_KEY_SCREEN_MIRRORING_STATE:Ljava/lang/String; = "ScreenMirroringState"

.field public static final AUDIO_PARAMETER_KEY_SET_FORCE_USE_FOR_MEDIA:Ljava/lang/String; = "setForceUseForMedia"

.field public static final AUDIO_PARAMETER_KEY_SPLITSOUND:Ljava/lang/String; = "SplitSound"

.field public static final AUDIO_PARAMETER_KEY_UHQ_BT:Ljava/lang/String; = "UHQ_BT"

.field public static final AUDIO_PARAMETER_KEY_USE_AUDIO_APP_UID:Ljava/lang/String; = "use_audio_uids"

.field public static final AUDIO_PARAMETER_KEY_VOLUMELIMIT_ON:Ljava/lang/String; = "volumelimit_on"

.field public static final AUDIO_PARAMETER_KEY_VOLUMELIMIT_VALUE:Ljava/lang/String; = "volumelimit_value"

.field public static final AUDIO_PARAMETER_VALUE_false:Ljava/lang/String; = "false"

.field public static final AUDIO_PARAMETER_VALUE_off:Ljava/lang/String; = "off"

.field public static final AUDIO_PARAMETER_VALUE_on:Ljava/lang/String; = "on"

.field public static final AUDIO_PARAMETER_VALUE_true:Ljava/lang/String; = "true"

.field public static final BAD_VALUE:I = -0x1

.field public static final NO_ERROR:I


# instance fields
.field private mAudioParams:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 6
    .param p1, "audioParams"    # Ljava/lang/String;

    .prologue
    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    new-instance v5, Ljava/util/Hashtable;

    invoke-direct {v5}, Ljava/util/Hashtable;-><init>()V

    iput-object v5, p0, Landroid/media/AudioParameter;->mAudioParams:Ljava/util/Hashtable;

    .line 65
    if-eqz p1, :cond_3

    .line 66
    new-instance v1, Ljava/util/StringTokenizer;

    const-string/jumbo v5, ";"

    invoke-direct {v1, p1, v5}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    .local v1, "st1":Ljava/util/StringTokenizer;
    :cond_0
    :goto_0
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 68
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v3

    .line 69
    .local v3, "token":Ljava/lang/String;
    new-instance v2, Ljava/util/StringTokenizer;

    const-string/jumbo v5, "="

    invoke-direct {v2, v3, v5}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    .local v2, "st2":Ljava/util/StringTokenizer;
    invoke-virtual {v2}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-virtual {v2}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v0

    .line 71
    :goto_1
    invoke-virtual {v2}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-virtual {v2}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v4

    .line 72
    :goto_2
    if-eqz v0, :cond_0

    if-eqz v4, :cond_0

    .line 73
    iget-object v5, p0, Landroid/media/AudioParameter;->mAudioParams:Ljava/util/Hashtable;

    invoke-virtual {v5, v0, v4}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 70
    :cond_1
    const/4 v0, 0x0

    .local v0, "key":Ljava/lang/String;
    goto :goto_1

    .line 71
    .end local v0    # "key":Ljava/lang/String;
    :cond_2
    const/4 v4, 0x0

    .local v4, "value":Ljava/lang/String;
    goto :goto_2

    .line 64
    .end local v1    # "st1":Ljava/util/StringTokenizer;
    .end local v2    # "st2":Ljava/util/StringTokenizer;
    .end local v3    # "token":Ljava/lang/String;
    .end local v4    # "value":Ljava/lang/String;
    :cond_3
    return-void
.end method


# virtual methods
.method public get(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "strKey"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 79
    if-eqz p1, :cond_0

    iget-object v0, p0, Landroid/media/AudioParameter;->mAudioParams:Ljava/util/Hashtable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/media/AudioParameter;->mAudioParams:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 82
    :cond_0
    return-object v1

    .line 80
    :cond_1
    iget-object v0, p0, Landroid/media/AudioParameter;->mAudioParams:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .prologue
    .line 85
    const-string/jumbo v2, ""

    .line 86
    .local v2, "strReturn":Ljava/lang/String;
    iget-object v3, p0, Landroid/media/AudioParameter;->mAudioParams:Ljava/util/Hashtable;

    if-eqz v3, :cond_0

    iget-object v3, p0, Landroid/media/AudioParameter;->mAudioParams:Ljava/util/Hashtable;

    invoke-virtual {v3}, Ljava/util/Hashtable;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 97
    :cond_0
    return-object v2

    .line 87
    :cond_1
    iget-object v3, p0, Landroid/media/AudioParameter;->mAudioParams:Ljava/util/Hashtable;

    invoke-virtual {v3}, Ljava/util/Hashtable;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 88
    .local v0, "i":Ljava/util/Iterator;
    :cond_2
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 89
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 90
    .local v1, "m":Ljava/util/Map$Entry;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 91
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 92
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 93
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 94
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ";"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method
