.class public Lcom/android/systemui/qs/customize/CustomizeTileView;
.super Lcom/android/systemui/qs/tileimpl/QSTileView;
.source "CustomizeTileView.java"


# instance fields
.field mCustomizeIcon:Lcom/android/systemui/plugins/qs/QSIconView;

.field private mLabelMinLines:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/plugins/qs/QSIconView;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/systemui/qs/tileimpl/QSTileView;-><init>(Landroid/content/Context;Lcom/android/systemui/plugins/qs/QSIconView;)V

    iput-object p2, p0, Lcom/android/systemui/qs/customize/CustomizeTileView;->mCustomizeIcon:Lcom/android/systemui/plugins/qs/QSIconView;

    return-void
.end method


# virtual methods
.method protected createLabel()V
    .locals 2

    invoke-super {p0}, Lcom/android/systemui/qs/tileimpl/QSTileView;->createLabel()V

    iget-object v0, p0, Lcom/android/systemui/qs/customize/CustomizeTileView;->mLabel:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getMinLines()I

    move-result v0

    iput v0, p0, Lcom/android/systemui/qs/customize/CustomizeTileView;->mLabelMinLines:I

    iget-object v0, p0, Lcom/android/systemui/qs/customize/CustomizeTileView;->mDivider:Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/systemui/qs/customize/CustomizeTileView;->mLabel:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public customTileHandleStateChange(Lcom/android/systemui/plugins/qs/QSTile$State;)V
    .locals 2

    const/4 v1, 0x2

    invoke-super {p0, p1}, Lcom/android/systemui/qs/tileimpl/QSTileView;->handleStateChanged(Lcom/android/systemui/plugins/qs/QSTile$State;)V

    iget-object v0, p0, Lcom/android/systemui/qs/customize/CustomizeTileView;->mIcon:Lcom/android/systemui/plugins/qs/QSIconView;

    invoke-virtual {v0, v1}, Lcom/android/systemui/plugins/qs/QSIconView;->setImportantForAccessibility(I)V

    iget-object v0, p0, Lcom/android/systemui/qs/customize/CustomizeTileView;->mLabel:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setImportantForAccessibility(I)V

    return-void
.end method

.method protected getIconView()Lcom/android/systemui/plugins/qs/QSIconView;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/qs/customize/CustomizeTileView;->mCustomizeIcon:Lcom/android/systemui/plugins/qs/QSIconView;

    return-object v0
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/android/systemui/qs/tileimpl/QSTileView;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    iget-object v0, p0, Lcom/android/systemui/qs/customize/CustomizeTileView;->mLabel:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method
