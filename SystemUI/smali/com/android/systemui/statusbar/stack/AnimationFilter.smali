.class public Lcom/android/systemui/statusbar/stack/AnimationFilter;
.super Ljava/lang/Object;
.source "AnimationFilter.java"


# instance fields
.field animateAlpha:Z

.field animateDark:Z

.field animateDimmed:Z

.field animateHeight:Z

.field animateHideSensitive:Z

.field public animateShadowAlpha:Z

.field animateTopInset:Z

.field animateX:Z

.field animateY:Z

.field animateYViews:Landroid/support/v4/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/util/ArraySet",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field animateZ:Z

.field hasDelays:Z

.field hasGoToFullShadeEvent:Z

.field hasHeadsUpDisappearClickEvent:Z

.field private mAnimatedProperties:Landroid/support/v4/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/util/ArraySet",
            "<",
            "Landroid/util/Property;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/support/v4/util/ArraySet;

    invoke-direct {v0}, Landroid/support/v4/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/stack/AnimationFilter;->animateYViews:Landroid/support/v4/util/ArraySet;

    new-instance v0, Landroid/support/v4/util/ArraySet;

    invoke-direct {v0}, Landroid/support/v4/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/stack/AnimationFilter;->mAnimatedProperties:Landroid/support/v4/util/ArraySet;

    return-void
.end method


# virtual methods
.method public animate(Landroid/util/Property;)Lcom/android/systemui/statusbar/stack/AnimationFilter;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/AnimationFilter;->mAnimatedProperties:Landroid/support/v4/util/ArraySet;

    invoke-virtual {v0, p1}, Landroid/support/v4/util/ArraySet;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public animateAlpha()Lcom/android/systemui/statusbar/stack/AnimationFilter;
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/stack/AnimationFilter;->animateAlpha:Z

    return-object p0
.end method

.method public animateDark()Lcom/android/systemui/statusbar/stack/AnimationFilter;
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/stack/AnimationFilter;->animateDark:Z

    return-object p0
.end method

.method public animateDimmed()Lcom/android/systemui/statusbar/stack/AnimationFilter;
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/stack/AnimationFilter;->animateDimmed:Z

    return-object p0
.end method

.method public animateHeight()Lcom/android/systemui/statusbar/stack/AnimationFilter;
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/stack/AnimationFilter;->animateHeight:Z

    return-object p0
.end method

.method public animateHideSensitive()Lcom/android/systemui/statusbar/stack/AnimationFilter;
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/stack/AnimationFilter;->animateHideSensitive:Z

    return-object p0
.end method

.method public animateScale()Lcom/android/systemui/statusbar/stack/AnimationFilter;
    .locals 1

    sget-object v0, Landroid/view/View;->SCALE_X:Landroid/util/Property;

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/stack/AnimationFilter;->animate(Landroid/util/Property;)Lcom/android/systemui/statusbar/stack/AnimationFilter;

    sget-object v0, Landroid/view/View;->SCALE_Y:Landroid/util/Property;

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/stack/AnimationFilter;->animate(Landroid/util/Property;)Lcom/android/systemui/statusbar/stack/AnimationFilter;

    return-object p0
.end method

.method public animateShadowAlpha()Lcom/android/systemui/statusbar/stack/AnimationFilter;
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/stack/AnimationFilter;->animateShadowAlpha:Z

    return-object p0
.end method

.method public animateTopInset()Lcom/android/systemui/statusbar/stack/AnimationFilter;
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/stack/AnimationFilter;->animateTopInset:Z

    return-object p0
.end method

.method public animateX()Lcom/android/systemui/statusbar/stack/AnimationFilter;
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/stack/AnimationFilter;->animateX:Z

    return-object p0
.end method

.method public animateY()Lcom/android/systemui/statusbar/stack/AnimationFilter;
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/stack/AnimationFilter;->animateY:Z

    return-object p0
.end method

.method public animateY(Landroid/view/View;)Lcom/android/systemui/statusbar/stack/AnimationFilter;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/AnimationFilter;->animateYViews:Landroid/support/v4/util/ArraySet;

    invoke-virtual {v0, p1}, Landroid/support/v4/util/ArraySet;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public animateZ()Lcom/android/systemui/statusbar/stack/AnimationFilter;
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/stack/AnimationFilter;->animateZ:Z

    return-object p0
