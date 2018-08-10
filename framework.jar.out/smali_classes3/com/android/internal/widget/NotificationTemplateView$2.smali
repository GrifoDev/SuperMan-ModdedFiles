.class Lcom/android/internal/widget/NotificationTemplateView$2;
.super Landroid/database/ContentObserver;
.source "NotificationTemplateView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/widget/NotificationTemplateView;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/widget/NotificationTemplateView;


# direct methods
.method constructor <init>(Lcom/android/internal/widget/NotificationTemplateView;Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Lcom/android/internal/widget/NotificationTemplateView$2;->this$0:Lcom/android/internal/widget/NotificationTemplateView;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 2

    iget-object v0, p0, Lcom/android/internal/widget/NotificationTemplateView$2;->this$0:Lcom/android/internal/widget/NotificationTemplateView;

    invoke-static {v0}, Lcom/android/internal/widget/NotificationTemplateView;->-get1(Lcom/android/internal/widget/NotificationTemplateView;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/widget/NotificationTemplateView$2;->this$0:Lcom/android/internal/widget/NotificationTemplateView;

    invoke-static {v1}, Lcom/android/internal/widget/NotificationTemplateView;->-get2(Lcom/android/internal/widget/NotificationTemplateView;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
