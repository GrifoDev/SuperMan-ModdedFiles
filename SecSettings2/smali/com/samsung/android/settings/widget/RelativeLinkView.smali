.class public Lcom/samsung/android/settings/widget/RelativeLinkView;
.super Landroid/widget/LinearLayout;
.source "RelativeLinkView.java"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mLinkContainer:Landroid/widget/LinearLayout;

.field private mParentView:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/samsung/android/settings/widget/RelativeLinkView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-object p1, p0, Lcom/samsung/android/settings/widget/RelativeLinkView;->mContext:Landroid/content/Context;

    invoke-direct {p0}, Lcom/samsung/android/settings/widget/RelativeLinkView;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method private init()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/settings/widget/RelativeLinkView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f040233

    invoke-virtual {v0, v1, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/widget/RelativeLinkView;->mParentView:Landroid/view/View;

    iget-object v0, p0, Lcom/samsung/android/settings/widget/RelativeLinkView;->mParentView:Landroid/view/View;

    const v1, 0x7f1105d4

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/samsung/android/settings/widget/RelativeLinkView;->mLinkContainer:Landroid/widget/LinearLayout;

    return-void
.end method


# virtual methods
.method public create(Landroid/widget/ListView;)V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/samsung/android/settings/widget/RelativeLinkView;->mLinkContainer:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/widget/RelativeLinkView;->mLinkContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v0

    if-gtz v0, :cond_0

    const-string/jumbo v0, "RelativeLinkView"

    const-string/jumbo v1, "The current screen doesn\'t have link data."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/samsung/android/settings/widget/RelativeLinkView;->mParentView:Landroid/view/View;

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/widget/ListView;->setItemsCanFocus(Z)V

    invoke-virtual {p1, v2}, Landroid/widget/ListView;->setFooterDividersEnabled(Z)V

    iget-object v0, p0, Lcom/samsung/android/settings/widget/RelativeLinkView;->mParentView:Landroid/view/View;

    invoke-virtual {p1, v0, v1, v2}, Landroid/widget/ListView;->addFooterView(Landroid/view/View;Ljava/lang/Object;Z)V

    :cond_1
    return-void
.end method

.method public getRelativeLinkView()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/widget/RelativeLinkView;->mParentView:Landroid/view/View;

    return-object v0
.end method

.method public pushLinkData(Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;)V
    .locals 8

    const/4 v5, 0x1

    const/4 v7, -0x2

    const/4 v6, 0x0

    if-eqz p1, :cond_0

    invoke-static {p1}, Lcom/android/settings/Utils;->isKnoxCustomLinkDataHidden(Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;)Z

    move-result v3

    if-eqz v3, :cond_1

    :cond_0
    return-void

    :cond_1
    new-instance v1, Landroid/widget/TextView;

    iget-object v3, p0, Lcom/samsung/android/settings/widget/RelativeLinkView;->mContext:Landroid/content/Context;

    invoke-direct {v1, v3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iget-object v3, p0, Lcom/samsung/android/settings/widget/RelativeLinkView;->mContext:Landroid/content/Context;

    const v4, 0x7f0f0270

    invoke-virtual {v1, v3, v4}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setFocusable(Z)V

    iget-object v3, p0, Lcom/samsung/android/settings/widget/RelativeLinkView;->mContext:Landroid/content/Context;

    new-array v4, v5, [I

    const v5, 0x101030e

    aput v5, v4, v6

    invoke-virtual {v3, v4}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result v3

    if-lez v3, :cond_2

    invoke-virtual {v2, v6}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :cond_2
    iget-object v3, p0, Lcom/samsung/android/settings/widget/RelativeLinkView;->mContext:Landroid/content/Context;

    iget v4, p1, Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;->titleRes:I

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    new-instance v3, Lcom/samsung/android/settings/widget/RelativeLinkView$1;

    invoke-direct {v3, p0, p1}, Lcom/samsung/android/settings/widget/RelativeLinkView$1;-><init>(Lcom/samsung/android/settings/widget/RelativeLinkView;Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;)V

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v7, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/widget/RelativeLinkView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0a0554

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    invoke-virtual {v0, v6, v3, v6, v6}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    iget-object v3, p0, Lcom/samsung/android/settings/widget/RelativeLinkView;->mLinkContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public resetLinkData()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/widget/RelativeLinkView;->mLinkContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    return-void
.end method

.method public startFooterViewLink(Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;)V
    .locals 7

    const/4 v4, 0x0

    const/4 v3, 0x0

    iget-object v0, p1, Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;->runType:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p1, Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;->runType:Ljava/lang/String;

    const-string/jumbo v1, "Broadcast"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/settings/widget/RelativeLinkView;->mContext:Landroid/content/Context;

    iget-object v1, p1, Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;->intent:Landroid/content/Intent;

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p1, Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;->fragment:Ljava/lang/String;

    if-eqz v0, :cond_3

    iget v0, p1, Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;->linkedTitleRes:I

    if-eqz v0, :cond_2

    iget v5, p1, Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;->linkedTitleRes:I

    :goto_1
    iget-object v0, p0, Lcom/samsung/android/settings/widget/RelativeLinkView;->mContext:Landroid/content/Context;

    iget-object v1, p1, Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;->fragment:Ljava/lang/String;

    iget-object v2, p1, Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;->extras:Landroid/os/Bundle;

    move-object v6, v3

    invoke-static/range {v0 .. v6}, Lcom/android/settings/Utils;->startWithFragment(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;Landroid/app/Fragment;IILjava/lang/CharSequence;)V

    goto :goto_0

    :cond_2
    iget v5, p1, Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;->titleRes:I

    goto :goto_1

    :cond_3
    iget-object v0, p1, Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;->intent:Landroid/content/Intent;

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;->intent:Landroid/content/Intent;

    const-string/jumbo v1, "relative_link"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    iget-object v0, p0, Lcom/samsung/android/settings/widget/RelativeLinkView;->mContext:Landroid/content/Context;

    iget-object v1, p1, Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;->intent:Landroid/content/Intent;

    invoke-static {v0, v1}, Lcom/android/settings/Utils;->isIntentAvailable(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/samsung/android/settings/widget/RelativeLinkView;->mContext:Landroid/content/Context;

    iget-object v1, p1, Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;->intent:Landroid/content/Intent;

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    :cond_4
    const-string/jumbo v0, "RelativeLinkView"

    const-string/jumbo v1, "intent is not available"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
