.class Lcom/samsung/android/speech/AudioTask$1;
.super Landroid/os/Handler;
.source "AudioTask.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/speech/AudioTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/speech/AudioTask;


# direct methods
.method constructor <init>(Lcom/samsung/android/speech/AudioTask;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/speech/AudioTask$1;->this$0:Lcom/samsung/android/speech/AudioTask;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    const-string/jumbo v2, "recognition_result"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/speech/AudioTask$1;->this$0:Lcom/samsung/android/speech/AudioTask;

    invoke-static {v1}, Lcom/samsung/android/speech/AudioTask;->-get0(Lcom/samsung/android/speech/AudioTask;)Lcom/samsung/android/speech/SemSpeechRecognizer$ResultListener;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/speech/AudioTask$1;->this$0:Lcom/samsung/android/speech/AudioTask;

    invoke-static {v1}, Lcom/samsung/android/speech/AudioTask;->-get0(Lcom/samsung/android/speech/AudioTask;)Lcom/samsung/android/speech/SemSpeechRecognizer$ResultListener;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/samsung/android/speech/SemSpeechRecognizer$ResultListener;->onResults([Ljava/lang/String;)V

    :cond_0
    return-void
.end method
