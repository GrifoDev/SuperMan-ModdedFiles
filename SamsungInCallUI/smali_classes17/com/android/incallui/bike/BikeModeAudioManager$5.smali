.class Lcom/android/incallui/bike/BikeModeAudioManager$5;
.super Ljava/lang/Object;
.source "BikeModeAudioManager.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnCompletionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/incallui/bike/BikeModeAudioManager;->guidanceBeepSoundPlay()V
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

    iput-object p1, p0, Lcom/android/incallui/bike/BikeModeAudioManager$5;->this$0:Lcom/android/incallui/bike/BikeModeAudioManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompletion(Landroid/media/MediaPlayer;)V
    .locals 5

    const-string v2, "BikeModeAudioManager"

    const-string v3, "guidanceBeepSoundPlay: beep sound completed"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->stop()V

    :cond_0
    invoke-virtual {p1}, Landroid/media/MediaPlayer;->release()V

    const/4 p1, 0x0

    iget-object v2, p0, Lcom/android/incallui/bike/BikeModeAudioManager$5;->this$0:Lcom/android/incallui/bike/BikeModeAudioManager;

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/android/incallui/bike/BikeModeAudioManager;->access$002(Lcom/android/incallui/bike/BikeModeAudioManager;Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer;

    iget-object v2, p0, Lcom/android/incallui/bike/BikeModeAudioManager$5;->this$0:Lcom/android/incallui/bike/BikeModeAudioManager;

    invoke-static {v2}, Lcom/android/incallui/bike/BikeModeAudioManager;->access$300(Lcom/android/incallui/bike/BikeModeAudioManager;)Landroid/content/Context;

    move-result-object v2

    const-string v3, "audio"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    const-string v2, "callmemo_enabled=false"

    invoke-virtual {v0, v2}, Landroid/media/AudioManager;->setParameters(Ljava/lang/String;)V

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/incallui/CallList;->getActiveOrBackgroundCall()Lcom/android/incallui/Call;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v2, p0, Lcom/android/incallui/bike/BikeModeAudioManager$5;->this$0:Lcom/android/incallui/bike/BikeModeAudioManager;

    invoke-static {v2}, Lcom/android/incallui/bike/BikeModeAudioManager;->access$200(Lcom/android/incallui/bike/BikeModeAudioManager;)Lcom/android/incallui/bike/BikeModeController;

    move-result-object v2

    const/16 v3, 0x1388

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lcom/android/incallui/bike/BikeModeController;->startBikeModeTimer(II)V

    :cond_1
    return-void
.end method
