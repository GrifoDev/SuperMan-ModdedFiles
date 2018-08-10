.class Lcom/samsung/vsf/SpeechRecognizer$InternalResponseHandler;
.super Lcom/samsung/android/svoice/asrserviceinterface/IAsrResponse$Stub;
.source "SpeechRecognizer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/vsf/SpeechRecognizer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "InternalResponseHandler"
.end annotation


# instance fields
.field private final ERROR_DELAY:I

.field private client:Lcom/samsung/vsf/RecognitionListener;

.field public mInternalHandler:Landroid/os/Handler;

.field final synthetic this$0:Lcom/samsung/vsf/SpeechRecognizer;


# direct methods
.method private constructor <init>(Lcom/samsung/vsf/SpeechRecognizer;)V
    .locals 1

    iput-object p1, p0, Lcom/samsung/vsf/SpeechRecognizer$InternalResponseHandler;->this$0:Lcom/samsung/vsf/SpeechRecognizer;

    invoke-direct {p0}, Lcom/samsung/android/svoice/asrserviceinterface/IAsrResponse$Stub;-><init>()V

    const/16 v0, 0xbb8

    iput v0, p0, Lcom/samsung/vsf/SpeechRecognizer$InternalResponseHandler;->ERROR_DELAY:I

    new-instance v0, Lcom/samsung/vsf/SpeechRecognizer$InternalResponseHandler$1;

    invoke-direct {v0, p0}, Lcom/samsung/vsf/SpeechRecognizer$InternalResponseHandler$1;-><init>(Lcom/samsung/vsf/SpeechRecognizer$InternalResponseHandler;)V

    iput-object v0, p0, Lcom/samsung/vsf/SpeechRecognizer$InternalResponseHandler;->mInternalHandler:Landroid/os/Handler;

    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/vsf/SpeechRecognizer;Lcom/samsung/vsf/SpeechRecognizer$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/vsf/SpeechRecognizer$InternalResponseHandler;-><init>(Lcom/samsung/vsf/SpeechRecognizer;)V

    return-void
.end method

.method static synthetic access$100(Lcom/samsung/vsf/SpeechRecognizer$InternalResponseHandler;)Lcom/samsung/vsf/RecognitionListener;
    .locals 1

    iget-object v0, p0, Lcom/samsung/vsf/SpeechRecognizer$InternalResponseHandler;->client:Lcom/samsung/vsf/RecognitionListener;

    return-object v0
.end method

.method static synthetic access$102(Lcom/samsung/vsf/SpeechRecognizer$InternalResponseHandler;Lcom/samsung/vsf/RecognitionListener;)Lcom/samsung/vsf/RecognitionListener;
    .locals 0

    iput-object p1, p0, Lcom/samsung/vsf/SpeechRecognizer$InternalResponseHandler;->client:Lcom/samsung/vsf/RecognitionListener;

    return-object p1
.end method

.method private extractResult(Landroid/os/Bundle;)Ljava/util/Properties;
    .locals 3

    new-instance v0, Ljava/util/Properties;

    invoke-direct {v0}, Ljava/util/Properties;-><init>()V

    const-string/jumbo v1, "asrLatency"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "asrLatency"

    invoke-virtual {v0, v2, v1}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    const-string/jumbo v1, "itn"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "itn"

    invoke-virtual {v0, v2, v1}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    const-string/jumbo v1, "instanceId"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "instanceId"

    invoke-virtual {v0, v2, v1}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    const-string/jumbo v1, "utterance"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "utterance"

    invoke-virtual {v0, v2, v1}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    return-object v0
.end method


# virtual methods
.method public onBeginningOfSpeech()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string/jumbo v0, "IASR_SpeechRecognizer"

    const-string/jumbo v1, "onBeginningOfSpeech()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/vsf/SpeechRecognizer$InternalResponseHandler;->mInternalHandler:Landroid/os/Handler;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/vsf/SpeechRecognizer$InternalResponseHandler;->mInternalHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0
.end method

