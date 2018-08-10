.class Lcom/samsung/vsf/SpeechRecognizer$InternalResponseHandler$1;
.super Landroid/os/Handler;
.source "SpeechRecognizer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/vsf/SpeechRecognizer$InternalResponseHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/samsung/vsf/SpeechRecognizer$InternalResponseHandler;


# direct methods
.method constructor <init>(Lcom/samsung/vsf/SpeechRecognizer$InternalResponseHandler;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/vsf/SpeechRecognizer$InternalResponseHandler$1;->this$1:Lcom/samsung/vsf/SpeechRecognizer$InternalResponseHandler;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/vsf/SpeechRecognizer$InternalResponseHandler$1;->this$1:Lcom/samsung/vsf/SpeechRecognizer$InternalResponseHandler;

    invoke-static {v0}, Lcom/samsung/vsf/SpeechRecognizer$InternalResponseHandler;->access$100(Lcom/samsung/vsf/SpeechRecognizer$InternalResponseHandler;)Lcom/samsung/vsf/RecognitionListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-void

    :cond_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/samsung/vsf/SpeechRecognizer$InternalResponseHandler$1;->this$1:Lcom/samsung/vsf/SpeechRecognizer$InternalResponseHandler;

    invoke-static {v0}, Lcom/samsung/vsf/SpeechRecognizer$InternalResponseHandler;->access$100(Lcom/samsung/vsf/SpeechRecognizer$InternalResponseHandler;)Lcom/samsung/vsf/RecognitionListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/vsf/RecognitionListener;->onBeginningOfSpeech()V

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/samsung/vsf/SpeechRecognizer$InternalResponseHandler$1;->this$1:Lcom/samsung/vsf/SpeechRecognizer$InternalResponseHandler;

    invoke-static {v0}, Lcom/samsung/vsf/SpeechRecognizer$InternalResponseHandler;->access$100(Lcom/samsung/vsf/SpeechRecognizer$InternalResponseHandler;)Lcom/samsung/vsf/RecognitionListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/vsf/RecognitionListener;->onEndOfSpeech()V

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lcom/samsung/vsf/SpeechRecognizer$InternalResponseHandler$1;->this$1:Lcom/samsung/vsf/SpeechRecognizer$InternalResponseHandler;

    invoke-static {v0}, Lcom/samsung/vsf/SpeechRecognizer$InternalResponseHandler;->access$100(Lcom/samsung/vsf/SpeechRecognizer$InternalResponseHandler;)Lcom/samsung/vsf/RecognitionListener;

    move-result-object v1

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/util/Properties;

    invoke-interface {v1, v0}, Lcom/samsung/vsf/RecognitionListener;->onPartialResults(Ljava/util/Properties;)V

    goto :goto_0

    :pswitch_3
    iget-object v0, p0, Lcom/samsung/vsf/SpeechRecognizer$InternalResponseHandler$1;->this$1:Lcom/samsung/vsf/SpeechRecognizer$InternalResponseHandler;

    invoke-static {v0}, Lcom/samsung/vsf/SpeechRecognizer$InternalResponseHandler;->access$100(Lcom/samsung/vsf/SpeechRecognizer$InternalResponseHandler;)Lcom/samsung/vsf/RecognitionListener;

    move-result-object v1

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/util/Properties;

    invoke-interface {v1, v0}, Lcom/samsung/vsf/RecognitionListener;->onResults(Ljava/util/Properties;)V

    goto :goto_0

    :pswitch_4
    iget-object v0, p0, Lcom/samsung/vsf/SpeechRecognizer$InternalResponseHandler$1;->this$1:Lcom/samsung/vsf/SpeechRecognizer$InternalResponseHandler;

    invoke-static {v0}, Lcom/samsung/vsf/SpeechRecognizer$InternalResponseHandler;->access$100(Lcom/samsung/vsf/SpeechRecognizer$InternalResponseHandler;)Lcom/samsung/vsf/RecognitionListener;

    move-result-object v1

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-interface {v1, v0}, Lcom/samsung/vsf/RecognitionListener;->onError(Ljava/lang/String;)V

    goto :goto_0

    :pswitch_5
    iget-object v0, p0, Lcom/samsung/vsf/SpeechRecognizer$InternalResponseHandler$1;->this$1:Lcom/samsung/vsf/SpeechRecognizer$InternalResponseHandler;

    invoke-static {v0}, Lcom/samsung/vsf/SpeechRecognizer$InternalResponseHandler;->access$100(Lcom/samsung/vsf/SpeechRecognizer$InternalResponseHandler;)Lcom/samsung/vsf/RecognitionListener;

    move-result-object v1

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-interface {v1, v0}, Lcom/samsung/vsf/RecognitionListener;->onErrorString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/vsf/SpeechRecognizer$InternalResponseHandler$1;->this$1:Lcom/samsung/vsf/SpeechRecognizer$InternalResponseHandler;

    invoke-static {v0}, Lcom/samsung/vsf/SpeechRecognizer$InternalResponseHandler;->access$100(Lcom/samsung/vsf/SpeechRecognizer$InternalResponseHandler;)Lcom/samsung/vsf/RecognitionListener;

    move-result-object v1

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-interface {v1, v0}, Lcom/samsung/vsf/RecognitionListener;->onError(Ljava/lang/String;)V

    goto :goto_0

    :pswitch_6
    iget-object v0, p0, Lcom/samsung/vsf/SpeechRecognizer$InternalResponseHandler$1;->this$1:Lcom/samsung/vsf/SpeechRecognizer$InternalResponseHandler;

    invoke-static {v0}, Lcom/samsung/vsf/SpeechRecognizer$InternalResponseHandler;->access$100(Lcom/samsung/vsf/SpeechRecognizer$InternalResponseHandler;)Lcom/samsung/vsf/RecognitionListener;

    move-result-object v1

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-interface {v1, v0}, Lcom/samsung/vsf/RecognitionListener;->onRmsChanged(I)V

    goto :goto_0

    :pswitch_7
    iget-object v0, p0, Lcom/samsung/vsf/SpeechRecognizer$InternalResponseHandler$1;->this$1:Lcom/samsung/vsf/SpeechRecognizer$InternalResponseHandler;

    invoke-static {v0}, Lcom/samsung/vsf/SpeechRecognizer$InternalResponseHandler;->access$100(Lcom/samsung/vsf/SpeechRecognizer$InternalResponseHandler;)Lcom/samsung/vsf/RecognitionListener;

    move-result-object v1

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/Bundle;

    invoke-interface {v1, v0}, Lcom/samsung/vsf/RecognitionListener;->onReadyForSpeech(Landroid/os/Bundle;)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_6
        :pswitch_5
        :pswitch_7
    .end packed-switch
.end method
