.class Lcom/android/systemui/statusbar/preview/NotificationPreviewController$3$1;
.super Ljava/lang/Object;
.source "NotificationPreviewController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/preview/NotificationPreviewController$3;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/systemui/statusbar/preview/NotificationPreviewController$3;

.field final synthetic val$np:Lcom/android/systemui/statusbar/preview/NotificationPreview;

.field final synthetic val$target:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/preview/NotificationPreviewController$3;Lcom/android/systemui/statusbar/preview/NotificationPreview;Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/preview/NotificationPreviewController$3$1;->this$1:Lcom/android/systemui/statusbar/preview/NotificationPreviewController$3;

    iput-object p2, p0, Lcom/android/systemui/statusbar/preview/NotificationPreviewController$3$1;->val$np:Lcom/android/systemui/statusbar/preview/NotificationPreview;

    iput-object p3, p0, Lcom/android/systemui/statusbar/preview/NotificationPreviewController$3$1;->val$target:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    const/4 v2, 0x1

    iget-object v0, p0, Lcom/android/systemui/statusbar/preview/NotificationPreviewController$3$1;->val$np:Lcom/android/systemui/statusbar/preview/NotificationPreview;

    invoke-virtual {v0, v2}, Lcom/android/systemui/statusbar/preview/NotificationPreview;->setIsClicked(Z)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/preview/NotificationPreviewController$3$1;->this$1:Lcom/android/systemui/statusbar/preview/NotificationPreviewController$3;

    iget-object v0, v0, Lcom/android/systemui/statusbar/preview/NotificationPreviewController$3;->this$0:Lcom/android/systemui/statusbar/preview/NotificationPreviewController;

    iget-object v1, p0, Lcom/android/systemui/statusbar/preview/NotificationPreviewController$3$1;->val$np:Lcom/android/systemui/statusbar/preview/NotificationPreview;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/preview/NotificationPreview;->getRow()Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    move-result-object v1

    invoke-static {v0, v1, v2}, Lcom/android/systemui/statusbar/preview/NotificationPreviewController;->-wrap2(Lcom/android/systemui/statusbar/preview/NotificationPreviewController;Lcom/android/systemui/statusbar/ExpandableNotificationRow;Z)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/preview/NotificationPreviewController$3$1;->this$1:Lcom/android/systemui/statusbar/preview/NotificationPreviewController$3;

    iget-object v0, v0, Lcom/android/systemui/statusbar/preview/NotificationPreviewController$3;->this$0:Lcom/android/systemui/statusbar/preview/NotificationPreviewController;

    iget-object v1, p0, Lcom/android/systemui/statusbar/preview/NotificationPreviewController$3$1;->val$target:Landroid/view/View;

    invoke-static {v0, v1, v2}, Lcom/android/systemui/statusbar/preview/NotificationPreviewController;->-wrap3(Lcom/android/systemui/statusbar/preview/NotificationPreviewController;Landroid/view/View;Z)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/preview/NotificationPreviewController$3$1;->this$1:Lcom/android/systemui/statusbar/preview/NotificationPreviewController$3;

    iget-object v0, v0, Lcom/android/systemui/statusbar/preview/NotificationPreviewController$3;->this$0:Lcom/android/systemui/statusbar/preview/NotificationPreviewController;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/preview/NotificationPreviewController;->-set0(Lcom/android/systemui/statusbar/preview/NotificationPreviewController;Ljava/lang/Runnable;)Ljava/lang/Runnable;

    return-void
.end method
