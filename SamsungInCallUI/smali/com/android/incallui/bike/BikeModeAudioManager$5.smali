.class Lcom/android/incallui/bike/BikeModeAudioManager$5;
.super Ljava/lang/Object;

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

    const/4 v4, 0x0

    const/4 v3, -0x1

    const-string v0, "BikeModeAudioManager"

    const-string v1, "guidanceBeepSoundPlay: beep sound completed"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->stop()V

    :cond_0
    invoke-virtual {p1}, Landroid/media/MediaPlayer;->release()V

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/android/incallui/bike/BikeModeAudioManager;->access$002(Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer;

    iget-object v0, p0, Lcom/android/incallui/bike/BikeModeAudioManager$5;->this$0:Lcom/android/incallui/bike/BikeModeAudioManager;

    invoke-static {v0}, Lcom/android/incallui/bike/BikeModeAudioManager;->access$300(Lcom/android/incallui/bike/BikeModeAudioManager;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "audio"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    sget v1, Lcom/android/incallui/bike/BikeModeAudioManager;->defaultMusicVolume:I

    if-eq v1, v3, :cond_1

    const/4 v1, 0x3

    sget v2, Lcom/android/incallui/bike/BikeModeAudioManager;->defaultMusicVolume:I

    invoke-virtual {v0, v1, v2, v4}, Landroid/media/AudioManager;->setStreamVolume(III)V

    :cond_1
    sput v3, Lcom/android/incallui/bike/BikeModeAudioManager;->defaultMusicVolume:I

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/CallList;->getActiveOrBackgroundCall()Lcom/android/incallui/Call;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/incallui/bike/BikeModeAudioManager$5;->this$0:Lcom/android/incallui/bike/BikeModeAudioManager;

    invoke-static {v0}, Lcom/android/incallui/bike/BikeModeAudioManager;->access$200(Lcom/android/incallui/bike/BikeModeAudioManager;)Lcom/android/incallui/bike/BikeModeController;

    move-result-object v0

    const/16 v1, 0x1388

    invoke-virtual {v0, v1, v4}, Lcom/android/incallui/bike/BikeModeController;->startBikeModeTimer(II)V

    :cond_2
    return-void
.end method
