.class Landroid/widget/TimePickerClockDelegate$3;
.super Ljava/lang/Object;
.source "TimePickerClockDelegate.java"

# interfaces
.implements Lcom/android/internal/widget/NumericTextView$OnValueChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/TimePickerClockDelegate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/widget/TimePickerClockDelegate;


# direct methods
.method constructor <init>(Landroid/widget/TimePickerClockDelegate;)V
    .locals 0

    iput-object p1, p0, Landroid/widget/TimePickerClockDelegate$3;->this$0:Landroid/widget/TimePickerClockDelegate;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onValueChanged(Lcom/android/internal/widget/NumericTextView;IZZ)V
    .locals 4

    iget-object v2, p0, Landroid/widget/TimePickerClockDelegate$3;->this$0:Landroid/widget/TimePickerClockDelegate;

    invoke-static {v2}, Landroid/widget/TimePickerClockDelegate;->-get3(Landroid/widget/TimePickerClockDelegate;)Lcom/android/internal/widget/NumericTextView;

    move-result-object v2

    if-ne p1, v2, :cond_2

    iget-object v2, p0, Landroid/widget/TimePickerClockDelegate$3;->this$0:Landroid/widget/TimePickerClockDelegate;

    invoke-static {v2}, Landroid/widget/TimePickerClockDelegate;->-get1(Landroid/widget/TimePickerClockDelegate;)Ljava/lang/Runnable;

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/internal/widget/NumericTextView;->isFocused()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Landroid/widget/TimePickerClockDelegate$3;->this$0:Landroid/widget/TimePickerClockDelegate;

    invoke-static {v2}, Landroid/widget/TimePickerClockDelegate;->-get4(Landroid/widget/TimePickerClockDelegate;)Lcom/android/internal/widget/NumericTextView;

    move-result-object v1

    :goto_0
    invoke-virtual {p1, v0}, Lcom/android/internal/widget/NumericTextView;->removeCallbacks(Ljava/lang/Runnable;)Z

    if-eqz p3, :cond_0

    if-eqz p4, :cond_4

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/view/View;->requestFocus()Z

    :cond_0
    :goto_1
    return-void

    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    :cond_2
    iget-object v2, p0, Landroid/widget/TimePickerClockDelegate$3;->this$0:Landroid/widget/TimePickerClockDelegate;

    invoke-static {v2}, Landroid/widget/TimePickerClockDelegate;->-get4(Landroid/widget/TimePickerClockDelegate;)Lcom/android/internal/widget/NumericTextView;

    move-result-object v2

    if-ne p1, v2, :cond_3

    iget-object v2, p0, Landroid/widget/TimePickerClockDelegate$3;->this$0:Landroid/widget/TimePickerClockDelegate;

    invoke-static {v2}, Landroid/widget/TimePickerClockDelegate;->-get2(Landroid/widget/TimePickerClockDelegate;)Ljava/lang/Runnable;

    move-result-object v0

    const/4 v1, 0x0

    goto :goto_0

    :cond_3
    return-void

    :cond_4
    const-wide/16 v2, 0x7d0

    invoke-virtual {p1, v0, v2, v3}, Lcom/android/internal/widget/NumericTextView;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_1
.end method
