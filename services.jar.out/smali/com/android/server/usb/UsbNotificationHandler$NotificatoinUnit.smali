.class Lcom/android/server/usb/UsbNotificationHandler$NotificatoinUnit;
.super Ljava/lang/Object;
.source "UsbNotificationHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/usb/UsbNotificationHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "NotificatoinUnit"
.end annotation


# instance fields
.field private mCurrentNofication:Z

.field private final mDismissable:Z

.field private mExpandedIcon1:I

.field private mExpandedIcon2:I

.field private mExpandedIntent1:Landroid/app/PendingIntent;

.field private mExpandedIntent2:Landroid/app/PendingIntent;

.field private mExpandedTitleId1:I

.field private mExpandedTitleId2:I

.field private final mIcon:I

.field private final mId:I

.field private final mMessageId:I

.field private mNotificationBuilder:Landroid/app/Notification$Builder;

.field private mStayNofiBar:Z

.field private final mTitleId:I

.field private final mVisible:Z

.field private final mszId:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/server/usb/UsbNotificationHandler;


# direct methods
.method constructor <init>(Lcom/android/server/usb/UsbNotificationHandler;IIIZZLandroid/app/PendingIntent;Landroid/app/PendingIntent;IIIIZLjava/lang/String;)V
    .locals 1

    iput-object p1, p0, Lcom/android/server/usb/UsbNotificationHandler$NotificatoinUnit;->this$0:Lcom/android/server/usb/UsbNotificationHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/usb/UsbNotificationHandler$NotificatoinUnit;->mCurrentNofication:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/usb/UsbNotificationHandler$NotificatoinUnit;->mExpandedIntent1:Landroid/app/PendingIntent;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/usb/UsbNotificationHandler$NotificatoinUnit;->mExpandedIntent2:Landroid/app/PendingIntent;

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/usb/UsbNotificationHandler$NotificatoinUnit;->mExpandedTitleId1:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/usb/UsbNotificationHandler$NotificatoinUnit;->mExpandedTitleId2:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/usb/UsbNotificationHandler$NotificatoinUnit;->mExpandedIcon1:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/usb/UsbNotificationHandler$NotificatoinUnit;->mExpandedIcon2:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/usb/UsbNotificationHandler$NotificatoinUnit;->mNotificationBuilder:Landroid/app/Notification$Builder;

    iput p2, p0, Lcom/android/server/usb/UsbNotificationHandler$NotificatoinUnit;->mTitleId:I

    iput p3, p0, Lcom/android/server/usb/UsbNotificationHandler$NotificatoinUnit;->mMessageId:I

    iput p4, p0, Lcom/android/server/usb/UsbNotificationHandler$NotificatoinUnit;->mIcon:I

    iput-boolean p5, p0, Lcom/android/server/usb/UsbNotificationHandler$NotificatoinUnit;->mVisible:Z

    iput-boolean p6, p0, Lcom/android/server/usb/UsbNotificationHandler$NotificatoinUnit;->mDismissable:Z

    iput-object p14, p0, Lcom/android/server/usb/UsbNotificationHandler$NotificatoinUnit;->mszId:Ljava/lang/String;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/usb/UsbNotificationHandler$NotificatoinUnit;->mCurrentNofication:Z

    iget-object v0, p0, Lcom/android/server/usb/UsbNotificationHandler$NotificatoinUnit;->mszId:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    iput v0, p0, Lcom/android/server/usb/UsbNotificationHandler$NotificatoinUnit;->mId:I

    iput-boolean p13, p0, Lcom/android/server/usb/UsbNotificationHandler$NotificatoinUnit;->mStayNofiBar:Z

    iput-object p7, p0, Lcom/android/server/usb/UsbNotificationHandler$NotificatoinUnit;->mExpandedIntent1:Landroid/app/PendingIntent;

    iput-object p8, p0, Lcom/android/server/usb/UsbNotificationHandler$NotificatoinUnit;->mExpandedIntent2:Landroid/app/PendingIntent;

    iput p9, p0, Lcom/android/server/usb/UsbNotificationHandler$NotificatoinUnit;->mExpandedTitleId1:I

    iput p10, p0, Lcom/android/server/usb/UsbNotificationHandler$NotificatoinUnit;->mExpandedTitleId2:I

    iput p11, p0, Lcom/android/server/usb/UsbNotificationHandler$NotificatoinUnit;->mExpandedIcon1:I

    iput p12, p0, Lcom/android/server/usb/UsbNotificationHandler$NotificatoinUnit;->mExpandedIcon2:I

    return-void
.end method

