.class Lcom/android/incallui/bike/BikeModeAudioManager$4;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/media/MediaPlayer$OnErrorListener;


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

.field final synthetic val$am:Landroid/media/AudioManager;


# direct methods
.method constructor <init>(Lcom/android/incallui/bike/BikeModeAudioManager;Landroid/media/AudioManager;)V
    .locals 0

    iput-object p1, p0, Lcom/android/incallui/bike/BikeModeAudioManager$4;->this$0:Lcom/android/incallui/bike/BikeModeAudioManager;

    iput-object p2, p0, Lcom/android/incallui/bike/BikeModeAudioManager$4;->val$am:Landroid/media/AudioManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Landroid/media/MediaPlayer;II)Z
    .locals 5

    const/4 v4, -0x1

    const-string v0, "BikeModeInCallUI_legacy"

    const-string v1, "BikeModeUtils : playGuidance : Playing error "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->stop()V

    :cond_0
    invoke-virtual {p1}, Landroid/media/MediaPlayer;->release()V

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/android/incallui/bike/BikeModeAudioManager;->access$002(Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer;

    sget v0, Lcom/android/incallui/bike/BikeModeAudioManager;->defaultMusicVolume:I

    if-eq v0, v4, :cond_1

    iget-object v0, p0, Lcom/android/incallui/bike/BikeModeAudioManager$4;->val$am:Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->semIsSafeMediaVolumeDeviceOn()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/incallui/bike/BikeModeAudioManager$4;->val$am:Landroid/media/AudioManager;

    const/4 v1, 0x3

    sget v2, Lcom/android/incallui/bike/BikeModeAudioManager;->defaultMusicVolume:I

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/media/AudioManager;->setStreamVolume(III)V

    :cond_1
    sput v4, Lcom/android/incallui/bike/BikeModeAudioManager;->defaultMusicVolume:I

    const/4 v0, 0x1

    return v0
.end method
