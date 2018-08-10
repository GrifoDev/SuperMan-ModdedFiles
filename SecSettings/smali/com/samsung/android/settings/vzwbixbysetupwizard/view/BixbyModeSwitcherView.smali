.class public Lcom/samsung/android/settings/vzwbixbysetupwizard/view/BixbyModeSwitcherView;
.super Landroid/widget/RelativeLayout;
.source "BixbyModeSwitcherView.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method private showModeSwitcherLink()Z
    .locals 2

    const/4 v1, 0x0

    sget-boolean v0, Lcom/samsung/android/settings/wifi/SetupWizardWifiScreen;->mLaunchModeEmail:Z

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/samsung/android/settings/vzwbixbysetupwizard/view/BixbyModeSwitcherView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/settings/vzwbixbysetupwizard/util/BixbyUtils;->isBixbyMode(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/settings/vzwbixbysetupwizard/view/BixbyModeSwitcherView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/settings/vzwbixbysetupwizard/util/BixbyUtils;->getBixbyMode(Landroid/content/Context;)I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    return v0

    :cond_1
    return v1
.end method


# virtual methods
.method protected onFinishInflate()V
    .locals 4

    invoke-virtual {p0}, Lcom/samsung/android/settings/vzwbixbysetupwizard/view/BixbyModeSwitcherView;->getRootView()Landroid/view/View;

    move-result-object v1

    const v2, 0x7f0a0547

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-direct {p0}, Lcom/samsung/android/settings/vzwbixbysetupwizard/view/BixbyModeSwitcherView;->showModeSwitcherLink()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/vzwbixbysetupwizard/view/BixbyModeSwitcherView;->setVisibility(I)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/vzwbixbysetupwizard/view/BixbyModeSwitcherView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/settings/vzwbixbysetupwizard/util/BixbyUtils;->isBixbyMode(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/samsung/android/settings/vzwbixbysetupwizard/view/BixbyModeSwitcherView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f121e10

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    new-instance v1, Lcom/samsung/android/settings/vzwbixbysetupwizard/view/BixbyModeSwitcherView$1;

    invoke-direct {v1, p0}, Lcom/samsung/android/settings/vzwbixbysetupwizard/view/BixbyModeSwitcherView$1;-><init>(Lcom/samsung/android/settings/vzwbixbysetupwizard/view/BixbyModeSwitcherView;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-super {p0}, Landroid/widget/RelativeLayout;->onFinishInflate()V

    return-void

    :cond_0
    const/16 v1, 0x8

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/vzwbixbysetupwizard/view/BixbyModeSwitcherView;->setVisibility(I)V

    return-void

    :cond_1
    const v1, 0x7f08079d

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundResource(I)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/vzwbixbysetupwizard/view/BixbyModeSwitcherView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f06019d

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/vzwbixbysetupwizard/view/BixbyModeSwitcherView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f121e0e

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method
