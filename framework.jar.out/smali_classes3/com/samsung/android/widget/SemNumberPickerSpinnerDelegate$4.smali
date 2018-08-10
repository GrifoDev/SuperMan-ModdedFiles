.class Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$4;
.super Ljava/lang/Object;
.source "SemNumberPickerSpinnerDelegate.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->startAnimation(ILcom/samsung/android/widget/SemAnimationListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;

.field final synthetic val$delay:I


# direct methods
.method constructor <init>(Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;I)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$4;->this$0:Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;

    iput p2, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$4;->val$delay:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    const/4 v4, 0x1

    const/4 v8, 0x0

    iget-object v3, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$4;->this$0:Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;

    invoke-static {v3}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->-get23(Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;)I

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$4;->this$0:Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;

    invoke-static {v3, v4}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->-set5(Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;Z)Z

    return-void

    :cond_0
    iget-object v3, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$4;->this$0:Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;

    invoke-static {v3, v4}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->-set3(Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;Z)Z

    iget-object v3, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$4;->this$0:Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;

    iget-object v4, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$4;->this$0:Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;

    invoke-static {v4}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->-get5(Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;)Landroid/widget/Scroller;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->-set1(Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;Landroid/widget/Scroller;)Landroid/widget/Scroller;

    iget-object v3, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$4;->this$0:Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;

    invoke-virtual {v3}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->getValue()I

    move-result v3

    iget-object v4, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$4;->this$0:Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;

    invoke-virtual {v4}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->getMinValue()I

    move-result v4

    if-eq v3, v4, :cond_1

    iget-object v3, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$4;->this$0:Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;

    invoke-static {v3}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->-get23(Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;)I

    move-result v0

    :goto_0
    iget-object v3, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$4;->this$0:Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;

    invoke-static {v3}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->-get11(Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;)Z

    move-result v3

    if-eqz v3, :cond_2

    move v1, v0

    :goto_1
    iget-object v3, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$4;->this$0:Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;

    invoke-static {v3}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->-get11(Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;)Z

    move-result v3

    if-eqz v3, :cond_3

    move v2, v0

    :goto_2
    iget-object v3, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$4;->this$0:Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;

    invoke-virtual {v3, v8, v1}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->scrollBy(II)V

    iget-object v3, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$4;->this$0:Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;

    iget-object v3, v3, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mDelegator:Lcom/samsung/android/widget/SemNumberPicker;

    invoke-virtual {v3}, Lcom/samsung/android/widget/SemNumberPicker;->invalidate()V

    new-instance v3, Landroid/os/Handler;

    invoke-direct {v3}, Landroid/os/Handler;-><init>()V

    new-instance v4, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$4$1;

    invoke-direct {v4, p0, v2}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$4$1;-><init>(Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$4;I)V

    iget v5, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$4;->val$delay:I

    int-to-long v6, v5

    invoke-virtual {v3, v4, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void

    :cond_1
    iget-object v3, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$4;->this$0:Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;

    invoke-static {v3}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->-get23(Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;)I

    move-result v3

    neg-int v0, v3

    goto :goto_0

    :cond_2
    iget-object v3, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$4;->this$0:Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;

    invoke-static {v3}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->-get23(Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;)I

    move-result v3

    mul-int/lit8 v1, v3, 0x5

    goto :goto_1

    :cond_3
    iget-object v3, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$4;->this$0:Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;

    invoke-static {v3}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->-get23(Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;)I

    move-result v3

    int-to-double v4, v3

    const-wide v6, 0x401599999999999aL    # 5.4

    mul-double/2addr v4, v6

    double-to-int v2, v4

    goto :goto_2
.end method
