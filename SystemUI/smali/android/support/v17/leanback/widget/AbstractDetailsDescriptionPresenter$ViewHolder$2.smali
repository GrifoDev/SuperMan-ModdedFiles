.class Landroid/support/v17/leanback/widget/AbstractDetailsDescriptionPresenter$ViewHolder$2;
.super Ljava/lang/Object;
.source "AbstractDetailsDescriptionPresenter.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnPreDrawListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/support/v17/leanback/widget/AbstractDetailsDescriptionPresenter$ViewHolder;->addPreDrawListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Landroid/support/v17/leanback/widget/AbstractDetailsDescriptionPresenter$ViewHolder;


# direct methods
.method constructor <init>(Landroid/support/v17/leanback/widget/AbstractDetailsDescriptionPresenter$ViewHolder;)V
    .locals 0

    iput-object p1, p0, Landroid/support/v17/leanback/widget/AbstractDetailsDescriptionPresenter$ViewHolder$2;->this$1:Landroid/support/v17/leanback/widget/AbstractDetailsDescriptionPresenter$ViewHolder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreDraw()Z
    .locals 6

    const/4 v5, 0x1

    const/4 v4, 0x0

    iget-object v2, p0, Landroid/support/v17/leanback/widget/AbstractDetailsDescriptionPresenter$ViewHolder$2;->this$1:Landroid/support/v17/leanback/widget/AbstractDetailsDescriptionPresenter$ViewHolder;

    iget-object v2, v2, Landroid/support/v17/leanback/widget/AbstractDetailsDescriptionPresenter$ViewHolder;->mSubtitle:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getVisibility()I

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Landroid/support/v17/leanback/widget/AbstractDetailsDescriptionPresenter$ViewHolder$2;->this$1:Landroid/support/v17/leanback/widget/AbstractDetailsDescriptionPresenter$ViewHolder;

    iget-object v2, v2, Landroid/support/v17/leanback/widget/AbstractDetailsDescriptionPresenter$ViewHolder;->mSubtitle:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getTop()I

    move-result v2

    iget-object v3, p0, Landroid/support/v17/leanback/widget/AbstractDetailsDescriptionPresenter$ViewHolder$2;->this$1:Landroid/support/v17/leanback/widget/AbstractDetailsDescriptionPresenter$ViewHolder;

    iget-object v3, v3, Landroid/support/v17/leanback/widget/AbstractDetailsDescriptionPresenter$ViewHolder;->view:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v3

    if-le v2, v3, :cond_0

    iget-object v2, p0, Landroid/support/v17/leanback/widget/AbstractDetailsDescriptionPresenter$ViewHolder$2;->this$1:Landroid/support/v17/leanback/widget/AbstractDetailsDescriptionPresenter$ViewHolder;

    iget-object v2, v2, Landroid/support/v17/leanback/widget/AbstractDetailsDescriptionPresenter$ViewHolder;->mTitle:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getLineCount()I

    move-result v2

    if-le v2, v5, :cond_0

    iget-object v2, p0, Landroid/support/v17/leanback/widget/AbstractDetailsDescriptionPresenter$ViewHolder$2;->this$1:Landroid/support/v17/leanback/widget/AbstractDetailsDescriptionPresenter$ViewHolder;

    iget-object v2, v2, Landroid/support/v17/leanback/widget/AbstractDetailsDescriptionPresenter$ViewHolder;->mTitle:Landroid/widget/TextView;

    iget-object v3, p0, Landroid/support/v17/leanback/widget/AbstractDetailsDescriptionPresenter$ViewHolder$2;->this$1:Landroid/support/v17/leanback/widget/AbstractDetailsDescriptionPresenter$ViewHolder;

    iget-object v3, v3, Landroid/support/v17/leanback/widget/AbstractDetailsDescriptionPresenter$ViewHolder;->mTitle:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getLineCount()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setMaxLines(I)V

    return v4

    :cond_0
    iget-object v2, p0, Landroid/support/v17/leanback/widget/AbstractDetailsDescriptionPresenter$ViewHolder$2;->this$1:Landroid/support/v17/leanback/widget/AbstractDetailsDescriptionPresenter$ViewHolder;

    iget-object v2, v2, Landroid/support/v17/leanback/widget/AbstractDetailsDescriptionPresenter$ViewHolder;->mTitle:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getLineCount()I

    move-result v1

    if-le v1, v5, :cond_1

    iget-object v2, p0, Landroid/support/v17/leanback/widget/AbstractDetailsDescriptionPresenter$ViewHolder$2;->this$1:Landroid/support/v17/leanback/widget/AbstractDetailsDescriptionPresenter$ViewHolder;

    iget v0, v2, Landroid/support/v17/leanback/widget/AbstractDetailsDescriptionPresenter$ViewHolder;->mBodyMinLines:I

    :goto_0
    iget-object v2, p0, Landroid/support/v17/leanback/widget/AbstractDetailsDescriptionPresenter$ViewHolder$2;->this$1:Landroid/support/v17/leanback/widget/AbstractDetailsDescriptionPresenter$ViewHolder;

    iget-object v2, v2, Landroid/support/v17/leanback/widget/AbstractDetailsDescriptionPresenter$ViewHolder;->mBody:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getMaxLines()I

    move-result v2

    if-eq v2, v0, :cond_2

    iget-object v2, p0, Landroid/support/v17/leanback/widget/AbstractDetailsDescriptionPresenter$ViewHolder$2;->this$1:Landroid/support/v17/leanback/widget/AbstractDetailsDescriptionPresenter$ViewHolder;

    iget-object v2, v2, Landroid/support/v17/leanback/widget/AbstractDetailsDescriptionPresenter$ViewHolder;->mBody:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setMaxLines(I)V

    return v4

    :cond_1
    iget-object v2, p0, Landroid/support/v17/leanback/widget/AbstractDetailsDescriptionPresenter$ViewHolder$2;->this$1:Landroid/support/v17/leanback/widget/AbstractDetailsDescriptionPresenter$ViewHolder;

    iget v0, v2, Landroid/support/v17/leanback/widget/AbstractDetailsDescriptionPresenter$ViewHolder;->mBodyMaxLines:I

    goto :goto_0

    :cond_2
    iget-object v2, p0, Landroid/support/v17/leanback/widget/AbstractDetailsDescriptionPresenter$ViewHolder$2;->this$1:Landroid/support/v17/leanback/widget/AbstractDetailsDescriptionPresenter$ViewHolder;

    invoke-virtual {v2}, Landroid/support/v17/leanback/widget/AbstractDetailsDescriptionPresenter$ViewHolder;->removePreDrawListener()V

    return v5
.end method
