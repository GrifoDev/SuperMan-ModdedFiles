.class Lcom/android/incallui/PrivatePolicy$1;
.super Ljava/lang/Object;
.source "PrivatePolicy.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnCompletionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/incallui/PrivatePolicy;->playCameraSound(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/incallui/PrivatePolicy;


# direct methods
.method constructor <init>(Lcom/android/incallui/PrivatePolicy;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/incallui/PrivatePolicy;

    .prologue
    .line 235
    iput-object p1, p0, Lcom/android/incallui/PrivatePolicy$1;->this$0:Lcom/android/incallui/PrivatePolicy;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompletion(Landroid/media/MediaPlayer;)V
    .locals 2
    .param p1, "mp"    # Landroid/media/MediaPlayer;

    .prologue
    .line 237
    invoke-virtual {p1}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 238
    invoke-virtual {p1}, Landroid/media/MediaPlayer;->stop()V

    .line 240
    :cond_0
    invoke-virtual {p1}, Landroid/media/MediaPlayer;->release()V

    .line 241
    const/4 p1, 0x0

    .line 242
    iget-object v0, p0, Lcom/android/incallui/PrivatePolicy$1;->this$0:Lcom/android/incallui/PrivatePolicy;

    const/4 v1, 0x0

    # setter for: Lcom/android/incallui/PrivatePolicy;->mediaPlayer:Landroid/media/MediaPlayer;
    invoke-static {v0, v1}, Lcom/android/incallui/PrivatePolicy;->access$002(Lcom/android/incallui/PrivatePolicy;Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer;

    .line 243
    return-void
.end method