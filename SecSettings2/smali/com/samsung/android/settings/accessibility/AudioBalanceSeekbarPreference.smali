.class public Lcom/samsung/android/settings/accessibility/AudioBalanceSeekbarPreference;
.super Landroid/preference/SeekBarPreference;
.source "AudioBalanceSeekbarPreference.java"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;
.implements Landroid/media/MediaPlayer$OnPreparedListener;
.implements Landroid/view/View$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/settings/accessibility/AudioBalanceSeekbarPreference$1;,
        Lcom/samsung/android/settings/accessibility/AudioBalanceSeekbarPreference$2;
    }
.end annotation


# instance fields
.field private initMessage:Ljava/lang/String;

.field private leftMessage:Ljava/lang/String;

.field private final mAudioFocusListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

.field private mAudioManager:Landroid/media/AudioManager;

.field private mCurrentProgress:I

.field private mEarPlugs:Z

.field private mLeft:Landroid/widget/TextView;

.field private mMediaPlayer:Landroid/media/MediaPlayer;

.field private mMediaPlayerisPrepared:Z

.field private mOldAudioBalance:I

.field private mPercentageOfBalance:I

.field private mRight:Landroid/widget/TextView;

.field private mSeekBar:Landroid/widget/SeekBar;

.field private mVolumeChangeReceiver:Landroid/content/BroadcastReceiver;

.field private rightMessage:Ljava/lang/String;


# direct methods
.method static synthetic -get0(Lcom/samsung/android/settings/accessibility/AudioBalanceSeekbarPreference;)Landroid/media/MediaPlayer;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/AudioBalanceSeekbarPreference;->mMediaPlayer:Landroid/media/MediaPlayer;

    return-object v0
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    const/4 v1, 0x0

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2}, Landroid/preference/SeekBarPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-object v0, p0, Lcom/samsung/android/settings/accessibility/AudioBalanceSeekbarPreference;->mAudioManager:Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/samsung/android/settings/accessibility/AudioBalanceSeekbarPreference;->mMediaPlayer:Landroid/media/MediaPlayer;

    iput-boolean v1, p0, Lcom/samsung/android/settings/accessibility/AudioBalanceSeekbarPreference;->mMediaPlayerisPrepared:Z

    iput-boolean v1, p0, Lcom/samsung/android/settings/accessibility/AudioBalanceSeekbarPreference;->mEarPlugs:Z

    new-instance v0, Lcom/samsung/android/settings/accessibility/AudioBalanceSeekbarPreference$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/accessibility/AudioBalanceSeekbarPreference$1;-><init>(Lcom/samsung/android/settings/accessibility/AudioBalanceSeekbarPreference;)V

    iput-object v0, p0, Lcom/samsung/android/settings/accessibility/AudioBalanceSeekbarPreference;->mVolumeChangeReceiver:Landroid/content/BroadcastReceiver;

    new-instance v0, Lcom/samsung/android/settings/accessibility/AudioBalanceSeekbarPreference$2;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/accessibility/AudioBalanceSeekbarPreference$2;-><init>(Lcom/samsung/android/settings/accessibility/AudioBalanceSeekbarPreference;)V

    iput-object v0, p0, Lcom/samsung/android/settings/accessibility/AudioBalanceSeekbarPreference;->mAudioFocusListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    const v0, 0x7f0401fe

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/accessibility/AudioBalanceSeekbarPreference;->setLayoutResource(I)V

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/AudioBalanceSeekbarPreference;->mAudioManager:Landroid/media/AudioManager;

    if-nez v0, :cond_0

    const-string/jumbo v0, "audio"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/samsung/android/settings/accessibility/AudioBalanceSeekbarPreference;->mAudioManager:Landroid/media/AudioManager;

    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b0211

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/accessibility/AudioBalanceSeekbarPreference;->initMessage:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b0212

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/accessibility/AudioBalanceSeekbarPreference;->leftMessage:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b0213

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/accessibility/AudioBalanceSeekbarPreference;->rightMessage:Ljava/lang/String;

    return-void
.end method

.method private pauseMediaPlayer()V
    .locals 3

    const-string/jumbo v0, "AudioBalanceSeekbarPreference"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "pauseMediaPlayer() mMediaPlayer : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/settings/accessibility/AudioBalanceSeekbarPreference;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/AudioBalanceSeekbarPreference;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/AudioBalanceSeekbarPreference;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/AudioBalanceSeekbarPreference;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->pause()V

    :cond_0
    return-void
