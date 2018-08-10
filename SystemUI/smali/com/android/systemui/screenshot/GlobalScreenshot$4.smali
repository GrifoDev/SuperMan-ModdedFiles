.class Lcom/android/systemui/screenshot/GlobalScreenshot$4;
.super Ljava/lang/Object;
.source "GlobalScreenshot.java"

# interfaces
.implements Ljava/lang/Runnable;


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


# direct methods
.method constructor <init>(Lcom/android/systemui/screenshot/GlobalScreenshot;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/screenshot/GlobalScreenshot$4;->this$0:Lcom/android/systemui/screenshot/GlobalScreenshot;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/screenshot/GlobalScreenshot$4;->this$0:Lcom/android/systemui/screenshot/GlobalScreenshot;

    invoke-static {v0}, Lcom/android/systemui/screenshot/GlobalScreenshot;->-get8(Lcom/android/systemui/screenshot/GlobalScreenshot;)Lcom/android/systemui/screenshot/ScreenshotSelectorView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/systemui/screenshot/ScreenshotSelectorView;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/systemui/screenshot/GlobalScreenshot$4;->this$0:Lcom/android/systemui/screenshot/GlobalScreenshot;

    invoke-static {v0}, Lcom/android/systemui/screenshot/GlobalScreenshot;->-get8(Lcom/android/systemui/screenshot/GlobalScreenshot;)Lcom/android/systemui/screenshot/ScreenshotSelectorView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/screenshot/ScreenshotSelectorView;->requestFocus()Z

    return-void
.end method
