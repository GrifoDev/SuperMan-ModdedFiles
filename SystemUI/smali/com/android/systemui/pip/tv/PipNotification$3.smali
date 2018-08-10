.class Lcom/android/systemui/pip/tv/PipNotification$3;
.super Ljava/lang/Object;
.source "PipNotification.java"

# interfaces
.implements Lcom/android/systemui/pip/tv/PipManager$MediaListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/pip/tv/PipNotification;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/pip/tv/PipNotification;


# direct methods
.method constructor <init>(Lcom/android/systemui/pip/tv/PipNotification;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/pip/tv/PipNotification$3;->this$0:Lcom/android/systemui/pip/tv/PipNotification;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMediaControllerChanged()V
    .locals 3

    iget-object v1, p0, Lcom/android/systemui/pip/tv/PipNotification$3;->this$0:Lcom/android/systemui/pip/tv/PipNotification;

    invoke-static {v1}, Lcom/android/systemui/pip/tv/PipNotification;->-get4(Lcom/android/systemui/pip/tv/PipNotification;)Lcom/android/systemui/pip/tv/PipManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/systemui/pip/tv/PipManager;->getMediaController()Landroid/media/session/MediaController;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/pip/tv/PipNotification$3;->this$0:Lcom/android/systemui/pip/tv/PipNotification;

    invoke-static {v1}, Lcom/android/systemui/pip/tv/PipNotification;->-get1(Lcom/android/systemui/pip/tv/PipNotification;)Landroid/media/session/MediaController;

    move-result-object v1

    if-ne v1, v0, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lcom/android/systemui/pip/tv/PipNotification$3;->this$0:Lcom/android/systemui/pip/tv/PipNotification;

    invoke-static {v1}, Lcom/android/systemui/pip/tv/PipNotification;->-get1(Lcom/android/systemui/pip/tv/PipNotification;)Landroid/media/session/MediaController;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/systemui/pip/tv/PipNotification$3;->this$0:Lcom/android/systemui/pip/tv/PipNotification;

    invoke-static {v1}, Lcom/android/systemui/pip/tv/PipNotification;->-get1(Lcom/android/systemui/pip/tv/PipNotification;)Landroid/media/session/MediaController;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/pip/tv/PipNotification$3;->this$0:Lcom/android/systemui/pip/tv/PipNotification;

    invoke-static {v2}, Lcom/android/systemui/pip/tv/PipNotification;->-get2(Lcom/android/systemui/pip/tv/PipNotification;)Landroid/media/session/MediaController$Callback;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/media/session/MediaController;->unregisterCallback(Landroid/media/session/MediaController$Callback;)V

    :cond_1
    iget-object v1, p0, Lcom/android/systemui/pip/tv/PipNotification$3;->this$0:Lcom/android/systemui/pip/tv/PipNotification;

    invoke-static {v1, v0}, Lcom/android/systemui/pip/tv/PipNotification;->-set0(Lcom/android/systemui/pip/tv/PipNotification;Landroid/media/session/MediaController;)Landroid/media/session/MediaController;

    iget-object v1, p0, Lcom/android/systemui/pip/tv/PipNotification$3;->this$0:Lcom/android/systemui/pip/tv/PipNotification;

    invoke-static {v1}, Lcom/android/systemui/pip/tv/PipNotification;->-get1(Lcom/android/systemui/pip/tv/PipNotification;)Landroid/media/session/MediaController;

    move-result-object v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/systemui/pip/tv/PipNotification$3;->this$0:Lcom/android/systemui/pip/tv/PipNotification;

    invoke-static {v1}, Lcom/android/systemui/pip/tv/PipNotification;->-get1(Lcom/android/systemui/pip/tv/PipNotification;)Landroid/media/session/MediaController;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/pip/tv/PipNotification$3;->this$0:Lcom/android/systemui/pip/tv/PipNotification;

    invoke-static {v2}, Lcom/android/systemui/pip/tv/PipNotification;->-get2(Lcom/android/systemui/pip/tv/PipNotification;)Landroid/media/session/MediaController$Callback;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/media/session/MediaController;->registerCallback(Landroid/media/session/MediaController$Callback;)V

    :cond_2
    iget-object v1, p0, Lcom/android/systemui/pip/tv/PipNotification$3;->this$0:Lcom/android/systemui/pip/tv/PipNotification;

    invoke-static {v1}, Lcom/android/systemui/pip/tv/PipNotification;->-wrap0(Lcom/android/systemui/pip/tv/PipNotification;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/systemui/pip/tv/PipNotification$3;->this$0:Lcom/android/systemui/pip/tv/PipNotification;

    invoke-static {v1}, Lcom/android/systemui/pip/tv/PipNotification;->-get3(Lcom/android/systemui/pip/tv/PipNotification;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/systemui/pip/tv/PipNotification$3;->this$0:Lcom/android/systemui/pip/tv/PipNotification;

    invoke-static {v1}, Lcom/android/systemui/pip/tv/PipNotification;->-wrap2(Lcom/android/systemui/pip/tv/PipNotification;)V

    :cond_3
    return-void
.end method
