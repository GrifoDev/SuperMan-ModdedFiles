.class Landroid/support/v17/leanback/widget/AbstractMediaItemPresenter$ViewHolder$3;
.super Ljava/lang/Object;
.source "AbstractMediaItemPresenter.java"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/support/v17/leanback/widget/AbstractMediaItemPresenter$ViewHolder;->onBindRowActions()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Landroid/support/v17/leanback/widget/AbstractMediaItemPresenter$ViewHolder;


# direct methods
.method constructor <init>(Landroid/support/v17/leanback/widget/AbstractMediaItemPresenter$ViewHolder;)V
    .locals 0

    iput-object p1, p0, Landroid/support/v17/leanback/widget/AbstractMediaItemPresenter$ViewHolder$3;->this$1:Landroid/support/v17/leanback/widget/AbstractMediaItemPresenter$ViewHolder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFocusChange(Landroid/view/View;Z)V
    .locals 4

    iget-object v0, p0, Landroid/support/v17/leanback/widget/AbstractMediaItemPresenter$ViewHolder$3;->this$1:Landroid/support/v17/leanback/widget/AbstractMediaItemPresenter$ViewHolder;

    iget-object v1, p0, Landroid/support/v17/leanback/widget/AbstractMediaItemPresenter$ViewHolder$3;->this$1:Landroid/support/v17/leanback/widget/AbstractMediaItemPresenter$ViewHolder;

    iget-object v1, v1, Landroid/support/v17/leanback/widget/AbstractMediaItemPresenter$ViewHolder;->mSelectorView:Landroid/view/View;

    iget-object v2, p0, Landroid/support/v17/leanback/widget/AbstractMediaItemPresenter$ViewHolder$3;->this$1:Landroid/support/v17/leanback/widget/AbstractMediaItemPresenter$ViewHolder;

    iget-object v2, v2, Landroid/support/v17/leanback/widget/AbstractMediaItemPresenter$ViewHolder;->mFocusViewAnimator:Landroid/animation/ValueAnimator;

    const/4 v3, 0x0

    invoke-static {v1, p1, v2, v3}, Landroid/support/v17/leanback/widget/AbstractMediaItemPresenter;->updateSelector(Landroid/view/View;Landroid/view/View;Landroid/animation/ValueAnimator;Z)Landroid/animation/ValueAnimator;

    move-result-object v1

    iput-object v1, v0, Landroid/support/v17/leanback/widget/AbstractMediaItemPresenter$ViewHolder;->mFocusViewAnimator:Landroid/animation/ValueAnimator;

    return-void
.end method
