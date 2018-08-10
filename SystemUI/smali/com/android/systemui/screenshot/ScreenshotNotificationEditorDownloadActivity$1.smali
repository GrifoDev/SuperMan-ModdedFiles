.class Lcom/android/systemui/screenshot/ScreenshotNotificationEditorDownloadActivity$1;
.super Landroid/content/BroadcastReceiver;
.source "ScreenshotNotificationEditorDownloadActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/screenshot/ScreenshotNotificationEditorDownloadActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/screenshot/ScreenshotNotificationEditorDownloadActivity;


# direct methods
.method constructor <init>(Lcom/android/systemui/screenshot/ScreenshotNotificationEditorDownloadActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/screenshot/ScreenshotNotificationEditorDownloadActivity$1;->this$0:Lcom/android/systemui/screenshot/ScreenshotNotificationEditorDownloadActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/android/systemui/screenshot/ScreenshotNotificationEditorDownloadActivity;->-get1()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onReceive : Action = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/android/systemui/screenshot/ScreenshotNotificationEditorDownloadActivity;->-get0()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/screenshot/ScreenshotNotificationEditorDownloadActivity$1;->this$0:Lcom/android/systemui/screenshot/ScreenshotNotificationEditorDownloadActivity;

    invoke-virtual {v1}, Lcom/android/systemui/screenshot/ScreenshotNotificationEditorDownloadActivity;->finish()V

    :cond_0
    return-void
.end method
