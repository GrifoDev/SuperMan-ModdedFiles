.class Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$4$1$1$1;
.super Ljava/lang/Object;
.source "SemNumberPickerSpinnerDelegate.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$4$1$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$3:Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$4$1$1;


# direct methods
.method constructor <init>(Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$4$1$1;)V
    .locals 0
    .param p1, "this$3"    # Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$4$1$1;

    .prologue
    .line 1893
    iput-object p1, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$4$1$1$1;->this$3:Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$4$1$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 1896
    iget-object v0, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$4$1$1$1;->this$3:Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$4$1$1;

    iget-object v0, v0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$4$1$1;->this$2:Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$4$1;

    iget-object v0, v0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$4$1;->this$1:Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$4;

    iget-object v0, v0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$4;->this$0:Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;

    iget-object v1, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$4$1$1$1;->this$3:Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$4$1$1;

    iget-object v1, v1, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$4$1$1;->this$2:Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$4$1;

    iget-object v1, v1, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$4$1;->this$1:Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$4;

    iget-object v1, v1, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$4;->this$0:Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;

    invoke-static {v1}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->-get8(Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;)Landroid/widget/Scroller;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->-wrap1(Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;Landroid/widget/Scroller;)Z

    .line 1897
    iget-object v0, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$4$1$1$1;->this$3:Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$4$1$1;

    iget-object v0, v0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$4$1$1;->this$2:Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$4$1;

    iget-object v0, v0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$4$1;->this$1:Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$4;

    iget-object v0, v0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$4;->this$0:Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;

    invoke-static {v0}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->-get8(Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;)Landroid/widget/Scroller;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Scroller;->abortAnimation()V

    .line 1898
    iget-object v0, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$4$1$1$1;->this$3:Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$4$1$1;

    iget-object v0, v0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$4$1$1;->this$2:Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$4$1;

    iget-object v0, v0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$4$1;->this$1:Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$4;

    iget-object v0, v0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$4;->this$0:Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;

    invoke-static {v0}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->-get1(Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;)Landroid/widget/Scroller;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Scroller;->abortAnimation()V

    .line 1899
    iget-object v0, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$4$1$1$1;->this$3:Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$4$1$1;

    iget-object v0, v0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$4$1$1;->this$2:Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$4$1;

    iget-object v0, v0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$4$1;->this$1:Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$4;

    iget-object v0, v0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$4;->this$0:Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;

    invoke-static {v0}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->-wrap0(Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;)Z

    .line 1900
    iget-object v0, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$4$1$1$1;->this$3:Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$4$1$1;

    iget-object v0, v0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$4$1$1;->this$2:Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$4$1;

    iget-object v0, v0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$4$1;->this$1:Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$4;

    iget-object v0, v0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$4;->this$0:Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;

    iget-object v1, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$4$1$1$1;->this$3:Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$4$1$1;

    iget-object v1, v1, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$4$1$1;->this$2:Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$4$1;

    iget-object v1, v1, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$4$1;->this$1:Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$4;

    iget-object v1, v1, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$4;->this$0:Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;

    invoke-static {v1}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->-get14(Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;)Landroid/widget/Scroller;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->-set1(Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;Landroid/widget/Scroller;)Landroid/widget/Scroller;

    .line 1902
    iget-object v0, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$4$1$1$1;->this$3:Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$4$1$1;

    iget-object v0, v0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$4$1$1;->this$2:Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$4$1;

    iget-object v0, v0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$4$1;->this$1:Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$4;

    iget-object v0, v0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$4;->this$0:Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->-set3(Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;Z)Z

    .line 1903
    iget-object v0, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$4$1$1$1;->this$3:Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$4$1$1;

    iget-object v0, v0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$4$1$1;->this$2:Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$4$1;

    iget-object v0, v0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$4$1;->this$1:Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$4;

    iget-object v0, v0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$4;->this$0:Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;

    iget-object v0, v0, Lcom/samsung/android/widget/SemNumberPicker$AbstractSemNumberPickerDelegate;->mDelegator:Lcom/samsung/android/widget/SemNumberPicker;

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    .line 1904
    iget-object v0, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$4$1$1$1;->this$3:Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$4$1$1;

    iget-object v0, v0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$4$1$1;->this$2:Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$4$1;

    iget-object v0, v0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$4$1;->this$1:Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$4;

    iget-object v0, v0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$4;->this$0:Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;

    invoke-static {v0}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->-get2(Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;)Lcom/samsung/android/widget/SemAnimationListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1905
    iget-object v0, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$4$1$1$1;->this$3:Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$4$1$1;

    iget-object v0, v0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$4$1$1;->this$2:Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$4$1;

    iget-object v0, v0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$4$1;->this$1:Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$4;

    iget-object v0, v0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$4;->this$0:Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;

    invoke-static {v0}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->-get2(Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;)Lcom/samsung/android/widget/SemAnimationListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/android/widget/SemAnimationListener;->onAnimationEnd()V

    .line 1895
    :cond_0
    return-void
.end method
