.class public Lcom/android/systemui/qs/QSTileView;
.super Lcom/android/systemui/qs/QSTileBaseView;
.source "QSTileView.java"


# instance fields
.field dividerParam:Landroid/widget/LinearLayout$LayoutParams;

.field labelParam:Landroid/widget/LinearLayout$LayoutParams;

.field protected final mContext:Landroid/content/Context;

.field private mCurrentUser:I

.field private mDefaultTextSize:F

.field private mDensityDpi:I

.field protected mDivider:Landroid/view/View;

.field protected mLabel:Landroid/widget/TextView;

.field private mPadLock:Landroid/widget/ImageView;

.field private mTilePaddingTopPx:I

.field private final mTileSpacingPx:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/qs/QSIconView;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/systemui/qs/QSTileView;-><init>(Landroid/content/Context;Lcom/android/systemui/qs/QSIconView;Z)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/qs/QSIconView;Z)V
    .locals 5

    const/4 v4, -0x1

    const/4 v3, -0x2

    invoke-direct {p0, p1, p2, p3}, Lcom/android/systemui/qs/QSTileBaseView;-><init>(Landroid/content/Context;Lcom/android/systemui/qs/QSIconView;Z)V

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, v4, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iput-object v2, p0, Lcom/android/systemui/qs/QSTileView;->dividerParam:Landroid/widget/LinearLayout$LayoutParams;

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, v4, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iput-object v2, p0, Lcom/android/systemui/qs/QSTileView;->labelParam:Landroid/widget/LinearLayout$LayoutParams;

    iput-object p1, p0, Lcom/android/systemui/qs/QSTileView;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0d0211

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Lcom/android/systemui/qs/QSTileView;->mTileSpacingPx:I

    iget-object v2, p0, Lcom/android/systemui/qs/QSTileView;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0d0205

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    int-to-float v2, v2

    iput v2, p0, Lcom/android/systemui/qs/QSTileView;->mDefaultTextSize:F

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v2, v2, Landroid/content/res/Configuration;->densityDpi:I

    iput v2, p0, Lcom/android/systemui/qs/QSTileView;->mDensityDpi:I

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v0

    iput v0, p0, Lcom/android/systemui/qs/QSTileView;->mCurrentUser:I

    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/android/systemui/qs/QSTileView;->setClipChildren(Z)V

    invoke-direct {p0}, Lcom/android/systemui/qs/QSTileView;->updateTopPadding()V

    invoke-static {}, Landroid/view/View;->generateViewId()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/android/systemui/qs/QSTileView;->setId(I)V

    invoke-virtual {p0}, Lcom/android/systemui/qs/QSTileView;->createDivider()V

    invoke-virtual {p0}, Lcom/android/systemui/qs/QSTileView;->createLabel()V

    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lcom/android/systemui/qs/QSTileView;->setOrientation(I)V

    const/16 v2, 0x31

    invoke-virtual {p0, v2}, Lcom/android/systemui/qs/QSTileView;->setGravity(I)V

    return-void
.end method

