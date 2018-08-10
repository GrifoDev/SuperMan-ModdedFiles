.class public Lcom/samsung/android/settings/notification/VolumeLimiterSeekBarPreference;
.super Lcom/android/settings/SeekBarPreference;
.source "VolumeLimiterSeekBarPreference.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/settings/notification/VolumeLimiterSeekBarPreference$Callback;
    }
.end annotation


# instance fields
.field private mAudioManager:Landroid/media/AudioManager;

.field private mCallback:Lcom/samsung/android/settings/notification/VolumeLimiterSeekBarPreference$Callback;

.field private mCheckedPW:Z

.field private mContext:Landroid/content/Context;

.field private mIconView:Landroid/widget/ImageView;

.field private mMediaPlayer:Landroid/media/MediaPlayer;

.field private mSeekBar:Landroid/widget/SeekBar;

.field private mStopped:Z

.field private mSuppressionTextView:Landroid/widget/TextView;

.field private oldLimiterValue:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/samsung/android/settings/notification/VolumeLimiterSeekBarPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/samsung/android/settings/notification/VolumeLimiterSeekBarPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/samsung/android/settings/notification/VolumeLimiterSeekBarPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 1

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/settings/SeekBarPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    const v0, 0x7f0d0235

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/notification/VolumeLimiterSeekBarPreference;->setLayoutResource(I)V

    iput-object p1, p0, Lcom/samsung/android/settings/notification/VolumeLimiterSeekBarPreference;->mContext:Landroid/content/Context;

    const-string/jumbo v0, "audio"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/samsung/android/settings/notification/VolumeLimiterSeekBarPreference;->mAudioManager:Landroid/media/AudioManager;

    return-void
.end method

.method private getMediaVolumeUri()Landroid/net/Uri;
    .locals 1

    const-string/jumbo v0, "file:///system/media/audio/ui/Media_preview_Over_the_horizon.ogg"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method private init()V
    .locals 5

    const/4 v4, 0x0

    iget-object v1, p0, Lcom/samsung/android/settings/notification/VolumeLimiterSeekBarPreference;->mSeekBar:Landroid/widget/SeekBar;

    if-nez v1, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lcom/samsung/android/settings/notification/VolumeLimiterSeekBarPreference;->mSeekBar:Landroid/widget/SeekBar;

    const/4 v2, 0x6

    invoke-virtual {v1, v2}, Landroid/widget/SeekBar;->setMax(I)V

    iget-object v1, p0, Lcom/samsung/android/settings/notification/VolumeLimiterSeekBarPreference;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "volume_limiter_value"

    const/16 v3, 0x9

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    add-int/lit8 v0, v1, -0x9

    iget-object v1, p0, Lcom/samsung/android/settings/notification/VolumeLimiterSeekBarPreference;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v1, v0}, Landroid/widget/SeekBar;->setProgress(I)V

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/samsung/android/settings/notification/VolumeLimiterSeekBarPreference;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v1, v4}, Landroid/widget/SeekBar;->semSetOverlapPointForDualColor(I)V

    :goto_0
    iget-object v1, p0, Lcom/samsung/android/settings/notification/VolumeLimiterSeekBarPreference;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v1}, Landroid/widget/SeekBar;->refreshDrawableState()V

    return-void

    :cond_1
    iget-object v1, p0, Lcom/samsung/android/settings/notification/VolumeLimiterSeekBarPreference;->mSeekBar:Landroid/widget/SeekBar;

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Landroid/widget/SeekBar;->semSetOverlapPointForDualColor(I)V

    goto :goto_0
.end method


# virtual methods
.method public DisplayCheckUI()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/notification/VolumeLimiterSeekBarPreference;->mCallback:Lcom/samsung/android/settings/notification/VolumeLimiterSeekBarPreference$Callback;

    invoke-interface {v0}, Lcom/samsung/android/settings/notification/VolumeLimiterSeekBarPreference$Callback;->showCheckPasswordDialog()V

    return-void
