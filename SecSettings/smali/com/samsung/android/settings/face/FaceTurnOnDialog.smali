.class public Lcom/samsung/android/settings/face/FaceTurnOnDialog;
.super Landroid/app/DialogFragment;
.source "FaceTurnOnDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/settings/face/FaceTurnOnDialog$FaceTurnOnDialogFragmentListener;
    }
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private mListener:Lcom/samsung/android/settings/face/FaceTurnOnDialog$FaceTurnOnDialogFragmentListener;

.field private mUserId:I


# direct methods
.method static synthetic -get0(Lcom/samsung/android/settings/face/FaceTurnOnDialog;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/face/FaceTurnOnDialog;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get1(Lcom/samsung/android/settings/face/FaceTurnOnDialog;)Lcom/samsung/android/settings/face/FaceTurnOnDialog$FaceTurnOnDialogFragmentListener;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/face/FaceTurnOnDialog;->mListener:Lcom/samsung/android/settings/face/FaceTurnOnDialog$FaceTurnOnDialogFragmentListener;

    return-object v0
.end method

.method static synthetic -get2(Lcom/samsung/android/settings/face/FaceTurnOnDialog;)I
    .locals 1

    iget v0, p0, Lcom/samsung/android/settings/face/FaceTurnOnDialog;->mUserId:I

    return v0
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 2

    const-string/jumbo v0, "FpstFaceTurnOnDialog"

    const-string/jumbo v1, "onCancel!!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/settings/face/FaceTurnOnDialog;->mListener:Lcom/samsung/android/settings/face/FaceTurnOnDialog$FaceTurnOnDialogFragmentListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/face/FaceTurnOnDialog;->mListener:Lcom/samsung/android/settings/face/FaceTurnOnDialog$FaceTurnOnDialogFragmentListener;

    invoke-interface {v0}, Lcom/samsung/android/settings/face/FaceTurnOnDialog$FaceTurnOnDialogFragmentListener;->turnOffFaceLock()V

    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/face/FaceTurnOnDialog;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/face/FaceTurnOnDialog;->mContext:Landroid/content/Context;

    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 5

    const-string/jumbo v2, "FpstFaceTurnOnDialog"

    const-string/jumbo v3, "onCreateDialog"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Lcom/android/internal/widget/LockPatternUtils;

    iget-object v2, p0, Lcom/samsung/android/settings/face/FaceTurnOnDialog;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    new-instance v2, Landroid/app/AlertDialog$Builder;

    iget-object v3, p0, Lcom/samsung/android/settings/face/FaceTurnOnDialog;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {p0}, Lcom/samsung/android/settings/face/FaceTurnOnDialog;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f120ab2

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog;->setTitle(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/face/FaceTurnOnDialog;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f120ab1

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/face/FaceTurnOnDialog;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f12038b

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/samsung/android/settings/face/FaceTurnOnDialog$1;

    invoke-direct {v3, p0, v1}, Lcom/samsung/android/settings/face/FaceTurnOnDialog$1;-><init>(Lcom/samsung/android/settings/face/FaceTurnOnDialog;Lcom/android/internal/widget/LockPatternUtils;)V

    const/4 v4, -0x1

    invoke-virtual {v0, v4, v2, v3}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/face/FaceTurnOnDialog;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f12038a

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/samsung/android/settings/face/FaceTurnOnDialog$2;

    invoke-direct {v3, p0}, Lcom/samsung/android/settings/face/FaceTurnOnDialog$2;-><init>(Lcom/samsung/android/settings/face/FaceTurnOnDialog;)V

    const/4 v4, -0x2

    invoke-virtual {v0, v4, v2, v3}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    return-object v0
.end method

.method public onDestroyView()V
    .locals 2

    const-string/jumbo v0, "FpstFaceTurnOnDialog"

    const-string/jumbo v1, "onDestroyView"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0}, Landroid/app/DialogFragment;->onDestroyView()V

    return-void
.end method
