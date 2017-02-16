.class Lcom/android/systemui/qs/QSQuickConnectView$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "QSQuickConnectView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/qs/QSQuickConnectView;->animateViews(Landroid/view/View;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/qs/QSQuickConnectView;

.field final synthetic val$out:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/android/systemui/qs/QSQuickConnectView;Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/qs/QSQuickConnectView$1;->this$0:Lcom/android/systemui/qs/QSQuickConnectView;

    iput-object p2, p0, Lcom/android/systemui/qs/QSQuickConnectView$1;->val$out:Landroid/view/View;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/qs/QSQuickConnectView$1;->val$out:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/systemui/qs/QSQuickConnectView$1;->this$0:Lcom/android/systemui/qs/QSQuickConnectView;

    invoke-static {v0}, Lcom/android/systemui/qs/QSQuickConnectView;->-get1(Lcom/android/systemui/qs/QSQuickConnectView;)Landroid/view/ViewGroup;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/qs/QSQuickConnectView$1;->val$out:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    return-void
.end method
