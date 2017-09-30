.class Lcom/android/incallui/fragment/view/CallCardMcidView$1;
.super Landroid/os/Handler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/incallui/fragment/view/CallCardMcidView;
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

    iput-object p1, p0, Lcom/android/incallui/fragment/view/CallCardMcidView$1;->this$0:Lcom/android/incallui/fragment/view/CallCardMcidView;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4

    const/4 v2, 0x0

    iget v0, p1, Landroid/os/Message;->what:I

    sparse-switch v0, :sswitch_data_0

    :goto_0
    return-void

    :sswitch_0
    iget-object v0, p0, Lcom/android/incallui/fragment/view/CallCardMcidView$1;->this$0:Lcom/android/incallui/fragment/view/CallCardMcidView;

    invoke-static {v0, v2}, Lcom/android/incallui/fragment/view/CallCardMcidView;->access$000(Lcom/android/incallui/fragment/view/CallCardMcidView;Z)V

    const/16 v0, 0xc8

    const-wide/16 v2, 0x9c4

    invoke-virtual {p0, v0, v2, v3}, Lcom/android/incallui/fragment/view/CallCardMcidView$1;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    :sswitch_1
    iget-object v0, p0, Lcom/android/incallui/fragment/view/CallCardMcidView$1;->this$0:Lcom/android/incallui/fragment/view/CallCardMcidView;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/incallui/fragment/view/CallCardMcidView;->access$102(Lcom/android/incallui/fragment/view/CallCardMcidView;Z)Z

    iget-object v0, p0, Lcom/android/incallui/fragment/view/CallCardMcidView$1;->this$0:Lcom/android/incallui/fragment/view/CallCardMcidView;

    iget-object v1, p0, Lcom/android/incallui/fragment/view/CallCardMcidView$1;->this$0:Lcom/android/incallui/fragment/view/CallCardMcidView;

    invoke-static {v1}, Lcom/android/incallui/fragment/view/CallCardMcidView;->access$100(Lcom/android/incallui/fragment/view/CallCardMcidView;)Z

    move-result v1

    invoke-static {v0, v1}, Lcom/android/incallui/fragment/view/CallCardMcidView;->access$000(Lcom/android/incallui/fragment/view/CallCardMcidView;Z)V

    iget-object v0, p0, Lcom/android/incallui/fragment/view/CallCardMcidView$1;->this$0:Lcom/android/incallui/fragment/view/CallCardMcidView;

    invoke-static {v0}, Lcom/android/incallui/fragment/view/CallCardMcidView;->access$200(Lcom/android/incallui/fragment/view/CallCardMcidView;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x64 -> :sswitch_0
        0xc8 -> :sswitch_1
    .end sparse-switch
.end method