.method public onBufferReceived([B)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v1, p0, Lcom/samsung/vsf/SpeechRecognizer$InternalResponseHandler;->client:Lcom/samsung/vsf/RecognitionListener;

    if-nez v1, :cond_1

    :cond_0
    return-void

    :cond_1
    if-nez p1, :cond_2

    :goto_0
    array-length v1, p1

    div-int/lit8 v1, v1, 0x2

    new-array v0, v1, [S

    invoke-static {p1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->asShortBuffer()Ljava/nio/ShortBuffer;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/nio/ShortBuffer;->get([S)Ljava/nio/ShortBuffer;

    iget-object v1, p0, Lcom/samsung/vsf/SpeechRecognizer$InternalResponseHandler;->client:Lcom/samsung/vsf/RecognitionListener;

    invoke-interface {v1, v0}, Lcom/samsung/vsf/RecognitionListener;->onBufferReceived([S)V

    return-void

    :cond_2
    array-length v1, p1

    if-eqz v1, :cond_0

    goto :goto_0
.end method

.method public onEndOfSpeech()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string/jumbo v0, "IASR_SpeechRecognizer"

    const-string/jumbo v1, "onEndOfSpeech()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/vsf/SpeechRecognizer$InternalResponseHandler;->mInternalHandler:Landroid/os/Handler;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/vsf/SpeechRecognizer$InternalResponseHandler;->mInternalHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0
.end method

.method public onError(Ljava/lang/String;)V
    .locals 5

    const/16 v4, 0xa

    const-string/jumbo v0, "internal error"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/samsung/vsf/SpeechRecognizer$InternalResponseHandler;->mInternalHandler:Landroid/os/Handler;

    if-nez v0, :cond_3

    :cond_1
    :goto_1
    return-void

    :cond_2
    iget-object v0, p0, Lcom/samsung/vsf/SpeechRecognizer$InternalResponseHandler;->this$0:Lcom/samsung/vsf/SpeechRecognizer;

    invoke-static {v0}, Lcom/samsung/vsf/SpeechRecognizer;->access$200(Lcom/samsung/vsf/SpeechRecognizer;)Lcom/samsung/vsf/SDKConnectionManager;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/vsf/SpeechRecognizer$InternalResponseHandler;->this$0:Lcom/samsung/vsf/SpeechRecognizer;

    invoke-static {v0}, Lcom/samsung/vsf/SpeechRecognizer;->access$200(Lcom/samsung/vsf/SpeechRecognizer;)Lcom/samsung/vsf/SDKConnectionManager;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/samsung/vsf/SDKConnectionManager;->destroy(Z)V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/samsung/vsf/SpeechRecognizer$InternalResponseHandler;->mInternalHandler:Landroid/os/Handler;

    invoke-virtual {v0, v4}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_1

    const-string/jumbo v0, "IASR_SpeechRecognizer"

    const-string/jumbo v1, "sendError"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/vsf/SpeechRecognizer$InternalResponseHandler;->mInternalHandler:Landroid/os/Handler;

    const-wide/16 v2, 0xbb8

    invoke-virtual {v0, v4, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    iget-object v0, p0, Lcom/samsung/vsf/SpeechRecognizer$InternalResponseHandler;->mInternalHandler:Landroid/os/Handler;

    const/4 v1, 0x5

    invoke-static {v0, v1, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_1
.end method

.method public onErrorString(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/vsf/SpeechRecognizer$InternalResponseHandler;->mInternalHandler:Landroid/os/Handler;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/vsf/SpeechRecognizer$InternalResponseHandler;->mInternalHandler:Landroid/os/Handler;

    const/4 v1, 0x7

    invoke-static {v0, v1, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0
.end method

.method public onPartialResults(Lcom/samsung/android/svoice/asrserviceinterface/ResponseObject;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/vsf/SpeechRecognizer$InternalResponseHandler;->mInternalHandler:Landroid/os/Handler;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/vsf/SpeechRecognizer$InternalResponseHandler;->mInternalHandler:Landroid/os/Handler;

    invoke-virtual {p1}, Lcom/samsung/android/svoice/asrserviceinterface/ResponseObject;->getBundle()Landroid/os/Bundle;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/samsung/vsf/SpeechRecognizer$InternalResponseHandler;->extractResult(Landroid/os/Bundle;)Ljava/util/Properties;

    move-result-object v1

    const/4 v2, 0x3

    invoke-static {v0, v2, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0
.end method

.method public onReadyForSpeech(Lcom/samsung/android/svoice/asrserviceinterface/ResponseObject;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string/jumbo v0, "IASR_SpeechRecognizer"

    const-string/jumbo v1, "onReadyForSpeech()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/vsf/SpeechRecognizer$InternalResponseHandler;->mInternalHandler:Landroid/os/Handler;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/vsf/SpeechRecognizer$InternalResponseHandler;->mInternalHandler:Landroid/os/Handler;

    invoke-virtual {p1}, Lcom/samsung/android/svoice/asrserviceinterface/ResponseObject;->getBundle()Landroid/os/Bundle;

    move-result-object v1

    const/16 v2, 0x8

    invoke-static {v0, v2, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0
.end method

.method public onResults(Lcom/samsung/android/svoice/asrserviceinterface/ResponseObject;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string/jumbo v0, "IASR_SpeechRecognizer"

    const-string/jumbo v1, "onResults"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/vsf/SpeechRecognizer$InternalResponseHandler;->mInternalHandler:Landroid/os/Handler;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/vsf/SpeechRecognizer$InternalResponseHandler;->mInternalHandler:Landroid/os/Handler;

    invoke-virtual {p1}, Lcom/samsung/android/svoice/asrserviceinterface/ResponseObject;->getBundle()Landroid/os/Bundle;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/samsung/vsf/SpeechRecognizer$InternalResponseHandler;->extractResult(Landroid/os/Bundle;)Ljava/util/Properties;

    move-result-object v1

    const/4 v2, 0x4

    invoke-static {v0, v2, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0
.end method

.method public onRmsChanged(I)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/vsf/SpeechRecognizer$InternalResponseHandler;->mInternalHandler:Landroid/os/Handler;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/vsf/SpeechRecognizer$InternalResponseHandler;->mInternalHandler:Landroid/os/Handler;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x6

    invoke-static {v0, v2, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0
.end method
