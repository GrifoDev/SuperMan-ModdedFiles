.class public abstract Landroid/support/v17/leanback/widget/TitleViewAdapter;
.super Ljava/lang/Object;
.source "TitleViewAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v17/leanback/widget/TitleViewAdapter$Provider;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract getSearchAffordanceView()Landroid/view/View;
.end method

.method public setAnimationEnabled(Z)V
    .locals 0

    return-void
.end method

.method public setBadgeDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    return-void
.end method

.method public setOnSearchClickedListener(Landroid/view/View$OnClickListener;)V
    .locals 1

    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/TitleViewAdapter;->getSearchAffordanceView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    return-void
.end method

.method public setSearchAffordanceColors(Landroid/support/v17/leanback/widget/SearchOrbView$Colors;)V
    .locals 0

    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .locals 0

    return-void
.end method

.method public updateComponentsVisibility(I)V
    .locals 0

    return-void
.end method
