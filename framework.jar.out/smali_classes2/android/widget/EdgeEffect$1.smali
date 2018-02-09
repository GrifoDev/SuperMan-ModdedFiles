.class Landroid/widget/EdgeEffect$1;
.super Landroid/os/Handler;
.source "EdgeEffect.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/EdgeEffect;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/widget/EdgeEffect;


# direct methods
.method constructor <init>(Landroid/widget/EdgeEffect;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Landroid/widget/EdgeEffect$1;->this$0:Landroid/widget/EdgeEffect;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Landroid/widget/EdgeEffect$1;->this$0:Landroid/widget/EdgeEffect;

    invoke-virtual {v0}, Landroid/widget/EdgeEffect;->onRelease()V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
