.class Lcom/android/incallui/agif/AgifFragment$1;
.super Landroid/os/Handler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/incallui/agif/AgifFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/incallui/agif/AgifFragment;


# direct methods
.method constructor <init>(Lcom/android/incallui/agif/AgifFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/android/incallui/agif/AgifFragment$1;->this$0:Lcom/android/incallui/agif/AgifFragment;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/android/incallui/agif/AgifFragment$1;->this$0:Lcom/android/incallui/agif/AgifFragment;

    invoke-static {v0}, Lcom/android/incallui/agif/AgifFragment;->access$000(Lcom/android/incallui/agif/AgifFragment;)V

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/android/incallui/agif/AgifFragment$1;->this$0:Lcom/android/incallui/agif/AgifFragment;

    invoke-virtual {v0}, Lcom/android/incallui/agif/AgifFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/incallui/agif/AgifCallServiceUtils;->needToShowAgifFragment(Landroid/content/Context;)Z

    move-result v0

    iget-object v1, p0, Lcom/android/incallui/agif/AgifFragment$1;->this$0:Lcom/android/incallui/agif/AgifFragment;

    invoke-virtual {v1, v0}, Lcom/android/incallui/agif/AgifFragment;->setVisible(Z)V

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/agif/AgifFragment$1;->this$0:Lcom/android/incallui/agif/AgifFragment;

    iget-boolean v0, v0, Lcom/android/incallui/agif/AgifFragment;->mIsShowAgifList:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/agif/AgifFragment$1;->this$0:Lcom/android/incallui/agif/AgifFragment;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/incallui/agif/AgifFragment;->showAgifList(Z)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0xc8
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
