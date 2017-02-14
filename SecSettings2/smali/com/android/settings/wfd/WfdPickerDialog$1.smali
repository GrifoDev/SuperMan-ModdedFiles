.class Lcom/android/settings/wfd/WfdPickerDialog$1;
.super Ljava/lang/Object;
.source "WfdPickerDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/wfd/WfdPickerDialog;->createWfdPickerDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/wfd/WfdPickerDialog;


# direct methods
.method constructor <init>(Lcom/android/settings/wfd/WfdPickerDialog;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/wfd/WfdPickerDialog$1;->this$0:Lcom/android/settings/wfd/WfdPickerDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    iget-object v0, p0, Lcom/android/settings/wfd/WfdPickerDialog$1;->this$0:Lcom/android/settings/wfd/WfdPickerDialog;

    invoke-static {v0}, Lcom/android/settings/wfd/WfdPickerDialog;->-get2(Lcom/android/settings/wfd/WfdPickerDialog;)Landroid/content/Context;

    move-result-object v1

    iget-object v0, p0, Lcom/android/settings/wfd/WfdPickerDialog$1;->this$0:Lcom/android/settings/wfd/WfdPickerDialog;

    invoke-static {v0}, Lcom/android/settings/wfd/WfdPickerDialog;->-get0(Lcom/android/settings/wfd/WfdPickerDialog;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/wfd/WfdPickerDialog$1;->this$0:Lcom/android/settings/wfd/WfdPickerDialog;

    invoke-static {v0}, Lcom/android/settings/wfd/WfdPickerDialog;->-get2(Lcom/android/settings/wfd/WfdPickerDialog;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f100301

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    :goto_0
    const/16 v2, 0x1f3f

    invoke-static {v1, v2, v0}, Lcom/android/settings/Utils;->insertEventLog(Landroid/content/Context;II)V

    iget-object v0, p0, Lcom/android/settings/wfd/WfdPickerDialog$1;->this$0:Lcom/android/settings/wfd/WfdPickerDialog;

    invoke-static {v0}, Lcom/android/settings/wfd/WfdPickerDialog;->-get1(Lcom/android/settings/wfd/WfdPickerDialog;)Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    iget-object v0, p0, Lcom/android/settings/wfd/WfdPickerDialog$1;->this$0:Lcom/android/settings/wfd/WfdPickerDialog;

    invoke-virtual {v0}, Lcom/android/settings/wfd/WfdPickerDialog;->finish()V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/settings/wfd/WfdPickerDialog$1;->this$0:Lcom/android/settings/wfd/WfdPickerDialog;

    invoke-static {v0}, Lcom/android/settings/wfd/WfdPickerDialog;->-get2(Lcom/android/settings/wfd/WfdPickerDialog;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f100304

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    goto :goto_0
.end method
