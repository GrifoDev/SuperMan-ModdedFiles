.class public interface abstract Lcom/samsung/vsf/RecognitionListener;
.super Ljava/lang/Object;
.source "RecognitionListener.java"


# virtual methods
.method public abstract onBeginningOfSpeech()V
.end method

.method public abstract onBufferReceived([S)V
.end method

.method public abstract onEndOfSpeech()V
.end method

.method public abstract onError(Ljava/lang/String;)V
.end method

.method public abstract onErrorString(Ljava/lang/String;)V
.end method

.method public abstract onPartialResults(Ljava/util/Properties;)V
.end method

.method public abstract onReadyForSpeech(Landroid/os/Bundle;)V
.end method

.method public abstract onResults(Ljava/util/Properties;)V
.end method

.method public abstract onRmsChanged(I)V
.end method
