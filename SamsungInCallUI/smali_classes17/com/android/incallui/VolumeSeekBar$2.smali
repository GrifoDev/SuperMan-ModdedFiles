.class Lcom/android/incallui/VolumeSeekBar$2;
.super Ljava/lang/Object;
.source "VolumeSeekBar.java"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/incallui/VolumeSeekBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/incallui/VolumeSeekBar;


# direct methods
.method constructor <init>(Lcom/android/incallui/VolumeSeekBar;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/incallui/VolumeSeekBar;

    .prologue
    .line 151
    iput-object p1, p0, Lcom/android/incallui/VolumeSeekBar$2;->this$0:Lcom/android/incallui/VolumeSeekBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 7
    .param p1, "seekBar"    # Landroid/widget/SeekBar;
    .param p2, "progress"    # I
    .param p3, "fromUser"    # Z

    .prologue
    const/16 v6, 0x65

    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 158
    if-nez p3, :cond_1

    .line 191
    :cond_0
    :goto_0
    return-void

    .line 161
    :cond_1
    iget-object v1, p0, Lcom/android/incallui/VolumeSeekBar$2;->this$0:Lcom/android/incallui/VolumeSeekBar;

    # getter for: Lcom/android/incallui/VolumeSeekBar;->mVolumeSeekBar:Landroid/widget/SeekBar;
    invoke-static {v1}, Lcom/android/incallui/VolumeSeekBar;->access$100(Lcom/android/incallui/VolumeSeekBar;)Landroid/widget/SeekBar;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/incallui/VolumeSeekBar$2;->this$0:Lcom/android/incallui/VolumeSeekBar;

    # getter for: Lcom/android/incallui/VolumeSeekBar;->mVolumeIndex:Landroid/widget/TextView;
    invoke-static {v1}, Lcom/android/incallui/VolumeSeekBar;->access$200(Lcom/android/incallui/VolumeSeekBar;)Landroid/widget/TextView;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 164
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/CallList;->hasLiveCallToDisplay()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 167
    if-lez p2, :cond_2

    .line 168
    add-int/lit8 p2, p2, -0x1

    .line 170
    :cond_2
    iget-object v1, p0, Lcom/android/incallui/VolumeSeekBar$2;->this$0:Lcom/android/incallui/VolumeSeekBar;

    # getter for: Lcom/android/incallui/VolumeSeekBar;->mVolumeSeekBar:Landroid/widget/SeekBar;
    invoke-static {v1}, Lcom/android/incallui/VolumeSeekBar;->access$100(Lcom/android/incallui/VolumeSeekBar;)Landroid/widget/SeekBar;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/SeekBar;->getProgress()I

    move-result v1

    if-nez v1, :cond_3

    .line 171
    const-string v1, "Set force progress level 1 for call volume"

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 172
    iget-object v1, p0, Lcom/android/incallui/VolumeSeekBar$2;->this$0:Lcom/android/incallui/VolumeSeekBar;

    # getter for: Lcom/android/incallui/VolumeSeekBar;->mVolumeSeekBar:Landroid/widget/SeekBar;
    invoke-static {v1}, Lcom/android/incallui/VolumeSeekBar;->access$100(Lcom/android/incallui/VolumeSeekBar;)Landroid/widget/SeekBar;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 175
    :cond_3
    invoke-static {}, Lcom/android/incallui/util/AudioUtils;->getAudioStream()I

    move-result v0

    .line 176
    .local v0, "stream":I
    iget-object v1, p0, Lcom/android/incallui/VolumeSeekBar$2;->this$0:Lcom/android/incallui/VolumeSeekBar;

    # getter for: Lcom/android/incallui/VolumeSeekBar;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/incallui/VolumeSeekBar;->access$000(Lcom/android/incallui/VolumeSeekBar;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v6}, Landroid/os/Handler;->removeMessages(I)V

    .line 177
    iget-object v1, p0, Lcom/android/incallui/VolumeSeekBar$2;->this$0:Lcom/android/incallui/VolumeSeekBar;

    # getter for: Lcom/android/incallui/VolumeSeekBar;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/incallui/VolumeSeekBar;->access$000(Lcom/android/incallui/VolumeSeekBar;)Landroid/os/Handler;

    move-result-object v1

    const-wide/16 v2, 0xbb8

    invoke-virtual {v1, v6, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 179
    iget-object v1, p0, Lcom/android/incallui/VolumeSeekBar$2;->this$0:Lcom/android/incallui/VolumeSeekBar;

    # getter for: Lcom/android/incallui/VolumeSeekBar;->mAudioManager:Landroid/media/AudioManager;
    invoke-static {v1}, Lcom/android/incallui/VolumeSeekBar;->access$300(Lcom/android/incallui/VolumeSeekBar;)Landroid/media/AudioManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v1

    if-eq v1, p2, :cond_4

    .line 180
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Touch setting volume level : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 181
    iget-object v1, p0, Lcom/android/incallui/VolumeSeekBar$2;->this$0:Lcom/android/incallui/VolumeSeekBar;

    # getter for: Lcom/android/incallui/VolumeSeekBar;->mAudioManager:Landroid/media/AudioManager;
    invoke-static {v1}, Lcom/android/incallui/VolumeSeekBar;->access$300(Lcom/android/incallui/VolumeSeekBar;)Landroid/media/AudioManager;

    move-result-object v1

    invoke-virtual {v1, v0, p2, v5}, Landroid/media/AudioManager;->setStreamVolume(III)V

    .line 182
    invoke-static {}, Lcom/android/incallui/util/SoundEffect;->isExtraVolOn()Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/android/incallui/VolumeSeekBar$2;->this$0:Lcom/android/incallui/VolumeSeekBar;

    # getter for: Lcom/android/incallui/VolumeSeekBar;->mAudioManager:Landroid/media/AudioManager;
    invoke-static {v1}, Lcom/android/incallui/VolumeSeekBar;->access$300(Lcom/android/incallui/VolumeSeekBar;)Landroid/media/AudioManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    move-result v1

    if-ne p2, v1, :cond_5

    .line 183
    iget-object v1, p0, Lcom/android/incallui/VolumeSeekBar$2;->this$0:Lcom/android/incallui/VolumeSeekBar;

    # getter for: Lcom/android/incallui/VolumeSeekBar;->mVolumeSeekBar:Landroid/widget/SeekBar;
    invoke-static {v1}, Lcom/android/incallui/VolumeSeekBar;->access$100(Lcom/android/incallui/VolumeSeekBar;)Landroid/widget/SeekBar;

    move-result-object v1

    iget-object v2, p0, Lcom/android/incallui/VolumeSeekBar$2;->this$0:Lcom/android/incallui/VolumeSeekBar;

    # getter for: Lcom/android/incallui/VolumeSeekBar;->OVERLAP_ACTIVATED_COLOR:Landroid/content/res/ColorStateList;
    invoke-static {v2}, Lcom/android/incallui/VolumeSeekBar;->access$400(Lcom/android/incallui/VolumeSeekBar;)Landroid/content/res/ColorStateList;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/SeekBar;->setProgressTintList(Landroid/content/res/ColorStateList;)V

    .line 184
    iget-object v1, p0, Lcom/android/incallui/VolumeSeekBar$2;->this$0:Lcom/android/incallui/VolumeSeekBar;

    # getter for: Lcom/android/incallui/VolumeSeekBar;->mVolumeSeekBar:Landroid/widget/SeekBar;
    invoke-static {v1}, Lcom/android/incallui/VolumeSeekBar;->access$100(Lcom/android/incallui/VolumeSeekBar;)Landroid/widget/SeekBar;

    move-result-object v1

    iget-object v2, p0, Lcom/android/incallui/VolumeSeekBar$2;->this$0:Lcom/android/incallui/VolumeSeekBar;

    # getter for: Lcom/android/incallui/VolumeSeekBar;->OVERLAP_ACTIVATED_COLOR:Landroid/content/res/ColorStateList;
    invoke-static {v2}, Lcom/android/incallui/VolumeSeekBar;->access$400(Lcom/android/incallui/VolumeSeekBar;)Landroid/content/res/ColorStateList;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/SeekBar;->setThumbTintList(Landroid/content/res/ColorStateList;)V

    .line 190
    :cond_4
    :goto_1
    iget-object v1, p0, Lcom/android/incallui/VolumeSeekBar$2;->this$0:Lcom/android/incallui/VolumeSeekBar;

    # getter for: Lcom/android/incallui/VolumeSeekBar;->mVolumeIndex:Landroid/widget/TextView;
    invoke-static {v1}, Lcom/android/incallui/VolumeSeekBar;->access$200(Lcom/android/incallui/VolumeSeekBar;)Landroid/widget/TextView;

    move-result-object v1

    const-string v2, "%d"

    new-array v3, v4, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/android/incallui/VolumeSeekBar$2;->this$0:Lcom/android/incallui/VolumeSeekBar;

    # getter for: Lcom/android/incallui/VolumeSeekBar;->mVolumeSeekBar:Landroid/widget/SeekBar;
    invoke-static {v4}, Lcom/android/incallui/VolumeSeekBar;->access$100(Lcom/android/incallui/VolumeSeekBar;)Landroid/widget/SeekBar;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/SeekBar;->getProgress()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 186
    :cond_5
    iget-object v1, p0, Lcom/android/incallui/VolumeSeekBar$2;->this$0:Lcom/android/incallui/VolumeSeekBar;

    # getter for: Lcom/android/incallui/VolumeSeekBar;->mVolumeSeekBar:Landroid/widget/SeekBar;
    invoke-static {v1}, Lcom/android/incallui/VolumeSeekBar;->access$100(Lcom/android/incallui/VolumeSeekBar;)Landroid/widget/SeekBar;

    move-result-object v1

    iget-object v2, p0, Lcom/android/incallui/VolumeSeekBar$2;->this$0:Lcom/android/incallui/VolumeSeekBar;

    # getter for: Lcom/android/incallui/VolumeSeekBar;->DEFAULT_ACTIVATED_COLOR:Landroid/content/res/ColorStateList;
    invoke-static {v2}, Lcom/android/incallui/VolumeSeekBar;->access$500(Lcom/android/incallui/VolumeSeekBar;)Landroid/content/res/ColorStateList;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/SeekBar;->setProgressTintList(Landroid/content/res/ColorStateList;)V

    .line 187
    iget-object v1, p0, Lcom/android/incallui/VolumeSeekBar$2;->this$0:Lcom/android/incallui/VolumeSeekBar;

    # getter for: Lcom/android/incallui/VolumeSeekBar;->mVolumeSeekBar:Landroid/widget/SeekBar;
    invoke-static {v1}, Lcom/android/incallui/VolumeSeekBar;->access$100(Lcom/android/incallui/VolumeSeekBar;)Landroid/widget/SeekBar;

    move-result-object v1

    iget-object v2, p0, Lcom/android/incallui/VolumeSeekBar$2;->this$0:Lcom/android/incallui/VolumeSeekBar;

    # getter for: Lcom/android/incallui/VolumeSeekBar;->DEFAULT_ACTIVATED_COLOR:Landroid/content/res/ColorStateList;
    invoke-static {v2}, Lcom/android/incallui/VolumeSeekBar;->access$500(Lcom/android/incallui/VolumeSeekBar;)Landroid/content/res/ColorStateList;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/SeekBar;->setThumbTintList(Landroid/content/res/ColorStateList;)V

    goto :goto_1
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0
    .param p1, "seekBar"    # Landroid/widget/SeekBar;

    .prologue
    .line 154
    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0
    .param p1, "seekBar"    # Landroid/widget/SeekBar;

    .prologue
    .line 195
    return-void
.end method
