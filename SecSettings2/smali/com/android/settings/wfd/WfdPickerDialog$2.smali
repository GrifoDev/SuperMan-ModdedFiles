.class Lcom/android/settings/wfd/WfdPickerDialog$2;
.super Ljava/lang/Object;
.source "WfdPickerDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


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

    iput-object p1, p0, Lcom/android/settings/wfd/WfdPickerDialog$2;->this$0:Lcom/android/settings/wfd/WfdPickerDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 2

    const-string/jumbo v0, "WfdPickerDialog"

    const-string/jumbo v1, "onCancel"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/settings/wfd/WfdPickerDialog$2;->this$0:Lcom/android/settings/wfd/WfdPickerDialog;

    invoke-static {v0}, Lcom/android/settings/wfd/WfdPickerDialog;->-get1(Lcom/android/settings/wfd/WfdPickerDialog;)Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    iget-object v0, p0, Lcom/android/settings/wfd/WfdPickerDialog$2;->this$0:Lcom/android/settings/wfd/WfdPickerDialog;

    invoke-virtual {v0}, Lcom/android/settings/wfd/WfdPickerDialog;->finish()V

    return-void
.end method
