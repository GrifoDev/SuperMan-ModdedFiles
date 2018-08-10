.class public Lcom/android/settings/fingerprint/FingerPrintRenameDialog;
.super Landroid/app/DialogFragment;
.source "FingerPrintRenameDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/fingerprint/FingerPrintRenameDialog$ConfirmationDialogFragmentListener;
    }
.end annotation


# instance fields
.field context:Landroid/content/Context;

.field private listener:Lcom/android/settings/fingerprint/FingerPrintRenameDialog$ConfirmationDialogFragmentListener;

.field private mAlertDialog:Landroid/app/AlertDialog;

.field private mEditText:Lcom/android/settings/fingerprint/FingerPrintRenameEditText;

.field private mFingerPrintIndex:I

.field private mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

.field private mFingerprintName:Ljava/lang/CharSequence;

.field private mOriginalName:Ljava/lang/String;

.field private mUserId:I

.field private mView:Landroid/view/View;

.field private mWarningText:Landroid/widget/TextView;


# direct methods
.method static synthetic -get0(Lcom/android/settings/fingerprint/FingerPrintRenameDialog;)Landroid/app/AlertDialog;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerPrintRenameDialog;->mAlertDialog:Landroid/app/AlertDialog;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/settings/fingerprint/FingerPrintRenameDialog;)Lcom/android/settings/fingerprint/FingerPrintRenameEditText;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerPrintRenameDialog;->mEditText:Lcom/android/settings/fingerprint/FingerPrintRenameEditText;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/settings/fingerprint/FingerPrintRenameDialog;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerPrintRenameDialog;->mOriginalName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get3(Lcom/android/settings/fingerprint/FingerPrintRenameDialog;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerPrintRenameDialog;->mWarningText:Landroid/widget/TextView;

    return-object v0
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/fingerprint/FingerPrintRenameDialog;->mOriginalName:Ljava/lang/String;

    const-string/jumbo v0, "FpstFingerPrintRenameDialog"

    const-string/jumbo v1, "FingerPrintRenameDialog created illegally"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public constructor <init>(ILjava/lang/CharSequence;I)V
    .locals 1

    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/fingerprint/FingerPrintRenameDialog;->mOriginalName:Ljava/lang/String;

    iput p1, p0, Lcom/android/settings/fingerprint/FingerPrintRenameDialog;->mFingerPrintIndex:I

    iput-object p2, p0, Lcom/android/settings/fingerprint/FingerPrintRenameDialog;->mFingerprintName:Ljava/lang/CharSequence;

    iput p3, p0, Lcom/android/settings/fingerprint/FingerPrintRenameDialog;->mUserId:I

    return-void
.end method

.method private initView(Landroid/view/View;)V
    .locals 8

    const/4 v7, 0x1

    const/4 v6, 0x0

    iget-object v3, p0, Lcom/android/settings/fingerprint/FingerPrintRenameDialog;->mFingerprintName:Ljava/lang/CharSequence;

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    const v3, 0x7f120b99

    invoke-virtual {p0, v3}, Lcom/android/settings/fingerprint/FingerPrintRenameDialog;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-array v4, v7, [Ljava/lang/Object;

    const/16 v5, 0x32

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/fingerprint/FingerPrintRenameDialog;->mView:Landroid/view/View;

    const v4, 0x7f0a024b

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/android/settings/fingerprint/FingerPrintRenameEditText;

    iput-object v3, p0, Lcom/android/settings/fingerprint/FingerPrintRenameDialog;->mEditText:Lcom/android/settings/fingerprint/FingerPrintRenameEditText;

    iget-object v3, p0, Lcom/android/settings/fingerprint/FingerPrintRenameDialog;->mEditText:Lcom/android/settings/fingerprint/FingerPrintRenameEditText;

    invoke-virtual {v3, v6}, Lcom/android/settings/fingerprint/FingerPrintRenameEditText;->setTextIsSelectable(Z)V

    iget-object v3, p0, Lcom/android/settings/fingerprint/FingerPrintRenameDialog;->mView:Landroid/view/View;

    const v4, 0x7f0a0511

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/android/settings/fingerprint/FingerPrintRenameDialog;->mWarningText:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/android/settings/fingerprint/FingerPrintRenameDialog;->mWarningText:Landroid/widget/TextView;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerPrintRenameDialog;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f120b7c

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-array v4, v7, [Ljava/lang/Object;

    iget v5, p0, Lcom/android/settings/fingerprint/FingerPrintRenameDialog;->mFingerPrintIndex:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    :cond_0
    iput-object v1, p0, Lcom/android/settings/fingerprint/FingerPrintRenameDialog;->mOriginalName:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/settings/fingerprint/FingerPrintRenameDialog;->mWarningText:Landroid/widget/TextView;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v3, p0, Lcom/android/settings/fingerprint/FingerPrintRenameDialog;->mEditText:Lcom/android/settings/fingerprint/FingerPrintRenameEditText;

    invoke-virtual {v3, v1}, Lcom/android/settings/fingerprint/FingerPrintRenameEditText;->setText(Ljava/lang/CharSequence;)V

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    :try_start_0
    iget-object v3, p0, Lcom/android/settings/fingerprint/FingerPrintRenameDialog;->mEditText:Lcom/android/settings/fingerprint/FingerPrintRenameEditText;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/android/settings/fingerprint/FingerPrintRenameEditText;->setSelection(I)V
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_0
    iget-object v3, p0, Lcom/android/settings/fingerprint/FingerPrintRenameDialog;->mEditText:Lcom/android/settings/fingerprint/FingerPrintRenameEditText;

    invoke-virtual {v3, v7}, Lcom/android/settings/fingerprint/FingerPrintRenameEditText;->setEnabled(Z)V

    iget-object v3, p0, Lcom/android/settings/fingerprint/FingerPrintRenameDialog;->mEditText:Lcom/android/settings/fingerprint/FingerPrintRenameEditText;

    invoke-virtual {v3}, Lcom/android/settings/fingerprint/FingerPrintRenameEditText;->selectAll()V

    iget-object v3, p0, Lcom/android/settings/fingerprint/FingerPrintRenameDialog;->mEditText:Lcom/android/settings/fingerprint/FingerPrintRenameEditText;

    new-instance v4, Lcom/android/settings/fingerprint/FingerPrintRenameDialog$3;

    invoke-direct {v4, p0}, Lcom/android/settings/fingerprint/FingerPrintRenameDialog$3;-><init>(Lcom/android/settings/fingerprint/FingerPrintRenameDialog;)V

    invoke-virtual {v3, v4}, Lcom/android/settings/fingerprint/FingerPrintRenameEditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    invoke-direct {p0}, Lcom/android/settings/fingerprint/FingerPrintRenameDialog;->showInputMethod()V

    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v3, "FpstFingerPrintRenameDialog"

    const-string/jumbo v4, "Caught Exception setSelection"

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private showInputMethod()V
    .locals 4

    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerPrintRenameDialog;->mEditText:Lcom/android/settings/fingerprint/FingerPrintRenameEditText;

    invoke-virtual {v0}, Lcom/android/settings/fingerprint/FingerPrintRenameEditText;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerPrintRenameDialog;->mEditText:Lcom/android/settings/fingerprint/FingerPrintRenameEditText;

    invoke-virtual {v0}, Lcom/android/settings/fingerprint/FingerPrintRenameEditText;->requestFocus()Z

    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerPrintRenameDialog;->mEditText:Lcom/android/settings/fingerprint/FingerPrintRenameEditText;

    new-instance v1, Lcom/android/settings/fingerprint/FingerPrintRenameDialog$4;

    invoke-direct {v1, p0}, Lcom/android/settings/fingerprint/FingerPrintRenameDialog$4;-><init>(Lcom/android/settings/fingerprint/FingerPrintRenameDialog;)V

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/settings/fingerprint/FingerPrintRenameEditText;->postDelayed(Ljava/lang/Runnable;J)Z

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerPrintRenameDialog;->mEditText:Lcom/android/settings/fingerprint/FingerPrintRenameEditText;

    new-instance v1, Lcom/android/settings/fingerprint/FingerPrintRenameDialog$5;

    invoke-direct {v1, p0}, Lcom/android/settings/fingerprint/FingerPrintRenameDialog$5;-><init>(Lcom/android/settings/fingerprint/FingerPrintRenameDialog;)V

    const-wide/16 v2, 0x1

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/settings/fingerprint/FingerPrintRenameEditText;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method

.method private showSoftKeyboard()V
    .locals 4

    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerPrintRenameDialog;->mEditText:Lcom/android/settings/fingerprint/FingerPrintRenameEditText;

    new-instance v1, Lcom/android/settings/fingerprint/FingerPrintRenameDialog$6;

    invoke-direct {v1, p0}, Lcom/android/settings/fingerprint/FingerPrintRenameDialog$6;-><init>(Lcom/android/settings/fingerprint/FingerPrintRenameDialog;)V

    const-wide/16 v2, 0xfa

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/settings/fingerprint/FingerPrintRenameEditText;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method


# virtual methods
.method public cancelRenameDialog()V
    .locals 1

    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerPrintRenameDialog;->mAlertDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerPrintRenameDialog;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->cancel()V

    :cond_0
    return-void
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4

    packed-switch p2, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerPrintRenameDialog;->mEditText:Lcom/android/settings/fingerprint/FingerPrintRenameEditText;

    invoke-virtual {v1}, Lcom/android/settings/fingerprint/FingerPrintRenameEditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    const-string/jumbo v1, ""

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerPrintRenameDialog;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    iget v2, p0, Lcom/android/settings/fingerprint/FingerPrintRenameDialog;->mFingerPrintIndex:I

    iget v3, p0, Lcom/android/settings/fingerprint/FingerPrintRenameDialog;->mUserId:I

    invoke-virtual {v1, v2, v3, v0}, Landroid/hardware/fingerprint/FingerprintManager;->rename(IILjava/lang/String;)V

    :cond_1
    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerPrintRenameDialog;->listener:Lcom/android/settings/fingerprint/FingerPrintRenameDialog$ConfirmationDialogFragmentListener;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerPrintRenameDialog;->listener:Lcom/android/settings/fingerprint/FingerPrintRenameDialog$ConfirmationDialogFragmentListener;

    invoke-interface {v1}, Lcom/android/settings/fingerprint/FingerPrintRenameDialog$ConfirmationDialogFragmentListener;->onPositiveClick()V

    goto :goto_0

    :pswitch_1
    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerPrintRenameDialog;->listener:Lcom/android/settings/fingerprint/FingerPrintRenameDialog$ConfirmationDialogFragmentListener;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerPrintRenameDialog;->listener:Lcom/android/settings/fingerprint/FingerPrintRenameDialog$ConfirmationDialogFragmentListener;

    invoke-interface {v1}, Lcom/android/settings/fingerprint/FingerPrintRenameDialog$ConfirmationDialogFragmentListener;->onNegativeClick()V

    goto :goto_0

    :pswitch_data_0
    .packed-switch -0x2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2

    const-string/jumbo v0, "FpstFingerPrintRenameDialog"

    const-string/jumbo v1, "onConfigurationChanged"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    invoke-direct {p0}, Lcom/android/settings/fingerprint/FingerPrintRenameDialog;->showInputMethod()V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerPrintRenameDialog;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/fingerprint/FingerPrintRenameDialog;->context:Landroid/content/Context;

    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 4

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerPrintRenameDialog;->mFingerprintName:Ljava/lang/CharSequence;

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerPrintRenameDialog;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string/jumbo v1, "FpstFingerPrintRenameDialog"

    const v2, 0x7f12037a

    invoke-static {v0, v2, v1}, Lcom/android/settings/Utils;->isNotAvailableBiometricsWithDexAndMultiWindow(Landroid/app/Activity;ILjava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/settings/Utils;->isTablet()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "FpstFingerPrintRenameDialog"

    const-string/jumbo v1, "onCreateDialog can\'t make dialog"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const-string/jumbo v0, "FpstFingerPrintRenameDialog"

    const-string/jumbo v1, "onCreateDialog illegalCreated"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerPrintRenameDialog;->dismiss()V

    return-object v3

    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerPrintRenameDialog;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0d011e

    invoke-virtual {v0, v1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/fingerprint/FingerPrintRenameDialog;->mView:Landroid/view/View;

    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerPrintRenameDialog;->context:Landroid/content/Context;

    const-string/jumbo v1, "fingerprint"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/fingerprint/FingerprintManager;

    iput-object v0, p0, Lcom/android/settings/fingerprint/FingerPrintRenameDialog;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerPrintRenameDialog;->mView:Landroid/view/View;

    invoke-direct {p0, v0}, Lcom/android/settings/fingerprint/FingerPrintRenameDialog;->initView(Landroid/view/View;)V

    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerPrintRenameDialog;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerPrintRenameDialog;->mView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f120bb2

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f120bb4

    invoke-virtual {v0, v1, p0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const/high16 v1, 0x1040000

    invoke-virtual {v0, v1, p0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/fingerprint/FingerPrintRenameDialog;->mAlertDialog:Landroid/app/AlertDialog;

    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerPrintRenameDialog;->mEditText:Lcom/android/settings/fingerprint/FingerPrintRenameEditText;

    new-instance v1, Lcom/android/settings/fingerprint/FingerPrintRenameDialog$1;

    invoke-direct {v1, p0}, Lcom/android/settings/fingerprint/FingerPrintRenameDialog$1;-><init>(Lcom/android/settings/fingerprint/FingerPrintRenameDialog;)V

    invoke-virtual {v0, v1}, Lcom/android/settings/fingerprint/FingerPrintRenameEditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerPrintRenameDialog;->mEditText:Lcom/android/settings/fingerprint/FingerPrintRenameEditText;

    const/4 v1, 0x1

    new-array v1, v1, [Landroid/text/InputFilter;

    new-instance v2, Lcom/android/settings/fingerprint/FingerPrintRenameDialog$2;

    const/16 v3, 0x32

    invoke-direct {v2, p0, v3}, Lcom/android/settings/fingerprint/FingerPrintRenameDialog$2;-><init>(Lcom/android/settings/fingerprint/FingerPrintRenameDialog;I)V

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-virtual {v0, v1}, Lcom/android/settings/fingerprint/FingerPrintRenameEditText;->setFilters([Landroid/text/InputFilter;)V

    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerPrintRenameDialog;->mAlertDialog:Landroid/app/AlertDialog;

    return-object v0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    invoke-super {p0, p1, p2, p3}, Landroid/app/DialogFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public onDestroyView()V
    .locals 3

    const-string/jumbo v1, "FpstFingerPrintRenameDialog"

    const-string/jumbo v2, "onDestroyView"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerPrintRenameDialog;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-string/jumbo v2, "input_method"

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerPrintRenameDialog;->mEditText:Lcom/android/settings/fingerprint/FingerPrintRenameEditText;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerPrintRenameDialog;->mEditText:Lcom/android/settings/fingerprint/FingerPrintRenameEditText;

    invoke-virtual {v1}, Lcom/android/settings/fingerprint/FingerPrintRenameEditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    :cond_0
    invoke-super {p0}, Landroid/app/DialogFragment;->onDestroyView()V

    return-void
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 2

    const-string/jumbo v0, "FpstFingerPrintRenameDialog"

    const-string/jumbo v1, "onDismiss"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onDismiss(Landroid/content/DialogInterface;)V

    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerPrintRenameDialog;->listener:Lcom/android/settings/fingerprint/FingerPrintRenameDialog$ConfirmationDialogFragmentListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerPrintRenameDialog;->listener:Lcom/android/settings/fingerprint/FingerPrintRenameDialog$ConfirmationDialogFragmentListener;

    invoke-interface {v0}, Lcom/android/settings/fingerprint/FingerPrintRenameDialog$ConfirmationDialogFragmentListener;->onDismiss()V

    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 2

    const-string/jumbo v0, "FpstFingerPrintRenameDialog"

    const-string/jumbo v1, "onResume"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0}, Landroid/app/DialogFragment;->onResume()V

    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerPrintRenameDialog;->listener:Lcom/android/settings/fingerprint/FingerPrintRenameDialog$ConfirmationDialogFragmentListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerPrintRenameDialog;->listener:Lcom/android/settings/fingerprint/FingerPrintRenameDialog$ConfirmationDialogFragmentListener;

    invoke-interface {v0}, Lcom/android/settings/fingerprint/FingerPrintRenameDialog$ConfirmationDialogFragmentListener;->onResumeDialog()V

    :cond_0
    invoke-direct {p0}, Lcom/android/settings/fingerprint/FingerPrintRenameDialog;->showInputMethod()V

    invoke-direct {p0}, Lcom/android/settings/fingerprint/FingerPrintRenameDialog;->showSoftKeyboard()V

    return-void
.end method

.method public onStart()V
    .locals 3

    const/4 v2, -0x1

    invoke-super {p0}, Landroid/app/DialogFragment;->onStart()V

    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerPrintRenameDialog;->mAlertDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerPrintRenameDialog;->mEditText:Lcom/android/settings/fingerprint/FingerPrintRenameEditText;

    invoke-virtual {v0}, Lcom/android/settings/fingerprint/FingerPrintRenameEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerPrintRenameDialog;->mOriginalName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerPrintRenameDialog;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerPrintRenameDialog;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_0
.end method

.method public setConfirmationDialogFragmentListener(Lcom/android/settings/fingerprint/FingerPrintRenameDialog$ConfirmationDialogFragmentListener;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/fingerprint/FingerPrintRenameDialog;->listener:Lcom/android/settings/fingerprint/FingerPrintRenameDialog$ConfirmationDialogFragmentListener;

    return-void
.end method
