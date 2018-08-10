.class Landroid/media/MediaPlayer$3;
.super Ljava/lang/Thread;
.source "MediaPlayer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/media/MediaPlayer;->start()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/media/MediaPlayer;

.field final synthetic val$delay:I


# direct methods
.method constructor <init>(Landroid/media/MediaPlayer;I)V
    .locals 0

    iput-object p1, p0, Landroid/media/MediaPlayer$3;->this$0:Landroid/media/MediaPlayer;

    iput p2, p0, Landroid/media/MediaPlayer$3;->val$delay:I

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    :try_start_0
    iget v2, p0, Landroid/media/MediaPlayer$3;->val$delay:I

    int-to-long v2, v2

    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    iget-object v2, p0, Landroid/media/MediaPlayer$3;->this$0:Landroid/media/MediaPlayer;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/media/MediaPlayer;->baseSetStartDelayMs(I)V

    :try_start_1
    iget-object v2, p0, Landroid/media/MediaPlayer$3;->this$0:Landroid/media/MediaPlayer;

    invoke-static {v2}, Landroid/media/MediaPlayer;->-wrap4(Landroid/media/MediaPlayer;)V
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_1

    :goto_1
    return-void

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception v0

    goto :goto_1
.end method
