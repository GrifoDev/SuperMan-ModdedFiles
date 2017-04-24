.class Lcom/android/incallui/bike/BikeModeAudioManager$1;
.super Ljava/lang/Object;
.source "BikeModeAudioManager.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnCompletionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/incallui/bike/BikeModeAudioManager;->playEnglishGuidance()V
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

    iput-object p1, p0, Lcom/android/incallui/bike/BikeModeAudioManager$1;->this$0:Lcom/android/incallui/bike/BikeModeAudioManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompletion(Landroid/media/MediaPlayer;)V
    .locals 3

    const-string v1, "BikeModeAudioManager"

    const-string v2, "playEnglishGuidance: Guidance play completed"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->stop()V

    :cond_0
    invoke-virtual {p1}, Landroid/media/MediaPlayer;->release()V

    const/4 p1, 0x0

    iget-object v1, p0, Lcom/android/incallui/bike/BikeModeAudioManager$1;->this$0:Lcom/android/incallui/bike/BikeModeAudioManager;

    const/4 v2, 0x0

    # setter for: Lcom/android/incallui/bike/BikeModeAudioManager;->mMediaPlayer:Landroid/media/MediaPlayer;
    invoke-static {v1, v2}, Lcom/android/incallui/bike/BikeModeAudioManager;->access$002(Lcom/android/incallui/bike/BikeModeAudioManager;Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer;

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/CallList;->getActiveOrBackgroundCall()Lcom/android/incallui/Call;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/android/incallui/bike/BikeModeAudioManager$1;->this$0:Lcom/android/incallui/bike/BikeModeAudioManager;

    invoke-virtual {v1}, Lcom/android/incallui/bike/BikeModeAudioManager;->guidanceBeepSoundPlay()V

    :cond_1
    return-void
.end method
