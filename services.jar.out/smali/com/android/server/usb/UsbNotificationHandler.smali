.class public Lcom/android/server/usb/UsbNotificationHandler;
.super Landroid/os/Handler;
.source "UsbNotificationHandler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/usb/UsbNotificationHandler$1;,
        Lcom/android/server/usb/UsbNotificationHandler$2;,
        Lcom/android/server/usb/UsbNotificationHandler$NotificationWorking;,
        Lcom/android/server/usb/UsbNotificationHandler$NotificatoinUnit;
    }
.end annotation


# static fields
.field private static final MSG_EXPIRED_USBDEVICE:I = 0x2

.field private static final MSG_UPDATE_USBDEVICE:I = 0x1


# instance fields
.field private final DEBUG:Z

.field private final DELAY:I

.field private final TAG:Ljava/lang/String;

.field private curLocale:Ljava/util/Locale;

.field private final mBootCompletedReceiver:Landroid/content/BroadcastReceiver;

.field private final mContext:Landroid/content/Context;

.field private final mLocaleChangedReceiver:Landroid/content/BroadcastReceiver;

.field private mReady:Z

.field map:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/android/server/usb/UsbNotificationHandler$NotificationWorking;",
            ">;"
        }
    .end annotation
.end field

.field private res:Landroid/content/res/Resources;


# direct methods
.method static synthetic -get0(Lcom/android/server/usb/UsbNotificationHandler;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/server/usb/UsbNotificationHandler;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/server/usb/UsbNotificationHandler;)Ljava/util/Locale;
    .locals 1

    iget-object v0, p0, Lcom/android/server/usb/UsbNotificationHandler;->curLocale:Ljava/util/Locale;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/server/usb/UsbNotificationHandler;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/server/usb/UsbNotificationHandler;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get3(Lcom/android/server/usb/UsbNotificationHandler;)Landroid/content/res/Resources;
    .locals 1

    iget-object v0, p0, Lcom/android/server/usb/UsbNotificationHandler;->res:Landroid/content/res/Resources;

    return-object v0
.end method

.method static synthetic -set0(Lcom/android/server/usb/UsbNotificationHandler;Ljava/util/Locale;)Ljava/util/Locale;
    .locals 0

    iput-object p1, p0, Lcom/android/server/usb/UsbNotificationHandler;->curLocale:Ljava/util/Locale;

    return-object p1
.end method

