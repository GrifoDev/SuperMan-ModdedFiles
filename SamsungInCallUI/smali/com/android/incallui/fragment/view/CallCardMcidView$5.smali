.class Lcom/android/incallui/fragment/view/CallCardMcidView$5;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/media/MediaPlayer$OnErrorListener;


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

    iput-object p1, p0, Lcom/android/incallui/fragment/view/CallCardMcidView$5;->this$0:Lcom/android/incallui/fragment/view/CallCardMcidView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Landroid/media/MediaPlayer;II)Z
    .locals 1

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->stop()V

    :cond_0
    const/4 v0, 0x1

    return v0
.end method
