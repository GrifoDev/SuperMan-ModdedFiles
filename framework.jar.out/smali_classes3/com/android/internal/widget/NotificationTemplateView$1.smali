.class Lcom/android/internal/widget/NotificationTemplateView$1;
.super Ljava/lang/Object;
.source "NotificationTemplateView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/widget/NotificationTemplateView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/widget/NotificationTemplateView;


# direct methods
.method constructor <init>(Lcom/android/internal/widget/NotificationTemplateView;)V
    .locals 0

    iput-object p1, p0, Lcom/android/internal/widget/NotificationTemplateView$1;->this$0:Lcom/android/internal/widget/NotificationTemplateView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    const/4 v3, 0x1

    iget-object v1, p0, Lcom/android/internal/widget/NotificationTemplateView$1;->this$0:Lcom/android/internal/widget/NotificationTemplateView;

    invoke-static {v1}, Lcom/android/internal/widget/NotificationTemplateView;->-get0(Lcom/android/internal/widget/NotificationTemplateView;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "notification_text_color_inversion"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-ne v3, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    iget-object v1, p0, Lcom/android/internal/widget/NotificationTemplateView$1;->this$0:Lcom/android/internal/widget/NotificationTemplateView;

    invoke-static {v1, v0}, Lcom/android/internal/widget/NotificationTemplateView;->-set0(Lcom/android/internal/widget/NotificationTemplateView;Z)Z

    iget-object v1, p0, Lcom/android/internal/widget/NotificationTemplateView$1;->this$0:Lcom/android/internal/widget/NotificationTemplateView;

    iget-object v2, p0, Lcom/android/internal/widget/NotificationTemplateView$1;->this$0:Lcom/android/internal/widget/NotificationTemplateView;

    invoke-static {v2}, Lcom/android/internal/widget/NotificationTemplateView;->-get3(Lcom/android/internal/widget/NotificationTemplateView;)F

    move-result v2

    invoke-static {v1, v2}, Lcom/android/internal/widget/NotificationTemplateView;->-wrap0(Lcom/android/internal/widget/NotificationTemplateView;F)V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
