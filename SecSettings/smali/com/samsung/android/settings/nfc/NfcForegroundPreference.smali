.class public Lcom/samsung/android/settings/nfc/NfcForegroundPreference;
.super Lcom/android/settings/SecDropDownPreference;
.source "NfcForegroundPreference.java"


# instance fields
.field private final mPaymentBackend:Lcom/samsung/android/settings/nfc/PaymentBackend;

.field private mSpinner:Landroid/widget/Spinner;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/samsung/android/settings/nfc/PaymentBackend;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/SecDropDownPreference;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/samsung/android/settings/nfc/NfcForegroundPreference;->mPaymentBackend:Lcom/samsung/android/settings/nfc/PaymentBackend;

    invoke-virtual {p0}, Lcom/samsung/android/settings/nfc/NfcForegroundPreference;->refresh()V

    return-void
.end method


# virtual methods
.method public onBindViewHolder(Landroid/support/v7/preference/PreferenceViewHolder;)V
    .locals 4

    const/4 v3, 0x1

    invoke-super {p0, p1}, Lcom/android/settings/SecDropDownPreference;->onBindViewHolder(Landroid/support/v7/preference/PreferenceViewHolder;)V

    invoke-static {}, Lcom/android/settings/Utils;->isTablet()Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x7f0a0816

    invoke-virtual {p1, v0}, Landroid/support/v7/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    iput-object v0, p0, Lcom/samsung/android/settings/nfc/NfcForegroundPreference;->mSpinner:Landroid/widget/Spinner;

    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcForegroundPreference;->mSpinner:Landroid/widget/Spinner;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcForegroundPreference;->mSpinner:Landroid/widget/Spinner;

    const/high16 v1, 0x41c00000    # 24.0f

    invoke-virtual {p0}, Lcom/samsung/android/settings/nfc/NfcForegroundPreference;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    invoke-static {v3, v1, v2}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setDropDownHorizontalOffset(I)V

    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcForegroundPreference;->mSpinner:Landroid/widget/Spinner;

    const/high16 v1, -0x3ea00000    # -14.0f

    invoke-virtual {p0}, Lcom/samsung/android/settings/nfc/NfcForegroundPreference;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    invoke-static {v3, v1, v2}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setDropDownVerticalOffset(I)V

    :cond_0
    return-void
.end method

.method protected onClick()V
    .locals 3

    invoke-super {p0}, Lcom/android/settings/SecDropDownPreference;->onClick()V

    invoke-virtual {p0}, Lcom/samsung/android/settings/nfc/NfcForegroundPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0}, Lcom/samsung/android/settings/nfc/NfcForegroundPreference;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b04c0

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    invoke-static {v0, v1}, Lcom/android/settings/Utils;->insertFlowLog(Landroid/content/Context;I)V

    return-void
.end method

.method protected persistString(Ljava/lang/String;)Z
    .locals 7

    const/4 v2, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/samsung/android/settings/nfc/NfcForegroundPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/samsung/android/settings/nfc/NfcForegroundPreference;->setSummary(Ljava/lang/CharSequence;)V

    invoke-virtual {p0, v2}, Lcom/samsung/android/settings/nfc/NfcForegroundPreference;->semSetSummaryColorToColorPrimaryDark(Z)V

    iget-object v3, p0, Lcom/samsung/android/settings/nfc/NfcForegroundPreference;->mPaymentBackend:Lcom/samsung/android/settings/nfc/PaymentBackend;

    invoke-virtual {v3}, Lcom/samsung/android/settings/nfc/PaymentBackend;->isForegroundMode()Z

    move-result v0

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    if-eqz v3, :cond_2

    move v3, v2

    :goto_0
    if-eq v0, v3, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/settings/nfc/NfcForegroundPreference;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {p0}, Lcom/samsung/android/settings/nfc/NfcForegroundPreference;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0b04c3

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v4

    invoke-virtual {p0}, Lcom/samsung/android/settings/nfc/NfcForegroundPreference;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0b04c1

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v5

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-static {v3, v4, v5, v6}, Lcom/android/settings/Utils;->insertEventwithDetailLog(Landroid/content/Context;IILjava/lang/Object;)V

    :cond_0
    iget-object v3, p0, Lcom/samsung/android/settings/nfc/NfcForegroundPreference;->mPaymentBackend:Lcom/samsung/android/settings/nfc/PaymentBackend;

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    if-eqz v4, :cond_1

    move v1, v2

    :cond_1
    invoke-virtual {v3, v1}, Lcom/samsung/android/settings/nfc/PaymentBackend;->setForegroundMode(Z)V

    return v2

    :cond_2
    move v3, v1

    goto :goto_0
