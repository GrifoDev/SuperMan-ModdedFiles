.class public Landroid/support/v17/leanback/widget/GuidedActionsStylist$ViewHolder;
.super Landroid/support/v7/widget/RecyclerView$ViewHolder;
.source "GuidedActionsStylist.java"

# interfaces
.implements Landroid/support/v17/leanback/widget/FacetProvider;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v17/leanback/widget/GuidedActionsStylist;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ViewHolder"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v17/leanback/widget/GuidedActionsStylist$ViewHolder$1;
    }
.end annotation


# instance fields
.field mAction:Landroid/support/v17/leanback/widget/GuidedAction;

.field mActivatorView:Landroid/view/View;

.field mCheckmarkView:Landroid/widget/ImageView;

.field mChevronView:Landroid/widget/ImageView;

.field private mContentView:Landroid/view/View;

.field final mDelegate:Landroid/view/View$AccessibilityDelegate;

.field mDescriptionView:Landroid/widget/TextView;

.field mEditingMode:I

.field mIconView:Landroid/widget/ImageView;

.field private final mIsSubAction:Z

.field mPressAnimator:Landroid/animation/Animator;

.field mTitleView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/view/View;Z)V
    .locals 1

    invoke-direct {p0, p1}, Landroid/support/v7/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    const/4 v0, 0x0

    iput v0, p0, Landroid/support/v17/leanback/widget/GuidedActionsStylist$ViewHolder;->mEditingMode:I

    new-instance v0, Landroid/support/v17/leanback/widget/GuidedActionsStylist$ViewHolder$1;

    invoke-direct {v0, p0}, Landroid/support/v17/leanback/widget/GuidedActionsStylist$ViewHolder$1;-><init>(Landroid/support/v17/leanback/widget/GuidedActionsStylist$ViewHolder;)V

    iput-object v0, p0, Landroid/support/v17/leanback/widget/GuidedActionsStylist$ViewHolder;->mDelegate:Landroid/view/View$AccessibilityDelegate;

    sget v0, Landroid/support/v17/leanback/R$id;->guidedactions_item_content:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v17/leanback/widget/GuidedActionsStylist$ViewHolder;->mContentView:Landroid/view/View;

    sget v0, Landroid/support/v17/leanback/R$id;->guidedactions_item_title:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Landroid/support/v17/leanback/widget/GuidedActionsStylist$ViewHolder;->mTitleView:Landroid/widget/TextView;

    sget v0, Landroid/support/v17/leanback/R$id;->guidedactions_activator_item:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v17/leanback/widget/GuidedActionsStylist$ViewHolder;->mActivatorView:Landroid/view/View;

    sget v0, Landroid/support/v17/leanback/R$id;->guidedactions_item_description:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Landroid/support/v17/leanback/widget/GuidedActionsStylist$ViewHolder;->mDescriptionView:Landroid/widget/TextView;

    sget v0, Landroid/support/v17/leanback/R$id;->guidedactions_item_icon:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Landroid/support/v17/leanback/widget/GuidedActionsStylist$ViewHolder;->mIconView:Landroid/widget/ImageView;

    sget v0, Landroid/support/v17/leanback/R$id;->guidedactions_item_checkmark:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Landroid/support/v17/leanback/widget/GuidedActionsStylist$ViewHolder;->mCheckmarkView:Landroid/widget/ImageView;

    sget v0, Landroid/support/v17/leanback/R$id;->guidedactions_item_chevron:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Landroid/support/v17/leanback/widget/GuidedActionsStylist$ViewHolder;->mChevronView:Landroid/widget/ImageView;

    iput-boolean p2, p0, Landroid/support/v17/leanback/widget/GuidedActionsStylist$ViewHolder;->mIsSubAction:Z

    iget-object v0, p0, Landroid/support/v17/leanback/widget/GuidedActionsStylist$ViewHolder;->mDelegate:Landroid/view/View$AccessibilityDelegate;

    invoke-virtual {p1, v0}, Landroid/view/View;->setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V

    return-void
