.class public Lcom/android/launcher2/popup/ListMenuItemView;
.super Landroid/widget/LinearLayout;
.source "ListMenuItemView.java"

# interfaces
.implements Lcom/android/launcher2/popup/MenuView$ItemView;


# instance fields
.field private mBackground:Landroid/graphics/drawable/Drawable;

.field private mCheckBox:Landroid/widget/CheckBox;

.field private mForceShowIcon:Z

.field private mIconView:Landroid/widget/ImageView;

.field private mInflater:Landroid/view/LayoutInflater;

.field private mItemData:Lcom/android/launcher2/popup/MenuItemImpl;

.field private mPreserveIconSpacing:Z

.field private mRadioButton:Landroid/widget/RadioButton;

.field private mShortcutView:Landroid/widget/TextView;

.field private mTextAppearance:I

.field private mTextAppearanceContext:Landroid/content/Context;

.field private mTitleView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/launcher2/popup/ListMenuItemView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/launcher2/popup/ListMenuItemView;->mTextAppearance:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher2/popup/ListMenuItemView;->mPreserveIconSpacing:Z

    iput-object p1, p0, Lcom/android/launcher2/popup/ListMenuItemView;->mTextAppearanceContext:Landroid/content/Context;

    return-void
.end method

.method private getInflater()Landroid/view/LayoutInflater;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher2/popup/ListMenuItemView;->mInflater:Landroid/view/LayoutInflater;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/launcher2/popup/ListMenuItemView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher2/popup/ListMenuItemView;->mInflater:Landroid/view/LayoutInflater;

    :cond_0
    iget-object v0, p0, Lcom/android/launcher2/popup/ListMenuItemView;->mInflater:Landroid/view/LayoutInflater;

    return-object v0
.end method

.method private insertCheckBox()V
    .locals 3

    invoke-direct {p0}, Lcom/android/launcher2/popup/ListMenuItemView;->getInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f040028

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    iput-object v1, p0, Lcom/android/launcher2/popup/ListMenuItemView;->mCheckBox:Landroid/widget/CheckBox;

    iget-object v1, p0, Lcom/android/launcher2/popup/ListMenuItemView;->mCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {p0, v1}, Lcom/android/launcher2/popup/ListMenuItemView;->addView(Landroid/view/View;)V

    return-void
.end method

.method private insertIconView()V
    .locals 3

    const/4 v2, 0x0

    invoke-direct {p0}, Lcom/android/launcher2/popup/ListMenuItemView;->getInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f040029

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/android/launcher2/popup/ListMenuItemView;->mIconView:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/launcher2/popup/ListMenuItemView;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {p0, v1, v2}, Lcom/android/launcher2/popup/ListMenuItemView;->addView(Landroid/view/View;I)V

    return-void
.end method