.method static synthetic -wrap0(Lcom/android/server/usb/UsbNotificationHandler;III)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/usb/UsbNotificationHandler;->sendMessageDelayed(III)V

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Landroid/os/Looper;Ljava/lang/String;)V
    .locals 4

    const/4 v1, 0x0

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-boolean v1, p0, Lcom/android/server/usb/UsbNotificationHandler;->DEBUG:Z

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/usb/UsbNotificationHandler;->map:Ljava/util/HashMap;

    iput-boolean v1, p0, Lcom/android/server/usb/UsbNotificationHandler;->mReady:Z

    const/16 v0, 0xbb8

    iput v0, p0, Lcom/android/server/usb/UsbNotificationHandler;->DELAY:I

    new-instance v0, Lcom/android/server/usb/UsbNotificationHandler$1;

    invoke-direct {v0, p0}, Lcom/android/server/usb/UsbNotificationHandler$1;-><init>(Lcom/android/server/usb/UsbNotificationHandler;)V

    iput-object v0, p0, Lcom/android/server/usb/UsbNotificationHandler;->mBootCompletedReceiver:Landroid/content/BroadcastReceiver;

    new-instance v0, Lcom/android/server/usb/UsbNotificationHandler$2;

    invoke-direct {v0, p0}, Lcom/android/server/usb/UsbNotificationHandler$2;-><init>(Lcom/android/server/usb/UsbNotificationHandler;)V

    iput-object v0, p0, Lcom/android/server/usb/UsbNotificationHandler;->mLocaleChangedReceiver:Landroid/content/BroadcastReceiver;

    iput-object p3, p0, Lcom/android/server/usb/UsbNotificationHandler;->TAG:Ljava/lang/String;

    iput-object p1, p0, Lcom/android/server/usb/UsbNotificationHandler;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/android/server/usb/UsbNotificationHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/usb/UsbNotificationHandler;->res:Landroid/content/res/Resources;

    iget-object v0, p0, Lcom/android/server/usb/UsbNotificationHandler;->res:Landroid/content/res/Resources;

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget-object v0, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    iput-object v0, p0, Lcom/android/server/usb/UsbNotificationHandler;->curLocale:Ljava/util/Locale;

    iget-object v0, p0, Lcom/android/server/usb/UsbNotificationHandler;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/usb/UsbNotificationHandler;->mBootCompletedReceiver:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string/jumbo v3, "android.intent.action.BOOT_COMPLETED"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/android/server/usb/UsbNotificationHandler;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/usb/UsbNotificationHandler;->mLocaleChangedReceiver:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string/jumbo v3, "android.intent.action.LOCALE_CHANGED"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method private sendMessageDelayed(III)V
    .locals 4

    invoke-static {p0, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    iput p2, v0, Landroid/os/Message;->arg1:I

    int-to-long v2, p3

    invoke-virtual {p0, v0, v2, v3}, Lcom/android/server/usb/UsbNotificationHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void
.end method


# virtual methods
.method public clearAllNotificaton()V
    .locals 3

    iget-object v2, p0, Lcom/android/server/usb/UsbNotificationHandler;->map:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/android/server/usb/UsbNotificationHandler;->clearNotification(I)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public clearNotification(I)V
    .locals 3

    iget-object v1, p0, Lcom/android/server/usb/UsbNotificationHandler;->map:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/usb/UsbNotificationHandler;->map:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/usb/UsbNotificationHandler$NotificationWorking;

    iget-boolean v1, p0, Lcom/android/server/usb/UsbNotificationHandler;->mReady:Z

    if-nez v1, :cond_1

    invoke-virtual {v0}, Lcom/android/server/usb/UsbNotificationHandler$NotificationWorking;->clearAll()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {v0}, Lcom/android/server/usb/UsbNotificationHandler$NotificationWorking;->notStayNofication()V

    goto :goto_0
.end method

.method public clearNotification(Ljava/lang/String;)V
    .locals 2

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/server/usb/UsbNotificationHandler;->clearNotification(I)V

    return-void
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;)V
    .locals 5

    const-string/jumbo v3, "  Notification : "

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "    ready : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/android/server/usb/UsbNotificationHandler;->mReady:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/server/usb/UsbNotificationHandler;->map:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    iget-object v3, p0, Lcom/android/server/usb/UsbNotificationHandler;->map:Ljava/util/HashMap;

    invoke-virtual {v3, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/usb/UsbNotificationHandler$NotificationWorking;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "    "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v2}, Lcom/android/server/usb/UsbNotificationHandler$NotificationWorking;->getStringId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v2}, Lcom/android/server/usb/UsbNotificationHandler$NotificationWorking;->countLists()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public enqueueNotification(IIIZLandroid/app/PendingIntent;Landroid/app/PendingIntent;IIIIZLjava/lang/String;)V
    .locals 14

    const/4 v4, 0x1

    move-object v0, p0

    move v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move/from16 v8, p7

    move/from16 v9, p8

    move/from16 v10, p9

    move/from16 v11, p10

    move/from16 v12, p11

    move-object/from16 v13, p12

    invoke-virtual/range {v0 .. v13}, Lcom/android/server/usb/UsbNotificationHandler;->enqueueNotification(IIIZZLandroid/app/PendingIntent;Landroid/app/PendingIntent;IIIIZLjava/lang/String;)V

    return-void
.end method

.method public enqueueNotification(IIIZLandroid/app/PendingIntent;ZLjava/lang/String;)V
    .locals 14

    const/4 v4, 0x1

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object v0, p0

    move v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v5, p4

    move-object/from16 v6, p5

    move/from16 v12, p6

    move-object/from16 v13, p7

    invoke-virtual/range {v0 .. v13}, Lcom/android/server/usb/UsbNotificationHandler;->enqueueNotification(IIIZZLandroid/app/PendingIntent;Landroid/app/PendingIntent;IIIIZLjava/lang/String;)V

    return-void
.end method

