.class Lcom/android/systemui/statusbar/phone/PanelView$13;
.super Landroid/animation/AnimatorListenerAdapter;
.source "PanelView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/phone/PanelView;->startUnlockHintAnimationPhase2(Ljava/lang/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/PanelView;

.field final synthetic val$onAnimationFinished:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/PanelView;Ljava/lang/Runnable;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/PanelView$13;->this$0:Lcom/android/systemui/statusbar/phone/PanelView;

    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/PanelView$13;->val$onAnimationFinished:Ljava/lang/Runnable;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PanelView$13;->this$0:Lcom/android/systemui/statusbar/phone/PanelView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/phone/PanelView;->-wrap1(Lcom/android/systemui/statusbar/phone/PanelView;Landroid/animation/ValueAnimator;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PanelView$13;->val$onAnimationFinished:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PanelView$13;->this$0:Lcom/android/systemui/statusbar/phone/PanelView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/PanelView;->notifyBarPanelExpansionChanged()V

    return-void
.end method