.method private insertRadioButton()V
    .locals 3

    invoke-direct {p0}, Lcom/android/launcher2/popup/ListMenuItemView;->getInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f04002a

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RadioButton;

    iput-object v1, p0, Lcom/android/launcher2/popup/ListMenuItemView;->mRadioButton:Landroid/widget/RadioButton;

    iget-object v1, p0, Lcom/android/launcher2/popup/ListMenuItemView;->mRadioButton:Landroid/widget/RadioButton;

    invoke-virtual {p0, v1}, Lcom/android/launcher2/popup/ListMenuItemView;->addView(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public getItemData()Lcom/android/launcher2/popup/MenuItemImpl;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher2/popup/ListMenuItemView;->mItemData:Lcom/android/launcher2/popup/MenuItemImpl;

    return-object v0
.end method

.method public initialize(Lcom/android/launcher2/popup/MenuItemImpl;I)V
    .locals 2

    iput-object p1, p0, Lcom/android/launcher2/popup/ListMenuItemView;->mItemData:Lcom/android/launcher2/popup/MenuItemImpl;

    invoke-virtual {p1}, Lcom/android/launcher2/popup/MenuItemImpl;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/launcher2/popup/ListMenuItemView;->setVisibility(I)V

    invoke-virtual {p1, p0}, Lcom/android/launcher2/popup/MenuItemImpl;->getTitleForItemView(Lcom/android/launcher2/popup/MenuView$ItemView;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/launcher2/popup/ListMenuItemView;->setTitle(Ljava/lang/CharSequence;)V

    invoke-virtual {p1}, Lcom/android/launcher2/popup/MenuItemImpl;->isCheckable()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/launcher2/popup/ListMenuItemView;->setCheckable(Z)V

    invoke-virtual {p1}, Lcom/android/launcher2/popup/MenuItemImpl;->shouldShowShortcut()Z

    move-result v0

    invoke-virtual {p1}, Lcom/android/launcher2/popup/MenuItemImpl;->getShortcut()C

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/android/launcher2/popup/ListMenuItemView;->setShortcut(ZC)V

    invoke-virtual {p1}, Lcom/android/launcher2/popup/MenuItemImpl;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/launcher2/popup/ListMenuItemView;->setIcon(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p1}, Lcom/android/launcher2/popup/MenuItemImpl;->isEnabled()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/launcher2/popup/ListMenuItemView;->setEnabled(Z)V

    return-void

    :cond_0
    const/16 v0, 0x8

    goto :goto_0
.end method

.method protected onFinishInflate()V
    .locals 3

    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    iget-object v0, p0, Lcom/android/launcher2/popup/ListMenuItemView;->mBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v0}, Lcom/android/launcher2/popup/ListMenuItemView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    const v0, 0x7f1100d3

    invoke-virtual {p0, v0}, Lcom/android/launcher2/popup/ListMenuItemView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/launcher2/popup/ListMenuItemView;->mTitleView:Landroid/widget/TextView;

    iget v0, p0, Lcom/android/launcher2/popup/ListMenuItemView;->mTextAppearance:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/launcher2/popup/ListMenuItemView;->mTitleView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/launcher2/popup/ListMenuItemView;->mTextAppearanceContext:Landroid/content/Context;

    iget v2, p0, Lcom/android/launcher2/popup/ListMenuItemView;->mTextAppearance:I

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    :cond_0
    const v0, 0x7f1100d4

    invoke-virtual {p0, v0}, Lcom/android/launcher2/popup/ListMenuItemView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/launcher2/popup/ListMenuItemView;->mShortcutView:Landroid/widget/TextView;

    return-void
.end method

.method protected onMeasure(II)V
    .locals 3

    iget-object v2, p0, Lcom/android/launcher2/popup/ListMenuItemView;->mIconView:Landroid/widget/ImageView;

    if-eqz v2, :cond_0

    iget-boolean v2, p0, Lcom/android/launcher2/popup/ListMenuItemView;->mPreserveIconSpacing:Z

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lcom/android/launcher2/popup/ListMenuItemView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    iget-object v2, p0, Lcom/android/launcher2/popup/ListMenuItemView;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    iget v2, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-lez v2, :cond_0

    iget v2, v0, Landroid/widget/LinearLayout$LayoutParams;->width:I

    if-gtz v2, :cond_0

    iget v2, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    iput v2, v0, Landroid/widget/LinearLayout$LayoutParams;->width:I

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    return-void
.end method

.method public prefersCondensedTitle()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public setCheckable(Z)V
    .locals 5

    const/16 v4, 0x8

    if-nez p1, :cond_1

    iget-object v3, p0, Lcom/android/launcher2/popup/ListMenuItemView;->mRadioButton:Landroid/widget/RadioButton;

    if-nez v3, :cond_1

    iget-object v3, p0, Lcom/android/launcher2/popup/ListMenuItemView;->mCheckBox:Landroid/widget/CheckBox;

    if-nez v3, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v3, p0, Lcom/android/launcher2/popup/ListMenuItemView;->mItemData:Lcom/android/launcher2/popup/MenuItemImpl;

    invoke-virtual {v3}, Lcom/android/launcher2/popup/MenuItemImpl;->isExclusiveCheckable()Z

    move-result v3

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/android/launcher2/popup/ListMenuItemView;->mRadioButton:Landroid/widget/RadioButton;

    if-nez v3, :cond_2

    invoke-direct {p0}, Lcom/android/launcher2/popup/ListMenuItemView;->insertRadioButton()V

    :cond_2
    iget-object v0, p0, Lcom/android/launcher2/popup/ListMenuItemView;->mRadioButton:Landroid/widget/RadioButton;

    iget-object v2, p0, Lcom/android/launcher2/popup/ListMenuItemView;->mCheckBox:Landroid/widget/CheckBox;

    :goto_1
    if-eqz p1, :cond_6

    iget-object v3, p0, Lcom/android/launcher2/popup/ListMenuItemView;->mItemData:Lcom/android/launcher2/popup/MenuItemImpl;

    invoke-virtual {v3}, Lcom/android/launcher2/popup/MenuItemImpl;->isChecked()Z

    move-result v3

    invoke-virtual {v0, v3}, Landroid/widget/CompoundButton;->setChecked(Z)V

    const/4 v1, 0x0

    invoke-virtual {v0}, Landroid/widget/CompoundButton;->getVisibility()I

    move-result v3

    if-eqz v3, :cond_3

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroid/widget/CompoundButton;->setVisibility(I)V

    :cond_3
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Landroid/widget/CompoundButton;->getVisibility()I

    move-result v3

    if-eq v3, v4, :cond_0

    invoke-virtual {v2, v4}, Landroid/widget/CompoundButton;->setVisibility(I)V

    goto :goto_0

    :cond_4
    iget-object v3, p0, Lcom/android/launcher2/popup/ListMenuItemView;->mCheckBox:Landroid/widget/CheckBox;

    if-nez v3, :cond_5

    invoke-direct {p0}, Lcom/android/launcher2/popup/ListMenuItemView;->insertCheckBox()V

    :cond_5
    iget-object v0, p0, Lcom/android/launcher2/popup/ListMenuItemView;->mCheckBox:Landroid/widget/CheckBox;

    iget-object v2, p0, Lcom/android/launcher2/popup/ListMenuItemView;->mRadioButton:Landroid/widget/RadioButton;

    goto :goto_1

    :cond_6
    iget-object v3, p0, Lcom/android/launcher2/popup/ListMenuItemView;->mCheckBox:Landroid/widget/CheckBox;

    if-eqz v3, :cond_7

    iget-object v3, p0, Lcom/android/launcher2/popup/ListMenuItemView;->mCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v3, v4}, Landroid/widget/CheckBox;->setVisibility(I)V

    :cond_7
    iget-object v3, p0, Lcom/android/launcher2/popup/ListMenuItemView;->mRadioButton:Landroid/widget/RadioButton;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/launcher2/popup/ListMenuItemView;->mRadioButton:Landroid/widget/RadioButton;

    invoke-virtual {v3, v4}, Landroid/widget/RadioButton;->setVisibility(I)V

    goto :goto_0
