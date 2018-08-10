.class final synthetic Lcom/android/systemui/stackdivider/-$Lambda$SF-WjuMwvPZk9i1dL9BXDQtwNzU$4;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field private final synthetic -$f0:Z

.field private final synthetic -$f1:Ljava/lang/Object;

.field private final synthetic -$f2:Ljava/lang/Object;


# direct methods
.method private final synthetic $m$0(Landroid/animation/ValueAnimator;)V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/stackdivider/-$Lambda$SF-WjuMwvPZk9i1dL9BXDQtwNzU$4;->-$f1:Ljava/lang/Object;

    check-cast v0, Lcom/android/systemui/stackdivider/DividerView;

    iget-boolean v2, p0, Lcom/android/systemui/stackdivider/-$Lambda$SF-WjuMwvPZk9i1dL9BXDQtwNzU$4;->-$f0:Z

    iget-object v1, p0, Lcom/android/systemui/stackdivider/-$Lambda$SF-WjuMwvPZk9i1dL9BXDQtwNzU$4;->-$f2:Ljava/lang/Object;

    check-cast v1, Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;

    invoke-virtual {v0, v2, v1, p1}, Lcom/android/systemui/stackdivider/DividerView;->lambda$-com_android_systemui_stackdivider_DividerView_34469(ZLcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public synthetic constructor <init>(ZLjava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lcom/android/systemui/stackdivider/-$Lambda$SF-WjuMwvPZk9i1dL9BXDQtwNzU$4;->-$f0:Z

    iput-object p2, p0, Lcom/android/systemui/stackdivider/-$Lambda$SF-WjuMwvPZk9i1dL9BXDQtwNzU$4;->-$f1:Ljava/lang/Object;

    iput-object p3, p0, Lcom/android/systemui/stackdivider/-$Lambda$SF-WjuMwvPZk9i1dL9BXDQtwNzU$4;->-$f2:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/stackdivider/-$Lambda$SF-WjuMwvPZk9i1dL9BXDQtwNzU$4;->$m$0(Landroid/animation/ValueAnimator;)V

    return-void
.end method