.method public enqueueNotification(IIIZZLandroid/app/PendingIntent;Landroid/app/PendingIntent;IIIIZLjava/lang/String;)V
    .locals 20

    new-instance v3, Lcom/android/server/usb/UsbNotificationHandler$NotificatoinUnit;

    move-object/from16 v4, p0

    move/from16 v5, p1

    move/from16 v6, p2

    move/from16 v7, p3

    move/from16 v8, p4

    move/from16 v9, p5

    move-object/from16 v10, p6

    move-object/from16 v11, p7

    move/from16 v12, p8

    move/from16 v13, p9

    move/from16 v14, p10

    move/from16 v15, p11

    move/from16 v16, p12

    move-object/from16 v17, p13

    invoke-direct/range {v3 .. v17}, Lcom/android/server/usb/UsbNotificationHandler$NotificatoinUnit;-><init>(Lcom/android/server/usb/UsbNotificationHandler;IIIZZLandroid/app/PendingIntent;Landroid/app/PendingIntent;IIIIZLjava/lang/String;)V

    invoke-virtual/range {p13 .. p13}, Ljava/lang/String;->hashCode()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/usb/UsbNotificationHandler;->map:Ljava/util/HashMap;

    move-object/from16 v0, v18

    invoke-virtual {v4, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/usb/UsbNotificationHandler;->map:Ljava/util/HashMap;

    move-object/from16 v0, v18

    invoke-virtual {v4, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lcom/android/server/usb/UsbNotificationHandler$NotificationWorking;

    move-object/from16 v0, v19

    invoke-virtual {v0, v3}, Lcom/android/server/usb/UsbNotificationHandler$NotificationWorking;->push(Lcom/android/server/usb/UsbNotificationHandler$NotificatoinUnit;)V

    :goto_0
    return-void

    :cond_0
    new-instance v19, Lcom/android/server/usb/UsbNotificationHandler$NotificationWorking;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    move-object/from16 v2, p13

    invoke-direct {v0, v1, v2}, Lcom/android/server/usb/UsbNotificationHandler$NotificationWorking;-><init>(Lcom/android/server/usb/UsbNotificationHandler;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/usb/UsbNotificationHandler;->map:Ljava/util/HashMap;

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v4, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v0, v19

    invoke-virtual {v0, v3}, Lcom/android/server/usb/UsbNotificationHandler$NotificationWorking;->push(Lcom/android/server/usb/UsbNotificationHandler$NotificatoinUnit;)V

    goto :goto_0
.end method

.method public enqueueNotification(IIIZZLjava/lang/String;)V
    .locals 14

    const/4 v4, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object v0, p0

    move v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v5, p4

    move/from16 v12, p5

    move-object/from16 v13, p6

    invoke-virtual/range {v0 .. v13}, Lcom/android/server/usb/UsbNotificationHandler;->enqueueNotification(IIIZZLandroid/app/PendingIntent;Landroid/app/PendingIntent;IIIIZLjava/lang/String;)V

    return-void
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 5

    iget v2, p1, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    iget v0, p1, Landroid/os/Message;->arg1:I

    iget-boolean v2, p0, Lcom/android/server/usb/UsbNotificationHandler;->mReady:Z

    if-nez v2, :cond_0

    return-void

    :cond_0
    iget-object v2, p0, Lcom/android/server/usb/UsbNotificationHandler;->map:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/server/usb/UsbNotificationHandler;->map:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/usb/UsbNotificationHandler$NotificationWorking;

    invoke-virtual {v1}, Lcom/android/server/usb/UsbNotificationHandler$NotificationWorking;->update()V

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lcom/android/server/usb/UsbNotificationHandler;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "MSG_UPDATE_USBDEVICE : can\'t have a key ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :pswitch_1
    iget v0, p1, Landroid/os/Message;->arg1:I

    iget-object v2, p0, Lcom/android/server/usb/UsbNotificationHandler;->map:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/server/usb/UsbNotificationHandler;->map:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/usb/UsbNotificationHandler$NotificationWorking;

    invoke-virtual {v1}, Lcom/android/server/usb/UsbNotificationHandler$NotificationWorking;->remove()V

    goto :goto_0

    :cond_2
    iget-object v2, p0, Lcom/android/server/usb/UsbNotificationHandler;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "MSG_EXPIRED_USBDEVICE : can\'t have a key ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public readyNotification()V
    .locals 5

    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/android/server/usb/UsbNotificationHandler;->mReady:Z

    iget-object v2, p0, Lcom/android/server/usb/UsbNotificationHandler;->map:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/4 v3, 0x0

    invoke-direct {p0, v4, v2, v3}, Lcom/android/server/usb/UsbNotificationHandler;->sendMessageDelayed(III)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public reflashNotificaton()V
    .locals 4

    iget-object v3, p0, Lcom/android/server/usb/UsbNotificationHandler;->map:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    iget-object v3, p0, Lcom/android/server/usb/UsbNotificationHandler;->map:Ljava/util/HashMap;

    invoke-virtual {v3, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/usb/UsbNotificationHandler$NotificationWorking;

    invoke-virtual {v2}, Lcom/android/server/usb/UsbNotificationHandler$NotificationWorking;->reflash()V

    goto :goto_0

    :cond_0
    return-void
.end method