.end method

.method public setChecked(Z)V
    .locals 2

    iget-object v1, p0, Lcom/android/launcher2/popup/ListMenuItemView;->mItemData:Lcom/android/launcher2/popup/MenuItemImpl;

    invoke-virtual {v1}, Lcom/android/launcher2/popup/MenuItemImpl;->isExclusiveCheckable()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/launcher2/popup/ListMenuItemView;->mRadioButton:Landroid/widget/RadioButton;

    if-nez v1, :cond_0

    invoke-direct {p0}, Lcom/android/launcher2/popup/ListMenuItemView;->insertRadioButton()V

    :cond_0
    iget-object v0, p0, Lcom/android/launcher2/popup/ListMenuItemView;->mRadioButton:Landroid/widget/RadioButton;

    :goto_0
    invoke-virtual {v0, p1}, Landroid/widget/CompoundButton;->setChecked(Z)V

    return-void

    :cond_1
    iget-object v1, p0, Lcom/android/launcher2/popup/ListMenuItemView;->mCheckBox:Landroid/widget/CheckBox;

    if-nez v1, :cond_2

    invoke-direct {p0}, Lcom/android/launcher2/popup/ListMenuItemView;->insertCheckBox()V

    :cond_2
    iget-object v0, p0, Lcom/android/launcher2/popup/ListMenuItemView;->mCheckBox:Landroid/widget/CheckBox;

    goto :goto_0
.end method

