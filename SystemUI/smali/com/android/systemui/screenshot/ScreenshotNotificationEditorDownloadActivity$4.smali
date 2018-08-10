.class Lcom/android/systemui/screenshot/ScreenshotNotificationEditorDownloadActivity$4;
.super Ljava/lang/Object;
.source "ScreenshotNotificationEditorDownloadActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/screenshot/ScreenshotNotificationEditorDownloadActivity;->showPhotoEditorDownloadDialog()V
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

    iput-object p1, p0, Lcom/android/systemui/screenshot/ScreenshotNotificationEditorDownloadActivity$4;->this$0:Lcom/android/systemui/screenshot/ScreenshotNotificationEditorDownloadActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/screenshot/ScreenshotNotificationEditorDownloadActivity$4;->this$0:Lcom/android/systemui/screenshot/ScreenshotNotificationEditorDownloadActivity;

    invoke-virtual {v0}, Lcom/android/systemui/screenshot/ScreenshotNotificationEditorDownloadActivity;->finish()V

    return-void
.end method
