.class public Lcom/android/settings/widget/FloatingActionButton;
.super Landroid/widget/ImageView;
.source "FloatingActionButton.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    sget-object v0, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p0, v0}, Lcom/android/settings/widget/FloatingActionButton;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    const v0, 0x7f010025

    invoke-static {p1, v0}, Landroid/animation/AnimatorInflater;->loadStateListAnimator(Landroid/content/Context;I)Landroid/animation/StateListAnimator;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/settings/widget/FloatingActionButton;->setStateListAnimator(Landroid/animation/StateListAnimator;)V

    new-instance v0, Lcom/android/settings/widget/FloatingActionButton$1;

    invoke-direct {v0, p0}, Lcom/android/settings/widget/FloatingActionButton$1;-><init>(Lcom/android/settings/widget/FloatingActionButton;)V

    invoke-virtual {p0, v0}, Lcom/android/settings/widget/FloatingActionButton;->setOutlineProvider(Landroid/view/ViewOutlineProvider;)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/settings/widget/FloatingActionButton;->setClipToOutline(Z)V

    return-void
.end method


# virtual methods
.method protected onSizeChanged(IIII)V
    .locals 0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/ImageView;->onSizeChanged(IIII)V

    invoke-virtual {p0}, Lcom/android/settings/widget/FloatingActionButton;->invalidateOutline()V

    return-void
.end method
