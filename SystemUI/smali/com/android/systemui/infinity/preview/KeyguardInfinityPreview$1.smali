.class Lcom/android/systemui/infinity/preview/KeyguardInfinityPreview$1;
.super Landroid/os/Handler;
.source "KeyguardInfinityPreview.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/infinity/preview/KeyguardInfinityPreview;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/infinity/preview/KeyguardInfinityPreview;


# direct methods
.method constructor <init>(Lcom/android/systemui/infinity/preview/KeyguardInfinityPreview;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/infinity/preview/KeyguardInfinityPreview$1;->this$0:Lcom/android/systemui/infinity/preview/KeyguardInfinityPreview;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/android/systemui/infinity/preview/KeyguardInfinityPreview$1;->this$0:Lcom/android/systemui/infinity/preview/KeyguardInfinityPreview;

    invoke-static {v0}, Lcom/android/systemui/infinity/preview/KeyguardInfinityPreview;->-get3(Lcom/android/systemui/infinity/preview/KeyguardInfinityPreview;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/infinity/preview/KeyguardInfinityPreview$1;->this$0:Lcom/android/systemui/infinity/preview/KeyguardInfinityPreview;

    invoke-static {v0}, Lcom/android/systemui/infinity/preview/KeyguardInfinityPreview;->-wrap0(Lcom/android/systemui/infinity/preview/KeyguardInfinityPreview;)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x63
        :pswitch_0
    .end packed-switch
.end method
