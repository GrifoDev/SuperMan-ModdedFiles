.class public Lcom/samsung/android/settings/networklock/NetworkUnlockVZW;
.super Landroid/app/Activity;
.source "NetworkUnlockVZW.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/settings/networklock/NetworkUnlockVZW$1;
    }
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;

.field private mKeyboardView:Lcom/android/internal/widget/PasswordEntryKeyboardView;

.field private mPasswordEntry:Landroid/widget/TextView;

.field private mPhone:Lcom/android/internal/telephony/Phone;


# direct methods
.method static synthetic -get0(Lcom/samsung/android/settings/networklock/NetworkUnlockVZW;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/networklock/NetworkUnlockVZW;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get1(Lcom/samsung/android/settings/networklock/NetworkUnlockVZW;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/networklock/NetworkUnlockVZW;->mPasswordEntry:Landroid/widget/TextView;

    return-object v0
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    new-instance v0, Lcom/samsung/android/settings/networklock/NetworkUnlockVZW$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/networklock/NetworkUnlockVZW$1;-><init>(Lcom/samsung/android/settings/networklock/NetworkUnlockVZW;)V

    iput-object v0, p0, Lcom/samsung/android/settings/networklock/NetworkUnlockVZW;->mHandler:Landroid/os/Handler;

    return-void
.end method


# virtual methods
.method public handleNext()V
    .locals 5

    iget-object v1, p0, Lcom/samsung/android/settings/networklock/NetworkUnlockVZW;->mPasswordEntry:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lcom/samsung/android/settings/networklock/NetworkUnlockVZW;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/settings/networklock/NetworkUnlockVZW;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v2}, Lcom/android/internal/telephony/Phone;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/IccCard;->getPersoSubState()Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;->ordinal()I

    move-result v2

    iget-object v3, p0, Lcom/samsung/android/settings/networklock/NetworkUnlockVZW;->mHandler:Landroid/os/Handler;

    const/16 v4, 0x64

    invoke-static {v3, v4}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v3

    invoke-interface {v1, v0, v2, v3}, Lcom/android/internal/telephony/IccCard;->supplyNetworkDepersonalization(Ljava/lang/String;ILandroid/os/Message;)V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 7

    const/4 v6, 0x1

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    iput-object p0, p0, Lcom/samsung/android/settings/networklock/NetworkUnlockVZW;->mContext:Landroid/content/Context;

    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v4

    iput-object v4, p0, Lcom/samsung/android/settings/networklock/NetworkUnlockVZW;->mPhone:Lcom/android/internal/telephony/Phone;

    const v4, 0x7f04006d

    invoke-virtual {p0, v4}, Lcom/samsung/android/settings/networklock/NetworkUnlockVZW;->setContentView(I)V

    const v4, 0x7f1101a8

    invoke-virtual {p0, v4}, Lcom/samsung/android/settings/networklock/NetworkUnlockVZW;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    new-instance v4, Lcom/samsung/android/settings/networklock/NetworkUnlockVZW$2;

    invoke-direct {v4, p0}, Lcom/samsung/android/settings/networklock/NetworkUnlockVZW$2;-><init>(Lcom/samsung/android/settings/networklock/NetworkUnlockVZW;)V

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v4, 0x7f1101a9

    invoke-virtual {p0, v4}, Lcom/samsung/android/settings/networklock/NetworkUnlockVZW;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    new-instance v4, Lcom/samsung/android/settings/networklock/NetworkUnlockVZW$3;

    invoke-direct {v4, p0}, Lcom/samsung/android/settings/networklock/NetworkUnlockVZW$3;-><init>(Lcom/samsung/android/settings/networklock/NetworkUnlockVZW;)V

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v4, 0x7f1101aa

    invoke-virtual {p0, v4}, Lcom/samsung/android/settings/networklock/NetworkUnlockVZW;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/android/internal/widget/PasswordEntryKeyboardView;

    iput-object v4, p0, Lcom/samsung/android/settings/networklock/NetworkUnlockVZW;->mKeyboardView:Lcom/android/internal/widget/PasswordEntryKeyboardView;

    const v4, 0x7f1101a6

    invoke-virtual {p0, v4}, Lcom/samsung/android/settings/networklock/NetworkUnlockVZW;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/samsung/android/settings/networklock/NetworkUnlockVZW;->mPasswordEntry:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/samsung/android/settings/networklock/NetworkUnlockVZW;->mPasswordEntry:Landroid/widget/TextView;

    new-instance v5, Lcom/samsung/android/settings/networklock/NetworkUnlockVZW$4;

    invoke-direct {v5, p0}, Lcom/samsung/android/settings/networklock/NetworkUnlockVZW$4;-><init>(Lcom/samsung/android/settings/networklock/NetworkUnlockVZW;)V

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    iget-object v4, p0, Lcom/samsung/android/settings/networklock/NetworkUnlockVZW;->mPasswordEntry:Landroid/widget/TextView;

    const/high16 v5, 0x2000000

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setImeOptions(I)V

    new-instance v2, Lcom/android/internal/widget/PasswordEntryKeyboardHelper;

    iget-object v4, p0, Lcom/samsung/android/settings/networklock/NetworkUnlockVZW;->mKeyboardView:Lcom/android/internal/widget/PasswordEntryKeyboardView;

    iget-object v5, p0, Lcom/samsung/android/settings/networklock/NetworkUnlockVZW;->mPasswordEntry:Landroid/widget/TextView;

    invoke-direct {v2, p0, v4, v5}, Lcom/android/internal/widget/PasswordEntryKeyboardHelper;-><init>(Landroid/content/Context;Landroid/inputmethodservice/KeyboardView;Landroid/view/View;)V

    invoke-virtual {v2, v6}, Lcom/android/internal/widget/PasswordEntryKeyboardHelper;->setKeyboardMode(I)V

    const v4, 0x7f1101a5

    invoke-virtual {p0, v4}, Lcom/samsung/android/settings/networklock/NetworkUnlockVZW;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const v4, 0x7f0b01b7

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(I)V

    iget-object v4, p0, Lcom/samsung/android/settings/networklock/NetworkUnlockVZW;->mPasswordEntry:Landroid/widget/TextView;

    const/16 v5, 0x12

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setInputType(I)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/networklock/NetworkUnlockVZW;->getActionBar()Landroid/app/ActionBar;

    move-result-object v4

    invoke-virtual {v4, v6}, Landroid/app/ActionBar;->setHomeButtonEnabled(Z)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/networklock/NetworkUnlockVZW;->getActionBar()Landroid/app/ActionBar;

    move-result-object v4

    invoke-virtual {v4, v6}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    return-void
.end method

.method public onNavigateUp()Z
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/settings/networklock/NetworkUnlockVZW;->finish()V

    const/4 v0, 0x1

    return v0
.end method

.method public onResume()V
    .locals 1

    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    iget-object v0, p0, Lcom/samsung/android/settings/networklock/NetworkUnlockVZW;->mPasswordEntry:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->requestFocus()Z

    return-void
.end method
