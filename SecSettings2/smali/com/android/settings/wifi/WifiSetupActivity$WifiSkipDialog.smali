.class public Lcom/android/settings/wifi/WifiSetupActivity$WifiSkipDialog;
.super Landroid/app/DialogFragment;
.source "WifiSetupActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/wifi/WifiSetupActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "WifiSkipDialog"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    return-void
.end method

.method public static newInstance(I)Lcom/android/settings/wifi/WifiSetupActivity$WifiSkipDialog;
    .locals 3

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v2, "messageRes"

    invoke-virtual {v0, v2, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    new-instance v1, Lcom/android/settings/wifi/WifiSetupActivity$WifiSkipDialog;

    invoke-direct {v1}, Lcom/android/settings/wifi/WifiSetupActivity$WifiSkipDialog;-><init>()V

    invoke-virtual {v1, v0}, Lcom/android/settings/wifi/WifiSetupActivity$WifiSkipDialog;->setArguments(Landroid/os/Bundle;)V

    return-object v1
.end method


# virtual methods
.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 5

    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSetupActivity$WifiSkipDialog;->getArguments()Landroid/os/Bundle;

    move-result-object v2

    const-string/jumbo v3, "messageRes"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSetupActivity$WifiSkipDialog;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    new-instance v3, Lcom/android/settings/wifi/WifiSetupActivity$WifiSkipDialog$1;

    invoke-direct {v3, p0}, Lcom/android/settings/wifi/WifiSetupActivity$WifiSkipDialog$1;-><init>(Lcom/android/settings/wifi/WifiSetupActivity$WifiSkipDialog;)V

    const v4, 0x7f0b12a6

    invoke-virtual {v2, v4, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    new-instance v3, Lcom/android/settings/wifi/WifiSetupActivity$WifiSkipDialog$2;

    invoke-direct {v3, p0}, Lcom/android/settings/wifi/WifiSetupActivity$WifiSkipDialog$2;-><init>(Lcom/android/settings/wifi/WifiSetupActivity$WifiSkipDialog;)V

    const v4, 0x7f0b12a7

    invoke-virtual {v2, v4, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/SetupWizardUtils;->applyImmersiveFlags(Landroid/app/Dialog;)V

    return-object v0
.end method
