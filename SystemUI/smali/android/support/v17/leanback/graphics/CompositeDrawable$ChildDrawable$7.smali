.class final Landroid/support/v17/leanback/graphics/CompositeDrawable$ChildDrawable$7;
.super Landroid/util/Property;
.source "CompositeDrawable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v17/leanback/graphics/CompositeDrawable$ChildDrawable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/util/Property",
        "<",
        "Landroid/support/v17/leanback/graphics/CompositeDrawable$ChildDrawable;",
        "Ljava/lang/Float;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/Class;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/util/Property;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public get(Landroid/support/v17/leanback/graphics/CompositeDrawable$ChildDrawable;)Ljava/lang/Float;
    .locals 1

    invoke-virtual {p1}, Landroid/support/v17/leanback/graphics/CompositeDrawable$ChildDrawable;->getBoundsRule()Landroid/support/v17/leanback/graphics/BoundsRule;

    move-result-object v0

    iget-object v0, v0, Landroid/support/v17/leanback/graphics/BoundsRule;->left:Landroid/support/v17/leanback/graphics/BoundsRule$ValueRule;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    return-object v0

    :cond_0
    invoke-virtual {p1}, Landroid/support/v17/leanback/graphics/CompositeDrawable$ChildDrawable;->getBoundsRule()Landroid/support/v17/leanback/graphics/BoundsRule;

    move-result-object v0

    iget-object v0, v0, Landroid/support/v17/leanback/graphics/BoundsRule;->left:Landroid/support/v17/leanback/graphics/BoundsRule$ValueRule;

    invoke-virtual {v0}, Landroid/support/v17/leanback/graphics/BoundsRule$ValueRule;->getFraction()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, Landroid/support/v17/leanback/graphics/CompositeDrawable$ChildDrawable;

    invoke-virtual {p0, p1}, Landroid/support/v17/leanback/graphics/CompositeDrawable$ChildDrawable$7;->get(Landroid/support/v17/leanback/graphics/CompositeDrawable$ChildDrawable;)Ljava/lang/Float;

    move-result-object v0

    return-object v0
.end method

.method public set(Landroid/support/v17/leanback/graphics/CompositeDrawable$ChildDrawable;Ljava/lang/Float;)V
    .locals 2

    invoke-virtual {p1}, Landroid/support/v17/leanback/graphics/CompositeDrawable$ChildDrawable;->getBoundsRule()Landroid/support/v17/leanback/graphics/BoundsRule;

    move-result-object v0

    iget-object v0, v0, Landroid/support/v17/leanback/graphics/BoundsRule;->left:Landroid/support/v17/leanback/graphics/BoundsRule$ValueRule;

    if-nez v0, :cond_0

    invoke-virtual {p1}, Landroid/support/v17/leanback/graphics/CompositeDrawable$ChildDrawable;->getBoundsRule()Landroid/support/v17/leanback/graphics/BoundsRule;

    move-result-object v0

    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-static {v1}, Landroid/support/v17/leanback/graphics/BoundsRule$ValueRule;->inheritFromParent(F)Landroid/support/v17/leanback/graphics/BoundsRule$ValueRule;

    move-result-object v1

    iput-object v1, v0, Landroid/support/v17/leanback/graphics/BoundsRule;->left:Landroid/support/v17/leanback/graphics/BoundsRule$ValueRule;

    :goto_0
    invoke-virtual {p1}, Landroid/support/v17/leanback/graphics/CompositeDrawable$ChildDrawable;->recomputeBounds()V

    return-void

    :cond_0
    invoke-virtual {p1}, Landroid/support/v17/leanback/graphics/CompositeDrawable$ChildDrawable;->getBoundsRule()Landroid/support/v17/leanback/graphics/BoundsRule;

    move-result-object v0

    iget-object v0, v0, Landroid/support/v17/leanback/graphics/BoundsRule;->left:Landroid/support/v17/leanback/graphics/BoundsRule$ValueRule;

    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/support/v17/leanback/graphics/BoundsRule$ValueRule;->setFraction(F)V

    goto :goto_0
.end method

.method public bridge synthetic set(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Landroid/support/v17/leanback/graphics/CompositeDrawable$ChildDrawable;

    check-cast p2, Ljava/lang/Float;

    invoke-virtual {p0, p1, p2}, Landroid/support/v17/leanback/graphics/CompositeDrawable$ChildDrawable$7;->set(Landroid/support/v17/leanback/graphics/CompositeDrawable$ChildDrawable;Ljava/lang/Float;)V

    return-void
.end method
