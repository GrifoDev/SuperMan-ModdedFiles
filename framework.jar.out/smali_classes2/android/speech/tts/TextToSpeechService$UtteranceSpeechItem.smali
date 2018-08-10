.class abstract Landroid/speech/tts/TextToSpeechService$UtteranceSpeechItem;
.super Landroid/speech/tts/TextToSpeechService$SpeechItem;
.source "TextToSpeechService.java"

# interfaces
.implements Landroid/speech/tts/TextToSpeechService$UtteranceProgressDispatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/speech/tts/TextToSpeechService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x402
    name = "UtteranceSpeechItem"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/speech/tts/TextToSpeechService;


# direct methods
.method public constructor <init>(Landroid/speech/tts/TextToSpeechService;Ljava/lang/Object;II)V
    .locals 0

    iput-object p1, p0, Landroid/speech/tts/TextToSpeechService$UtteranceSpeechItem;->this$0:Landroid/speech/tts/TextToSpeechService;

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/speech/tts/TextToSpeechService$SpeechItem;-><init>(Landroid/speech/tts/TextToSpeechService;Ljava/lang/Object;II)V

    return-void
.end method


# virtual methods
.method public dispatchOnAudioAvailable([B)V
    .locals 3

    invoke-virtual {p0}, Landroid/speech/tts/TextToSpeechService$UtteranceSpeechItem;->getUtteranceId()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Landroid/speech/tts/TextToSpeechService$UtteranceSpeechItem;->this$0:Landroid/speech/tts/TextToSpeechService;

    invoke-static {v1}, Landroid/speech/tts/TextToSpeechService;->-get1(Landroid/speech/tts/TextToSpeechService;)Landroid/speech/tts/TextToSpeechService$CallbackMap;

    move-result-object v1

    invoke-virtual {p0}, Landroid/speech/tts/TextToSpeechService$UtteranceSpeechItem;->getCallerIdentity()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2, v0, p1}, Landroid/speech/tts/TextToSpeechService$CallbackMap;->dispatchOnAudioAvailable(Ljava/lang/Object;Ljava/lang/String;[B)V

    :cond_0
    return-void
.end method

.method public dispatchOnBeginSynthesis(III)V
    .locals 6

    invoke-virtual {p0}, Landroid/speech/tts/TextToSpeechService$UtteranceSpeechItem;->getUtteranceId()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v0, p0, Landroid/speech/tts/TextToSpeechService$UtteranceSpeechItem;->this$0:Landroid/speech/tts/TextToSpeechService;

    invoke-static {v0}, Landroid/speech/tts/TextToSpeechService;->-get1(Landroid/speech/tts/TextToSpeechService;)Landroid/speech/tts/TextToSpeechService$CallbackMap;

    move-result-object v0

    invoke-virtual {p0}, Landroid/speech/tts/TextToSpeechService$UtteranceSpeechItem;->getCallerIdentity()Ljava/lang/Object;

    move-result-object v1

    move v3, p1

    move v4, p2

    move v5, p3

    invoke-virtual/range {v0 .. v5}, Landroid/speech/tts/TextToSpeechService$CallbackMap;->dispatchOnBeginSynthesis(Ljava/lang/Object;Ljava/lang/String;III)V

    :cond_0
    return-void
.end method

.method public dispatchOnError(I)V
    .locals 3

    invoke-virtual {p0}, Landroid/speech/tts/TextToSpeechService$UtteranceSpeechItem;->getUtteranceId()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Landroid/speech/tts/TextToSpeechService$UtteranceSpeechItem;->this$0:Landroid/speech/tts/TextToSpeechService;

    invoke-static {v1}, Landroid/speech/tts/TextToSpeechService;->-get1(Landroid/speech/tts/TextToSpeechService;)Landroid/speech/tts/TextToSpeechService$CallbackMap;

    move-result-object v1

    invoke-virtual {p0}, Landroid/speech/tts/TextToSpeechService$UtteranceSpeechItem;->getCallerIdentity()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2, v0, p1}, Landroid/speech/tts/TextToSpeechService$CallbackMap;->dispatchOnError(Ljava/lang/Object;Ljava/lang/String;I)V

    :cond_0
    return-void
.end method

