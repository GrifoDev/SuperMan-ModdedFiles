.class Landroid/speech/tts/SynthesisPlaybackQueueItem$ProgressMarker;
.super Ljava/lang/Object;
.source "SynthesisPlaybackQueueItem.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/speech/tts/SynthesisPlaybackQueueItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ProgressMarker"
.end annotation


# instance fields
.field public final end:I

.field public final frames:I

.field public final start:I

.field final synthetic this$0:Landroid/speech/tts/SynthesisPlaybackQueueItem;


# direct methods
.method public constructor <init>(Landroid/speech/tts/SynthesisPlaybackQueueItem;III)V
    .locals 0

    iput-object p1, p0, Landroid/speech/tts/SynthesisPlaybackQueueItem$ProgressMarker;->this$0:Landroid/speech/tts/SynthesisPlaybackQueueItem;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Landroid/speech/tts/SynthesisPlaybackQueueItem$ProgressMarker;->frames:I

    iput p3, p0, Landroid/speech/tts/SynthesisPlaybackQueueItem$ProgressMarker;->start:I

    iput p4, p0, Landroid/speech/tts/SynthesisPlaybackQueueItem$ProgressMarker;->end:I

    return-void
.end method
