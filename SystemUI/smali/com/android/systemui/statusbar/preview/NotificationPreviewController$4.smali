.class Lcom/android/systemui/statusbar/preview/NotificationPreviewController$4;
.super Ljava/lang/Object;
.source "NotificationPreviewController.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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

    iput-object p1, p0, Lcom/android/systemui/statusbar/preview/NotificationPreviewController$4;->this$0:Lcom/android/systemui/statusbar/preview/NotificationPreviewController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5

    const/4 v4, 0x0

    iget-object v2, p0, Lcom/android/systemui/statusbar/preview/NotificationPreviewController$4;->this$0:Lcom/android/systemui/statusbar/preview/NotificationPreviewController;

    invoke-static {v2}, Lcom/android/systemui/statusbar/preview/NotificationPreviewController;->-get2(Lcom/android/systemui/statusbar/preview/NotificationPreviewController;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/android/systemui/statusbar/preview/NotificationPreviewController$4;->this$0:Lcom/android/systemui/statusbar/preview/NotificationPreviewController;

    invoke-static {v2}, Lcom/android/systemui/statusbar/preview/NotificationPreviewController;->-get1(Lcom/android/systemui/statusbar/preview/NotificationPreviewController;)Lcom/android/systemui/statusbar/preview/NotificationPreviewIconSlotView;

    move-result-object v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/systemui/statusbar/preview/NotificationPreviewController$4;->this$0:Lcom/android/systemui/statusbar/preview/NotificationPreviewController;

    invoke-static {v2}, Lcom/android/systemui/statusbar/preview/NotificationPreviewController;->-get1(Lcom/android/systemui/statusbar/preview/NotificationPreviewController;)Lcom/android/systemui/statusbar/preview/NotificationPreviewIconSlotView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/preview/NotificationPreviewIconSlotView;->getAlpha()F

    move-result v2

    const/4 v3, 0x0

    cmpl-float v2, v2, v3

    if-nez v2, :cond_1

    :cond_0
    return-void

    :cond_1
    iget-object v2, p0, Lcom/android/systemui/statusbar/preview/NotificationPreviewController$4;->this$0:Lcom/android/systemui/statusbar/preview/NotificationPreviewController;

    invoke-static {v2}, Lcom/android/systemui/statusbar/preview/NotificationPreviewController;->-get0(Lcom/android/systemui/statusbar/preview/NotificationPreviewController;)Lcom/android/systemui/statusbar/phone/StatusBar;

    move-result-object v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/android/systemui/statusbar/preview/NotificationPreviewController$4;->this$0:Lcom/android/systemui/statusbar/preview/NotificationPreviewController;

    invoke-static {v2, p1}, Lcom/android/systemui/statusbar/preview/NotificationPreviewController;->-wrap0(Lcom/android/systemui/statusbar/preview/NotificationPreviewController;Landroid/view/View;)Lcom/android/systemui/statusbar/preview/NotificationPreview;

    move-result-object v1

    const/4 v0, 0x0

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/preview/NotificationPreview;->getRow()Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    move-result-object v0

    :cond_2
    iget-object v2, p0, Lcom/android/systemui/statusbar/preview/NotificationPreviewController$4;->this$0:Lcom/android/systemui/statusbar/preview/NotificationPreviewController;

    invoke-static {v2}, Lcom/android/systemui/statusbar/preview/NotificationPreviewController;->-get0(Lcom/android/systemui/statusbar/preview/NotificationPreviewController;)Lcom/android/systemui/statusbar/phone/StatusBar;

    move-result-object v2

    invoke-virtual {v2, v4}, Lcom/android/systemui/statusbar/phone/StatusBar;->goToLockedShade(Landroid/view/View;)V

    return-void

    :cond_3
    return-void
.end method
