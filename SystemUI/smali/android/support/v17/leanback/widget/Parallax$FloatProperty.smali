.class public Landroid/support/v17/leanback/widget/Parallax$FloatProperty;
.super Landroid/util/Property;
.source "Parallax.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v17/leanback/widget/Parallax;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "FloatProperty"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/util/Property",
        "<",
        "Landroid/support/v17/leanback/widget/Parallax;",
        "Ljava/lang/Float;",
        ">;"
    }
.end annotation


# instance fields
.field private final mIndex:I


# virtual methods
.method public final get(Landroid/support/v17/leanback/widget/Parallax;)Ljava/lang/Float;
    .locals 1

    iget v0, p0, Landroid/support/v17/leanback/widget/Parallax$FloatProperty;->mIndex:I

    invoke-virtual {p1, v0}, Landroid/support/v17/leanback/widget/Parallax;->getFloatPropertyValue(I)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, Landroid/support/v17/leanback/widget/Parallax;

    invoke-virtual {p0, p1}, Landroid/support/v17/leanback/widget/Parallax$FloatProperty;->get(Landroid/support/v17/leanback/widget/Parallax;)Ljava/lang/Float;

    move-result-object v0

    return-object v0
.end method

.method public final getIndex()I
    .locals 1

    iget v0, p0, Landroid/support/v17/leanback/widget/Parallax$FloatProperty;->mIndex:I

    return v0
.end method

.method public final set(Landroid/support/v17/leanback/widget/Parallax;Ljava/lang/Float;)V
    .locals 2

    iget v0, p0, Landroid/support/v17/leanback/widget/Parallax$FloatProperty;->mIndex:I

    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/support/v17/leanback/widget/Parallax;->setFloatPropertyValue(IF)V

    return-void
.end method

.method public bridge synthetic set(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Landroid/support/v17/leanback/widget/Parallax;

    check-cast p2, Ljava/lang/Float;

    invoke-virtual {p0, p1, p2}, Landroid/support/v17/leanback/widget/Parallax$FloatProperty;->set(Landroid/support/v17/leanback/widget/Parallax;Ljava/lang/Float;)V

    return-void
.end method
