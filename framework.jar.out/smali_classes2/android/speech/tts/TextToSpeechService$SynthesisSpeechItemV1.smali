.class Landroid/speech/tts/TextToSpeechService$SynthesisSpeechItemV1;
.super Landroid/speech/tts/TextToSpeechService$SpeechItemV1;
.source "TextToSpeechService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/speech/tts/TextToSpeechService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SynthesisSpeechItemV1"
.end annotation


# instance fields
.field private final mCallerUid:I

.field private final mDefaultLocale:[Ljava/lang/String;

.field private final mEventLogger:Landroid/speech/tts/EventLoggerV1;

.field private mSynthesisCallback:Landroid/speech/tts/AbstractSynthesisCallback;

.field private final mSynthesisRequest:Landroid/speech/tts/SynthesisRequest;

.field private final mText:Ljava/lang/CharSequence;

.field final synthetic this$0:Landroid/speech/tts/TextToSpeechService;


# direct methods
.method public constructor <init>(Landroid/speech/tts/TextToSpeechService;Ljava/lang/Object;IILandroid/os/Bundle;Ljava/lang/String;Ljava/lang/CharSequence;)V
    .locals 3
    .param p1, "this$0"    # Landroid/speech/tts/TextToSpeechService;
    .param p2, "callerIdentity"    # Ljava/lang/Object;
    .param p3, "callerUid"    # I
    .param p4, "callerPid"    # I
    .param p5, "params"    # Landroid/os/Bundle;
    .param p6, "utteranceId"    # Ljava/lang/String;
    .param p7, "text"    # Ljava/lang/CharSequence;

    .prologue
    .line 947
    iput-object p1, p0, Landroid/speech/tts/TextToSpeechService$SynthesisSpeechItemV1;->this$0:Landroid/speech/tts/TextToSpeechService;

    .line 949
    invoke-direct/range {p0 .. p6}, Landroid/speech/tts/TextToSpeechService$SpeechItemV1;-><init>(Landroid/speech/tts/TextToSpeechService;Ljava/lang/Object;IILandroid/os/Bundle;Ljava/lang/String;)V

    .line 950
    iput-object p7, p0, Landroid/speech/tts/TextToSpeechService$SynthesisSpeechItemV1;->mText:Ljava/lang/CharSequence;

    .line 951
    iput p3, p0, Landroid/speech/tts/TextToSpeechService$SynthesisSpeechItemV1;->mCallerUid:I

    .line 952
    new-instance v0, Landroid/speech/tts/SynthesisRequest;

    iget-object v1, p0, Landroid/speech/tts/TextToSpeechService$SynthesisSpeechItemV1;->mText:Ljava/lang/CharSequence;

    iget-object v2, p0, Landroid/speech/tts/TextToSpeechService$SpeechItemV1;->mParams:Landroid/os/Bundle;

    invoke-direct {v0, v1, v2}, Landroid/speech/tts/SynthesisRequest;-><init>(Ljava/lang/CharSequence;Landroid/os/Bundle;)V

    iput-object v0, p0, Landroid/speech/tts/TextToSpeechService$SynthesisSpeechItemV1;->mSynthesisRequest:Landroid/speech/tts/SynthesisRequest;

    .line 953
    invoke-static {p1}, Landroid/speech/tts/TextToSpeechService;->-wrap1(Landroid/speech/tts/TextToSpeechService;)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/speech/tts/TextToSpeechService$SynthesisSpeechItemV1;->mDefaultLocale:[Ljava/lang/String;

    .line 954
    iget-object v0, p0, Landroid/speech/tts/TextToSpeechService$SynthesisSpeechItemV1;->mSynthesisRequest:Landroid/speech/tts/SynthesisRequest;

    invoke-direct {p0, v0}, Landroid/speech/tts/TextToSpeechService$SynthesisSpeechItemV1;->setRequestParams(Landroid/speech/tts/SynthesisRequest;)V

    .line 955
    new-instance v0, Landroid/speech/tts/EventLoggerV1;

    iget-object v1, p0, Landroid/speech/tts/TextToSpeechService$SynthesisSpeechItemV1;->mSynthesisRequest:Landroid/speech/tts/SynthesisRequest;

    .line 956
    invoke-static {p1}, Landroid/speech/tts/TextToSpeechService;->-get2(Landroid/speech/tts/TextToSpeechService;)Ljava/lang/String;

    move-result-object v2

    .line 955
    invoke-direct {v0, v1, p3, p4, v2}, Landroid/speech/tts/EventLoggerV1;-><init>(Landroid/speech/tts/SynthesisRequest;IILjava/lang/String;)V

    iput-object v0, p0, Landroid/speech/tts/TextToSpeechService$SynthesisSpeechItemV1;->mEventLogger:Landroid/speech/tts/EventLoggerV1;

    .line 948
    return-void
.end method

.method private getCountry()Ljava/lang/String;
    .locals 3

    .prologue
    .line 1032
    invoke-virtual {p0}, Landroid/speech/tts/TextToSpeechService$SpeechItemV1;->hasLanguage()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/speech/tts/TextToSpeechService$SynthesisSpeechItemV1;->mDefaultLocale:[Ljava/lang/String;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    return-object v0

    .line 1033
    :cond_0
    iget-object v0, p0, Landroid/speech/tts/TextToSpeechService$SpeechItemV1;->mParams:Landroid/os/Bundle;

    const-string/jumbo v1, "country"

    const-string/jumbo v2, ""

    invoke-virtual {p0, v0, v1, v2}, Landroid/speech/tts/TextToSpeechService$UtteranceSpeechItem;->getStringParam(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getVariant()Ljava/lang/String;
    .locals 3

    .prologue
    .line 1037
    invoke-virtual {p0}, Landroid/speech/tts/TextToSpeechService$SpeechItemV1;->hasLanguage()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/speech/tts/TextToSpeechService$SynthesisSpeechItemV1;->mDefaultLocale:[Ljava/lang/String;

    const/4 v1, 0x2

    aget-object v0, v0, v1

    return-object v0

    .line 1038
    :cond_0
    iget-object v0, p0, Landroid/speech/tts/TextToSpeechService$SpeechItemV1;->mParams:Landroid/os/Bundle;

    const-string/jumbo v1, "variant"

    const-string/jumbo v2, ""

    invoke-virtual {p0, v0, v1, v2}, Landroid/speech/tts/TextToSpeechService$UtteranceSpeechItem;->getStringParam(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private setRequestParams(Landroid/speech/tts/SynthesisRequest;)V
    .locals 4
    .param p1, "request"    # Landroid/speech/tts/SynthesisRequest;

    .prologue
    .line 1004
    invoke-virtual {p0}, Landroid/speech/tts/TextToSpeechService$SynthesisSpeechItemV1;->getVoiceName()Ljava/lang/String;

    move-result-object v0

    .line 1005
    .local v0, "voiceName":Ljava/lang/String;
    invoke-virtual {p0}, Landroid/speech/tts/TextToSpeechService$SynthesisSpeechItemV1;->getLanguage()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0}, Landroid/speech/tts/TextToSpeechService$SynthesisSpeechItemV1;->getCountry()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0}, Landroid/speech/tts/TextToSpeechService$SynthesisSpeechItemV1;->getVariant()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v1, v2, v3}, Landroid/speech/tts/SynthesisRequest;->setLanguage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1006
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1007
    invoke-virtual {p0}, Landroid/speech/tts/TextToSpeechService$SynthesisSpeechItemV1;->getVoiceName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/speech/tts/SynthesisRequest;->setVoiceName(Ljava/lang/String;)V

    .line 1009
    :cond_0
    invoke-virtual {p0}, Landroid/speech/tts/TextToSpeechService$SpeechItemV1;->getSpeechRate()I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/speech/tts/SynthesisRequest;->setSpeechRate(I)V

    .line 1010
    iget v1, p0, Landroid/speech/tts/TextToSpeechService$SynthesisSpeechItemV1;->mCallerUid:I

    invoke-virtual {p1, v1}, Landroid/speech/tts/SynthesisRequest;->setCallerUid(I)V

    .line 1011
    invoke-virtual {p0}, Landroid/speech/tts/TextToSpeechService$SpeechItemV1;->getPitch()I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/speech/tts/SynthesisRequest;->setPitch(I)V

    .line 1003
    return-void
.end method


# virtual methods
.method protected createSynthesisCallback()Landroid/speech/tts/AbstractSynthesisCallback;
    .locals 7

    .prologue
    .line 999
    new-instance v0, Landroid/speech/tts/PlaybackSynthesisCallback;

    invoke-virtual {p0}, Landroid/speech/tts/TextToSpeechService$SpeechItemV1;->getAudioParams()Landroid/speech/tts/TextToSpeechService$AudioOutputParams;

    move-result-object v1

    .line 1000
    iget-object v2, p0, Landroid/speech/tts/TextToSpeechService$SynthesisSpeechItemV1;->this$0:Landroid/speech/tts/TextToSpeechService;

    invoke-static {v2}, Landroid/speech/tts/TextToSpeechService;->-get0(Landroid/speech/tts/TextToSpeechService;)Landroid/speech/tts/AudioPlaybackHandler;

    move-result-object v2

    invoke-virtual {p0}, Landroid/speech/tts/TextToSpeechService$SpeechItem;->getCallerIdentity()Ljava/lang/Object;

    move-result-object v4

    iget-object v5, p0, Landroid/speech/tts/TextToSpeechService$SynthesisSpeechItemV1;->mEventLogger:Landroid/speech/tts/EventLoggerV1;

    const/4 v6, 0x0

    move-object v3, p0

    .line 999
    invoke-direct/range {v0 .. v6}, Landroid/speech/tts/PlaybackSynthesisCallback;-><init>(Landroid/speech/tts/TextToSpeechService$AudioOutputParams;Landroid/speech/tts/AudioPlaybackHandler;Landroid/speech/tts/TextToSpeechService$UtteranceProgressDispatcher;Ljava/lang/Object;Landroid/speech/tts/AbstractEventLogger;Z)V

    return-object v0
.end method

.method public getLanguage()Ljava/lang/String;
    .locals 4

    .prologue
    .line 1042
    iget-object v0, p0, Landroid/speech/tts/TextToSpeechService$SpeechItemV1;->mParams:Landroid/os/Bundle;

    const-string/jumbo v1, "language"

    iget-object v2, p0, Landroid/speech/tts/TextToSpeechService$SynthesisSpeechItemV1;->mDefaultLocale:[Ljava/lang/String;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    invoke-virtual {p0, v0, v1, v2}, Landroid/speech/tts/TextToSpeechService$UtteranceSpeechItem;->getStringParam(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getText()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 960
    iget-object v0, p0, Landroid/speech/tts/TextToSpeechService$SynthesisSpeechItemV1;->mText:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getVoiceName()Ljava/lang/String;
    .locals 3

    .prologue
    .line 1046
    iget-object v0, p0, Landroid/speech/tts/TextToSpeechService$SpeechItemV1;->mParams:Landroid/os/Bundle;

    const-string/jumbo v1, "voiceName"

    const-string/jumbo v2, ""

    invoke-virtual {p0, v0, v1, v2}, Landroid/speech/tts/TextToSpeechService$UtteranceSpeechItem;->getStringParam(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isValid()Z
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 965
    iget-object v0, p0, Landroid/speech/tts/TextToSpeechService$SynthesisSpeechItemV1;->mText:Ljava/lang/CharSequence;

    if-nez v0, :cond_0

    .line 966
    const-string/jumbo v0, "TextToSpeechService"

    const-string/jumbo v1, "null synthesis text"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 967
    return v3

    .line 969
    :cond_0
    iget-object v0, p0, Landroid/speech/tts/TextToSpeechService$SynthesisSpeechItemV1;->mText:Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    invoke-static {}, Landroid/speech/tts/TextToSpeech;->getMaxSpeechInputLength()I

    move-result v1

    if-lt v0, v1, :cond_1

    .line 970
    const-string/jumbo v0, "TextToSpeechService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Text too long: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/speech/tts/TextToSpeechService$SynthesisSpeechItemV1;->mText:Ljava/lang/CharSequence;

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " chars"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 971
    return v3

    .line 973
    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method protected playImpl()V
    .locals 3

    .prologue
    .line 979
    iget-object v1, p0, Landroid/speech/tts/TextToSpeechService$SynthesisSpeechItemV1;->mEventLogger:Landroid/speech/tts/EventLoggerV1;

    invoke-virtual {v1}, Landroid/speech/tts/AbstractEventLogger;->onRequestProcessingStart()V

    .line 980
    monitor-enter p0

    .line 983
    :try_start_0
    invoke-virtual {p0}, Landroid/speech/tts/TextToSpeechService$SpeechItem;->isStopped()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-eqz v1, :cond_0

    monitor-exit p0

    .line 984
    return-void

    .line 986
    :cond_0
    :try_start_1
    invoke-virtual {p0}, Landroid/speech/tts/TextToSpeechService$SynthesisSpeechItemV1;->createSynthesisCallback()Landroid/speech/tts/AbstractSynthesisCallback;

    move-result-object v1

    iput-object v1, p0, Landroid/speech/tts/TextToSpeechService$SynthesisSpeechItemV1;->mSynthesisCallback:Landroid/speech/tts/AbstractSynthesisCallback;

    .line 987
    iget-object v0, p0, Landroid/speech/tts/TextToSpeechService$SynthesisSpeechItemV1;->mSynthesisCallback:Landroid/speech/tts/AbstractSynthesisCallback;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .local v0, "synthesisCallback":Landroid/speech/tts/AbstractSynthesisCallback;
    monitor-exit p0

    .line 990
    iget-object v1, p0, Landroid/speech/tts/TextToSpeechService$SynthesisSpeechItemV1;->this$0:Landroid/speech/tts/TextToSpeechService;

    iget-object v2, p0, Landroid/speech/tts/TextToSpeechService$SynthesisSpeechItemV1;->mSynthesisRequest:Landroid/speech/tts/SynthesisRequest;

    invoke-virtual {v1, v2, v0}, Landroid/speech/tts/TextToSpeechService;->onSynthesizeText(Landroid/speech/tts/SynthesisRequest;Landroid/speech/tts/SynthesisCallback;)V

    .line 993
    invoke-virtual {v0}, Landroid/speech/tts/AbstractSynthesisCallback;->hasStarted()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Landroid/speech/tts/AbstractSynthesisCallback;->hasFinished()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 977
    :cond_1
    :goto_0
    return-void

    .line 980
    .end local v0    # "synthesisCallback":Landroid/speech/tts/AbstractSynthesisCallback;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    .line 994
    .restart local v0    # "synthesisCallback":Landroid/speech/tts/AbstractSynthesisCallback;
    :cond_2
    invoke-virtual {v0}, Landroid/speech/tts/AbstractSynthesisCallback;->done()I

    goto :goto_0
.end method

.method protected stopImpl()V
    .locals 2

    .prologue
    .line 1017
    monitor-enter p0

    .line 1018
    :try_start_0
    iget-object v0, p0, Landroid/speech/tts/TextToSpeechService$SynthesisSpeechItemV1;->mSynthesisCallback:Landroid/speech/tts/AbstractSynthesisCallback;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .local v0, "synthesisCallback":Landroid/speech/tts/AbstractSynthesisCallback;
    monitor-exit p0

    .line 1020
    if-eqz v0, :cond_0

    .line 1024
    invoke-virtual {v0}, Landroid/speech/tts/AbstractSynthesisCallback;->stop()V

    .line 1025
    iget-object v1, p0, Landroid/speech/tts/TextToSpeechService$SynthesisSpeechItemV1;->this$0:Landroid/speech/tts/TextToSpeechService;

    invoke-virtual {v1}, Landroid/speech/tts/TextToSpeechService;->onStop()V

    .line 1015
    :goto_0
    return-void

    .line 1017
    .end local v0    # "synthesisCallback":Landroid/speech/tts/AbstractSynthesisCallback;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    .line 1027
    .restart local v0    # "synthesisCallback":Landroid/speech/tts/AbstractSynthesisCallback;
    :cond_0
    invoke-virtual {p0}, Landroid/speech/tts/TextToSpeechService$UtteranceSpeechItem;->dispatchOnStop()V

    goto :goto_0
.end method
