.class Lcom/samsung/android/transcode/core/EncodeVideo$Debugger;
.super Ljava/lang/Object;
.source "EncodeVideo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/transcode/core/EncodeVideo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Debugger"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 2644
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isEnabled()Z
    .locals 1

    .prologue
    .line 2647
    const/4 v0, 0x0

    return v0
.end method

.method public static log(Ljava/lang/Object;)V
    .locals 2

    .prologue
    .line 2651
    invoke-static {}, Lcom/samsung/android/transcode/core/EncodeVideo$Debugger;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2655
    :goto_0
    return-void

    :cond_0
    const-string/jumbo v0, "TranscodeLib"

    .line 2652
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
