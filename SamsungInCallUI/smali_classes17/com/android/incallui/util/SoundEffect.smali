.class public Lcom/android/incallui/util/SoundEffect;
.super Ljava/lang/Object;
.source "SoundEffect.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "SoundEffect"

.field private static mIsLocalExtraVolOn:Z

.field private static mToast:Landroid/widget/Toast;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/incallui/util/SoundEffect;->mIsLocalExtraVolOn:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static canExtraVolOn()Z
    .locals 7

    const/4 v6, 0x4

    const/4 v3, 0x1

    const/4 v2, 0x0

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v4

    const/4 v5, 0x0

    invoke-static {v4, v5, v3}, Lcom/android/incallui/util/InCallUtils;->getCallToDisplay(Lcom/android/incallui/CallList;Lcom/android/incallui/Call;Z)Lcom/android/incallui/Call;

    move-result-object v1

    if-nez v1, :cond_0

    const-string v4, "isExtraVolOn: alive call is not exist"

    invoke-static {v4, v3}, Lcom/android/incallui/util/SoundEffect;->log(Ljava/lang/String;Z)V

    sput-boolean v2, Lcom/android/incallui/util/SoundEffect;->mIsLocalExtraVolOn:Z

    :goto_0
    return v2

    :cond_0
    invoke-virtual {v1}, Lcom/android/incallui/Call;->getState()I

    move-result v4

    const/16 v5, 0xd

    if-eq v4, v5, :cond_1

    invoke-virtual {v1}, Lcom/android/incallui/Call;->getState()I

    move-result v4

    const/4 v5, 0x6

    if-eq v4, v5, :cond_1

    invoke-virtual {v1}, Lcom/android/incallui/Call;->getState()I

    move-result v4

    if-eq v4, v6, :cond_1

    invoke-virtual {v1}, Lcom/android/incallui/Call;->getState()I

    move-result v4

    const/4 v5, 0x5

    if-ne v4, v5, :cond_2

    :cond_1
    const-string v4, "isExtraVolOn: call is outgoing or incoming"

    invoke-static {v4, v3}, Lcom/android/incallui/util/SoundEffect;->log(Ljava/lang/String;Z)V

    sput-boolean v2, Lcom/android/incallui/util/SoundEffect;->mIsLocalExtraVolOn:Z

    goto :goto_0

    :cond_2
    invoke-static {}, Lcom/android/incallui/AudioModeProvider;->getInstance()Lcom/android/incallui/AudioModeProvider;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/incallui/AudioModeProvider;->getAudioMode()I

    move-result v0

    if-eq v0, v6, :cond_3

    const/4 v4, 0x2

    if-ne v0, v4, :cond_4

    :cond_3
    const-string v4, "isExtraVolOn: ROUTE_WIRED_HEADSET or ROUTE_BLUETOOTH"

    invoke-static {v4, v3}, Lcom/android/incallui/util/SoundEffect;->log(Ljava/lang/String;Z)V

    goto :goto_0

    :cond_4
    invoke-static {}, Lcom/android/incallui/util/SoundEffect;->isHacEnabled()Z

    move-result v4

    if-eqz v4, :cond_5

    const/16 v4, 0x8

    if-eq v0, v4, :cond_5

    const-string v4, "isExtraVolOn: isHacEnabled"

    invoke-static {v4, v3}, Lcom/android/incallui/util/SoundEffect;->log(Ljava/lang/String;Z)V

    goto :goto_0

    :cond_5
    move v2, v3

    goto :goto_0
.end method

.method static displayToast(I)V
    .locals 1

    invoke-static {}, Lcom/android/incallui/InCallApp;->getInstance()Lcom/android/incallui/InCallApp;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/incallui/InCallApp;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/incallui/util/SoundEffect;->displayToast(Ljava/lang/String;)V

    return-void
.end method

