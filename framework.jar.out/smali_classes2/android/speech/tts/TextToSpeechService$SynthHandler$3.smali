.class Landroid/speech/tts/TextToSpeechService$SynthHandler$3;
.super Ljava/lang/Object;
.source "TextToSpeechService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/speech/tts/TextToSpeechService$SynthHandler;->stopAll()I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Landroid/speech/tts/TextToSpeechService$SynthHandler;


# direct methods
.method constructor <init>(Landroid/speech/tts/TextToSpeechService$SynthHandler;)V
    .locals 0

    iput-object p1, p0, Landroid/speech/tts/TextToSpeechService$SynthHandler$3;->this$1:Landroid/speech/tts/TextToSpeechService$SynthHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Landroid/speech/tts/TextToSpeechService$SynthHandler$3;->this$1:Landroid/speech/tts/TextToSpeechService$SynthHandler;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/speech/tts/TextToSpeechService$SynthHandler;->-wrap2(Landroid/speech/tts/TextToSpeechService$SynthHandler;Ljava/lang/Object;)V

    return-void
.end method
