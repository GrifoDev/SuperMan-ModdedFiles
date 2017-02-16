.class Lcom/android/systemui/screenshot/GlobalScreenshot$2$1;
.super Ljava/lang/Object;
.source "GlobalScreenshot.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/screenshot/GlobalScreenshot$2;->onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/systemui/screenshot/GlobalScreenshot$2;

.field final synthetic val$finisher:Ljava/lang/Runnable;

.field final synthetic val$navBarVisible:Z

.field final synthetic val$rect:Landroid/graphics/Rect;

.field final synthetic val$statusBarVisible:Z


# direct methods
.method constructor <init>(Lcom/android/systemui/screenshot/GlobalScreenshot$2;Landroid/graphics/Rect;Ljava/lang/Runnable;ZZ)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/screenshot/GlobalScreenshot$2$1;->this$1:Lcom/android/systemui/screenshot/GlobalScreenshot$2;

    iput-object p2, p0, Lcom/android/systemui/screenshot/GlobalScreenshot$2$1;->val$rect:Landroid/graphics/Rect;

    iput-object p3, p0, Lcom/android/systemui/screenshot/GlobalScreenshot$2$1;->val$finisher:Ljava/lang/Runnable;

    iput-boolean p4, p0, Lcom/android/systemui/screenshot/GlobalScreenshot$2$1;->val$statusBarVisible:Z

    iput-boolean p5, p0, Lcom/android/systemui/screenshot/GlobalScreenshot$2$1;->val$navBarVisible:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    const/4 v3, 0x1

    new-instance v6, Landroid/os/Bundle;

    invoke-direct {v6}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v0, "rect"

    iget-object v1, p0, Lcom/android/systemui/screenshot/GlobalScreenshot$2$1;->val$rect:Landroid/graphics/Rect;

    invoke-virtual {v6, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    iget-object v0, p0, Lcom/android/systemui/screenshot/GlobalScreenshot$2$1;->this$1:Lcom/android/systemui/screenshot/GlobalScreenshot$2;

    iget-object v0, v0, Lcom/android/systemui/screenshot/GlobalScreenshot$2;->this$0:Lcom/android/systemui/screenshot/GlobalScreenshot;

    iget-object v1, p0, Lcom/android/systemui/screenshot/GlobalScreenshot$2$1;->this$1:Lcom/android/systemui/screenshot/GlobalScreenshot$2;

    iget-object v1, v1, Lcom/android/systemui/screenshot/GlobalScreenshot$2;->this$0:Lcom/android/systemui/screenshot/GlobalScreenshot;

    iget-object v2, p0, Lcom/android/systemui/screenshot/GlobalScreenshot$2$1;->this$1:Lcom/android/systemui/screenshot/GlobalScreenshot$2;

    iget-object v2, v2, Lcom/android/systemui/screenshot/GlobalScreenshot$2;->this$0:Lcom/android/systemui/screenshot/GlobalScreenshot;

    invoke-static {v2}, Lcom/android/systemui/screenshot/GlobalScreenshot;->-get4(Lcom/android/systemui/screenshot/GlobalScreenshot;)Landroid/content/Context;

    move-result-object v2

    const/4 v4, 0x2

    invoke-static {v1, v2, v4}, Lcom/android/systemui/screenshot/GlobalScreenshot;->-wrap0(Lcom/android/systemui/screenshot/GlobalScreenshot;Landroid/content/Context;I)Lcom/android/systemui/screenshot/ScreenCaptureHelper;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/systemui/screenshot/GlobalScreenshot;->-set1(Lcom/android/systemui/screenshot/GlobalScreenshot;Lcom/android/systemui/screenshot/ScreenCaptureHelper;)Lcom/android/systemui/screenshot/ScreenCaptureHelper;

    iget-object v0, p0, Lcom/android/systemui/screenshot/GlobalScreenshot$2$1;->this$1:Lcom/android/systemui/screenshot/GlobalScreenshot$2;

    iget-object v0, v0, Lcom/android/systemui/screenshot/GlobalScreenshot$2;->this$0:Lcom/android/systemui/screenshot/GlobalScreenshot;

    invoke-static {v0}, Lcom/android/systemui/screenshot/GlobalScreenshot;->-get6(Lcom/android/systemui/screenshot/GlobalScreenshot;)Lcom/android/systemui/screenshot/ScreenCaptureHelper;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/screenshot/GlobalScreenshot$2$1;->this$1:Lcom/android/systemui/screenshot/GlobalScreenshot$2;

    iget-object v1, v1, Lcom/android/systemui/screenshot/GlobalScreenshot$2;->this$0:Lcom/android/systemui/screenshot/GlobalScreenshot;

    invoke-static {v1}, Lcom/android/systemui/screenshot/GlobalScreenshot;->-get4(Lcom/android/systemui/screenshot/GlobalScreenshot;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/screenshot/GlobalScreenshot$2$1;->this$1:Lcom/android/systemui/screenshot/GlobalScreenshot$2;

    iget-object v2, v2, Lcom/android/systemui/screenshot/GlobalScreenshot$2;->this$0:Lcom/android/systemui/screenshot/GlobalScreenshot;

    invoke-static {v2}, Lcom/android/systemui/screenshot/GlobalScreenshot;->-get5(Lcom/android/systemui/screenshot/GlobalScreenshot;)Landroid/view/Display;

    move-result-object v2

    move v4, v3

    move v5, v3

    invoke-virtual/range {v0 .. v6}, Lcom/android/systemui/screenshot/ScreenCaptureHelper;->initiallize(Landroid/content/Context;Landroid/view/Display;IIILandroid/os/Bundle;)V

    iget-object v0, p0, Lcom/android/systemui/screenshot/GlobalScreenshot$2$1;->this$1:Lcom/android/systemui/screenshot/GlobalScreenshot$2;

    iget-object v0, v0, Lcom/android/systemui/screenshot/GlobalScreenshot$2;->this$0:Lcom/android/systemui/screenshot/GlobalScreenshot;

    iget-object v1, p0, Lcom/android/systemui/screenshot/GlobalScreenshot$2$1;->val$finisher:Ljava/lang/Runnable;

    iget-boolean v2, p0, Lcom/android/systemui/screenshot/GlobalScreenshot$2$1;->val$statusBarVisible:Z

    iget-boolean v3, p0, Lcom/android/systemui/screenshot/GlobalScreenshot$2$1;->val$navBarVisible:Z

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/systemui/screenshot/GlobalScreenshot;->takeScreenshot(Ljava/lang/Runnable;ZZ)V

    return-void
.end method