.method static displayToast(Ljava/lang/String;)V
    .locals 2

    sget-object v1, Lcom/android/incallui/util/SoundEffect;->mToast:Landroid/widget/Toast;

    if-eqz v1, :cond_2

    sget-object v1, Lcom/android/incallui/util/SoundEffect;->mToast:Landroid/widget/Toast;

    invoke-virtual {v1, p0}, Landroid/widget/Toast;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    :goto_0
    sget-object v1, Lcom/android/incallui/util/SoundEffect;->mToast:Landroid/widget/Toast;

    if-eqz v1, :cond_1

    sget-object v1, Lcom/android/incallui/util/SoundEffect;->mToast:Landroid/widget/Toast;

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    :cond_1
    return-void

    :cond_2
    invoke-static {}, Lcom/android/incallui/UiAdapter;->getInstance()Lcom/android/incallui/UiAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/UiAdapter;->getInCallActivity()Lcom/android/incallui/InCallActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    invoke-static {v0, p0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    sput-object v1, Lcom/android/incallui/util/SoundEffect;->mToast:Landroid/widget/Toast;

    goto :goto_0
.end method

.method public static isExtraVolOn()Z
    .locals 1

    invoke-static {}, Lcom/android/incallui/util/SoundEffect;->canExtraVolOn()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/incallui/util/SoundEffect;->isExtraVolOnByParameters()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static isExtraVolOnByParameters()Z
    .locals 8

    const/4 v7, 0x1

    invoke-static {}, Lcom/android/incallui/InCallApp;->getInstance()Lcom/android/incallui/InCallApp;

    move-result-object v1

    const/4 v4, 0x0

    const-string v5, "audio"

    invoke-virtual {v1, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    const-string v5, "extraVolume"

    invoke-virtual {v0, v5}, Landroid/media/AudioManager;->getParameters(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "isExtraVolOn: extraButtonOn = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, v7}, Lcom/android/incallui/util/SoundEffect;->log(Ljava/lang/String;Z)V

    const-string v5, "true"

    invoke-virtual {v2, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_0

    const-string v5, "audioParam;extraVolume"

    invoke-virtual {v0, v5}, Landroid/media/AudioManager;->getParameters(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "isExtraVolOn: isPossibleSoundPath = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, v7}, Lcom/android/incallui/util/SoundEffect;->log(Ljava/lang/String;Z)V

    const-string v5, "true"

    invoke-virtual {v3, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_0

    const/4 v4, 0x1

    :cond_0
    sput-boolean v4, Lcom/android/incallui/util/SoundEffect;->mIsLocalExtraVolOn:Z

    return v4
.end method

.method public static isHacEnabled()Z
    .locals 4

    const/4 v1, 0x0

    invoke-static {}, Lcom/android/incallui/InCallApp;->getInstance()Lcom/android/incallui/InCallApp;

    move-result-object v0

    const-string v2, "hac_enable"

    invoke-static {v2}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "hearing_aid"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0
.end method

.method public static isUncertainExtraVolOn()Z
    .locals 2

    invoke-static {}, Lcom/android/incallui/util/SoundEffect;->canExtraVolOn()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "isUncertainExtraVolOn: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-boolean v1, Lcom/android/incallui/util/SoundEffect;->mIsLocalExtraVolOn:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/incallui/util/SoundEffect;->log(Ljava/lang/String;Z)V

    sget-boolean v0, Lcom/android/incallui/util/SoundEffect;->mIsLocalExtraVolOn:Z

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isWBAmrMode()Z
    .locals 5

    const/4 v3, 0x0

    invoke-static {}, Lcom/android/incallui/InCallApp;->getInstance()Lcom/android/incallui/InCallApp;

    move-result-object v1

    const-string v4, "audio"

    invoke-virtual {v1, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    const-string v4, "wb_amr"

    invoke-virtual {v0, v4}, Landroid/media/AudioManager;->getParameters(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v4, "on"

    invoke-virtual {v2, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v3, 0x1

    :cond_0
    return v3
.end method

.method private static log(Ljava/lang/String;Z)V
    .locals 1

    const-string v0, "SoundEffect"

    invoke-static {v0, p0, p1}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method public static showExtraVolumeToast()V
    .locals 4

    invoke-static {}, Lcom/android/incallui/AudioModeProvider;->getInstance()Lcom/android/incallui/AudioModeProvider;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/incallui/AudioModeProvider;->getAudioMode()I

    move-result v0

    const/4 v2, 0x4

    if-ne v0, v2, :cond_1

    const v2, 0x7f09012b

    invoke-static {v2}, Lcom/android/incallui/util/InCallUtils;->displayToast(I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-static {}, Lcom/android/incallui/util/SoundEffect;->isHacEnabled()Z

    move-result v2

    if-eqz v2, :cond_2

    const/16 v2, 0x8

    if-eq v0, v2, :cond_2

    invoke-static {}, Lcom/android/incallui/InCallApp;->getInstance()Lcom/android/incallui/InCallApp;

    move-result-object v1

    invoke-static {}, Lcom/android/incallui/StringManager;->getInstance()Lcom/android/incallui/StringManager;

    move-result-object v2

    const-string v3, "incall_extra_volume_disabled_HAC"

    invoke-virtual {v2, v1, v3}, Lcom/android/incallui/StringManager;->getStringId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Lcom/android/incallui/util/InCallUtils;->displayToast(I)V

    goto :goto_0

    :cond_2
    const/4 v2, 0x2

    if-ne v0, v2, :cond_0

    const v2, 0x7f090128

    invoke-static {v2}, Lcom/android/incallui/util/InCallUtils;->displayToast(I)V

    goto :goto_0
.end method

.method public static toggleExtraVolume()V
    .locals 3

    invoke-static {}, Lcom/android/incallui/AudioModeProvider;->getInstance()Lcom/android/incallui/AudioModeProvider;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/incallui/AudioModeProvider;->getAudioMode()I

    move-result v0

    const/4 v2, 0x4

    if-eq v0, v2, :cond_1

    invoke-static {}, Lcom/android/incallui/util/SoundEffect;->isHacEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    const/16 v2, 0x8

    if-ne v0, v2, :cond_1

    :cond_0
    const/4 v2, 0x2

    if-ne v0, v2, :cond_2

    :cond_1
    invoke-static {}, Lcom/android/incallui/util/SoundEffect;->showExtraVolumeToast()V

    :goto_0
    return-void

    :cond_2
    invoke-static {}, Lcom/android/incallui/util/SoundEffect;->isExtraVolOn()Z

    move-result v1

    if-nez v1, :cond_3

    const/4 v2, 0x1

    :goto_1
    invoke-static {v2}, Lcom/android/incallui/util/SoundEffect;->turnOnExtraVol(Z)V

    goto :goto_0

    :cond_3
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public static toggleMute()V
    .locals 3

    const/4 v0, 0x1

    const-string v1, "toggleMute()..."

    invoke-static {v1, v0}, Lcom/android/incallui/util/SoundEffect;->log(Ljava/lang/String;Z)V

    invoke-static {}, Lcom/android/incallui/TelecomAdapter;->getInstance()Lcom/android/incallui/TelecomAdapter;

    move-result-object v1

    invoke-static {}, Lcom/android/incallui/AudioModeProvider;->getInstance()Lcom/android/incallui/AudioModeProvider;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/incallui/AudioModeProvider;->getMute()Z

    move-result v2

    if-nez v2, :cond_0

    :goto_0
    invoke-virtual {v1, v0}, Lcom/android/incallui/TelecomAdapter;->mute(Z)V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static toggleSpeaker()V
    .locals 3

    const/16 v1, 0x8

    const/4 v0, 0x1

    const-string v2, "toggleSpeaker()..."

    invoke-static {v2, v0}, Lcom/android/incallui/util/SoundEffect;->log(Ljava/lang/String;Z)V

    invoke-static {}, Lcom/android/incallui/AudioModeProvider;->getInstance()Lcom/android/incallui/AudioModeProvider;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/incallui/AudioModeProvider;->getAudioMode()I

    move-result v2

    if-ne v1, v2, :cond_0

    :goto_0
    invoke-static {}, Lcom/android/incallui/util/InCallUtils;->isFolerClosed()Z

    move-result v2

    if-eqz v2, :cond_1

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/android/incallui/util/SystemServiceUtils;->isWiredHeadsetOn()Z

    move-result v2

    if-nez v2, :cond_1

    const v1, 0x7f0901f3

    invoke-static {v1}, Lcom/android/incallui/util/InCallUtils;->displayToast(I)V

    :goto_1
    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    invoke-static {}, Lcom/android/incallui/TelecomAdapter;->getInstance()Lcom/android/incallui/TelecomAdapter;

    move-result-object v2

    if-eqz v0, :cond_2

    const/4 v1, 0x5

    :cond_2
    invoke-virtual {v2, v1}, Lcom/android/incallui/TelecomAdapter;->setAudioRoute(I)V

    goto :goto_1
.end method

.method public static turnOnExtraVol(Z)V
    .locals 4

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "turnOnExtraVol: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {v2, v3}, Lcom/android/incallui/util/SoundEffect;->log(Ljava/lang/String;Z)V

    invoke-static {}, Lcom/android/incallui/InCallApp;->getInstance()Lcom/android/incallui/InCallApp;

    move-result-object v1

    const-string v2, "audio"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "extraVolume="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/media/AudioManager;->setParameters(Ljava/lang/String;)V

    sput-boolean p0, Lcom/android/incallui/util/SoundEffect;->mIsLocalExtraVolOn:Z

    return-void
.end method