.method public setForceShowIcon(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/launcher2/popup/ListMenuItemView;->mForceShowIcon:Z

    iput-boolean p1, p0, Lcom/android/launcher2/popup/ListMenuItemView;->mPreserveIconSpacing:Z

    return-void
.end method

.method public setIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 3

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/launcher2/popup/ListMenuItemView;->mItemData:Lcom/android/launcher2/popup/MenuItemImpl;

    invoke-virtual {v2}, Lcom/android/launcher2/popup/MenuItemImpl;->shouldShowIcon()Z

    move-result v2

    if-nez v2, :cond_0

    iget-boolean v2, p0, Lcom/android/launcher2/popup/ListMenuItemView;->mForceShowIcon:Z

    if-eqz v2, :cond_2

    :cond_0
    const/4 v0, 0x1

    :goto_0
    if-nez v0, :cond_3

    iget-boolean v2, p0, Lcom/android/launcher2/popup/ListMenuItemView;->mPreserveIconSpacing:Z

    if-nez v2, :cond_3

    :cond_1
    :goto_1
    return-void

    :cond_2
    move v0, v1

    goto :goto_0

    :cond_3
    iget-object v2, p0, Lcom/android/launcher2/popup/ListMenuItemView;->mIconView:Landroid/widget/ImageView;

    if-nez v2, :cond_4

    if-nez p1, :cond_4

    iget-boolean v2, p0, Lcom/android/launcher2/popup/ListMenuItemView;->mPreserveIconSpacing:Z

    if-eqz v2, :cond_1

    :cond_4
    iget-object v2, p0, Lcom/android/launcher2/popup/ListMenuItemView;->mIconView:Landroid/widget/ImageView;

    if-nez v2, :cond_5

    invoke-direct {p0}, Lcom/android/launcher2/popup/ListMenuItemView;->insertIconView()V

    :cond_5
    iget-object v2, p0, Lcom/android/launcher2/popup/ListMenuItemView;->mIconView:Landroid/widget/ImageView;

    if-eqz v2, :cond_1

    if-nez p1, :cond_6

    iget-boolean v2, p0, Lcom/android/launcher2/popup/ListMenuItemView;->mPreserveIconSpacing:Z

    if-eqz v2, :cond_8

    :cond_6
    iget-object v2, p0, Lcom/android/launcher2/popup/ListMenuItemView;->mIconView:Landroid/widget/ImageView;

    if-eqz v0, :cond_7

    :goto_2
    invoke-virtual {v2, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v2, p0, Lcom/android/launcher2/popup/ListMenuItemView;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getVisibility()I

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/launcher2/popup/ListMenuItemView;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_1

    :cond_7
    const/4 p1, 0x0

    goto :goto_2

    :cond_8
    iget-object v1, p0, Lcom/android/launcher2/popup/ListMenuItemView;->mIconView:Landroid/widget/ImageView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_1
.end method

.method public setShortcut(ZC)V
    .locals 3

    if-eqz p1, :cond_2

    iget-object v1, p0, Lcom/android/launcher2/popup/ListMenuItemView;->mItemData:Lcom/android/launcher2/popup/MenuItemImpl;

    invoke-virtual {v1}, Lcom/android/launcher2/popup/MenuItemImpl;->shouldShowShortcut()Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_0

    iget-object v1, p0, Lcom/android/launcher2/popup/ListMenuItemView;->mShortcutView:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/android/launcher2/popup/ListMenuItemView;->mItemData:Lcom/android/launcher2/popup/MenuItemImpl;

    invoke-virtual {v2}, Lcom/android/launcher2/popup/MenuItemImpl;->getShortcutLabel()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    iget-object v1, p0, Lcom/android/launcher2/popup/ListMenuItemView;->mShortcutView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getVisibility()I

    move-result v1

    if-eq v1, v0, :cond_1

    iget-object v1, p0, Lcom/android/launcher2/popup/ListMenuItemView;->mShortcutView:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_1
    return-void

    :cond_2
    const/16 v0, 0x8

    goto :goto_0
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .locals 2

    const/16 v1, 0x8

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/android/launcher2/popup/ListMenuItemView;->mTitleView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/launcher2/popup/ListMenuItemView;->mTitleView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher2/popup/ListMenuItemView;->mTitleView:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/launcher2/popup/ListMenuItemView;->mTitleView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v0

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/launcher2/popup/ListMenuItemView;->mTitleView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method public showsIcon()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/launcher2/popup/ListMenuItemView;->mForceShowIcon:Z

    return v0
.end method