.end method

.method refresh()V
    .locals 10

    const/4 v9, 0x2

    const/4 v8, 0x1

    const/4 v7, 0x0

    iget-object v4, p0, Lcom/samsung/android/settings/nfc/NfcForegroundPreference;->mPaymentBackend:Lcom/samsung/android/settings/nfc/PaymentBackend;

    invoke-virtual {v4}, Lcom/samsung/android/settings/nfc/PaymentBackend;->getDefaultApp()Lcom/samsung/android/settings/nfc/PaymentBackend$PaymentAppInfo;

    move-result-object v0

    iget-object v4, p0, Lcom/samsung/android/settings/nfc/NfcForegroundPreference;->mPaymentBackend:Lcom/samsung/android/settings/nfc/PaymentBackend;

    invoke-virtual {v4}, Lcom/samsung/android/settings/nfc/PaymentBackend;->isForegroundMode()Z

    move-result v3

    invoke-virtual {p0, v7}, Lcom/samsung/android/settings/nfc/NfcForegroundPreference;->setPersistent(Z)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/nfc/NfcForegroundPreference;->getContext()Landroid/content/Context;

    move-result-object v4

    const v5, 0x7f1212ab

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/samsung/android/settings/nfc/NfcForegroundPreference;->setTitle(Ljava/lang/CharSequence;)V

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/settings/nfc/NfcForegroundPreference;->getContext()Landroid/content/Context;

    move-result-object v4

    const v5, 0x7f1212a6

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/samsung/android/settings/nfc/NfcForegroundPreference;->getContext()Landroid/content/Context;

    move-result-object v4

    const v5, 0x7f1212a4

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    :goto_0
    new-array v4, v9, [Ljava/lang/CharSequence;

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v7

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v8

    invoke-virtual {p0, v4}, Lcom/samsung/android/settings/nfc/NfcForegroundPreference;->setEntries([Ljava/lang/CharSequence;)V

    new-array v4, v9, [Ljava/lang/CharSequence;

    const-string/jumbo v5, "1"

    aput-object v5, v4, v7

    const-string/jumbo v5, "0"

    aput-object v5, v4, v8

    invoke-virtual {p0, v4}, Lcom/samsung/android/settings/nfc/NfcForegroundPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    if-eqz v3, :cond_1

    const-string/jumbo v4, "1"

    invoke-virtual {p0, v4}, Lcom/samsung/android/settings/nfc/NfcForegroundPreference;->setValue(Ljava/lang/String;)V

    :goto_1
    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/settings/nfc/NfcForegroundPreference;->getContext()Landroid/content/Context;

    move-result-object v4

    new-array v5, v8, [Ljava/lang/Object;

    iget-object v6, v0, Lcom/samsung/android/settings/nfc/PaymentBackend$PaymentAppInfo;->label:Ljava/lang/CharSequence;

    aput-object v6, v5, v7

    const v6, 0x7f1212a5

    invoke-virtual {v4, v6, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/samsung/android/settings/nfc/NfcForegroundPreference;->getContext()Landroid/content/Context;

    move-result-object v4

    new-array v5, v8, [Ljava/lang/Object;

    iget-object v6, v0, Lcom/samsung/android/settings/nfc/PaymentBackend$PaymentAppInfo;->label:Ljava/lang/CharSequence;

    aput-object v6, v5, v7

    const v6, 0x7f1212a3

    invoke-virtual {v4, v6, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_1
    const-string/jumbo v4, "0"

    invoke-virtual {p0, v4}, Lcom/samsung/android/settings/nfc/NfcForegroundPreference;->setValue(Ljava/lang/String;)V

    goto :goto_1
.end method
