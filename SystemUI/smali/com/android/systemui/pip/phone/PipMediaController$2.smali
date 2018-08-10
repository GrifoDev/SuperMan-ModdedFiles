.class Lcom/android/systemui/pip/phone/PipMediaController$2;
.super Landroid/media/session/MediaController$Callback;
.source "PipMediaController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/pip/phone/PipMediaController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/pip/phone/PipMediaController;


# direct methods
.method constructor <init>(Lcom/android/systemui/pip/phone/PipMediaController;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/pip/phone/PipMediaController$2;->this$0:Lcom/android/systemui/pip/phone/PipMediaController;

    invoke-direct {p0}, Landroid/media/session/MediaController$Callback;-><init>()V

    return-void
.end method


# virtual methods
.method public onPlaybackStateChanged(Landroid/media/session/PlaybackState;)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/pip/phone/PipMediaController$2;->this$0:Lcom/android/systemui/pip/phone/PipMediaController;

    invoke-static {v0}, Lcom/android/systemui/pip/phone/PipMediaController;->-wrap0(Lcom/android/systemui/pip/phone/PipMediaController;)V

    return-void
.end method
