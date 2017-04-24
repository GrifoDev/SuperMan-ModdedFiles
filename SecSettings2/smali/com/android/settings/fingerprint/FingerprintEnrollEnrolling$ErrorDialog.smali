.class public Lcom/android/settings/fingerprint/FingerprintEnrollEnrolling$ErrorDialog;
.super Landroid/app/DialogFragment;
.source "FingerprintEnrollEnrolling.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/fingerprint/FingerprintEnrollEnrolling;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ErrorDialog"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    return-void
.end method

.method static newInstance(Ljava/lang/CharSequence;I)Lcom/android/settings/fingerprint/FingerprintEnrollEnrolling$ErrorDialog;
    .locals 3

    new-instance v1, Lcom/android/settings/fingerprint/FingerprintEnrollEnrolling$ErrorDialog;

    invoke-direct {v1}, Lcom/android/settings/fingerprint/FingerprintEnrollEnrolling$ErrorDialog;-><init>()V

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v2, "error_msg"

    invoke-virtual {v0, v2, p0}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    const-string/jumbo v2, "error_id"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    invoke-virtual {v1, v0}, Lcom/android/settings/fingerprint/FingerprintEnrollEnrolling$ErrorDialog;->setArguments(Landroid/os/Bundle;)V

    return-object v1
.end method


# virtual methods
.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 8

    const/4 v7, 0x0

    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintEnrollEnrolling$ErrorDialog;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-direct {v0, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintEnrollEnrolling$ErrorDialog;->getArguments()Landroid/os/Bundle;

    move-result-object v4

    const-string/jumbo v5, "error_msg"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintEnrollEnrolling$ErrorDialog;->getArguments()Landroid/os/Bundle;

    move-result-object v4

    const-string/jumbo v5, "error_id"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    const v4, 0x7f0b1160

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4, v7}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    new-instance v5, Lcom/android/settings/fingerprint/FingerprintEnrollEnrolling$ErrorDialog$1;

    invoke-direct {v5, p0, v2}, Lcom/android/settings/fingerprint/FingerprintEnrollEnrolling$ErrorDialog$1;-><init>(Lcom/android/settings/fingerprint/FingerprintEnrollEnrolling$ErrorDialog;I)V

    const v6, 0x7f0b1150

    invoke-virtual {v4, v6, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    invoke-virtual {v1, v7}, Landroid/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    return-object v1
.end method
