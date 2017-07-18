.class Lcom/samsung/android/transcode/core/EncodeVideo$1;
.super Ljava/lang/Object;
.source "EncodeVideo.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/transcode/core/EncodeVideo;->prepareAudioCodec()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/transcode/core/EncodeVideo;


# direct methods
.method constructor <init>(Lcom/samsung/android/transcode/core/EncodeVideo;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/transcode/core/EncodeVideo$1;->this$0:Lcom/samsung/android/transcode/core/EncodeVideo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/transcode/core/EncodeVideo$1;->this$0:Lcom/samsung/android/transcode/core/EncodeVideo;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/samsung/android/transcode/core/EncodeVideo;->access$002(Lcom/samsung/android/transcode/core/EncodeVideo;Z)Z

    return-void
.end method
