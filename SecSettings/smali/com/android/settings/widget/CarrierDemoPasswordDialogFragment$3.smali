.class Lcom/android/settings/widget/CarrierDemoPasswordDialogFragment$3;
.super Ljava/lang/Object;
.source "CarrierDemoPasswordDialogFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnShowListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/widget/CarrierDemoPasswordDialogFragment;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/widget/CarrierDemoPasswordDialogFragment;

.field final synthetic val$dialog:Landroid/app/AlertDialog;

.field final synthetic val$passwordField:Landroid/widget/EditText;


# direct methods
.method constructor <init>(Lcom/android/settings/widget/CarrierDemoPasswordDialogFragment;Landroid/app/AlertDialog;Landroid/widget/EditText;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/widget/CarrierDemoPasswordDialogFragment$3;->this$0:Lcom/android/settings/widget/CarrierDemoPasswordDialogFragment;

    iput-object p2, p0, Lcom/android/settings/widget/CarrierDemoPasswordDialogFragment$3;->val$dialog:Landroid/app/AlertDialog;

    iput-object p3, p0, Lcom/android/settings/widget/CarrierDemoPasswordDialogFragment$3;->val$passwordField:Landroid/widget/EditText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onShow(Landroid/content/DialogInterface;)V
    .locals 4

    iget-object v1, p0, Lcom/android/settings/widget/CarrierDemoPasswordDialogFragment$3;->this$0:Lcom/android/settings/widget/CarrierDemoPasswordDialogFragment;

    iget-object v2, p0, Lcom/android/settings/widget/CarrierDemoPasswordDialogFragment$3;->val$dialog:Landroid/app/AlertDialog;

    iget-object v3, p0, Lcom/android/settings/widget/CarrierDemoPasswordDialogFragment$3;->val$passwordField:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-interface {v3}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/android/settings/widget/CarrierDemoPasswordDialogFragment;->-wrap0(Lcom/android/settings/widget/CarrierDemoPasswordDialogFragment;Landroid/app/AlertDialog;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/settings/widget/CarrierDemoPasswordDialogFragment$3;->val$passwordField:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->requestFocus()Z

    iget-object v1, p0, Lcom/android/settings/widget/CarrierDemoPasswordDialogFragment$3;->this$0:Lcom/android/settings/widget/CarrierDemoPasswordDialogFragment;

    invoke-virtual {v1}, Lcom/android/settings/widget/CarrierDemoPasswordDialogFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string/jumbo v2, "input_method"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    iget-object v1, p0, Lcom/android/settings/widget/CarrierDemoPasswordDialogFragment$3;->val$passwordField:Landroid/widget/EditText;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    return-void
.end method