.end method

.method private setAudioBalance(I)V
    .locals 3

    const-string/jumbo v0, "AudioBalanceSeekbarPreference"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setAudioBalance() : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/AudioBalanceSeekbarPreference;->mAudioManager:Landroid/media/AudioManager;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "sound_balance= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->setParameters(Ljava/lang/String;)V

    return-void
.end method

.method private startMediaPlayer()V
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/AudioBalanceSeekbarPreference;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/samsung/android/settings/accessibility/AudioBalanceSeekbarPreference;->mMediaPlayerisPrepared:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/AudioBalanceSeekbarPreference;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string/jumbo v0, "AudioBalanceSeekbarPreference"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "startMediaPlayer() mMediaPlayer : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/settings/accessibility/AudioBalanceSeekbarPreference;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/AudioBalanceSeekbarPreference;->mAudioManager:Landroid/media/AudioManager;

    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/AudioBalanceSeekbarPreference;->mAudioFocusListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    const/4 v2, 0x3

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/media/AudioManager;->requestAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;II)I

    move-result v0

    if-nez v0, :cond_2

    const-string/jumbo v0, "AudioBalanceSeekbarPreference"

    const-string/jumbo v1, "startMediaPlayer() requestAudioFocus : fail"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_2
    const-string/jumbo v0, "AudioBalanceSeekbarPreference"

    const-string/jumbo v1, "startMediaPlayer() requestAudioFocus : success"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/AudioBalanceSeekbarPreference;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V

    goto :goto_0
.end method


