.class Landroid/speech/tts/TextToSpeechService$SynthesisSpeechItem;
.super Landroid/speech/tts/TextToSpeechService$UtteranceSpeechItemWithParams;
.source "TextToSpeechService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/speech/tts/TextToSpeechService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SynthesisSpeechItem"
.end annotation


# instance fields
.field private final mCallerUid:I

.field private final mDefaultLocale:[Ljava/lang/String;

.field private final mEventLogger:Landroid/speech/tts/EventLogger;

.field private mSynthesisCallback:Landroid/speech/tts/AbstractSynthesisCallback;

.field private final mSynthesisRequest:Landroid/speech/tts/SynthesisRequest;

.field private final mText:Ljava/lang/CharSequence;

.field final synthetic this$0:Landroid/speech/tts/TextToSpeechService;


# direct methods
.method public constructor <init>(Landroid/speech/tts/TextToSpeechService;Ljava/lang/Object;IILandroid/os/Bundle;Ljava/lang/String;Ljava/lang/CharSequence;)V
    .locals 3

    iput-object p1, p0, Landroid/speech/tts/TextToSpeechService$SynthesisSpeechItem;->this$0:Landroid/speech/tts/TextToSpeechService;

    invoke-direct/range {p0 .. p6}, Landroid/speech/tts/TextToSpeechService$UtteranceSpeechItemWithParams;-><init>(Landroid/speech/tts/TextToSpeechService;Ljava/lang/Object;IILandroid/os/Bundle;Ljava/lang/String;)V

    iput-object p7, p0, Landroid/speech/tts/TextToSpeechService$SynthesisSpeechItem;->mText:Ljava/lang/CharSequence;

    iput p3, p0, Landroid/speech/tts/TextToSpeechService$SynthesisSpeechItem;->mCallerUid:I

    new-instance v0, Landroid/speech/tts/SynthesisRequest;

    iget-object v1, p0, Landroid/speech/tts/TextToSpeechService$SynthesisSpeechItem;->mText:Ljava/lang/CharSequence;

    iget-object v2, p0, Landroid/speech/tts/TextToSpeechService$SynthesisSpeechItem;->mParams:Landroid/os/Bundle;

    invoke-direct {v0, v1, v2}, Landroid/speech/tts/SynthesisRequest;-><init>(Ljava/lang/CharSequence;Landroid/os/Bundle;)V

    iput-object v0, p0, Landroid/speech/tts/TextToSpeechService$SynthesisSpeechItem;->mSynthesisRequest:Landroid/speech/tts/SynthesisRequest;

    invoke-static {p1}, Landroid/speech/tts/TextToSpeechService;->-wrap2(Landroid/speech/tts/TextToSpeechService;)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/speech/tts/TextToSpeechService$SynthesisSpeechItem;->mDefaultLocale:[Ljava/lang/String;

    iget-object v0, p0, Landroid/speech/tts/TextToSpeechService$SynthesisSpeechItem;->mSynthesisRequest:Landroid/speech/tts/SynthesisRequest;

    invoke-direct {p0, v0}, Landroid/speech/tts/TextToSpeechService$SynthesisSpeechItem;->setRequestParams(Landroid/speech/tts/SynthesisRequest;)V

    new-instance v0, Landroid/speech/tts/EventLogger;

    iget-object v1, p0, Landroid/speech/tts/TextToSpeechService$SynthesisSpeechItem;->mSynthesisRequest:Landroid/speech/tts/SynthesisRequest;

    invoke-static {p1}, Landroid/speech/tts/TextToSpeechService;->-get2(Landroid/speech/tts/TextToSpeechService;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, p3, p4, v2}, Landroid/speech/tts/EventLogger;-><init>(Landroid/speech/tts/SynthesisRequest;IILjava/lang/String;)V

    iput-object v0, p0, Landroid/speech/tts/TextToSpeechService$SynthesisSpeechItem;->mEventLogger:Landroid/speech/tts/EventLogger;

    return-void
.end method

.method private getCountry()Ljava/lang/String;
    .locals 3

    invoke-virtual {p0}, Landroid/speech/tts/TextToSpeechService$SynthesisSpeechItem;->hasLanguage()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/speech/tts/TextToSpeechService$SynthesisSpeechItem;->mDefaultLocale:[Ljava/lang/String;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    return-object v0

    :cond_0
    iget-object v0, p0, Landroid/speech/tts/TextToSpeechService$SynthesisSpeechItem;->mParams:Landroid/os/Bundle;

    const-string/jumbo v1, "country"

    const-string/jumbo v2, ""

    invoke-virtual {p0, v0, v1, v2}, Landroid/speech/tts/TextToSpeechService$SynthesisSpeechItem;->getStringParam(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getVariant()Ljava/lang/String;
    .locals 3

    invoke-virtual {p0}, Landroid/speech/tts/TextToSpeechService$SynthesisSpeechItem;->hasLanguage()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/speech/tts/TextToSpeechService$SynthesisSpeechItem;->mDefaultLocale:[Ljava/lang/String;

    const/4 v1, 0x2

    aget-object v0, v0, v1

    return-object v0

    :cond_0
    iget-object v0, p0, Landroid/speech/tts/TextToSpeechService$SynthesisSpeechItem;->mParams:Landroid/os/Bundle;

    const-string/jumbo v1, "variant"

    const-string/jumbo v2, ""

    invoke-virtual {p0, v0, v1, v2}, Landroid/speech/tts/TextToSpeechService$SynthesisSpeechItem;->getStringParam(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private setRequestParams(Landroid/speech/tts/SynthesisRequest;)V
    .locals 4

    invoke-virtual {p0}, Landroid/speech/tts/TextToSpeechService$SynthesisSpeechItem;->getVoiceName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Landroid/speech/tts/TextToSpeechService$SynthesisSpeechItem;->getLanguage()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0}, Landroid/speech/tts/TextToSpeechService$SynthesisSpeechItem;->getCountry()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0}, Landroid/speech/tts/TextToSpeechService$SynthesisSpeechItem;->getVariant()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v1, v2, v3}, Landroid/speech/tts/SynthesisRequest;->setLanguage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0}, Landroid/speech/tts/TextToSpeechService$SynthesisSpeechItem;->getVoiceName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/speech/tts/SynthesisRequest;->setVoiceName(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {p0}, Landroid/speech/tts/TextToSpeechService$SynthesisSpeechItem;->getSpeechRate()I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/speech/tts/SynthesisRequest;->setSpeechRate(I)V

    iget v1, p0, Landroid/speech/tts/TextToSpeechService$SynthesisSpeechItem;->mCallerUid:I

    invoke-virtual {p1, v1}, Landroid/speech/tts/SynthesisRequest;->setCallerUid(I)V

    invoke-virtual {p0}, Landroid/speech/tts/TextToSpeechService$SynthesisSpeechItem;->getPitch()I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/speech/tts/SynthesisRequest;->setPitch(I)V

    return-void
.end method


# virtual methods
.method protected createSynthesisCallback()Landroid/speech/tts/AbstractSynthesisCallback;
    .locals 7

    new-instance v0, Landroid/speech/tts/PlaybackSynthesisCallback;

    invoke-virtual {p0}, Landroid/speech/tts/TextToSpeechService$SynthesisSpeechItem;->getAudioParams()Landroid/speech/tts/TextToSpeechService$AudioOutputParams;

    move-result-object v1

    iget-object v2, p0, Landroid/speech/tts/TextToSpeechService$SynthesisSpeechItem;->this$0:Landroid/speech/tts/TextToSpeechService;

    invoke-static {v2}, Landroid/speech/tts/TextToSpeechService;->-get0(Landroid/speech/tts/TextToSpeechService;)Landroid/speech/tts/AudioPlaybackHandler;

    move-result-object v2

    invoke-virtual {p0}, Landroid/speech/tts/TextToSpeechService$SynthesisSpeechItem;->getCallerIdentity()Ljava/lang/Object;

    move-result-object v4

    iget-object v5, p0, Landroid/speech/tts/TextToSpeechService$SynthesisSpeechItem;->mEventLogger:Landroid/speech/tts/EventLogger;

    const/4 v6, 0x0

    move-object v3, p0

    invoke-direct/range {v0 .. v6}, Landroid/speech/tts/PlaybackSynthesisCallback;-><init>(Landroid/speech/tts/TextToSpeechService$AudioOutputParams;Landroid/speech/tts/AudioPlaybackHandler;Landroid/speech/tts/TextToSpeechService$UtteranceProgressDispatcher;Ljava/lang/Object;Landroid/speech/tts/AbstractEventLogger;Z)V

    return-object v0
.end method

.method public getLanguage()Ljava/lang/String;
    .locals 4

    iget-object v0, p0, Landroid/speech/tts/TextToSpeechService$SynthesisSpeechItem;->mParams:Landroid/os/Bundle;

    const-string/jumbo v1, "language"

    iget-object v2, p0, Landroid/speech/tts/TextToSpeechService$SynthesisSpeechItem;->mDefaultLocale:[Ljava/lang/String;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    invoke-virtual {p0, v0, v1, v2}, Landroid/speech/tts/TextToSpeechService$SynthesisSpeechItem;->getStringParam(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getText()Ljava/lang/CharSequence;
    .locals 1

    iget-object v0, p0, Landroid/speech/tts/TextToSpeechService$SynthesisSpeechItem;->mText:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getVoiceName()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Landroid/speech/tts/TextToSpeechService$SynthesisSpeechItem;->mParams:Landroid/os/Bundle;

    const-string/jumbo v1, "voiceName"

    const-string/jumbo v2, ""

    invoke-virtual {p0, v0, v1, v2}, Landroid/speech/tts/TextToSpeechService$SynthesisSpeechItem;->getStringParam(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isValid()Z
    .locals 4

    const/4 v3, 0x0

    iget-object v0, p0, Landroid/speech/tts/TextToSpeechService$SynthesisSpeechItem;->mText:Ljava/lang/CharSequence;

    if-nez v0, :cond_0

    const-string/jumbo v0, "TextToSpeechService"

    const-string/jumbo v1, "null synthesis text"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    :cond_0
    iget-object v0, p0, Landroid/speech/tts/TextToSpeechService$SynthesisSpeechItem;->mText:Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    invoke-static {}, Landroid/speech/tts/TextToSpeech;->getMaxSpeechInputLength()I

    move-result v1

    if-lt v0, v1, :cond_1

    const-string/jumbo v0, "TextToSpeechService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Text too long: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/speech/tts/TextToSpeechService$SynthesisSpeechItem;->mText:Ljava/lang/CharSequence;

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

    return v3

    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method protected playImpl()V
    .locals 3

    iget-object v1, p0, Landroid/speech/tts/TextToSpeechService$SynthesisSpeechItem;->mEventLogger:Landroid/speech/tts/EventLogger;

    invoke-virtual {v1}, Landroid/speech/tts/EventLogger;->onRequestProcessingStart()V

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Landroid/speech/tts/TextToSpeechService$SynthesisSpeechItem;->isStopped()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-eqz v1, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    invoke-virtual {p0}, Landroid/speech/tts/TextToSpeechService$SynthesisSpeechItem;->createSynthesisCallback()Landroid/speech/tts/AbstractSynthesisCallback;

    move-result-object v1

    iput-object v1, p0, Landroid/speech/tts/TextToSpeechService$SynthesisSpeechItem;->mSynthesisCallback:Landroid/speech/tts/AbstractSynthesisCallback;

    iget-object v0, p0, Landroid/speech/tts/TextToSpeechService$SynthesisSpeechItem;->mSynthesisCallback:Landroid/speech/tts/AbstractSynthesisCallback;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    iget-object v1, p0, Landroid/speech/tts/TextToSpeechService$SynthesisSpeechItem;->this$0:Landroid/speech/tts/TextToSpeechService;

    iget-object v2, p0, Landroid/speech/tts/TextToSpeechService$SynthesisSpeechItem;->mSynthesisRequest:Landroid/speech/tts/SynthesisRequest;

    invoke-virtual {v1, v2, v0}, Landroid/speech/tts/TextToSpeechService;->onSynthesizeText(Landroid/speech/tts/SynthesisRequest;Landroid/speech/tts/SynthesisCallback;)V

    invoke-virtual {v0}, Landroid/speech/tts/AbstractSynthesisCallback;->hasStarted()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Landroid/speech/tts/AbstractSynthesisCallback;->hasFinished()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Landroid/speech/tts/AbstractSynthesisCallback;->done()I

    :cond_1
    return-void

    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method protected stopImpl()V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Landroid/speech/tts/TextToSpeechService$SynthesisSpeechItem;->mSynthesisCallback:Landroid/speech/tts/AbstractSynthesisCallback;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/speech/tts/AbstractSynthesisCallback;->stop()V

    iget-object v1, p0, Landroid/speech/tts/TextToSpeechService$SynthesisSpeechItem;->this$0:Landroid/speech/tts/TextToSpeechService;

    invoke-virtual {v1}, Landroid/speech/tts/TextToSpeechService;->onStop()V

    :goto_0
    return-void

    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    :cond_0
    invoke-virtual {p0}, Landroid/speech/tts/TextToSpeechService$SynthesisSpeechItem;->dispatchOnStop()V

    goto :goto_0
.end method
