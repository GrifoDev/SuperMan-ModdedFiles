.class public Lcom/android/settings/KnoxSecuritySettings$UnificationConfirmationDialog;
.super Landroid/app/DialogFragment;
.source "KnoxSecuritySettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/KnoxSecuritySettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "UnificationConfirmationDialog"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    return-void
.end method

.method public static newIntance(Z)Lcom/android/settings/KnoxSecuritySettings$UnificationConfirmationDialog;
    .locals 3

    new-instance v1, Lcom/android/settings/KnoxSecuritySettings$UnificationConfirmationDialog;

    invoke-direct {v1}, Lcom/android/settings/KnoxSecuritySettings$UnificationConfirmationDialog;-><init>()V

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v2, "compliant"

    invoke-virtual {v0, v2, p0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    invoke-virtual {v1, v0}, Lcom/android/settings/KnoxSecuritySettings$UnificationConfirmationDialog;->setArguments(Landroid/os/Bundle;)V

    return-object v1
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onCancel(Landroid/content/DialogInterface;)V

    invoke-virtual {p0}, Lcom/android/settings/KnoxSecuritySettings$UnificationConfirmationDialog;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 7

    invoke-virtual {p0}, Lcom/android/settings/KnoxSecuritySettings$UnificationConfirmationDialog;->getActivity()Landroid/app/Activity;

    move-result-object v1

    check-cast v1, Lcom/android/settings/KnoxSecuritySettings;

    invoke-virtual {p0}, Lcom/android/settings/KnoxSecuritySettings$UnificationConfirmationDialog;->getArguments()Landroid/os/Bundle;

    move-result-object v3

    const-string/jumbo v4, "compliant"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    const v3, 0x7f121020

    invoke-virtual {p0, v3}, Lcom/android/settings/KnoxSecuritySettings$UnificationConfirmationDialog;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/KnoxSecuritySettings$UnificationConfirmationDialog;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v4, 0x7f120f10

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    if-eqz v0, :cond_0

    const v3, 0x7f120f0c

    invoke-virtual {p0, v3}, Lcom/android/settings/KnoxSecuritySettings$UnificationConfirmationDialog;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v2, v5, v6

    const/4 v6, 0x1

    aput-object v2, v5, v6

    invoke-static {v3, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    :goto_0
    invoke-virtual {v4, v3}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    if-eqz v0, :cond_1

    const v3, 0x7f120f0d

    :goto_1
    new-instance v5, Lcom/android/settings/KnoxSecuritySettings$UnificationConfirmationDialog$1;

    invoke-direct {v5, p0, v0, v1}, Lcom/android/settings/KnoxSecuritySettings$UnificationConfirmationDialog$1;-><init>(Lcom/android/settings/KnoxSecuritySettings$UnificationConfirmationDialog;ZLcom/android/settings/KnoxSecuritySettings;)V

    invoke-virtual {v4, v3, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    new-instance v4, Lcom/android/settings/KnoxSecuritySettings$UnificationConfirmationDialog$2;

    invoke-direct {v4, p0}, Lcom/android/settings/KnoxSecuritySettings$UnificationConfirmationDialog$2;-><init>(Lcom/android/settings/KnoxSecuritySettings$UnificationConfirmationDialog;)V

    const v5, 0x7f120552

    invoke-virtual {v3, v5, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v3

    return-object v3

    :cond_0
    const v3, 0x7f120f0e

    invoke-virtual {p0, v3}, Lcom/android/settings/KnoxSecuritySettings$UnificationConfirmationDialog;->getString(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    :cond_1
    const v3, 0x7f120f0f

    goto :goto_1
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onDismiss(Landroid/content/DialogInterface;)V

    return-void
.end method

.method public show(Landroid/app/FragmentManager;Ljava/lang/String;)V
    .locals 1

    invoke-virtual {p1, p2}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-super {p0, p1, p2}, Landroid/app/DialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    :cond_0
    return-void
.end method
