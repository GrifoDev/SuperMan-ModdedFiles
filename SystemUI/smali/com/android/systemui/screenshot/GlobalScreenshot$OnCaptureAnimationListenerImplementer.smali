.class Lcom/android/systemui/screenshot/GlobalScreenshot$OnCaptureAnimationListenerImplementer;
.super Ljava/lang/Object;
.source "GlobalScreenshot.java"

# interfaces
.implements Lcom/android/systemui/screenshot/CaptureEffectView$OnCaptureAnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/screenshot/GlobalScreenshot;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "OnCaptureAnimationListenerImplementer"
.end annotation


# instance fields
.field private finisher:Ljava/lang/Runnable;

.field private frame:Landroid/widget/FrameLayout;

.field final synthetic this$0:Lcom/android/systemui/screenshot/GlobalScreenshot;


# direct methods
.method public constructor <init>(Lcom/android/systemui/screenshot/GlobalScreenshot;Landroid/widget/FrameLayout;Ljava/lang/Runnable;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/screenshot/GlobalScreenshot$OnCaptureAnimationListenerImplementer;->this$0:Lcom/android/systemui/screenshot/GlobalScreenshot;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/android/systemui/screenshot/GlobalScreenshot$OnCaptureAnimationListenerImplementer;->frame:Landroid/widget/FrameLayout;

    iput-object p3, p0, Lcom/android/systemui/screenshot/GlobalScreenshot$OnCaptureAnimationListenerImplementer;->finisher:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public onFinish()V
    .locals 6

    iget-object v0, p0, Lcom/android/systemui/screenshot/GlobalScreenshot$OnCaptureAnimationListenerImplementer;->this$0:Lcom/android/systemui/screenshot/GlobalScreenshot;

    iget-object v1, v0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mShutterEffectLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    invoke-static {}, Lcom/android/systemui/screenshot/GlobalScreenshot;->-get0()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v2, "Capture effect finished!"

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/systemui/screenshot/GlobalScreenshot$OnCaptureAnimationListenerImplementer;->this$0:Lcom/android/systemui/screenshot/GlobalScreenshot;

    invoke-static {v0}, Lcom/android/systemui/screenshot/GlobalScreenshot;->-get6(Lcom/android/systemui/screenshot/GlobalScreenshot;)Ljava/util/List;

    move-result-object v2

    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    iget-object v3, p0, Lcom/android/systemui/screenshot/GlobalScreenshot$OnCaptureAnimationListenerImplementer;->this$0:Lcom/android/systemui/screenshot/GlobalScreenshot;

    iget-object v4, p0, Lcom/android/systemui/screenshot/GlobalScreenshot$OnCaptureAnimationListenerImplementer;->finisher:Ljava/lang/Runnable;

    iget-object v0, p0, Lcom/android/systemui/screenshot/GlobalScreenshot$OnCaptureAnimationListenerImplementer;->this$0:Lcom/android/systemui/screenshot/GlobalScreenshot;

    invoke-static {v0}, Lcom/android/systemui/screenshot/GlobalScreenshot;->-get6(Lcom/android/systemui/screenshot/GlobalScreenshot;)Ljava/util/List;

    move-result-object v0

    const/4 v5, 0x0

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    invoke-static {v3, v4, v0}, Lcom/android/systemui/screenshot/GlobalScreenshot;->-wrap2(Lcom/android/systemui/screenshot/GlobalScreenshot;Ljava/lang/Runnable;Landroid/graphics/Bitmap;)V

    iget-object v0, p0, Lcom/android/systemui/screenshot/GlobalScreenshot$OnCaptureAnimationListenerImplementer;->this$0:Lcom/android/systemui/screenshot/GlobalScreenshot;

    invoke-static {v0}, Lcom/android/systemui/screenshot/GlobalScreenshot;->-get6(Lcom/android/systemui/screenshot/GlobalScreenshot;)Ljava/util/List;

    move-result-object v0

    const/4 v3, 0x0

    invoke-interface {v0, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/systemui/screenshot/GlobalScreenshot$OnCaptureAnimationListenerImplementer;->this$0:Lcom/android/systemui/screenshot/GlobalScreenshot;

    invoke-static {v0}, Lcom/android/systemui/screenshot/GlobalScreenshot;->-get6(Lcom/android/systemui/screenshot/GlobalScreenshot;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/screenshot/GlobalScreenshot$OnCaptureAnimationListenerImplementer;->frame:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/screenshot/GlobalScreenshot$OnCaptureAnimationListenerImplementer;->this$0:Lcom/android/systemui/screenshot/GlobalScreenshot;

    invoke-static {v0}, Lcom/android/systemui/screenshot/GlobalScreenshot;->-get10(Lcom/android/systemui/screenshot/GlobalScreenshot;)Landroid/view/WindowManager;

    move-result-object v0

    iget-object v3, p0, Lcom/android/systemui/screenshot/GlobalScreenshot$OnCaptureAnimationListenerImplementer;->this$0:Lcom/android/systemui/screenshot/GlobalScreenshot;

    invoke-static {v3}, Lcom/android/systemui/screenshot/GlobalScreenshot;->-get7(Lcom/android/systemui/screenshot/GlobalScreenshot;)Landroid/view/View;

    move-result-object v3

    invoke-interface {v0, v3}, Landroid/view/WindowManager;->removeViewImmediate(Landroid/view/View;)V

    iget-object v0, p0, Lcom/android/systemui/screenshot/GlobalScreenshot$OnCaptureAnimationListenerImplementer;->this$0:Lcom/android/systemui/screenshot/GlobalScreenshot;

    invoke-static {v0}, Lcom/android/systemui/screenshot/GlobalScreenshot;->-get10(Lcom/android/systemui/screenshot/GlobalScreenshot;)Landroid/view/WindowManager;

    move-result-object v0

    iget-object v3, p0, Lcom/android/systemui/screenshot/GlobalScreenshot$OnCaptureAnimationListenerImplementer;->frame:Landroid/widget/FrameLayout;

    invoke-interface {v0, v3}, Landroid/view/WindowManager;->removeViewImmediate(Landroid/view/View;)V

    iget-object v0, p0, Lcom/android/systemui/screenshot/GlobalScreenshot$OnCaptureAnimationListenerImplementer;->frame:Landroid/widget/FrameLayout;

    iget-object v3, p0, Lcom/android/systemui/screenshot/GlobalScreenshot$OnCaptureAnimationListenerImplementer;->this$0:Lcom/android/systemui/screenshot/GlobalScreenshot;

    invoke-static {v3}, Lcom/android/systemui/screenshot/GlobalScreenshot;->-get2(Lcom/android/systemui/screenshot/GlobalScreenshot;)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/screenshot/GlobalScreenshot$OnCaptureAnimationListenerImplementer;->this$0:Lcom/android/systemui/screenshot/GlobalScreenshot;

    const/4 v3, 0x0

    invoke-static {v0, v3}, Lcom/android/systemui/screenshot/GlobalScreenshot;->-set0(Lcom/android/systemui/screenshot/GlobalScreenshot;Landroid/view/View;)Landroid/view/View;

    iget-object v0, p0, Lcom/android/systemui/screenshot/GlobalScreenshot$OnCaptureAnimationListenerImplementer;->this$0:Lcom/android/systemui/screenshot/GlobalScreenshot;

    const/4 v3, 0x0

    invoke-static {v0, v3}, Lcom/android/systemui/screenshot/GlobalScreenshot;->-set2(Lcom/android/systemui/screenshot/GlobalScreenshot;Z)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    monitor-exit v1

    return-void

    :cond_1
    :try_start_3
    iget-object v0, p0, Lcom/android/systemui/screenshot/GlobalScreenshot$OnCaptureAnimationListenerImplementer;->frame:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/systemui/screenshot/GlobalScreenshot$OnCaptureAnimationListenerImplementer;->this$0:Lcom/android/systemui/screenshot/GlobalScreenshot;

    invoke-static {v0}, Lcom/android/systemui/screenshot/GlobalScreenshot;->-get9(Lcom/android/systemui/screenshot/GlobalScreenshot;)Landroid/widget/ImageView;

    move-result-object v3

    iget-object v0, p0, Lcom/android/systemui/screenshot/GlobalScreenshot$OnCaptureAnimationListenerImplementer;->this$0:Lcom/android/systemui/screenshot/GlobalScreenshot;

    invoke-static {v0}, Lcom/android/systemui/screenshot/GlobalScreenshot;->-get6(Lcom/android/systemui/screenshot/GlobalScreenshot;)Ljava/util/List;

    move-result-object v0

    const/4 v4, 0x0

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    invoke-virtual {v3, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    iget-object v0, p0, Lcom/android/systemui/screenshot/GlobalScreenshot$OnCaptureAnimationListenerImplementer;->this$0:Lcom/android/systemui/screenshot/GlobalScreenshot;

    invoke-static {v0}, Lcom/android/systemui/screenshot/GlobalScreenshot;->-get7(Lcom/android/systemui/screenshot/GlobalScreenshot;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    iget-object v0, p0, Lcom/android/systemui/screenshot/GlobalScreenshot$OnCaptureAnimationListenerImplementer;->this$0:Lcom/android/systemui/screenshot/GlobalScreenshot;

    invoke-static {v0}, Lcom/android/systemui/screenshot/GlobalScreenshot;->-get7(Lcom/android/systemui/screenshot/GlobalScreenshot;)Landroid/view/View;

    move-result-object v0

    new-instance v3, Lcom/android/systemui/screenshot/GlobalScreenshot$OnCaptureAnimationListenerImplementer$1;

    invoke-direct {v3, p0}, Lcom/android/systemui/screenshot/GlobalScreenshot$OnCaptureAnimationListenerImplementer$1;-><init>(Lcom/android/systemui/screenshot/GlobalScreenshot$OnCaptureAnimationListenerImplementer;)V

    invoke-virtual {v0, v3}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    :try_start_4
    monitor-exit v2

    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :catchall_1
    move-exception v0

    monitor-exit v1

    throw v0

    :cond_2
    :try_start_5
    new-instance v0, Lcom/android/systemui/screenshot/GlobalScreenshot$OnCaptureAnimationListenerImplementer;

    iget-object v3, p0, Lcom/android/systemui/screenshot/GlobalScreenshot$OnCaptureAnimationListenerImplementer;->this$0:Lcom/android/systemui/screenshot/GlobalScreenshot;

    iget-object v4, p0, Lcom/android/systemui/screenshot/GlobalScreenshot$OnCaptureAnimationListenerImplementer;->finisher:Ljava/lang/Runnable;

    const/4 v5, 0x0

    invoke-direct {v0, v3, v5, v4}, Lcom/android/systemui/screenshot/GlobalScreenshot$OnCaptureAnimationListenerImplementer;-><init>(Lcom/android/systemui/screenshot/GlobalScreenshot;Landroid/widget/FrameLayout;Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Lcom/android/systemui/screenshot/GlobalScreenshot$OnCaptureAnimationListenerImplementer;->onFinish()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_0
.end method
