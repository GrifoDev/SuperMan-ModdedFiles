.class public Lcom/android/launcher2/HideAppConfirmDialog;
.super Landroid/app/DialogFragment;
.source "HideAppConfirmDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# static fields
.field private static mBaseItem:Lcom/android/launcher2/BaseItem; = null

.field private static final sFragmentTag:Ljava/lang/String; = "HideAppConfirmDialog"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    return-void
.end method

.method static createAndShow(Lcom/android/launcher2/BaseItem;Landroid/app/FragmentManager;)V
    .locals 2

    invoke-static {p1}, Lcom/android/launcher2/HideAppConfirmDialog;->isActive(Landroid/app/FragmentManager;)Z

    move-result v1

    if-eqz v1, :cond_0

    :goto_0
    return-void

    :cond_0
    sput-object p0, Lcom/android/launcher2/HideAppConfirmDialog;->mBaseItem:Lcom/android/launcher2/BaseItem;

    new-instance v0, Lcom/android/launcher2/HideAppConfirmDialog;

    invoke-direct {v0}, Lcom/android/launcher2/HideAppConfirmDialog;-><init>()V

    const-string v1, "HideAppConfirmDialog"

    invoke-virtual {v0, p1, v1}, Lcom/android/launcher2/HideAppConfirmDialog;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    goto :goto_0
.end method

.method static dismiss(Landroid/app/FragmentTransaction;Landroid/app/FragmentManager;)V
    .locals 2

    const-string v1, "HideAppConfirmDialog"

    invoke-virtual {p1, v1}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Landroid/app/DialogFragment;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/DialogFragment;->dismiss()V

    invoke-virtual {p0, v0}, Landroid/app/FragmentTransaction;->remove(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    :cond_0
    return-void
.end method

.method static isActive(Landroid/app/FragmentManager;)Z
    .locals 1

    const-string v0, "HideAppConfirmDialog"

    invoke-virtual {p0, v0}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 5

    invoke-virtual {p0}, Lcom/android/launcher2/HideAppConfirmDialog;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {}, Lcom/android/launcher2/LauncherFeature;->supportFolderLock()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->enableFolderLock()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {v0}, Lcom/android/launcher2/FolderLock;->getInstance(Landroid/content/Context;)Lcom/android/launcher2/FolderLock;

    move-result-object v1

    :cond_0
    const/4 v2, -0x1

    if-ne p2, v2, :cond_2

    if-eqz v1, :cond_1

    const/16 v2, 0x73

    sget-object v3, Lcom/android/launcher2/HideAppConfirmDialog;->mBaseItem:Lcom/android/launcher2/BaseItem;

    const-string v4, "request_hide"

    invoke-virtual {v1, v2, v3, v4}, Lcom/android/launcher2/FolderLock;->startVerifyActivityForHide(ILcom/android/launcher2/BaseItem;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/launcher2/HideAppConfirmDialog;->dismiss()V

    :cond_1
    :goto_0
    return-void

    :cond_2
    const/4 v2, -0x2

    if-ne p2, v2, :cond_1

    invoke-virtual {p0}, Lcom/android/launcher2/HideAppConfirmDialog;->dismiss()V

    goto :goto_0
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 8

    invoke-virtual {p0}, Lcom/android/launcher2/HideAppConfirmDialog;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f08005e

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    sget-object v7, Lcom/android/launcher2/HideAppConfirmDialog;->mBaseItem:Lcom/android/launcher2/BaseItem;

    invoke-virtual {v7}, Lcom/android/launcher2/BaseItem;->getTitle()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-virtual {v3, v4, v5}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Landroid/app/AlertDialog$Builder;

    invoke-direct {v3, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v4, 0x7f08005f

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const v4, 0x7f08005d

    invoke-virtual {v3, v4, p0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const v4, 0x7f080031

    invoke-virtual {v3, v4, p0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    return-object v1
.end method
