.class Lcom/android/systemui/statusbar/stack/StackStateAnimator$1;
.super Lcom/android/systemui/statusbar/stack/AnimationProperties;
.source "StackStateAnimator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/stack/StackStateAnimator;-><init>(Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/stack/StackStateAnimator;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/stack/StackStateAnimator;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/stack/StackStateAnimator$1;->this$0:Lcom/android/systemui/statusbar/stack/StackStateAnimator;

    invoke-direct {p0}, Lcom/android/systemui/statusbar/stack/AnimationProperties;-><init>()V

    return-void
.end method


# virtual methods
.method public getAnimationFilter()Lcom/android/systemui/statusbar/stack/AnimationFilter;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/StackStateAnimator$1;->this$0:Lcom/android/systemui/statusbar/stack/StackStateAnimator;

    invoke-static {v0}, Lcom/android/systemui/statusbar/stack/StackStateAnimator;->-get0(Lcom/android/systemui/statusbar/stack/StackStateAnimator;)Lcom/android/systemui/statusbar/stack/AnimationFilter;

    move-result-object v0

    return-object v0
.end method

.method public getAnimationFinishListener()Landroid/animation/AnimatorListenerAdapter;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/StackStateAnimator$1;->this$0:Lcom/android/systemui/statusbar/stack/StackStateAnimator;

    invoke-static {v0}, Lcom/android/systemui/statusbar/stack/StackStateAnimator;->-wrap0(Lcom/android/systemui/statusbar/stack/StackStateAnimator;)Landroid/animation/AnimatorListenerAdapter;

    move-result-object v0

    return-object v0
.end method

.method public getCustomInterpolator(Landroid/view/View;Landroid/util/Property;)Landroid/view/animation/Interpolator;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/StackStateAnimator$1;->this$0:Lcom/android/systemui/statusbar/stack/StackStateAnimator;

    invoke-static {v0}, Lcom/android/systemui/statusbar/stack/StackStateAnimator;->-get3(Lcom/android/systemui/statusbar/stack/StackStateAnimator;)Ljava/util/HashSet;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    invoke-virtual {v0, p2}, Landroid/util/Property;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/systemui/Interpolators;->HEADS_UP_APPEAR:Landroid/view/animation/Interpolator;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public wasAdded(Landroid/view/View;)Z
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/StackStateAnimator$1;->this$0:Lcom/android/systemui/statusbar/stack/StackStateAnimator;

    invoke-static {v0}, Lcom/android/systemui/statusbar/stack/StackStateAnimator;->-get4(Lcom/android/systemui/statusbar/stack/StackStateAnimator;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method
