.class public Lcom/samsung/android/settings/wifi/mobileap/WifiApHowToScreenPreference;
.super Landroid/support/v7/preference/Preference;
.source "WifiApHowToScreenPreference.java"


# instance fields
.field private mHiddenSsid:Z

.field private mMHSCustomer:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mMHSCustomerNames:[Ljava/lang/String;

.field private mPreSharedKey:Ljava/lang/String;

.field private mShouldShowSummary:Z

.field private mSsid:Ljava/lang/String;

.field private mText_color:Ljava/lang/String;

.field private mWpaString:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4

    invoke-direct {p0, p1}, Landroid/support/v7/preference/Preference;-><init>(Landroid/content/Context;)V

    const-string/jumbo v1, ""

    iput-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApHowToScreenPreference;->mText_color:Ljava/lang/String;

    const-string/jumbo v1, ""

    iput-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApHowToScreenPreference;->mSsid:Ljava/lang/String;

    const-string/jumbo v1, ""

    iput-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApHowToScreenPreference;->mPreSharedKey:Ljava/lang/String;

    const-string/jumbo v1, ""

    iput-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApHowToScreenPreference;->mWpaString:Ljava/lang/String;

    const/4 v1, 0x6

    new-array v1, v1, [Ljava/lang/String;

    const-string/jumbo v2, "TMO"

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string/jumbo v2, "VZW"

    const/4 v3, 0x1

    aput-object v2, v1, v3

    const-string/jumbo v2, "MTR"

    const/4 v3, 0x2

    aput-object v2, v1, v3

    const-string/jumbo v2, "ATT"

    const/4 v3, 0x3

    aput-object v2, v1, v3

    const-string/jumbo v2, "USC"

    const/4 v3, 0x4

    aput-object v2, v1, v3

    const-string/jumbo v2, "SPRINT"

    const/4 v3, 0x5

    aput-object v2, v1, v3

    iput-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApHowToScreenPreference;->mMHSCustomerNames:[Ljava/lang/String;

    const v1, 0x7f0d038f

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/wifi/mobileap/WifiApHowToScreenPreference;->setLayoutResource(I)V

    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    iput-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApHowToScreenPreference;->mMHSCustomer:Ljava/util/HashSet;

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApHowToScreenPreference;->mMHSCustomerNames:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApHowToScreenPreference;->mMHSCustomer:Ljava/util/HashSet;

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApHowToScreenPreference;->mMHSCustomerNames:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public onBindViewHolder(Landroid/support/v7/preference/PreferenceViewHolder;)V
    .locals 11

    invoke-super {p0, p1}, Landroid/support/v7/preference/Preference;->onBindViewHolder(Landroid/support/v7/preference/PreferenceViewHolder;)V

    const v6, 0x7f0a08db

    invoke-virtual {p1, v6}, Landroid/support/v7/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const v6, 0x7f0a08dc

    invoke-virtual {p1, v6}, Landroid/support/v7/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    const v6, 0x7f0a08dd

    invoke-virtual {p1, v6}, Landroid/support/v7/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    const v6, 0x7f0a08de

    invoke-virtual {p1, v6}, Landroid/support/v7/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    const v6, 0x7f0a08d5

    invoke-virtual {p1, v6}, Landroid/support/v7/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    const/4 v6, 0x4

    invoke-virtual {v0, v6}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v6, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApHowToScreenPreference;->mPreSharedKey:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_3

    iget-boolean v6, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApHowToScreenPreference;->mHiddenSsid:Z

    if-eqz v6, :cond_1

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApHowToScreenPreference;->getContext()Landroid/content/Context;

    move-result-object v6

    const v7, 0x7f121f10

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

    const v8, 0x7f121f13

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

    const v8, 0x7f121f16

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

    const v7, 0x7f121f19

    invoke-static {v6, v7}, Lcom/samsung/android/settings/WifiApUtils;->getString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 v6, 0x0

    invoke-virtual {v0, v6}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :cond_0
    :goto_0
    const v6, 0x7f0a084b

    invoke-virtual {p1, v6}, Landroid/support/v7/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iget-boolean v6, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApHowToScreenPreference;->mShouldShowSummary:Z

    if-eqz v6, :cond_7

    const v6, 0x7f121ee7

    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setText(I)V

    const/4 v6, 0x0

    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_1
    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApHowToScreenPreference;->getContext()Landroid/content/Context;

    move-result-object v6

    const v7, 0x7f121efc

    invoke-static {v6, v7}, Lcom/samsung/android/settings/WifiApUtils;->getString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const-string/jumbo v6, "SPRINT"

    sget-object v7, Lcom/android/settings/Utils;->CONFIGOPBRANDINGFORMOBILEAP:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApHowToScreenPreference;->getContext()Landroid/content/Context;

    move-result-object v6

    const v7, 0x7f121f02

    invoke-static {v6, v7}, Lcom/samsung/android/settings/WifiApUtils;->getString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_2
    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApHowToScreenPreference;->getContext()Landroid/content/Context;

    move-result-object v6

    const v7, 0x7f121f06

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

    iget-object v6, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApHowToScreenPreference;->mMHSCustomer:Ljava/util/HashSet;

    sget-object v7, Lcom/android/settings/Utils;->CONFIGOPBRANDINGFORMOBILEAP:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApHowToScreenPreference;->getContext()Landroid/content/Context;

    move-result-object v6

    const v7, 0x7f121f0a

    invoke-static {v6, v7}, Lcom/samsung/android/settings/WifiApUtils;->getString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 v6, 0x0

    invoke-virtual {v0, v6}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto/16 :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApHowToScreenPreference;->getContext()Landroid/content/Context;

    move-result-object v6

    const v7, 0x7f121f02

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

    goto :goto_2

    :cond_3
    iget-boolean v6, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApHowToScreenPreference;->mHiddenSsid:Z

    if-eqz v6, :cond_4

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApHowToScreenPreference;->getContext()Landroid/content/Context;

    move-result-object v6

    const v7, 0x7f121edc

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

    const v8, 0x7f121edf

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

    const v8, 0x7f121ee2

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

    const v7, 0x7f121ee5

    invoke-static {v6, v7}, Lcom/samsung/android/settings/WifiApUtils;->getString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 v6, 0x0

    invoke-virtual {v0, v6}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto/16 :goto_0

    :cond_4
    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApHowToScreenPreference;->getContext()Landroid/content/Context;

    move-result-object v6

    const v7, 0x7f121ec8

    invoke-static {v6, v7}, Lcom/samsung/android/settings/WifiApUtils;->getString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const-string/jumbo v6, "SPRINT"

    sget-object v7, Lcom/android/settings/Utils;->CONFIGOPBRANDINGFORMOBILEAP:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    const v6, 0x7f121ed1

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setText(I)V

    :goto_3
    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApHowToScreenPreference;->getContext()Landroid/content/Context;

    move-result-object v6

    const v7, 0x7f121ed2

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

    iget-object v6, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApHowToScreenPreference;->mMHSCustomer:Ljava/util/HashSet;

    sget-object v7, Lcom/android/settings/Utils;->CONFIGOPBRANDINGFORMOBILEAP:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const-string/jumbo v6, "SPRINT"

    sget-object v7, Lcom/android/settings/Utils;->CONFIGOPBRANDINGFORMOBILEAP:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApHowToScreenPreference;->getContext()Landroid/content/Context;

    move-result-object v6

    const v7, 0x7f121ed6

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

    :cond_5
    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApHowToScreenPreference;->getContext()Landroid/content/Context;

    move-result-object v6

    const v7, 0x7f121ece

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

    :cond_6
    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApHowToScreenPreference;->getContext()Landroid/content/Context;

    move-result-object v6

    const v7, 0x7f121f0a

    invoke-static {v6, v7}, Lcom/samsung/android/settings/WifiApUtils;->getString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_4

    :cond_7
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
