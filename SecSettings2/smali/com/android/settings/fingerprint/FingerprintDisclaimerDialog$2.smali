.class Lcom/android/settings/fingerprint/FingerprintDisclaimerDialog$2;
.super Ljava/lang/Object;
.source "FingerprintDisclaimerDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/fingerprint/FingerprintDisclaimerDialog;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/fingerprint/FingerprintDisclaimerDialog;


# direct methods
.method constructor <init>(Lcom/android/settings/fingerprint/FingerprintDisclaimerDialog;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/fingerprint/FingerprintDisclaimerDialog$2;->this$0:Lcom/android/settings/fingerprint/FingerprintDisclaimerDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintDisclaimerDialog$2;->this$0:Lcom/android/settings/fingerprint/FingerprintDisclaimerDialog;

    const-string/jumbo v1, "fingerprint_disclaimer_noti"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/android/settings/fingerprint/FingerprintDisclaimerDialog;->setPreferences(Ljava/lang/String;Z)V

    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintDisclaimerDialog$2;->this$0:Lcom/android/settings/fingerprint/FingerprintDisclaimerDialog;

    invoke-static {v0}, Lcom/android/settings/fingerprint/FingerprintDisclaimerDialog;->-get0(Lcom/android/settings/fingerprint/FingerprintDisclaimerDialog;)Lcom/android/settings/fingerprint/FingerprintDisclaimerDialog$FingerprintDisclaimerDialogListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/settings/fingerprint/FingerprintDisclaimerDialog$FingerprintDisclaimerDialogListener;->startDisclaimerFromRegister()V

    return-void
.end method
