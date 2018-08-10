.class Landroid/support/v7/app/MediaRouteExpandCollapseButton;
.super Landroid/widget/ImageButton;
.source "MediaRouteExpandCollapseButton.java"


# instance fields
.field final mCollapseAnimationDrawable:Landroid/graphics/drawable/AnimationDrawable;

.field final mCollapseGroupDescription:Ljava/lang/String;

.field final mExpandAnimationDrawable:Landroid/graphics/drawable/AnimationDrawable;

.field final mExpandGroupDescription:Ljava/lang/String;

.field mIsGroupExpanded:Z

.field mListener:Landroid/view/View$OnClickListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/support/v7/app/MediaRouteExpandCollapseButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroid/support/v7/app/MediaRouteExpandCollapseButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ImageButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    sget v1, Landroid/support/v7/mediarouter/R$drawable;->mr_group_expand:I

    invoke-static {p1, v1}, Landroid/support/v4/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    check-cast v1, Landroid/graphics/drawable/AnimationDrawable;

    iput-object v1, p0, Landroid/support/v7/app/MediaRouteExpandCollapseButton;->mExpandAnimationDrawable:Landroid/graphics/drawable/AnimationDrawable;

    sget v1, Landroid/support/v7/mediarouter/R$drawable;->mr_group_collapse:I

    invoke-static {p1, v1}, Landroid/support/v4/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    check-cast v1, Landroid/graphics/drawable/AnimationDrawable;

    iput-object v1, p0, Landroid/support/v7/app/MediaRouteExpandCollapseButton;->mCollapseAnimationDrawable:Landroid/graphics/drawable/AnimationDrawable;

    new-instance v0, Landroid/graphics/PorterDuffColorFilter;

    invoke-static {p1, p3}, Landroid/support/v7/app/MediaRouterThemeHelper;->getControllerColor(Landroid/content/Context;I)I

    move-result v1

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v0, v1, v2}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    iget-object v1, p0, Landroid/support/v7/app/MediaRouteExpandCollapseButton;->mExpandAnimationDrawable:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/AnimationDrawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    iget-object v1, p0, Landroid/support/v7/app/MediaRouteExpandCollapseButton;->mCollapseAnimationDrawable:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/AnimationDrawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    sget v1, Landroid/support/v7/mediarouter/R$string;->mr_controller_expand_group:I

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Landroid/support/v7/app/MediaRouteExpandCollapseButton;->mExpandGroupDescription:Ljava/lang/String;

    sget v1, Landroid/support/v7/mediarouter/R$string;->mr_controller_collapse_group:I

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Landroid/support/v7/app/MediaRouteExpandCollapseButton;->mCollapseGroupDescription:Ljava/lang/String;

    iget-object v1, p0, Landroid/support/v7/app/MediaRouteExpandCollapseButton;->mExpandAnimationDrawable:Landroid/graphics/drawable/AnimationDrawable;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/AnimationDrawable;->getFrame(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/support/v7/app/MediaRouteExpandCollapseButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v1, p0, Landroid/support/v7/app/MediaRouteExpandCollapseButton;->mExpandGroupDescription:Ljava/lang/String;

    invoke-virtual {p0, v1}, Landroid/support/v7/app/MediaRouteExpandCollapseButton;->setContentDescription(Ljava/lang/CharSequence;)V

    new-instance v1, Landroid/support/v7/app/MediaRouteExpandCollapseButton$1;

    invoke-direct {v1, p0}, Landroid/support/v7/app/MediaRouteExpandCollapseButton$1;-><init>(Landroid/support/v7/app/MediaRouteExpandCollapseButton;)V

    invoke-super {p0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method public setOnClickListener(Landroid/view/View$OnClickListener;)V
    .locals 0

    iput-object p1, p0, Landroid/support/v7/app/MediaRouteExpandCollapseButton;->mListener:Landroid/view/View$OnClickListener;

    return-void
.end method
