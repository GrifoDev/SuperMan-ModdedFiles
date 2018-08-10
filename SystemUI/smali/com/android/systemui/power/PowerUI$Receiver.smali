.class final Lcom/android/systemui/power/PowerUI$Receiver;
.super Landroid/content/BroadcastReceiver;
.source "PowerUI.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/power/PowerUI;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "Receiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/power/PowerUI;


# direct methods
.method private constructor <init>(Lcom/android/systemui/power/PowerUI;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/systemui/power/PowerUI;Lcom/android/systemui/power/PowerUI$Receiver;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/power/PowerUI$Receiver;-><init>(Lcom/android/systemui/power/PowerUI;)V

    return-void
.end method


# virtual methods
.method public init()V
    .locals 5

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string/jumbo v2, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v2, "android.intent.action.USER_SWITCHED"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v2, "com.samsung.server.BatteryService.action.SEC_BATTERY_EVENT"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v2, "com.samsung.intent.action.KSO_SHOW_POPUP"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v2, "com.samsung.intent.action.KSO_CLOSE_POPUP"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v2, "android.intent.action.LOCALE_CHANGED"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v2, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    const-string/jumbo v2, "com.samsung.CHECK_COOLDOWN_LEVEL"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v2, "com.sec.android.intent.action.SAFEMODE_ENABLE"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    iget-object v2, v2, Lcom/android/systemui/power/PowerUI;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "com.samsung.android.permission.SSRM_NOTIFICATION_PERMISSION"

    iget-object v4, p0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    invoke-static {v4}, Lcom/android/systemui/power/PowerUI;->-get8(Lcom/android/systemui/power/PowerUI;)Landroid/os/Handler;

    move-result-object v4

    invoke-virtual {v2, p0, v1, v3, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    iget-object v2, p0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    iget-object v2, v2, Lcom/android/systemui/power/PowerUI;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    invoke-static {v3}, Lcom/android/systemui/power/PowerUI;->-get8(Lcom/android/systemui/power/PowerUI;)Landroid/os/Handler;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v2, p0, v0, v4, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    return-void
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 32

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_17

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    invoke-static {v5}, Lcom/android/systemui/power/PowerUI;->-get2(Lcom/android/systemui/power/PowerUI;)I

    move-result v17

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    const-string/jumbo v6, "level"

    const/16 v8, 0x64

    move-object/from16 v0, p2

    invoke-virtual {v0, v6, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v6

    invoke-static {v5, v6}, Lcom/android/systemui/power/PowerUI;->-set2(Lcom/android/systemui/power/PowerUI;I)I

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    invoke-static {v5}, Lcom/android/systemui/power/PowerUI;->-get5(Lcom/android/systemui/power/PowerUI;)I

    move-result v19

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    const-string/jumbo v6, "status"

    const/4 v8, 0x1

    move-object/from16 v0, p2

    invoke-virtual {v0, v6, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v6

    invoke-static {v5, v6}, Lcom/android/systemui/power/PowerUI;->-set5(Lcom/android/systemui/power/PowerUI;I)I

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    invoke-static {v5}, Lcom/android/systemui/power/PowerUI;->-get18(Lcom/android/systemui/power/PowerUI;)I

    move-result v25

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    const-string/jumbo v6, "plugged"

    const/4 v8, 0x1

    move-object/from16 v0, p2

    invoke-virtual {v0, v6, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v6

    invoke-static {v5, v6}, Lcom/android/systemui/power/PowerUI;->-set19(Lcom/android/systemui/power/PowerUI;I)I

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    invoke-static {v5}, Lcom/android/systemui/power/PowerUI;->-get9(Lcom/android/systemui/power/PowerUI;)I

    move-result v24

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    const-string/jumbo v6, "invalid_charger"

    const/4 v8, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v6, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v6

    invoke-static {v5, v6}, Lcom/android/systemui/power/PowerUI;->-set9(Lcom/android/systemui/power/PowerUI;I)I

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    invoke-static {v5}, Lcom/android/systemui/power/PowerUI;->-get18(Lcom/android/systemui/power/PowerUI;)I

    move-result v5

    if-eqz v5, :cond_2

    const/16 v30, 0x1

    :goto_0
    if-eqz v25, :cond_3

    const/16 v26, 0x1

    :goto_1
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    move/from16 v0, v17

    invoke-static {v5, v0}, Lcom/android/systemui/power/PowerUI;->-wrap0(Lcom/android/systemui/power/PowerUI;I)I

    move-result v21

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    invoke-static {v6}, Lcom/android/systemui/power/PowerUI;->-get2(Lcom/android/systemui/power/PowerUI;)I

    move-result v6

    invoke-static {v5, v6}, Lcom/android/systemui/power/PowerUI;->-wrap0(Lcom/android/systemui/power/PowerUI;I)I

    move-result v7

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    invoke-static {v5}, Lcom/android/systemui/power/PowerUI;->-get3(Lcom/android/systemui/power/PowerUI;)I

    move-result v18

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    const-string/jumbo v6, "online"

    const/4 v8, 0x1

    move-object/from16 v0, p2

    invoke-virtual {v0, v6, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v6

    invoke-static {v5, v6}, Lcom/android/systemui/power/PowerUI;->-set3(Lcom/android/systemui/power/PowerUI;I)I

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    const-string/jumbo v5, "charge_type"

    const/4 v8, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v5, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    const/4 v8, 0x2

    if-ne v5, v8, :cond_4

    const/4 v5, 0x1

    :goto_2
    invoke-static {v6, v5}, Lcom/android/systemui/power/PowerUI;->-set4(Lcom/android/systemui/power/PowerUI;Z)Z

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    const-string/jumbo v6, "hv_charger"

    const/4 v8, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v6, v8}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v6

    invoke-static {v5, v6}, Lcom/android/systemui/power/PowerUI;->-set1(Lcom/android/systemui/power/PowerUI;Z)Z

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    invoke-static {v5}, Lcom/android/systemui/power/PowerUI;->-get1(Lcom/android/systemui/power/PowerUI;)I

    move-result v16

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    const-string/jumbo v6, "health"

    const/4 v8, 0x1

    move-object/from16 v0, p2

    invoke-virtual {v0, v6, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v6

    invoke-static {v5, v6}, Lcom/android/systemui/power/PowerUI;->-set0(Lcom/android/systemui/power/PowerUI;I)I

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    invoke-static {v5}, Lcom/android/systemui/power/PowerUI;->-get7(Lcom/android/systemui/power/PowerUI;)Z

    move-result v22

    sget-boolean v5, Lcom/android/systemui/Rune;->PWRUI_SUPPORT_USB_TYPE_C:Z

    if-eqz v5, :cond_0

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    const-string/jumbo v5, "misc_event"

    const/4 v8, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v5, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    and-int/lit8 v5, v5, 0x4

    if-nez v5, :cond_5

    const/4 v5, 0x1

    :goto_3
    invoke-static {v6, v5}, Lcom/android/systemui/power/PowerUI;->-set8(Lcom/android/systemui/power/PowerUI;Z)Z

    :cond_0
    sget-boolean v5, Lcom/android/systemui/power/PowerUI;->DEBUG:Z

    if-eqz v5, :cond_1

    const-string/jumbo v5, "PowerUI"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "buckets   ....."

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    invoke-static {v8}, Lcom/android/systemui/power/PowerUI;->-get16(Lcom/android/systemui/power/PowerUI;)I

    move-result v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v8, " .. "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    invoke-static {v8}, Lcom/android/systemui/power/PowerUI;->-get17(Lcom/android/systemui/power/PowerUI;)[I

    move-result-object v8

    const/4 v9, 0x0

    aget v8, v8, v9

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v8, " .. "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    invoke-static {v8}, Lcom/android/systemui/power/PowerUI;->-get17(Lcom/android/systemui/power/PowerUI;)[I

    move-result-object v8

    const/4 v9, 0x1

    aget v8, v8, v9

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v5, "PowerUI"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "level          "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, v17

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v8, " --> "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    invoke-static {v8}, Lcom/android/systemui/power/PowerUI;->-get2(Lcom/android/systemui/power/PowerUI;)I

    move-result v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v5, "PowerUI"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "status         "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, v19

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v8, " --> "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    invoke-static {v8}, Lcom/android/systemui/power/PowerUI;->-get5(Lcom/android/systemui/power/PowerUI;)I

    move-result v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v5, "PowerUI"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "plugType       "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, v25

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v8, " --> "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    invoke-static {v8}, Lcom/android/systemui/power/PowerUI;->-get18(Lcom/android/systemui/power/PowerUI;)I

    move-result v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v5, "PowerUI"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "invalidCharger "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, v24

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v8, " --> "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    invoke-static {v8}, Lcom/android/systemui/power/PowerUI;->-get9(Lcom/android/systemui/power/PowerUI;)I

    move-result v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v5, "PowerUI"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "bucket         "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, v21

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v8, " --> "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v5, "PowerUI"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "plugged        "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, v26

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v8, " --> "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, v30

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    invoke-static {v5}, Lcom/android/systemui/power/PowerUI;->-get24(Lcom/android/systemui/power/PowerUI;)Lcom/android/systemui/power/PowerUI$WarningsUI;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    invoke-static {v6}, Lcom/android/systemui/power/PowerUI;->-get2(Lcom/android/systemui/power/PowerUI;)I

    move-result v6

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    invoke-static {v8}, Lcom/android/systemui/power/PowerUI;->-get23(Lcom/android/systemui/power/PowerUI;)J

    move-result-wide v8

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    invoke-static {v10}, Lcom/android/systemui/power/PowerUI;->-get5(Lcom/android/systemui/power/PowerUI;)I

    move-result v10

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    invoke-static {v11}, Lcom/android/systemui/power/PowerUI;->-get1(Lcom/android/systemui/power/PowerUI;)I

    move-result v11

    invoke-interface/range {v5 .. v11}, Lcom/android/systemui/power/PowerUI$WarningsUI;->update(IIJII)V

    if-nez v24, :cond_6

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    invoke-static {v5}, Lcom/android/systemui/power/PowerUI;->-get9(Lcom/android/systemui/power/PowerUI;)I

    move-result v5

    if-eqz v5, :cond_6

    const-string/jumbo v5, "PowerUI"

    const-string/jumbo v6, "showing invalid charger warning"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    invoke-static {v5}, Lcom/android/systemui/power/PowerUI;->-get24(Lcom/android/systemui/power/PowerUI;)Lcom/android/systemui/power/PowerUI$WarningsUI;

    move-result-object v5

    invoke-interface {v5}, Lcom/android/systemui/power/PowerUI$WarningsUI;->showInvalidChargerWarning()V

    return-void

    :cond_2
    const/16 v30, 0x0

    goto/16 :goto_0

    :cond_3
    const/16 v26, 0x0

    goto/16 :goto_1

    :cond_4
    const/4 v5, 0x0

    goto/16 :goto_2

    :cond_5
    const/4 v5, 0x0

    goto/16 :goto_3

    :cond_6
    if-eqz v24, :cond_f

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    invoke-static {v5}, Lcom/android/systemui/power/PowerUI;->-get9(Lcom/android/systemui/power/PowerUI;)I

    move-result v5

    if-nez v5, :cond_f

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    invoke-static {v5}, Lcom/android/systemui/power/PowerUI;->-get24(Lcom/android/systemui/power/PowerUI;)Lcom/android/systemui/power/PowerUI$WarningsUI;

    move-result-object v5

    invoke-interface {v5}, Lcom/android/systemui/power/PowerUI$WarningsUI;->dismissInvalidChargerWarning()V

    :cond_7
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    invoke-static {v5}, Lcom/android/systemui/power/PowerUI;->-get19(Lcom/android/systemui/power/PowerUI;)Landroid/os/PowerManager;

    move-result-object v5

    invoke-virtual {v5}, Landroid/os/PowerManager;->isPowerSaveMode()Z

    move-result v14

    if-nez v30, :cond_12

    move/from16 v0, v21

    if-lt v7, v0, :cond_8

    if-eqz v26, :cond_12

    :cond_8
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    invoke-static {v5}, Lcom/android/systemui/power/PowerUI;->-get5(Lcom/android/systemui/power/PowerUI;)I

    move-result v5

    const/4 v6, 0x1

    if-eq v5, v6, :cond_12

    if-gez v7, :cond_12

    move/from16 v0, v21

    if-ne v7, v0, :cond_10

    move/from16 v29, v26

    :goto_4
    move/from16 v0, v21

    if-eq v7, v0, :cond_11

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    invoke-static {v5}, Lcom/android/systemui/power/PowerUI;->-get24(Lcom/android/systemui/power/PowerUI;)Lcom/android/systemui/power/PowerUI$WarningsUI;

    move-result-object v5

    invoke-interface {v5}, Lcom/android/systemui/power/PowerUI$WarningsUI;->isLowBatteryWarningShowing()Z

    move-result v5

    if-eqz v5, :cond_11

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    invoke-static {v5}, Lcom/android/systemui/power/PowerUI;->-get24(Lcom/android/systemui/power/PowerUI;)Lcom/android/systemui/power/PowerUI$WarningsUI;

    move-result-object v5

    invoke-interface {v5}, Lcom/android/systemui/power/PowerUI$WarningsUI;->dismissLowBatteryWarning()V

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    const/4 v6, 0x1

    invoke-static {v5, v6}, Lcom/android/systemui/power/PowerUI;->-set14(Lcom/android/systemui/power/PowerUI;Z)Z

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    invoke-static {v5}, Lcom/android/systemui/power/PowerUI;->-get8(Lcom/android/systemui/power/PowerUI;)Landroid/os/Handler;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    iget-object v6, v6, Lcom/android/systemui/power/PowerUI;->mLowBatteryWarningTask:Ljava/lang/Runnable;

    const-wide/16 v8, 0x1f4

    invoke-virtual {v5, v6, v8, v9}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_9
    :goto_5
    sget-boolean v5, Lcom/android/systemui/Rune;->PWRUI_SUPPORT_FULL_BATTERY_CHECK:Z

    if-eqz v5, :cond_a

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    move/from16 v0, v19

    invoke-static {v5, v0}, Lcom/android/systemui/power/PowerUI;->-wrap4(Lcom/android/systemui/power/PowerUI;I)V

    :cond_a
    sget-boolean v5, Lcom/android/systemui/Rune;->PWRUI_SUPPORT_POWER_SHARING_POPUP:Z

    if-eqz v5, :cond_b

    invoke-static {}, Lcom/android/systemui/util/SettingsHelper;->getInstance()Lcom/android/systemui/util/SettingsHelper;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/systemui/util/SettingsHelper;->isEmergencyMode()Z

    move-result v5

    if-nez v5, :cond_16

    const-string/jumbo v5, "power_sharing"

    const/4 v6, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v5, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v31

    :goto_6
    const-string/jumbo v5, "PowerUI"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "showing power sharing dialog"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, v31

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    invoke-static {v5}, Lcom/android/systemui/power/PowerUI;->-get24(Lcom/android/systemui/power/PowerUI;)Lcom/android/systemui/power/PowerUI$WarningsUI;

    move-result-object v5

    move/from16 v0, v31

    invoke-interface {v5, v0}, Lcom/android/systemui/power/PowerUI$WarningsUI;->updatePowerSharingCableAlertDialog(Z)V

    :cond_b
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    move/from16 v0, v19

    move/from16 v1, v16

    invoke-static {v5, v0, v1}, Lcom/android/systemui/power/PowerUI;->-wrap1(Lcom/android/systemui/power/PowerUI;II)V

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    move/from16 v0, v22

    move/from16 v1, v25

    move/from16 v2, v19

    invoke-static {v5, v0, v1, v2}, Lcom/android/systemui/power/PowerUI;->-wrap8(Lcom/android/systemui/power/PowerUI;ZII)V

    sget-boolean v5, Lcom/android/systemui/Rune;->PWRUI_SUPPORT_BATTERY_CHARGER_CONNECTION_VI:Z

    if-eqz v5, :cond_c

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    move/from16 v0, v22

    move/from16 v1, v25

    invoke-static {v5, v0, v1}, Lcom/android/systemui/power/PowerUI;->-wrap7(Lcom/android/systemui/power/PowerUI;ZI)V

    :cond_c
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    move/from16 v0, v22

    move/from16 v1, v25

    invoke-static {v5, v0, v1}, Lcom/android/systemui/power/PowerUI;->-wrap2(Lcom/android/systemui/power/PowerUI;ZI)V

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    move/from16 v0, v17

    move/from16 v1, v19

    invoke-static {v5, v0, v1}, Lcom/android/systemui/power/PowerUI;->-wrap6(Lcom/android/systemui/power/PowerUI;II)V

    sget-boolean v5, Lcom/android/systemui/Rune;->PWRUI_SUPPORT_INCOMPATIBLE_CHARGER_CHECK:Z

    if-eqz v5, :cond_d

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    move/from16 v0, v18

    invoke-static {v5, v0}, Lcom/android/systemui/power/PowerUI;->-wrap5(Lcom/android/systemui/power/PowerUI;I)V

    :cond_d
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    move/from16 v0, v17

    move/from16 v1, v21

    invoke-static {v5, v0, v1, v7}, Lcom/android/systemui/power/PowerUI;->-wrap9(Lcom/android/systemui/power/PowerUI;III)V

    :cond_e
    :goto_7
    return-void

    :cond_f
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    invoke-static {v5}, Lcom/android/systemui/power/PowerUI;->-get24(Lcom/android/systemui/power/PowerUI;)Lcom/android/systemui/power/PowerUI$WarningsUI;

    move-result-object v5

    invoke-interface {v5}, Lcom/android/systemui/power/PowerUI$WarningsUI;->isInvalidChargerWarningShowing()Z

    move-result v5

    if-eqz v5, :cond_7

    return-void

    :cond_10
    const/16 v29, 0x1

    goto/16 :goto_4

    :cond_11
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    invoke-static {v5}, Lcom/android/systemui/power/PowerUI;->-get24(Lcom/android/systemui/power/PowerUI;)Lcom/android/systemui/power/PowerUI$WarningsUI;

    move-result-object v5

    move/from16 v0, v29

    invoke-interface {v5, v0}, Lcom/android/systemui/power/PowerUI$WarningsUI;->showLowBatteryWarning(Z)V

    goto/16 :goto_5

    :cond_12
    if-nez v30, :cond_13

    move/from16 v0, v21

    if-le v7, v0, :cond_15

    if-lez v7, :cond_15

    :cond_13
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    invoke-static {v5}, Lcom/android/systemui/power/PowerUI;->-get13(Lcom/android/systemui/power/PowerUI;)Z

    move-result v5

    if-eqz v5, :cond_14

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    invoke-static {v5}, Lcom/android/systemui/power/PowerUI;->-get8(Lcom/android/systemui/power/PowerUI;)Landroid/os/Handler;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    iget-object v6, v6, Lcom/android/systemui/power/PowerUI;->mLowBatteryWarningTask:Ljava/lang/Runnable;

    invoke-virtual {v5, v6}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    const/4 v6, 0x0

    invoke-static {v5, v6}, Lcom/android/systemui/power/PowerUI;->-set14(Lcom/android/systemui/power/PowerUI;Z)Z

    :cond_14
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    invoke-static {v5}, Lcom/android/systemui/power/PowerUI;->-get24(Lcom/android/systemui/power/PowerUI;)Lcom/android/systemui/power/PowerUI$WarningsUI;

    move-result-object v5

    invoke-interface {v5}, Lcom/android/systemui/power/PowerUI$WarningsUI;->dismissLowBatteryWarning()V

    goto/16 :goto_5

    :cond_15
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    invoke-static {v5}, Lcom/android/systemui/power/PowerUI;->-get24(Lcom/android/systemui/power/PowerUI;)Lcom/android/systemui/power/PowerUI$WarningsUI;

    move-result-object v5

    invoke-interface {v5}, Lcom/android/systemui/power/PowerUI$WarningsUI;->isLowBatteryWarningShowing()Z

    move-result v5

    if-eqz v5, :cond_9

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    invoke-static {v5}, Lcom/android/systemui/power/PowerUI;->-get2(Lcom/android/systemui/power/PowerUI;)I

    move-result v5

    move/from16 v0, v17

    if-eq v0, v5, :cond_9

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    invoke-static {v5}, Lcom/android/systemui/power/PowerUI;->-get24(Lcom/android/systemui/power/PowerUI;)Lcom/android/systemui/power/PowerUI$WarningsUI;

    move-result-object v5

    invoke-interface {v5}, Lcom/android/systemui/power/PowerUI$WarningsUI;->updateLowBatteryWarning()V

    goto/16 :goto_5

    :cond_16
    const/16 v31, 0x0

    goto/16 :goto_6

    :cond_17
    const-string/jumbo v5, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_18

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v8

    invoke-static {v5, v8, v9}, Lcom/android/systemui/power/PowerUI;->-set21(Lcom/android/systemui/power/PowerUI;J)J

    goto/16 :goto_7

    :cond_18
    const-string/jumbo v5, "android.intent.action.SCREEN_ON"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_19

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    const-wide/16 v8, -0x1

    invoke-static {v5, v8, v9}, Lcom/android/systemui/power/PowerUI;->-set21(Lcom/android/systemui/power/PowerUI;J)J

    goto/16 :goto_7

    :cond_19
    const-string/jumbo v5, "android.intent.action.USER_SWITCHED"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1a

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    invoke-static {v5}, Lcom/android/systemui/power/PowerUI;->-get24(Lcom/android/systemui/power/PowerUI;)Lcom/android/systemui/power/PowerUI$WarningsUI;

    move-result-object v5

    invoke-interface {v5}, Lcom/android/systemui/power/PowerUI$WarningsUI;->userSwitched()V

    goto/16 :goto_7

    :cond_1a
    const-string/jumbo v5, "com.samsung.server.BatteryService.action.SEC_BATTERY_EVENT"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_22

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    invoke-static {v5}, Lcom/android/systemui/power/PowerUI;->-get6(Lcom/android/systemui/power/PowerUI;)Z

    move-result v20

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    invoke-static {v5}, Lcom/android/systemui/power/PowerUI;->-get11(Lcom/android/systemui/power/PowerUI;)Z

    move-result v23

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    const-string/jumbo v5, "misc_event"

    const/4 v8, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v5, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    and-int/lit8 v5, v5, 0x1

    const/4 v8, 0x1

    if-ne v5, v8, :cond_1c

    const/4 v5, 0x1

    :goto_8
    invoke-static {v6, v5}, Lcom/android/systemui/power/PowerUI;->-set6(Lcom/android/systemui/power/PowerUI;Z)Z

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    const-string/jumbo v5, "misc_event"

    const/4 v8, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v5, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    and-int/lit8 v5, v5, 0x20

    const/16 v8, 0x20

    if-ne v5, v8, :cond_1d

    const/4 v5, 0x1

    :goto_9
    invoke-static {v6, v5}, Lcom/android/systemui/power/PowerUI;->-set12(Lcom/android/systemui/power/PowerUI;Z)Z

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    invoke-static {v5}, Lcom/android/systemui/power/PowerUI;->-get24(Lcom/android/systemui/power/PowerUI;)Lcom/android/systemui/power/PowerUI$WarningsUI;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    invoke-static {v6}, Lcom/android/systemui/power/PowerUI;->-get11(Lcom/android/systemui/power/PowerUI;)Z

    move-result v6

    invoke-interface {v5, v6}, Lcom/android/systemui/power/PowerUI$WarningsUI;->updateHiccupState(Z)V

    const-string/jumbo v5, "PowerUI"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "SUPPORT_WATER_PROTECTION_POPUP - oldBatteryWaterConnector : "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, v20

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v8, ", mBatteryWaterConnector : "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    invoke-static {v8}, Lcom/android/systemui/power/PowerUI;->-get6(Lcom/android/systemui/power/PowerUI;)Z

    move-result v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v8, ", oldHiccupState : "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, v23

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v8, ", mIsHiccupState : "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    invoke-static {v8}, Lcom/android/systemui/power/PowerUI;->-get11(Lcom/android/systemui/power/PowerUI;)Z

    move-result v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    invoke-static {v5}, Lcom/android/systemui/power/PowerUI;->-get11(Lcom/android/systemui/power/PowerUI;)Z

    move-result v5

    move/from16 v0, v23

    if-eq v0, v5, :cond_1e

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    invoke-static {v5}, Lcom/android/systemui/power/PowerUI;->-get11(Lcom/android/systemui/power/PowerUI;)Z

    move-result v5

    if-eqz v5, :cond_1b

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    invoke-static {v5}, Lcom/android/systemui/power/PowerUI;->-get24(Lcom/android/systemui/power/PowerUI;)Lcom/android/systemui/power/PowerUI$WarningsUI;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    invoke-static {v6}, Lcom/android/systemui/power/PowerUI;->-get6(Lcom/android/systemui/power/PowerUI;)Z

    move-result v6

    invoke-interface {v5, v6}, Lcom/android/systemui/power/PowerUI$WarningsUI;->showWaterProtectionAlertDialog(Z)V

    :cond_1b
    :goto_a
    sget-boolean v5, Lcom/android/systemui/Rune;->PWRUI_SUPPORT_USB_TYPE_C:Z

    if-eqz v5, :cond_e

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    invoke-static {v5}, Lcom/android/systemui/power/PowerUI;->-get12(Lcom/android/systemui/power/PowerUI;)Z

    move-result v27

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    const-string/jumbo v5, "sec_plug_type"

    const/4 v8, -0x1

    move-object/from16 v0, p2

    invoke-virtual {v0, v5, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    const/high16 v8, 0x10000

    and-int/2addr v5, v8

    if-eqz v5, :cond_20

    const/4 v5, 0x1

    :goto_b
    invoke-static {v6, v5}, Lcom/android/systemui/power/PowerUI;->-set13(Lcom/android/systemui/power/PowerUI;Z)Z

    const-string/jumbo v5, "PowerUI"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Power supply - oldPowerSupplyingActivated = "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, v27

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v8, " mIsPowerSupplyingActivated = "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    invoke-static {v8}, Lcom/android/systemui/power/PowerUI;->-get12(Lcom/android/systemui/power/PowerUI;)Z

    move-result v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    invoke-static {v5}, Lcom/android/systemui/power/PowerUI;->-get12(Lcom/android/systemui/power/PowerUI;)Z

    move-result v5

    move/from16 v0, v27

    if-eq v0, v5, :cond_e

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    invoke-static {v5}, Lcom/android/systemui/power/PowerUI;->-get12(Lcom/android/systemui/power/PowerUI;)Z

    move-result v5

    if-eqz v5, :cond_21

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    invoke-static {v5}, Lcom/android/systemui/power/PowerUI;->-get2(Lcom/android/systemui/power/PowerUI;)I

    move-result v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    invoke-static {v6}, Lcom/android/systemui/power/PowerUI;->-get17(Lcom/android/systemui/power/PowerUI;)[I

    move-result-object v6

    const/4 v8, 0x0

    aget v6, v6, v8

    if-gt v5, v6, :cond_21

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    invoke-static {v5}, Lcom/android/systemui/power/PowerUI;->-get24(Lcom/android/systemui/power/PowerUI;)Lcom/android/systemui/power/PowerUI$WarningsUI;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    invoke-static {v6}, Lcom/android/systemui/power/PowerUI;->-get3(Lcom/android/systemui/power/PowerUI;)I

    move-result v6

    invoke-interface {v5, v6}, Lcom/android/systemui/power/PowerUI$WarningsUI;->showPowerSupplyingInLowBatteryNotice(I)V

    goto/16 :goto_7

    :cond_1c
    const/4 v5, 0x0

    goto/16 :goto_8

    :cond_1d
    const/4 v5, 0x0

    goto/16 :goto_9

    :cond_1e
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    invoke-static {v5}, Lcom/android/systemui/power/PowerUI;->-get6(Lcom/android/systemui/power/PowerUI;)Z

    move-result v5

    move/from16 v0, v20

    if-eq v0, v5, :cond_1b

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    invoke-static {v5}, Lcom/android/systemui/power/PowerUI;->-get6(Lcom/android/systemui/power/PowerUI;)Z

    move-result v5

    if-eqz v5, :cond_1f

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    invoke-static {v5}, Lcom/android/systemui/power/PowerUI;->-get24(Lcom/android/systemui/power/PowerUI;)Lcom/android/systemui/power/PowerUI$WarningsUI;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    invoke-static {v6}, Lcom/android/systemui/power/PowerUI;->-get6(Lcom/android/systemui/power/PowerUI;)Z

    move-result v6

    invoke-interface {v5, v6}, Lcom/android/systemui/power/PowerUI$WarningsUI;->showWaterProtectionAlertDialog(Z)V

    goto/16 :goto_a

    :cond_1f
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    invoke-static {v5}, Lcom/android/systemui/power/PowerUI;->-get24(Lcom/android/systemui/power/PowerUI;)Lcom/android/systemui/power/PowerUI$WarningsUI;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    invoke-static {v6}, Lcom/android/systemui/power/PowerUI;->-get6(Lcom/android/systemui/power/PowerUI;)Z

    move-result v6

    invoke-interface {v5, v6}, Lcom/android/systemui/power/PowerUI$WarningsUI;->dismissWaterProtectionAlertDialog(Z)V

    goto/16 :goto_a

    :cond_20
    const/4 v5, 0x0

    goto/16 :goto_b

    :cond_21
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    invoke-static {v5}, Lcom/android/systemui/power/PowerUI;->-get24(Lcom/android/systemui/power/PowerUI;)Lcom/android/systemui/power/PowerUI$WarningsUI;

    move-result-object v5

    invoke-interface {v5}, Lcom/android/systemui/power/PowerUI$WarningsUI;->dismissPowerSupplyingInLowBatteryNotice()V

    goto/16 :goto_7

    :cond_22
    const-string/jumbo v5, "com.samsung.CHECK_COOLDOWN_LEVEL"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_23

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    move-object/from16 v0, p2

    invoke-static {v5, v0}, Lcom/android/systemui/power/PowerUI;->-wrap3(Lcom/android/systemui/power/PowerUI;Landroid/content/Intent;)V

    goto/16 :goto_7

    :cond_23
    const-string/jumbo v5, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_24

    const-string/jumbo v5, "com.sec.android.intent.action.SAFEMODE_ENABLE"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_27

    :cond_24
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    iget-object v5, v5, Lcom/android/systemui/power/PowerUI;->mContext:Landroid/content/Context;

    const-string/jumbo v6, "com.android.systemui.power_overheat_shutdown_happened"

    const/4 v8, 0x0

    invoke-virtual {v5, v6, v8}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v28

    if-eqz v28, :cond_25

    const-string/jumbo v5, "OverheatShutdownHappened"

    const/4 v6, 0x0

    move-object/from16 v0, v28

    invoke-interface {v0, v5, v6}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    if-eqz v5, :cond_25

    invoke-interface/range {v28 .. v28}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v13

    const-string/jumbo v5, "OverheatShutdownHappened"

    const/4 v6, 0x0

    invoke-interface {v13, v5, v6}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v13}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    iget-object v5, v5, Lcom/android/systemui/power/PowerUI;->mContext:Landroid/content/Context;

    new-instance v6, Landroid/content/Intent;

    const-string/jumbo v8, "com.android.systemui.power.action.ACTION_CLEAR_SHUTDOWN"

    invoke-direct {v6, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v6}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    invoke-static {v5}, Lcom/android/systemui/power/PowerUI;->-get24(Lcom/android/systemui/power/PowerUI;)Lcom/android/systemui/power/PowerUI$WarningsUI;

    move-result-object v5

    invoke-interface {v5}, Lcom/android/systemui/power/PowerUI$WarningsUI;->showOverheatShutdownHappenedNotice()V

    :cond_25
    :try_start_0
    const-string/jumbo v5, "window"

    invoke-static {v5}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Landroid/view/IWindowManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindowManager;

    move-result-object v5

    invoke-interface {v5}, Landroid/view/IWindowManager;->isSafeModeEnabled()Z

    move-result v15

    if-eqz v15, :cond_26

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    invoke-static {v5}, Lcom/android/systemui/power/PowerUI;->-get24(Lcom/android/systemui/power/PowerUI;)Lcom/android/systemui/power/PowerUI$WarningsUI;

    move-result-object v5

    invoke-interface {v5}, Lcom/android/systemui/power/PowerUI$WarningsUI;->showSafeModeNotice()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_26
    :goto_c
    const-string/jumbo v5, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_e

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    const/4 v6, 0x1

    invoke-static {v5, v6}, Lcom/android/systemui/power/PowerUI;->-set7(Lcom/android/systemui/power/PowerUI;Z)Z

    goto/16 :goto_7

    :catch_0
    move-exception v12

    const-string/jumbo v5, "PowerUI"

    const-string/jumbo v6, "SAFEMODE Exception occurs!"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v12}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_c

    :cond_27
    const-string/jumbo v5, "com.samsung.intent.action.KSO_SHOW_POPUP"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_28

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    invoke-static {v5}, Lcom/android/systemui/power/PowerUI;->-get24(Lcom/android/systemui/power/PowerUI;)Lcom/android/systemui/power/PowerUI$WarningsUI;

    move-result-object v5

    invoke-interface {v5}, Lcom/android/systemui/power/PowerUI$WarningsUI;->showUnintentionalLcdOnNotice()V

    goto/16 :goto_7

    :cond_28
    const-string/jumbo v5, "com.samsung.intent.action.KSO_CLOSE_POPUP"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_29

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    invoke-static {v5}, Lcom/android/systemui/power/PowerUI;->-get24(Lcom/android/systemui/power/PowerUI;)Lcom/android/systemui/power/PowerUI$WarningsUI;

    move-result-object v5

    invoke-interface {v5}, Lcom/android/systemui/power/PowerUI$WarningsUI;->dismissUnintentionalLcdOnNotice()V

    goto/16 :goto_7

    :cond_29
    const-string/jumbo v5, "android.intent.action.LOCALE_CHANGED"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2a

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    invoke-static {v5}, Lcom/android/systemui/power/PowerUI;->-wrap10(Lcom/android/systemui/power/PowerUI;)V

    goto/16 :goto_7

    :cond_2a
    const-string/jumbo v5, "com.samsung.intent.action.DAYDREAM_CONNECTED"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2b

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    const-string/jumbo v6, "STATUS"

    const/4 v8, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v6, v8}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v6

    invoke-static {v5, v6}, Lcom/android/systemui/power/PowerUI;->-set10(Lcom/android/systemui/power/PowerUI;Z)Z

    const-string/jumbo v5, "PowerUI"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "ACTION_CONNECT_DAY_DREAM received - "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    invoke-static {v8}, Lcom/android/systemui/power/PowerUI;->-get10(Lcom/android/systemui/power/PowerUI;)Z

    move-result v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_7

    :cond_2b
    const-string/jumbo v5, "PowerUI"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "unknown intent: "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p2

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_7
.end method
