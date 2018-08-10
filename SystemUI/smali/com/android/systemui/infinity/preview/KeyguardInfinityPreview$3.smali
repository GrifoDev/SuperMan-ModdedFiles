.class Lcom/android/systemui/infinity/preview/KeyguardInfinityPreview$3;
.super Ljava/lang/Object;
.source "KeyguardInfinityPreview.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/infinity/preview/KeyguardInfinityPreview;->holdChangeMode(J)V
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

    iput-object p1, p0, Lcom/android/systemui/infinity/preview/KeyguardInfinityPreview$3;->this$0:Lcom/android/systemui/infinity/preview/KeyguardInfinityPreview;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    const/16 v2, 0x63

    iget-object v0, p0, Lcom/android/systemui/infinity/preview/KeyguardInfinityPreview$3;->this$0:Lcom/android/systemui/infinity/preview/KeyguardInfinityPreview;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/systemui/infinity/preview/KeyguardInfinityPreview;->-set1(Lcom/android/systemui/infinity/preview/KeyguardInfinityPreview;Z)Z

    iget-object v0, p0, Lcom/android/systemui/infinity/preview/KeyguardInfinityPreview$3;->this$0:Lcom/android/systemui/infinity/preview/KeyguardInfinityPreview;

    invoke-static {v0}, Lcom/android/systemui/infinity/preview/KeyguardInfinityPreview;->-get2(Lcom/android/systemui/infinity/preview/KeyguardInfinityPreview;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/infinity/preview/KeyguardInfinityPreview$3;->this$0:Lcom/android/systemui/infinity/preview/KeyguardInfinityPreview;

    invoke-static {v0}, Lcom/android/systemui/infinity/preview/KeyguardInfinityPreview;->-get2(Lcom/android/systemui/infinity/preview/KeyguardInfinityPreview;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/infinity/preview/KeyguardInfinityPreview$3;->this$0:Lcom/android/systemui/infinity/preview/KeyguardInfinityPreview;

    invoke-static {v0}, Lcom/android/systemui/infinity/preview/KeyguardInfinityPreview;->-get2(Lcom/android/systemui/infinity/preview/KeyguardInfinityPreview;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method
