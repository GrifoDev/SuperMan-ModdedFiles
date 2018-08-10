.class Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView$8;
.super Ljava/lang/Object;
.source "TaskBarView.java"

# interfaces
.implements Landroid/view/View$OnGenericMotionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;->setup(Lcom/android/systemui/statusbar/phone/taskbar/TaskBar;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView$8;->this$0:Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGenericMotion(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 6

    const/4 v5, 0x0

    const/4 v4, 0x0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    return v4

    :pswitch_0
    invoke-static {}, Lcom/android/systemui/statusbar/phone/taskbar/utils/TaskBarUtilities;->DEBUGGABLE()Z

    move-result v2

    if-eqz v2, :cond_0

    const-string/jumbo v2, "[DS]TaskBarView"

    const-string/jumbo v3, " onGenericMotion ACTION_SCROLL"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView$8;->this$0:Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;

    iget-object v2, v2, Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;->mContextMenuLayout:Lcom/android/systemui/statusbar/phone/taskbar/views/ContextMenuLayout;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView$8;->this$0:Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;->closeContextMenu()V

    :cond_1
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView$8;->this$0:Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;

    iget-object v2, v2, Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;->mContent:Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutTaskbar;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutTaskbar;->dismissAeroWindow()V

    const/16 v2, 0x9

    invoke-virtual {p2, v2}, Landroid/view/MotionEvent;->getAxisValue(I)F

    move-result v2

    neg-float v1, v2

    const/16 v2, 0xa

    invoke-virtual {p2, v2}, Landroid/view/MotionEvent;->getAxisValue(I)F

    move-result v0

    invoke-static {v0, v5}, Ljava/lang/Float;->compare(FF)I

    move-result v2

    if-nez v2, :cond_2

    invoke-static {v1, v5}, Ljava/lang/Float;->compare(FF)I

    move-result v2

    if-eqz v2, :cond_4

    :cond_2
    invoke-static {v0, v5}, Ljava/lang/Float;->compare(FF)I

    move-result v2

    if-ltz v2, :cond_3

    invoke-static {v1, v5}, Ljava/lang/Float;->compare(FF)I

    move-result v2

    if-gez v2, :cond_6

    :cond_3
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView$8;->this$0:Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;

    iget-object v3, v2, Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;->mContentScrollView:Landroid/widget/HorizontalScrollView;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView$8;->this$0:Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;

    invoke-static {v2}, Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;->-get0(Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;)Z

    move-result v2

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView$8;->this$0:Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;

    invoke-static {v2}, Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;->-get6(Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;)I

    move-result v2

    :goto_0
    invoke-virtual {v3, v2, v4}, Landroid/widget/HorizontalScrollView;->smoothScrollBy(II)V

    :cond_4
    :goto_1
    const/4 v2, 0x1

    return v2

    :cond_5
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView$8;->this$0:Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;

    invoke-static {v2}, Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;->-get6(Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;)I

    move-result v2

    neg-int v2, v2

    goto :goto_0

    :cond_6
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView$8;->this$0:Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;

    iget-object v3, v2, Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;->mContentScrollView:Landroid/widget/HorizontalScrollView;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView$8;->this$0:Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;

    invoke-static {v2}, Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;->-get0(Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;)Z

    move-result v2

    if-eqz v2, :cond_7

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView$8;->this$0:Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;

    invoke-static {v2}, Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;->-get6(Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;)I

    move-result v2

    neg-int v2, v2

    :goto_2
    invoke-virtual {v3, v2, v4}, Landroid/widget/HorizontalScrollView;->smoothScrollBy(II)V

    goto :goto_1

    :cond_7
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView$8;->this$0:Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;

    invoke-static {v2}, Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;->-get6(Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;)I

    move-result v2

    goto :goto_2

    nop

    :pswitch_data_0
    .packed-switch 0x8
        :pswitch_0
    .end packed-switch
.end method
