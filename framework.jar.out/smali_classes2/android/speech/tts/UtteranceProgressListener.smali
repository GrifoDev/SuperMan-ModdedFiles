.class public abstract Landroid/speech/tts/UtteranceProgressListener;
.super Ljava/lang/Object;
.source "UtteranceProgressListener.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static from(Landroid/speech/tts/TextToSpeech$OnUtteranceCompletedListener;)Landroid/speech/tts/UtteranceProgressListener;
    .locals 1

    new-instance v0, Landroid/speech/tts/UtteranceProgressListener$1;

    invoke-direct {v0, p0}, Landroid/speech/tts/UtteranceProgressListener$1;-><init>(Landroid/speech/tts/TextToSpeech$OnUtteranceCompletedListener;)V

    return-object v0
.end method


# virtual methods
.method public onAudioAvailable(Ljava/lang/String;[B)V
    .locals 0

    return-void
.end method

.method public onBeginSynthesis(Ljava/lang/String;III)V
    .locals 0

    return-void
.end method

.method public abstract onDone(Ljava/lang/String;)V
.end method

.method public abstract onError(Ljava/lang/String;)V
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public onError(Ljava/lang/String;I)V
    .locals 0

    invoke-virtual {p0, p1}, Landroid/speech/tts/UtteranceProgressListener;->onError(Ljava/lang/String;)V

    return-void
.end method

.method public onRangeStart(Ljava/lang/String;III)V
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Landroid/speech/tts/UtteranceProgressListener;->onUtteranceRangeStart(Ljava/lang/String;II)V

    return-void
.end method

.method public abstract onStart(Ljava/lang/String;)V
.end method

.method public onStop(Ljava/lang/String;Z)V
    .locals 0

    return-void
.end method

.method public onUtteranceRangeStart(Ljava/lang/String;II)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-void
.end method