.end method

.method public onActivityStop()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/settings/notification/VolumeLimiterSeekBarPreference;->mStopped:Z

    return-void
.end method

.method public onBindViewHolder(Landroid/support/v7/preference/PreferenceViewHolder;)V
    .locals 3

    const/16 v1, 0x8

    invoke-super {p0, p1}, Lcom/android/settings/SeekBarPreference;->onBindViewHolder(Landroid/support/v7/preference/PreferenceViewHolder;)V

    const v0, 0x1020463

    invoke-virtual {p1, v0}, Landroid/support/v7/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/SeekBar;

    iput-object v0, p0, Lcom/samsung/android/settings/notification/VolumeLimiterSeekBarPreference;->mSeekBar:Landroid/widget/SeekBar;

    const v0, 0x1020006

    invoke-virtual {p1, v0}, Landroid/support/v7/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/samsung/android/settings/notification/VolumeLimiterSeekBarPreference;->mIconView:Landroid/widget/ImageView;

    const v0, 0x7f0a0855

    invoke-virtual {p1, v0}, Landroid/support/v7/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/samsung/android/settings/notification/VolumeLimiterSeekBarPreference;->mSuppressionTextView:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/samsung/android/settings/notification/VolumeLimiterSeekBarPreference;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/samsung/android/settings/notification/VolumeLimiterSeekBarPreference;->mSuppressionTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    invoke-direct {p0}, Lcom/samsung/android/settings/notification/VolumeLimiterSeekBarPreference;->init()V

    iget-object v0, p0, Lcom/samsung/android/settings/notification/VolumeLimiterSeekBarPreference;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "volume_limiter_value"

    const/16 v2, 0x9

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    add-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/samsung/android/settings/notification/VolumeLimiterSeekBarPreference;->oldLimiterValue:I

    return-void
.end method

