.class public Lcom/android/systemui/qs/tiles/SoundModeTile;
.super Lcom/android/systemui/qs/tileimpl/QSTileImpl;
.source "SoundModeTile.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/qs/tiles/SoundModeTile$1;,
        Lcom/android/systemui/qs/tiles/SoundModeTile$SoundModeDetailAdapter;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/systemui/qs/tileimpl/QSTileImpl",
        "<",
        "Lcom/android/systemui/plugins/qs/QSTile$BooleanState;",
        ">;"
    }
.end annotation


# static fields
.field private static final MUTE_ALL_SOUNDS_DISABLE:I = 0x0

.field private static final MUTE_ALL_SOUNDS_ENABLE:I = 0x1

.field private static final SETTINGS_ALL_SOUND_OFF_NAME:Ljava/lang/String; = "all_sound_off"

.field private static final SETTINGS_TEMP_MUTE_NAME:Ljava/lang/String; = "mode_ringer_time_on"

.field private static final SETTINGS_TEMP_MUTE_OFF:I = 0x0

.field private static final SETTINGS_TEMP_MUTE_ON:I = 0x1

.field private static final SOUNDMODE_DETAIL_SETTINGS:Landroid/content/Intent;

.field private static final SOUNDMODE_SETTINGS:Landroid/content/Intent;

