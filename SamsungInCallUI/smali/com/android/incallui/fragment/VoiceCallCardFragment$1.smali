.class Lcom/android/incallui/fragment/VoiceCallCardFragment$1;
.super Landroid/os/Handler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/incallui/fragment/VoiceCallCardFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/incallui/fragment/VoiceCallCardFragment;


# direct methods
.method constructor <init>(Lcom/android/incallui/fragment/VoiceCallCardFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment$1;->this$0:Lcom/android/incallui/fragment/VoiceCallCardFragment;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    const-string v0, "VoiceCallCardFragment"

    const-string v1, "ANIMATE_FOR_SHOW"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment$1;->this$0:Lcom/android/incallui/fragment/VoiceCallCardFragment;

    invoke-virtual {v0}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->animateForShow()V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0xa0
        :pswitch_0
    .end packed-switch
.end method
