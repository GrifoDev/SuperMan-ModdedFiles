.class public Lcom/android/systemui/statusbar/phone/IconMerger;
.super Landroid/widget/LinearLayout;
.source "IconMerger.java"


# instance fields
.field protected mIconHPadding:I

.field protected mIconSize:I

.field mMeasuredWidth:I

.field protected mMoreView:Landroid/view/View;

.field private mOperatorLogoIcon:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/IconMerger;->reloadDimens()V

    return-void
.end method


# virtual methods
.method protected checkOverflow(I)V
    .locals 9

    const/16 v8, 0x8

    const/4 v3, 0x0

    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/IconMerger;->mMoreView:Landroid/view/View;

    if-nez v6, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/IconMerger;->getChildCount()I

    move-result v0

    const/4 v5, 0x0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/phone/IconMerger;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/View;->getVisibility()I

    move-result v6

    if-eq v6, v8, :cond_1

    add-int/lit8 v5, v5, 0x1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/IconMerger;->mMoreView:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getVisibility()I

    move-result v6

    if-nez v6, :cond_8

    const/4 v4, 0x1

    :goto_1
    const-string/jumbo v6, "HOME"

    sget-object v7, Lcom/android/systemui/SystemUIRune;->SUPPORT_OPERATOR_LOGO_ICON:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_3

    const-string/jumbo v6, "BOTH"

    sget-object v7, Lcom/android/systemui/SystemUIRune;->SUPPORT_OPERATOR_LOGO_ICON:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_9

    :cond_3
    if-eqz v4, :cond_5

    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/IconMerger;->mOperatorLogoIcon:Landroid/view/View;

    if-eqz v6, :cond_5

    invoke-static {}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->shouldDisplayOperatorIcon()Z

    move-result v6

    if-nez v6, :cond_4

    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/IconMerger;->mOperatorLogoIcon:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getVisibility()I

    move-result v6

    if-ne v6, v8, :cond_4

    add-int/lit8 v5, v5, -0x1

    :cond_4
    invoke-static {}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->shouldDisplayOperatorIcon()Z

    move-result v6

    if-eqz v6, :cond_5

    iget v6, p0, Lcom/android/systemui/statusbar/phone/IconMerger;->mMeasuredWidth:I

    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/IconMerger;->mOperatorLogoIcon:Landroid/view/View;

    invoke-virtual {v7}, Landroid/view/View;->getWidth()I

    move-result v7

    iget v8, p0, Lcom/android/systemui/statusbar/phone/IconMerger;->mIconSize:I

    sub-int/2addr v7, v8

    sub-int v2, v6, v7

    iget v6, p0, Lcom/android/systemui/statusbar/phone/IconMerger;->mIconSize:I

    rem-int v6, v2, v6

    sub-int p1, v2, v6

    :cond_5
    :goto_2
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/IconMerger;->getFullIconWidth()I

    move-result v6

    mul-int/2addr v6, v5

    if-le v6, p1, :cond_6

    const/4 v3, 0x1

    :cond_6
    if-eq v3, v4, :cond_7

    new-instance v6, Lcom/android/systemui/statusbar/phone/IconMerger$1;

    invoke-direct {v6, p0, v3}, Lcom/android/systemui/statusbar/phone/IconMerger$1;-><init>(Lcom/android/systemui/statusbar/phone/IconMerger;Z)V

    invoke-virtual {p0, v6}, Lcom/android/systemui/statusbar/phone/IconMerger;->post(Ljava/lang/Runnable;)Z

    :cond_7
    return-void

    :cond_8
    const/4 v4, 0x0

    goto :goto_1

    :cond_9
    if-eqz v4, :cond_5

    add-int/lit8 v5, v5, -0x1

    goto :goto_2
.end method

.method protected getFullIconWidth()I
    .locals 2

    iget v0, p0, Lcom/android/systemui/statusbar/phone/IconMerger;->mIconSize:I

    iget v1, p0, Lcom/android/systemui/statusbar/phone/IconMerger;->mIconHPadding:I

    mul-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    return v0
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/IconMerger;->reloadDimens()V

    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 1

    invoke-super/range {p0 .. p5}, Landroid/widget/LinearLayout;->onLayout(ZIIII)V

    sub-int v0, p4, p2

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/IconMerger;->checkOverflow(I)V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 3

    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/IconMerger;->getMeasuredWidth()I

    move-result v0

    const-string/jumbo v1, "HOME"

    sget-object v2, Lcom/android/systemui/SystemUIRune;->SUPPORT_OPERATOR_LOGO_ICON:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string/jumbo v1, "BOTH"

    sget-object v2, Lcom/android/systemui/SystemUIRune;->SUPPORT_OPERATOR_LOGO_ICON:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    iput v0, p0, Lcom/android/systemui/statusbar/phone/IconMerger;->mMeasuredWidth:I

    :cond_1
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/IconMerger;->getFullIconWidth()I

    move-result v1

    rem-int v1, v0, v1

    sub-int v1, v0, v1

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/IconMerger;->getMeasuredHeight()I

    move-result v2

    invoke-virtual {p0, v1, v2}, Lcom/android/systemui/statusbar/phone/IconMerger;->setMeasuredDimension(II)V

    return-void
.end method

.method protected reloadDimens()V
    .locals 2

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/IconMerger;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget-boolean v1, Lcom/android/systemui/SystemUIRune;->IS_TABLET:Z

    if-eqz v1, :cond_0

    const v1, 0x7f0d01b9

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/statusbar/phone/IconMerger;->mIconSize:I

    :goto_0
    const v1, 0x7f0d01ce

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/statusbar/phone/IconMerger;->mIconHPadding:I

    return-void

    :cond_0
    const v1, 0x7f0d0393

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/statusbar/phone/IconMerger;->mIconSize:I

    goto :goto_0
.end method

.method public setOperatorLogoIndicator(Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/IconMerger;->mOperatorLogoIcon:Landroid/view/View;

    return-void
.end method

.method public setOverflowIndicator(Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/IconMerger;->mMoreView:Landroid/view/View;

    return-void
.end method

.method public updateOperatorLogoVisibility()V
    .locals 3

    const/16 v2, 0x8

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/IconMerger;->mOperatorLogoIcon:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/IconMerger;->mMoreView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/IconMerger;->mOperatorLogoIcon:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-static {}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->shouldDisplayOperatorIcon()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/IconMerger;->mOperatorLogoIcon:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/IconMerger;->mOperatorLogoIcon:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method
