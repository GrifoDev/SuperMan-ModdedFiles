.class Lcom/samsung/android/widget/SemTimePickerSpinnerDelegate$3;
.super Ljava/lang/Object;
.source "SemTimePickerSpinnerDelegate.java"

# interfaces
.implements Lcom/samsung/android/widget/SemNumberPicker$OnValueChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/widget/SemTimePickerSpinnerDelegate;-><init>(Lcom/samsung/android/widget/SemTimePicker;Landroid/content/Context;Landroid/util/AttributeSet;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/widget/SemTimePickerSpinnerDelegate;


# direct methods
.method constructor <init>(Lcom/samsung/android/widget/SemTimePickerSpinnerDelegate;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/widget/SemTimePickerSpinnerDelegate$3;->this$0:Lcom/samsung/android/widget/SemTimePickerSpinnerDelegate;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onValueChange(Lcom/samsung/android/widget/SemNumberPicker;II)V
    .locals 6

    const/16 v5, 0xb

    const/4 v2, 0x1

    const/4 v3, 0x0

    iget-object v1, p0, Lcom/samsung/android/widget/SemTimePickerSpinnerDelegate$3;->this$0:Lcom/samsung/android/widget/SemTimePickerSpinnerDelegate;

    invoke-virtual {v1}, Lcom/samsung/android/widget/SemTimePickerSpinnerDelegate;->is24HourView()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/widget/SemTimePickerSpinnerDelegate$3;->this$0:Lcom/samsung/android/widget/SemTimePickerSpinnerDelegate;

    invoke-static {v1}, Lcom/samsung/android/widget/SemTimePickerSpinnerDelegate;->-get5(Lcom/samsung/android/widget/SemTimePickerSpinnerDelegate;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/samsung/android/widget/SemTimePickerSpinnerDelegate$3;->this$0:Lcom/samsung/android/widget/SemTimePickerSpinnerDelegate;

    invoke-static {v1}, Lcom/samsung/android/widget/SemTimePickerSpinnerDelegate;->-wrap0(Lcom/samsung/android/widget/SemTimePickerSpinnerDelegate;)V

    return-void

    :cond_1
    const/16 v0, 0xc

    iget-object v1, p0, Lcom/samsung/android/widget/SemTimePickerSpinnerDelegate$3;->this$0:Lcom/samsung/android/widget/SemTimePickerSpinnerDelegate;

    invoke-static {v1}, Lcom/samsung/android/widget/SemTimePickerSpinnerDelegate;->-get2(Lcom/samsung/android/widget/SemTimePickerSpinnerDelegate;)C

    move-result v1

    const/16 v4, 0x4b

    if-ne v1, v4, :cond_2

    const/4 v0, 0x0

    :cond_2
    if-ne p2, v5, :cond_3

    if-ne p3, v0, :cond_3

    :goto_1
    iget-object v4, p0, Lcom/samsung/android/widget/SemTimePickerSpinnerDelegate$3;->this$0:Lcom/samsung/android/widget/SemTimePickerSpinnerDelegate;

    iget-object v1, p0, Lcom/samsung/android/widget/SemTimePickerSpinnerDelegate$3;->this$0:Lcom/samsung/android/widget/SemTimePickerSpinnerDelegate;

    invoke-static {v1}, Lcom/samsung/android/widget/SemTimePickerSpinnerDelegate;->-get1(Lcom/samsung/android/widget/SemTimePickerSpinnerDelegate;)Lcom/samsung/android/widget/SemNumberPicker;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/widget/SemNumberPicker;->getValue()I

    move-result v1

    if-eqz v1, :cond_4

    move v1, v2

    :goto_2
    invoke-static {v4, v1}, Lcom/samsung/android/widget/SemTimePickerSpinnerDelegate;->-set0(Lcom/samsung/android/widget/SemTimePickerSpinnerDelegate;Z)Z

    iget-object v1, p0, Lcom/samsung/android/widget/SemTimePickerSpinnerDelegate$3;->this$0:Lcom/samsung/android/widget/SemTimePickerSpinnerDelegate;

    invoke-static {v1}, Lcom/samsung/android/widget/SemTimePickerSpinnerDelegate;->-get1(Lcom/samsung/android/widget/SemTimePickerSpinnerDelegate;)Lcom/samsung/android/widget/SemNumberPicker;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/samsung/android/widget/SemNumberPicker;->performClick(Z)V

    iget-object v1, p0, Lcom/samsung/android/widget/SemTimePickerSpinnerDelegate$3;->this$0:Lcom/samsung/android/widget/SemTimePickerSpinnerDelegate;

    invoke-static {v1, v2}, Lcom/samsung/android/widget/SemTimePickerSpinnerDelegate;->-set1(Lcom/samsung/android/widget/SemTimePickerSpinnerDelegate;Z)Z

    iget-object v1, p0, Lcom/samsung/android/widget/SemTimePickerSpinnerDelegate$3;->this$0:Lcom/samsung/android/widget/SemTimePickerSpinnerDelegate;

    invoke-static {v1}, Lcom/samsung/android/widget/SemTimePickerSpinnerDelegate;->-get1(Lcom/samsung/android/widget/SemTimePickerSpinnerDelegate;)Lcom/samsung/android/widget/SemNumberPicker;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/samsung/android/widget/SemNumberPicker;->setEnabled(Z)V

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    new-instance v2, Lcom/samsung/android/widget/SemTimePickerSpinnerDelegate$3$1;

    invoke-direct {v2, p0}, Lcom/samsung/android/widget/SemTimePickerSpinnerDelegate$3$1;-><init>(Lcom/samsung/android/widget/SemTimePickerSpinnerDelegate$3;)V

    const-wide/16 v4, 0x1f4

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    :cond_3
    if-ne p2, v0, :cond_0

    if-ne p3, v5, :cond_0

    goto :goto_1

    :cond_4
    move v1, v3

    goto :goto_2
.end method
