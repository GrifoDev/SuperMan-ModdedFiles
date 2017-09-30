.class final Lcom/android/incallui/operator/kor/SmartAnswerUtils$2;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/media/MediaPlayer$OnErrorListener;


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

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Landroid/media/MediaPlayer;II)Z
    .locals 2

    const/4 v1, 0x0

    const-string v0, "- Playing error "

    invoke-static {v0}, Lcom/android/incallui/operator/kor/SmartAnswerUtils;->log(Ljava/lang/String;)V

    invoke-static {}, Lcom/android/incallui/operator/kor/SmartAnswerUtils;->isSmartAnsweringMode()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {v1}, Lcom/android/incallui/operator/kor/SmartAnswerUtils;->setSmartAnsweringMode(Z)V

    :cond_0
    invoke-virtual {p1}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->stop()V

    :cond_1
    invoke-virtual {p1}, Landroid/media/MediaPlayer;->release()V

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/android/incallui/operator/kor/SmartAnswerUtils;->access$002(Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer;

    invoke-static {v1}, Lcom/android/incallui/operator/kor/SmartAnswerUtils;->setSmartAnsweringMode(Z)V

    const/4 v0, 0x1

    return v0
.end method
