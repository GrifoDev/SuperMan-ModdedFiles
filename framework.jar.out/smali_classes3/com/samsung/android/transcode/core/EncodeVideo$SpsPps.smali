.class Lcom/samsung/android/transcode/core/EncodeVideo$SpsPps;
.super Ljava/lang/Object;
.source "EncodeVideo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/transcode/core/EncodeVideo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SpsPps"
.end annotation


# instance fields
.field _pps:[B

.field _sps:[B

.field final synthetic this$0:Lcom/samsung/android/transcode/core/EncodeVideo;


# direct methods
.method private constructor <init>(Lcom/samsung/android/transcode/core/EncodeVideo;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/transcode/core/EncodeVideo$SpsPps;->this$0:Lcom/samsung/android/transcode/core/EncodeVideo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/android/transcode/core/EncodeVideo;Lcom/samsung/android/transcode/core/EncodeVideo$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/transcode/core/EncodeVideo$SpsPps;-><init>(Lcom/samsung/android/transcode/core/EncodeVideo;)V

    return-void
.end method
