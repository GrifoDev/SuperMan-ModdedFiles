.class Lcom/android/systemui/tv/pip/PipControlButtonView$1;
.super Ljava/lang/Object;
.source "PipControlButtonView.java"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/tv/pip/PipControlButtonView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/tv/pip/PipControlButtonView;


# direct methods
.method constructor <init>(Lcom/android/systemui/tv/pip/PipControlButtonView;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/tv/pip/PipControlButtonView$1;->this$0:Lcom/android/systemui/tv/pip/PipControlButtonView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFocusChange(Landroid/view/View;Z)V
    .locals 1

    if-eqz p2, :cond_2

    iget-object v0, p0, Lcom/android/systemui/tv/pip/PipControlButtonView$1;->this$0:Lcom/android/systemui/tv/pip/PipControlButtonView;

    invoke-static {v0}, Lcom/android/systemui/tv/pip/PipControlButtonView;->-get2(Lcom/android/systemui/tv/pip/PipControlButtonView;)Landroid/animation/Animator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/animation/Animator;->isStarted()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/tv/pip/PipControlButtonView$1;->this$0:Lcom/android/systemui/tv/pip/PipControlButtonView;

    invoke-static {v0}, Lcom/android/systemui/tv/pip/PipControlButtonView;->-get2(Lcom/android/systemui/tv/pip/PipControlButtonView;)Landroid/animation/Animator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/tv/pip/PipControlButtonView$1;->this$0:Lcom/android/systemui/tv/pip/PipControlButtonView;

    invoke-static {v0}, Lcom/android/systemui/tv/pip/PipControlButtonView;->-get1(Lcom/android/systemui/tv/pip/PipControlButtonView;)Landroid/animation/Animator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/animation/Animator;->start()V

    :goto_0
    iget-object v0, p0, Lcom/android/systemui/tv/pip/PipControlButtonView$1;->this$0:Lcom/android/systemui/tv/pip/PipControlButtonView;

    invoke-static {v0}, Lcom/android/systemui/tv/pip/PipControlButtonView;->-get0(Lcom/android/systemui/tv/pip/PipControlButtonView;)Landroid/view/View$OnFocusChangeListener;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/tv/pip/PipControlButtonView$1;->this$0:Lcom/android/systemui/tv/pip/PipControlButtonView;

    invoke-static {v0}, Lcom/android/systemui/tv/pip/PipControlButtonView;->-get0(Lcom/android/systemui/tv/pip/PipControlButtonView;)Landroid/view/View$OnFocusChangeListener;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/view/View$OnFocusChangeListener;->onFocusChange(Landroid/view/View;Z)V

    :cond_1
    return-void

    :cond_2
    iget-object v0, p0, Lcom/android/systemui/tv/pip/PipControlButtonView$1;->this$0:Lcom/android/systemui/tv/pip/PipControlButtonView;

    invoke-static {v0}, Lcom/android/systemui/tv/pip/PipControlButtonView;->-get1(Lcom/android/systemui/tv/pip/PipControlButtonView;)Landroid/animation/Animator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/animation/Animator;->isStarted()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/systemui/tv/pip/PipControlButtonView$1;->this$0:Lcom/android/systemui/tv/pip/PipControlButtonView;

    invoke-static {v0}, Lcom/android/systemui/tv/pip/PipControlButtonView;->-get1(Lcom/android/systemui/tv/pip/PipControlButtonView;)Landroid/animation/Animator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    :cond_3
    iget-object v0, p0, Lcom/android/systemui/tv/pip/PipControlButtonView$1;->this$0:Lcom/android/systemui/tv/pip/PipControlButtonView;

    invoke-static {v0}, Lcom/android/systemui/tv/pip/PipControlButtonView;->-get2(Lcom/android/systemui/tv/pip/PipControlButtonView;)Landroid/animation/Animator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/animation/Animator;->start()V

    goto :goto_0
.end method
