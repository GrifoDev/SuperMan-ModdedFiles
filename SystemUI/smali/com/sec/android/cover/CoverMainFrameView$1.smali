.class Lcom/sec/android/cover/CoverMainFrameView$1;
.super Landroid/os/Handler;
.source "CoverMainFrameView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/cover/CoverMainFrameView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/cover/CoverMainFrameView;


# direct methods
.method constructor <init>(Lcom/sec/android/cover/CoverMainFrameView;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/cover/CoverMainFrameView$1;->this$0:Lcom/sec/android/cover/CoverMainFrameView;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/sec/android/cover/CoverMainFrameView$1;->this$0:Lcom/sec/android/cover/CoverMainFrameView;

    invoke-static {v0}, Lcom/sec/android/cover/CoverMainFrameView;->-get0(Lcom/sec/android/cover/CoverMainFrameView;)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-static {v0, v1}, Lcom/sec/android/cover/CoverMainFrameView;->-set0(Lcom/sec/android/cover/CoverMainFrameView;I)I

    iget-object v0, p0, Lcom/sec/android/cover/CoverMainFrameView$1;->this$0:Lcom/sec/android/cover/CoverMainFrameView;

    invoke-static {v0}, Lcom/sec/android/cover/CoverMainFrameView;->-wrap0(Lcom/sec/android/cover/CoverMainFrameView;)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
