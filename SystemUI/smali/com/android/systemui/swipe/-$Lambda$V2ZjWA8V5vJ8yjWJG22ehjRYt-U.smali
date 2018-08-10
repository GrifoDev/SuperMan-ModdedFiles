.class final synthetic Lcom/android/systemui/swipe/-$Lambda$V2ZjWA8V5vJ8yjWJG22ehjRYt-U;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field private final synthetic -$f0:Ljava/lang/Object;

.field private final synthetic -$f1:Ljava/lang/Object;


# direct methods
.method private final synthetic $m$0(Landroid/animation/ValueAnimator;)V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/swipe/-$Lambda$V2ZjWA8V5vJ8yjWJG22ehjRYt-U;->-$f0:Ljava/lang/Object;

    check-cast v0, Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/systemui/swipe/-$Lambda$V2ZjWA8V5vJ8yjWJG22ehjRYt-U;->-$f1:Ljava/lang/Object;

    check-cast v1, Landroid/widget/ImageView;

    invoke-static {v0, v1, p1}, Lcom/android/systemui/swipe/SwipeAnimator;->lambda$-com_android_systemui_swipe_SwipeAnimator_51280(Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/swipe/-$Lambda$V2ZjWA8V5vJ8yjWJG22ehjRYt-U;->-$f0:Ljava/lang/Object;

    iput-object p2, p0, Lcom/android/systemui/swipe/-$Lambda$V2ZjWA8V5vJ8yjWJG22ehjRYt-U;->-$f1:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/swipe/-$Lambda$V2ZjWA8V5vJ8yjWJG22ehjRYt-U;->$m$0(Landroid/animation/ValueAnimator;)V

    return-void
.end method
