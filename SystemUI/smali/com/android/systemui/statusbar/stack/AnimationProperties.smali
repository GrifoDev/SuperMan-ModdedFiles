.class public Lcom/android/systemui/statusbar/stack/AnimationProperties;
.super Ljava/lang/Object;
.source "AnimationProperties.java"


# instance fields
.field public delay:J

.field public duration:J

.field private mInterpolatorMap:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap",
            "<",
            "Landroid/util/Property;",
            "Landroid/view/animation/Interpolator;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public combineCustomInterpolators(Lcom/android/systemui/statusbar/stack/AnimationProperties;)V
    .locals 2

    iget-object v0, p1, Lcom/android/systemui/statusbar/stack/AnimationProperties;->mInterpolatorMap:Landroid/util/ArrayMap;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/android/systemui/statusbar/stack/AnimationProperties;->mInterpolatorMap:Landroid/util/ArrayMap;

    if-nez v1, :cond_0

    new-instance v1, Landroid/util/ArrayMap;

    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    iput-object v1, p0, Lcom/android/systemui/statusbar/stack/AnimationProperties;->mInterpolatorMap:Landroid/util/ArrayMap;

    :cond_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/stack/AnimationProperties;->mInterpolatorMap:Landroid/util/ArrayMap;

    invoke-virtual {v1, v0}, Landroid/util/ArrayMap;->putAll(Landroid/util/ArrayMap;)V

    :cond_1
    return-void
.end method

.method public getAnimationFilter()Lcom/android/systemui/statusbar/stack/AnimationFilter;
    .locals 1

    new-instance v0, Lcom/android/systemui/statusbar/stack/AnimationFilter;

    invoke-direct {v0}, Lcom/android/systemui/statusbar/stack/AnimationFilter;-><init>()V

    return-object v0
.end method

.method public getAnimationFinishListener()Landroid/animation/AnimatorListenerAdapter;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getCustomInterpolator(Landroid/view/View;Landroid/util/Property;)Landroid/view/animation/Interpolator;
    .locals 2

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/systemui/statusbar/stack/AnimationProperties;->mInterpolatorMap:Landroid/util/ArrayMap;

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/AnimationProperties;->mInterpolatorMap:Landroid/util/ArrayMap;

    invoke-virtual {v0, p2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/animation/Interpolator;

    :cond_0
    return-object v0
.end method

.method public resetCustomInterpolators()Lcom/android/systemui/statusbar/stack/AnimationProperties;
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/statusbar/stack/AnimationProperties;->mInterpolatorMap:Landroid/util/ArrayMap;

    return-object p0
.end method

.method public setCustomInterpolator(Landroid/util/Property;Landroid/view/animation/Interpolator;)Lcom/android/systemui/statusbar/stack/AnimationProperties;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/AnimationProperties;->mInterpolatorMap:Landroid/util/ArrayMap;

    if-nez v0, :cond_0

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/stack/AnimationProperties;->mInterpolatorMap:Landroid/util/ArrayMap;

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/AnimationProperties;->mInterpolatorMap:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1, p2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public setDelay(J)Lcom/android/systemui/statusbar/stack/AnimationProperties;
    .locals 1

    iput-wide p1, p0, Lcom/android/systemui/statusbar/stack/AnimationProperties;->delay:J

    return-object p0
.end method

.method public setDuration(J)Lcom/android/systemui/statusbar/stack/AnimationProperties;
    .locals 1

    iput-wide p1, p0, Lcom/android/systemui/statusbar/stack/AnimationProperties;->duration:J

    return-object p0
.end method

.method public wasAdded(Landroid/view/View;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
