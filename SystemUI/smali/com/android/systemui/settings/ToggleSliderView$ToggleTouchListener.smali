.class Lcom/android/systemui/settings/ToggleSliderView$ToggleTouchListener;
.super Ljava/lang/Object;
.source "ToggleSliderView.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/settings/ToggleSliderView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ToggleTouchListener"
.end annotation


# instance fields
.field private mFocusInside:Z

.field final synthetic this$0:Lcom/android/systemui/settings/ToggleSliderView;


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 5

    const/4 v4, 0x1

    const/4 v3, 0x0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    iget-object v1, p0, Lcom/android/systemui/settings/ToggleSliderView$ToggleTouchListener;->this$0:Lcom/android/systemui/settings/ToggleSliderView;

    invoke-static {v1}, Lcom/android/systemui/settings/ToggleSliderView;->-get8(Lcom/android/systemui/settings/ToggleSliderView;)Landroid/widget/CompoundButton;

    move-result-object v1

    if-nez v1, :cond_0

    return v3

    :cond_0
    packed-switch v0, :pswitch_data_0

    iget-object v1, p0, Lcom/android/systemui/settings/ToggleSliderView$ToggleTouchListener;->this$0:Lcom/android/systemui/settings/ToggleSliderView;

    invoke-static {v1}, Lcom/android/systemui/settings/ToggleSliderView;->-get8(Lcom/android/systemui/settings/ToggleSliderView;)Landroid/widget/CompoundButton;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/widget/CompoundButton;->setPressed(Z)V

    iput-boolean v3, p0, Lcom/android/systemui/settings/ToggleSliderView$ToggleTouchListener;->mFocusInside:Z

    :goto_0
    return v4

    :pswitch_0
    iget-object v1, p0, Lcom/android/systemui/settings/ToggleSliderView$ToggleTouchListener;->this$0:Lcom/android/systemui/settings/ToggleSliderView;

    invoke-static {v1}, Lcom/android/systemui/settings/ToggleSliderView;->-get8(Lcom/android/systemui/settings/ToggleSliderView;)Landroid/widget/CompoundButton;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/widget/CompoundButton;->setPressed(Z)V

    iput-boolean v4, p0, Lcom/android/systemui/settings/ToggleSliderView$ToggleTouchListener;->mFocusInside:Z

    goto :goto_0

    :pswitch_1
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v2

    int-to-float v2, v2

    cmpl-float v1, v1, v2

    if-lez v1, :cond_1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/View;->getBottom()I

    move-result v2

    int-to-float v2, v2

    cmpg-float v1, v1, v2

    if-gez v1, :cond_1

    iget-object v1, p0, Lcom/android/systemui/settings/ToggleSliderView$ToggleTouchListener;->this$0:Lcom/android/systemui/settings/ToggleSliderView;

    invoke-static {v1}, Lcom/android/systemui/settings/ToggleSliderView;->-get8(Lcom/android/systemui/settings/ToggleSliderView;)Landroid/widget/CompoundButton;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/widget/CompoundButton;->setPressed(Z)V

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/android/systemui/settings/ToggleSliderView$ToggleTouchListener;->this$0:Lcom/android/systemui/settings/ToggleSliderView;

    invoke-static {v1}, Lcom/android/systemui/settings/ToggleSliderView;->-get8(Lcom/android/systemui/settings/ToggleSliderView;)Landroid/widget/CompoundButton;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/widget/CompoundButton;->setPressed(Z)V

    iput-boolean v3, p0, Lcom/android/systemui/settings/ToggleSliderView$ToggleTouchListener;->mFocusInside:Z

    goto :goto_0

    :pswitch_2
    iget-boolean v1, p0, Lcom/android/systemui/settings/ToggleSliderView$ToggleTouchListener;->mFocusInside:Z

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/systemui/settings/ToggleSliderView$ToggleTouchListener;->this$0:Lcom/android/systemui/settings/ToggleSliderView;

    invoke-static {v1}, Lcom/android/systemui/settings/ToggleSliderView;->-get8(Lcom/android/systemui/settings/ToggleSliderView;)Landroid/widget/CompoundButton;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/settings/ToggleSliderView$ToggleTouchListener;->this$0:Lcom/android/systemui/settings/ToggleSliderView;

    invoke-static {v2}, Lcom/android/systemui/settings/ToggleSliderView;->-get8(Lcom/android/systemui/settings/ToggleSliderView;)Landroid/widget/CompoundButton;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/CompoundButton;->setChecked(Z)V

    iget-object v1, p0, Lcom/android/systemui/settings/ToggleSliderView$ToggleTouchListener;->this$0:Lcom/android/systemui/settings/ToggleSliderView;

    invoke-static {v1}, Lcom/android/systemui/settings/ToggleSliderView;->-get8(Lcom/android/systemui/settings/ToggleSliderView;)Landroid/widget/CompoundButton;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/widget/CompoundButton;->playSoundEffect(I)V

    :cond_2
    iget-object v1, p0, Lcom/android/systemui/settings/ToggleSliderView$ToggleTouchListener;->this$0:Lcom/android/systemui/settings/ToggleSliderView;

    invoke-static {v1}, Lcom/android/systemui/settings/ToggleSliderView;->-get8(Lcom/android/systemui/settings/ToggleSliderView;)Landroid/widget/CompoundButton;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/widget/CompoundButton;->setPressed(Z)V

    iput-boolean v3, p0, Lcom/android/systemui/settings/ToggleSliderView$ToggleTouchListener;->mFocusInside:Z

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method