.method private updateTopPadding()V
    .locals 8

    const/high16 v6, 0x3f800000    # 1.0f

    invoke-virtual {p0}, Lcom/android/systemui/qs/QSTileView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0d020b

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    const v4, 0x7f0d020e

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    invoke-virtual {p0}, Lcom/android/systemui/qs/QSTileView;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v4

    iget v4, v4, Landroid/content/res/Configuration;->fontScale:F

    const v5, 0x3fa66666    # 1.3f

    invoke-static {v4, v6, v5}, Landroid/util/MathUtils;->constrain(FFF)F

    move-result v4

    sub-float/2addr v4, v6

    const v5, 0x3e999998    # 0.29999995f

    div-float v0, v4, v5

    sub-float v4, v6, v0

    int-to-float v5, v2

    mul-float/2addr v4, v5

    int-to-float v5, v1

    mul-float/2addr v5, v0

    add-float/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v4

    iput v4, p0, Lcom/android/systemui/qs/QSTileView;->mTilePaddingTopPx:I

    iget v4, p0, Lcom/android/systemui/qs/QSTileView;->mTileSpacingPx:I

    iget v5, p0, Lcom/android/systemui/qs/QSTileView;->mTilePaddingTopPx:I

    iget v6, p0, Lcom/android/systemui/qs/QSTileView;->mTileSpacingPx:I

    add-int/2addr v5, v6

    iget v6, p0, Lcom/android/systemui/qs/QSTileView;->mTileSpacingPx:I

    iget v7, p0, Lcom/android/systemui/qs/QSTileView;->mTileSpacingPx:I

    invoke-virtual {p0, v4, v5, v6, v7}, Lcom/android/systemui/qs/QSTileView;->setPadding(IIII)V

    iget-object v4, p0, Lcom/android/systemui/qs/QSTileView;->dividerParam:Landroid/widget/LinearLayout$LayoutParams;

    iget-object v5, p0, Lcom/android/systemui/qs/QSTileView;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0d020c

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    iput v5, v4, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    iget-object v4, p0, Lcom/android/systemui/qs/QSTileView;->labelParam:Landroid/widget/LinearLayout$LayoutParams;

    iget-object v5, p0, Lcom/android/systemui/qs/QSTileView;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0d020d

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    iput v5, v4, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    invoke-virtual {p0}, Lcom/android/systemui/qs/QSTileView;->requestLayout()V

    return-void
.end method


# virtual methods
.method protected createDivider()V
    .locals 4

    iget-object v1, p0, Lcom/android/systemui/qs/QSTileView;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f040108

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f1302f8

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/qs/QSTileView;->mDivider:Landroid/view/View;

    sget-boolean v3, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mAllowQsColorChange:Z

    if-eqz v3, :cond_0

    sget v2, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mQsDividerColor:I

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundColor(I)V

    :cond_0
    iget-object v1, p0, Lcom/android/systemui/qs/QSTileView;->dividerParam:Landroid/widget/LinearLayout$LayoutParams;

    iget-object v2, p0, Lcom/android/systemui/qs/QSTileView;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0d020c

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    iget-object v1, p0, Lcom/android/systemui/qs/QSTileView;->dividerParam:Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/QSTileView;->addView(Landroid/view/View;)V

    return-void
.end method

.method protected createLabel()V
    .locals 5

    iget-object v1, p0, Lcom/android/systemui/qs/QSTileView;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f040109

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f1302f9

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/systemui/qs/QSTileView;->mLabel:Landroid/widget/TextView;

    sget-boolean v4, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mAllowQsColorChange:Z

    if-eqz v4, :cond_0

    sget v4, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mQsTextColor:I

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_0
    const v1, 0x7f1302fa

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/android/systemui/qs/QSTileView;->mPadLock:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/android/systemui/qs/QSTileView;->updateShowButtonBackground()V

    iget-object v1, p0, Lcom/android/systemui/qs/QSTileView;->labelParam:Landroid/widget/LinearLayout$LayoutParams;

    iget-object v2, p0, Lcom/android/systemui/qs/QSTileView;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0d020d

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    iget-object v1, p0, Lcom/android/systemui/qs/QSTileView;->labelParam:Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v1, p0, Lcom/android/systemui/qs/QSTileView;->mLabel:Landroid/widget/TextView;

    new-instance v2, Lcom/android/systemui/qs/QSTileView$1;

    invoke-direct {v2, p0}, Lcom/android/systemui/qs/QSTileView$1;-><init>(Lcom/android/systemui/qs/QSTileView;)V

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/QSTileView;->addView(Landroid/view/View;)V

    return-void
.end method

