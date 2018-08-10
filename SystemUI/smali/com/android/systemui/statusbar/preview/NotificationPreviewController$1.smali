.class Lcom/android/systemui/statusbar/preview/NotificationPreviewController$1;
.super Ljava/lang/Object;
.source "NotificationPreviewController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/preview/NotificationPreviewController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/preview/NotificationPreviewController;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/preview/NotificationPreviewController;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/preview/NotificationPreviewController$1;->this$0:Lcom/android/systemui/statusbar/preview/NotificationPreviewController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/android/systemui/statusbar/preview/NotificationPreviewController$1;->this$0:Lcom/android/systemui/statusbar/preview/NotificationPreviewController;

    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/preview/NotificationPreviewController;->-set2(Lcom/android/systemui/statusbar/preview/NotificationPreviewController;Z)Z

    iget-object v0, p0, Lcom/android/systemui/statusbar/preview/NotificationPreviewController$1;->this$0:Lcom/android/systemui/statusbar/preview/NotificationPreviewController;

    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/preview/NotificationPreviewController;->-set1(Lcom/android/systemui/statusbar/preview/NotificationPreviewController;Z)Z

    return-void
.end method
