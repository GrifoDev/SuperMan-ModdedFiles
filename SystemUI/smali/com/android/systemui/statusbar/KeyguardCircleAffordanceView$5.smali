.class Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView$5;
.super Landroid/animation/AnimatorListenerAdapter;
.source "KeyguardCircleAffordanceView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView$5;->this$0:Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 3

    const/4 v2, 0x0

    const-string/jumbo v0, "SEP"

    sget-object v1, Lcom/android/systemui/Rune;->KEYWI_VALUE_SHORTCUT_STYLE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView$5;->this$0:Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

    invoke-static {v0, v2}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->-set10(Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;Landroid/animation/ValueAnimator;)Landroid/animation/ValueAnimator;

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView$5;->this$0:Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

    invoke-static {v0, v2}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->-set0(Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;Landroid/animation/ValueAnimator;)Landroid/animation/ValueAnimator;

    goto :goto_0
.end method
