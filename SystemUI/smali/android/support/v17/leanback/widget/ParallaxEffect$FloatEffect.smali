.class final Landroid/support/v17/leanback/widget/ParallaxEffect$FloatEffect;
.super Landroid/support/v17/leanback/widget/ParallaxEffect;
.source "ParallaxEffect.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v17/leanback/widget/ParallaxEffect;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "FloatEffect"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/support/v17/leanback/widget/ParallaxEffect;-><init>()V

    return-void
.end method


# virtual methods
.method calculateDirectValue(Landroid/support/v17/leanback/widget/Parallax;)Ljava/lang/Number;
    .locals 8

    const/4 v7, 0x1

    const/4 v6, 0x0

    iget-object v4, p0, Landroid/support/v17/leanback/widget/ParallaxEffect$FloatEffect;->mMarkerValues:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    const/4 v5, 0x2

    if-eq v4, v5, :cond_0

    new-instance v4, Ljava/lang/RuntimeException;

    const-string/jumbo v5, "Must use two marker values for direct mapping"

    invoke-direct {v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_0
    iget-object v4, p0, Landroid/support/v17/leanback/widget/ParallaxEffect$FloatEffect;->mMarkerValues:Ljava/util/List;

    invoke-interface {v4, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/support/v17/leanback/widget/Parallax$PropertyMarkerValue;

    invoke-virtual {v4}, Landroid/support/v17/leanback/widget/Parallax$PropertyMarkerValue;->getProperty()Ljava/lang/Object;

    move-result-object v5

    iget-object v4, p0, Landroid/support/v17/leanback/widget/ParallaxEffect$FloatEffect;->mMarkerValues:Ljava/util/List;

    invoke-interface {v4, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/support/v17/leanback/widget/Parallax$PropertyMarkerValue;

    invoke-virtual {v4}, Landroid/support/v17/leanback/widget/Parallax$PropertyMarkerValue;->getProperty()Ljava/lang/Object;

    move-result-object v4

    if-eq v5, v4, :cond_1

    new-instance v4, Ljava/lang/RuntimeException;

    const-string/jumbo v5, "Marker value must use same Property for direct mapping"

    invoke-direct {v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_1
    iget-object v4, p0, Landroid/support/v17/leanback/widget/ParallaxEffect$FloatEffect;->mMarkerValues:Ljava/util/List;

    invoke-interface {v4, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/support/v17/leanback/widget/Parallax$FloatPropertyMarkerValue;

    invoke-virtual {v4, p1}, Landroid/support/v17/leanback/widget/Parallax$FloatPropertyMarkerValue;->getMarkerValue(Landroid/support/v17/leanback/widget/Parallax;)F

    move-result v2

    iget-object v4, p0, Landroid/support/v17/leanback/widget/ParallaxEffect$FloatEffect;->mMarkerValues:Ljava/util/List;

    invoke-interface {v4, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/support/v17/leanback/widget/Parallax$FloatPropertyMarkerValue;

    invoke-virtual {v4, p1}, Landroid/support/v17/leanback/widget/Parallax$FloatPropertyMarkerValue;->getMarkerValue(Landroid/support/v17/leanback/widget/Parallax;)F

    move-result v3

    cmpl-float v4, v2, v3

    if-lez v4, :cond_2

    move v1, v3

    move v3, v2

    move v2, v1

    :cond_2
    iget-object v4, p0, Landroid/support/v17/leanback/widget/ParallaxEffect$FloatEffect;->mMarkerValues:Ljava/util/List;

    invoke-interface {v4, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/support/v17/leanback/widget/Parallax$PropertyMarkerValue;

    invoke-virtual {v4}, Landroid/support/v17/leanback/widget/Parallax$PropertyMarkerValue;->getProperty()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/support/v17/leanback/widget/Parallax$FloatProperty;

    invoke-virtual {v4, p1}, Landroid/support/v17/leanback/widget/Parallax$FloatProperty;->get(Landroid/support/v17/leanback/widget/Parallax;)Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Number;->floatValue()F

    move-result v4

    cmpg-float v4, v4, v2

    if-gez v4, :cond_4

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    :cond_3
    :goto_0
    return-object v0

    :cond_4
    invoke-virtual {v0}, Ljava/lang/Number;->floatValue()F

    move-result v4

    cmpl-float v4, v4, v3

    if-lez v4, :cond_3

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    goto :goto_0
.end method

.method calculateFraction(Landroid/support/v17/leanback/widget/Parallax;)F
    .locals 12

    const/high16 v11, 0x3f800000    # 1.0f

    const/4 v5, 0x0

    const/4 v7, 0x0

    const/4 v6, 0x0

    const/4 v2, 0x0

    :goto_0
    iget-object v9, p0, Landroid/support/v17/leanback/widget/ParallaxEffect$FloatEffect;->mMarkerValues:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v9

    if-ge v2, v9, :cond_6

    iget-object v9, p0, Landroid/support/v17/leanback/widget/ParallaxEffect$FloatEffect;->mMarkerValues:Ljava/util/List;

    invoke-interface {v9, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/support/v17/leanback/widget/Parallax$FloatPropertyMarkerValue;

    invoke-virtual {v4}, Landroid/support/v17/leanback/widget/Parallax$FloatPropertyMarkerValue;->getProperty()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/support/v17/leanback/widget/Parallax$FloatProperty;

    invoke-virtual {v9}, Landroid/support/v17/leanback/widget/Parallax$FloatProperty;->getIndex()I

    move-result v3

    invoke-virtual {v4, p1}, Landroid/support/v17/leanback/widget/Parallax$FloatPropertyMarkerValue;->getMarkerValue(Landroid/support/v17/leanback/widget/Parallax;)F

    move-result v8

    invoke-virtual {p1, v3}, Landroid/support/v17/leanback/widget/Parallax;->getFloatPropertyValue(I)F

    move-result v0

    if-nez v2, :cond_0

    cmpl-float v9, v0, v8

    if-ltz v9, :cond_5

    const/4 v9, 0x0

    return v9

    :cond_0
    if-ne v5, v3, :cond_1

    cmpg-float v9, v6, v8

    if-gez v9, :cond_1

    new-instance v9, Ljava/lang/IllegalStateException;

    const-string/jumbo v10, "marker value of same variable must be descendant order"

    invoke-direct {v9, v10}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v9

    :cond_1
    const v9, 0x7f7fffff    # Float.MAX_VALUE

    cmpl-float v9, v0, v9

    if-nez v9, :cond_2

    sub-float v9, v6, v7

    invoke-virtual {p1}, Landroid/support/v17/leanback/widget/Parallax;->getMaxValue()F

    move-result v10

    div-float v1, v9, v10

    invoke-virtual {p0, v1, v2}, Landroid/support/v17/leanback/widget/ParallaxEffect$FloatEffect;->getFractionWithWeightAdjusted(FI)F

    move-result v9

    return v9

    :cond_2
    cmpl-float v9, v0, v8

    if-ltz v9, :cond_5

    if-ne v5, v3, :cond_3

    sub-float v9, v6, v0

    sub-float v10, v6, v8

    div-float v1, v9, v10

    :goto_1
    invoke-virtual {p0, v1, v2}, Landroid/support/v17/leanback/widget/ParallaxEffect$FloatEffect;->getFractionWithWeightAdjusted(FI)F

    move-result v9

    return v9

    :cond_3
    const v9, -0x800001

    cmpl-float v9, v7, v9

    if-eqz v9, :cond_4

    sub-float v9, v0, v7

    add-float/2addr v6, v9

    sub-float v9, v6, v0

    sub-float v10, v6, v8

    div-float v1, v9, v10

    goto :goto_1

    :cond_4
    sub-float v9, v0, v8

    invoke-virtual {p1}, Landroid/support/v17/leanback/widget/Parallax;->getMaxValue()F

    move-result v10

    div-float/2addr v9, v10

    sub-float v1, v11, v9

    goto :goto_1

    :cond_5
    move v7, v0

    move v5, v3

    move v6, v8

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_6
    return v11
.end method
