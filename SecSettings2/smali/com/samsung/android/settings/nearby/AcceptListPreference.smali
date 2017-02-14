.class public Lcom/samsung/android/settings/nearby/AcceptListPreference;
.super Landroid/preference/MultiSelectListPreference;
.source "AcceptListPreference.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/settings/nearby/AcceptListPreference$1;
    }
.end annotation


# static fields
.field private static isEmptyPopup:Z


# instance fields
.field private context:Landroid/content/Context;

.field private mDialog:Landroid/app/AlertDialog;

.field mEnabler:Lcom/samsung/android/settings/nearby/NearbyEnabler;

.field private mHandler:Landroid/os/Handler;


# direct methods
.method static synthetic -set0(Z)Z
    .locals 0

    sput-boolean p0, Lcom/samsung/android/settings/nearby/AcceptListPreference;->isEmptyPopup:Z

    return p0
.end method

.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-boolean v0, Lcom/samsung/android/settings/nearby/AcceptListPreference;->isEmptyPopup:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2}, Landroid/preference/MultiSelectListPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-object v0, p0, Lcom/samsung/android/settings/nearby/AcceptListPreference;->context:Landroid/content/Context;

    iput-object v0, p0, Lcom/samsung/android/settings/nearby/AcceptListPreference;->mDialog:Landroid/app/AlertDialog;

    iput-object v0, p0, Lcom/samsung/android/settings/nearby/AcceptListPreference;->mEnabler:Lcom/samsung/android/settings/nearby/NearbyEnabler;

    new-instance v0, Lcom/samsung/android/settings/nearby/AcceptListPreference$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/nearby/AcceptListPreference$1;-><init>(Lcom/samsung/android/settings/nearby/AcceptListPreference;)V

    iput-object v0, p0, Lcom/samsung/android/settings/nearby/AcceptListPreference;->mHandler:Landroid/os/Handler;

    iput-object p1, p0, Lcom/samsung/android/settings/nearby/AcceptListPreference;->context:Landroid/content/Context;

    const v0, 0x7f0b0371

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/nearby/AcceptListPreference;->setPositiveButtonText(I)V

    const v0, 0x7f0b0418

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/nearby/AcceptListPreference;->setNegativeButtonText(I)V

    return-void
.end method