# virtual methods
.method public getAudioBalanceFromDB(I)I
    .locals 4

    move v0, p1

    const-string/jumbo v1, "AudioBalanceSeekbarPreference"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "getAudioBalanceFromDB() defaultValue : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " SET"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/AudioBalanceSeekbarPreference;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "sound_balance"

    invoke-static {v1, v2, p1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const-string/jumbo v1, "AudioBalanceSeekbarPreference"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "getAudioBalanceFromDB() defaultValue : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " DONE"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method protected onBindView(Landroid/view/View;)V
    .locals 8

    const/4 v7, 0x1

    const/4 v6, 0x0

    const/16 v5, 0x64

    const/16 v4, 0x32

    invoke-super {p0, p1}, Landroid/preference/SeekBarPreference;->onBindView(Landroid/view/View;)V

    invoke-virtual {p0, v4}, Lcom/samsung/android/settings/accessibility/AudioBalanceSeekbarPreference;->getAudioBalanceFromDB(I)I

    move-result v1

    iput v1, p0, Lcom/samsung/android/settings/accessibility/AudioBalanceSeekbarPreference;->mOldAudioBalance:I

    const-string/jumbo v1, "AudioBalanceSeekbarPreference"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onBindView() mOldAudioBalance : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/samsung/android/settings/accessibility/AudioBalanceSeekbarPreference;->mOldAudioBalance:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const v1, 0x1020456

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/SeekBar;

    iput-object v1, p0, Lcom/samsung/android/settings/accessibility/AudioBalanceSeekbarPreference;->mSeekBar:Landroid/widget/SeekBar;

    const v1, 0x7f1100ce

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/samsung/android/settings/accessibility/AudioBalanceSeekbarPreference;->mLeft:Landroid/widget/TextView;

    const v1, 0x7f1100cf

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/samsung/android/settings/accessibility/AudioBalanceSeekbarPreference;->mRight:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/AudioBalanceSeekbarPreference;->setDualColorSeekbar()V

    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/AudioBalanceSeekbarPreference;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v1, v5}, Landroid/widget/SeekBar;->setMax(I)V

    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/AudioBalanceSeekbarPreference;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v1, p0}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    invoke-static {}, Lcom/android/settings/Utils;->isTablet()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/AudioBalanceSeekbarPreference;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v1, p0}, Landroid/widget/SeekBar;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    :cond_0
    iget v1, p0, Lcom/samsung/android/settings/accessibility/AudioBalanceSeekbarPreference;->mOldAudioBalance:I

    if-gt v1, v5, :cond_3

    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/AudioBalanceSeekbarPreference;->mSeekBar:Landroid/widget/SeekBar;

    iget v2, p0, Lcom/samsung/android/settings/accessibility/AudioBalanceSeekbarPreference;->mOldAudioBalance:I

    invoke-virtual {v1, v2}, Landroid/widget/SeekBar;->setProgress(I)V

    iget v1, p0, Lcom/samsung/android/settings/accessibility/AudioBalanceSeekbarPreference;->mOldAudioBalance:I

    if-ne v1, v4, :cond_1

    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/AudioBalanceSeekbarPreference;->mSeekBar:Landroid/widget/SeekBar;

    iget-object v2, p0, Lcom/samsung/android/settings/accessibility/AudioBalanceSeekbarPreference;->initMessage:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/SeekBar;->setContentDescription(Ljava/lang/CharSequence;)V

    :goto_0
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string/jumbo v1, "android.intent.action.HEADSET_PLUG"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v1, "android.intent.action.DOCK_EVENT"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v1, "android.bluetooth.a2dp.profile.action.CONNECTION_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/AudioBalanceSeekbarPreference;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/settings/accessibility/AudioBalanceSeekbarPreference;->mVolumeChangeReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void

    :cond_1
    iget v1, p0, Lcom/samsung/android/settings/accessibility/AudioBalanceSeekbarPreference;->mOldAudioBalance:I

    if-ge v1, v4, :cond_2

    iget v1, p0, Lcom/samsung/android/settings/accessibility/AudioBalanceSeekbarPreference;->mOldAudioBalance:I

    add-int/lit8 v1, v1, -0x32

    mul-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/samsung/android/settings/accessibility/AudioBalanceSeekbarPreference;->mPercentageOfBalance:I

    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/AudioBalanceSeekbarPreference;->mSeekBar:Landroid/widget/SeekBar;

    iget-object v2, p0, Lcom/samsung/android/settings/accessibility/AudioBalanceSeekbarPreference;->leftMessage:Ljava/lang/String;

    new-array v3, v7, [Ljava/lang/Object;

    iget v4, p0, Lcom/samsung/android/settings/accessibility/AudioBalanceSeekbarPreference;->mPercentageOfBalance:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/SeekBar;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_2
    iget v1, p0, Lcom/samsung/android/settings/accessibility/AudioBalanceSeekbarPreference;->mOldAudioBalance:I

    rsub-int/lit8 v1, v1, 0x32

    mul-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/samsung/android/settings/accessibility/AudioBalanceSeekbarPreference;->mPercentageOfBalance:I

    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/AudioBalanceSeekbarPreference;->mSeekBar:Landroid/widget/SeekBar;

    iget-object v2, p0, Lcom/samsung/android/settings/accessibility/AudioBalanceSeekbarPreference;->rightMessage:Ljava/lang/String;

    new-array v3, v7, [Ljava/lang/Object;

    iget v4, p0, Lcom/samsung/android/settings/accessibility/AudioBalanceSeekbarPreference;->mPercentageOfBalance:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/SeekBar;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_3
    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/AudioBalanceSeekbarPreference;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v1, v5}, Landroid/widget/SeekBar;->setProgress(I)V

    goto :goto_0
.end method

.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    const/16 v0, 0x32

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/accessibility/AudioBalanceSeekbarPreference;->getAudioBalanceFromDB(I)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/settings/accessibility/AudioBalanceSeekbarPreference;->mOldAudioBalance:I

    iget-boolean v0, p0, Lcom/samsung/android/settings/accessibility/AudioBalanceSeekbarPreference;->mEarPlugs:Z

    if-eqz v0, :cond_6

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/16 v1, 0x15

    if-ne v0, v1, :cond_2

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_2

    iget v0, p0, Lcom/samsung/android/settings/accessibility/AudioBalanceSeekbarPreference;->mOldAudioBalance:I

    const/16 v1, 0xa

    if-lt v0, v1, :cond_1

    iget v0, p0, Lcom/samsung/android/settings/accessibility/AudioBalanceSeekbarPreference;->mOldAudioBalance:I

    add-int/lit8 v0, v0, -0xa

    iput v0, p0, Lcom/samsung/android/settings/accessibility/AudioBalanceSeekbarPreference;->mOldAudioBalance:I

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/AudioBalanceSeekbarPreference;->mSeekBar:Landroid/widget/SeekBar;

    iget v1, p0, Lcom/samsung/android/settings/accessibility/AudioBalanceSeekbarPreference;->mOldAudioBalance:I

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setProgress(I)V

    :goto_0
    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/AudioBalanceSeekbarPreference;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->isMusicActive()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/samsung/android/settings/accessibility/AudioBalanceSeekbarPreference;->startMediaPlayer()V

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/AudioBalanceSeekbarPreference;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/accessibility/AudioBalanceSeekbarPreference;->onStopTrackingTouch(Landroid/widget/SeekBar;)V

    return v3

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/AudioBalanceSeekbarPreference;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v0, v2}, Landroid/widget/SeekBar;->setProgress(I)V

    goto :goto_0

    :cond_2
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/16 v1, 0x16

    if-ne v0, v1, :cond_5

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_5

    iget v0, p0, Lcom/samsung/android/settings/accessibility/AudioBalanceSeekbarPreference;->mOldAudioBalance:I

    const/16 v1, 0x5a

    if-gt v0, v1, :cond_4

    iget v0, p0, Lcom/samsung/android/settings/accessibility/AudioBalanceSeekbarPreference;->mOldAudioBalance:I

    add-int/lit8 v0, v0, 0xa

    iput v0, p0, Lcom/samsung/android/settings/accessibility/AudioBalanceSeekbarPreference;->mOldAudioBalance:I

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/AudioBalanceSeekbarPreference;->mSeekBar:Landroid/widget/SeekBar;

    iget v1, p0, Lcom/samsung/android/settings/accessibility/AudioBalanceSeekbarPreference;->mOldAudioBalance:I

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setProgress(I)V

    :goto_1
    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/AudioBalanceSeekbarPreference;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->isMusicActive()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-direct {p0}, Lcom/samsung/android/settings/accessibility/AudioBalanceSeekbarPreference;->startMediaPlayer()V

    :cond_3
    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/AudioBalanceSeekbarPreference;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/accessibility/AudioBalanceSeekbarPreference;->onStopTrackingTouch(Landroid/widget/SeekBar;)V

    return v3

    :cond_4
    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/AudioBalanceSeekbarPreference;->mSeekBar:Landroid/widget/SeekBar;

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setProgress(I)V

    goto :goto_1

    :cond_5
    return v2

    :cond_6
    return v2
