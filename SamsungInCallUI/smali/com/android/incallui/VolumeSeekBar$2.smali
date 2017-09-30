.class Lcom/android/incallui/VolumeSeekBar$2;
.super Ljava/lang/Object;

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

    iput-object p1, p0, Lcom/android/incallui/VolumeSeekBar$2;->this$0:Lcom/android/incallui/VolumeSeekBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 7

    const/16 v6, 0x65

    const/4 v5, 0x1

    const/4 v4, 0x0

    if-nez p3, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/incallui/VolumeSeekBar$2;->this$0:Lcom/android/incallui/VolumeSeekBar;

    invoke-static {v0}, Lcom/android/incallui/VolumeSeekBar;->access$100(Lcom/android/incallui/VolumeSeekBar;)Landroid/widget/SeekBar;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/VolumeSeekBar$2;->this$0:Lcom/android/incallui/VolumeSeekBar;

    invoke-static {v0}, Lcom/android/incallui/VolumeSeekBar;->access$200(Lcom/android/incallui/VolumeSeekBar;)Landroid/widget/TextView;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/CallList;->hasLiveCallToDisplay()Z

    move-result v0

    if-eqz v0, :cond_0

    if-lez p2, :cond_2

    add-int/lit8 p2, p2, -0x1

    :cond_2
    iget-object v0, p0, Lcom/android/incallui/VolumeSeekBar$2;->this$0:Lcom/android/incallui/VolumeSeekBar;

    invoke-static {v0}, Lcom/android/incallui/VolumeSeekBar;->access$100(Lcom/android/incallui/VolumeSeekBar;)Landroid/widget/SeekBar;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/SeekBar;->getProgress()I

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "Set force progress level 1 for call volume"

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/incallui/VolumeSeekBar$2;->this$0:Lcom/android/incallui/VolumeSeekBar;

    invoke-static {v0}, Lcom/android/incallui/VolumeSeekBar;->access$100(Lcom/android/incallui/VolumeSeekBar;)Landroid/widget/SeekBar;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/widget/SeekBar;->setProgress(I)V

    :cond_3
    invoke-static {}, Lcom/android/incallui/util/AudioUtils;->getAudioStream()I

    move-result v0

    iget-object v1, p0, Lcom/android/incallui/VolumeSeekBar$2;->this$0:Lcom/android/incallui/VolumeSeekBar;

    invoke-static {v1}, Lcom/android/incallui/VolumeSeekBar;->access$000(Lcom/android/incallui/VolumeSeekBar;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v6}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v1, p0, Lcom/android/incallui/VolumeSeekBar$2;->this$0:Lcom/android/incallui/VolumeSeekBar;

    invoke-static {v1}, Lcom/android/incallui/VolumeSeekBar;->access$000(Lcom/android/incallui/VolumeSeekBar;)Landroid/os/Handler;

    move-result-object v1

    const-wide/16 v2, 0xbb8

    invoke-virtual {v1, v6, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    iget-object v1, p0, Lcom/android/incallui/VolumeSeekBar$2;->this$0:Lcom/android/incallui/VolumeSeekBar;

    invoke-static {v1}, Lcom/android/incallui/VolumeSeekBar;->access$300(Lcom/android/incallui/VolumeSeekBar;)Landroid/media/AudioManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v1

    if-eq v1, p2, :cond_4

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

    iget-object v1, p0, Lcom/android/incallui/VolumeSeekBar$2;->this$0:Lcom/android/incallui/VolumeSeekBar;

    invoke-static {v1}, Lcom/android/incallui/VolumeSeekBar;->access$300(Lcom/android/incallui/VolumeSeekBar;)Landroid/media/AudioManager;

    move-result-object v1

    invoke-virtual {v1, v0, p2, v4}, Landroid/media/AudioManager;->setStreamVolume(III)V

    invoke-static {}, Lcom/android/incallui/util/SoundEffect;->isExtraVolOn()Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/android/incallui/VolumeSeekBar$2;->this$0:Lcom/android/incallui/VolumeSeekBar;

    invoke-static {v1}, Lcom/android/incallui/VolumeSeekBar;->access$300(Lcom/android/incallui/VolumeSeekBar;)Landroid/media/AudioManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    move-result v0

    if-ne p2, v0, :cond_5

    iget-object v0, p0, Lcom/android/incallui/VolumeSeekBar$2;->this$0:Lcom/android/incallui/VolumeSeekBar;

    invoke-static {v0}, Lcom/android/incallui/VolumeSeekBar;->access$100(Lcom/android/incallui/VolumeSeekBar;)Landroid/widget/SeekBar;

    move-result-object v0

    iget-object v1, p0, Lcom/android/incallui/VolumeSeekBar$2;->this$0:Lcom/android/incallui/VolumeSeekBar;

    invoke-static {v1}, Lcom/android/incallui/VolumeSeekBar;->access$400(Lcom/android/incallui/VolumeSeekBar;)Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setProgressTintList(Landroid/content/res/ColorStateList;)V

    iget-object v0, p0, Lcom/android/incallui/VolumeSeekBar$2;->this$0:Lcom/android/incallui/VolumeSeekBar;

    invoke-static {v0}, Lcom/android/incallui/VolumeSeekBar;->access$100(Lcom/android/incallui/VolumeSeekBar;)Landroid/widget/SeekBar;

    move-result-object v0

    iget-object v1, p0, Lcom/android/incallui/VolumeSeekBar$2;->this$0:Lcom/android/incallui/VolumeSeekBar;

    invoke-static {v1}, Lcom/android/incallui/VolumeSeekBar;->access$400(Lcom/android/incallui/VolumeSeekBar;)Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setThumbTintList(Landroid/content/res/ColorStateList;)V

    :cond_4
    :goto_1
    iget-object v0, p0, Lcom/android/incallui/VolumeSeekBar$2;->this$0:Lcom/android/incallui/VolumeSeekBar;

    invoke-static {v0}, Lcom/android/incallui/VolumeSeekBar;->access$200(Lcom/android/incallui/VolumeSeekBar;)Landroid/widget/TextView;

    move-result-object v0

    const-string v1, "%d"

    new-array v2, v5, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/android/incallui/VolumeSeekBar$2;->this$0:Lcom/android/incallui/VolumeSeekBar;

    invoke-static {v3}, Lcom/android/incallui/VolumeSeekBar;->access$100(Lcom/android/incallui/VolumeSeekBar;)Landroid/widget/SeekBar;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/SeekBar;->getProgress()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    :cond_5
    iget-object v0, p0, Lcom/android/incallui/VolumeSeekBar$2;->this$0:Lcom/android/incallui/VolumeSeekBar;

    invoke-static {v0}, Lcom/android/incallui/VolumeSeekBar;->access$100(Lcom/android/incallui/VolumeSeekBar;)Landroid/widget/SeekBar;

    move-result-object v0

    iget-object v1, p0, Lcom/android/incallui/VolumeSeekBar$2;->this$0:Lcom/android/incallui/VolumeSeekBar;

    invoke-static {v1}, Lcom/android/incallui/VolumeSeekBar;->access$500(Lcom/android/incallui/VolumeSeekBar;)Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setProgressTintList(Landroid/content/res/ColorStateList;)V

    iget-object v0, p0, Lcom/android/incallui/VolumeSeekBar$2;->this$0:Lcom/android/incallui/VolumeSeekBar;

    invoke-static {v0}, Lcom/android/incallui/VolumeSeekBar;->access$100(Lcom/android/incallui/VolumeSeekBar;)Landroid/widget/SeekBar;

    move-result-object v0

    iget-object v1, p0, Lcom/android/incallui/VolumeSeekBar$2;->this$0:Lcom/android/incallui/VolumeSeekBar;

    invoke-static {v1}, Lcom/android/incallui/VolumeSeekBar;->access$500(Lcom/android/incallui/VolumeSeekBar;)Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setThumbTintList(Landroid/content/res/ColorStateList;)V

    goto :goto_1
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0

    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0

    return-void
.end method
