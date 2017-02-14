.class Lcom/android/launcher2/ar/ARManager$CustomRotate;
.super Landroid/transition/Transition;
.source "ARManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher2/ar/ARManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CustomRotate"
.end annotation


# static fields
.field private static final PROPNAME_ROTATION:Ljava/lang/String; = "android:rotate:rotation"


# instance fields
.field private mStartDegree:F

.field final synthetic this$0:Lcom/android/launcher2/ar/ARManager;


# direct methods
.method public constructor <init>(Lcom/android/launcher2/ar/ARManager;F)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher2/ar/ARManager$CustomRotate;->this$0:Lcom/android/launcher2/ar/ARManager;

    invoke-direct {p0}, Landroid/transition/Transition;-><init>()V

    iput p2, p0, Lcom/android/launcher2/ar/ARManager$CustomRotate;->mStartDegree:F

    return-void
.end method


# virtual methods
.method public captureEndValues(Landroid/transition/TransitionValues;)V
    .locals 3

    iget-object v0, p1, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    const-string v1, "android:rotate:rotation"

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public captureStartValues(Landroid/transition/TransitionValues;)V
    .locals 3

    iget-object v0, p1, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    const-string v1, "android:rotate:rotation"

    iget v2, p0, Lcom/android/launcher2/ar/ARManager$CustomRotate;->mStartDegree:F

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public createAnimator(Landroid/view/ViewGroup;Landroid/transition/TransitionValues;Landroid/transition/TransitionValues;)Landroid/animation/Animator;
    .locals 7

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    if-nez p3, :cond_1

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    iget-object v4, p0, Lcom/android/launcher2/ar/ARManager$CustomRotate;->this$0:Lcom/android/launcher2/ar/ARManager;

    iget-object v5, p3, Landroid/transition/TransitionValues;->view:Landroid/view/View;

    # invokes: Lcom/android/launcher2/ar/ARManager;->isHiddenView(Landroid/view/View;)Z
    invoke-static {v4, v5}, Lcom/android/launcher2/ar/ARManager;->access$100(Lcom/android/launcher2/ar/ARManager;Landroid/view/View;)Z

    move-result v4

    if-nez v4, :cond_0

    iget-object v4, p0, Lcom/android/launcher2/ar/ARManager$CustomRotate;->this$0:Lcom/android/launcher2/ar/ARManager;

    iget-object v5, p3, Landroid/transition/TransitionValues;->view:Landroid/view/View;

    # invokes: Lcom/android/launcher2/ar/ARManager;->isChildOfAppWidgetHostView(Landroid/view/View;)Z
    invoke-static {v4, v5}, Lcom/android/launcher2/ar/ARManager;->access$200(Lcom/android/launcher2/ar/ARManager;Landroid/view/View;)Z

    move-result v4

    if-nez v4, :cond_0

    iget-object v3, p3, Landroid/transition/TransitionValues;->view:Landroid/view/View;

    iget-object v4, p2, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    const-string v5, "android:rotate:rotation"

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Float;

    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v2

    iget-object v4, p3, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    const-string v5, "android:rotate:rotation"

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Float;

    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v1

    cmpl-float v4, v2, v1

    if-eqz v4, :cond_0

    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    int-to-float v4, v4

    invoke-virtual {v3, v4}, Landroid/view/View;->setPivotX(F)V

    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    int-to-float v4, v4

    invoke-virtual {v3, v4}, Landroid/view/View;->setPivotY(F)V

    sget-object v4, Landroid/view/View;->ROTATION:Landroid/util/Property;

    const/4 v5, 0x2

    new-array v5, v5, [F

    const/4 v6, 0x0

    aput v2, v5, v6

    const/4 v6, 0x1

    aput v1, v5, v6

    invoke-static {v3, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    const-wide/16 v4, 0x118

    invoke-virtual {v0, v4, v5}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    iget-object v4, p0, Lcom/android/launcher2/ar/ARManager$CustomRotate;->this$0:Lcom/android/launcher2/ar/ARManager;

    # getter for: Lcom/android/launcher2/ar/ARManager;->mCommonInterpolator:Landroid/view/animation/Interpolator;
    invoke-static {v4}, Lcom/android/launcher2/ar/ARManager;->access$300(Lcom/android/launcher2/ar/ARManager;)Landroid/view/animation/Interpolator;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    goto :goto_0
.end method
