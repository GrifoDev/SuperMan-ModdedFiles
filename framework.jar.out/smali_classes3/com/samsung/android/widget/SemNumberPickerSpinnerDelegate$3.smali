.class Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$3;
.super Ljava/lang/Object;
.source "SemNumberPickerSpinnerDelegate.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->showSoftInputForWindowFocused()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;


# direct methods
.method constructor <init>(Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$3;->this$0:Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    invoke-static {}, Landroid/view/inputmethod/InputMethodManager;->peekInstance()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v2, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$3;->this$0:Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;

    invoke-static {v2}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->-get12(Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$3;->this$0:Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;

    invoke-static {v2}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->-get10(Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;)Landroid/widget/EditText;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/EditText;->isFocused()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$3;->this$0:Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;

    invoke-static {v2}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->-get10(Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;)Landroid/widget/EditText;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v2, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$3;->this$0:Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;

    iget-object v2, v2, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mDelegator:Lcom/samsung/android/widget/SemNumberPicker;

    new-instance v3, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$3$1;

    invoke-direct {v3, p0}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$3$1;-><init>(Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$3;)V

    const-wide/16 v4, 0x14

    invoke-virtual {v2, v3, v4, v5}, Lcom/samsung/android/widget/SemNumberPicker;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void
.end method
