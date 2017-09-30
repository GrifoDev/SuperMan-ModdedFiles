.class Lcom/android/incallui/bike/BikeModeAudioManager$8;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/media/MediaPlayer$OnErrorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/incallui/bike/BikeModeAudioManager;->playRingtone(Z)V
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

    iput-object p1, p0, Lcom/android/incallui/bike/BikeModeAudioManager$8;->this$0:Lcom/android/incallui/bike/BikeModeAudioManager;

    iput-object p2, p0, Lcom/android/incallui/bike/BikeModeAudioManager$8;->val$am:Landroid/media/AudioManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Landroid/media/MediaPlayer;II)Z
    .locals 3

    const/4 v2, 0x0

    const-string v0, "BikeModeAudioManager"

    const-string v1, "playRingtone : Playing Error"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->stop()V

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->release()V

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/android/incallui/bike/BikeModeAudioManager;->access$002(Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer;

    iget-object v0, p0, Lcom/android/incallui/bike/BikeModeAudioManager$8;->val$am:Landroid/media/AudioManager;

    iget-object v1, p0, Lcom/android/incallui/bike/BikeModeAudioManager$8;->this$0:Lcom/android/incallui/bike/BikeModeAudioManager;

    invoke-static {v1}, Lcom/android/incallui/bike/BikeModeAudioManager;->access$400(Lcom/android/incallui/bike/BikeModeAudioManager;)I

    move-result v1

    invoke-virtual {v0, v2, v1, v2}, Landroid/media/AudioManager;->setStreamVolume(III)V

    invoke-static {v2}, Lcom/android/incallui/bike/BikeModeAudioManager;->access$502(Z)Z

    const/4 v0, 0x1

    return v0
.end method
