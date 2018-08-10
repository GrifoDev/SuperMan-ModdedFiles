.class Lcom/samsung/android/app/SemDatePickerDialog$2;
.super Ljava/lang/Object;
.source "SemDatePickerDialog.java"

# interfaces
.implements Lcom/samsung/android/widget/SemDatePicker$ValidationCallback;


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

    iput-object p1, p0, Lcom/samsung/android/app/SemDatePickerDialog$2;->this$0:Lcom/samsung/android/app/SemDatePickerDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onValidationChanged(Z)V
    .locals 3

    iget-object v1, p0, Lcom/samsung/android/app/SemDatePickerDialog$2;->this$0:Lcom/samsung/android/app/SemDatePickerDialog;

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Lcom/samsung/android/app/SemDatePickerDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setEnabled(Z)V

    :cond_0
    return-void
.end method
