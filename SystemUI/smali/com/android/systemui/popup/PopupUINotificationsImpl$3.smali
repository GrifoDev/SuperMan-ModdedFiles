.class Lcom/android/systemui/popup/PopupUINotificationsImpl$3;
.super Ljava/lang/Object;
.source "PopupUINotificationsImpl.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/popup/PopupUINotificationsImpl;->showDataConnectionAlertDialogs(Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/popup/PopupUINotificationsImpl;

.field final synthetic val$pIntent:Landroid/app/PendingIntent;

.field final synthetic val$retry:Z


# direct methods
.method constructor <init>(Lcom/android/systemui/popup/PopupUINotificationsImpl;ZLandroid/app/PendingIntent;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/popup/PopupUINotificationsImpl$3;->this$0:Lcom/android/systemui/popup/PopupUINotificationsImpl;

    iput-boolean p2, p0, Lcom/android/systemui/popup/PopupUINotificationsImpl$3;->val$retry:Z

    iput-object p3, p0, Lcom/android/systemui/popup/PopupUINotificationsImpl$3;->val$pIntent:Landroid/app/PendingIntent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4

    iget-boolean v1, p0, Lcom/android/systemui/popup/PopupUINotificationsImpl$3;->val$retry:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/popup/PopupUINotificationsImpl$3;->val$pIntent:Landroid/app/PendingIntent;

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/popup/PopupUINotificationsImpl$3;->val$pIntent:Landroid/app/PendingIntent;

    invoke-virtual {v1}, Landroid/app/PendingIntent;->send()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v1, "PopupUI.PopupUINotifications"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "showDataConnectionNotifications() : PendingIntent.send() error. "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
