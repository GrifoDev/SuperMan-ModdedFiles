.class public Lcom/android/systemui/statusbar/NotificationBottomBarView;
.super Lcom/android/systemui/statusbar/ExpandableView;
.source "NotificationBottomBarView.java"


# static fields
.field private static mIsShowButtonBg:Z


# instance fields
.field private mBlockButton:Landroid/widget/TextView;

.field private mBlockModeView:Landroid/view/View;

.field private mClearAllButton:Landroid/widget/TextView;

.field private mDoneButton:Landroid/widget/TextView;

.field private mNormalModeView:Landroid/view/View;

.field private mNotiSettingButton:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/ExpandableView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method


# virtual methods
.method public canBeSwiped()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getClearAllButtonView()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationBottomBarView;->mClearAllButton:Landroid/widget/TextView;

    return-object v0
.end method

.method public getNotiSettingsButtonView()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationBottomBarView;->mNotiSettingButton:Landroid/widget/TextView;

    return-object v0
.end method

.method protected onFinishInflate()V
    .locals 1

    const v0, 0x7f1302a0

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/NotificationBottomBarView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/NotificationBottomBarView;->mNormalModeView:Landroid/view/View;

    const v0, 0x7f1302a3

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/NotificationBottomBarView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/NotificationBottomBarView;->mBlockModeView:Landroid/view/View;

    const v0, 0x7f1302a4

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/NotificationBottomBarView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/NotificationBottomBarView;->mBlockButton:Landroid/widget/TextView;

    const v0, 0x7f1302a2

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/NotificationBottomBarView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/NotificationBottomBarView;->mClearAllButton:Landroid/widget/TextView;

    const v0, 0x7f1302a1

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/NotificationBottomBarView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/NotificationBottomBarView;->mNotiSettingButton:Landroid/widget/TextView;

    const v0, 0x7f1302a5

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/NotificationBottomBarView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/NotificationBottomBarView;->mDoneButton:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/NotificationBottomBarView;->updateShowButtonBackground()V

    new-instance v0, Lcom/android/systemui/statusbar/NotificationBottomBarView$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/NotificationBottomBarView$1;-><init>(Lcom/android/systemui/statusbar/NotificationBottomBarView;)V

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/NotificationBottomBarView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/NotificationBottomBarView;->setSoundEffectsEnabled(Z)V

    return-void
.end method

.method public performAddAnimation(JJ)V
    .locals 0

    return-void
.end method

.method public performRemoveAnimation(JFLjava/lang/Runnable;)V
    .locals 0

    return-void
.end method

.method public setClearAllEnabled(Z)V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationBottomBarView;->mClearAllButton:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setEnabled(Z)V

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationBottomBarView;->mClearAllButton:Landroid/widget/TextView;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setAlpha(F)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationBottomBarView;->mClearAllButton:Landroid/widget/TextView;

    const v1, 0x3e99999a    # 0.3f

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setAlpha(F)V

    goto :goto_0
.end method

.method public setNotiSettingsEnabled(Z)V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationBottomBarView;->mNotiSettingButton:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setEnabled(Z)V

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationBottomBarView;->mNotiSettingButton:Landroid/widget/TextView;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setAlpha(F)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationBottomBarView;->mNotiSettingButton:Landroid/widget/TextView;

    const v1, 0x3e99999a    # 0.3f

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setAlpha(F)V

    goto :goto_0
.end method

.method public updateResources()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationBottomBarView;->mClearAllButton:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationBottomBarView;->mClearAllButton:Landroid/widget/TextView;

    const v1, 0x7f0f0239

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationBottomBarView;->mNotiSettingButton:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationBottomBarView;->mNotiSettingButton:Landroid/widget/TextView;

    const v1, 0x7f0f0659

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    :cond_1
    return-void
.end method

.method public updateShowButtonBackground()V
    .locals 5

    const v1, 0x7f020557

    const v2, 0x7f020555

    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationBottomBarView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/util/SettingsHelper;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/util/SettingsHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/keyguard/util/SettingsHelper;->isShowButtonBackground()Z

    move-result v0

    sput-boolean v0, Lcom/android/systemui/statusbar/NotificationBottomBarView;->mIsShowButtonBg:Z

    iget-object v3, p0, Lcom/android/systemui/statusbar/NotificationBottomBarView;->mNotiSettingButton:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/NotificationBottomBarView;->getContext()Landroid/content/Context;

    move-result-object v4

    sget-boolean v0, Lcom/android/systemui/statusbar/NotificationBottomBarView;->mIsShowButtonBg:Z

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {v4, v0}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationBottomBarView;->mClearAllButton:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/NotificationBottomBarView;->getContext()Landroid/content/Context;

    move-result-object v3

    sget-boolean v4, Lcom/android/systemui/statusbar/NotificationBottomBarView;->mIsShowButtonBg:Z

    if-eqz v4, :cond_1

    :goto_1
    invoke-virtual {v3, v1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    return-void

    :cond_0
    move v0, v2

    goto :goto_0

    :cond_1
    move v1, v2

    goto :goto_1
.end method
