.class final Lcom/android/systemui/qs/tiles/SoundModeTileVolumeMixer$VolumeMixerBarCallback;
.super Ljava/lang/Object;
.source "SoundModeTileVolumeMixer.java"

# interfaces
.implements Lcom/android/systemui/qs/tiles/SoundModeTileVolumeBar$VolumeBarCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/qs/tiles/SoundModeTileVolumeMixer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "VolumeMixerBarCallback"
.end annotation


# instance fields
.field private mCurrent:Landroid/preference/SeekBarVolumizer;

.field final synthetic this$0:Lcom/android/systemui/qs/tiles/SoundModeTileVolumeMixer;


# direct methods
.method private constructor <init>(Lcom/android/systemui/qs/tiles/SoundModeTileVolumeMixer;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeMixer$VolumeMixerBarCallback;->this$0:Lcom/android/systemui/qs/tiles/SoundModeTileVolumeMixer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/systemui/qs/tiles/SoundModeTileVolumeMixer;Lcom/android/systemui/qs/tiles/SoundModeTileVolumeMixer$VolumeMixerBarCallback;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeMixer$VolumeMixerBarCallback;-><init>(Lcom/android/systemui/qs/tiles/SoundModeTileVolumeMixer;)V

    return-void
.end method


# virtual methods
.method public getCurrentUserContextForSample()Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeMixer$VolumeMixerBarCallback;->this$0:Lcom/android/systemui/qs/tiles/SoundModeTileVolumeMixer;

    invoke-static {v0}, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeMixer;->-get0(Lcom/android/systemui/qs/tiles/SoundModeTileVolumeMixer;)Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeMixer$VolumeMixerBarCallback;->this$0:Lcom/android/systemui/qs/tiles/SoundModeTileVolumeMixer;

    invoke-static {v0}, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeMixer;->-get0(Lcom/android/systemui/qs/tiles/SoundModeTileVolumeMixer;)Landroid/content/Context;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeMixer$VolumeMixerBarCallback;->this$0:Lcom/android/systemui/qs/tiles/SoundModeTileVolumeMixer;

    invoke-virtual {v0}, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeMixer;->getContext()Landroid/content/Context;

    move-result-object v0

    goto :goto_0
.end method

.method public isEnableZenMode()Z
    .locals 3

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeMixer$VolumeMixerBarCallback;->this$0:Lcom/android/systemui/qs/tiles/SoundModeTileVolumeMixer;

    invoke-static {v1}, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeMixer;->-get7(Lcom/android/systemui/qs/tiles/SoundModeTileVolumeMixer;)I

    move-result v1

    invoke-static {v1}, Landroid/provider/Settings$Global;->isValidZenMode(I)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeMixer$VolumeMixerBarCallback;->this$0:Lcom/android/systemui/qs/tiles/SoundModeTileVolumeMixer;

    invoke-static {v1}, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeMixer;->-get7(Lcom/android/systemui/qs/tiles/SoundModeTileVolumeMixer;)I

    move-result v1

    const/4 v2, 0x2

    if-eq v1, v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public isSettingAllSoundMute()Z
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeMixer$VolumeMixerBarCallback;->this$0:Lcom/android/systemui/qs/tiles/SoundModeTileVolumeMixer;

    invoke-static {v0}, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeMixer;->-get6(Lcom/android/systemui/qs/tiles/SoundModeTileVolumeMixer;)Lcom/android/systemui/qs/tiles/SoundModeTileVolumeMixer$VolumeMixerTileCallback;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeMixer$VolumeMixerBarCallback;->this$0:Lcom/android/systemui/qs/tiles/SoundModeTileVolumeMixer;

    invoke-static {v0}, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeMixer;->-get6(Lcom/android/systemui/qs/tiles/SoundModeTileVolumeMixer;)Lcom/android/systemui/qs/tiles/SoundModeTileVolumeMixer$VolumeMixerTileCallback;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeMixer$VolumeMixerTileCallback;->isSettingAllSoundMute()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isVoiceCalling()Z
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeMixer$VolumeMixerBarCallback;->this$0:Lcom/android/systemui/qs/tiles/SoundModeTileVolumeMixer;

    invoke-static {v0}, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeMixer;->-wrap0(Lcom/android/systemui/qs/tiles/SoundModeTileVolumeMixer;)Z

    move-result v0

    return v0
.end method

.method public onMuted(IZZ)V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeMixer$VolumeMixerBarCallback;->this$0:Lcom/android/systemui/qs/tiles/SoundModeTileVolumeMixer;

    invoke-static {v0}, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeMixer;->-get3(Lcom/android/systemui/qs/tiles/SoundModeTileVolumeMixer;)Lcom/android/systemui/qs/tiles/SoundModeTileVolumeMixer$MixerHandler;

    move-result-object v0

    const/16 v1, 0x855

    invoke-virtual {v0, v1}, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeMixer$MixerHandler;->sendNewMessage(I)V

    return-void
.end method

.method public onProgressChanged(ILandroid/widget/SeekBar;IZ)V
    .locals 0

    return-void
.end method

.method public onSampleStarting(ILandroid/preference/SeekBarVolumizer;)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeMixer$VolumeMixerBarCallback;->mCurrent:Landroid/preference/SeekBarVolumizer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeMixer$VolumeMixerBarCallback;->mCurrent:Landroid/preference/SeekBarVolumizer;

    if-eq v0, p2, :cond_0

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeMixer$VolumeMixerBarCallback;->mCurrent:Landroid/preference/SeekBarVolumizer;

    invoke-virtual {v0}, Landroid/preference/SeekBarVolumizer;->stopSample()V

    :cond_0
    iput-object p2, p0, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeMixer$VolumeMixerBarCallback;->mCurrent:Landroid/preference/SeekBarVolumizer;

    return-void
.end method
