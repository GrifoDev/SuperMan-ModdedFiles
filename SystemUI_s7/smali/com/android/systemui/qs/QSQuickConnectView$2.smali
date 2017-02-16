.class Lcom/android/systemui/qs/QSQuickConnectView$2;
.super Ljava/lang/Object;
.source "QSQuickConnectView.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/qs/QSQuickConnectView;->startSizeChangeAnimation(II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/qs/QSQuickConnectView;


# direct methods
.method constructor <init>(Lcom/android/systemui/qs/QSQuickConnectView;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/qs/QSQuickConnectView$2;->this$0:Lcom/android/systemui/qs/QSQuickConnectView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 3

    iget-object v2, p0, Lcom/android/systemui/qs/QSQuickConnectView$2;->this$0:Lcom/android/systemui/qs/QSQuickConnectView;

    invoke-static {v2}, Lcom/android/systemui/qs/QSQuickConnectView;->-get2(Lcom/android/systemui/qs/QSQuickConnectView;)Landroid/animation/ValueAnimator;

    move-result-object v2

    invoke-virtual {v2}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget-object v2, p0, Lcom/android/systemui/qs/QSQuickConnectView$2;->this$0:Lcom/android/systemui/qs/QSQuickConnectView;

    iget-object v2, v2, Lcom/android/systemui/qs/QSQuickConnectView;->mCallback:Lcom/android/systemui/qs/QSBarItem$Callback;

    invoke-interface {v2}, Lcom/android/systemui/qs/QSBarItem$Callback;->onHeightChanged()V

    iget-object v2, p0, Lcom/android/systemui/qs/QSQuickConnectView$2;->this$0:Lcom/android/systemui/qs/QSQuickConnectView;

    invoke-static {v2}, Lcom/android/systemui/qs/QSQuickConnectView;->-get1(Lcom/android/systemui/qs/QSQuickConnectView;)Landroid/view/ViewGroup;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout$LayoutParams;

    iput v0, v1, Landroid/widget/LinearLayout$LayoutParams;->height:I

    iget-object v2, p0, Lcom/android/systemui/qs/QSQuickConnectView$2;->this$0:Lcom/android/systemui/qs/QSQuickConnectView;

    invoke-static {v2}, Lcom/android/systemui/qs/QSQuickConnectView;->-get1(Lcom/android/systemui/qs/QSQuickConnectView;)Landroid/view/ViewGroup;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method