.method public dispatchOnRangeStart(III)V
    .locals 6

    invoke-virtual {p0}, Landroid/speech/tts/TextToSpeechService$UtteranceSpeechItem;->getUtteranceId()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v0, p0, Landroid/speech/tts/TextToSpeechService$UtteranceSpeechItem;->this$0:Landroid/speech/tts/TextToSpeechService;

    invoke-static {v0}, Landroid/speech/tts/TextToSpeechService;->-get1(Landroid/speech/tts/TextToSpeechService;)Landroid/speech/tts/TextToSpeechService$CallbackMap;

    move-result-object v0

    invoke-virtual {p0}, Landroid/speech/tts/TextToSpeechService$UtteranceSpeechItem;->getCallerIdentity()Ljava/lang/Object;

    move-result-object v1

    move v3, p1

    move v4, p2

    move v5, p3

    invoke-virtual/range {v0 .. v5}, Landroid/speech/tts/TextToSpeechService$CallbackMap;->dispatchOnRangeStart(Ljava/lang/Object;Ljava/lang/String;III)V

    :cond_0
    return-void
.end method

.method public dispatchOnStart()V
    .locals 3

    invoke-virtual {p0}, Landroid/speech/tts/TextToSpeechService$UtteranceSpeechItem;->getUtteranceId()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Landroid/speech/tts/TextToSpeechService$UtteranceSpeechItem;->this$0:Landroid/speech/tts/TextToSpeechService;

    invoke-static {v1}, Landroid/speech/tts/TextToSpeechService;->-get1(Landroid/speech/tts/TextToSpeechService;)Landroid/speech/tts/TextToSpeechService$CallbackMap;

    move-result-object v1

    invoke-virtual {p0}, Landroid/speech/tts/TextToSpeechService$UtteranceSpeechItem;->getCallerIdentity()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Landroid/speech/tts/TextToSpeechService$CallbackMap;->dispatchOnStart(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public dispatchOnStop()V
    .locals 4

    invoke-virtual {p0}, Landroid/speech/tts/TextToSpeechService$UtteranceSpeechItem;->getUtteranceId()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Landroid/speech/tts/TextToSpeechService$UtteranceSpeechItem;->this$0:Landroid/speech/tts/TextToSpeechService;

    invoke-static {v1}, Landroid/speech/tts/TextToSpeechService;->-get1(Landroid/speech/tts/TextToSpeechService;)Landroid/speech/tts/TextToSpeechService$CallbackMap;

    move-result-object v1

    invoke-virtual {p0}, Landroid/speech/tts/TextToSpeechService$UtteranceSpeechItem;->getCallerIdentity()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p0}, Landroid/speech/tts/TextToSpeechService$UtteranceSpeechItem;->isStarted()Z

    move-result v3

    invoke-virtual {v1, v2, v0, v3}, Landroid/speech/tts/TextToSpeechService$CallbackMap;->dispatchOnStop(Ljava/lang/Object;Ljava/lang/String;Z)V

    :cond_0
    return-void
.end method

.method public dispatchOnSuccess()V
    .locals 3

    invoke-virtual {p0}, Landroid/speech/tts/TextToSpeechService$UtteranceSpeechItem;->getUtteranceId()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Landroid/speech/tts/TextToSpeechService$UtteranceSpeechItem;->this$0:Landroid/speech/tts/TextToSpeechService;

    invoke-static {v1}, Landroid/speech/tts/TextToSpeechService;->-get1(Landroid/speech/tts/TextToSpeechService;)Landroid/speech/tts/TextToSpeechService$CallbackMap;

    move-result-object v1

    invoke-virtual {p0}, Landroid/speech/tts/TextToSpeechService$UtteranceSpeechItem;->getCallerIdentity()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Landroid/speech/tts/TextToSpeechService$CallbackMap;->dispatchOnSuccess(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method getFloatParam(Landroid/os/Bundle;Ljava/lang/String;F)F
    .locals 0

    if-nez p1, :cond_0

    :goto_0
    return p3

    :cond_0
    invoke-virtual {p1, p2, p3}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;F)F

    move-result p3

    goto :goto_0
.end method

.method getIntParam(Landroid/os/Bundle;Ljava/lang/String;I)I
    .locals 0

    if-nez p1, :cond_0

    :goto_0
    return p3

    :cond_0
    invoke-virtual {p1, p2, p3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p3

    goto :goto_0
.end method

.method getStringParam(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    if-nez p1, :cond_0

    :goto_0
    return-object p3

    :cond_0
    invoke-virtual {p1, p2, p3}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    goto :goto_0
.end method

.method public abstract getUtteranceId()Ljava/lang/String;
.end method
