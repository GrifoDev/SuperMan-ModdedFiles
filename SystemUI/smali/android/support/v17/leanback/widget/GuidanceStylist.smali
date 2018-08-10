.class public Landroid/support/v17/leanback/widget/GuidanceStylist;
.super Ljava/lang/Object;
.source "GuidanceStylist.java"

# interfaces
.implements Landroid/support/v17/leanback/widget/FragmentAnimationProvider;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v17/leanback/widget/GuidanceStylist$Guidance;
    }
.end annotation


# instance fields
.field private mBreadcrumbView:Landroid/widget/TextView;

.field private mDescriptionView:Landroid/widget/TextView;

.field private mGuidanceContainer:Landroid/view/View;

.field private mIconView:Landroid/widget/ImageView;

.field private mTitleView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/support/v17/leanback/widget/GuidanceStylist$Guidance;)Landroid/view/View;
    .locals 6

    const/16 v5, 0xa

    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/GuidanceStylist;->onProvideLayoutId()I

    move-result v3

    const/4 v4, 0x0

    invoke-virtual {p1, v3, p2, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    sget v3, Landroid/support/v17/leanback/R$id;->guidance_title:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Landroid/support/v17/leanback/widget/GuidanceStylist;->mTitleView:Landroid/widget/TextView;

    sget v3, Landroid/support/v17/leanback/R$id;->guidance_breadcrumb:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Landroid/support/v17/leanback/widget/GuidanceStylist;->mBreadcrumbView:Landroid/widget/TextView;

    sget v3, Landroid/support/v17/leanback/R$id;->guidance_description:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Landroid/support/v17/leanback/widget/GuidanceStylist;->mDescriptionView:Landroid/widget/TextView;

    sget v3, Landroid/support/v17/leanback/R$id;->guidance_icon:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, p0, Landroid/support/v17/leanback/widget/GuidanceStylist;->mIconView:Landroid/widget/ImageView;

    sget v3, Landroid/support/v17/leanback/R$id;->guidance_container:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Landroid/support/v17/leanback/widget/GuidanceStylist;->mGuidanceContainer:Landroid/view/View;

    iget-object v3, p0, Landroid/support/v17/leanback/widget/GuidanceStylist;->mTitleView:Landroid/widget/TextView;

    if-eqz v3, :cond_0

    iget-object v3, p0, Landroid/support/v17/leanback/widget/GuidanceStylist;->mTitleView:Landroid/widget/TextView;

    invoke-virtual {p3}, Landroid/support/v17/leanback/widget/GuidanceStylist$Guidance;->getTitle()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    iget-object v3, p0, Landroid/support/v17/leanback/widget/GuidanceStylist;->mBreadcrumbView:Landroid/widget/TextView;

    if-eqz v3, :cond_1

    iget-object v3, p0, Landroid/support/v17/leanback/widget/GuidanceStylist;->mBreadcrumbView:Landroid/widget/TextView;

    invoke-virtual {p3}, Landroid/support/v17/leanback/widget/GuidanceStylist$Guidance;->getBreadcrumb()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    iget-object v3, p0, Landroid/support/v17/leanback/widget/GuidanceStylist;->mDescriptionView:Landroid/widget/TextView;

    if-eqz v3, :cond_2

    iget-object v3, p0, Landroid/support/v17/leanback/widget/GuidanceStylist;->mDescriptionView:Landroid/widget/TextView;

    invoke-virtual {p3}, Landroid/support/v17/leanback/widget/GuidanceStylist$Guidance;->getDescription()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_2
    iget-object v3, p0, Landroid/support/v17/leanback/widget/GuidanceStylist;->mIconView:Landroid/widget/ImageView;

    if-eqz v3, :cond_3

    invoke-virtual {p3}, Landroid/support/v17/leanback/widget/GuidanceStylist$Guidance;->getIconDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    if-eqz v3, :cond_8

    iget-object v3, p0, Landroid/support/v17/leanback/widget/GuidanceStylist;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {p3}, Landroid/support/v17/leanback/widget/GuidanceStylist$Guidance;->getIconDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_3
    :goto_0
    iget-object v3, p0, Landroid/support/v17/leanback/widget/GuidanceStylist;->mGuidanceContainer:Landroid/view/View;

    if-eqz v3, :cond_7

    iget-object v3, p0, Landroid/support/v17/leanback/widget/GuidanceStylist;->mGuidanceContainer:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_7

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3}, Landroid/support/v17/leanback/widget/GuidanceStylist$Guidance;->getBreadcrumb()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_4

    invoke-virtual {p3}, Landroid/support/v17/leanback/widget/GuidanceStylist$Guidance;->getBreadcrumb()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_4
    invoke-virtual {p3}, Landroid/support/v17/leanback/widget/GuidanceStylist$Guidance;->getTitle()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_5

    invoke-virtual {p3}, Landroid/support/v17/leanback/widget/GuidanceStylist$Guidance;->getTitle()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_5
    invoke-virtual {p3}, Landroid/support/v17/leanback/widget/GuidanceStylist$Guidance;->getDescription()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_6

    invoke-virtual {p3}, Landroid/support/v17/leanback/widget/GuidanceStylist$Guidance;->getDescription()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_6
    iget-object v3, p0, Landroid/support/v17/leanback/widget/GuidanceStylist;->mGuidanceContainer:Landroid/view/View;

    invoke-virtual {v3, v0}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    :cond_7
    return-object v2

    :cond_8
    iget-object v3, p0, Landroid/support/v17/leanback/widget/GuidanceStylist;->mIconView:Landroid/widget/ImageView;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0
.end method

.method public onDestroyView()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/v17/leanback/widget/GuidanceStylist;->mBreadcrumbView:Landroid/widget/TextView;

    iput-object v0, p0, Landroid/support/v17/leanback/widget/GuidanceStylist;->mDescriptionView:Landroid/widget/TextView;

    iput-object v0, p0, Landroid/support/v17/leanback/widget/GuidanceStylist;->mIconView:Landroid/widget/ImageView;

    iput-object v0, p0, Landroid/support/v17/leanback/widget/GuidanceStylist;->mTitleView:Landroid/widget/TextView;

    return-void
.end method

.method public onImeAppearing(Ljava/util/List;)V
    .locals 0
    .param p1    # Ljava/util/List;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/animation/Animator;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method public onImeDisappearing(Ljava/util/List;)V
    .locals 0
    .param p1    # Ljava/util/List;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/animation/Animator;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method public onProvideLayoutId()I
    .locals 1

    sget v0, Landroid/support/v17/leanback/R$layout;->lb_guidance:I

    return v0
.end method
