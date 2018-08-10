.class Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayout$3;
.super Landroid/animation/AnimatorListenerAdapter;
.source "CellLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayout;

.field final synthetic val$anim:Lcom/android/systemui/statusbar/phone/taskbar/utils/InterruptibleInOutAnimator;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayout;Lcom/android/systemui/statusbar/phone/taskbar/utils/InterruptibleInOutAnimator;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayout$3;->this$0:Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayout;

    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayout$3;->val$anim:Lcom/android/systemui/statusbar/phone/taskbar/utils/InterruptibleInOutAnimator;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    check-cast p1, Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayout$3;->val$anim:Lcom/android/systemui/statusbar/phone/taskbar/utils/InterruptibleInOutAnimator;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/taskbar/utils/InterruptibleInOutAnimator;->setTag(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method
