.class Lcom/android/systemui/statusbar/preview/NotificationPreviewController$6;
.super Ljava/lang/Object;
.source "NotificationPreviewController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/preview/NotificationPreviewController;->displayPreview(Lcom/android/systemui/statusbar/preview/NotificationPreview;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/preview/NotificationPreviewController;

.field final synthetic val$newPreview:Lcom/android/systemui/statusbar/preview/NotificationPreview;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/preview/NotificationPreviewController;Lcom/android/systemui/statusbar/preview/NotificationPreview;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/preview/NotificationPreviewController$6;->this$0:Lcom/android/systemui/statusbar/preview/NotificationPreviewController;

    iput-object p2, p0, Lcom/android/systemui/statusbar/preview/NotificationPreviewController$6;->val$newPreview:Lcom/android/systemui/statusbar/preview/NotificationPreview;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/statusbar/preview/NotificationPreviewController$6;->this$0:Lcom/android/systemui/statusbar/preview/NotificationPreviewController;

    iget-object v1, p0, Lcom/android/systemui/statusbar/preview/NotificationPreviewController$6;->val$newPreview:Lcom/android/systemui/statusbar/preview/NotificationPreview;

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/android/systemui/statusbar/preview/NotificationPreviewController;->-wrap3(Lcom/android/systemui/statusbar/preview/NotificationPreviewController;Lcom/android/systemui/statusbar/preview/NotificationPreview;Z)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/preview/NotificationPreviewController$6;->this$0:Lcom/android/systemui/statusbar/preview/NotificationPreviewController;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/preview/NotificationPreviewController;->-set0(Lcom/android/systemui/statusbar/preview/NotificationPreviewController;Ljava/lang/Runnable;)Ljava/lang/Runnable;

    return-void
.end method
