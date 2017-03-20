.class Lcom/android/incallui/bike/BikeModeAudioManager$6;
.super Ljava/lang/Object;
.source "BikeModeAudioManager.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnErrorListener;


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
    .param p1, "this$0"    # Lcom/android/incallui/bike/BikeModeAudioManager;

    .prologue
    .line 248
    iput-object p1, p0, Lcom/android/incallui/bike/BikeModeAudioManager$6;->this$0:Lcom/android/incallui/bike/BikeModeAudioManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Landroid/media/MediaPlayer;II)Z
    .locals 2
    .param p1, "mp"    # Landroid/media/MediaPlayer;
    .param p2, "what"    # I
    .param p3, "extra"    # I

    .prologue
    .line 250
    const-string v0, "BikeModeAudioManager"

    const-string v1, "guidanceBeepSoundPlay : Playing Error"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 251
    invoke-virtual {p1}, Landroid/media/MediaPlayer;->stop()V

    .line 252
    invoke-virtual {p1}, Landroid/media/MediaPlayer;->release()V

    .line 253
    iget-object v0, p0, Lcom/android/incallui/bike/BikeModeAudioManager$6;->this$0:Lcom/android/incallui/bike/BikeModeAudioManager;

    const/4 v1, 0x0

    # setter for: Lcom/android/incallui/bike/BikeModeAudioManager;->mMediaPlayer:Landroid/media/MediaPlayer;
    invoke-static {v0, v1}, Lcom/android/incallui/bike/BikeModeAudioManager;->access$002(Lcom/android/incallui/bike/BikeModeAudioManager;Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer;

    .line 254
    const/4 v0, 0x1

    return v0
.end method
