.class final Landroid/media/projection/MediaProjection$CallbackRecord;
.super Ljava/lang/Object;
.source "MediaProjection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/projection/MediaProjection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "CallbackRecord"
.end annotation


# instance fields
.field private final mCallback:Landroid/media/projection/MediaProjection$Callback;

.field private final mHandler:Landroid/os/Handler;


# direct methods
.method static synthetic -get0(Landroid/media/projection/MediaProjection$CallbackRecord;)Landroid/media/projection/MediaProjection$Callback;
    .locals 1

    iget-object v0, p0, Landroid/media/projection/MediaProjection$CallbackRecord;->mCallback:Landroid/media/projection/MediaProjection$Callback;

    return-object v0
.end method

.method public constructor <init>(Landroid/media/projection/MediaProjection$Callback;Landroid/os/Handler;)V
    .locals 0
    .param p1, "callback"    # Landroid/media/projection/MediaProjection$Callback;
    .param p2, "handler"    # Landroid/os/Handler;

    .prologue
    .line 220
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 221
    iput-object p1, p0, Landroid/media/projection/MediaProjection$CallbackRecord;->mCallback:Landroid/media/projection/MediaProjection$Callback;

    .line 222
    iput-object p2, p0, Landroid/media/projection/MediaProjection$CallbackRecord;->mHandler:Landroid/os/Handler;

    .line 220
    return-void
.end method


# virtual methods
.method public onStop()V
    .locals 2

    .prologue
    .line 226
    iget-object v0, p0, Landroid/media/projection/MediaProjection$CallbackRecord;->mHandler:Landroid/os/Handler;

    new-instance v1, Landroid/media/projection/MediaProjection$CallbackRecord$1;

    invoke-direct {v1, p0}, Landroid/media/projection/MediaProjection$CallbackRecord$1;-><init>(Landroid/media/projection/MediaProjection$CallbackRecord;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 225
    return-void
.end method