.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 6

    const/16 v5, 0x9

    const/4 v4, 0x0

    invoke-super {p0, p1, p2, p3}, Lcom/android/settings/SeekBarPreference;->onProgressChanged(Landroid/widget/SeekBar;IZ)V

    if-eqz p3, :cond_3

    add-int/lit8 p2, p2, 0x9

    const-string/jumbo v1, "VolumeLimiterSeekBarPreference"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "volume_limiter_value : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    if-ge p2, v5, :cond_0

    iget-object v1, p0, Lcom/samsung/android/settings/notification/VolumeLimiterSeekBarPreference;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v1, v5}, Landroid/widget/SeekBar;->setProgress(I)V

    return-void

    :cond_0
    iget-object v1, p0, Lcom/samsung/android/settings/notification/VolumeLimiterSeekBarPreference;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "volumelimit_set_password"

    invoke-static {v1, v2, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lcom/samsung/android/settings/notification/VolumeLimiterSeekBarPreference;->mCheckedPW:Z

    xor-int/lit8 v0, v1, 0x1

    :goto_0
    if-eqz v0, :cond_2

    iget v1, p0, Lcom/samsung/android/settings/notification/VolumeLimiterSeekBarPreference;->oldLimiterValue:I

    if-le p2, v1, :cond_2

    iget-object v1, p0, Lcom/samsung/android/settings/notification/VolumeLimiterSeekBarPreference;->mCallback:Lcom/samsung/android/settings/notification/VolumeLimiterSeekBarPreference$Callback;

    invoke-interface {v1}, Lcom/samsung/android/settings/notification/VolumeLimiterSeekBarPreference$Callback;->showCheckPasswordDialog()V

    iget-object v1, p0, Lcom/samsung/android/settings/notification/VolumeLimiterSeekBarPreference;->mSeekBar:Landroid/widget/SeekBar;

    iget v2, p0, Lcom/samsung/android/settings/notification/VolumeLimiterSeekBarPreference;->oldLimiterValue:I

    invoke-virtual {v1, v2}, Landroid/widget/SeekBar;->setProgress(I)V

    return-void

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    if-le p2, v5, :cond_4

    iget-object v1, p0, Lcom/samsung/android/settings/notification/VolumeLimiterSeekBarPreference;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v1, v4}, Landroid/widget/SeekBar;->semSetOverlapPointForDualColor(I)V

    :goto_1
    iget-object v1, p0, Lcom/samsung/android/settings/notification/VolumeLimiterSeekBarPreference;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "volume_limiter_value"

    invoke-static {v1, v2, p2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object v1, p0, Lcom/samsung/android/settings/notification/VolumeLimiterSeekBarPreference;->mAudioManager:Landroid/media/AudioManager;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "audioParam;volumelimit_value="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/media/AudioManager;->setParameters(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/samsung/android/settings/notification/VolumeLimiterSeekBarPreference;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v1}, Landroid/media/AudioManager;->isMusicActive()Z

    move-result v1

    iget-object v1, p0, Lcom/samsung/android/settings/notification/VolumeLimiterSeekBarPreference;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/samsung/android/settings/notification/VolumeLimiterSeekBarPreference;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0b04de

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    iget-object v3, p0, Lcom/samsung/android/settings/notification/VolumeLimiterSeekBarPreference;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0b04e0

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    int-to-long v4, p2

    invoke-static {v1, v2, v3, v4, v5}, Lcom/android/settings/Utils;->insertEventwithValueLog(Landroid/content/Context;IIJ)V

    :cond_3
    return-void

    :cond_4
    iget-object v1, p0, Lcom/samsung/android/settings/notification/VolumeLimiterSeekBarPreference;->mSeekBar:Landroid/widget/SeekBar;

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Landroid/widget/SeekBar;->semSetOverlapPointForDualColor(I)V

    goto :goto_1
.end method

.method public prepareMediaPlayer()V
    .locals 4

    new-instance v2, Landroid/media/MediaPlayer;

    invoke-direct {v2}, Landroid/media/MediaPlayer;-><init>()V

    iput-object v2, p0, Lcom/samsung/android/settings/notification/VolumeLimiterSeekBarPreference;->mMediaPlayer:Landroid/media/MediaPlayer;

    iget-object v2, p0, Lcom/samsung/android/settings/notification/VolumeLimiterSeekBarPreference;->mMediaPlayer:Landroid/media/MediaPlayer;

    const/4 v3, 0x3

    invoke-virtual {v2, v3}, Landroid/media/MediaPlayer;->setAudioStreamType(I)V

    :try_start_0
    invoke-direct {p0}, Lcom/samsung/android/settings/notification/VolumeLimiterSeekBarPreference;->getMediaVolumeUri()Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/settings/notification/VolumeLimiterSeekBarPreference;->mMediaPlayer:Landroid/media/MediaPlayer;

    iget-object v3, p0, Lcom/samsung/android/settings/notification/VolumeLimiterSeekBarPreference;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v3, v1}, Landroid/media/MediaPlayer;->setDataSource(Landroid/content/Context;Landroid/net/Uri;)V

    iget-object v2, p0, Lcom/samsung/android/settings/notification/VolumeLimiterSeekBarPreference;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v2}, Landroid/media/MediaPlayer;->prepare()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public releaseMediaPlayer()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/notification/VolumeLimiterSeekBarPreference;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    return-void
.end method

.method public setCallback(Lcom/samsung/android/settings/notification/VolumeLimiterSeekBarPreference$Callback;)V
    .locals 1

    iput-object p1, p0, Lcom/samsung/android/settings/notification/VolumeLimiterSeekBarPreference;->mCallback:Lcom/samsung/android/settings/notification/VolumeLimiterSeekBarPreference$Callback;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/settings/notification/VolumeLimiterSeekBarPreference;->mCheckedPW:Z

    return-void
.end method

.method public setCheckedPW(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/settings/notification/VolumeLimiterSeekBarPreference;->mCheckedPW:Z

    return-void
.end method