.end method

.method public onPrepared(Landroid/media/MediaPlayer;)V
    .locals 2

    const-string/jumbo v0, "AudioBalanceSeekbarPreference"

    const-string/jumbo v1, "onPrepared() mMediaPlayer"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/settings/accessibility/AudioBalanceSeekbarPreference;->mMediaPlayerisPrepared:Z

    return-void
.end method

.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 4

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/16 v1, 0x32

    if-nez p3, :cond_0

    return-void

    :cond_0
    iget-boolean v0, p0, Lcom/samsung/android/settings/accessibility/AudioBalanceSeekbarPreference;->mEarPlugs:Z

    if-eqz v0, :cond_4

    iput v3, p0, Lcom/samsung/android/settings/accessibility/AudioBalanceSeekbarPreference;->mPercentageOfBalance:I

    iput p2, p0, Lcom/samsung/android/settings/accessibility/AudioBalanceSeekbarPreference;->mCurrentProgress:I

    const/16 v0, 0x64

    if-gt p2, v0, :cond_3

    if-eq p2, v1, :cond_1

    const/16 v0, 0x35

    if-gt p2, v0, :cond_1

    const/16 v0, 0x2f

    if-lt p2, v0, :cond_1

    invoke-virtual {p1, v1}, Landroid/widget/SeekBar;->setProgress(I)V

    return-void

    :cond_1
    iget v0, p0, Lcom/samsung/android/settings/accessibility/AudioBalanceSeekbarPreference;->mCurrentProgress:I

    if-le v0, v1, :cond_5

    iget v0, p0, Lcom/samsung/android/settings/accessibility/AudioBalanceSeekbarPreference;->mCurrentProgress:I

    add-int/lit8 v0, v0, -0x32

    mul-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/samsung/android/settings/accessibility/AudioBalanceSeekbarPreference;->mPercentageOfBalance:I

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/AudioBalanceSeekbarPreference;->rightMessage:Ljava/lang/String;

    new-array v1, v2, [Ljava/lang/Object;

    iget v2, p0, Lcom/samsung/android/settings/accessibility/AudioBalanceSeekbarPreference;->mPercentageOfBalance:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/SeekBar;->setContentDescription(Ljava/lang/CharSequence;)V

    :cond_2
    :goto_0
    invoke-direct {p0, p2}, Lcom/samsung/android/settings/accessibility/AudioBalanceSeekbarPreference;->setAudioBalance(I)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/AudioBalanceSeekbarPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "sound_balance"

    invoke-static {v0, v1, p2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/AudioBalanceSeekbarPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/AudioBalanceSeekbarPreference;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f100251

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/AudioBalanceSeekbarPreference;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f100272

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Lcom/android/settings/Utils;->insertEventwithDetailLog(Landroid/content/Context;IILjava/lang/Object;)V

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/AudioBalanceSeekbarPreference;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->isMusicActive()Z

    move-result v0

    if-nez v0, :cond_3

    if-eqz p3, :cond_3

    invoke-direct {p0}, Lcom/samsung/android/settings/accessibility/AudioBalanceSeekbarPreference;->startMediaPlayer()V

    :cond_3
    const-string/jumbo v0, "AudioBalanceSeekbarPreference"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Volumn is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/samsung/android/settings/accessibility/AudioBalanceSeekbarPreference;->mPercentageOfBalance:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    return-void

    :cond_5
    iget v0, p0, Lcom/samsung/android/settings/accessibility/AudioBalanceSeekbarPreference;->mCurrentProgress:I

    if-ge v0, v1, :cond_6

    iget v0, p0, Lcom/samsung/android/settings/accessibility/AudioBalanceSeekbarPreference;->mCurrentProgress:I

    rsub-int/lit8 v0, v0, 0x32

    mul-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/samsung/android/settings/accessibility/AudioBalanceSeekbarPreference;->mPercentageOfBalance:I

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/AudioBalanceSeekbarPreference;->leftMessage:Ljava/lang/String;

    new-array v1, v2, [Ljava/lang/Object;

    iget v2, p0, Lcom/samsung/android/settings/accessibility/AudioBalanceSeekbarPreference;->mPercentageOfBalance:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/SeekBar;->setContentDescription(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    :cond_6
    iget v0, p0, Lcom/samsung/android/settings/accessibility/AudioBalanceSeekbarPreference;->mCurrentProgress:I

    if-ne v0, v1, :cond_2

    iput v1, p0, Lcom/samsung/android/settings/accessibility/AudioBalanceSeekbarPreference;->mPercentageOfBalance:I

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/AudioBalanceSeekbarPreference;->initMessage:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/widget/SeekBar;->setContentDescription(Ljava/lang/CharSequence;)V

    goto/16 :goto_0
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0

    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 3

    const/16 v1, 0x64

    iget v0, p0, Lcom/samsung/android/settings/accessibility/AudioBalanceSeekbarPreference;->mCurrentProgress:I

    if-gt v0, v1, :cond_0

    const-string/jumbo v0, "AudioBalanceSeekbarPreference"

    const-string/jumbo v1, "onStopTrackingTouch() : Current progress is below than MaxAudioBalance"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/AudioBalanceSeekbarPreference;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v0}, Landroid/widget/SeekBar;->getProgress()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/samsung/android/settings/accessibility/AudioBalanceSeekbarPreference;->setAudioBalance(I)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/AudioBalanceSeekbarPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "sound_balance"

    iget-object v2, p0, Lcom/samsung/android/settings/accessibility/AudioBalanceSeekbarPreference;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v2}, Landroid/widget/SeekBar;->getProgress()I

    move-result v2

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    return-void

    :cond_0
    invoke-virtual {p1, v1}, Landroid/widget/SeekBar;->setProgress(I)V

    const-string/jumbo v0, "AudioBalanceSeekbarPreference"

    const-string/jumbo v1, "onStopTrackingTouch() : Current progress is over than MaxAudioBalance"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public prepareMediaPlayer()V
    .locals 5

    new-instance v1, Landroid/media/MediaPlayer;

    invoke-direct {v1}, Landroid/media/MediaPlayer;-><init>()V

    iput-object v1, p0, Lcom/samsung/android/settings/accessibility/AudioBalanceSeekbarPreference;->mMediaPlayer:Landroid/media/MediaPlayer;

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/AudioBalanceSeekbarPreference;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1, p0}, Landroid/media/MediaPlayer;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/AudioBalanceSeekbarPreference;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v1, v2}, Landroid/media/RingtoneManager;->getActualDefaultRingtoneUri(Landroid/content/Context;I)Landroid/net/Uri;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/AudioBalanceSeekbarPreference;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/AudioBalanceSeekbarPreference;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/AudioBalanceSeekbarPreference;->getContext()Landroid/content/Context;

    move-result-object v3

    const/4 v4, 0x1

    invoke-static {v3, v4}, Landroid/media/RingtoneManager;->getActualDefaultRingtoneUri(Landroid/content/Context;I)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/media/MediaPlayer;->setDataSource(Landroid/content/Context;Landroid/net/Uri;)V

    :goto_0
    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/AudioBalanceSeekbarPreference;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->prepare()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    const-string/jumbo v1, "AudioBalanceSeekbarPreference"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "prepareMediaPlayer() mMediaPlayer : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/settings/accessibility/AudioBalanceSeekbarPreference;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/AudioBalanceSeekbarPreference;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/AudioBalanceSeekbarPreference;->getContext()Landroid/content/Context;

    move-result-object v2

    sget-object v3, Landroid/provider/Settings$System;->DEFAULT_RINGTONE_URI:Landroid/net/Uri;

    invoke-virtual {v1, v2, v3}, Landroid/media/MediaPlayer;->setDataSource(Landroid/content/Context;Landroid/net/Uri;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string/jumbo v1, "AudioBalanceSeekbarPreference"

    const-string/jumbo v2, "Exception thrown during preparing sound."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method public releaseMediaPlayer()V
    .locals 4

    const/4 v3, 0x0

    const-string/jumbo v0, "AudioBalanceSeekbarPreference"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "releaseMediaPlayer() mMediaPlayer : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/settings/accessibility/AudioBalanceSeekbarPreference;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/AudioBalanceSeekbarPreference;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/AudioBalanceSeekbarPreference;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    iput-object v3, p0, Lcom/samsung/android/settings/accessibility/AudioBalanceSeekbarPreference;->mMediaPlayer:Landroid/media/MediaPlayer;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/settings/accessibility/AudioBalanceSeekbarPreference;->mMediaPlayerisPrepared:Z

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/AudioBalanceSeekbarPreference;->mAudioManager:Landroid/media/AudioManager;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/AudioBalanceSeekbarPreference;->mAudioManager:Landroid/media/AudioManager;

    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/AudioBalanceSeekbarPreference;->mAudioFocusListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->abandonAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;)I

    :cond_1
    return-void