.method private declared-synchronized setUsbObserverNotification(IIIZZLandroid/app/PendingIntent;Landroid/app/PendingIntent;IIIILjava/lang/String;)V
    .locals 14

    monitor-enter p0

    if-nez p4, :cond_0

    :try_start_0
    iget-object v10, p0, Lcom/android/server/usb/UsbNotificationHandler$NotificatoinUnit;->mNotificationBuilder:Landroid/app/Notification$Builder;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v10, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    iget-object v10, p0, Lcom/android/server/usb/UsbNotificationHandler$NotificatoinUnit;->this$0:Lcom/android/server/usb/UsbNotificationHandler;

    invoke-static {v10}, Lcom/android/server/usb/UsbNotificationHandler;->-get2(Lcom/android/server/usb/UsbNotificationHandler;)Landroid/content/Context;

    move-result-object v10

    const-string/jumbo v11, "notification"

    invoke-virtual {v10, v11}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/NotificationManager;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v5, :cond_1

    monitor-exit p0

    return-void

    :cond_1
    :try_start_2
    iget-object v10, p0, Lcom/android/server/usb/UsbNotificationHandler$NotificatoinUnit;->mNotificationBuilder:Landroid/app/Notification$Builder;

    if-eqz v10, :cond_2

    if-eqz p4, :cond_2

    invoke-virtual/range {p12 .. p12}, Ljava/lang/String;->hashCode()I

    move-result v4

    iget-object v10, p0, Lcom/android/server/usb/UsbNotificationHandler$NotificatoinUnit;->this$0:Lcom/android/server/usb/UsbNotificationHandler;

    invoke-static {v10}, Lcom/android/server/usb/UsbNotificationHandler;->-get0(Lcom/android/server/usb/UsbNotificationHandler;)Ljava/lang/String;

    move-result-object v10

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "setUsbObserverNotification : cancel id = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, ", device = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object/from16 v0, p12

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v10, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const/4 v11, 0x0

    invoke-virtual {v5, v11, v4, v10}, Landroid/app/NotificationManager;->cancelAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)V

    :cond_2
    if-eqz p4, :cond_5

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6, p1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v9

    if-nez p2, :cond_7

    const/4 v2, 0x0

    :goto_0
    new-instance v10, Landroid/app/Notification$Builder;

    iget-object v11, p0, Lcom/android/server/usb/UsbNotificationHandler$NotificatoinUnit;->this$0:Lcom/android/server/usb/UsbNotificationHandler;

    invoke-static {v11}, Lcom/android/server/usb/UsbNotificationHandler;->-get2(Lcom/android/server/usb/UsbNotificationHandler;)Landroid/content/Context;

    move-result-object v11

    sget-object v12, Lcom/android/internal/notification/SystemNotificationChannels;->USB:Ljava/lang/String;

    invoke-direct {v10, v11, v12}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v10, p0, Lcom/android/server/usb/UsbNotificationHandler$NotificatoinUnit;->mNotificationBuilder:Landroid/app/Notification$Builder;

    iget-object v10, p0, Lcom/android/server/usb/UsbNotificationHandler$NotificatoinUnit;->mNotificationBuilder:Landroid/app/Notification$Builder;

    const-wide/16 v12, 0x0

    invoke-virtual {v10, v12, v13}, Landroid/app/Notification$Builder;->setWhen(J)Landroid/app/Notification$Builder;

    if-eqz p5, :cond_8

    iget-object v10, p0, Lcom/android/server/usb/UsbNotificationHandler$NotificatoinUnit;->mNotificationBuilder:Landroid/app/Notification$Builder;

    const/4 v11, 0x1

    invoke-virtual {v10, v11}, Landroid/app/Notification$Builder;->setAutoCancel(Z)Landroid/app/Notification$Builder;

    iget-object v10, p0, Lcom/android/server/usb/UsbNotificationHandler$NotificatoinUnit;->mNotificationBuilder:Landroid/app/Notification$Builder;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Landroid/app/Notification$Builder;->setOngoing(Z)Landroid/app/Notification$Builder;

    :goto_1
    iget-object v10, p0, Lcom/android/server/usb/UsbNotificationHandler$NotificatoinUnit;->mNotificationBuilder:Landroid/app/Notification$Builder;

    move/from16 v0, p3

    invoke-virtual {v10, v0}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    iget-object v10, p0, Lcom/android/server/usb/UsbNotificationHandler$NotificatoinUnit;->mNotificationBuilder:Landroid/app/Notification$Builder;

    invoke-virtual {v10, v9}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    iget-object v10, p0, Lcom/android/server/usb/UsbNotificationHandler$NotificatoinUnit;->mNotificationBuilder:Landroid/app/Notification$Builder;

    invoke-virtual {v10, v2}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    iget-object v10, p0, Lcom/android/server/usb/UsbNotificationHandler$NotificatoinUnit;->mNotificationBuilder:Landroid/app/Notification$Builder;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Landroid/app/Notification$Builder;->setDefaults(I)Landroid/app/Notification$Builder;

    iget-object v10, p0, Lcom/android/server/usb/UsbNotificationHandler$NotificatoinUnit;->mNotificationBuilder:Landroid/app/Notification$Builder;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Landroid/app/Notification$Builder;->setSound(Landroid/net/Uri;)Landroid/app/Notification$Builder;

    iget-object v10, p0, Lcom/android/server/usb/UsbNotificationHandler$NotificatoinUnit;->mNotificationBuilder:Landroid/app/Notification$Builder;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Landroid/app/Notification$Builder;->setVibrate([J)Landroid/app/Notification$Builder;

    iget-object v10, p0, Lcom/android/server/usb/UsbNotificationHandler$NotificatoinUnit;->mNotificationBuilder:Landroid/app/Notification$Builder;

    const/4 v11, 0x1

    invoke-virtual {v10, v11}, Landroid/app/Notification$Builder;->setVisibility(I)Landroid/app/Notification$Builder;

    if-eqz p6, :cond_9

    if-eqz p7, :cond_9

    const/4 v7, 0x0

    const/4 v8, 0x0

    if-eqz p8, :cond_3

    move/from16 v0, p8

    invoke-virtual {v6, v0}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v7

    :cond_3
    if-eqz p9, :cond_4

    move/from16 v0, p9

    invoke-virtual {v6, v0}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v8

    :cond_4
    iget-object v10, p0, Lcom/android/server/usb/UsbNotificationHandler$NotificatoinUnit;->mNotificationBuilder:Landroid/app/Notification$Builder;

    move/from16 v0, p10

    move-object/from16 v1, p6

    invoke-virtual {v10, v0, v7, v1}, Landroid/app/Notification$Builder;->addAction(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    iget-object v10, p0, Lcom/android/server/usb/UsbNotificationHandler$NotificatoinUnit;->mNotificationBuilder:Landroid/app/Notification$Builder;

    move/from16 v0, p11

    move-object/from16 v1, p7

    invoke-virtual {v10, v0, v8, v1}, Landroid/app/Notification$Builder;->addAction(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    :cond_5
    :goto_2
    invoke-virtual/range {p12 .. p12}, Ljava/lang/String;->hashCode()I

    move-result v4

    iget-object v10, p0, Lcom/android/server/usb/UsbNotificationHandler$NotificatoinUnit;->this$0:Lcom/android/server/usb/UsbNotificationHandler;

    invoke-static {v10}, Lcom/android/server/usb/UsbNotificationHandler;->-get0(Lcom/android/server/usb/UsbNotificationHandler;)Ljava/lang/String;

    move-result-object v10

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "setUsbObserverNotification : cancel id = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, ", device = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object/from16 v0, p12

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v10, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const/4 v11, 0x0

    invoke-virtual {v5, v11, v4, v10}, Landroid/app/NotificationManager;->cancelAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)V

    if-eqz p4, :cond_6

    iget-object v10, p0, Lcom/android/server/usb/UsbNotificationHandler$NotificatoinUnit;->mNotificationBuilder:Landroid/app/Notification$Builder;

    invoke-virtual {v10}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v3

    iget-object v10, p0, Lcom/android/server/usb/UsbNotificationHandler$NotificatoinUnit;->this$0:Lcom/android/server/usb/UsbNotificationHandler;

    invoke-static {v10}, Lcom/android/server/usb/UsbNotificationHandler;->-get0(Lcom/android/server/usb/UsbNotificationHandler;)Ljava/lang/String;

    move-result-object v10

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "setUsbObserverNotification : notify id = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, ", device = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object/from16 v0, p12

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, ", title = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, v3, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v10, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const/4 v11, 0x0

    invoke-virtual {v5, v11, v4, v3, v10}, Landroid/app/NotificationManager;->notifyAsUser(Ljava/lang/String;ILandroid/app/Notification;Landroid/os/UserHandle;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_6
    monitor-exit p0

    return-void

    :cond_7
    :try_start_3
    move/from16 v0, p2

    invoke-virtual {v6, v0}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    goto/16 :goto_0

    :cond_8
    iget-object v10, p0, Lcom/android/server/usb/UsbNotificationHandler$NotificatoinUnit;->mNotificationBuilder:Landroid/app/Notification$Builder;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Landroid/app/Notification$Builder;->setAutoCancel(Z)Landroid/app/Notification$Builder;

    iget-object v10, p0, Lcom/android/server/usb/UsbNotificationHandler$NotificatoinUnit;->mNotificationBuilder:Landroid/app/Notification$Builder;

    const/4 v11, 0x1

    invoke-virtual {v10, v11}, Landroid/app/Notification$Builder;->setOngoing(Z)Landroid/app/Notification$Builder;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_1

    :catchall_0
    move-exception v10

    monitor-exit p0

    throw v10

    :cond_9
    if-eqz p6, :cond_5

    :try_start_4
    iget-object v10, p0, Lcom/android/server/usb/UsbNotificationHandler$NotificatoinUnit;->mNotificationBuilder:Landroid/app/Notification$Builder;

    move-object/from16 v0, p6

    invoke-virtual {v10, v0}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto/16 :goto_2
.end method


# virtual methods
.method public clearNotification()V
    .locals 13

    iget v1, p0, Lcom/android/server/usb/UsbNotificationHandler$NotificatoinUnit;->mTitleId:I

    iget v2, p0, Lcom/android/server/usb/UsbNotificationHandler$NotificatoinUnit;->mMessageId:I

    iget v3, p0, Lcom/android/server/usb/UsbNotificationHandler$NotificatoinUnit;->mIcon:I

    iget-boolean v5, p0, Lcom/android/server/usb/UsbNotificationHandler$NotificatoinUnit;->mDismissable:Z

    iget-object v6, p0, Lcom/android/server/usb/UsbNotificationHandler$NotificatoinUnit;->mExpandedIntent1:Landroid/app/PendingIntent;

    iget-object v7, p0, Lcom/android/server/usb/UsbNotificationHandler$NotificatoinUnit;->mExpandedIntent2:Landroid/app/PendingIntent;

    iget v8, p0, Lcom/android/server/usb/UsbNotificationHandler$NotificatoinUnit;->mExpandedTitleId1:I

    iget v9, p0, Lcom/android/server/usb/UsbNotificationHandler$NotificatoinUnit;->mExpandedTitleId2:I

    iget v10, p0, Lcom/android/server/usb/UsbNotificationHandler$NotificatoinUnit;->mExpandedIcon1:I

    iget v11, p0, Lcom/android/server/usb/UsbNotificationHandler$NotificatoinUnit;->mExpandedIcon2:I

    iget-object v12, p0, Lcom/android/server/usb/UsbNotificationHandler$NotificatoinUnit;->mszId:Ljava/lang/String;

    const/4 v4, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v12}, Lcom/android/server/usb/UsbNotificationHandler$NotificatoinUnit;->setUsbObserverNotification(IIIZZLandroid/app/PendingIntent;Landroid/app/PendingIntent;IIIILjava/lang/String;)V

    return-void
.end method

.method public getNotificationStayed()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/usb/UsbNotificationHandler$NotificatoinUnit;->mStayNofiBar:Z

    return v0
.end method

.method public getStringId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/server/usb/UsbNotificationHandler$NotificatoinUnit;->mszId:Ljava/lang/String;

    return-object v0
.end method

.method public getText()Ljava/lang/String;
    .locals 2

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    iget v1, p0, Lcom/android/server/usb/UsbNotificationHandler$NotificatoinUnit;->mTitleId:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public setNotificationStayed(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/usb/UsbNotificationHandler$NotificatoinUnit;->mStayNofiBar:Z

    return-void
.end method

.method public setObserverNotification()V
    .locals 13

    iget v1, p0, Lcom/android/server/usb/UsbNotificationHandler$NotificatoinUnit;->mTitleId:I

    iget v2, p0, Lcom/android/server/usb/UsbNotificationHandler$NotificatoinUnit;->mMessageId:I

    iget v3, p0, Lcom/android/server/usb/UsbNotificationHandler$NotificatoinUnit;->mIcon:I

    iget-boolean v5, p0, Lcom/android/server/usb/UsbNotificationHandler$NotificatoinUnit;->mDismissable:Z

    iget-object v6, p0, Lcom/android/server/usb/UsbNotificationHandler$NotificatoinUnit;->mExpandedIntent1:Landroid/app/PendingIntent;

    iget-object v7, p0, Lcom/android/server/usb/UsbNotificationHandler$NotificatoinUnit;->mExpandedIntent2:Landroid/app/PendingIntent;

    iget v8, p0, Lcom/android/server/usb/UsbNotificationHandler$NotificatoinUnit;->mExpandedTitleId1:I

    iget v9, p0, Lcom/android/server/usb/UsbNotificationHandler$NotificatoinUnit;->mExpandedTitleId2:I

    iget v10, p0, Lcom/android/server/usb/UsbNotificationHandler$NotificatoinUnit;->mExpandedIcon1:I

    iget v11, p0, Lcom/android/server/usb/UsbNotificationHandler$NotificatoinUnit;->mExpandedIcon2:I

    iget-object v12, p0, Lcom/android/server/usb/UsbNotificationHandler$NotificatoinUnit;->mszId:Ljava/lang/String;

    const/4 v4, 0x1

    move-object v0, p0

    invoke-direct/range {v0 .. v12}, Lcom/android/server/usb/UsbNotificationHandler$NotificatoinUnit;->setUsbObserverNotification(IIIZZLandroid/app/PendingIntent;Landroid/app/PendingIntent;IIIILjava/lang/String;)V

    return-void
.end method