.method public dynamicallyReduceTextSize(ILandroid/widget/TextView;)V
    .locals 12

    const/4 v11, 0x0

    const/4 v10, -0x1

    const/4 v1, 0x0

    :goto_0
    const/4 v6, 0x4

    if-ge v1, v6, :cond_2

    invoke-virtual {p2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v6

    invoke-interface {v6}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v2

    const/4 v4, 0x0

    const-string/jumbo v6, "\n"

    invoke-virtual {v3, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-ne v0, v10, :cond_0

    const-string/jumbo v6, " "

    invoke-virtual {v3, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    :cond_0
    if-ne v0, v10, :cond_3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v6

    float-to-int v4, v6

    :cond_1
    :goto_1
    if-lt p1, v4, :cond_4

    :cond_2
    return-void

    :cond_3
    invoke-virtual {v3, v11, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v6

    float-to-int v4, v6

    add-int/lit8 v6, v0, 0x1

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v7

    invoke-virtual {v3, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v6

    float-to-int v5, v6

    if-ge v4, v5, :cond_1

    move v4, v5

    goto :goto_1

    :cond_4
    iget v6, p0, Lcom/android/systemui/qs/QSTileView;->mDefaultTextSize:F

    add-int/lit8 v7, v1, 0x1

    int-to-float v7, v7

    iget v8, p0, Lcom/android/systemui/qs/QSTileView;->mDensityDpi:I

    int-to-float v8, v8

    const/high16 v9, 0x43200000    # 160.0f

    div-float/2addr v8, v9

    mul-float/2addr v7, v8

    sub-float/2addr v6, v7

    invoke-virtual {p2, v11, v6}, Landroid/widget/TextView;->setTextSize(IF)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method getDivider()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/qs/QSTileView;->mDivider:Landroid/view/View;

    return-object v0
.end method

.method getLabel()Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/qs/QSTileView;->mLabel:Landroid/widget/TextView;

    return-object v0
.end method

.method protected handleStateChanged(Lcom/android/systemui/qs/QSTile$State;)V
    .locals 9

    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-super {p0, p1}, Lcom/android/systemui/qs/QSTileBaseView;->handleStateChanged(Lcom/android/systemui/qs/QSTile$State;)V

    iget-object v6, p0, Lcom/android/systemui/qs/QSTileView;->mLabel:Landroid/widget/TextView;

    iget-object v7, p1, Lcom/android/systemui/qs/QSTile$State;->label:Ljava/lang/CharSequence;

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v6, p0, Lcom/android/systemui/qs/QSTileView;->mLabel:Landroid/widget/TextView;

    iget v7, p0, Lcom/android/systemui/qs/QSTileView;->mDefaultTextSize:F

    invoke-virtual {v6, v5, v7}, Landroid/widget/TextView;->setTextSize(IF)V

    iget-object v6, p0, Lcom/android/systemui/qs/QSTileView;->mLabel:Landroid/widget/TextView;

    invoke-virtual {v6}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v3

    if-lez v3, :cond_0

    iget-object v6, p0, Lcom/android/systemui/qs/QSTileView;->mLabel:Landroid/widget/TextView;

    invoke-virtual {v6}, Landroid/widget/TextView;->getPaddingStart()I

    move-result v6

    iget-object v7, p0, Lcom/android/systemui/qs/QSTileView;->mLabel:Landroid/widget/TextView;

    invoke-virtual {v7}, Landroid/widget/TextView;->getPaddingEnd()I

    move-result v7

    add-int/2addr v6, v7

    sub-int v6, v3, v6

    iget-object v7, p0, Lcom/android/systemui/qs/QSTileView;->mLabel:Landroid/widget/TextView;

    invoke-virtual {p0, v6, v7}, Lcom/android/systemui/qs/QSTileView;->dynamicallyReduceTextSize(ILandroid/widget/TextView;)V

    :cond_0
    const/4 v1, 0x0

    iget-object v6, p1, Lcom/android/systemui/qs/QSTile$State;->label:Ljava/lang/CharSequence;

    if-eqz v6, :cond_1

    new-instance v6, Ljava/lang/StringBuilder;

    iget-object v7, p1, Lcom/android/systemui/qs/QSTile$State;->label:Ljava/lang/CharSequence;

    invoke-interface {v7}, Ljava/lang/CharSequence;->length()I

    move-result v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(I)V

    iget-object v7, p1, Lcom/android/systemui/qs/QSTile$State;->label:Ljava/lang/CharSequence;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_1
    if-eqz v1, :cond_2

    const-string/jumbo v6, "\n"

    const-string/jumbo v7, ","

    invoke-virtual {v1, v6, v7}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :cond_2
    iget-object v6, p0, Lcom/android/systemui/qs/QSTileView;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    new-array v7, v4, [Ljava/lang/Object;

    aput-object v1, v7, v5

    const v8, 0x7f0f0448

    invoke-virtual {v6, v8, v7}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget-object v6, p0, Lcom/android/systemui/qs/QSTileView;->mLabel:Landroid/widget/TextView;

    invoke-virtual {v6, v0}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    iget-object v6, p0, Lcom/android/systemui/qs/QSTileView;->mLabel:Landroid/widget/TextView;

    iget-boolean v7, p1, Lcom/android/systemui/qs/QSTile$State;->disabledByPolicy:Z

    if-eqz v7, :cond_3

    move v4, v5

    :cond_3
    invoke-virtual {v6, v4}, Landroid/widget/TextView;->setEnabled(Z)V

    iget-object v4, p0, Lcom/android/systemui/qs/QSTileView;->mPadLock:Landroid/widget/ImageView;

    iget-boolean v6, p1, Lcom/android/systemui/qs/QSTile$State;->disabledByPolicy:Z

    if-eqz v6, :cond_4

    :goto_0
    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void

    :cond_4
    const/16 v5, 0x8

    goto :goto_0
.end method

.method public init(Landroid/view/View$OnClickListener;Landroid/view/View$OnClickListener;Landroid/view/View$OnLongClickListener;)V
    .locals 1

    invoke-virtual {p0, p1, p3}, Lcom/android/systemui/qs/QSTileView;->init(Landroid/view/View$OnClickListener;Landroid/view/View$OnLongClickListener;)V

    invoke-virtual {p0}, Lcom/android/systemui/qs/QSTileView;->getLabel()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0}, Lcom/android/systemui/qs/QSTileView;->getLabel()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, p3}, Landroid/widget/TextView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/android/systemui/qs/QSTileBaseView;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    invoke-direct {p0}, Lcom/android/systemui/qs/QSTileView;->updateTopPadding()V

    iget-object v0, p0, Lcom/android/systemui/qs/QSTileView;->mLabel:Landroid/widget/TextView;

    const v1, 0x7f0d0205

    invoke-static {v0, v1}, Lcom/android/systemui/FontSizeUtils;->updateFontSize(Landroid/widget/TextView;I)V

    iget v0, p1, Landroid/content/res/Configuration;->densityDpi:I

    iput v0, p0, Lcom/android/systemui/qs/QSTileView;->mDensityDpi:I

    return-void
.end method

.method protected updateRippleSize(II)V
    .locals 4

    invoke-virtual {p0}, Lcom/android/systemui/qs/QSTileView;->getIcon()Lcom/android/systemui/qs/QSIconView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v2

    int-to-float v2, v2

    const v3, 0x3eeb851f    # 0.46f

    mul-float/2addr v2, v3

    float-to-int v1, v2

    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v2

    invoke-virtual {p0, p1, v2, v1}, Lcom/android/systemui/qs/QSTileView;->updateRippleSize(III)V

    return-void
.end method

.method public updateShowButtonBackground()V
    .locals 5

    iget-object v1, p0, Lcom/android/systemui/qs/QSTileView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "show_button_background"

    iget v3, p0, Lcom/android/systemui/qs/QSTileView;->mCurrentUser:I

    const/4 v4, 0x0

    invoke-static {v1, v2, v4, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    :goto_0
    iget-object v2, p0, Lcom/android/systemui/qs/QSTileView;->mLabel:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/systemui/qs/QSTileView;->getContext()Landroid/content/Context;

    move-result-object v3

    if-eqz v0, :cond_1

    const v1, 0x7f020559

    :goto_1
    invoke-virtual {v3, v1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    const v1, 0x7f020556

    goto :goto_1
.end method
