.class Lcom/samsung/android/widget/SemTimePickerSpinnerDelegate$5;
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

    iput-object p1, p0, Lcom/samsung/android/widget/SemTimePickerSpinnerDelegate$5;->this$0:Lcom/samsung/android/widget/SemTimePickerSpinnerDelegate;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onValueChange(Lcom/samsung/android/widget/SemNumberPicker;II)V
    .locals 3

    const/4 v0, 0x1

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/samsung/android/widget/SemTimePickerSpinnerDelegate$5;->this$0:Lcom/samsung/android/widget/SemTimePickerSpinnerDelegate;

    invoke-static {v2}, Lcom/samsung/android/widget/SemTimePickerSpinnerDelegate;->-get2(Lcom/samsung/android/widget/SemTimePickerSpinnerDelegate;)Lcom/samsung/android/widget/SemNumberPicker;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/widget/SemNumberPicker;->isEnabled()Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/samsung/android/widget/SemTimePickerSpinnerDelegate$5;->this$0:Lcom/samsung/android/widget/SemTimePickerSpinnerDelegate;

    invoke-static {v2}, Lcom/samsung/android/widget/SemTimePickerSpinnerDelegate;->-get2(Lcom/samsung/android/widget/SemTimePickerSpinnerDelegate;)Lcom/samsung/android/widget/SemNumberPicker;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/samsung/android/widget/SemNumberPicker;->setEnabled(Z)V

    :cond_0
    iget-object v2, p0, Lcom/samsung/android/widget/SemTimePickerSpinnerDelegate$5;->this$0:Lcom/samsung/android/widget/SemTimePickerSpinnerDelegate;

    invoke-static {v2}, Lcom/samsung/android/widget/SemTimePickerSpinnerDelegate;->-get5(Lcom/samsung/android/widget/SemTimePickerSpinnerDelegate;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v0, p0, Lcom/samsung/android/widget/SemTimePickerSpinnerDelegate$5;->this$0:Lcom/samsung/android/widget/SemTimePickerSpinnerDelegate;

    invoke-static {v0, v1}, Lcom/samsung/android/widget/SemTimePickerSpinnerDelegate;->-set1(Lcom/samsung/android/widget/SemTimePickerSpinnerDelegate;Z)Z

    :goto_0
    return-void

    :cond_1
    iget-object v2, p0, Lcom/samsung/android/widget/SemTimePickerSpinnerDelegate$5;->this$0:Lcom/samsung/android/widget/SemTimePickerSpinnerDelegate;

    invoke-static {v2}, Lcom/samsung/android/widget/SemTimePickerSpinnerDelegate;->-get4(Lcom/samsung/android/widget/SemTimePickerSpinnerDelegate;)Z

    move-result v2

    if-eqz v2, :cond_3

    if-nez p3, :cond_3

    :cond_2
    return-void

    :cond_3
    iget-object v2, p0, Lcom/samsung/android/widget/SemTimePickerSpinnerDelegate$5;->this$0:Lcom/samsung/android/widget/SemTimePickerSpinnerDelegate;

    invoke-static {v2}, Lcom/samsung/android/widget/SemTimePickerSpinnerDelegate;->-get4(Lcom/samsung/android/widget/SemTimePickerSpinnerDelegate;)Z

    move-result v2

    if-nez v2, :cond_4

    if-eq p3, v0, :cond_2

    :cond_4
    iget-object v2, p0, Lcom/samsung/android/widget/SemTimePickerSpinnerDelegate$5;->this$0:Lcom/samsung/android/widget/SemTimePickerSpinnerDelegate;

    if-nez p3, :cond_5

    :goto_1
    invoke-static {v2, v0}, Lcom/samsung/android/widget/SemTimePickerSpinnerDelegate;->-set0(Lcom/samsung/android/widget/SemTimePickerSpinnerDelegate;Z)Z

    iget-object v0, p0, Lcom/samsung/android/widget/SemTimePickerSpinnerDelegate$5;->this$0:Lcom/samsung/android/widget/SemTimePickerSpinnerDelegate;

    invoke-static {v0}, Lcom/samsung/android/widget/SemTimePickerSpinnerDelegate;->-wrap1(Lcom/samsung/android/widget/SemTimePickerSpinnerDelegate;)V

    iget-object v0, p0, Lcom/samsung/android/widget/SemTimePickerSpinnerDelegate$5;->this$0:Lcom/samsung/android/widget/SemTimePickerSpinnerDelegate;

    invoke-static {v0}, Lcom/samsung/android/widget/SemTimePickerSpinnerDelegate;->-wrap0(Lcom/samsung/android/widget/SemTimePickerSpinnerDelegate;)V

    iget-object v0, p0, Lcom/samsung/android/widget/SemTimePickerSpinnerDelegate$5;->this$0:Lcom/samsung/android/widget/SemTimePickerSpinnerDelegate;

    invoke-static {v0}, Lcom/samsung/android/widget/SemTimePickerSpinnerDelegate;->-wrap4(Lcom/samsung/android/widget/SemTimePickerSpinnerDelegate;)V

    goto :goto_0

    :cond_5
    move v0, v1

    goto :goto_1
.end method
