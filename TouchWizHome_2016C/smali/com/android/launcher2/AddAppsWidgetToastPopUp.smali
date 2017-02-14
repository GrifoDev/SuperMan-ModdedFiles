.class public Lcom/android/launcher2/AddAppsWidgetToastPopUp;
.super Landroid/app/DialogFragment;
.source "AddAppsWidgetToastPopUp.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# static fields
.field private static final sFragmentTag:Ljava/lang/String; = "AddAppsWidgetToastPopUp"


# instance fields
.field private mView:Landroid/view/View;

.field private toastRepeat:Landroid/widget/CheckBox;


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    iput-object v0, p0, Lcom/android/launcher2/AddAppsWidgetToastPopUp;->mView:Landroid/view/View;

    iput-object v0, p0, Lcom/android/launcher2/AddAppsWidgetToastPopUp;->toastRepeat:Landroid/widget/CheckBox;

    return-void
.end method

.method static dismiss(Landroid/app/FragmentManager;)V
    .locals 2

    const-string v1, "AddAppsWidgetToastPopUp"

    invoke-virtual {p0, v1}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Landroid/app/DialogFragment;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/DialogFragment;->dismissAllowingStateLoss()V

    :cond_0
    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    const/4 v1, -0x1

    if-ne p2, v1, :cond_1

    invoke-virtual {p0}, Lcom/android/launcher2/AddAppsWidgetToastPopUp;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/Launcher;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/launcher2/AddAppsWidgetToastPopUp;->mView:Landroid/view/View;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/launcher2/AddAppsWidgetToastPopUp;->mView:Landroid/view/View;

    const v2, 0x7f100016

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/launcher2/Launcher;->saveToastPopup(Ljava/lang/Boolean;)V

    :cond_0
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    :cond_1
    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 7

    invoke-virtual {p0}, Lcom/android/launcher2/AddAppsWidgetToastPopUp;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/launcher2/AddAppsWidgetToastPopUp;->getActivity()Landroid/app/Activity;

    move-result-object v3

    check-cast v3, Lcom/android/launcher2/Launcher;

    const v5, 0x7f030003

    const/4 v6, 0x0

    invoke-static {v1, v5, v6}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    iput-object v4, p0, Lcom/android/launcher2/AddAppsWidgetToastPopUp;->mView:Landroid/view/View;

    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v5, 0x7f080008

    invoke-virtual {p0, v5}, Lcom/android/launcher2/AddAppsWidgetToastPopUp;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    const v5, 0x7f080033

    invoke-virtual {v0, v5, p0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    const v5, 0x7f100016

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/CheckBox;

    iput-object v5, p0, Lcom/android/launcher2/AddAppsWidgetToastPopUp;->toastRepeat:Landroid/widget/CheckBox;

    iget-object v5, p0, Lcom/android/launcher2/AddAppsWidgetToastPopUp;->toastRepeat:Landroid/widget/CheckBox;

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/android/launcher2/AddAppsWidgetToastPopUp;->toastRepeat:Landroid/widget/CheckBox;

    invoke-virtual {v3}, Lcom/android/launcher2/Launcher;->isDialogChecked()Z

    move-result v6

    invoke-virtual {v5, v6}, Landroid/widget/CheckBox;->setChecked(Z)V

    :cond_0
    return-object v2
.end method
