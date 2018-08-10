.class public interface abstract Lcom/android/systemui/qs/tiles/SoundModeTileVolumeBar$VolumeBarCallback;
.super Ljava/lang/Object;
.source "SoundModeTileVolumeBar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/qs/tiles/SoundModeTileVolumeBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "VolumeBarCallback"
.end annotation


# virtual methods
.method public abstract getCurrentUserContextForSample()Landroid/content/Context;
.end method

.method public abstract isEnableZenMode()Z
.end method

.method public abstract isSettingAllSoundMute()Z
.end method

.method public abstract isVoiceCalling()Z
.end method

.method public abstract onMuted(IZZ)V
.end method

.method public abstract onProgressChanged(ILandroid/widget/SeekBar;IZ)V
.end method

.method public abstract onSampleStarting(ILandroid/preference/SeekBarVolumizer;)V
.end method
