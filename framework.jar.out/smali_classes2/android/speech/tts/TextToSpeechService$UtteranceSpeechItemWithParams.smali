.class abstract Landroid/speech/tts/TextToSpeechService$UtteranceSpeechItemWithParams;
.super Landroid/speech/tts/TextToSpeechService$UtteranceSpeechItem;
.source "TextToSpeechService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/speech/tts/TextToSpeechService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x402
    name = "UtteranceSpeechItemWithParams"
.end annotation


# instance fields
.field protected final mParams:Landroid/os/Bundle;

.field protected final mUtteranceId:Ljava/lang/String;

.field final synthetic this$0:Landroid/speech/tts/TextToSpeechService;


# direct methods
.method constructor <init>(Landroid/speech/tts/TextToSpeechService;Ljava/lang/Object;IILandroid/os/Bundle;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Landroid/speech/tts/TextToSpeechService$UtteranceSpeechItemWithParams;->this$0:Landroid/speech/tts/TextToSpeechService;

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/speech/tts/TextToSpeechService$UtteranceSpeechItem;-><init>(Landroid/speech/tts/TextToSpeechService;Ljava/lang/Object;II)V

    iput-object p5, p0, Landroid/speech/tts/TextToSpeechService$UtteranceSpeechItemWithParams;->mParams:Landroid/os/Bundle;

    iput-object p6, p0, Landroid/speech/tts/TextToSpeechService$UtteranceSpeechItemWithParams;->mUtteranceId:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method getAudioParams()Landroid/speech/tts/TextToSpeechService$AudioOutputParams;
    .locals 2

    iget-object v0, p0, Landroid/speech/tts/TextToSpeechService$UtteranceSpeechItemWithParams;->mParams:Landroid/os/Bundle;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Landroid/speech/tts/TextToSpeechService$AudioOutputParams;->createFromParamsBundle(Landroid/os/Bundle;Z)Landroid/speech/tts/TextToSpeechService$AudioOutputParams;

    move-result-object v0

    return-object v0
.end method

.method getPitch()I
    .locals 3

    iget-object v0, p0, Landroid/speech/tts/TextToSpeechService$UtteranceSpeechItemWithParams;->mParams:Landroid/os/Bundle;

    const-string/jumbo v1, "pitch"

    iget-object v2, p0, Landroid/speech/tts/TextToSpeechService$UtteranceSpeechItemWithParams;->this$0:Landroid/speech/tts/TextToSpeechService;

    invoke-static {v2}, Landroid/speech/tts/TextToSpeechService;->-wrap0(Landroid/speech/tts/TextToSpeechService;)I

    move-result v2

    invoke-virtual {p0, v0, v1, v2}, Landroid/speech/tts/TextToSpeechService$UtteranceSpeechItemWithParams;->getIntParam(Landroid/os/Bundle;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method getSpeechRate()I
    .locals 3

    iget-object v0, p0, Landroid/speech/tts/TextToSpeechService$UtteranceSpeechItemWithParams;->mParams:Landroid/os/Bundle;

    const-string/jumbo v1, "rate"

    iget-object v2, p0, Landroid/speech/tts/TextToSpeechService$UtteranceSpeechItemWithParams;->this$0:Landroid/speech/tts/TextToSpeechService;

    invoke-static {v2}, Landroid/speech/tts/TextToSpeechService;->-wrap1(Landroid/speech/tts/TextToSpeechService;)I

    move-result v2

    invoke-virtual {p0, v0, v1, v2}, Landroid/speech/tts/TextToSpeechService$UtteranceSpeechItemWithParams;->getIntParam(Landroid/os/Bundle;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getUtteranceId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/speech/tts/TextToSpeechService$UtteranceSpeechItemWithParams;->mUtteranceId:Ljava/lang/String;

    return-object v0
.end method

.method hasLanguage()Z
    .locals 3

    iget-object v0, p0, Landroid/speech/tts/TextToSpeechService$UtteranceSpeechItemWithParams;->mParams:Landroid/os/Bundle;

    const-string/jumbo v1, "language"

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Landroid/speech/tts/TextToSpeechService$UtteranceSpeechItemWithParams;->getStringParam(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method
