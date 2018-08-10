.class public abstract Landroid/support/v17/leanback/widget/Parallax;
.super Ljava/lang/Object;
.source "Parallax.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v17/leanback/widget/Parallax$FloatProperty;,
        Landroid/support/v17/leanback/widget/Parallax$FloatPropertyMarkerValue;,
        Landroid/support/v17/leanback/widget/Parallax$IntProperty;,
        Landroid/support/v17/leanback/widget/Parallax$IntPropertyMarkerValue;,
        Landroid/support/v17/leanback/widget/Parallax$PropertyMarkerValue;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<PropertyT:",
        "Landroid/util/Property;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final mEffects:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/support/v17/leanback/widget/ParallaxEffect;",
            ">;"
        }
    .end annotation
.end field

.field private mFloatValues:[F

.field final mProperties:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<TPropertyT;>;"
        }
    .end annotation
.end field

.field final mPropertiesReadOnly:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<TPropertyT;>;"
        }
    .end annotation
.end field

.field private mValues:[I


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/v17/leanback/widget/Parallax;->mProperties:Ljava/util/List;

    iget-object v0, p0, Landroid/support/v17/leanback/widget/Parallax;->mProperties:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v17/leanback/widget/Parallax;->mPropertiesReadOnly:Ljava/util/List;

    new-array v0, v1, [I

    iput-object v0, p0, Landroid/support/v17/leanback/widget/Parallax;->mValues:[I

    new-array v0, v1, [F

    iput-object v0, p0, Landroid/support/v17/leanback/widget/Parallax;->mFloatValues:[F

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Landroid/support/v17/leanback/widget/Parallax;->mEffects:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final addProperty(Ljava/lang/String;)Landroid/util/Property;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TPropertyT;"
        }
    .end annotation

    iget-object v6, p0, Landroid/support/v17/leanback/widget/Parallax;->mProperties:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {p0, p1, v1}, Landroid/support/v17/leanback/widget/Parallax;->createProperty(Ljava/lang/String;I)Landroid/util/Property;

    move-result-object v4

    instance-of v6, v4, Landroid/support/v17/leanback/widget/Parallax$IntProperty;

    if-eqz v6, :cond_2

    iget-object v6, p0, Landroid/support/v17/leanback/widget/Parallax;->mValues:[I

    array-length v5, v6

    if-ne v5, v1, :cond_1

    mul-int/lit8 v6, v5, 0x2

    new-array v3, v6, [I

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v5, :cond_0

    iget-object v6, p0, Landroid/support/v17/leanback/widget/Parallax;->mValues:[I

    aget v6, v6, v0

    aput v6, v3, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iput-object v3, p0, Landroid/support/v17/leanback/widget/Parallax;->mValues:[I

    :cond_1
    iget-object v6, p0, Landroid/support/v17/leanback/widget/Parallax;->mValues:[I

    const v7, 0x7fffffff

    aput v7, v6, v1

    :goto_1
    iget-object v6, p0, Landroid/support/v17/leanback/widget/Parallax;->mProperties:Ljava/util/List;

    invoke-interface {v6, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v4

    :cond_2
    instance-of v6, v4, Landroid/support/v17/leanback/widget/Parallax$FloatProperty;

    if-eqz v6, :cond_5

    iget-object v6, p0, Landroid/support/v17/leanback/widget/Parallax;->mFloatValues:[F

    array-length v5, v6

    if-ne v5, v1, :cond_4

    mul-int/lit8 v6, v5, 0x2

    new-array v2, v6, [F

    const/4 v0, 0x0

    :goto_2
    if-ge v0, v5, :cond_3

    iget-object v6, p0, Landroid/support/v17/leanback/widget/Parallax;->mFloatValues:[F

    aget v6, v6, v0

    aput v6, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_3
    iput-object v2, p0, Landroid/support/v17/leanback/widget/Parallax;->mFloatValues:[F

    :cond_4
    iget-object v6, p0, Landroid/support/v17/leanback/widget/Parallax;->mFloatValues:[F

    const v7, 0x7f7fffff    # Float.MAX_VALUE

    aput v7, v6, v1

    goto :goto_1

    :cond_5
    new-instance v6, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v7, "Invalid Property type"

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6
.end method

.method public abstract createProperty(Ljava/lang/String;I)Landroid/util/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)TPropertyT;"
        }
    .end annotation
.end method

.method final getFloatPropertyValue(I)F
    .locals 1

    iget-object v0, p0, Landroid/support/v17/leanback/widget/Parallax;->mFloatValues:[F

    aget v0, v0, p1

    return v0
.end method

.method final getIntPropertyValue(I)I
    .locals 1

    iget-object v0, p0, Landroid/support/v17/leanback/widget/Parallax;->mValues:[I

    aget v0, v0, p1

    return v0
.end method

.method public abstract getMaxValue()F
.end method

.method public final getProperties()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<TPropertyT;>;"
        }
    .end annotation

    iget-object v0, p0, Landroid/support/v17/leanback/widget/Parallax;->mPropertiesReadOnly:Ljava/util/List;

    return-object v0
.end method

.method public removeEffect(Landroid/support/v17/leanback/widget/ParallaxEffect;)V
    .locals 1

    iget-object v0, p0, Landroid/support/v17/leanback/widget/Parallax;->mEffects:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method final setFloatPropertyValue(IF)V
    .locals 1

    iget-object v0, p0, Landroid/support/v17/leanback/widget/Parallax;->mProperties:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt p1, v0, :cond_0

    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw v0

    :cond_0
    iget-object v0, p0, Landroid/support/v17/leanback/widget/Parallax;->mFloatValues:[F

    aput p2, v0, p1

    return-void
.end method

.method final setIntPropertyValue(II)V
    .locals 1

    iget-object v0, p0, Landroid/support/v17/leanback/widget/Parallax;->mProperties:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt p1, v0, :cond_0

    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw v0

    :cond_0
    iget-object v0, p0, Landroid/support/v17/leanback/widget/Parallax;->mValues:[I

    aput p2, v0, p1

    return-void
.end method

.method public updateValues()V
    .locals 2
    .annotation build Landroid/support/annotation/CallSuper;
    .end annotation

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Landroid/support/v17/leanback/widget/Parallax;->mEffects:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Landroid/support/v17/leanback/widget/Parallax;->mEffects:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v17/leanback/widget/ParallaxEffect;

    invoke-virtual {v1, p0}, Landroid/support/v17/leanback/widget/ParallaxEffect;->performMapping(Landroid/support/v17/leanback/widget/Parallax;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method final verifyFloatProperties()V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    const/4 v6, 0x4

    const/4 v10, 0x3

    const/4 v9, 0x1

    const/4 v8, 0x2

    const/4 v7, 0x0

    iget-object v3, p0, Landroid/support/v17/leanback/widget/Parallax;->mProperties:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v3, v8, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, v7}, Landroid/support/v17/leanback/widget/Parallax;->getFloatPropertyValue(I)F

    move-result v1

    const/4 v0, 0x1

    :goto_0
    iget-object v3, p0, Landroid/support/v17/leanback/widget/Parallax;->mProperties:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_3

    invoke-virtual {p0, v0}, Landroid/support/v17/leanback/widget/Parallax;->getFloatPropertyValue(I)F

    move-result v2

    cmpg-float v3, v2, v1

    if-gez v3, :cond_1

    new-instance v4, Ljava/lang/IllegalStateException;

    const-string/jumbo v5, "Parallax Property[%d]\"%s\" is smaller than Property[%d]\"%s\""

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v6, v7

    iget-object v3, p0, Landroid/support/v17/leanback/widget/Parallax;->mProperties:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/Property;

    invoke-virtual {v3}, Landroid/util/Property;->getName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v6, v9

    add-int/lit8 v3, v0, -0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v6, v8

    iget-object v3, p0, Landroid/support/v17/leanback/widget/Parallax;->mProperties:Ljava/util/List;

    add-int/lit8 v7, v0, -0x1

    invoke-interface {v3, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/Property;

    invoke-virtual {v3}, Landroid/util/Property;->getName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v6, v10

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v4, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_1
    const v3, -0x800001

    cmpl-float v3, v1, v3

    if-nez v3, :cond_2

    const v3, 0x7f7fffff    # Float.MAX_VALUE

    cmpl-float v3, v2, v3

    if-nez v3, :cond_2

    new-instance v4, Ljava/lang/IllegalStateException;

    const-string/jumbo v5, "Parallax Property[%d]\"%s\" is UNKNOWN_BEFORE and Property[%d]\"%s\" is UNKNOWN_AFTER"

    new-array v6, v6, [Ljava/lang/Object;

    add-int/lit8 v3, v0, -0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v6, v7

    iget-object v3, p0, Landroid/support/v17/leanback/widget/Parallax;->mProperties:Ljava/util/List;

    add-int/lit8 v7, v0, -0x1

    invoke-interface {v3, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/Property;

    invoke-virtual {v3}, Landroid/util/Property;->getName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v6, v9

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v6, v8

    iget-object v3, p0, Landroid/support/v17/leanback/widget/Parallax;->mProperties:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/Property;

    invoke-virtual {v3}, Landroid/util/Property;->getName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v6, v10

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v4, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_2
    move v1, v2

    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    :cond_3
    return-void
.end method

.method verifyIntProperties()V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    const/4 v6, 0x4

    const/4 v10, 0x3

    const/4 v9, 0x1

    const/4 v8, 0x2

    const/4 v7, 0x0

    iget-object v3, p0, Landroid/support/v17/leanback/widget/Parallax;->mProperties:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v3, v8, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, v7}, Landroid/support/v17/leanback/widget/Parallax;->getIntPropertyValue(I)I

    move-result v1

    const/4 v0, 0x1

    :goto_0
    iget-object v3, p0, Landroid/support/v17/leanback/widget/Parallax;->mProperties:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_3

    invoke-virtual {p0, v0}, Landroid/support/v17/leanback/widget/Parallax;->getIntPropertyValue(I)I

    move-result v2

    if-ge v2, v1, :cond_1

    new-instance v4, Ljava/lang/IllegalStateException;

    const-string/jumbo v5, "Parallax Property[%d]\"%s\" is smaller than Property[%d]\"%s\""

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v6, v7

    iget-object v3, p0, Landroid/support/v17/leanback/widget/Parallax;->mProperties:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/Property;

    invoke-virtual {v3}, Landroid/util/Property;->getName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v6, v9

    add-int/lit8 v3, v0, -0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v6, v8

    iget-object v3, p0, Landroid/support/v17/leanback/widget/Parallax;->mProperties:Ljava/util/List;

    add-int/lit8 v7, v0, -0x1

    invoke-interface {v3, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/Property;

    invoke-virtual {v3}, Landroid/util/Property;->getName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v6, v10

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v4, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_1
    const/high16 v3, -0x80000000

    if-ne v1, v3, :cond_2

    const v3, 0x7fffffff

    if-ne v2, v3, :cond_2

    new-instance v4, Ljava/lang/IllegalStateException;

    const-string/jumbo v5, "Parallax Property[%d]\"%s\" is UNKNOWN_BEFORE and Property[%d]\"%s\" is UNKNOWN_AFTER"

    new-array v6, v6, [Ljava/lang/Object;

    add-int/lit8 v3, v0, -0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v6, v7

    iget-object v3, p0, Landroid/support/v17/leanback/widget/Parallax;->mProperties:Ljava/util/List;

    add-int/lit8 v7, v0, -0x1

    invoke-interface {v3, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/Property;

    invoke-virtual {v3}, Landroid/util/Property;->getName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v6, v9

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v6, v8

    iget-object v3, p0, Landroid/support/v17/leanback/widget/Parallax;->mProperties:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/Property;

    invoke-virtual {v3}, Landroid/util/Property;->getName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v6, v10

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v4, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_2
    move v1, v2

    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    :cond_3
    return-void
.end method
