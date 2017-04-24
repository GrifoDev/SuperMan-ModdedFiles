.class public Lcom/android/systemui/statusbar/phone/NotificationsQuickSettingsContainer;
.super Landroid/widget/FrameLayout;
.source "NotificationsQuickSettingsContainer.java"

# interfaces
.implements Landroid/view/ViewStub$OnInflateListener;
.implements Lcom/android/systemui/AutoReinflateContainer$InflateListener;


# instance fields
.field private mBottomPadding:I

.field private mCustomizerAnimating:Z

.field private mInflated:Z

.field private mKeyguardStatusBar:Landroid/view/View;

.field private mQsContainer:Lcom/android/systemui/AutoReinflateContainer;

.field private mQsExpanded:Z

.field private mStackScroller:Landroid/view/View;

.field private mStackScrollerMargin:I

.field private mUserSwitcher:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method private reloadWidth(Landroid/view/View;)V
    .locals 3

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationsQuickSettingsContainer;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0d01e2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private setBottomMargin(Landroid/view/View;I)V
    .locals 1

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    iput p2, v0, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method


# virtual methods
.method protected drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z
    .locals 7

    const/4 v0, 0x0

    iget-boolean v5, p0, Lcom/android/systemui/statusbar/phone/NotificationsQuickSettingsContainer;->mInflated:Z

    if-eqz v5, :cond_2

    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/NotificationsQuickSettingsContainer;->mUserSwitcher:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getVisibility()I

    move-result v5

    if-nez v5, :cond_2

    const/4 v4, 0x1

    :goto_0
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/NotificationsQuickSettingsContainer;->mKeyguardStatusBar:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getVisibility()I

    move-result v5

    if-nez v5, :cond_3

    const/4 v3, 0x1

    :goto_1
    iget-boolean v5, p0, Lcom/android/systemui/statusbar/phone/NotificationsQuickSettingsContainer;->mQsExpanded:Z

    if-eqz v5, :cond_0

    iget-boolean v5, p0, Lcom/android/systemui/statusbar/phone/NotificationsQuickSettingsContainer;->mCustomizerAnimating:Z

    if-eqz v5, :cond_4

    :cond_0
    :goto_2
    if-eqz v0, :cond_5

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NotificationsQuickSettingsContainer;->mStackScroller:Landroid/view/View;

    :goto_3
    if-nez v0, :cond_6

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationsQuickSettingsContainer;->mStackScroller:Landroid/view/View;

    :goto_4
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/NotificationsQuickSettingsContainer;->mQsContainer:Lcom/android/systemui/AutoReinflateContainer;

    if-ne p2, v5, :cond_9

    if-eqz v4, :cond_7

    if-eqz v3, :cond_7

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationsQuickSettingsContainer;->mUserSwitcher:Landroid/view/View;

    :cond_1
    :goto_5
    invoke-super {p0, p1, v1, p3, p4}, Landroid/widget/FrameLayout;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result v5

    return v5

    :cond_2
    const/4 v4, 0x0

    goto :goto_0

    :cond_3
    const/4 v3, 0x0

    goto :goto_1

    :cond_4
    const/4 v0, 0x1

    goto :goto_2

    :cond_5
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NotificationsQuickSettingsContainer;->mQsContainer:Lcom/android/systemui/AutoReinflateContainer;

    goto :goto_3

    :cond_6
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationsQuickSettingsContainer;->mQsContainer:Lcom/android/systemui/AutoReinflateContainer;

    goto :goto_4

    :cond_7
    if-eqz v3, :cond_8

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationsQuickSettingsContainer;->mKeyguardStatusBar:Landroid/view/View;

    goto :goto_5

    :cond_8
    if-eqz v4, :cond_1

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationsQuickSettingsContainer;->mUserSwitcher:Landroid/view/View;

    goto :goto_5

    :cond_9
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/NotificationsQuickSettingsContainer;->mStackScroller:Landroid/view/View;

    if-ne p2, v5, :cond_d

    if-eqz v4, :cond_b

    if-eqz v3, :cond_b

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NotificationsQuickSettingsContainer;->mKeyguardStatusBar:Landroid/view/View;

    :cond_a
    :goto_6
    invoke-super {p0, p1, v2, p3, p4}, Landroid/widget/FrameLayout;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result v5

    return v5

    :cond_b
    if-nez v3, :cond_c

    if-eqz v4, :cond_a

    :cond_c
    move-object v2, v1

    goto :goto_6

    :cond_d
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/NotificationsQuickSettingsContainer;->mUserSwitcher:Landroid/view/View;

    if-ne p2, v5, :cond_f

    if-eqz v4, :cond_e

    if-eqz v3, :cond_e

    :goto_7
    invoke-super {p0, p1, v1, p3, p4}, Landroid/widget/FrameLayout;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result v5

    return v5

    :cond_e
    move-object v1, v2

    goto :goto_7

    :cond_f
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/NotificationsQuickSettingsContainer;->mKeyguardStatusBar:Landroid/view/View;

    if-ne p2, v5, :cond_10

    invoke-super {p0, p1, v2, p3, p4}, Landroid/widget/FrameLayout;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result v5

    return v5

    :cond_10
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result v5

    return v5
.end method