.end method

.method public applyCombination(Ljava/util/ArrayList;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$AnimationEvent;",
            ">;)V"
        }
    .end annotation

    const/4 v5, 0x1

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/stack/AnimationFilter;->reset()V

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v2, :cond_2

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$AnimationEvent;

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$AnimationEvent;

    iget-object v3, v3, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$AnimationEvent;->filter:Lcom/android/systemui/statusbar/stack/AnimationFilter;

    invoke-virtual {p0, v3}, Lcom/android/systemui/statusbar/stack/AnimationFilter;->combineFilter(Lcom/android/systemui/statusbar/stack/AnimationFilter;)V

    iget v3, v0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$AnimationEvent;->animationType:I

    const/16 v4, 0xa

    if-ne v3, v4, :cond_0

    iput-boolean v5, p0, Lcom/android/systemui/statusbar/stack/AnimationFilter;->hasGoToFullShadeEvent:Z

    :cond_0
    iget v3, v0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$AnimationEvent;->animationType:I

    const/16 v4, 0x10

    if-ne v3, v4, :cond_1

    iput-boolean v5, p0, Lcom/android/systemui/statusbar/stack/AnimationFilter;->hasHeadsUpDisappearClickEvent:Z

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public combineFilter(Lcom/android/systemui/statusbar/stack/AnimationFilter;)V
    .locals 2

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/stack/AnimationFilter;->animateAlpha:Z

    iget-boolean v1, p1, Lcom/android/systemui/statusbar/stack/AnimationFilter;->animateAlpha:Z

    or-int/2addr v0, v1

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/stack/AnimationFilter;->animateAlpha:Z

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/stack/AnimationFilter;->animateX:Z

    iget-boolean v1, p1, Lcom/android/systemui/statusbar/stack/AnimationFilter;->animateX:Z

    or-int/2addr v0, v1

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/stack/AnimationFilter;->animateX:Z

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/stack/AnimationFilter;->animateY:Z

    iget-boolean v1, p1, Lcom/android/systemui/statusbar/stack/AnimationFilter;->animateY:Z

    or-int/2addr v0, v1

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/stack/AnimationFilter;->animateY:Z

    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/AnimationFilter;->animateYViews:Landroid/support/v4/util/ArraySet;

    iget-object v1, p1, Lcom/android/systemui/statusbar/stack/AnimationFilter;->animateYViews:Landroid/support/v4/util/ArraySet;

    invoke-virtual {v0, v1}, Landroid/support/v4/util/ArraySet;->addAll(Landroid/support/v4/util/ArraySet;)V

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/stack/AnimationFilter;->animateZ:Z

    iget-boolean v1, p1, Lcom/android/systemui/statusbar/stack/AnimationFilter;->animateZ:Z

    or-int/2addr v0, v1

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/stack/AnimationFilter;->animateZ:Z

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/stack/AnimationFilter;->animateHeight:Z

    iget-boolean v1, p1, Lcom/android/systemui/statusbar/stack/AnimationFilter;->animateHeight:Z

    or-int/2addr v0, v1

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/stack/AnimationFilter;->animateHeight:Z

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/stack/AnimationFilter;->animateTopInset:Z

    iget-boolean v1, p1, Lcom/android/systemui/statusbar/stack/AnimationFilter;->animateTopInset:Z

    or-int/2addr v0, v1

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/stack/AnimationFilter;->animateTopInset:Z

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/stack/AnimationFilter;->animateDimmed:Z

    iget-boolean v1, p1, Lcom/android/systemui/statusbar/stack/AnimationFilter;->animateDimmed:Z

    or-int/2addr v0, v1

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/stack/AnimationFilter;->animateDimmed:Z

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/stack/AnimationFilter;->animateDark:Z

    iget-boolean v1, p1, Lcom/android/systemui/statusbar/stack/AnimationFilter;->animateDark:Z

    or-int/2addr v0, v1

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/stack/AnimationFilter;->animateDark:Z

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/stack/AnimationFilter;->animateHideSensitive:Z

    iget-boolean v1, p1, Lcom/android/systemui/statusbar/stack/AnimationFilter;->animateHideSensitive:Z

    or-int/2addr v0, v1

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/stack/AnimationFilter;->animateHideSensitive:Z

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/stack/AnimationFilter;->animateShadowAlpha:Z

    iget-boolean v1, p1, Lcom/android/systemui/statusbar/stack/AnimationFilter;->animateShadowAlpha:Z

    or-int/2addr v0, v1

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/stack/AnimationFilter;->animateShadowAlpha:Z

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/stack/AnimationFilter;->hasDelays:Z

    iget-boolean v1, p1, Lcom/android/systemui/statusbar/stack/AnimationFilter;->hasDelays:Z

    or-int/2addr v0, v1

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/stack/AnimationFilter;->hasDelays:Z

    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/AnimationFilter;->mAnimatedProperties:Landroid/support/v4/util/ArraySet;

    iget-object v1, p1, Lcom/android/systemui/statusbar/stack/AnimationFilter;->mAnimatedProperties:Landroid/support/v4/util/ArraySet;

    invoke-virtual {v0, v1}, Landroid/support/v4/util/ArraySet;->addAll(Landroid/support/v4/util/ArraySet;)V

    return-void
