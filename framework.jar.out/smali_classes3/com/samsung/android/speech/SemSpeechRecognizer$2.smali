.class Lcom/samsung/android/speech/SemSpeechRecognizer$2;
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

    iput-object p1, p0, Lcom/samsung/android/speech/SemSpeechRecognizer$2;->this$0:Lcom/samsung/android/speech/SemSpeechRecognizer;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    const-string/jumbo v2, "commandType"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iget-object v1, p0, Lcom/samsung/android/speech/SemSpeechRecognizer$2;->this$0:Lcom/samsung/android/speech/SemSpeechRecognizer;

    iget-object v2, p0, Lcom/samsung/android/speech/SemSpeechRecognizer$2;->this$0:Lcom/samsung/android/speech/SemSpeechRecognizer;

    invoke-static {v2}, Lcom/samsung/android/speech/SemSpeechRecognizer;->-get1(Lcom/samsung/android/speech/SemSpeechRecognizer;)Landroid/os/Handler;

    move-result-object v2

    invoke-static {v1, v0, v2}, Lcom/samsung/android/speech/SemSpeechRecognizer;->-wrap0(Lcom/samsung/android/speech/SemSpeechRecognizer;ILandroid/os/Handler;)V

    return-void
.end method
