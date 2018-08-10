.class public Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskIconMerger;
.super Landroid/widget/LinearLayout;
.source "DeskIconMerger.java"


# instance fields
.field private mIconMaxCount:I

.field private mIconMinCount:I

.field private mIconSize:I

.field private mIsExpanded:Z

.field private mMoreView:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskIconMerger;->reloadDimens()V

    return-void
.end method

.method private checkOverflow(I)V
    .locals 8

    const/16 v6, 0x8

    const/4 v5, 0x0

    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskIconMerger;->mMoreView:Landroid/view/View;

    if-nez v7, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskIconMerger;->getChildCount()I

    move-result v0

    const/4 v4, 0x0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskIconMerger;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/View;->getVisibility()I

    move-result v7

    if-eq v7, v6, :cond_1

    add-int/lit8 v4, v4, 0x1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskIconMerger;->mMoreView:Landroid/view/View;

    invoke-virtual {v7}, Landroid/view/View;->getVisibility()I

    move-result v7

    if-nez v7, :cond_4

    const/4 v3, 0x1

    :goto_1
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskIconMerger;->getIconSize()I

    move-result v7

    mul-int/2addr v7, v4

    if-le v7, p1, :cond_5

    const/4 v2, 0x1

    :goto_2
    if-eq v2, v3, :cond_3

    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskIconMerger;->mMoreView:Landroid/view/View;

    if-eqz v2, :cond_6

    :goto_3
    invoke-virtual {v7, v5}, Landroid/view/View;->setVisibility(I)V

    :cond_3
    return-void

    :cond_4
    const/4 v3, 0x0

    goto :goto_1

    :cond_5
    const/4 v2, 0x0

    goto :goto_2

    :cond_6
    move v5, v6

    goto :goto_3
.end method

.method private getIconSize()I
    .locals 1

    iget v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskIconMerger;->mIconSize:I

    return v0
.end method


# virtual methods
.method public collapse(Z)V
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskIconMerger;->mIsExpanded:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskIconMerger;->mIsExpanded:Z

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskIconMerger;->updateWidth()V

    :cond_0
    return-void
.end method

.method public expand(Z)V
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskIconMerger;->mIsExpanded:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskIconMerger;->mIsExpanded:Z

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskIconMerger;->updateWidth()V

    :cond_0
    return-void
.end method

.method public isExpanded()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskIconMerger;->mIsExpanded:Z

    return v0
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskIconMerger;->reloadDimens()V

    return-void
.end method

.method public reloadDimens()V
    .locals 2

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskIconMerger;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f07016b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskIconMerger;->mIconSize:I

    const v1, 0x7f0b0016

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskIconMerger;->mIconMinCount:I

    const v1, 0x7f0b0015

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskIconMerger;->mIconMaxCount:I

    return-void
.end method

.method public setOverflowIndicator(Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskIconMerger;->mMoreView:Landroid/view/View;

    return-void
.end method

.method public updateWidth()V
    .locals 4

    iget-boolean v3, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskIconMerger;->mIsExpanded:Z

    if-eqz v3, :cond_0

    iget v1, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskIconMerger;->mIconMaxCount:I

    :goto_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskIconMerger;->getChildCount()I

    move-result v3

    invoke-static {v1, v3}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskIconMerger;->getIconSize()I

    move-result v3

    mul-int v0, v3, v1

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskIconMerger;->checkOverflow(I)V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskIconMerger;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    iput v0, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskIconMerger;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void

    :cond_0
    iget v1, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskIconMerger;->mIconMinCount:I

    goto :goto_0
.end method
