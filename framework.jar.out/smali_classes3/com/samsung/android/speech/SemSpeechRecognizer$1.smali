.class Lcom/samsung/android/speech/SemSpeechRecognizer$1;
.super Landroid/os/Handler;
.source "SemSpeechRecognizer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/speech/SemSpeechRecognizer;->start(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/speech/SemSpeechRecognizer;


# direct methods
.method constructor <init>(Lcom/samsung/android/speech/SemSpeechRecognizer;Landroid/os/Looper;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/speech/SemSpeechRecognizer;
    .param p2, "$anonymous0"    # Landroid/os/Looper;

    .prologue
    .line 158
    iput-object p1, p0, Lcom/samsung/android/speech/SemSpeechRecognizer$1;->this$0:Lcom/samsung/android/speech/SemSpeechRecognizer;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 160
    invoke-static {}, Lcom/samsung/android/speech/SemSpeechRecognizer;->-get0()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "audio is halt without stopRecognition()"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 161
    iget-object v0, p0, Lcom/samsung/android/speech/SemSpeechRecognizer$1;->this$0:Lcom/samsung/android/speech/SemSpeechRecognizer;

    invoke-virtual {v0}, Lcom/samsung/android/speech/SemSpeechRecognizer;->stopRecognition()V

    .line 159
    return-void
.end method
