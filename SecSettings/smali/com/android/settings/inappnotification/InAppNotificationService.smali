.class public Lcom/android/settings/inappnotification/InAppNotificationService;
.super Landroid/app/IntentService;
.source "InAppNotificationService.java"


# direct methods
.method public constructor <init>()V
    .locals 1

    const-string/jumbo v0, "InAppNotificationService"

    invoke-direct {p0, v0}, Landroid/app/IntentService;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method private createPendingIntent(Landroid/content/Context;Lcom/android/settings/inappnotification/InAppNotificationData;)Landroid/app/PendingIntent;
    .locals 8

    const/4 v7, 0x1

    const/4 v0, 0x0

    if-eqz p2, :cond_1

    invoke-virtual {p2}, Lcom/android/settings/inappnotification/InAppNotificationData;->getPendingIntent()Landroid/app/PendingIntent;

    move-result-object v2

    const-string/jumbo v4, "InAppService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "pendingintent = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v2, :cond_0

    return-object v2

    :cond_0
    const/4 v4, 0x3

    invoke-virtual {p2, v4}, Lcom/android/settings/inappnotification/InAppNotificationData;->getStringData(I)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_1

    const/4 v1, 0x0

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/4 v4, 0x2

    invoke-virtual {p2, v4}, Lcom/android/settings/inappnotification/InAppNotificationData;->getStringData(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v4, "fromNoti"

    invoke-virtual {v1, v4, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const/high16 v4, 0x34000000

    invoke-virtual {v1, v4}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const/high16 v4, 0x10000000

    invoke-static {p1, v7, v1, v4}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    :cond_1
    return-object v0
.end method

.method private handleActionNotification(Lcom/android/settings/inappnotification/InAppNotificationData;)V
    .locals 36

    if-eqz p1, :cond_13

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/inappnotification/InAppNotificationService;->getBaseContext()Landroid/content/Context;

    move-result-object v11

    const-string/jumbo v33, "notification"

    move-object/from16 v0, v33

    invoke-virtual {v11, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Landroid/app/NotificationManager;

    const/16 v33, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v33

    invoke-virtual {v0, v1}, Lcom/android/settings/inappnotification/InAppNotificationData;->getStringData(I)Ljava/lang/String;

    move-result-object v9

    if-nez v9, :cond_0

    const-string/jumbo v33, "InAppService"

    const-string/jumbo v34, "received channel id is null, so we should return this request."

    invoke-static/range {v33 .. v34}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const/16 v33, 0x1

    move-object/from16 v0, p1

    move/from16 v1, v33

    invoke-virtual {v0, v1}, Lcom/android/settings/inappnotification/InAppNotificationData;->getStringData(I)Ljava/lang/String;

    move-result-object v10

    const/16 v33, 0xc

    move-object/from16 v0, p1

    move/from16 v1, v33

    invoke-virtual {v0, v1}, Lcom/android/settings/inappnotification/InAppNotificationData;->getStringData(I)Ljava/lang/String;

    move-result-object v13

    if-eqz v13, :cond_1

    const-string/jumbo v33, "InAppService"

    new-instance v34, Ljava/lang/StringBuilder;

    invoke-direct/range {v34 .. v34}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v35, "delete channel = "

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    move-object/from16 v0, v34

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    const-string/jumbo v35, "  before create : "

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v34

    invoke-static/range {v33 .. v34}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, v24

    invoke-virtual {v0, v13}, Landroid/app/NotificationManager;->deleteNotificationChannel(Ljava/lang/String;)V

    :cond_1
    const-string/jumbo v33, "NoSound"

    move-object/from16 v0, v33

    invoke-virtual {v9, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v33

    if-eqz v33, :cond_d

    const-string/jumbo v33, "InAppService"

    const-string/jumbo v34, "No Sound channel"

    invoke-static/range {v33 .. v34}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v8, Landroid/app/NotificationChannel;

    const/16 v33, 0x2

    move/from16 v0, v33

    invoke-direct {v8, v9, v10, v0}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    const/16 v33, 0x0

    const/16 v34, 0x0

    move-object/from16 v0, v33

    move-object/from16 v1, v34

    invoke-virtual {v8, v0, v1}, Landroid/app/NotificationChannel;->setSound(Landroid/net/Uri;Landroid/media/AudioAttributes;)V

    :goto_0
    const/16 v33, 0x1

    move-object/from16 v0, p1

    move/from16 v1, v33

    invoke-virtual {v0, v1}, Lcom/android/settings/inappnotification/InAppNotificationData;->getIntegerData(I)I

    move-result v19

    if-eqz v19, :cond_2

    move/from16 v0, v19

    invoke-virtual {v8, v0}, Landroid/app/NotificationChannel;->setLightColor(I)V

    :cond_2
    const/16 v33, 0x0

    move/from16 v0, v33

    invoke-virtual {v8, v0}, Landroid/app/NotificationChannel;->setLockscreenVisibility(I)V

    const/16 v33, 0x5

    move-object/from16 v0, p1

    move/from16 v1, v33

    invoke-virtual {v0, v1}, Lcom/android/settings/inappnotification/InAppNotificationData;->getIntegerData(I)I

    move-result v33

    const/16 v34, 0x1

    move/from16 v0, v33

    move/from16 v1, v34

    if-ne v0, v1, :cond_e

    const/16 v28, 0x1

    :goto_1
    move/from16 v0, v28

    invoke-virtual {v8, v0}, Landroid/app/NotificationChannel;->setShowBadge(Z)V

    const/16 v33, 0xd

    move-object/from16 v0, p1

    move/from16 v1, v33

    invoke-virtual {v0, v1}, Lcom/android/settings/inappnotification/InAppNotificationData;->getStringData(I)Ljava/lang/String;

    move-result-object v15

    const/16 v33, 0xe

    move-object/from16 v0, p1

    move/from16 v1, v33

    invoke-virtual {v0, v1}, Lcom/android/settings/inappnotification/InAppNotificationData;->getStringData(I)Ljava/lang/String;

    move-result-object v16

    if-eqz v15, :cond_3

    if-eqz v16, :cond_3

    new-instance v33, Landroid/app/NotificationChannelGroup;

    move-object/from16 v0, v33

    move-object/from16 v1, v16

    invoke-direct {v0, v15, v1}, Landroid/app/NotificationChannelGroup;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;)V

    move-object/from16 v0, v24

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->createNotificationChannelGroup(Landroid/app/NotificationChannelGroup;)V

    invoke-virtual {v8, v15}, Landroid/app/NotificationChannel;->setGroup(Ljava/lang/String;)V

    :cond_3
    move-object/from16 v0, v24

    invoke-virtual {v0, v8}, Landroid/app/NotificationManager;->createNotificationChannel(Landroid/app/NotificationChannel;)V

    new-instance v21, Landroid/app/Notification$Builder;

    move-object/from16 v0, v21

    invoke-direct {v0, v11, v9}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual/range {p1 .. p1}, Lcom/android/settings/inappnotification/InAppNotificationData;->getSmallIcon()Landroid/graphics/drawable/Icon;

    move-result-object v33

    if-eqz v33, :cond_f

    invoke-virtual/range {p1 .. p1}, Lcom/android/settings/inappnotification/InAppNotificationData;->getSmallIcon()Landroid/graphics/drawable/Icon;

    move-result-object v33

    move-object/from16 v0, v21

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setSmallIcon(Landroid/graphics/drawable/Icon;)Landroid/app/Notification$Builder;

    :goto_2
    const/16 v33, 0xb

    move-object/from16 v0, p1

    move/from16 v1, v33

    invoke-virtual {v0, v1}, Lcom/android/settings/inappnotification/InAppNotificationData;->getIntegerData(I)I

    move-result v25

    if-lez v25, :cond_4

    move-object/from16 v0, v21

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setDefaults(I)Landroid/app/Notification$Builder;

    :cond_4
    const/16 v33, 0x4

    move-object/from16 v0, p1

    move/from16 v1, v33

    invoke-virtual {v0, v1}, Lcom/android/settings/inappnotification/InAppNotificationData;->getStringData(I)Ljava/lang/String;

    move-result-object v33

    move-object/from16 v0, v21

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    const/16 v33, 0x5

    move-object/from16 v0, p1

    move/from16 v1, v33

    invoke-virtual {v0, v1}, Lcom/android/settings/inappnotification/InAppNotificationData;->getStringData(I)Ljava/lang/String;

    move-result-object v33

    move-object/from16 v0, v21

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    const/16 v33, 0x2

    move-object/from16 v0, p1

    move/from16 v1, v33

    invoke-virtual {v0, v1}, Lcom/android/settings/inappnotification/InAppNotificationData;->getIntegerData(I)I

    move-result v32

    if-eqz v32, :cond_5

    move-object/from16 v0, v21

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setColor(I)Landroid/app/Notification$Builder;

    :cond_5
    const/16 v33, 0x6

    move-object/from16 v0, p1

    move/from16 v1, v33

    invoke-virtual {v0, v1}, Lcom/android/settings/inappnotification/InAppNotificationData;->getStringData(I)Ljava/lang/String;

    move-result-object v7

    const/16 v33, 0x7

    move-object/from16 v0, p1

    move/from16 v1, v33

    invoke-virtual {v0, v1}, Lcom/android/settings/inappnotification/InAppNotificationData;->getStringData(I)Ljava/lang/String;

    move-result-object v5

    if-nez v7, :cond_6

    if-eqz v5, :cond_9

    :cond_6
    new-instance v6, Landroid/app/Notification$BigTextStyle;

    invoke-direct {v6}, Landroid/app/Notification$BigTextStyle;-><init>()V

    if-eqz v7, :cond_7

    invoke-virtual {v6, v7}, Landroid/app/Notification$BigTextStyle;->setBigContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$BigTextStyle;

    :cond_7
    if-eqz v5, :cond_8

    invoke-virtual {v6, v5}, Landroid/app/Notification$BigTextStyle;->bigText(Ljava/lang/CharSequence;)Landroid/app/Notification$BigTextStyle;

    :cond_8
    move-object/from16 v0, v21

    invoke-virtual {v0, v6}, Landroid/app/Notification$Builder;->setStyle(Landroid/app/Notification$Style;)Landroid/app/Notification$Builder;

    :cond_9
    const/16 v33, 0xa

    move-object/from16 v0, p1

    move/from16 v1, v33

    invoke-virtual {v0, v1}, Lcom/android/settings/inappnotification/InAppNotificationData;->getStringData(I)Ljava/lang/String;

    move-result-object v31

    move-object/from16 v0, v21

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    const/16 v33, 0x9

    move-object/from16 v0, p1

    move/from16 v1, v33

    invoke-virtual {v0, v1}, Lcom/android/settings/inappnotification/InAppNotificationData;->getIntegerData(I)I

    move-result v33

    const/16 v34, 0x1

    move/from16 v0, v33

    move/from16 v1, v34

    if-ne v0, v1, :cond_10

    const/16 v29, 0x1

    :goto_3
    move-object/from16 v0, v21

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setShowWhen(Z)Landroid/app/Notification$Builder;

    const/16 v33, 0x6

    move-object/from16 v0, p1

    move/from16 v1, v33

    invoke-virtual {v0, v1}, Lcom/android/settings/inappnotification/InAppNotificationData;->getIntegerData(I)I

    move-result v27

    const/16 v33, 0x7

    move-object/from16 v0, p1

    move/from16 v1, v33

    invoke-virtual {v0, v1}, Lcom/android/settings/inappnotification/InAppNotificationData;->getIntegerData(I)I

    move-result v20

    const/16 v33, 0x8

    move-object/from16 v0, p1

    move/from16 v1, v33

    invoke-virtual {v0, v1}, Lcom/android/settings/inappnotification/InAppNotificationData;->getIntegerData(I)I

    move-result v33

    const/16 v34, 0x1

    move/from16 v0, v33

    move/from16 v1, v34

    if-ne v0, v1, :cond_11

    const/16 v18, 0x1

    :goto_4
    move-object/from16 v0, v21

    move/from16 v1, v20

    move/from16 v2, v27

    move/from16 v3, v18

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/Notification$Builder;->setProgress(IIZ)Landroid/app/Notification$Builder;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v11, v1}, Lcom/android/settings/inappnotification/InAppNotificationService;->createPendingIntent(Landroid/content/Context;Lcom/android/settings/inappnotification/InAppNotificationData;)Landroid/app/PendingIntent;

    move-result-object v26

    move-object/from16 v0, v21

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    const/16 v33, 0x8

    move-object/from16 v0, p1

    move/from16 v1, v33

    invoke-virtual {v0, v1}, Lcom/android/settings/inappnotification/InAppNotificationData;->getStringData(I)Ljava/lang/String;

    move-result-object v30

    if-eqz v30, :cond_a

    new-instance v14, Landroid/os/Bundle;

    invoke-direct {v14}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v33, "android.substName"

    move-object/from16 v0, v33

    move-object/from16 v1, v30

    invoke-virtual {v14, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v21

    invoke-virtual {v0, v14}, Landroid/app/Notification$Builder;->addExtras(Landroid/os/Bundle;)Landroid/app/Notification$Builder;

    :cond_a
    const/16 v33, 0x3

    move-object/from16 v0, p1

    move/from16 v1, v33

    invoke-virtual {v0, v1}, Lcom/android/settings/inappnotification/InAppNotificationData;->getIntegerData(I)I

    move-result v12

    if-lez v12, :cond_b

    move-object/from16 v0, v21

    invoke-virtual {v0, v12}, Landroid/app/Notification$Builder;->setNumber(I)Landroid/app/Notification$Builder;

    :cond_b
    const-string/jumbo v33, "NoSound"

    move-object/from16 v0, v33

    invoke-virtual {v9, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v33

    if-eqz v33, :cond_c

    const/16 v33, 0x1

    move-object/from16 v0, v21

    move/from16 v1, v33

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setOnlyAlertOnce(Z)Landroid/app/Notification$Builder;

    :cond_c
    invoke-virtual/range {p1 .. p1}, Lcom/android/settings/inappnotification/InAppNotificationData;->getActions()Ljava/util/ArrayList;

    move-result-object v4

    if-eqz v4, :cond_12

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v33

    if-lez v33, :cond_12

    const/16 v17, 0x0

    :goto_5
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v33

    move/from16 v0, v17

    move/from16 v1, v33

    if-ge v0, v1, :cond_12

    move/from16 v0, v17

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v33

    check-cast v33, Landroid/app/Notification$Action;

    move-object/from16 v0, v21

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->addAction(Landroid/app/Notification$Action;)Landroid/app/Notification$Builder;

    add-int/lit8 v17, v17, 0x1

    goto :goto_5

    :cond_d
    new-instance v8, Landroid/app/NotificationChannel;

    const/16 v33, 0x3

    move/from16 v0, v33

    invoke-direct {v8, v9, v10, v0}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    goto/16 :goto_0

    :cond_e
    const/16 v28, 0x0

    goto/16 :goto_1

    :cond_f
    const v33, 0x7f0f0002

    move-object/from16 v0, v21

    move/from16 v1, v33

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    goto/16 :goto_2

    :cond_10
    const/16 v29, 0x0

    goto/16 :goto_3

    :cond_11
    const/16 v18, 0x0

    goto/16 :goto_4

    :cond_12
    const/16 v33, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v33

    invoke-virtual {v0, v1}, Lcom/android/settings/inappnotification/InAppNotificationData;->getIntegerData(I)I

    move-result v22

    invoke-virtual/range {v21 .. v21}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v23

    move-object/from16 v0, v23

    iget v0, v0, Landroid/app/Notification;->flags:I

    move/from16 v33, v0

    const/16 v34, 0x4

    move-object/from16 v0, p1

    move/from16 v1, v34

    invoke-virtual {v0, v1}, Lcom/android/settings/inappnotification/InAppNotificationData;->getIntegerData(I)I

    move-result v34

    or-int v33, v33, v34

    move/from16 v0, v33

    move-object/from16 v1, v23

    iput v0, v1, Landroid/app/Notification;->flags:I

    const/16 v33, 0xb

    move-object/from16 v0, p1

    move/from16 v1, v33

    invoke-virtual {v0, v1}, Lcom/android/settings/inappnotification/InAppNotificationData;->getStringData(I)Ljava/lang/String;

    move-result-object v33

    move-object/from16 v0, v24

    move-object/from16 v1, v33

    move/from16 v2, v22

    move-object/from16 v3, v23

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/NotificationManager;->notify(Ljava/lang/String;ILandroid/app/Notification;)V

    :cond_13
    return-void
.end method

.method private parseData(Landroid/content/Intent;)Lcom/android/settings/inappnotification/InAppNotificationData;
    .locals 1

    new-instance v0, Lcom/android/settings/inappnotification/InAppNotificationData;

    invoke-direct {v0}, Lcom/android/settings/inappnotification/InAppNotificationData;-><init>()V

    invoke-virtual {v0, p1}, Lcom/android/settings/inappnotification/InAppNotificationData;->setData(Landroid/content/Intent;)V

    return-object v0
.end method


# virtual methods
.method protected onHandleIntent(Landroid/content/Intent;)V
    .locals 3

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v2, "com.samsung.settings.action.INAPP_NOTI_SERVICE"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-direct {p0, p1}, Lcom/android/settings/inappnotification/InAppNotificationService;->parseData(Landroid/content/Intent;)Lcom/android/settings/inappnotification/InAppNotificationData;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/settings/inappnotification/InAppNotificationService;->handleActionNotification(Lcom/android/settings/inappnotification/InAppNotificationData;)V

    :cond_0
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 1

    invoke-super {p0, p1, p2, p3}, Landroid/app/IntentService;->onStartCommand(Landroid/content/Intent;II)I

    const/4 v0, 0x2

    return v0
.end method
