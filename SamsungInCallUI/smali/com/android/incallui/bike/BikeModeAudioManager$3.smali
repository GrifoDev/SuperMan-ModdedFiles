.class Lcom/android/incallui/bike/BikeModeAudioManager$3;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/media/MediaPlayer$OnCompletionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/incallui/bike/BikeModeAudioManager;->playGuidance()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/incallui/bike/BikeModeAudioManager;


# direct methods
.method constructor <init>(Lcom/android/incallui/bike/BikeModeAudioManager;)V
    .locals 0

    iput-object p1, p0, Lcom/android/incallui/bike/BikeModeAudioManager$3;->this$0:Lcom/android/incallui/bike/BikeModeAudioManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompletion(Landroid/media/MediaPlayer;)V
    .locals 3

    const-string v0, "BikeModeAudioManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "playGuidance: Guidance play completed, playTwice = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/incallui/bike/BikeModeAudioManager$3;->this$0:Lcom/android/incallui/bike/BikeModeAudioManager;

    invoke-static {v2}, Lcom/android/incallui/bike/BikeModeAudioManager;->access$100(Lcom/android/incallui/bike/BikeModeAudioManager;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->stop()V

    :cond_0
    invoke-virtual {p1}, Landroid/media/MediaPlayer;->release()V

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/android/incallui/bike/BikeModeAudioManager;->access$002(Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer;

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/CallList;->getActiveOrBackgroundCall()Lcom/android/incallui/Call;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/incallui/bike/BikeModeAudioManager$3;->this$0:Lcom/android/incallui/bike/BikeModeAudioManager;

    invoke-static {v0}, Lcom/android/incallui/bike/BikeModeAudioManager;->access$100(Lcom/android/incallui/bike/BikeModeAudioManager;)Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lcom/android/incallui/bike/BikeModeAudioManager$3;->this$0:Lcom/android/incallui/bike/BikeModeAudioManager;

    invoke-static {v0}, Lcom/android/incallui/bike/BikeModeAudioManager;->access$200(Lcom/android/incallui/bike/BikeModeAudioManager;)Lcom/android/incallui/bike/BikeModeController;

    move-result-object v0

    const/16 v1, 0x1388

    const/4 v2, 0x3

    invoke-virtual {v0, v1, v2}, Lcom/android/incallui/bike/BikeModeController;->startBikeModeTimer(II)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-object v0, p0, Lcom/android/incallui/bike/BikeModeAudioManager$3;->this$0:Lcom/android/incallui/bike/BikeModeAudioManager;

    invoke-virtual {v0}, Lcom/android/incallui/bike/BikeModeAudioManager;->guidanceBeepSoundPlay()V

    goto :goto_0
.end method
