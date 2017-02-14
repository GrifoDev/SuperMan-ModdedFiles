.class Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment$3;
.super Ljava/lang/Object;
.source "SettingsMenuEditorFragment.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment$3;->this$0:Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 5

    const/4 v4, 0x1

    const-string/jumbo v0, "SettingsMenuEditorFragment"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "mGridViewTouchListener: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :cond_0
    :goto_0
    const/4 v0, 0x0

    return v0

    :pswitch_0
    const-string/jumbo v0, "SettingsMenuEditorFragment"

    const-string/jumbo v1, "mGridViewTouchListener_ACTION_DOWN"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment$3;->this$0:Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;

    invoke-static {v0}, Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->-get7(Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "SettingsMenuEditorFragment"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "mGridViewTouchListener - ACTION_MOVE_X: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", ACTION_MOVE_Y: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment$3;->this$0:Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;

    invoke-static {v0}, Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->-get13(Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;)F

    move-result v1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v2

    iget-object v3, p0, Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment$3;->this$0:Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;

    invoke-static {v3}, Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->-get8(Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;)F

    move-result v3

    sub-float/2addr v2, v3

    add-float/2addr v1, v2

    invoke-static {v0, v1}, Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->-set2(Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;F)F

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment$3;->this$0:Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;

    invoke-static {v0}, Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->-get14(Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;)F

    move-result v1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v2

    iget-object v3, p0, Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment$3;->this$0:Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;

    invoke-static {v3}, Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->-get9(Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;)F

    move-result v3

    sub-float/2addr v2, v3

    add-float/2addr v1, v2

    invoke-static {v0, v1}, Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->-set3(Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;F)F

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment$3;->this$0:Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v1

    invoke-static {v0, v1}, Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->-set0(Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;F)F

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment$3;->this$0:Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v1

    invoke-static {v0, v1}, Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->-set1(Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;F)F

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment$3;->this$0:Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;

    invoke-static {v0}, Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->-wrap9(Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;)V

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment$3;->this$0:Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;

    invoke-static {v0}, Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->-wrap1(Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment$3;->this$0:Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;

    invoke-static {v0}, Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->-get11(Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment$3;->this$0:Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;

    invoke-static {v0}, Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->-get11(Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment$3;->this$0:Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;

    invoke-static {v1}, Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->-get11(Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;)Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment$3;->this$0:Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;

    invoke-static {v2}, Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->-get10(Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;)Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment$SCROLL_MOTION;

    move-result-object v2

    invoke-virtual {v1, v4, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    :cond_1
    :goto_1
    return v4

    :cond_2
    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment$3;->this$0:Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;

    invoke-static {v0}, Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->-get11(Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment$3;->this$0:Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;

    invoke-static {v0}, Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->-get6(Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment$3;->this$0:Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;

    invoke-static {v0}, Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->-wrap6(Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;)V

    goto :goto_1

    :pswitch_2
    const-string/jumbo v0, "SettingsMenuEditorFragment"

    const-string/jumbo v1, "mGridViewTouchListener_ACTION_CANCEL"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment$3;->this$0:Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;

    invoke-static {v0}, Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->-get7(Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment$3;->this$0:Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;

    invoke-static {v0}, Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->-wrap8(Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;)V

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment$3;->this$0:Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;

    invoke-static {v0}, Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->-wrap3(Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;)V

    return v4

    :pswitch_3
    const-string/jumbo v0, "SettingsMenuEditorFragment"

    const-string/jumbo v1, "mGridViewTouchListener_ACTION_UP"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment$3;->this$0:Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;

    invoke-static {v0}, Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->-get7(Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment$3;->this$0:Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;

    invoke-static {v0}, Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->-wrap8(Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;)V

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment$3;->this$0:Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;

    invoke-static {v0}, Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->-wrap3(Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;)V

    :cond_3
    return v4

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_3
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
