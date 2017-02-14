.class Lcom/samsung/android/settings/activekey/ActiveKeyAppGridView$1;
.super Landroid/os/Handler;
.source "ActiveKeyAppGridView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/activekey/ActiveKeyAppGridView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/activekey/ActiveKeyAppGridView;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/activekey/ActiveKeyAppGridView;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/activekey/ActiveKeyAppGridView$1;->this$0:Lcom/samsung/android/settings/activekey/ActiveKeyAppGridView;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    :goto_0
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/samsung/android/settings/activekey/ActiveKeyAppGridView$1;->this$0:Lcom/samsung/android/settings/activekey/ActiveKeyAppGridView;

    invoke-static {v0}, Lcom/samsung/android/settings/activekey/ActiveKeyAppGridView;->-get2(Lcom/samsung/android/settings/activekey/ActiveKeyAppGridView;)Lcom/samsung/android/settings/activekey/ActiveKeyAppGridView$LoadAppListTask;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/settings/activekey/ActiveKeyAppGridView$LoadAppListTask;->add()V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
