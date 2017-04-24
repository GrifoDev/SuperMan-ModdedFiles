.class final Lcom/android/incallui/util/SALogging$1;
.super Landroid/content/BroadcastReceiver;
.source "SALogging.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/incallui/util/SALogging;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 12

    const/4 v11, 0x2

    const/4 v10, 0x1

    const/4 v9, 0x0

    if-nez p2, :cond_1

    const-string v6, "SALogging"

    const-string v7, "Invalid TelecommSALoggingReceiver intent."

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v6, "com.samsung.android.intent.action.ACTION_TELECOMM_SALOGGING"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const-string v6, "extra_name_screen"

    invoke-virtual {p2, v6, v9}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    const-string v6, "extra_name_mute"

    invoke-virtual {p2, v6, v9}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    const/4 v4, 0x0

    const/4 v3, 0x0

    const-string v6, "SALogging"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Received intent - "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "|"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/android/incallui/accessory/AccessoryEventHandler;->getInstance()Lcom/android/incallui/accessory/AccessoryEventHandler;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/incallui/accessory/AccessoryEventHandler;->isCoverClosed()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-static {}, Lcom/android/incallui/accessory/AccessoryEventHandler;->getInstance()Lcom/android/incallui/accessory/AccessoryEventHandler;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/incallui/accessory/AccessoryEventHandler;->getCoverType()I

    move-result v1

    const-string v6, "SALogging"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Currently attached cover - "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-ne v1, v10, :cond_6

    const/4 v6, 0x6

    invoke-static {v6}, Lcom/android/incallui/util/SALogging;->getScreenId(I)Ljava/lang/String;

    move-result-object v4

    :cond_2
    :goto_1
    if-nez v4, :cond_3

    if-ne v5, v10, :cond_8

    invoke-static {v10}, Lcom/android/incallui/util/SALogging;->getScreenId(I)Ljava/lang/String;

    move-result-object v4

    :cond_3
    :goto_2
    const/4 v6, 0x4

    if-ne v2, v6, :cond_9

    const v6, 0x7f0903f3

    invoke-static {v6}, Lcom/android/incallui/util/SALogging;->getString(I)Ljava/lang/String;

    move-result-object v3

    :cond_4
    :goto_3
    if-eqz v4, :cond_5

    if-nez v3, :cond_a

    :cond_5
    const-string v6, "SALogging"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Unavailable to sending SALogging ["

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "|"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "]"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_6
    if-ne v1, v11, :cond_7

    const-string v6, "SALogging"

    const-string v7, "Invalid cover state"

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v4, 0x0

    goto :goto_1

    :cond_7
    const/16 v6, 0x8

    invoke-static {v6}, Lcom/android/incallui/util/SALogging;->getScreenId(I)Ljava/lang/String;

    move-result-object v4

    goto :goto_1

    :cond_8
    if-ne v5, v11, :cond_3

    invoke-static {v9}, Lcom/android/incallui/util/SALogging;->getScreenId(I)Ljava/lang/String;

    move-result-object v4

    goto :goto_2

    :cond_9
    const/4 v6, 0x3

    if-ne v2, v6, :cond_4

    const v6, 0x7f0903f4

    invoke-static {v6}, Lcom/android/incallui/util/SALogging;->getString(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_3

    :cond_a
    const-string v6, "SALogging"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Send SALogging ["

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "|"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "]"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v4, v3}, Lcom/android/incallui/util/SALogging;->sendSAEventLog(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method
