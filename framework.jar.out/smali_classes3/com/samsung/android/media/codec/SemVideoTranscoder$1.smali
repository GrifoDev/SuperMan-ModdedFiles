.class Lcom/samsung/android/media/codec/SemVideoTranscoder$1;
.super Ljava/lang/Object;
.source "SemVideoTranscoder.java"

# interfaces
.implements Lcom/samsung/android/transcode/core/Encode$EncodeEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/media/codec/SemVideoTranscoder;->setProgressEventListener(Lcom/samsung/android/media/codec/SemVideoTranscoder$ProgressEventListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/media/codec/SemVideoTranscoder;


# direct methods
.method constructor <init>(Lcom/samsung/android/media/codec/SemVideoTranscoder;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/media/codec/SemVideoTranscoder$1;->this$0:Lcom/samsung/android/media/codec/SemVideoTranscoder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompleted()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/media/codec/SemVideoTranscoder$1;->this$0:Lcom/samsung/android/media/codec/SemVideoTranscoder;

    invoke-static {v0}, Lcom/samsung/android/media/codec/SemVideoTranscoder;->-get0(Lcom/samsung/android/media/codec/SemVideoTranscoder;)Lcom/samsung/android/media/codec/SemVideoTranscoder$ProgressEventListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/android/media/codec/SemVideoTranscoder$ProgressEventListener;->onCompleted()V

    return-void
.end method

.method public onStarted()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/media/codec/SemVideoTranscoder$1;->this$0:Lcom/samsung/android/media/codec/SemVideoTranscoder;

    invoke-static {v0}, Lcom/samsung/android/media/codec/SemVideoTranscoder;->-get0(Lcom/samsung/android/media/codec/SemVideoTranscoder;)Lcom/samsung/android/media/codec/SemVideoTranscoder$ProgressEventListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/android/media/codec/SemVideoTranscoder$ProgressEventListener;->onStarted()V

    return-void
.end method
