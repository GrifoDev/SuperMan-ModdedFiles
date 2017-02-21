.class Lcom/samsung/android/app/SemDatePickerDialog$1;
.super Ljava/lang/Object;
.source "SemDatePickerDialog.java"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/SemDatePickerDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/SemDatePickerDialog;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/SemDatePickerDialog;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/app/SemDatePickerDialog$1;->this$0:Lcom/samsung/android/app/SemDatePickerDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFocusChange(Landroid/view/View;Z)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/app/SemDatePickerDialog$1;->this$0:Lcom/samsung/android/app/SemDatePickerDialog;

    invoke-static {v0}, Lcom/samsung/android/app/SemDatePickerDialog;->-get0(Lcom/samsung/android/app/SemDatePickerDialog;)Lcom/samsung/android/widget/SemDatePicker;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/widget/SemDatePicker;->isEditTextMode()Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p2, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/SemDatePickerDialog$1;->this$0:Lcom/samsung/android/app/SemDatePickerDialog;

    invoke-static {v0}, Lcom/samsung/android/app/SemDatePickerDialog;->-get0(Lcom/samsung/android/app/SemDatePickerDialog;)Lcom/samsung/android/widget/SemDatePicker;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/android/widget/SemDatePicker;->setEditTextMode(Z)V

    :cond_0
    return-void
.end method