.method public onApplyWindowInsets(Landroid/view/WindowInsets;)Landroid/view/WindowInsets;
    .locals 2

    const/4 v1, 0x0

    invoke-virtual {p1}, Landroid/view/WindowInsets;->getStableInsetBottom()I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/phone/NotificationsQuickSettingsContainer;->mBottomPadding:I

    iget v0, p0, Lcom/android/systemui/statusbar/phone/NotificationsQuickSettingsContainer;->mBottomPadding:I

    invoke-virtual {p0, v1, v1, v1, v0}, Lcom/android/systemui/statusbar/phone/NotificationsQuickSettingsContainer;->setPadding(IIII)V

    return-object p1
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationsQuickSettingsContainer;->mQsContainer:Lcom/android/systemui/AutoReinflateContainer;

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/NotificationsQuickSettingsContainer;->reloadWidth(Landroid/view/View;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationsQuickSettingsContainer;->mStackScroller:Landroid/view/View;

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/NotificationsQuickSettingsContainer;->reloadWidth(Landroid/view/View;)V

    return-void
.end method

.method protected onFinishInflate()V
    .locals 2

    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    const v1, 0x7f1303c0

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/phone/NotificationsQuickSettingsContainer;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/AutoReinflateContainer;

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationsQuickSettingsContainer;->mQsContainer:Lcom/android/systemui/AutoReinflateContainer;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationsQuickSettingsContainer;->mQsContainer:Lcom/android/systemui/AutoReinflateContainer;

    invoke-virtual {v1, p0}, Lcom/android/systemui/AutoReinflateContainer;->addInflateListener(Lcom/android/systemui/AutoReinflateContainer$InflateListener;)V

    const v1, 0x7f1303c1

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/phone/NotificationsQuickSettingsContainer;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationsQuickSettingsContainer;->mStackScroller:Landroid/view/View;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationsQuickSettingsContainer;->mStackScroller:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout$LayoutParams;

    iget v1, v1, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    iput v1, p0, Lcom/android/systemui/statusbar/phone/NotificationsQuickSettingsContainer;->mStackScrollerMargin:I

    const v1, 0x7f1301cb

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/phone/NotificationsQuickSettingsContainer;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationsQuickSettingsContainer;->mKeyguardStatusBar:Landroid/view/View;

    const v1, 0x7f1303c2

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/phone/NotificationsQuickSettingsContainer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    invoke-virtual {v0, p0}, Landroid/view/ViewStub;->setOnInflateListener(Landroid/view/ViewStub$OnInflateListener;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationsQuickSettingsContainer;->mUserSwitcher:Landroid/view/View;

    return-void
.end method

.method public onInflate(Landroid/view/ViewStub;Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationsQuickSettingsContainer;->mUserSwitcher:Landroid/view/View;

    if-ne p1, v0, :cond_0

    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/NotificationsQuickSettingsContainer;->mUserSwitcher:Landroid/view/View;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationsQuickSettingsContainer;->mInflated:Z

    :cond_0
    return-void
.end method

.method public onInflated(Landroid/view/View;)V
    .locals 1

    check-cast p1, Lcom/android/systemui/qs/QSContainer;

    invoke-virtual {p1}, Lcom/android/systemui/qs/QSContainer;->getSecCustomizer()Lcom/android/systemui/qs/customize/SecQSCustomizer;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/systemui/qs/customize/SecQSCustomizer;->setContainer(Lcom/android/systemui/statusbar/phone/NotificationsQuickSettingsContainer;)V

    return-void
.end method

.method public setCustomizerAnimating(Z)V
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationsQuickSettingsContainer;->mCustomizerAnimating:Z

    if-eq v0, p1, :cond_0

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/NotificationsQuickSettingsContainer;->mCustomizerAnimating:Z

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationsQuickSettingsContainer;->invalidate()V

    :cond_0
    return-void
.end method

.method public setCustomizerShowing(Z)V
    .locals 2

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p0, v1, v1, v1, v1}, Lcom/android/systemui/statusbar/phone/NotificationsQuickSettingsContainer;->setPadding(IIII)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationsQuickSettingsContainer;->mStackScroller:Landroid/view/View;

    invoke-direct {p0, v0, v1}, Lcom/android/systemui/statusbar/phone/NotificationsQuickSettingsContainer;->setBottomMargin(Landroid/view/View;I)V

    :goto_0
    return-void

    :cond_0
    iget v0, p0, Lcom/android/systemui/statusbar/phone/NotificationsQuickSettingsContainer;->mBottomPadding:I

    invoke-virtual {p0, v1, v1, v1, v0}, Lcom/android/systemui/statusbar/phone/NotificationsQuickSettingsContainer;->setPadding(IIII)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationsQuickSettingsContainer;->mStackScroller:Landroid/view/View;

    iget v1, p0, Lcom/android/systemui/statusbar/phone/NotificationsQuickSettingsContainer;->mStackScrollerMargin:I

    invoke-direct {p0, v0, v1}, Lcom/android/systemui/statusbar/phone/NotificationsQuickSettingsContainer;->setBottomMargin(Landroid/view/View;I)V

    goto :goto_0
.end method

.method public setQsExpanded(Z)V
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationsQuickSettingsContainer;->mQsExpanded:Z

    if-eq v0, p1, :cond_0

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/NotificationsQuickSettingsContainer;->mQsExpanded:Z

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationsQuickSettingsContainer;->invalidate()V

    :cond_0
    return-void
.end method
