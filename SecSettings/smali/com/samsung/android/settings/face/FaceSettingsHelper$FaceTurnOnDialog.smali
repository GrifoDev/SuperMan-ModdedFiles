.class public Lcom/samsung/android/settings/face/FaceSettingsHelper$FaceTurnOnDialog;
.super Landroid/app/DialogFragment;
.source "FaceSettingsHelper.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/face/FaceSettingsHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "FaceTurnOnDialog"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/settings/face/FaceSettingsHelper$FaceTurnOnDialog$FaceTurnOnDialogFragmentListener;
    }
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private mIrisLock:Z

.field private mListener:Lcom/samsung/android/settings/face/FaceSettingsHelper$FaceTurnOnDialog$FaceTurnOnDialogFragmentListener;

.field private mNeedRegistration:Z

.field private mSmartScanLock:Z

.field private mUserId:I


# direct methods
.method static synthetic -get0(Lcom/samsung/android/settings/face/FaceSettingsHelper$FaceTurnOnDialog;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/face/FaceSettingsHelper$FaceTurnOnDialog;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get1(Lcom/samsung/android/settings/face/FaceSettingsHelper$FaceTurnOnDialog;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/settings/face/FaceSettingsHelper$FaceTurnOnDialog;->mIrisLock:Z

    return v0
.end method

.method static synthetic -get2(Lcom/samsung/android/settings/face/FaceSettingsHelper$FaceTurnOnDialog;)Lcom/samsung/android/settings/face/FaceSettingsHelper$FaceTurnOnDialog$FaceTurnOnDialogFragmentListener;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/face/FaceSettingsHelper$FaceTurnOnDialog;->mListener:Lcom/samsung/android/settings/face/FaceSettingsHelper$FaceTurnOnDialog$FaceTurnOnDialogFragmentListener;

    return-object v0
.end method

.method static synthetic -get3(Lcom/samsung/android/settings/face/FaceSettingsHelper$FaceTurnOnDialog;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/settings/face/FaceSettingsHelper$FaceTurnOnDialog;->mNeedRegistration:Z

    return v0
.end method

.method static synthetic -get4(Lcom/samsung/android/settings/face/FaceSettingsHelper$FaceTurnOnDialog;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/settings/face/FaceSettingsHelper$FaceTurnOnDialog;->mSmartScanLock:Z

    return v0
.end method

.method static synthetic -get5(Lcom/samsung/android/settings/face/FaceSettingsHelper$FaceTurnOnDialog;)I
    .locals 1

    iget v0, p0, Lcom/samsung/android/settings/face/FaceSettingsHelper$FaceTurnOnDialog;->mUserId:I

    return v0
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    iput-boolean v0, p0, Lcom/samsung/android/settings/face/FaceSettingsHelper$FaceTurnOnDialog;->mNeedRegistration:Z

    iput-boolean v0, p0, Lcom/samsung/android/settings/face/FaceSettingsHelper$FaceTurnOnDialog;->mIrisLock:Z

    iput-boolean v0, p0, Lcom/samsung/android/settings/face/FaceSettingsHelper$FaceTurnOnDialog;->mSmartScanLock:Z

    return-void
.end method

.method public constructor <init>(IZ)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    iput-boolean v0, p0, Lcom/samsung/android/settings/face/FaceSettingsHelper$FaceTurnOnDialog;->mNeedRegistration:Z

    iput-boolean v0, p0, Lcom/samsung/android/settings/face/FaceSettingsHelper$FaceTurnOnDialog;->mIrisLock:Z

    iput-boolean v0, p0, Lcom/samsung/android/settings/face/FaceSettingsHelper$FaceTurnOnDialog;->mSmartScanLock:Z

    iput p1, p0, Lcom/samsung/android/settings/face/FaceSettingsHelper$FaceTurnOnDialog;->mUserId:I

    iput-boolean p2, p0, Lcom/samsung/android/settings/face/FaceSettingsHelper$FaceTurnOnDialog;->mNeedRegistration:Z

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 2

    const-string/jumbo v0, "FpstFaceTurnOnDialog"

    const-string/jumbo v1, "onCancel!!"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/settings/face/FaceSettingsHelper$FaceTurnOnDialog;->mListener:Lcom/samsung/android/settings/face/FaceSettingsHelper$FaceTurnOnDialog$FaceTurnOnDialogFragmentListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/face/FaceSettingsHelper$FaceTurnOnDialog;->mListener:Lcom/samsung/android/settings/face/FaceSettingsHelper$FaceTurnOnDialog$FaceTurnOnDialogFragmentListener;

    invoke-interface {v0}, Lcom/samsung/android/settings/face/FaceSettingsHelper$FaceTurnOnDialog$FaceTurnOnDialogFragmentListener;->turnOffFaceLock()V

    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/face/FaceSettingsHelper$FaceTurnOnDialog;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/face/FaceSettingsHelper$FaceTurnOnDialog;->mContext:Landroid/content/Context;

    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 5

    const-string/jumbo v2, "FpstFaceTurnOnDialog"

    const-string/jumbo v3, "onCreateDialog"

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Lcom/android/internal/widget/LockPatternUtils;

    iget-object v2, p0, Lcom/samsung/android/settings/face/FaceSettingsHelper$FaceTurnOnDialog;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    new-instance v2, Landroid/app/AlertDialog$Builder;

    iget-object v3, p0, Lcom/samsung/android/settings/face/FaceSettingsHelper$FaceTurnOnDialog;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iget-object v2, p0, Lcom/samsung/android/settings/face/FaceSettingsHelper$FaceTurnOnDialog;->mContext:Landroid/content/Context;

    iget v3, p0, Lcom/samsung/android/settings/face/FaceSettingsHelper$FaceTurnOnDialog;->mUserId:I

    invoke-static {v2, v1, v3}, Lcom/samsung/android/settings/face/FaceSettingsHelper;->getIrisUnlockEnalbed(Landroid/content/Context;Lcom/android/internal/widget/LockPatternUtils;I)Z

    move-result v2

    iput-boolean v2, p0, Lcom/samsung/android/settings/face/FaceSettingsHelper$FaceTurnOnDialog;->mIrisLock:Z

    iget-boolean v2, p0, Lcom/samsung/android/settings/face/FaceSettingsHelper$FaceTurnOnDialog;->mIrisLock:Z

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/settings/face/FaceSettingsHelper$FaceTurnOnDialog;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f12039e

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog;->setTitle(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/face/FaceSettingsHelper$FaceTurnOnDialog;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f12039c

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    :cond_0
    invoke-static {}, Lcom/android/settings/Utils;->isSupportIntelligentBiometrics()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/samsung/android/settings/face/FaceSettingsHelper$FaceTurnOnDialog;->mContext:Landroid/content/Context;

    iget v3, p0, Lcom/samsung/android/settings/face/FaceSettingsHelper$FaceTurnOnDialog;->mUserId:I

    invoke-static {v2, v1, v3}, Lcom/samsung/android/settings/face/FaceSettingsHelper;->getSmartScanUnlockEnalbed(Landroid/content/Context;Lcom/android/internal/widget/LockPatternUtils;I)Z

    move-result v2

    iput-boolean v2, p0, Lcom/samsung/android/settings/face/FaceSettingsHelper$FaceTurnOnDialog;->mSmartScanLock:Z

    iget-boolean v2, p0, Lcom/samsung/android/settings/face/FaceSettingsHelper$FaceTurnOnDialog;->mSmartScanLock:Z

    if-eqz v2, :cond_1

    invoke-virtual {p0}, Lcom/samsung/android/settings/face/FaceSettingsHelper$FaceTurnOnDialog;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f1203a1

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog;->setTitle(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/face/FaceSettingsHelper$FaceTurnOnDialog;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f12039f

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    :cond_1
    invoke-virtual {p0}, Lcom/samsung/android/settings/face/FaceSettingsHelper$FaceTurnOnDialog;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f1205fd

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/samsung/android/settings/face/FaceSettingsHelper$FaceTurnOnDialog$1;

    invoke-direct {v3, p0, v1}, Lcom/samsung/android/settings/face/FaceSettingsHelper$FaceTurnOnDialog$1;-><init>(Lcom/samsung/android/settings/face/FaceSettingsHelper$FaceTurnOnDialog;Lcom/android/internal/widget/LockPatternUtils;)V

    const/4 v4, -0x1

    invoke-virtual {v0, v4, v2, v3}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/face/FaceSettingsHelper$FaceTurnOnDialog;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f120552

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/samsung/android/settings/face/FaceSettingsHelper$FaceTurnOnDialog$2;

    invoke-direct {v3, p0}, Lcom/samsung/android/settings/face/FaceSettingsHelper$FaceTurnOnDialog$2;-><init>(Lcom/samsung/android/settings/face/FaceSettingsHelper$FaceTurnOnDialog;)V

    const/4 v4, -0x2

    invoke-virtual {v0, v4, v2, v3}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    return-object v0
.end method

.method public onDestroyView()V
    .locals 2

    const-string/jumbo v0, "FpstFaceTurnOnDialog"

    const-string/jumbo v1, "onDestroyView"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0}, Landroid/app/DialogFragment;->onDestroyView()V

    return-void
.end method

.method public setTurnOnDialogFragmentListener(Lcom/samsung/android/settings/face/FaceSettingsHelper$FaceTurnOnDialog$FaceTurnOnDialogFragmentListener;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/face/FaceSettingsHelper$FaceTurnOnDialog;->mListener:Lcom/samsung/android/settings/face/FaceSettingsHelper$FaceTurnOnDialog$FaceTurnOnDialogFragmentListener;

    return-void
.end method