.field static final SOUND_MODE_ICON:[I

.field static final SOUND_MODE_LOGGING_VALUE:[Ljava/lang/String;

.field static final SOUND_MODE_TEXT:[I

.field private static final SOUND_PROFILE_MUTE:I = 0x0

.field private static final SOUND_PROFILE_SOUND:I = 0x2

.field private static final SOUND_PROFILE_VIBRATE:I = 0x1


# instance fields
.field private mAudioManager:Landroid/media/AudioManager;

.field private mDetailAdapter:Lcom/android/systemui/qs/tiles/SoundModeTile$SoundModeDetailAdapter;

.field private mListening:Z

.field private mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

.field private final mReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method static synthetic -get0()Z
    .locals 1

    sget-boolean v0, Lcom/android/systemui/qs/tiles/SoundModeTile;->DEBUG:Z

    return v0
.end method

.method static synthetic -get1()Landroid/content/Intent;
    .locals 1

    sget-object v0, Lcom/android/systemui/qs/tiles/SoundModeTile;->SOUNDMODE_DETAIL_SETTINGS:Landroid/content/Intent;

    return-object v0
.end method

.method static synthetic -get2()Landroid/content/Intent;
    .locals 1

    sget-object v0, Lcom/android/systemui/qs/tiles/SoundModeTile;->SOUNDMODE_SETTINGS:Landroid/content/Intent;

    return-object v0
.end method

.method static synthetic -get3(Lcom/android/systemui/qs/tiles/SoundModeTile;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/SoundModeTile;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get4(Lcom/android/systemui/qs/tiles/SoundModeTile;)Landroid/media/AudioManager;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/SoundModeTile;->mAudioManager:Landroid/media/AudioManager;

    return-object v0
.end method

.method static synthetic -get5(Lcom/android/systemui/qs/tiles/SoundModeTile;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/SoundModeTile;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -wrap0(Lcom/android/systemui/qs/tiles/SoundModeTile;)Z
    .locals 1

    invoke-direct {p0}, Lcom/android/systemui/qs/tiles/SoundModeTile;->isTempMuteSettingValueOn()Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap1(Lcom/android/systemui/qs/tiles/SoundModeTile;IZ)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/systemui/qs/tiles/SoundModeTile;->setSoundProfile(IZ)V

    return-void
.end method

.method static synthetic -wrap2(Lcom/android/systemui/qs/tiles/SoundModeTile;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/qs/tiles/SoundModeTile;->setTempMuteSettingValue(Z)V

    return-void
.end method

.method static synthetic -wrap3(Lcom/android/systemui/qs/tiles/SoundModeTile;)V
    .locals 0

    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/SoundModeTile;->showItPolicyToast()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "android.settings.SOUND_SETTINGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/systemui/qs/tiles/SoundModeTile;->SOUNDMODE_SETTINGS:Landroid/content/Intent;

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    new-instance v1, Landroid/content/ComponentName;

    const-string/jumbo v2, "com.android.settings"

    const-string/jumbo v3, "com.android.settings.Settings$SoundModeSettingsActivity"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/qs/tiles/SoundModeTile;->SOUNDMODE_DETAIL_SETTINGS:Landroid/content/Intent;

    const v0, 0x7f120927

    const v1, 0x7f120929

    const v2, 0x7f120928

    filled-new-array {v0, v1, v2}, [I

    move-result-object v0

    sput-object v0, Lcom/android/systemui/qs/tiles/SoundModeTile;->SOUND_MODE_TEXT:[I

    const v0, 0x7f080539

    const v1, 0x7f08053a

    const v2, 0x7f080538

    filled-new-array {v0, v1, v2}, [I

    move-result-object v0

    sput-object v0, Lcom/android/systemui/qs/tiles/SoundModeTile;->SOUND_MODE_ICON:[I

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "2"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string/jumbo v1, "0"

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-string/jumbo v1, "1"

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sput-object v0, Lcom/android/systemui/qs/tiles/SoundModeTile;->SOUND_MODE_LOGGING_VALUE:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/android/systemui/qs/QSHost;)V
    .locals 4

    const/4 v3, 0x0

    invoke-direct {p0, p1}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;-><init>(Lcom/android/systemui/qs/QSHost;)V

    iput-object v3, p0, Lcom/android/systemui/qs/tiles/SoundModeTile;->mAudioManager:Landroid/media/AudioManager;

    new-instance v1, Lcom/android/systemui/qs/tiles/SoundModeTile$1;

    invoke-direct {v1, p0}, Lcom/android/systemui/qs/tiles/SoundModeTile$1;-><init>(Lcom/android/systemui/qs/tiles/SoundModeTile;)V

    iput-object v1, p0, Lcom/android/systemui/qs/tiles/SoundModeTile;->mReceiver:Landroid/content/BroadcastReceiver;

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/SoundModeTile;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "audio"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioManager;

    iput-object v1, p0, Lcom/android/systemui/qs/tiles/SoundModeTile;->mAudioManager:Landroid/media/AudioManager;

    new-instance v1, Lcom/android/systemui/qs/tiles/SoundModeTile$SoundModeDetailAdapter;

    invoke-direct {v1, p0, v3}, Lcom/android/systemui/qs/tiles/SoundModeTile$SoundModeDetailAdapter;-><init>(Lcom/android/systemui/qs/tiles/SoundModeTile;Lcom/android/systemui/qs/tiles/SoundModeTile$SoundModeDetailAdapter;)V

    iput-object v1, p0, Lcom/android/systemui/qs/tiles/SoundModeTile;->mDetailAdapter:Lcom/android/systemui/qs/tiles/SoundModeTile$SoundModeDetailAdapter;

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string/jumbo v1, "android.media.RINGER_MODE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/SoundModeTile;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/systemui/qs/tiles/SoundModeTile;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    const-class v1, Lcom/android/internal/logging/MetricsLogger;

    invoke-static {v1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/logging/MetricsLogger;

    iput-object v1, p0, Lcom/android/systemui/qs/tiles/SoundModeTile;->mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    return-void
.end method

.method private isTempMuteSettingValueOn()Z
    .locals 5

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/systemui/qs/tiles/SoundModeTile;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "mode_ringer_time_on"

    invoke-static {v3, v4, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v1, :cond_0

    :goto_0
    return v1

    :cond_0
    move v1, v2

    goto :goto_0
.end method

.method private sendGSIMLog(IZ)V
    .locals 0

    return-void
.end method

.method private setSoundProfile(IZ)V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/SoundModeTile;->mAudioManager:Landroid/media/AudioManager;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/SoundModeTile;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "audio"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/android/systemui/qs/tiles/SoundModeTile;->mAudioManager:Landroid/media/AudioManager;

    :cond_0
    sget-boolean v0, Lcom/android/systemui/qs/tiles/SoundModeTile;->DEBUG:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/SoundModeTile;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setSoundProfile(soundProfile:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", detailSet:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/SoundModeTile;->mAudioManager:Landroid/media/AudioManager;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/SoundModeTile;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0, p1}, Landroid/media/AudioManager;->setRingerModeInternal(I)V

    :cond_2
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/qs/tiles/SoundModeTile;->sendGSIMLog(IZ)V

    return-void
.end method

.method private setTempMuteSettingValue(Z)V
    .locals 3

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/SoundModeTile;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "mode_ringer_time_on"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private updateNextProfile(I)I
    .locals 2

    const/4 v1, 0x2

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    if-ne p1, v1, :cond_1

    return v0

    :cond_1
    return v1
.end method


# virtual methods
.method protected composeChangeAnnouncement(Lcom/android/systemui/plugins/qs/QSTile$State;)Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/SoundModeTile;->mState:Lcom/android/systemui/plugins/qs/QSTile$State;

    check-cast v1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;

    iget-object v1, v1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->label:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/qs/tiles/SoundModeTile;->mContext:Landroid/content/Context;

    const v3, 0x7f120063

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getDetailAdapter()Lcom/android/systemui/plugins/qs/DetailAdapter;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/SoundModeTile;->mDetailAdapter:Lcom/android/systemui/qs/tiles/SoundModeTile$SoundModeDetailAdapter;

    return-object v0
.end method

.method public getLoggingValue(Z)I
    .locals 2

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/SoundModeTile;->mAudioManager:Landroid/media/AudioManager;

    if-nez v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    if-eqz p1, :cond_1

    sget-object v1, Lcom/android/systemui/qs/tiles/SoundModeTile;->SOUND_MODE_LOGGING_VALUE:[Ljava/lang/String;

    aget-object v1, v1, v0

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    return v1

    :cond_0
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/SoundModeTile;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v1}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v0

    goto :goto_0

    :cond_1
    return v0
.end method

.method public getLongClickIntent()Landroid/content/Intent;
    .locals 1

    sget-object v0, Lcom/android/systemui/qs/tiles/SoundModeTile;->SOUNDMODE_DETAIL_SETTINGS:Landroid/content/Intent;

    return-object v0
.end method

.method public getMetricsCategory()I
    .locals 1

    const/16 v0, 0x138a

    return v0
.end method

.method public getTileLabel()Ljava/lang/CharSequence;
    .locals 3

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/SoundModeTile;->mContext:Landroid/content/Context;

    sget-object v2, Lcom/android/systemui/qs/tiles/SoundModeTile;->SOUND_MODE_TEXT:[I

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/SoundModeTile;->mAudioManager:Landroid/media/AudioManager;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    aget v0, v2, v0

    invoke-virtual {v1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/SoundModeTile;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v0

    goto :goto_0
.end method

.method public handleClick()V
    .locals 4

    const-class v1, Lcom/android/systemui/KnoxStateMonitor;

    invoke-static {v1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/KnoxStateMonitor;

    invoke-virtual {v1}, Lcom/android/systemui/KnoxStateMonitor;->isSoundModeTileBlocked()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/SoundModeTile;->showItPolicyToast()V

    return-void

    :cond_0
    iget-object v2, p0, Lcom/android/systemui/qs/tiles/SoundModeTile;->mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/SoundModeTile;->getMetricsCategory()I

    move-result v3

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/SoundModeTile;->mState:Lcom/android/systemui/plugins/qs/QSTile$State;

    check-cast v1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;

    iget-boolean v1, v1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->value:Z

    xor-int/lit8 v1, v1, 0x1

    invoke-virtual {v2, v3, v1}, Lcom/android/internal/logging/MetricsLogger;->action(IZ)V

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/SoundModeTile;->mAudioManager:Landroid/media/AudioManager;

    if-nez v1, :cond_1

    const/4 v0, 0x0

    :goto_0
    invoke-direct {p0, v0}, Lcom/android/systemui/qs/tiles/SoundModeTile;->updateNextProfile(I)I

    move-result v1

    const/4 v2, 0x0

    invoke-direct {p0, v1, v2}, Lcom/android/systemui/qs/tiles/SoundModeTile;->setSoundProfile(IZ)V

    return-void

    :cond_1
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/SoundModeTile;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v1}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v0

    goto :goto_0
.end method

.method protected handleDestroy()V
    .locals 2

    invoke-super {p0}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->handleDestroy()V

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/SoundModeTile;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/SoundModeTile;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/qs/tiles/SoundModeTile;->mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    return-void
.end method

.method protected handleUpdateState(Lcom/android/systemui/plugins/qs/QSTile$BooleanState;Ljava/lang/Object;)V
    .locals 6

    const/4 v3, 0x0

    const/4 v2, 0x1

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/SoundModeTile;->mAudioManager:Landroid/media/AudioManager;

    if-nez v1, :cond_4

    const/4 v0, 0x0

    :goto_0
    sget-boolean v1, Lcom/android/systemui/Rune;->QPANEL_IS_VZW_ICON:Z

    if-nez v1, :cond_0

    sget-boolean v1, Lcom/android/systemui/Rune;->QPANEL_IS_TMB_ICON:Z

    if-nez v1, :cond_0

    sget-boolean v1, Lcom/android/systemui/Rune;->QPANEL_IS_MTR_POPUP:Z

    if-eqz v1, :cond_5

    :cond_0
    move v1, v2

    :goto_1
    iput-boolean v1, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->value:Z

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/SoundModeTile;->mContext:Landroid/content/Context;

    sget-object v4, Lcom/android/systemui/qs/tiles/SoundModeTile;->SOUND_MODE_TEXT:[I

    aget v4, v4, v0

    invoke-virtual {v1, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->label:Ljava/lang/CharSequence;

    sget-object v1, Lcom/android/systemui/qs/tiles/SoundModeTile;->SOUND_MODE_ICON:[I

    aget v1, v1, v0

    invoke-static {v1}, Lcom/android/systemui/qs/tileimpl/QSTileImpl$ResourceIcon;->get(I)Lcom/android/systemui/plugins/qs/QSTile$Icon;

    move-result-object v1

    iput-object v1, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->icon:Lcom/android/systemui/plugins/qs/QSTile$Icon;

    iput-boolean v2, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->dualTarget:Z

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->label:Ljava/lang/CharSequence;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v4, " "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v4, p0, Lcom/android/systemui/qs/tiles/SoundModeTile;->mContext:Landroid/content/Context;

    const v5, 0x7f120063

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->contentDescription:Ljava/lang/CharSequence;

    iget-boolean v1, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->value:Z

    if-eqz v1, :cond_1

    const/4 v2, 0x2

    :cond_1
    iput v2, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->state:I

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/SoundModeTile;->mState:Lcom/android/systemui/plugins/qs/QSTile$State;

    check-cast v1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;

    iget-object v1, v1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->label:Ljava/lang/CharSequence;

    iget-object v2, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->label:Ljava/lang/CharSequence;

    if-eq v1, v2, :cond_2

    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/SoundModeTile;->getTileSpec()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/SoundModeTile;->mHost:Lcom/android/systemui/qs/QSHost;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/SoundModeTile;->mHost:Lcom/android/systemui/qs/QSHost;

    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/SoundModeTile;->getTileSpec()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v3}, Lcom/android/systemui/qs/tiles/SoundModeTile;->getLoggingValue(Z)I

    move-result v3

    invoke-interface {v1, v2, v3}, Lcom/android/systemui/qs/QSHost;->onTileStateChanged(Ljava/lang/String;I)V

    :cond_2
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/SoundModeTile;->mDetailAdapter:Lcom/android/systemui/qs/tiles/SoundModeTile$SoundModeDetailAdapter;

    invoke-virtual {v1}, Lcom/android/systemui/qs/tiles/SoundModeTile$SoundModeDetailAdapter;->isListViewAttached()Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/SoundModeTile;->mUiHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/systemui/qs/tiles/-$Lambda$Gow3X8AtacbpuOZsOMpcUuG0XqI;

    invoke-direct {v2, p0}, Lcom/android/systemui/qs/tiles/-$Lambda$Gow3X8AtacbpuOZsOMpcUuG0XqI;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_3
    return-void

    :cond_4
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/SoundModeTile;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v1}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v0

    goto/16 :goto_0

    :cond_5
    if-nez v0, :cond_0

    move v1, v3

    goto/16 :goto_1
.end method

.method protected bridge synthetic handleUpdateState(Lcom/android/systemui/plugins/qs/QSTile$State;Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;

    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/qs/tiles/SoundModeTile;->handleUpdateState(Lcom/android/systemui/plugins/qs/QSTile$BooleanState;Ljava/lang/Object;)V

    return-void
.end method

.method synthetic lambda$-com_android_systemui_qs_tiles_SoundModeTile_10571()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/SoundModeTile;->mDetailAdapter:Lcom/android/systemui/qs/tiles/SoundModeTile$SoundModeDetailAdapter;

    invoke-static {v0}, Lcom/android/systemui/qs/tiles/SoundModeTile$SoundModeDetailAdapter;->-wrap2(Lcom/android/systemui/qs/tiles/SoundModeTile$SoundModeDetailAdapter;)V

    return-void
.end method

.method protected makeCurrentStateToString()Ljava/lang/String;
    .locals 2

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/SoundModeTile;->mAudioManager:Landroid/media/AudioManager;

    if-nez v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    return-object v1

    :cond_0
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/SoundModeTile;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v1}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v0

    goto :goto_0
.end method

.method protected makeStringToCurrentState(Ljava/lang/String;)V
    .locals 4

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/SoundModeTile;->mAudioManager:Landroid/media/AudioManager;

    if-nez v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/SoundModeTile;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "makeStringToCurrentState // state value : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " date value : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    return-void

    :cond_0
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/SoundModeTile;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v1}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v0

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/SoundModeTile;->handleClick()V

    return-void
.end method

.method public newTileState()Lcom/android/systemui/plugins/qs/QSTile$BooleanState;
    .locals 1

    new-instance v0, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;

    invoke-direct {v0}, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;-><init>()V

    return-object v0
.end method

.method public bridge synthetic newTileState()Lcom/android/systemui/plugins/qs/QSTile$State;
    .locals 1

    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/SoundModeTile;->newTileState()Lcom/android/systemui/plugins/qs/QSTile$BooleanState;

    move-result-object v0

    return-object v0
.end method

.method public setListening(Z)V
    .locals 2

    iget-boolean v0, p0, Lcom/android/systemui/qs/tiles/SoundModeTile;->mListening:Z

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    iput-boolean p1, p0, Lcom/android/systemui/qs/tiles/SoundModeTile;->mListening:Z

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/SoundModeTile;->mAudioManager:Landroid/media/AudioManager;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/SoundModeTile;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "audio"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/android/systemui/qs/tiles/SoundModeTile;->mAudioManager:Landroid/media/AudioManager;

    :cond_1
    return-void
.end method
