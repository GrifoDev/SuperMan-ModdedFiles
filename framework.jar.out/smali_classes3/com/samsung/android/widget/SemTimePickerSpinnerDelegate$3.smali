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
    .locals 7

    const/16 v6, 0xb

    const/4 v3, 0x1

    const/4 v4, 0x0

    iget-object v2, p0, Lcom/samsung/android/widget/SemTimePickerSpinnerDelegate$3;->this$0:Lcom/samsung/android/widget/SemTimePickerSpinnerDelegate;

    invoke-virtual {v2}, Lcom/samsung/android/widget/SemTimePickerSpinnerDelegate;->is24HourView()Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/samsung/android/widget/SemTimePickerSpinnerDelegate$3;->this$0:Lcom/samsung/android/widget/SemTimePickerSpinnerDelegate;

    invoke-static {v2}, Lcom/samsung/android/widget/SemTimePickerSpinnerDelegate;->-get6(Lcom/samsung/android/widget/SemTimePickerSpinnerDelegate;)Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_1

    const/16 v1, 0xb

    const/16 v0, 0xc

    iget-object v2, p0, Lcom/samsung/android/widget/SemTimePickerSpinnerDelegate$3;->this$0:Lcom/samsung/android/widget/SemTimePickerSpinnerDelegate;

    invoke-static {v2}, Lcom/samsung/android/widget/SemTimePickerSpinnerDelegate;->-get3(Lcom/samsung/android/widget/SemTimePickerSpinnerDelegate;)C

    move-result v2

    const/16 v5, 0x4b

    if-ne v2, v5, :cond_0

    const/4 v0, 0x0

    :cond_0
    if-ne p2, v6, :cond_2

    if-ne p3, v0, :cond_2

    :goto_0
    iget-object v5, p0, Lcom/samsung/android/widget/SemTimePickerSpinnerDelegate$3;->this$0:Lcom/samsung/android/widget/SemTimePickerSpinnerDelegate;

    iget-object v2, p0, Lcom/samsung/android/widget/SemTimePickerSpinnerDelegate$3;->this$0:Lcom/samsung/android/widget/SemTimePickerSpinnerDelegate;

    invoke-static {v2}, Lcom/samsung/android/widget/SemTimePickerSpinnerDelegate;->-get2(Lcom/samsung/android/widget/SemTimePickerSpinnerDelegate;)Lcom/samsung/android/widget/SemNumberPicker;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/widget/SemNumberPicker;->getValue()I

    move-result v2

    if-eqz v2, :cond_3

    move v2, v3

    :goto_1
    invoke-static {v5, v2}, Lcom/samsung/android/widget/SemTimePickerSpinnerDelegate;->-set0(Lcom/samsung/android/widget/SemTimePickerSpinnerDelegate;Z)Z

    iget-object v2, p0, Lcom/samsung/android/widget/SemTimePickerSpinnerDelegate$3;->this$0:Lcom/samsung/android/widget/SemTimePickerSpinnerDelegate;

    invoke-static {v2}, Lcom/samsung/android/widget/SemTimePickerSpinnerDelegate;->-get2(Lcom/samsung/android/widget/SemTimePickerSpinnerDelegate;)Lcom/samsung/android/widget/SemNumberPicker;

    move-result-object v2

    invoke-virtual {v2, v4}, Lcom/samsung/android/widget/SemNumberPicker;->performClick(Z)V

    iget-object v2, p0, Lcom/samsung/android/widget/SemTimePickerSpinnerDelegate$3;->this$0:Lcom/samsung/android/widget/SemTimePickerSpinnerDelegate;

    invoke-static {v2, v3}, Lcom/samsung/android/widget/SemTimePickerSpinnerDelegate;->-set1(Lcom/samsung/android/widget/SemTimePickerSpinnerDelegate;Z)Z

    iget-object v2, p0, Lcom/samsung/android/widget/SemTimePickerSpinnerDelegate$3;->this$0:Lcom/samsung/android/widget/SemTimePickerSpinnerDelegate;

    invoke-static {v2}, Lcom/samsung/android/widget/SemTimePickerSpinnerDelegate;->-get2(Lcom/samsung/android/widget/SemTimePickerSpinnerDelegate;)Lcom/samsung/android/widget/SemNumberPicker;

    move-result-object v2

    invoke-virtual {v2, v4}, Lcom/samsung/android/widget/SemNumberPicker;->setEnabled(Z)V

    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    new-instance v3, Lcom/samsung/android/widget/SemTimePickerSpinnerDelegate$3$1;

    invoke-direct {v3, p0}, Lcom/samsung/android/widget/SemTimePickerSpinnerDelegate$3$1;-><init>(Lcom/samsung/android/widget/SemTimePickerSpinnerDelegate$3;)V

    const-wide/16 v4, 0x1f4

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_1
    iget-object v2, p0, Lcom/samsung/android/widget/SemTimePickerSpinnerDelegate$3;->this$0:Lcom/samsung/android/widget/SemTimePickerSpinnerDelegate;

    invoke-static {v2}, Lcom/samsung/android/widget/SemTimePickerSpinnerDelegate;->-wrap0(Lcom/samsung/android/widget/SemTimePickerSpinnerDelegate;)V

    return-void

    :cond_2
    if-ne p2, v0, :cond_1

    if-ne p3, v6, :cond_1

    goto :goto_0

    :cond_3
    move v2, v4

    goto :goto_1
.end method
