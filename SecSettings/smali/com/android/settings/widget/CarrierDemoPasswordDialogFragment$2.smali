.class Lcom/android/settings/widget/CarrierDemoPasswordDialogFragment$2;
.super Ljava/lang/Object;
.source "CarrierDemoPasswordDialogFragment.java"

# interfaces
.implements Landroid/text/TextWatcher;


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

    iput-object p1, p0, Lcom/android/settings/widget/CarrierDemoPasswordDialogFragment$2;->this$0:Lcom/android/settings/widget/CarrierDemoPasswordDialogFragment;

    iput-object p2, p0, Lcom/android/settings/widget/CarrierDemoPasswordDialogFragment$2;->val$dialog:Landroid/app/AlertDialog;

    iput-object p3, p0, Lcom/android/settings/widget/CarrierDemoPasswordDialogFragment$2;->val$passwordField:Landroid/widget/EditText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0

    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 3

    iget-object v0, p0, Lcom/android/settings/widget/CarrierDemoPasswordDialogFragment$2;->this$0:Lcom/android/settings/widget/CarrierDemoPasswordDialogFragment;

    iget-object v1, p0, Lcom/android/settings/widget/CarrierDemoPasswordDialogFragment$2;->val$dialog:Landroid/app/AlertDialog;

    iget-object v2, p0, Lcom/android/settings/widget/CarrierDemoPasswordDialogFragment$2;->val$passwordField:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/android/settings/widget/CarrierDemoPasswordDialogFragment;->-wrap0(Lcom/android/settings/widget/CarrierDemoPasswordDialogFragment;Landroid/app/AlertDialog;Ljava/lang/String;)V

    return-void
.end method
