.class final synthetic Lcom/android/systemui/recents/views/-$Lambda$bDnSBDseuQaoK45kM_ChDov9g9M$2;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field private final synthetic -$f0:F

.field private final synthetic -$f1:Ljava/lang/Object;

.field private final synthetic -$f2:Ljava/lang/Object;


# direct methods
.method private final synthetic $m$0(Landroid/animation/ValueAnimator;)V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/recents/views/-$Lambda$bDnSBDseuQaoK45kM_ChDov9g9M$2;->-$f1:Ljava/lang/Object;

    check-cast v0, Lcom/android/systemui/recents/views/TaskView;

    iget v2, p0, Lcom/android/systemui/recents/views/-$Lambda$bDnSBDseuQaoK45kM_ChDov9g9M$2;->-$f0:F

    iget-object v1, p0, Lcom/android/systemui/recents/views/-$Lambda$bDnSBDseuQaoK45kM_ChDov9g9M$2;->-$f2:Ljava/lang/Object;

    check-cast v1, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;

    invoke-static {v0, v2, v1, p1}, Lcom/android/systemui/recents/views/TaskStackAnimationHelper;->lambda$-com_android_systemui_recents_views_TaskStackAnimationHelper_51713(Lcom/android/systemui/recents/views/TaskView;FLcom/android/systemui/recents/views/TaskStackViewTouchHandler;Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public synthetic constructor <init>(FLjava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/systemui/recents/views/-$Lambda$bDnSBDseuQaoK45kM_ChDov9g9M$2;->-$f0:F

    iput-object p2, p0, Lcom/android/systemui/recents/views/-$Lambda$bDnSBDseuQaoK45kM_ChDov9g9M$2;->-$f1:Ljava/lang/Object;

    iput-object p3, p0, Lcom/android/systemui/recents/views/-$Lambda$bDnSBDseuQaoK45kM_ChDov9g9M$2;->-$f2:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/recents/views/-$Lambda$bDnSBDseuQaoK45kM_ChDov9g9M$2;->$m$0(Landroid/animation/ValueAnimator;)V

    return-void
.end method