.end method


# virtual methods
.method public getAction()Landroid/support/v17/leanback/widget/GuidedAction;
    .locals 1

    iget-object v0, p0, Landroid/support/v17/leanback/widget/GuidedActionsStylist$ViewHolder;->mAction:Landroid/support/v17/leanback/widget/GuidedAction;

    return-object v0
.end method

.method public getDescriptionView()Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Landroid/support/v17/leanback/widget/GuidedActionsStylist$ViewHolder;->mDescriptionView:Landroid/widget/TextView;

    return-object v0
.end method

.method public getEditableDescriptionView()Landroid/widget/EditText;
    .locals 1

    iget-object v0, p0, Landroid/support/v17/leanback/widget/GuidedActionsStylist$ViewHolder;->mDescriptionView:Landroid/widget/TextView;

    instance-of v0, v0, Landroid/widget/EditText;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v17/leanback/widget/GuidedActionsStylist$ViewHolder;->mDescriptionView:Landroid/widget/TextView;

    check-cast v0, Landroid/widget/EditText;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getEditableTitleView()Landroid/widget/EditText;
    .locals 1

    iget-object v0, p0, Landroid/support/v17/leanback/widget/GuidedActionsStylist$ViewHolder;->mTitleView:Landroid/widget/TextView;

    instance-of v0, v0, Landroid/widget/EditText;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v17/leanback/widget/GuidedActionsStylist$ViewHolder;->mTitleView:Landroid/widget/TextView;

    check-cast v0, Landroid/widget/EditText;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getEditingView()Landroid/view/View;
    .locals 1

    iget v0, p0, Landroid/support/v17/leanback/widget/GuidedActionsStylist$ViewHolder;->mEditingMode:I

    packed-switch v0, :pswitch_data_0

    const/4 v0, 0x0

    return-object v0

    :pswitch_0
    iget-object v0, p0, Landroid/support/v17/leanback/widget/GuidedActionsStylist$ViewHolder;->mTitleView:Landroid/widget/TextView;

    return-object v0

    :pswitch_1
    iget-object v0, p0, Landroid/support/v17/leanback/widget/GuidedActionsStylist$ViewHolder;->mDescriptionView:Landroid/widget/TextView;

    return-object v0

    :pswitch_2
    iget-object v0, p0, Landroid/support/v17/leanback/widget/GuidedActionsStylist$ViewHolder;->mActivatorView:Landroid/view/View;

    return-object v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public getFacet(Ljava/lang/Class;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    const-class v0, Landroid/support/v17/leanback/widget/ItemAlignmentFacet;

    if-ne p1, v0, :cond_0

    sget-object v0, Landroid/support/v17/leanback/widget/GuidedActionsStylist;->sGuidedActionItemAlignFacet:Landroid/support/v17/leanback/widget/ItemAlignmentFacet;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getTitleView()Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Landroid/support/v17/leanback/widget/GuidedActionsStylist$ViewHolder;->mTitleView:Landroid/widget/TextView;

    return-object v0
.end method

.method public isInEditing()Z
    .locals 2

    const/4 v0, 0x0

    iget v1, p0, Landroid/support/v17/leanback/widget/GuidedActionsStylist$ViewHolder;->mEditingMode:I

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public isInEditingText()Z
    .locals 3

    const/4 v0, 0x1

    iget v1, p0, Landroid/support/v17/leanback/widget/GuidedActionsStylist$ViewHolder;->mEditingMode:I

    if-eq v1, v0, :cond_0

    iget v1, p0, Landroid/support/v17/leanback/widget/GuidedActionsStylist$ViewHolder;->mEditingMode:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSubAction()Z
    .locals 1

    iget-boolean v0, p0, Landroid/support/v17/leanback/widget/GuidedActionsStylist$ViewHolder;->mIsSubAction:Z

    return v0
.end method

.method press(Z)V
    .locals 5

    const/4 v4, 0x0

    iget-object v3, p0, Landroid/support/v17/leanback/widget/GuidedActionsStylist$ViewHolder;->mPressAnimator:Landroid/animation/Animator;

    if-eqz v3, :cond_0

    iget-object v3, p0, Landroid/support/v17/leanback/widget/GuidedActionsStylist$ViewHolder;->mPressAnimator:Landroid/animation/Animator;

    invoke-virtual {v3}, Landroid/animation/Animator;->cancel()V

    iput-object v4, p0, Landroid/support/v17/leanback/widget/GuidedActionsStylist$ViewHolder;->mPressAnimator:Landroid/animation/Animator;

    :cond_0
    if-eqz p1, :cond_2

    sget v1, Landroid/support/v17/leanback/R$attr;->guidedActionPressedAnimation:I

    :goto_0
    iget-object v3, p0, Landroid/support/v17/leanback/widget/GuidedActionsStylist$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v2, Landroid/util/TypedValue;

    invoke-direct {v2}, Landroid/util/TypedValue;-><init>()V

    invoke-virtual {v0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v3, v1, v2, v4}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    move-result v3

    if-eqz v3, :cond_1

    iget v3, v2, Landroid/util/TypedValue;->resourceId:I

    invoke-static {v0, v3}, Landroid/animation/AnimatorInflater;->loadAnimator(Landroid/content/Context;I)Landroid/animation/Animator;

    move-result-object v3

    iput-object v3, p0, Landroid/support/v17/leanback/widget/GuidedActionsStylist$ViewHolder;->mPressAnimator:Landroid/animation/Animator;

    iget-object v3, p0, Landroid/support/v17/leanback/widget/GuidedActionsStylist$ViewHolder;->mPressAnimator:Landroid/animation/Animator;

    iget-object v4, p0, Landroid/support/v17/leanback/widget/GuidedActionsStylist$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v3, v4}, Landroid/animation/Animator;->setTarget(Ljava/lang/Object;)V

    iget-object v3, p0, Landroid/support/v17/leanback/widget/GuidedActionsStylist$ViewHolder;->mPressAnimator:Landroid/animation/Animator;

    new-instance v4, Landroid/support/v17/leanback/widget/GuidedActionsStylist$ViewHolder$2;

    invoke-direct {v4, p0}, Landroid/support/v17/leanback/widget/GuidedActionsStylist$ViewHolder$2;-><init>(Landroid/support/v17/leanback/widget/GuidedActionsStylist$ViewHolder;)V

    invoke-virtual {v3, v4}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object v3, p0, Landroid/support/v17/leanback/widget/GuidedActionsStylist$ViewHolder;->mPressAnimator:Landroid/animation/Animator;

    invoke-virtual {v3}, Landroid/animation/Animator;->start()V

    :cond_1
    return-void

    :cond_2
    sget v1, Landroid/support/v17/leanback/R$attr;->guidedActionUnpressedAnimation:I

    goto :goto_0
.end method

.method setActivated(Z)V
    .locals 2

    iget-object v0, p0, Landroid/support/v17/leanback/widget/GuidedActionsStylist$ViewHolder;->mActivatorView:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setActivated(Z)V

    iget-object v0, p0, Landroid/support/v17/leanback/widget/GuidedActionsStylist$ViewHolder;->itemView:Landroid/view/View;

    instance-of v0, v0, Landroid/support/v17/leanback/widget/GuidedActionItemContainer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v17/leanback/widget/GuidedActionsStylist$ViewHolder;->itemView:Landroid/view/View;

    check-cast v0, Landroid/support/v17/leanback/widget/GuidedActionItemContainer;

    xor-int/lit8 v1, p1, 0x1

    invoke-virtual {v0, v1}, Landroid/support/v17/leanback/widget/GuidedActionItemContainer;->setFocusOutAllowed(Z)V

    :cond_0
    return-void
.end method
