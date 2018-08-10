.class Landroid/app/TimePickerDialog$1;
.super Ljava/lang/Object;
.source "TimePickerDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/app/TimePickerDialog;->show()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/app/TimePickerDialog;


# direct methods
.method constructor <init>(Landroid/app/TimePickerDialog;)V
    .locals 0

    iput-object p1, p0, Landroid/app/TimePickerDialog$1;->this$0:Landroid/app/TimePickerDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    iget-object v0, p0, Landroid/app/TimePickerDialog$1;->this$0:Landroid/app/TimePickerDialog;

    invoke-static {v0}, Landroid/app/TimePickerDialog;->-get0(Landroid/app/TimePickerDialog;)Landroid/widget/TimePicker;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TimePicker;->validateInput()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/app/TimePickerDialog$1;->this$0:Landroid/app/TimePickerDialog;

    iget-object v1, p0, Landroid/app/TimePickerDialog$1;->this$0:Landroid/app/TimePickerDialog;

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Landroid/app/TimePickerDialog;->onClick(Landroid/content/DialogInterface;I)V

    iget-object v0, p0, Landroid/app/TimePickerDialog$1;->this$0:Landroid/app/TimePickerDialog;

    invoke-virtual {v0}, Landroid/app/TimePickerDialog;->dismiss()V

    :cond_0
    return-void
.end method
