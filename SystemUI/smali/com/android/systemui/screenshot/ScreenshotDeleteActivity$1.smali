.class Lcom/android/systemui/screenshot/ScreenshotDeleteActivity$1;
.super Ljava/lang/Object;
.source "ScreenshotDeleteActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/screenshot/ScreenshotDeleteActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/screenshot/ScreenshotDeleteActivity;


# direct methods
.method constructor <init>(Lcom/android/systemui/screenshot/ScreenshotDeleteActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/screenshot/ScreenshotDeleteActivity$1;->this$0:Lcom/android/systemui/screenshot/ScreenshotDeleteActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 7

    const/4 v6, 0x0

    new-instance v0, Ljava/io/File;

    iget-object v2, p0, Lcom/android/systemui/screenshot/ScreenshotDeleteActivity$1;->this$0:Lcom/android/systemui/screenshot/ScreenshotDeleteActivity;

    invoke-static {v2}, Lcom/android/systemui/screenshot/ScreenshotDeleteActivity;->-get0(Lcom/android/systemui/screenshot/ScreenshotDeleteActivity;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    iget-object v2, p0, Lcom/android/systemui/screenshot/ScreenshotDeleteActivity$1;->this$0:Lcom/android/systemui/screenshot/ScreenshotDeleteActivity;

    const-string/jumbo v3, "notification"

    invoke-virtual {v2, v3}, Lcom/android/systemui/screenshot/ScreenshotDeleteActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/NotificationManager;

    iget-object v2, p0, Lcom/android/systemui/screenshot/ScreenshotDeleteActivity$1;->this$0:Lcom/android/systemui/screenshot/ScreenshotDeleteActivity;

    invoke-static {v2}, Lcom/android/systemui/screenshot/ScreenshotDeleteActivity;->-get1(Lcom/android/systemui/screenshot/ScreenshotDeleteActivity;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/app/NotificationManager;->cancel(I)V

    iget-object v2, p0, Lcom/android/systemui/screenshot/ScreenshotDeleteActivity$1;->this$0:Lcom/android/systemui/screenshot/ScreenshotDeleteActivity;

    invoke-virtual {v2}, Lcom/android/systemui/screenshot/ScreenshotDeleteActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    iget-object v4, p0, Lcom/android/systemui/screenshot/ScreenshotDeleteActivity$1;->this$0:Lcom/android/systemui/screenshot/ScreenshotDeleteActivity;

    invoke-static {v4}, Lcom/android/systemui/screenshot/ScreenshotDeleteActivity;->-get0(Lcom/android/systemui/screenshot/ScreenshotDeleteActivity;)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-static {v2, v3, v6, v6}, Landroid/media/MediaScannerConnection;->scanFile(Landroid/content/Context;[Ljava/lang/String;[Ljava/lang/String;Landroid/media/MediaScannerConnection$OnScanCompletedListener;)V

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method
