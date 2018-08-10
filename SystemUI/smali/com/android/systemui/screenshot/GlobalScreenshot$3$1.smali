.class Lcom/android/systemui/screenshot/GlobalScreenshot$3$1;
.super Ljava/lang/Object;
.source "GlobalScreenshot.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/screenshot/GlobalScreenshot$3;->onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/systemui/screenshot/GlobalScreenshot$3;

.field final synthetic val$finisher:Ljava/lang/Runnable;

.field final synthetic val$navBarVisible:Z

.field final synthetic val$rect:Landroid/graphics/Rect;

.field final synthetic val$statusBarVisible:Z


# direct methods
.method constructor <init>(Lcom/android/systemui/screenshot/GlobalScreenshot$3;Landroid/graphics/Rect;ZZLjava/lang/Runnable;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/screenshot/GlobalScreenshot$3$1;->this$1:Lcom/android/systemui/screenshot/GlobalScreenshot$3;

    iput-object p2, p0, Lcom/android/systemui/screenshot/GlobalScreenshot$3$1;->val$rect:Landroid/graphics/Rect;

    iput-boolean p3, p0, Lcom/android/systemui/screenshot/GlobalScreenshot$3$1;->val$statusBarVisible:Z

    iput-boolean p4, p0, Lcom/android/systemui/screenshot/GlobalScreenshot$3$1;->val$navBarVisible:Z

    iput-object p5, p0, Lcom/android/systemui/screenshot/GlobalScreenshot$3$1;->val$finisher:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v1, "rect"

    iget-object v2, p0, Lcom/android/systemui/screenshot/GlobalScreenshot$3$1;->val$rect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    iget-object v1, p0, Lcom/android/systemui/screenshot/GlobalScreenshot$3$1;->this$1:Lcom/android/systemui/screenshot/GlobalScreenshot$3;

    iget-object v1, v1, Lcom/android/systemui/screenshot/GlobalScreenshot$3;->this$0:Lcom/android/systemui/screenshot/GlobalScreenshot;

    iget-object v2, p0, Lcom/android/systemui/screenshot/GlobalScreenshot$3$1;->this$1:Lcom/android/systemui/screenshot/GlobalScreenshot$3;

    iget-object v2, v2, Lcom/android/systemui/screenshot/GlobalScreenshot$3;->this$0:Lcom/android/systemui/screenshot/GlobalScreenshot;

    iget-object v3, p0, Lcom/android/systemui/screenshot/GlobalScreenshot$3$1;->this$1:Lcom/android/systemui/screenshot/GlobalScreenshot$3;

    iget-object v3, v3, Lcom/android/systemui/screenshot/GlobalScreenshot$3;->this$0:Lcom/android/systemui/screenshot/GlobalScreenshot;

    invoke-static {v3}, Lcom/android/systemui/screenshot/GlobalScreenshot;->-get4(Lcom/android/systemui/screenshot/GlobalScreenshot;)Landroid/content/Context;

    move-result-object v3

    const/4 v4, 0x2

    invoke-static {v2, v3, v4}, Lcom/android/systemui/screenshot/GlobalScreenshot;->-wrap0(Lcom/android/systemui/screenshot/GlobalScreenshot;Landroid/content/Context;I)Lcom/android/systemui/screenshot/ScreenCaptureHelper;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/systemui/screenshot/GlobalScreenshot;->-set1(Lcom/android/systemui/screenshot/GlobalScreenshot;Lcom/android/systemui/screenshot/ScreenCaptureHelper;)Lcom/android/systemui/screenshot/ScreenCaptureHelper;

    iget-object v1, p0, Lcom/android/systemui/screenshot/GlobalScreenshot$3$1;->this$1:Lcom/android/systemui/screenshot/GlobalScreenshot$3;

    iget-object v1, v1, Lcom/android/systemui/screenshot/GlobalScreenshot$3;->this$0:Lcom/android/systemui/screenshot/GlobalScreenshot;

    invoke-static {v1}, Lcom/android/systemui/screenshot/GlobalScreenshot;->-get5(Lcom/android/systemui/screenshot/GlobalScreenshot;)Lcom/android/systemui/screenshot/ScreenCaptureHelper;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/screenshot/GlobalScreenshot$3$1;->this$1:Lcom/android/systemui/screenshot/GlobalScreenshot$3;

    iget-object v2, v2, Lcom/android/systemui/screenshot/GlobalScreenshot$3;->this$0:Lcom/android/systemui/screenshot/GlobalScreenshot;

    invoke-static {v2}, Lcom/android/systemui/screenshot/GlobalScreenshot;->-get4(Lcom/android/systemui/screenshot/GlobalScreenshot;)Landroid/content/Context;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/systemui/screenshot/GlobalScreenshot$3$1;->val$statusBarVisible:Z

    iget-boolean v4, p0, Lcom/android/systemui/screenshot/GlobalScreenshot$3$1;->val$navBarVisible:Z

    invoke-virtual {v1, v2, v3, v4, v0}, Lcom/android/systemui/screenshot/ScreenCaptureHelper;->initiallize(Landroid/content/Context;ZZLandroid/os/Bundle;)V

    iget-object v1, p0, Lcom/android/systemui/screenshot/GlobalScreenshot$3$1;->this$1:Lcom/android/systemui/screenshot/GlobalScreenshot$3;

    iget-object v1, v1, Lcom/android/systemui/screenshot/GlobalScreenshot$3;->this$0:Lcom/android/systemui/screenshot/GlobalScreenshot;

    iget-object v2, p0, Lcom/android/systemui/screenshot/GlobalScreenshot$3$1;->val$finisher:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Lcom/android/systemui/screenshot/GlobalScreenshot;->takeScreenshot(Ljava/lang/Runnable;)V

    return-void
.end method
