.class final Lcom/android/systemui/volume/VolumeUI$RestorationNotification;
.super Ljava/lang/Object;
.source "VolumeUI.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/volume/VolumeUI;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "RestorationNotification"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/volume/VolumeUI;


# direct methods
.method private constructor <init>(Lcom/android/systemui/volume/VolumeUI;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/volume/VolumeUI$RestorationNotification;->this$0:Lcom/android/systemui/volume/VolumeUI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/systemui/volume/VolumeUI;Lcom/android/systemui/volume/VolumeUI$RestorationNotification;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/volume/VolumeUI$RestorationNotification;-><init>(Lcom/android/systemui/volume/VolumeUI;)V

    return-void
.end method


# virtual methods
.method public hide()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/volume/VolumeUI$RestorationNotification;->this$0:Lcom/android/systemui/volume/VolumeUI;

    invoke-static {v0}, Lcom/android/systemui/volume/VolumeUI;->-get2(Lcom/android/systemui/volume/VolumeUI;)Landroid/app/NotificationManager;

    move-result-object v0

    const v1, 0x7f13003c

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    return-void
.end method

.method public show()V
    .locals 9

    const/4 v8, 0x1

    const/4 v7, 0x0

    iget-object v2, p0, Lcom/android/systemui/volume/VolumeUI$RestorationNotification;->this$0:Lcom/android/systemui/volume/VolumeUI;

    invoke-static {v2}, Lcom/android/systemui/volume/VolumeUI;->-get4(Lcom/android/systemui/volume/VolumeUI;)Lcom/android/systemui/statusbar/ServiceMonitor;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/ServiceMonitor;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    if-nez v0, :cond_0

    const-string/jumbo v2, "VolumeUI"

    const-string/jumbo v3, "Not showing restoration notification, component not active"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    new-instance v2, Landroid/content/Intent;

    const-string/jumbo v3, "com.android.systemui.vui.DISABLE"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v3, "component"

    invoke-virtual {v2, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/volume/VolumeUI$RestorationNotification;->this$0:Lcom/android/systemui/volume/VolumeUI;

    invoke-static {v2}, Lcom/android/systemui/volume/VolumeUI;->-get2(Lcom/android/systemui/volume/VolumeUI;)Landroid/app/NotificationManager;

    move-result-object v2

    new-instance v3, Landroid/app/Notification$Builder;

    iget-object v4, p0, Lcom/android/systemui/volume/VolumeUI$RestorationNotification;->this$0:Lcom/android/systemui/volume/VolumeUI;

    iget-object v4, v4, Lcom/android/systemui/volume/VolumeUI;->mContext:Landroid/content/Context;

    invoke-direct {v3, v4}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    const v4, 0x7f02021a

    invoke-virtual {v3, v4}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v3

    const-wide/16 v4, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/app/Notification$Builder;->setWhen(J)Landroid/app/Notification$Builder;

    move-result-object v3

    invoke-virtual {v3, v7}, Landroid/app/Notification$Builder;->setShowWhen(Z)Landroid/app/Notification$Builder;

    move-result-object v3

    invoke-virtual {v3, v8}, Landroid/app/Notification$Builder;->setOngoing(Z)Landroid/app/Notification$Builder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/systemui/volume/VolumeUI$RestorationNotification;->this$0:Lcom/android/systemui/volume/VolumeUI;

    iget-object v4, v4, Lcom/android/systemui/volume/VolumeUI;->mContext:Landroid/content/Context;

    new-array v5, v8, [Ljava/lang/Object;

    iget-object v6, p0, Lcom/android/systemui/volume/VolumeUI$RestorationNotification;->this$0:Lcom/android/systemui/volume/VolumeUI;

    invoke-static {v6, v0}, Lcom/android/systemui/volume/VolumeUI;->-wrap1(Lcom/android/systemui/volume/VolumeUI;Landroid/content/ComponentName;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v7

    const v6, 0x7f0f04cc

    invoke-virtual {v4, v6, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/systemui/volume/VolumeUI$RestorationNotification;->this$0:Lcom/android/systemui/volume/VolumeUI;

    iget-object v4, v4, Lcom/android/systemui/volume/VolumeUI;->mContext:Landroid/content/Context;

    const v5, 0x7f0f04cd

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/systemui/volume/VolumeUI$RestorationNotification;->this$0:Lcom/android/systemui/volume/VolumeUI;

    iget-object v4, v4, Lcom/android/systemui/volume/VolumeUI;->mContext:Landroid/content/Context;

    const/high16 v5, 0x8000000

    invoke-static {v4, v7, v1, v5}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v3

    const/4 v4, -0x2

    invoke-virtual {v3, v4}, Landroid/app/Notification$Builder;->setPriority(I)Landroid/app/Notification$Builder;

    move-result-object v3

    invoke-virtual {v3, v8}, Landroid/app/Notification$Builder;->setVisibility(I)Landroid/app/Notification$Builder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/systemui/volume/VolumeUI$RestorationNotification;->this$0:Lcom/android/systemui/volume/VolumeUI;

    iget-object v4, v4, Lcom/android/systemui/volume/VolumeUI;->mContext:Landroid/content/Context;

    const v5, 0x106005a

    invoke-virtual {v4, v5}, Landroid/content/Context;->getColor(I)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/app/Notification$Builder;->setColor(I)Landroid/app/Notification$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v3

    const v4, 0x7f13003c

    invoke-virtual {v2, v4, v3}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    return-void
.end method
