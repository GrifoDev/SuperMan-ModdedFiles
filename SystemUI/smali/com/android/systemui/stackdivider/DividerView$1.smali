.class Lcom/android/systemui/stackdivider/DividerView$1;
.super Landroid/os/Handler;
.source "DividerView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/stackdivider/DividerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/stackdivider/DividerView;


# direct methods
.method constructor <init>(Lcom/android/systemui/stackdivider/DividerView;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/stackdivider/DividerView$1;->this$0:Lcom/android/systemui/stackdivider/DividerView;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    :goto_0
    return-void

    :pswitch_0
    iget-object v1, p0, Lcom/android/systemui/stackdivider/DividerView$1;->this$0:Lcom/android/systemui/stackdivider/DividerView;

    iget v2, p1, Landroid/os/Message;->arg1:I

    iget v3, p1, Landroid/os/Message;->arg2:I

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;

    invoke-virtual {v1, v2, v3, v0}, Lcom/android/systemui/stackdivider/DividerView;->resizeStack(IILcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
