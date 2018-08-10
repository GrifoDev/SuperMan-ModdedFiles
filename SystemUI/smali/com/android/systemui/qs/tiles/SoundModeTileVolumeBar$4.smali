.class Lcom/android/systemui/qs/tiles/SoundModeTileVolumeBar$4;
.super Ljava/lang/Object;
.source "SoundModeTileVolumeBar.java"

# interfaces
.implements Landroid/preference/SeekBarVolumizer$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/qs/tiles/SoundModeTileVolumeBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/qs/tiles/SoundModeTileVolumeBar;


# direct methods
.method constructor <init>(Lcom/android/systemui/qs/tiles/SoundModeTileVolumeBar;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeBar$4;->this$0:Lcom/android/systemui/qs/tiles/SoundModeTileVolumeBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMuted(ZZ)V
    .locals 3

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeBar$4;->this$0:Lcom/android/systemui/qs/tiles/SoundModeTileVolumeBar;

    invoke-static {v1}, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeBar;->-get1(Lcom/android/systemui/qs/tiles/SoundModeTileVolumeBar;)Z

    move-result v1

    if-eq v1, p1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeBar$4;->this$0:Lcom/android/systemui/qs/tiles/SoundModeTileVolumeBar;

    invoke-static {v1, p1}, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeBar;->-set0(Lcom/android/systemui/qs/tiles/SoundModeTileVolumeBar;Z)Z

    const/4 v0, 0x1

    :cond_0
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeBar$4;->this$0:Lcom/android/systemui/qs/tiles/SoundModeTileVolumeBar;

    invoke-static {v1}, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeBar;->-get5(Lcom/android/systemui/qs/tiles/SoundModeTileVolumeBar;)Z

    move-result v1

    if-eq v1, p2, :cond_1

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeBar$4;->this$0:Lcom/android/systemui/qs/tiles/SoundModeTileVolumeBar;

    invoke-static {v1, p2}, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeBar;->-set1(Lcom/android/systemui/qs/tiles/SoundModeTileVolumeBar;Z)Z

    const/4 v0, 0x1

    :cond_1
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeBar$4;->this$0:Lcom/android/systemui/qs/tiles/SoundModeTileVolumeBar;

    invoke-static {v1}, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeBar;->-get3(Lcom/android/systemui/qs/tiles/SoundModeTileVolumeBar;)Lcom/android/systemui/qs/tiles/SoundModeTileVolumeBar$VolumeBarCallback;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeBar$4;->this$0:Lcom/android/systemui/qs/tiles/SoundModeTileVolumeBar;

    invoke-static {v2}, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeBar;->-get2(Lcom/android/systemui/qs/tiles/SoundModeTileVolumeBar;)I

    move-result v2

    invoke-interface {v1, v2, p1, p2}, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeBar$VolumeBarCallback;->onMuted(IZZ)V

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeBar$4;->this$0:Lcom/android/systemui/qs/tiles/SoundModeTileVolumeBar;

    invoke-static {v1}, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeBar;->-get0(Lcom/android/systemui/qs/tiles/SoundModeTileVolumeBar;)Lcom/android/systemui/qs/tiles/SoundModeTileVolumeBar$BarHandler;

    move-result-object v1

    const/16 v2, 0xd9c

    invoke-virtual {v1, v2, v0}, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeBar$BarHandler;->sendNewMessage(IZ)V

    return-void
.end method

.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeBar$4;->this$0:Lcom/android/systemui/qs/tiles/SoundModeTileVolumeBar;

    invoke-static {v0}, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeBar;->-get3(Lcom/android/systemui/qs/tiles/SoundModeTileVolumeBar;)Lcom/android/systemui/qs/tiles/SoundModeTileVolumeBar$VolumeBarCallback;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeBar$4;->this$0:Lcom/android/systemui/qs/tiles/SoundModeTileVolumeBar;

    invoke-static {v1}, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeBar;->-get2(Lcom/android/systemui/qs/tiles/SoundModeTileVolumeBar;)I

    move-result v1

    invoke-interface {v0, v1, p1, p2, p3}, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeBar$VolumeBarCallback;->onProgressChanged(ILandroid/widget/SeekBar;IZ)V

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeBar$4;->this$0:Lcom/android/systemui/qs/tiles/SoundModeTileVolumeBar;

    invoke-static {v0}, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeBar;->-get0(Lcom/android/systemui/qs/tiles/SoundModeTileVolumeBar;)Lcom/android/systemui/qs/tiles/SoundModeTileVolumeBar$BarHandler;

    move-result-object v0

    const/16 v1, 0xd9c

    invoke-virtual {v0, v1}, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeBar$BarHandler;->sendNewMessage(I)V

    return-void
.end method

.method public onSampleStarting(Landroid/preference/SeekBarVolumizer;)V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeBar$4;->this$0:Lcom/android/systemui/qs/tiles/SoundModeTileVolumeBar;

    invoke-static {v0}, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeBar;->-wrap2(Lcom/android/systemui/qs/tiles/SoundModeTileVolumeBar;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeBar$4;->this$0:Lcom/android/systemui/qs/tiles/SoundModeTileVolumeBar;

    invoke-static {v0}, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeBar;->-get3(Lcom/android/systemui/qs/tiles/SoundModeTileVolumeBar;)Lcom/android/systemui/qs/tiles/SoundModeTileVolumeBar$VolumeBarCallback;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeBar$4;->this$0:Lcom/android/systemui/qs/tiles/SoundModeTileVolumeBar;

    invoke-static {v1}, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeBar;->-get2(Lcom/android/systemui/qs/tiles/SoundModeTileVolumeBar;)I

    move-result v1

    invoke-interface {v0, v1, p1}, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeBar$VolumeBarCallback;->onSampleStarting(ILandroid/preference/SeekBarVolumizer;)V

    :cond_0
    return-void
.end method
