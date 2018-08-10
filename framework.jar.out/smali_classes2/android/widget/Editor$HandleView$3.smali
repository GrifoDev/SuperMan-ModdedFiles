.class Landroid/widget/Editor$HandleView$3;
.super Landroid/animation/AnimatorListenerAdapter;
.source "Editor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/widget/Editor$HandleView;->getChangeSizeAnimator(Landroid/graphics/Rect;Landroid/graphics/Rect;)Landroid/animation/ObjectAnimator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Landroid/widget/Editor$HandleView;

.field final synthetic val$targetRect:Landroid/graphics/Rect;


# direct methods
.method constructor <init>(Landroid/widget/Editor$HandleView;Landroid/graphics/Rect;)V
    .locals 0

    iput-object p1, p0, Landroid/widget/Editor$HandleView$3;->this$1:Landroid/widget/Editor$HandleView;

    iput-object p2, p0, Landroid/widget/Editor$HandleView$3;->val$targetRect:Landroid/graphics/Rect;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 4

    iget-object v0, p0, Landroid/widget/Editor$HandleView$3;->this$1:Landroid/widget/Editor$HandleView;

    iget-object v0, v0, Landroid/widget/Editor$HandleView;->mDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Landroid/widget/Editor$HandleView$3;->this$1:Landroid/widget/Editor$HandleView;

    iget-object v2, p0, Landroid/widget/Editor$HandleView$3;->val$targetRect:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    iget-object v3, p0, Landroid/widget/Editor$HandleView$3;->val$targetRect:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v3

    invoke-static {v1, v2, v3}, Landroid/widget/Editor$HandleView;->-wrap0(Landroid/widget/Editor$HandleView;II)Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    iget-object v0, p0, Landroid/widget/Editor$HandleView$3;->this$1:Landroid/widget/Editor$HandleView;

    invoke-virtual {v0}, Landroid/widget/Editor$HandleView;->requestLayout()V

    iget-object v0, p0, Landroid/widget/Editor$HandleView$3;->this$1:Landroid/widget/Editor$HandleView;

    invoke-virtual {v0}, Landroid/widget/Editor$HandleView;->invalidate()V

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;Z)V
    .locals 1

    iget-object v0, p0, Landroid/widget/Editor$HandleView$3;->this$1:Landroid/widget/Editor$HandleView;

    invoke-virtual {v0}, Landroid/widget/Editor$HandleView;->requestLayout()V

    return-void
.end method
