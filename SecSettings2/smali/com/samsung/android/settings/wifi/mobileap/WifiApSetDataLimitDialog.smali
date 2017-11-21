.class public Lcom/samsung/android/settings/wifi/mobileap/WifiApSetDataLimitDialog;
.super Landroid/app/AlertDialog;
.source "WifiApSetDataLimitDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/settings/wifi/mobileap/WifiApSetDataLimitDialog$1;
    }
.end annotation


# instance fields
.field dataWatcher:Landroid/text/TextWatcher;

.field private mApDataLimit:Lcom/samsung/android/settings/wifi/mobileap/WifiApDataLimit;

.field private mButtonOk:Landroid/widget/Button;

.field private mContext:Landroid/content/Context;

.field private mEtDataLimit:Landroid/widget/EditText;

.field private mListener:Landroid/content/DialogInterface$OnClickListener;

.field private mTvDataLength:Landroid/widget/TextView;


# direct methods
.method static synthetic -get0(Lcom/samsung/android/settings/wifi/mobileap/WifiApSetDataLimitDialog;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSetDataLimitDialog;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get1(Lcom/samsung/android/settings/wifi/mobileap/WifiApSetDataLimitDialog;)Landroid/widget/EditText;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSetDataLimitDialog;->mEtDataLimit:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic -get2(Lcom/samsung/android/settings/wifi/mobileap/WifiApSetDataLimitDialog;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSetDataLimitDialog;->mTvDataLength:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic -wrap0(Lcom/samsung/android/settings/wifi/mobileap/WifiApSetDataLimitDialog;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSetDataLimitDialog;->validate()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/samsung/android/settings/wifi/mobileap/WifiApDataLimit;Landroid/content/DialogInterface$OnClickListener;)V
    .locals 1

    invoke-direct {p0, p1}, Landroid/app/AlertDialog;-><init>(Landroid/content/Context;)V

    new-instance v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSetDataLimitDialog$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSetDataLimitDialog$1;-><init>(Lcom/samsung/android/settings/wifi/mobileap/WifiApSetDataLimitDialog;)V

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSetDataLimitDialog;->dataWatcher:Landroid/text/TextWatcher;

    iput-object p2, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSetDataLimitDialog;->mApDataLimit:Lcom/samsung/android/settings/wifi/mobileap/WifiApDataLimit;

    iput-object p3, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSetDataLimitDialog;->mListener:Landroid/content/DialogInterface$OnClickListener;

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSetDataLimitDialog;->mContext:Landroid/content/Context;

    return-void
.end method

.method private validate()V
    .locals 2

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSetDataLimitDialog;->mEtDataLimit:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->length()I

    move-result v1

    if-lez v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSetDataLimitDialog;->mEtDataLimit:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSetDataLimitDialog;->mButtonOk:Landroid/widget/Button;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSetDataLimitDialog;->mButtonOk:Landroid/widget/Button;

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setEnabled(Z)V

    :cond_1
    return-void
.end method


# virtual methods
.method public getInputLimitData()Ljava/lang/String;
    .locals 2

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSetDataLimitDialog;->mEtDataLimit:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->length()I

    move-result v1

    if-lez v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSetDataLimitDialog;->mEtDataLimit:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSetDataLimitDialog;->mEtDataLimit:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5

    const/4 v4, -0x1

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSetDataLimitDialog;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f040335

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSetDataLimitDialog;->setView(Landroid/view/View;)V

    const v1, 0x7f0b17c4

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSetDataLimitDialog;->setTitle(I)V

    const v1, 0x7f11077c

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    iput-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSetDataLimitDialog;->mEtDataLimit:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSetDataLimitDialog;->mEtDataLimit:Landroid/widget/EditText;

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSetDataLimitDialog;->dataWatcher:Landroid/text/TextWatcher;

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    const v1, 0x7f11077e

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSetDataLimitDialog;->mTvDataLength:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSetDataLimitDialog;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0b1540

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSetDataLimitDialog;->mListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {p0, v4, v1, v2}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSetDataLimitDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSetDataLimitDialog;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0b12a9

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSetDataLimitDialog;->mListener:Landroid/content/DialogInterface$OnClickListener;

    const/4 v3, -0x3

    invoke-virtual {p0, v3, v1, v2}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSetDataLimitDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSetDataLimitDialog;->mApDataLimit:Lcom/samsung/android/settings/wifi/mobileap/WifiApDataLimit;

    invoke-virtual {v1}, Lcom/samsung/android/settings/wifi/mobileap/WifiApDataLimit;->isApDataLimited()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSetDataLimitDialog;->mEtDataLimit:Landroid/widget/EditText;

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSetDataLimitDialog;->mApDataLimit:Lcom/samsung/android/settings/wifi/mobileap/WifiApDataLimit;

    invoke-virtual {v2}, Lcom/samsung/android/settings/wifi/mobileap/WifiApDataLimit;->getApDataLimitValue()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSetDataLimitDialog;->mEtDataLimit:Landroid/widget/EditText;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setEnabled(Z)V

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSetDataLimitDialog;->mEtDataLimit:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->selectAll()V

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSetDataLimitDialog;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0b0dc8

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSetDataLimitDialog;->mListener:Landroid/content/DialogInterface$OnClickListener;

    const/4 v3, -0x2

    invoke-virtual {p0, v3, v1, v2}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSetDataLimitDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    :cond_0
    invoke-super {p0, p1}, Landroid/app/AlertDialog;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0, v4}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSetDataLimitDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSetDataLimitDialog;->mButtonOk:Landroid/widget/Button;

    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSetDataLimitDialog;->validate()V

    return-void
.end method
