.class Lcom/android/systemui/statusbar/preview/NotificationPreviewController$3;
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

    iput-object p1, p0, Lcom/android/systemui/statusbar/preview/NotificationPreviewController$3;->this$0:Lcom/android/systemui/statusbar/preview/NotificationPreviewController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v2, p0, Lcom/android/systemui/statusbar/preview/NotificationPreviewController$3;->this$0:Lcom/android/systemui/statusbar/preview/NotificationPreviewController;

    invoke-static {v2}, Lcom/android/systemui/statusbar/preview/NotificationPreviewController;->-wrap1(Lcom/android/systemui/statusbar/preview/NotificationPreviewController;)I

    move-result v0

    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    iget-object v2, p0, Lcom/android/systemui/statusbar/preview/NotificationPreviewController$3;->this$0:Lcom/android/systemui/statusbar/preview/NotificationPreviewController;

    invoke-static {v2}, Lcom/android/systemui/statusbar/preview/NotificationPreviewController;->-get3(Lcom/android/systemui/statusbar/preview/NotificationPreviewController;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/preview/NotificationPreview;

    iget-object v2, p0, Lcom/android/systemui/statusbar/preview/NotificationPreviewController$3;->this$0:Lcom/android/systemui/statusbar/preview/NotificationPreviewController;

    invoke-static {v2, v1}, Lcom/android/systemui/statusbar/preview/NotificationPreviewController;->-wrap2(Lcom/android/systemui/statusbar/preview/NotificationPreviewController;Lcom/android/systemui/statusbar/preview/NotificationPreview;)V

    :cond_0
    return-void
.end method
