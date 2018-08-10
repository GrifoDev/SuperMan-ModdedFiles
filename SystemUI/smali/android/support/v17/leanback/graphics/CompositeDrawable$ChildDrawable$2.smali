.class final Landroid/support/v17/leanback/graphics/CompositeDrawable$ChildDrawable$2;
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
        "Ljava/lang/Integer;",
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
.method public get(Landroid/support/v17/leanback/graphics/CompositeDrawable$ChildDrawable;)Ljava/lang/Integer;
    .locals 1

    invoke-virtual {p1}, Landroid/support/v17/leanback/graphics/CompositeDrawable$ChildDrawable;->getBoundsRule()Landroid/support/v17/leanback/graphics/BoundsRule;

    move-result-object v0

    iget-object v0, v0, Landroid/support/v17/leanback/graphics/BoundsRule;->bottom:Landroid/support/v17/leanback/graphics/BoundsRule$ValueRule;

    if-nez v0, :cond_0

    iget-object v0, p1, Landroid/support/v17/leanback/graphics/CompositeDrawable$ChildDrawable;->mParent:Landroid/support/v17/leanback/graphics/CompositeDrawable;

    invoke-virtual {v0}, Landroid/support/v17/leanback/graphics/CompositeDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    :cond_0
    invoke-virtual {p1}, Landroid/support/v17/leanback/graphics/CompositeDrawable$ChildDrawable;->getBoundsRule()Landroid/support/v17/leanback/graphics/BoundsRule;

    move-result-object v0

    iget-object v0, v0, Landroid/support/v17/leanback/graphics/BoundsRule;->bottom:Landroid/support/v17/leanback/graphics/BoundsRule$ValueRule;

    invoke-virtual {v0}, Landroid/support/v17/leanback/graphics/BoundsRule$ValueRule;->getAbsoluteValue()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, Landroid/support/v17/leanback/graphics/CompositeDrawable$ChildDrawable;

    invoke-virtual {p0, p1}, Landroid/support/v17/leanback/graphics/CompositeDrawable$ChildDrawable$2;->get(Landroid/support/v17/leanback/graphics/CompositeDrawable$ChildDrawable;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public set(Landroid/support/v17/leanback/graphics/CompositeDrawable$ChildDrawable;Ljava/lang/Integer;)V
    .locals 2

    invoke-virtual {p1}, Landroid/support/v17/leanback/graphics/CompositeDrawable$ChildDrawable;->getBoundsRule()Landroid/support/v17/leanback/graphics/BoundsRule;

    move-result-object v0

    iget-object v0, v0, Landroid/support/v17/leanback/graphics/BoundsRule;->bottom:Landroid/support/v17/leanback/graphics/BoundsRule$ValueRule;

    if-nez v0, :cond_0

    invoke-virtual {p1}, Landroid/support/v17/leanback/graphics/CompositeDrawable$ChildDrawable;->getBoundsRule()Landroid/support/v17/leanback/graphics/BoundsRule;

    move-result-object v0

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v1}, Landroid/support/v17/leanback/graphics/BoundsRule$ValueRule;->absoluteValue(I)Landroid/support/v17/leanback/graphics/BoundsRule$ValueRule;

    move-result-object v1

    iput-object v1, v0, Landroid/support/v17/leanback/graphics/BoundsRule;->bottom:Landroid/support/v17/leanback/graphics/BoundsRule$ValueRule;

    :goto_0
    invoke-virtual {p1}, Landroid/support/v17/leanback/graphics/CompositeDrawable$ChildDrawable;->recomputeBounds()V

    return-void

    :cond_0
    invoke-virtual {p1}, Landroid/support/v17/leanback/graphics/CompositeDrawable$ChildDrawable;->getBoundsRule()Landroid/support/v17/leanback/graphics/BoundsRule;

    move-result-object v0

    iget-object v0, v0, Landroid/support/v17/leanback/graphics/BoundsRule;->bottom:Landroid/support/v17/leanback/graphics/BoundsRule$ValueRule;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/support/v17/leanback/graphics/BoundsRule$ValueRule;->setAbsoluteValue(I)V

    goto :goto_0
.end method

.method public bridge synthetic set(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Landroid/support/v17/leanback/graphics/CompositeDrawable$ChildDrawable;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p0, p1, p2}, Landroid/support/v17/leanback/graphics/CompositeDrawable$ChildDrawable$2;->set(Landroid/support/v17/leanback/graphics/CompositeDrawable$ChildDrawable;Ljava/lang/Integer;)V

    return-void
.end method
