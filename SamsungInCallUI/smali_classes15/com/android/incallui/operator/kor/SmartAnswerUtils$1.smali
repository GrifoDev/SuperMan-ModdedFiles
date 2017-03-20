.class final Lcom/android/incallui/operator/kor/SmartAnswerUtils$1;
.super Ljava/lang/Object;
.source "SmartAnswerUtils.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnCompletionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/incallui/operator/kor/SmartAnswerUtils;->playGuidance()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 118
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompletion(Landroid/media/MediaPlayer;)V
    .locals 1
    .param p1, "mp"    # Landroid/media/MediaPlayer;

    .prologue
    .line 120
    const-string v0, "- Playing completed "

    invoke-static {v0}, Lcom/android/incallui/operator/kor/SmartAnswerUtils;->log(Ljava/lang/String;)V

    .line 121
    invoke-virtual {p1}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 122
    invoke-virtual {p1}, Landroid/media/MediaPlayer;->stop()V

    .line 124
    :cond_0
    invoke-virtual {p1}, Landroid/media/MediaPlayer;->release()V

    .line 125
    const/4 p1, 0x0

    .line 126
    const/4 v0, 0x0

    # setter for: Lcom/android/incallui/operator/kor/SmartAnswerUtils;->mediaPlayer:Landroid/media/MediaPlayer;
    invoke-static {v0}, Lcom/android/incallui/operator/kor/SmartAnswerUtils;->access$002(Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer;

    .line 127
    return-void
.end method
