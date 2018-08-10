.class Landroid/support/v17/leanback/widget/TitleView$1;
.super Landroid/support/v17/leanback/widget/TitleViewAdapter;
.source "TitleView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v17/leanback/widget/TitleView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/support/v17/leanback/widget/TitleView;


# direct methods
.method constructor <init>(Landroid/support/v17/leanback/widget/TitleView;)V
    .locals 0

    iput-object p1, p0, Landroid/support/v17/leanback/widget/TitleView$1;->this$0:Landroid/support/v17/leanback/widget/TitleView;

    invoke-direct {p0}, Landroid/support/v17/leanback/widget/TitleViewAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public getSearchAffordanceView()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Landroid/support/v17/leanback/widget/TitleView$1;->this$0:Landroid/support/v17/leanback/widget/TitleView;

    invoke-virtual {v0}, Landroid/support/v17/leanback/widget/TitleView;->getSearchAffordanceView()Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public setAnimationEnabled(Z)V
    .locals 1

    iget-object v0, p0, Landroid/support/v17/leanback/widget/TitleView$1;->this$0:Landroid/support/v17/leanback/widget/TitleView;

    invoke-virtual {v0, p1}, Landroid/support/v17/leanback/widget/TitleView;->enableAnimation(Z)V

    return-void
.end method

.method public setBadgeDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    iget-object v0, p0, Landroid/support/v17/leanback/widget/TitleView$1;->this$0:Landroid/support/v17/leanback/widget/TitleView;

    invoke-virtual {v0, p1}, Landroid/support/v17/leanback/widget/TitleView;->setBadgeDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setOnSearchClickedListener(Landroid/view/View$OnClickListener;)V
    .locals 1

    iget-object v0, p0, Landroid/support/v17/leanback/widget/TitleView$1;->this$0:Landroid/support/v17/leanback/widget/TitleView;

    invoke-virtual {v0, p1}, Landroid/support/v17/leanback/widget/TitleView;->setOnSearchClickedListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public setSearchAffordanceColors(Landroid/support/v17/leanback/widget/SearchOrbView$Colors;)V
    .locals 1

    iget-object v0, p0, Landroid/support/v17/leanback/widget/TitleView$1;->this$0:Landroid/support/v17/leanback/widget/TitleView;

    invoke-virtual {v0, p1}, Landroid/support/v17/leanback/widget/TitleView;->setSearchAffordanceColors(Landroid/support/v17/leanback/widget/SearchOrbView$Colors;)V

    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .locals 1

    iget-object v0, p0, Landroid/support/v17/leanback/widget/TitleView$1;->this$0:Landroid/support/v17/leanback/widget/TitleView;

    invoke-virtual {v0, p1}, Landroid/support/v17/leanback/widget/TitleView;->setTitle(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public updateComponentsVisibility(I)V
    .locals 1

    iget-object v0, p0, Landroid/support/v17/leanback/widget/TitleView$1;->this$0:Landroid/support/v17/leanback/widget/TitleView;

    invoke-virtual {v0, p1}, Landroid/support/v17/leanback/widget/TitleView;->updateComponentsVisibility(I)V

    return-void
.end method
