.class Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$3$1;
.super Ljava/lang/Object;
.source "SemNumberPickerSpinnerDelegate.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$3;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$3;


# direct methods
.method constructor <init>(Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$3;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$3$1;->this$1:Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    invoke-static {}, Landroid/view/inputmethod/InputMethodManager;->peekInstance()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$3$1;->this$1:Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$3;

    iget-object v1, v1, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$3;->this$0:Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;

    invoke-static {v1}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->-get12(Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$3$1;->this$1:Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$3;

    iget-object v1, v1, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$3;->this$0:Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;

    invoke-static {v1}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->-get10(Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->isFocused()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$3$1;->this$1:Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$3;

    iget-object v1, v1, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$3;->this$0:Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;

    invoke-static {v1}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->-get10(Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;)Landroid/widget/EditText;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    :cond_0
    return-void
.end method
