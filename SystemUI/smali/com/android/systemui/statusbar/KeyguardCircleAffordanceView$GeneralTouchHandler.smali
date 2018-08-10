.class Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView$GeneralTouchHandler;
.super Ljava/lang/Object;
.source "KeyguardCircleAffordanceView.java"

# interfaces
.implements Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView$TouchHandlePolicy;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "GeneralTouchHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;


# direct methods
.method private constructor <init>(Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView$GeneralTouchHandler;->this$0:Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView$GeneralTouchHandler;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView$GeneralTouchHandler;-><init>(Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;)V

    return-void
.end method


# virtual methods
.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 14

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v7

    const/4 v8, 0x2

    if-eq v7, v8, :cond_0

    const-string/jumbo v7, "KeyguardCircleAffordanceView"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "onTouchEvent: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v7, "KeyguardCircleAffordanceView"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "onTouchEvent: mHintAnimation="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView$GeneralTouchHandler;->this$0:Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

    invoke-static {v9}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->-get11(Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;)Z

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, ",mRight="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView$GeneralTouchHandler;->this$0:Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

    invoke-static {v9}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->-get21(Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;)Z

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v2, 0x0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    packed-switch v0, :pswitch_data_0

    :cond_1
    :goto_0
    :pswitch_0
    const/4 v7, 0x1

    return v7

    :pswitch_1
    iget-object v7, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView$GeneralTouchHandler;->this$0:Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

    invoke-static {v7}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->-get19(Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;)Landroid/view/View;

    move-result-object v7

    if-eqz v7, :cond_2

    iget-object v7, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView$GeneralTouchHandler;->this$0:Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

    invoke-static {v7}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->-get19(Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;)Landroid/view/View;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/View;->getVisibility()I

    move-result v7

    if-eqz v7, :cond_3

    :cond_2
    iget-object v7, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView$GeneralTouchHandler;->this$0:Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

    invoke-virtual {v7}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->getParent()Landroid/view/ViewParent;

    move-result-object v7

    check-cast v7, Landroid/view/View;

    invoke-virtual {v7}, Landroid/view/View;->bringToFront()V

    :cond_3
    iget-object v7, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView$GeneralTouchHandler;->this$0:Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

    const/4 v8, 0x0

    invoke-static {v7, v8}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->-set23(Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;F)F

    iget-object v7, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView$GeneralTouchHandler;->this$0:Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

    const/4 v8, 0x0

    invoke-static {v7, v8}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->-set29(Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;Z)Z

    iget-object v7, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView$GeneralTouchHandler;->this$0:Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

    const/4 v8, 0x1

    invoke-static {v7, v8}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->-set22(Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;Z)Z

    iget-object v7, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView$GeneralTouchHandler;->this$0:Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

    invoke-static {v7, v3}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->-set19(Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;F)F

    iget-object v7, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView$GeneralTouchHandler;->this$0:Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

    invoke-static {v7, v5}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->-set20(Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;F)F

    iget-object v7, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView$GeneralTouchHandler;->this$0:Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

    invoke-static {v7}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->-wrap1(Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;)V

    iget-object v7, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView$GeneralTouchHandler;->this$0:Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

    iget-object v7, v7, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mHelperCallback:Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper$Callback;

    iget-object v8, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView$GeneralTouchHandler;->this$0:Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

    invoke-static {v8}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->-get24(Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;)Z

    move-result v8

    invoke-interface {v7, v8}, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper$Callback;->onSwipingStarted(Z)V

    iget-object v7, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView$GeneralTouchHandler;->this$0:Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

    const/4 v8, 0x1

    invoke-static {v7, v8}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->-wrap11(Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;Z)V

    iget-object v7, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView$GeneralTouchHandler;->this$0:Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

    const/4 v8, 0x1

    invoke-static {v7, v8}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->-wrap10(Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;Z)V

    iget-object v7, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView$GeneralTouchHandler;->this$0:Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

    const/4 v8, 0x1

    invoke-static {v7, v8}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->-wrap8(Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;Z)V

    iget-object v7, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView$GeneralTouchHandler;->this$0:Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

    invoke-static {v7}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->-wrap9(Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;)V

    iget-object v7, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView$GeneralTouchHandler;->this$0:Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

    invoke-static {v7}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->-get8(Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;)Landroid/animation/ValueAnimator;

    move-result-object v7

    invoke-virtual {v7}, Landroid/animation/ValueAnimator;->start()V

    iget-object v7, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView$GeneralTouchHandler;->this$0:Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

    invoke-static {v7}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->-get7(Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;)Landroid/animation/ValueAnimator;

    move-result-object v7

    invoke-virtual {v7}, Landroid/animation/ValueAnimator;->start()V

    iget-object v7, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView$GeneralTouchHandler;->this$0:Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

    invoke-static {v7}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->-get5(Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;)Landroid/animation/ValueAnimator;

    move-result-object v7

    invoke-virtual {v7}, Landroid/animation/ValueAnimator;->start()V

    iget-object v7, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView$GeneralTouchHandler;->this$0:Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

    invoke-static {v7}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->-get3(Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;)Landroid/animation/ValueAnimator;

    move-result-object v7

    invoke-virtual {v7}, Landroid/animation/ValueAnimator;->start()V

    iget-object v7, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView$GeneralTouchHandler;->this$0:Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

    invoke-static {v7}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->-get1(Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;)Landroid/animation/ValueAnimator;

    move-result-object v7

    invoke-virtual {v7}, Landroid/animation/ValueAnimator;->start()V

    iget-object v7, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView$GeneralTouchHandler;->this$0:Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

    invoke-static {v7}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->-wrap6(Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;)V

    iget-object v7, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView$GeneralTouchHandler;->this$0:Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

    invoke-static {v7, p1}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->-wrap17(Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;Landroid/view/MotionEvent;)V

    goto/16 :goto_0

    :pswitch_2
    iget-object v7, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView$GeneralTouchHandler;->this$0:Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

    invoke-static {v7}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->-get25(Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;)Z

    move-result v7

    if-nez v7, :cond_1

    iget-object v7, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView$GeneralTouchHandler;->this$0:Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

    iget-object v7, v7, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mHelperCallback:Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper$Callback;

    invoke-interface {v7}, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper$Callback;->userActivity()V

    iget-object v7, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView$GeneralTouchHandler;->this$0:Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

    invoke-static {v7, p1}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->-wrap17(Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;Landroid/view/MotionEvent;)V

    iget-object v7, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView$GeneralTouchHandler;->this$0:Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

    invoke-static {v7}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->-get12(Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;)F

    move-result v7

    sub-float v4, v3, v7

    iget-object v7, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView$GeneralTouchHandler;->this$0:Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

    invoke-static {v7}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->-get13(Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;)F

    move-result v7

    sub-float v6, v5, v7

    float-to-double v8, v4

    float-to-double v10, v6

    invoke-static {v8, v9, v10, v11}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v8

    double-to-float v1, v8

    iget-object v7, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView$GeneralTouchHandler;->this$0:Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

    invoke-static {v7, v1}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->-set8(Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;F)F

    invoke-static {}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->-get6()Landroid/content/Context;

    move-result-object v7

    invoke-static {v7}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v7

    int-to-float v7, v7

    cmpl-float v7, v1, v7

    if-lez v7, :cond_4

    iget-object v7, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView$GeneralTouchHandler;->this$0:Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

    invoke-static {v7, v1}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->-wrap13(Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;F)V

    iget-object v7, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView$GeneralTouchHandler;->this$0:Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

    invoke-static {v7, v1}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->-wrap14(Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;F)V

    iget-object v7, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView$GeneralTouchHandler;->this$0:Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

    const/4 v8, 0x0

    invoke-static {v7, v8}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->-set22(Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;Z)Z

    iget-object v7, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView$GeneralTouchHandler;->this$0:Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

    iget-object v7, v7, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mHelperCallback:Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper$Callback;

    invoke-interface {v7}, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper$Callback;->cancelDAAffordance()V

    iget-object v7, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView$GeneralTouchHandler;->this$0:Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

    invoke-virtual {v7}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->invalidate()V

    :cond_4
    sget-boolean v7, Lcom/android/systemui/Rune;->KEYWI_SUPPORT_SHORTCUT_CUE:Z

    if-nez v7, :cond_1

    iget-object v7, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView$GeneralTouchHandler;->this$0:Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

    invoke-static {v7, v1}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->-wrap16(Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;F)V

    iget-object v7, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView$GeneralTouchHandler;->this$0:Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

    invoke-static {v7, v1}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->-set23(Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;F)F

    goto/16 :goto_0

    :pswitch_3
    iget-object v7, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView$GeneralTouchHandler;->this$0:Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

    invoke-static {v7}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->-get25(Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;)Z

    move-result v7

    if-nez v7, :cond_1

    const/4 v2, 0x1

    iget-object v7, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView$GeneralTouchHandler;->this$0:Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

    invoke-static {v7, v3, v5}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->-wrap4(Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;FF)V

    iget-object v7, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView$GeneralTouchHandler;->this$0:Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

    invoke-static {v7}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->-get14(Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;)Z

    move-result v7

    if-eqz v7, :cond_5

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v8

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getDownTime()J

    move-result-wide v10

    sub-long/2addr v8, v10

    invoke-static {}, Landroid/view/ViewConfiguration;->getTapTimeout()I

    move-result v7

    int-to-long v10, v7

    const-wide/16 v12, 0x2

    mul-long/2addr v10, v12

    cmp-long v7, v8, v10

    if-lez v7, :cond_7

    iget-object v7, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView$GeneralTouchHandler;->this$0:Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

    const/4 v8, 0x0

    invoke-static {v7, v8}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->-set22(Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;Z)Z

    :cond_5
    :goto_1
    :pswitch_4
    iget-object v7, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView$GeneralTouchHandler;->this$0:Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

    const/4 v8, 0x1

    invoke-static {v7, v8}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->-set29(Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;Z)Z

    iget-object v7, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView$GeneralTouchHandler;->this$0:Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

    iget-object v8, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView$GeneralTouchHandler;->this$0:Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

    invoke-static {v8}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->-get1(Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;)Landroid/animation/ValueAnimator;

    move-result-object v8

    const-string/jumbo v9, "mBlinkAnimator"

    invoke-static {v7, v8, v9}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->-wrap2(Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;Landroid/animation/Animator;Ljava/lang/String;)V

    iget-object v7, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView$GeneralTouchHandler;->this$0:Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

    invoke-static {v7, p1}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->-wrap17(Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;Landroid/view/MotionEvent;)V

    const-string/jumbo v7, "KeyguardCircleAffordanceView"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "onTouchEvent: mJustClicked="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView$GeneralTouchHandler;->this$0:Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

    invoke-static {v9}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->-get14(Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;)Z

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, ",mReveal="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView$GeneralTouchHandler;->this$0:Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

    invoke-static {v9}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->-get20(Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;)Z

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, ",isUp="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, ",mFling="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView$GeneralTouchHandler;->this$0:Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

    invoke-static {v9}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->-get10(Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;)Z

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v7, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView$GeneralTouchHandler;->this$0:Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

    invoke-static {v7}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->-get14(Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;)Z

    move-result v7

    if-eqz v7, :cond_6

    xor-int/lit8 v7, v2, 0x1

    if-eqz v7, :cond_c

    :cond_6
    iget-object v8, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView$GeneralTouchHandler;->this$0:Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

    invoke-static {}, Lcom/android/systemui/util/SettingsHelper;->getInstance()Lcom/android/systemui/util/SettingsHelper;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/systemui/util/SettingsHelper;->isWhiteKeyguardWallpaper()Z

    move-result v7

    if-eqz v7, :cond_8

    const/16 v7, 0x29

    :goto_2
    invoke-static {v8, v7}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->-set9(Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;I)I

    iget-object v7, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView$GeneralTouchHandler;->this$0:Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

    invoke-static {v7}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->-get20(Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;)Z

    move-result v7

    if-nez v7, :cond_a

    iget-object v7, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView$GeneralTouchHandler;->this$0:Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

    invoke-static {v7}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->-get10(Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;)Z

    move-result v7

    if-nez v7, :cond_1

    iget-object v7, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView$GeneralTouchHandler;->this$0:Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

    invoke-static {v7}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->-wrap1(Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;)V

    iget-object v7, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView$GeneralTouchHandler;->this$0:Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

    const/4 v8, 0x0

    invoke-static {v7, v8}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->-wrap15(Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;Z)V

    iget-object v7, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView$GeneralTouchHandler;->this$0:Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

    const/4 v8, 0x0

    invoke-static {v7, v8}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->-wrap11(Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;Z)V

    iget-object v7, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView$GeneralTouchHandler;->this$0:Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

    const/4 v8, 0x0

    invoke-static {v7, v8}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->-wrap10(Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;Z)V

    iget-object v7, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView$GeneralTouchHandler;->this$0:Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

    invoke-static {v7}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->-wrap12(Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;)V

    iget-object v7, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView$GeneralTouchHandler;->this$0:Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

    invoke-static {v7}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->-get17(Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;)Landroid/animation/ValueAnimator;

    move-result-object v7

    invoke-virtual {v7}, Landroid/animation/ValueAnimator;->start()V

    iget-object v7, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView$GeneralTouchHandler;->this$0:Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

    invoke-static {v7}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->-get8(Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;)Landroid/animation/ValueAnimator;

    move-result-object v7

    invoke-virtual {v7}, Landroid/animation/ValueAnimator;->start()V

    iget-object v7, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView$GeneralTouchHandler;->this$0:Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

    invoke-static {v7}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->-get7(Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;)Landroid/animation/ValueAnimator;

    move-result-object v7

    invoke-virtual {v7}, Landroid/animation/ValueAnimator;->start()V

    iget-object v7, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView$GeneralTouchHandler;->this$0:Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

    invoke-static {v7}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->-get18(Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;)Landroid/animation/ValueAnimator;

    move-result-object v7

    invoke-virtual {v7}, Landroid/animation/ValueAnimator;->start()V

    iget-object v7, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView$GeneralTouchHandler;->this$0:Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

    invoke-static {v7}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->-get4(Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;)Landroid/graphics/Paint;

    move-result-object v7

    invoke-virtual {v7}, Landroid/graphics/Paint;->getAlpha()I

    move-result v7

    if-eqz v7, :cond_9

    iget-object v7, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView$GeneralTouchHandler;->this$0:Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

    const/4 v8, 0x0

    invoke-static {v7, v8}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->-wrap8(Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;Z)V

    iget-object v7, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView$GeneralTouchHandler;->this$0:Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

    invoke-static {v7}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->-get5(Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;)Landroid/animation/ValueAnimator;

    move-result-object v7

    invoke-virtual {v7}, Landroid/animation/ValueAnimator;->start()V

    goto/16 :goto_0

    :cond_7
    iget-object v7, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView$GeneralTouchHandler;->this$0:Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

    invoke-static {v7}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->-get16(Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;)Landroid/graphics/RectF;

    move-result-object v7

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-virtual {v7, v8, v9, v10, v11}, Landroid/graphics/RectF;->set(FFFF)V

    iget-object v7, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView$GeneralTouchHandler;->this$0:Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

    iget-object v7, v7, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mHelperCallback:Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper$Callback;

    iget-object v8, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView$GeneralTouchHandler;->this$0:Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

    invoke-static {v8}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->-get21(Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;)Z

    move-result v8

    invoke-interface {v7, v8}, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper$Callback;->onIconClicked(Z)Z

    goto/16 :goto_1

    :cond_8
    const/16 v7, 0x59

    goto/16 :goto_2

    :cond_9
    iget-object v7, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView$GeneralTouchHandler;->this$0:Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

    const/4 v8, 0x0

    invoke-static {v7, v8}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->-set4(Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;F)F

    goto/16 :goto_0

    :cond_a
    iget-object v7, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView$GeneralTouchHandler;->this$0:Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

    invoke-static {v7}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->-wrap0(Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;)Z

    move-result v7

    if-eqz v7, :cond_b

    iget-object v7, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView$GeneralTouchHandler;->this$0:Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

    invoke-static {v7}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->-wrap1(Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;)V

    iget-object v7, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView$GeneralTouchHandler;->this$0:Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

    const/4 v8, 0x0

    invoke-static {v7, v8}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->-set12(Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;F)F

    iget-object v7, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView$GeneralTouchHandler;->this$0:Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

    const/4 v8, 0x0

    invoke-static {v7, v8}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->-set4(Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;F)F

    iget-object v7, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView$GeneralTouchHandler;->this$0:Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

    invoke-static {v7}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->-get4(Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;)Landroid/graphics/Paint;

    move-result-object v7

    const/16 v8, 0xff

    invoke-virtual {v7, v8}, Landroid/graphics/Paint;->setAlpha(I)V

    iget-object v7, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView$GeneralTouchHandler;->this$0:Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v9}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->setImageAlpha(FZ)V

    iget-object v7, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView$GeneralTouchHandler;->this$0:Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

    const/4 v8, 0x0

    invoke-static {v7, v8}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->-wrap15(Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;Z)V

    iget-object v7, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView$GeneralTouchHandler;->this$0:Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

    invoke-static {v7}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->-wrap12(Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;)V

    goto/16 :goto_0

    :cond_b
    iget-object v7, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView$GeneralTouchHandler;->this$0:Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

    invoke-static {v7}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->-get23(Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;)Z

    move-result v7

    if-nez v7, :cond_1

    iget-object v7, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView$GeneralTouchHandler;->this$0:Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

    invoke-static {v7}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->-wrap5(Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;)V

    iget-object v7, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView$GeneralTouchHandler;->this$0:Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

    invoke-virtual {v7}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->invalidate()V

    goto/16 :goto_0

    :cond_c
    iget-object v7, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView$GeneralTouchHandler;->this$0:Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

    invoke-virtual {v7}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->releaseShader()V

    goto/16 :goto_0

    :pswitch_5
    iget-object v7, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView$GeneralTouchHandler;->this$0:Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

    const/4 v8, 0x0

    invoke-static {v7, v8}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->-set22(Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;Z)Z

    iget-object v7, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView$GeneralTouchHandler;->this$0:Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

    invoke-static {v7, p1}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->-wrap3(Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;Landroid/view/MotionEvent;)V

    iget-object v7, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView$GeneralTouchHandler;->this$0:Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

    iget-object v7, v7, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mHelperCallback:Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper$Callback;

    invoke-interface {v7}, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper$Callback;->onSwipingAborted()V

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_3
        :pswitch_2
        :pswitch_4
        :pswitch_0
        :pswitch_5
    .end packed-switch
.end method