.end method

.method public hasDelays()Lcom/android/systemui/statusbar/stack/AnimationFilter;
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/stack/AnimationFilter;->hasDelays:Z

    return-object p0
.end method

.method public reset()V
    .locals 2

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/systemui/statusbar/stack/AnimationFilter;->animateAlpha:Z

    iput-boolean v1, p0, Lcom/android/systemui/statusbar/stack/AnimationFilter;->animateX:Z

    iput-boolean v1, p0, Lcom/android/systemui/statusbar/stack/AnimationFilter;->animateY:Z

    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/AnimationFilter;->animateYViews:Landroid/support/v4/util/ArraySet;

    invoke-virtual {v0}, Landroid/support/v4/util/ArraySet;->clear()V

    iput-boolean v1, p0, Lcom/android/systemui/statusbar/stack/AnimationFilter;->animateZ:Z

    iput-boolean v1, p0, Lcom/android/systemui/statusbar/stack/AnimationFilter;->animateHeight:Z

    iput-boolean v1, p0, Lcom/android/systemui/statusbar/stack/AnimationFilter;->animateShadowAlpha:Z

    iput-boolean v1, p0, Lcom/android/systemui/statusbar/stack/AnimationFilter;->animateTopInset:Z

    iput-boolean v1, p0, Lcom/android/systemui/statusbar/stack/AnimationFilter;->animateDimmed:Z

    iput-boolean v1, p0, Lcom/android/systemui/statusbar/stack/AnimationFilter;->animateDark:Z

    iput-boolean v1, p0, Lcom/android/systemui/statusbar/stack/AnimationFilter;->animateHideSensitive:Z

    iput-boolean v1, p0, Lcom/android/systemui/statusbar/stack/AnimationFilter;->hasDelays:Z

    iput-boolean v1, p0, Lcom/android/systemui/statusbar/stack/AnimationFilter;->hasGoToFullShadeEvent:Z

    iput-boolean v1, p0, Lcom/android/systemui/statusbar/stack/AnimationFilter;->hasHeadsUpDisappearClickEvent:Z

    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/AnimationFilter;->mAnimatedProperties:Landroid/support/v4/util/ArraySet;

    invoke-virtual {v0}, Landroid/support/v4/util/ArraySet;->clear()V

    return-void
.end method

.method public shouldAnimateProperty(Landroid/util/Property;)Z
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/AnimationFilter;->mAnimatedProperties:Landroid/support/v4/util/ArraySet;

    invoke-virtual {v0, p1}, Landroid/support/v4/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public shouldAnimateY(Landroid/view/View;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/stack/AnimationFilter;->animateY:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/AnimationFilter;->animateYViews:Landroid/support/v4/util/ArraySet;

    invoke-virtual {v0, p1}, Landroid/support/v4/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method
