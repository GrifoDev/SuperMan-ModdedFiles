.class Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView$SkipShortcutVITouchHandler;
.super Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView$GeneralTouchHandler;
.source "KeyguardCircleAffordanceView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SkipShortcutVITouchHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;


# direct methods
.method private constructor <init>(Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;)V
    .locals 1

    iput-object p1, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView$SkipShortcutVITouchHandler;->this$0:Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView$GeneralTouchHandler;-><init>(Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView$GeneralTouchHandler;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView$SkipShortcutVITouchHandler;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView$SkipShortcutVITouchHandler;-><init>(Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;)V

    return-void
.end method


# virtual methods
.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 7

    const/4 v5, 0x0

    const/4 v6, 0x1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    invoke-super {p0, p1}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView$GeneralTouchHandler;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v4

    return v4

    :pswitch_1
    iget-object v4, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView$SkipShortcutVITouchHandler;->this$0:Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

    invoke-static {v4}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->-get20(Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;)Landroid/view/View;

    move-result-object v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView$SkipShortcutVITouchHandler;->this$0:Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

    invoke-static {v4}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->-get20(Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    move-result v4

    if-eqz v4, :cond_1

    :cond_0
    iget-object v4, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView$SkipShortcutVITouchHandler;->this$0:Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

    invoke-virtual {v4}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    check-cast v4, Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->bringToFront()V

    :cond_1
    iget-object v4, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView$SkipShortcutVITouchHandler;->this$0:Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

    invoke-static {v4, v5}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->-set26(Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;Z)Z

    iget-object v4, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView$SkipShortcutVITouchHandler;->this$0:Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

    invoke-static {v4, v2}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->-set16(Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;F)F

    iget-object v4, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView$SkipShortcutVITouchHandler;->this$0:Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

    invoke-static {v4, v3}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->-set17(Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;F)F

    iget-object v4, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView$SkipShortcutVITouchHandler;->this$0:Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

    iget-object v4, v4, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mHelperCallback:Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper$Callback;

    iget-object v5, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView$SkipShortcutVITouchHandler;->this$0:Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

    invoke-static {v5}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->-get25(Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;)Z

    move-result v5

    invoke-interface {v4, v5}, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper$Callback;->onSwipingStarted(Z)V

    iget-object v4, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView$SkipShortcutVITouchHandler;->this$0:Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

    invoke-static {v4}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->-wrap6(Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;)V

    iget-object v4, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView$SkipShortcutVITouchHandler;->this$0:Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

    invoke-static {v4, p1}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->-wrap17(Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;Landroid/view/MotionEvent;)V

    return v6

    :pswitch_2
    iget-object v4, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView$SkipShortcutVITouchHandler;->this$0:Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

    invoke-static {v4}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->-get26(Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;)Z

    move-result v4

    if-eqz v4, :cond_2

    return v6

    :cond_2
    iget-object v4, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView$SkipShortcutVITouchHandler;->this$0:Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

    invoke-static {v4, v2, v3}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->-wrap4(Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;FF)V

    :pswitch_3
    iget-object v4, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView$SkipShortcutVITouchHandler;->this$0:Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

    invoke-static {v4, v6}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->-set26(Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;Z)Z

    iget-object v4, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView$SkipShortcutVITouchHandler;->this$0:Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

    invoke-static {v4, p1}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->-wrap17(Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;Landroid/view/MotionEvent;)V

    iget-object v4, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView$SkipShortcutVITouchHandler;->this$0:Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

    invoke-static {v4}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->-get21(Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;)Z

    move-result v4

    if-nez v4, :cond_4

    iget-object v4, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView$SkipShortcutVITouchHandler;->this$0:Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

    invoke-static {v4}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->-get11(Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;)Z

    move-result v4

    if-nez v4, :cond_3

    iget-object v4, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView$SkipShortcutVITouchHandler;->this$0:Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

    invoke-static {v4, v5}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->-wrap15(Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;Z)V

    iget-object v4, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView$SkipShortcutVITouchHandler;->this$0:Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

    invoke-static {v4}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->-wrap12(Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;)V

    iget-object v4, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView$SkipShortcutVITouchHandler;->this$0:Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

    invoke-static {v4}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->-get18(Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;)Landroid/animation/ValueAnimator;

    move-result-object v4

    invoke-virtual {v4}, Landroid/animation/ValueAnimator;->start()V

    iget-object v4, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView$SkipShortcutVITouchHandler;->this$0:Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

    invoke-static {v4}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->-get19(Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;)Landroid/animation/ValueAnimator;

    move-result-object v4

    invoke-virtual {v4}, Landroid/animation/ValueAnimator;->start()V

    :cond_3
    :goto_0
    return v6

    :cond_4
    iget-object v4, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView$SkipShortcutVITouchHandler;->this$0:Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

    invoke-static {v4}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->-wrap0(Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;)Z

    move-result v4

    if-nez v4, :cond_3

    iget-object v4, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView$SkipShortcutVITouchHandler;->this$0:Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

    invoke-static {v4}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->-get24(Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;)Z

    move-result v4

    if-nez v4, :cond_3

    iget-object v4, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView$SkipShortcutVITouchHandler;->this$0:Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

    invoke-static {v4}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->-wrap5(Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;)V

    iget-object v4, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView$SkipShortcutVITouchHandler;->this$0:Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

    invoke-virtual {v4}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->invalidate()V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method
