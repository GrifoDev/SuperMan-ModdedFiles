.class Lcom/android/systemui/statusbar/stack/ExpandableViewState$1;
.super Ljava/lang/Object;
.source "ExpandableViewState.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/stack/ExpandableViewState;->startHeightAnimation(Lcom/android/systemui/statusbar/ExpandableView;Lcom/android/systemui/statusbar/stack/AnimationProperties;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/stack/ExpandableViewState;

.field final synthetic val$child:Lcom/android/systemui/statusbar/ExpandableView;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/stack/ExpandableViewState;Lcom/android/systemui/statusbar/ExpandableView;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/stack/ExpandableViewState$1;->this$0:Lcom/android/systemui/statusbar/stack/ExpandableViewState;

    iput-object p2, p0, Lcom/android/systemui/statusbar/stack/ExpandableViewState$1;->val$child:Lcom/android/systemui/statusbar/ExpandableView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 3

    iget-object v1, p0, Lcom/android/systemui/statusbar/stack/ExpandableViewState$1;->val$child:Lcom/android/systemui/statusbar/ExpandableView;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lcom/android/systemui/statusbar/ExpandableView;->setActualHeight(IZ)V

    return-void
.end method