.end method

.method public setDualColorSeekbar()V
    .locals 3

    const/4 v2, 0x1

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/AudioBalanceSeekbarPreference;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->isWiredHeadsetOn()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/AudioBalanceSeekbarPreference;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->semIsSafeMediaVolumeDeviceOn()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    invoke-virtual {p0, v2}, Lcom/samsung/android/settings/accessibility/AudioBalanceSeekbarPreference;->setEnabled(Z)V

    iput-boolean v2, p0, Lcom/samsung/android/settings/accessibility/AudioBalanceSeekbarPreference;->mEarPlugs:Z

    :goto_0
    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/AudioBalanceSeekbarPreference;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v0}, Landroid/widget/SeekBar;->invalidate()V

    return-void

    :cond_1
    invoke-direct {p0}, Lcom/samsung/android/settings/accessibility/AudioBalanceSeekbarPreference;->pauseMediaPlayer()V

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/accessibility/AudioBalanceSeekbarPreference;->setEnabled(Z)V

    iput-boolean v1, p0, Lcom/samsung/android/settings/accessibility/AudioBalanceSeekbarPreference;->mEarPlugs:Z

    goto :goto_0
.end method

.method public setEnabled(Z)V
    .locals 5

    const/4 v4, 0x0

    const/high16 v3, 0x3f800000    # 1.0f

    const v2, 0x3ebd70a4    # 0.37f

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/AudioBalanceSeekbarPreference;->mLeft:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/AudioBalanceSeekbarPreference;->mRight:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/AudioBalanceSeekbarPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "high_text_contrast_enabled"

    invoke-static {v0, v1, v4}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_0

    if-eqz p1, :cond_2

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/AudioBalanceSeekbarPreference;->mLeft:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setAlpha(F)V

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/AudioBalanceSeekbarPreference;->mRight:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setAlpha(F)V

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/AudioBalanceSeekbarPreference;->mSeekBar:Landroid/widget/SeekBar;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/AudioBalanceSeekbarPreference;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v0, p1}, Landroid/widget/SeekBar;->setEnabled(Z)V

    :cond_1
    invoke-super {p0, p1}, Landroid/preference/SeekBarPreference;->setEnabled(Z)V

    return-void

    :cond_2
    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/AudioBalanceSeekbarPreference;->mLeft:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setAlpha(F)V

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/AudioBalanceSeekbarPreference;->mRight:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setAlpha(F)V

    goto :goto_0
.end method
