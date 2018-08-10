.class final Lcom/android/systemui/qs/tiles/SoundModeTileVolumeBar$QuickTileSeekBarVolumizer;
.super Landroid/preference/SeekBarVolumizer;
.source "SoundModeTileVolumeBar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/qs/tiles/SoundModeTileVolumeBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "QuickTileSeekBarVolumizer"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/qs/tiles/SoundModeTileVolumeBar;


# direct methods
.method public constructor <init>(Lcom/android/systemui/qs/tiles/SoundModeTileVolumeBar;Landroid/content/Context;ILandroid/net/Uri;Landroid/preference/SeekBarVolumizer$Callback;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeBar$QuickTileSeekBarVolumizer;->this$0:Lcom/android/systemui/qs/tiles/SoundModeTileVolumeBar;

    invoke-direct {p0, p2, p3, p4, p5}, Landroid/preference/SeekBarVolumizer;-><init>(Landroid/content/Context;ILandroid/net/Uri;Landroid/preference/SeekBarVolumizer$Callback;)V

    return-void
.end method


# virtual methods
.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/preference/SeekBarVolumizer;->onStopTrackingTouch(Landroid/widget/SeekBar;)V

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeBar$QuickTileSeekBarVolumizer;->this$0:Lcom/android/systemui/qs/tiles/SoundModeTileVolumeBar;

    invoke-static {v0}, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeBar;->-get0(Lcom/android/systemui/qs/tiles/SoundModeTileVolumeBar;)Lcom/android/systemui/qs/tiles/SoundModeTileVolumeBar$BarHandler;

    move-result-object v0

    const/16 v1, 0x856

    invoke-virtual {v0, v1}, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeBar$BarHandler;->sendNewMessage(I)V

    return-void
.end method
