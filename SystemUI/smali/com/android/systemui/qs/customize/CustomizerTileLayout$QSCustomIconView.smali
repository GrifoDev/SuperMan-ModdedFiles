.class Lcom/android/systemui/qs/customize/CustomizerTileLayout$QSCustomIconView;
.super Lcom/android/systemui/qs/tileimpl/QSIconViewImpl;
.source "CustomizerTileLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/qs/customize/CustomizerTileLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "QSCustomIconView"
.end annotation


# instance fields
.field protected final mBadgeSizePx:I

.field private mIconBadge:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0, p1}, Lcom/android/systemui/qs/tileimpl/QSIconViewImpl;-><init>(Landroid/content/Context;)V

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070077

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/qs/customize/CustomizerTileLayout$QSCustomIconView;->mBadgeSizePx:I

    invoke-virtual {p0}, Lcom/android/systemui/qs/customize/CustomizerTileLayout$QSCustomIconView;->createBadgeIcon()Landroid/widget/TextView;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/qs/customize/CustomizerTileLayout$QSCustomIconView;->mIconBadge:Landroid/widget/TextView;

    return-void
.end method

.method private cloneDrawable(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    .locals 8

    const/4 v0, 0x0

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v1

    instance-of v5, p1, Lcom/android/systemui/statusbar/ScalingDrawableWrapper;

    if-eqz v5, :cond_1

    move-object v5, p1

    check-cast v5, Lcom/android/systemui/statusbar/ScalingDrawableWrapper;

    invoke-virtual {v5}, Lcom/android/systemui/statusbar/ScalingDrawableWrapper;->getCloneDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iget-object v5, p0, Lcom/android/systemui/qs/customize/CustomizerTileLayout$QSCustomIconView;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f070521

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    int-to-float v5, v4

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v6

    int-to-float v6, v6

    div-float/2addr v5, v6

    iget-object v6, p0, Lcom/android/systemui/qs/customize/CustomizerTileLayout$QSCustomIconView;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0704ff

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getFloat(I)F

    move-result v6

    mul-float v3, v5, v6

    new-instance v0, Lcom/android/systemui/statusbar/ScalingDrawableWrapper;

    invoke-direct {v0, v2, v3}, Lcom/android/systemui/statusbar/ScalingDrawableWrapper;-><init>(Landroid/graphics/drawable/Drawable;F)V

    :cond_0
    :goto_0
    if-nez v0, :cond_2

    return-object p1

    :cond_1
    if-eqz v1, :cond_0

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v5

    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0

    :cond_2
    return-object v0
.end method


# virtual methods
.method public addBadge(Lcom/android/systemui/qs/customize/CustomizeTileView;)V
    .locals 2

    invoke-virtual {p1}, Lcom/android/systemui/qs/customize/CustomizeTileView;->getIconView()Lcom/android/systemui/plugins/qs/QSIconView;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/qs/customize/CustomizerTileLayout$QSCustomIconView;

    iget-object v1, p0, Lcom/android/systemui/qs/customize/CustomizerTileLayout$QSCustomIconView;->mIconBadge:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Lcom/android/systemui/qs/customize/CustomizerTileLayout$QSCustomIconView;->addView(Landroid/view/View;)V

    return-void
.end method

.method public badgelayout(Landroid/view/View;II)V
    .locals 2

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    sub-int v0, p2, v0

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    add-int/2addr v1, p3

    invoke-virtual {p1, v0, p3, p2, v1}, Landroid/view/View;->layout(IIII)V

    return-void
.end method

.method public createBadgeIcon()Landroid/widget/TextView;
    .locals 5

    const/4 v4, 0x0

    new-instance v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/systemui/qs/customize/CustomizerTileLayout$QSCustomIconView;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/android/systemui/qs/customize/CustomizerTileLayout$QSCustomIconView;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f08005d

    invoke-virtual {v1, v2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p0}, Lcom/android/systemui/qs/customize/CustomizerTileLayout$QSCustomIconView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f060025

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    invoke-virtual {p0}, Lcom/android/systemui/qs/customize/CustomizerTileLayout$QSCustomIconView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f07007b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v4, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    invoke-virtual {p0}, Lcom/android/systemui/qs/customize/CustomizerTileLayout$QSCustomIconView;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f120893

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    return-object v0
.end method

.method protected onLayout(ZIIII)V
    .locals 7

    invoke-virtual {p0}, Lcom/android/systemui/qs/customize/CustomizerTileLayout$QSCustomIconView;->getMeasuredWidth()I

    move-result v4

    invoke-virtual {p0}, Lcom/android/systemui/qs/customize/CustomizerTileLayout$QSCustomIconView;->getMeasuredHeight()I

    move-result v0

    const/4 v3, 0x0

    iget-object v5, p0, Lcom/android/systemui/qs/customize/CustomizerTileLayout$QSCustomIconView;->mIcon:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    iget-object v5, p0, Lcom/android/systemui/qs/customize/CustomizerTileLayout$QSCustomIconView;->mIcon:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getMeasuredWidth()I

    move-result v5

    sub-int v5, v4, v5

    div-int/lit8 v1, v5, 0x2

    iget-object v5, p0, Lcom/android/systemui/qs/customize/CustomizerTileLayout$QSCustomIconView;->mIcon:Landroid/view/View;

    invoke-virtual {p0, v5, v1, v3}, Lcom/android/systemui/qs/customize/CustomizerTileLayout$QSCustomIconView;->layout(Landroid/view/View;II)V

    iget-object v5, p0, Lcom/android/systemui/qs/customize/CustomizerTileLayout$QSCustomIconView;->mIconBadge:Landroid/widget/TextView;

    add-int v6, v2, v1

    invoke-virtual {p0, v5, v6, v3}, Lcom/android/systemui/qs/customize/CustomizerTileLayout$QSCustomIconView;->badgelayout(Landroid/view/View;II)V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 5

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    iget v3, p0, Lcom/android/systemui/qs/customize/CustomizerTileLayout$QSCustomIconView;->mIconSizePx:I

    invoke-virtual {p0, v3}, Lcom/android/systemui/qs/customize/CustomizerTileLayout$QSCustomIconView;->exactly(I)I

    move-result v0

    iget v3, p0, Lcom/android/systemui/qs/customize/CustomizerTileLayout$QSCustomIconView;->mBadgeSizePx:I

    invoke-virtual {p0, v3}, Lcom/android/systemui/qs/customize/CustomizerTileLayout$QSCustomIconView;->exactly(I)I

    move-result v2

    iget-object v3, p0, Lcom/android/systemui/qs/customize/CustomizerTileLayout$QSCustomIconView;->mIcon:Landroid/view/View;

    invoke-virtual {v3, v0, v0}, Landroid/view/View;->measure(II)V

    iget-object v3, p0, Lcom/android/systemui/qs/customize/CustomizerTileLayout$QSCustomIconView;->mIconBadge:Landroid/widget/TextView;

    invoke-virtual {v3, v2, v2}, Landroid/widget/TextView;->measure(II)V

    iget-object v3, p0, Lcom/android/systemui/qs/customize/CustomizerTileLayout$QSCustomIconView;->mIcon:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    iget v4, p0, Lcom/android/systemui/qs/customize/CustomizerTileLayout$QSCustomIconView;->mTilePaddingBelowIconPx:I

    add-int/2addr v3, v4

    invoke-virtual {p0, v1, v3}, Lcom/android/systemui/qs/customize/CustomizerTileLayout$QSCustomIconView;->setMeasuredDimension(II)V

    return-void
.end method

.method public removeBadge(Lcom/android/systemui/qs/customize/CustomizerTileLayout$QSCustomIconView;)V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/qs/customize/CustomizerTileLayout$QSCustomIconView;->mIconBadge:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/android/systemui/qs/customize/CustomizerTileLayout$QSCustomIconView;->mIconBadge:Landroid/widget/TextView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method protected setIcon(Landroid/widget/ImageView;Lcom/android/systemui/plugins/qs/QSTile$State;)V
    .locals 4

    iget-object v2, p2, Lcom/android/systemui/plugins/qs/QSTile$State;->icon:Lcom/android/systemui/plugins/qs/QSTile$Icon;

    if-eqz v2, :cond_3

    invoke-virtual {p1}, Landroid/widget/ImageView;->isShown()Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p2, Lcom/android/systemui/plugins/qs/QSTile$State;->icon:Lcom/android/systemui/plugins/qs/QSTile$Icon;

    iget-object v3, p0, Lcom/android/systemui/qs/customize/CustomizerTileLayout$QSCustomIconView;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v3}, Lcom/android/systemui/plugins/qs/QSTile$Icon;->getDrawable(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    :goto_0
    instance-of v2, v0, Lcom/android/systemui/statusbar/ScalingDrawableWrapper;

    if-eqz v2, :cond_0

    sget-object v2, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    :cond_0
    iget-boolean v2, p2, Lcom/android/systemui/plugins/qs/QSTile$State;->isCustomTile:Z

    if-eqz v2, :cond_4

    invoke-direct {p0, v0}, Lcom/android/systemui/qs/customize/CustomizerTileLayout$QSCustomIconView;->cloneDrawable(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :goto_1
    invoke-virtual {p0}, Lcom/android/systemui/qs/customize/CustomizerTileLayout$QSCustomIconView;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f060185

    invoke-virtual {v2, v3}, Landroid/content/Context;->getColor(I)I

    move-result v1

    const-class v2, Lcom/android/systemui/coloring/QSColoringServiceManager;

    invoke-static {v2}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/coloring/QSColoringServiceManager;

    invoke-virtual {v2}, Lcom/android/systemui/coloring/QSColoringServiceManager;->isQSColoringEnabled()Z

    move-result v2

    if-eqz v2, :cond_1

    const-class v2, Lcom/android/systemui/coloring/QSColoringServiceManager;

    invoke-static {v2}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/coloring/QSColoringServiceManager;

    const/4 v3, 0x3

    invoke-virtual {v2, v3}, Lcom/android/systemui/coloring/QSColoringServiceManager;->getQSColoringColor(I)I

    move-result v1

    :cond_1
    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {p1, v1, v2}, Landroid/widget/ImageView;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    return-void

    :cond_2
    iget-object v2, p2, Lcom/android/systemui/plugins/qs/QSTile$State;->icon:Lcom/android/systemui/plugins/qs/QSTile$Icon;

    iget-object v3, p0, Lcom/android/systemui/qs/customize/CustomizerTileLayout$QSCustomIconView;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v3}, Lcom/android/systemui/plugins/qs/QSTile$Icon;->getInvisibleDrawable(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    goto :goto_0

    :cond_4
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1
.end method
