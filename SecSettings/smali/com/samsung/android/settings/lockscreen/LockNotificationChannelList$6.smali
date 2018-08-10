.class Lcom/samsung/android/settings/lockscreen/LockNotificationChannelList$6;
.super Ljava/lang/Object;
.source "LockNotificationChannelList.java"

# interfaces
.implements Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/lockscreen/LockNotificationChannelList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/lockscreen/LockNotificationChannelList;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/lockscreen/LockNotificationChannelList;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/lockscreen/LockNotificationChannelList$6;->this$0:Lcom/samsung/android/settings/lockscreen/LockNotificationChannelList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onStateReceived()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/settings/lockscreen/LockNotificationChannelList$6;->this$0:Lcom/samsung/android/settings/lockscreen/LockNotificationChannelList;

    invoke-static {v0}, Lcom/samsung/android/settings/lockscreen/LockNotificationChannelList;->-get11(Lcom/samsung/android/settings/lockscreen/LockNotificationChannelList;)Landroid/app/ProgressDialog;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/lockscreen/LockNotificationChannelList$6;->this$0:Lcom/samsung/android/settings/lockscreen/LockNotificationChannelList;

    invoke-static {v0}, Lcom/samsung/android/settings/lockscreen/LockNotificationChannelList;->-get11(Lcom/samsung/android/settings/lockscreen/LockNotificationChannelList;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/lockscreen/LockNotificationChannelList$6;->this$0:Lcom/samsung/android/settings/lockscreen/LockNotificationChannelList;

    invoke-static {v0}, Lcom/samsung/android/settings/lockscreen/LockNotificationChannelList;->-get7(Lcom/samsung/android/settings/lockscreen/LockNotificationChannelList;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setPendingState(Z)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/lockscreen/LockNotificationChannelList$6;->this$0:Lcom/samsung/android/settings/lockscreen/LockNotificationChannelList;

    invoke-virtual {v0}, Lcom/samsung/android/settings/lockscreen/LockNotificationChannelList;->executeBixby()V

    goto :goto_0
.end method
