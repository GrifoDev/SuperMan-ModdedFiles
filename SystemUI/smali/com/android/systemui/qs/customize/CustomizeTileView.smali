.class public Lcom/android/systemui/qs/customize/CustomizeTileView;
.super Lcom/android/systemui/qs/QSTileView;
.source "CustomizeTileView.java"


# instance fields
.field private mAppLabel:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/qs/QSIconView;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/systemui/qs/QSTileView;-><init>(Landroid/content/Context;Lcom/android/systemui/qs/QSIconView;)V

    return-void
.end method


# virtual methods
.method protected createDivider()V
    .locals 0

    return-void
.end method

.method protected createLabel()V
    .locals 2

    const/4 v1, 0x0

    invoke-super {p0}, Lcom/android/systemui/qs/QSTileView;->createLabel()V

    iget-object v0, p0, Lcom/android/systemui/qs/customize/CustomizeTileView;->mLabel:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setClickable(Z)V

    iget-object v0, p0, Lcom/android/systemui/qs/customize/CustomizeTileView;->mLabel:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setFocusable(Z)V

    return-void
.end method

.method public customTileHandleStateChange(Lcom/android/systemui/qs/QSTile$State;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/android/systemui/qs/QSTileView;->handleStateChanged(Lcom/android/systemui/qs/QSTile$State;)V

    return-void
.end method

.method public getAppLabel()Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/qs/customize/CustomizeTileView;->mAppLabel:Landroid/widget/TextView;

    return-object v0
.end method

.method public setAppLabel(Ljava/lang/CharSequence;)V
    .locals 0

    return-void
.end method

.method public setShowAppLabel(Z)V
    .locals 0

    return-void
.end method

.method public updateShowButtonBackground()V
    .locals 0

    return-void
.end method