.method private getAcceptEntry()[Ljava/lang/String;
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/samsung/android/settings/nearby/AcceptListPreference;->mEnabler:Lcom/samsung/android/settings/nearby/NearbyEnabler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/nearby/AcceptListPreference;->mEnabler:Lcom/samsung/android/settings/nearby/NearbyEnabler;

    invoke-virtual {v0}, Lcom/samsung/android/settings/nearby/NearbyEnabler;->getAcceptEntry()[Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    return-object v1
.end method

.method private getAcceptEntryValue()[Ljava/lang/String;
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/samsung/android/settings/nearby/AcceptListPreference;->mEnabler:Lcom/samsung/android/settings/nearby/NearbyEnabler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/nearby/AcceptListPreference;->mEnabler:Lcom/samsung/android/settings/nearby/NearbyEnabler;

    invoke-virtual {v0}, Lcom/samsung/android/settings/nearby/NearbyEnabler;->getAcceptEntryValue()[Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    return-object v1
.end method


# virtual methods
.method protected onPrepareDialogBuilder(Landroid/app/AlertDialog$Builder;)V
    .locals 3

    const-string/jumbo v0, "AcceptListPreference"

    const-string/jumbo v1, "onPrepareDialogBuilder"

    const-string/jumbo v2, ""

    invoke-static {v0, v1, v2}, Lcom/samsung/android/settings/nearby/DLog;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-super {p0, p1}, Landroid/preference/MultiSelectListPreference;->onPrepareDialogBuilder(Landroid/app/AlertDialog$Builder;)V

    return-void
.end method

.method public setEnabler(Lcom/samsung/android/settings/nearby/NearbyEnabler;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/nearby/AcceptListPreference;->mEnabler:Lcom/samsung/android/settings/nearby/NearbyEnabler;

    return-void
.end method

.method protected showDialog(Landroid/os/Bundle;)V
    .locals 8

    const v7, 0x7f0b037d

    const/4 v6, 0x1

    const-string/jumbo v3, "AcceptListPreference"

    const-string/jumbo v4, "showDialog"

    const-string/jumbo v5, ""

    invoke-static {v3, v4, v5}, Lcom/samsung/android/settings/nearby/DLog;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/samsung/android/settings/nearby/AcceptListPreference;->getAcceptEntry()[Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0}, Lcom/samsung/android/settings/nearby/AcceptListPreference;->getAcceptEntryValue()[Ljava/lang/String;

    move-result-object v2

    if-eqz v1, :cond_0

    if-nez v2, :cond_1

    :cond_0
    sget-boolean v3, Lcom/samsung/android/settings/nearby/AcceptListPreference;->isEmptyPopup:Z

    if-eqz v3, :cond_2

    const-string/jumbo v3, "AcceptListPreference"

    const-string/jumbo v4, "showDialog"

    const-string/jumbo v5, "isEmptyPopup is shown"

    invoke-static {v3, v4, v5}, Lcom/samsung/android/settings/nearby/DLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_1
    array-length v3, v1

    if-lt v3, v6, :cond_0

    array-length v3, v2

    if-lt v3, v6, :cond_0

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/nearby/AcceptListPreference;->setEntries([Ljava/lang/CharSequence;)V

    invoke-virtual {p0, v2}, Lcom/samsung/android/settings/nearby/AcceptListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    invoke-super {p0, p1}, Landroid/preference/MultiSelectListPreference;->showDialog(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/nearby/AcceptListPreference;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    check-cast v0, Landroid/app/AlertDialog;

    iput-object v0, p0, Lcom/samsung/android/settings/nearby/AcceptListPreference;->mDialog:Landroid/app/AlertDialog;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Landroid/app/AlertDialog;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    array-length v4, v1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "/10)"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog;->setTitle(Ljava/lang/CharSequence;)V

    :goto_0
    return-void

    :cond_2
    new-instance v3, Landroid/app/AlertDialog$Builder;

    iget-object v4, p0, Lcom/samsung/android/settings/nearby/AcceptListPreference;->context:Landroid/content/Context;

    invoke-direct {v3, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iget-object v4, p0, Lcom/samsung/android/settings/nearby/AcceptListPreference;->context:Landroid/content/Context;

    invoke-virtual {v4, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/android/settings/nearby/AcceptListPreference;->context:Landroid/content/Context;

    const v5, 0x7f0b0381

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    new-instance v4, Lcom/samsung/android/settings/nearby/AcceptListPreference$2;

    invoke-direct {v4, p0}, Lcom/samsung/android/settings/nearby/AcceptListPreference$2;-><init>(Lcom/samsung/android/settings/nearby/AcceptListPreference;)V

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    new-instance v4, Lcom/samsung/android/settings/nearby/AcceptListPreference$3;

    invoke-direct {v4, p0}, Lcom/samsung/android/settings/nearby/AcceptListPreference$3;-><init>(Lcom/samsung/android/settings/nearby/AcceptListPreference;)V

    const v5, 0x7f0b0421

    invoke-virtual {v3, v5, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v3

    iput-object v3, p0, Lcom/samsung/android/settings/nearby/AcceptListPreference;->mDialog:Landroid/app/AlertDialog;

    sput-boolean v6, Lcom/samsung/android/settings/nearby/AcceptListPreference;->isEmptyPopup:Z

    goto :goto_0
.end method

.method public updateDialog()Z
    .locals 4

    const-string/jumbo v0, "AcceptListPreference"

    const-string/jumbo v1, "updateDialog"

    const-string/jumbo v2, ""

    invoke-static {v0, v1, v2}, Lcom/samsung/android/settings/nearby/DLog;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/settings/nearby/AcceptListPreference;->mDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/nearby/AcceptListPreference;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "AcceptListPreference"

    const-string/jumbo v1, "updateDialog"

    const-string/jumbo v2, "refresh popup"

    invoke-static {v0, v1, v2}, Lcom/samsung/android/settings/nearby/DLog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/settings/nearby/AcceptListPreference;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    iget-object v0, p0, Lcom/samsung/android/settings/nearby/AcceptListPreference;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x32

    const/16 v1, 0xbb9

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method
