.class Lcom/samsung/android/settings/notification/BlockNotificationList$7;
.super Ljava/lang/Object;
.source "BlockNotificationList.java"

# interfaces
.implements Landroid/content/DialogInterface$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/notification/BlockNotificationList;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/notification/BlockNotificationList;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/notification/BlockNotificationList;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/notification/BlockNotificationList$7;->this$0:Lcom/samsung/android/settings/notification/BlockNotificationList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .locals 3

    const/4 v2, 0x1

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/samsung/android/settings/notification/BlockNotificationList$7;->this$0:Lcom/samsung/android/settings/notification/BlockNotificationList;

    invoke-static {v0}, Lcom/samsung/android/settings/notification/BlockNotificationList;->-get3(Lcom/samsung/android/settings/notification/BlockNotificationList;)Ljava/util/concurrent/Future;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/notification/BlockNotificationList$7;->this$0:Lcom/samsung/android/settings/notification/BlockNotificationList;

    invoke-static {v0}, Lcom/samsung/android/settings/notification/BlockNotificationList;->-get3(Lcom/samsung/android/settings/notification/BlockNotificationList;)Ljava/util/concurrent/Future;

    move-result-object v0

    invoke-interface {v0, v2}, Ljava/util/concurrent/Future;->cancel(Z)Z

    :cond_0
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    iget-object v0, p0, Lcom/samsung/android/settings/notification/BlockNotificationList$7;->this$0:Lcom/samsung/android/settings/notification/BlockNotificationList;

    invoke-virtual {v0}, Lcom/samsung/android/settings/notification/BlockNotificationList;->finishFragment()V

    const-string/jumbo v0, "BlockNotificationList"

    const-string/jumbo v1, "mProgress back key handled"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return v2
.end method
