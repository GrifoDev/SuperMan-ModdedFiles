.class Lcom/android/systemui/screenshot/GlobalScreenshot$3;
.super Ljava/lang/Object;
.source "GlobalScreenshot.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/screenshot/GlobalScreenshot;->takeScreenshotPartial(Ljava/lang/Runnable;ZZLandroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/screenshot/GlobalScreenshot;

.field final synthetic val$finisher:Ljava/lang/Runnable;

.field final synthetic val$navBarVisible:Z

.field final synthetic val$statusBarVisible:Z


# direct methods
.method constructor <init>(Lcom/android/systemui/screenshot/GlobalScreenshot;ZZLjava/lang/Runnable;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/screenshot/GlobalScreenshot$3;->this$0:Lcom/android/systemui/screenshot/GlobalScreenshot;

    iput-boolean p2, p0, Lcom/android/systemui/screenshot/GlobalScreenshot$3;->val$statusBarVisible:Z

    iput-boolean p3, p0, Lcom/android/systemui/screenshot/GlobalScreenshot$3;->val$navBarVisible:Z

    iput-object p4, p0, Lcom/android/systemui/screenshot/GlobalScreenshot$3;->val$finisher:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 9

    const/4 v8, 0x1

    const/4 v1, 0x0

    move-object v6, p1

    check-cast v6, Lcom/android/systemui/screenshot/ScreenshotSelectorView;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    return v1

    :pswitch_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {v6, v0, v1}, Lcom/android/systemui/screenshot/ScreenshotSelectorView;->startSelection(II)V

    return v8

    :pswitch_1
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {v6, v0, v1}, Lcom/android/systemui/screenshot/ScreenshotSelectorView;->updateSelection(II)V

    return v8

    :pswitch_2
    const/16 v0, 0x8

    invoke-virtual {v6, v0}, Lcom/android/systemui/screenshot/ScreenshotSelectorView;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/systemui/screenshot/GlobalScreenshot$3;->this$0:Lcom/android/systemui/screenshot/GlobalScreenshot;

    invoke-static {v0}, Lcom/android/systemui/screenshot/GlobalScreenshot;->-get10(Lcom/android/systemui/screenshot/GlobalScreenshot;)Landroid/view/WindowManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/screenshot/GlobalScreenshot$3;->this$0:Lcom/android/systemui/screenshot/GlobalScreenshot;

    invoke-static {v1}, Lcom/android/systemui/screenshot/GlobalScreenshot;->-get7(Lcom/android/systemui/screenshot/GlobalScreenshot;)Landroid/view/View;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    invoke-virtual {v6}, Lcom/android/systemui/screenshot/ScreenshotSelectorView;->getSelectionRect()Landroid/graphics/Rect;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/screenshot/GlobalScreenshot$3;->this$0:Lcom/android/systemui/screenshot/GlobalScreenshot;

    invoke-static {v0}, Lcom/android/systemui/screenshot/GlobalScreenshot;->-get7(Lcom/android/systemui/screenshot/GlobalScreenshot;)Landroid/view/View;

    move-result-object v7

    new-instance v0, Lcom/android/systemui/screenshot/GlobalScreenshot$3$1;

    iget-boolean v3, p0, Lcom/android/systemui/screenshot/GlobalScreenshot$3;->val$statusBarVisible:Z

    iget-boolean v4, p0, Lcom/android/systemui/screenshot/GlobalScreenshot$3;->val$navBarVisible:Z

    iget-object v5, p0, Lcom/android/systemui/screenshot/GlobalScreenshot$3;->val$finisher:Ljava/lang/Runnable;

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/systemui/screenshot/GlobalScreenshot$3$1;-><init>(Lcom/android/systemui/screenshot/GlobalScreenshot$3;Landroid/graphics/Rect;ZZLjava/lang/Runnable;)V

    invoke-virtual {v7, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    :cond_0
    invoke-virtual {v6}, Lcom/android/systemui/screenshot/ScreenshotSelectorView;->stopSelection()V

    return v8

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method
