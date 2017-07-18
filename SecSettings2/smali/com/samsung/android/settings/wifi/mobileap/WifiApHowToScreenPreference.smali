.class public Lcom/samsung/android/settings/wifi/mobileap/WifiApHowToScreenPreference;
.super Landroid/preference/Preference;
.source "WifiApHowToScreenPreference.java"


# instance fields
.field private mHiddenSsid:Z

.field private mPreSharedKey:Ljava/lang/String;

.field private mShouldShowSummary:Z

.field private mSsid:Ljava/lang/String;

.field private mText_color:Ljava/lang/String;

.field private mWpaString:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0, p1}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApHowToScreenPreference;->mText_color:Ljava/lang/String;

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApHowToScreenPreference;->mSsid:Ljava/lang/String;

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApHowToScreenPreference;->mPreSharedKey:Ljava/lang/String;

    iput-boolean v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApHowToScreenPreference;->mHiddenSsid:Z

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApHowToScreenPreference;->mWpaString:Ljava/lang/String;

    iput-boolean v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApHowToScreenPreference;->mShouldShowSummary:Z

    const v0, 0x7f04032e

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApHowToScreenPreference;->setLayoutResource(I)V

    return-void
.end method


# virtual methods
.method public onBindView(Landroid/view/View;)V
    .locals 11

    invoke-super {p0, p1}, Landroid/preference/Preference;->onBindView(Landroid/view/View;)V

    const v6, 0x7f11076d

    invoke-virtual {p1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const v6, 0x7f110770

    invoke-virtual {p1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    const v6, 0x7f110773

    invoke-virtual {p1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    const v6, 0x7f110776

    invoke-virtual {p1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    const v6, 0x7f110774

    invoke-virtual {p1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    const/4 v6, 0x4

    invoke-virtual {v0, v6}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v6, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApHowToScreenPreference;->mPreSharedKey:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_4

    iget-boolean v6, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApHowToScreenPreference;->mHiddenSsid:Z

    if-eqz v6, :cond_1

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApHowToScreenPreference;->getContext()Landroid/content/Context;

    move-result-object v6

    const v7, 0x7f0b0dee

    invoke-static {v6, v7}, Lcom/samsung/android/settings/WifiApUtils;->getString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApHowToScreenPreference;->getContext()Landroid/content/Context;

    move-result-object v6

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    iget-object v8, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApHowToScreenPreference;->mText_color:Ljava/lang/String;

    const/4 v9, 0x0

    aput-object v8, v7, v9

    iget-object v8, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApHowToScreenPreference;->mSsid:Ljava/lang/String;

    invoke-static {v8}, Landroid/text/Html;->escapeHtml(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x1

    aput-object v8, v7, v9

    const v8, 0x7f0b0df1

    invoke-virtual {v6, v8, v7}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v6

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApHowToScreenPreference;->getContext()Landroid/content/Context;

    move-result-object v6

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    iget-object v8, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApHowToScreenPreference;->mText_color:Ljava/lang/String;

    const/4 v9, 0x0

    aput-object v8, v7, v9

    iget-object v8, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApHowToScreenPreference;->mSsid:Ljava/lang/String;

    invoke-static {v8}, Landroid/text/Html;->escapeHtml(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x1

    aput-object v8, v7, v9

    const v8, 0x7f0b0df4

    invoke-virtual {v6, v8, v7}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const-string/jumbo v6, "TMO"

    sget-object v7, Lcom/android/settings/Utils;->CONFIGOPBRANDINGFORMOBILEAP:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApHowToScreenPreference;->getContext()Landroid/content/Context;

    move-result-object v6

    const v7, 0x7f0b0df6

    invoke-static {v6, v7}, Lcom/samsung/android/settings/WifiApUtils;->getString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 v6, 0x0

    invoke-virtual {v0, v6}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :cond_0
    :goto_0
    const v6, 0x7f1101d3

    invoke-virtual {p1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iget-boolean v6, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApHowToScreenPreference;->mShouldShowSummary:Z

    if-eqz v6, :cond_9

    const v6, 0x7f0b0d6d

    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setText(I)V

    const/4 v6, 0x0

    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_1
    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApHowToScreenPreference;->getContext()Landroid/content/Context;

    move-result-object v6

    const v7, 0x7f0b0dc9

    invoke-static {v6, v7}, Lcom/samsung/android/settings/WifiApUtils;->getString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const-string/jumbo v6, "SPRINT"

    sget-object v7, Lcom/android/settings/Utils;->CONFIGOPBRANDINGFORMOBILEAP:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApHowToScreenPreference;->getContext()Landroid/content/Context;

    move-result-object v6

    const v7, 0x7f0b0dcd

    invoke-static {v6, v7}, Lcom/samsung/android/settings/WifiApUtils;->getString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_2
    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApHowToScreenPreference;->getContext()Landroid/content/Context;

    move-result-object v6

    const v7, 0x7f0b0dd1

    invoke-static {v7}, Lcom/samsung/android/settings/WifiApUtils;->getStringID(I)I

    move-result v7

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    iget-object v9, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApHowToScreenPreference;->mText_color:Ljava/lang/String;

    const/4 v10, 0x0

    aput-object v9, v8, v10

    iget-object v9, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApHowToScreenPreference;->mSsid:Ljava/lang/String;

    invoke-static {v9}, Landroid/text/Html;->escapeHtml(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x1

    aput-object v9, v8, v10

    invoke-virtual {v6, v7, v8}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const-string/jumbo v6, "VZW"

    sget-object v7, Lcom/android/settings/Utils;->CONFIGOPBRANDINGFORMOBILEAP:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2

    const-string/jumbo v6, "TMO"

    sget-object v7, Lcom/android/settings/Utils;->CONFIGOPBRANDINGFORMOBILEAP:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2

    const-string/jumbo v6, "SPRINT"

    sget-object v7, Lcom/android/settings/Utils;->CONFIGOPBRANDINGFORMOBILEAP:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2

    const-string/jumbo v6, "ATT"

    sget-object v7, Lcom/android/settings/Utils;->CONFIGOPBRANDINGFORMOBILEAP:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2

    const-string/jumbo v6, "MTR"

    sget-object v7, Lcom/android/settings/Utils;->CONFIGOPBRANDINGFORMOBILEAP:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2

    const-string/jumbo v6, "USC"

    sget-object v7, Lcom/android/settings/Utils;->CONFIGOPBRANDINGFORMOBILEAP:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    :cond_2
    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApHowToScreenPreference;->getContext()Landroid/content/Context;

    move-result-object v6

    const v7, 0x7f0b0dd7

    invoke-static {v6, v7}, Lcom/samsung/android/settings/WifiApUtils;->getString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 v6, 0x0

    invoke-virtual {v0, v6}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto/16 :goto_0

    :cond_3
    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApHowToScreenPreference;->getContext()Landroid/content/Context;

    move-result-object v6

    const v7, 0x7f0b0dcd

    invoke-static {v7}, Lcom/samsung/android/settings/WifiApUtils;->getStringID(I)I

    move-result v7

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    iget-object v9, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApHowToScreenPreference;->mText_color:Ljava/lang/String;

    const/4 v10, 0x0

    aput-object v9, v8, v10

    iget-object v9, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApHowToScreenPreference;->mSsid:Ljava/lang/String;

    invoke-static {v9}, Landroid/text/Html;->escapeHtml(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x1

    aput-object v9, v8, v10

    invoke-virtual {v6, v7, v8}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v6

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    :cond_4
    iget-boolean v6, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApHowToScreenPreference;->mHiddenSsid:Z

    if-eqz v6, :cond_5

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApHowToScreenPreference;->getContext()Landroid/content/Context;

    move-result-object v6

    const v7, 0x7f0b0df9

    invoke-static {v6, v7}, Lcom/samsung/android/settings/WifiApUtils;->getString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApHowToScreenPreference;->getContext()Landroid/content/Context;

    move-result-object v6

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    iget-object v8, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApHowToScreenPreference;->mText_color:Ljava/lang/String;

    const/4 v9, 0x0

    aput-object v8, v7, v9

    iget-object v8, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApHowToScreenPreference;->mSsid:Ljava/lang/String;

    invoke-static {v8}, Landroid/text/Html;->escapeHtml(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x1

    aput-object v8, v7, v9

    const v8, 0x7f0b0dfc

    invoke-virtual {v6, v8, v7}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v6

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApHowToScreenPreference;->getContext()Landroid/content/Context;

    move-result-object v6

    const/4 v7, 0x3

    new-array v7, v7, [Ljava/lang/Object;

    iget-object v8, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApHowToScreenPreference;->mText_color:Ljava/lang/String;

    const/4 v9, 0x0

    aput-object v8, v7, v9

    iget-object v8, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApHowToScreenPreference;->mSsid:Ljava/lang/String;

    invoke-static {v8}, Landroid/text/Html;->escapeHtml(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x1

    aput-object v8, v7, v9

    iget-object v8, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApHowToScreenPreference;->mPreSharedKey:Ljava/lang/String;

    invoke-static {v8}, Landroid/text/Html;->escapeHtml(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x2

    aput-object v8, v7, v9

    const v8, 0x7f0b0dff

    invoke-virtual {v6, v8, v7}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const-string/jumbo v6, "TMO"

    sget-object v7, Lcom/android/settings/Utils;->CONFIGOPBRANDINGFORMOBILEAP:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApHowToScreenPreference;->getContext()Landroid/content/Context;

    move-result-object v6

    const v7, 0x7f0b0e01

    invoke-static {v6, v7}, Lcom/samsung/android/settings/WifiApUtils;->getString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 v6, 0x0

    invoke-virtual {v0, v6}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto/16 :goto_0

    :cond_5
    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApHowToScreenPreference;->getContext()Landroid/content/Context;

    move-result-object v6

    const v7, 0x7f0b0ddd

    invoke-static {v6, v7}, Lcom/samsung/android/settings/WifiApUtils;->getString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const-string/jumbo v6, "SPRINT"

    sget-object v7, Lcom/android/settings/Utils;->CONFIGOPBRANDINGFORMOBILEAP:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApHowToScreenPreference;->getContext()Landroid/content/Context;

    move-result-object v6

    const v7, 0x7f0b0de1

    invoke-static {v6, v7}, Lcom/samsung/android/settings/WifiApUtils;->getString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_3
    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApHowToScreenPreference;->getContext()Landroid/content/Context;

    move-result-object v6

    const v7, 0x7f0b0de5

    invoke-static {v7}, Lcom/samsung/android/settings/WifiApUtils;->getStringID(I)I

    move-result v7

    const/4 v8, 0x3

    new-array v8, v8, [Ljava/lang/Object;

    iget-object v9, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApHowToScreenPreference;->mText_color:Ljava/lang/String;

    const/4 v10, 0x0

    aput-object v9, v8, v10

    iget-object v9, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApHowToScreenPreference;->mSsid:Ljava/lang/String;

    invoke-static {v9}, Landroid/text/Html;->escapeHtml(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x1

    aput-object v9, v8, v10

    iget-object v9, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApHowToScreenPreference;->mPreSharedKey:Ljava/lang/String;

    invoke-static {v9}, Landroid/text/Html;->escapeHtml(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x2

    aput-object v9, v8, v10

    invoke-virtual {v6, v7, v8}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const-string/jumbo v6, "VZW"

    sget-object v7, Lcom/android/settings/Utils;->CONFIGOPBRANDINGFORMOBILEAP:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_6

    const-string/jumbo v6, "TMO"

    sget-object v7, Lcom/android/settings/Utils;->CONFIGOPBRANDINGFORMOBILEAP:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_6

    const-string/jumbo v6, "SPRINT"

    sget-object v7, Lcom/android/settings/Utils;->CONFIGOPBRANDINGFORMOBILEAP:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_6

    const-string/jumbo v6, "ATT"

    sget-object v7, Lcom/android/settings/Utils;->CONFIGOPBRANDINGFORMOBILEAP:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_6

    const-string/jumbo v6, "MTR"

    sget-object v7, Lcom/android/settings/Utils;->CONFIGOPBRANDINGFORMOBILEAP:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_6

    const-string/jumbo v6, "USC"

    sget-object v7, Lcom/android/settings/Utils;->CONFIGOPBRANDINGFORMOBILEAP:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    :cond_6
    const-string/jumbo v6, "SPRINT"

    sget-object v7, Lcom/android/settings/Utils;->CONFIGOPBRANDINGFORMOBILEAP:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_8

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApHowToScreenPreference;->getContext()Landroid/content/Context;

    move-result-object v6

    const v7, 0x7f0b0deb

    invoke-static {v7}, Lcom/samsung/android/settings/WifiApUtils;->getStringID(I)I

    move-result v7

    const/4 v8, 0x4

    new-array v8, v8, [Ljava/lang/Object;

    iget-object v9, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApHowToScreenPreference;->mText_color:Ljava/lang/String;

    const/4 v10, 0x0

    aput-object v9, v8, v10

    iget-object v9, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApHowToScreenPreference;->mSsid:Ljava/lang/String;

    invoke-static {v9}, Landroid/text/Html;->escapeHtml(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x1

    aput-object v9, v8, v10

    iget-object v9, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApHowToScreenPreference;->mPreSharedKey:Ljava/lang/String;

    invoke-static {v9}, Landroid/text/Html;->escapeHtml(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x2

    aput-object v9, v8, v10

    iget-object v9, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApHowToScreenPreference;->mWpaString:Ljava/lang/String;

    const/4 v10, 0x3

    aput-object v9, v8, v10

    invoke-virtual {v6, v7, v8}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_4
    const/4 v6, 0x0

    invoke-virtual {v0, v6}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto/16 :goto_0

    :cond_7
    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApHowToScreenPreference;->getContext()Landroid/content/Context;

    move-result-object v6

    const v7, 0x7f0b0de1

    invoke-static {v7}, Lcom/samsung/android/settings/WifiApUtils;->getStringID(I)I

    move-result v7

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    iget-object v9, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApHowToScreenPreference;->mText_color:Ljava/lang/String;

    const/4 v10, 0x0

    aput-object v9, v8, v10

    iget-object v9, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApHowToScreenPreference;->mSsid:Ljava/lang/String;

    invoke-static {v9}, Landroid/text/Html;->escapeHtml(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x1

    aput-object v9, v8, v10

    invoke-virtual {v6, v7, v8}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v6

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_3

    :cond_8
    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApHowToScreenPreference;->getContext()Landroid/content/Context;

    move-result-object v6

    const v7, 0x7f0b0dd7

    invoke-static {v6, v7}, Lcom/samsung/android/settings/WifiApUtils;->getString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_4

    :cond_9
    const/16 v6, 0x8

    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_1
.end method

.method public setHowToView(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApHowToScreenPreference;->mText_color:Ljava/lang/String;

    iput-object p2, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApHowToScreenPreference;->mSsid:Ljava/lang/String;

    iput-object p3, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApHowToScreenPreference;->mPreSharedKey:Ljava/lang/String;

    iput-boolean p4, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApHowToScreenPreference;->mHiddenSsid:Z

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApHowToScreenPreference;->notifyHierarchyChanged()V

    return-void
.end method

.method public setHowToView(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApHowToScreenPreference;->mText_color:Ljava/lang/String;

    iput-object p2, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApHowToScreenPreference;->mSsid:Ljava/lang/String;

    iput-object p3, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApHowToScreenPreference;->mPreSharedKey:Ljava/lang/String;

    iput-boolean p4, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApHowToScreenPreference;->mHiddenSsid:Z

    iput-object p5, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApHowToScreenPreference;->mWpaString:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApHowToScreenPreference;->notifyHierarchyChanged()V

    return-void
.end method

.method public setHowToView(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 1

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApHowToScreenPreference;->mText_color:Ljava/lang/String;

    iput-object p2, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApHowToScreenPreference;->mSsid:Ljava/lang/String;

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApHowToScreenPreference;->mPreSharedKey:Ljava/lang/String;

    iput-boolean p3, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApHowToScreenPreference;->mHiddenSsid:Z

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApHowToScreenPreference;->notifyHierarchyChanged()V

    return-void
.end method

.method public showSummary()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApHowToScreenPreference;->mShouldShowSummary:Z

    return-void
.end method
