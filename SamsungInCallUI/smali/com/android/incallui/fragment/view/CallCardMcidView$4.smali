.class Lcom/android/incallui/fragment/view/CallCardMcidView$4;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/media/MediaPlayer$OnPreparedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/incallui/fragment/view/CallCardMcidView;->updatePhotoringState(Lcom/android/incallui/fragment/VoiceCallCardFragment;Lcom/android/incallui/util/PhotoringUtil$PhotoringMTState;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/incallui/fragment/view/CallCardMcidView;


# direct methods
.method constructor <init>(Lcom/android/incallui/fragment/view/CallCardMcidView;)V
    .locals 0

    iput-object p1, p0, Lcom/android/incallui/fragment/view/CallCardMcidView$4;->this$0:Lcom/android/incallui/fragment/view/CallCardMcidView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPrepared(Landroid/media/MediaPlayer;)V
    .locals 3

    const/4 v2, 0x1

    const/4 v0, 0x0

    invoke-virtual {p1, v0, v0}, Landroid/media/MediaPlayer;->setVolume(FF)V

    iget-object v0, p0, Lcom/android/incallui/fragment/view/CallCardMcidView$4;->this$0:Lcom/android/incallui/fragment/view/CallCardMcidView;

    invoke-static {v0, v2}, Lcom/android/incallui/fragment/view/CallCardMcidView;->access$402(Lcom/android/incallui/fragment/view/CallCardMcidView;Z)Z

    iget-object v0, p0, Lcom/android/incallui/fragment/view/CallCardMcidView$4;->this$0:Lcom/android/incallui/fragment/view/CallCardMcidView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/incallui/fragment/view/CallCardMcidView;->access$502(Lcom/android/incallui/fragment/view/CallCardMcidView;Z)Z

    invoke-virtual {p1, v2}, Landroid/media/MediaPlayer;->setLooping(Z)V

    const-string v0, "AnswerImageFragment"

    const-string v1, "photoring - start video"

    invoke-static {v0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/incallui/fragment/view/CallCardMcidView$4;->this$0:Lcom/android/incallui/fragment/view/CallCardMcidView;

    invoke-static {v0}, Lcom/android/incallui/fragment/view/CallCardMcidView;->access$600(Lcom/android/incallui/fragment/view/CallCardMcidView;)Landroid/widget/VideoView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/VideoView;->start()V

    iget-object v0, p0, Lcom/android/incallui/fragment/view/CallCardMcidView$4;->this$0:Lcom/android/incallui/fragment/view/CallCardMcidView;

    invoke-static {v0, p1}, Lcom/android/incallui/fragment/view/CallCardMcidView;->access$702(Lcom/android/incallui/fragment/view/CallCardMcidView;Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer;

    return-void
.end method
