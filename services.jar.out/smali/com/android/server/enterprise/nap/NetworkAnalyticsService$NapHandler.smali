.class Lcom/android/server/enterprise/nap/NetworkAnalyticsService$NapHandler;
.super Landroid/os/Handler;
.source "NetworkAnalyticsService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/enterprise/nap/NetworkAnalyticsService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "NapHandler"
.end annotation


# static fields
.field private static final ACTION_ACTIVATE_MONITOR_CLIENT:I = 0x1

.field private static final ACTION_BOOT_COMPLETED:I = 0x3

.field private static final ACTION_INITIALIZE_NAP:I = 0x4

.field private static final ACTION_NEW_PROFILE_REGISTERED:I = 0xa

.field private static final ACTION_ON_ADMIN_REMOVED:I = 0x9

.field private static final ACTION_ON_PRE_ADMIN_REMOVED:I = 0x8

.field private static final ACTION_PACKAGE_ADDED:I = 0x7

.field private static final ACTION_PACKAGE_REMOVED:I = 0x6

.field private static final ACTION_PROFILE_STATUS:I = 0xe

.field private static final ACTION_ULTRA_POWER_SAVING_MODE:I = 0xc

.field private static final ACTION_UNREGISTER_CLIENT:I = 0x5

.field private static final ACTION_USER_PRESENT:I = 0xd

.field private static final ACTION_USER_REMOVED:I = 0xb


# instance fields
.field final synthetic this$0:Lcom/android/server/enterprise/nap/NetworkAnalyticsService;


# direct methods
.method public constructor <init>(Lcom/android/server/enterprise/nap/NetworkAnalyticsService;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsService$NapHandler;->this$0:Lcom/android/server/enterprise/nap/NetworkAnalyticsService;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 9

    const/4 v8, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v1, 0x0

    iget v7, p1, Landroid/os/Message;->what:I

    packed-switch v7, :pswitch_data_0

    :cond_0
    :goto_0
    :pswitch_0
    return-void

    :pswitch_1
    iget-object v5, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v5, Ljava/lang/String;

    iget-object v7, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsService$NapHandler;->this$0:Lcom/android/server/enterprise/nap/NetworkAnalyticsService;

    invoke-static {v7, v5}, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->-wrap5(Lcom/android/server/enterprise/nap/NetworkAnalyticsService;Ljava/lang/String;)V

    goto :goto_0

    :pswitch_2
    iget-object v7, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsService$NapHandler;->this$0:Lcom/android/server/enterprise/nap/NetworkAnalyticsService;

    invoke-static {v7}, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->-get0(Lcom/android/server/enterprise/nap/NetworkAnalyticsService;)Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore;->initializeTables()V

    goto :goto_0

    :pswitch_3
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Lcom/android/server/enterprise/nap/NetworkAnalyticsService$AsyncHandlerObject;

    iget v0, p1, Landroid/os/Message;->arg1:I

    iget v4, p1, Landroid/os/Message;->arg2:I

    if-nez v2, :cond_2

    sget-boolean v7, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->DBG:Z

    if-eqz v7, :cond_1

    const-string/jumbo v7, "NetworkAnalytics:Service"

    const-string/jumbo v8, "handleMessage:ACTIVATE_MONITOR_CLIENT:handleObj null"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-void

    :cond_2
    iget-object v7, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsService$NapHandler;->this$0:Lcom/android/server/enterprise/nap/NetworkAnalyticsService;

    invoke-static {v7, v2, v4, v0}, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->-wrap1(Lcom/android/server/enterprise/nap/NetworkAnalyticsService;Lcom/android/server/enterprise/nap/NetworkAnalyticsService$AsyncHandlerObject;II)V

    goto :goto_0

    :pswitch_4
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Lcom/android/server/enterprise/nap/NetworkAnalyticsService$AsyncHandlerObject;

    if-nez v2, :cond_0

    sget-boolean v7, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->DBG:Z

    if-eqz v7, :cond_3

    const-string/jumbo v7, "NetworkAnalytics:Service"

    const-string/jumbo v8, "handleMessage:UNREGISTER_CLIENT:handleObj null"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    return-void

    :pswitch_5
    iget-object v7, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsService$NapHandler;->this$0:Lcom/android/server/enterprise/nap/NetworkAnalyticsService;

    invoke-static {v7}, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->-wrap0(Lcom/android/server/enterprise/nap/NetworkAnalyticsService;)V

    goto :goto_0

    :pswitch_6
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Lcom/android/server/enterprise/nap/NetworkAnalyticsService$AsyncHandlerObject;

    iget-object v7, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsService$NapHandler;->this$0:Lcom/android/server/enterprise/nap/NetworkAnalyticsService;

    iget-object v8, v2, Lcom/android/server/enterprise/nap/NetworkAnalyticsService$AsyncHandlerObject;->packageName:Ljava/lang/String;

    invoke-static {v7, v8}, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->-wrap7(Lcom/android/server/enterprise/nap/NetworkAnalyticsService;Ljava/lang/String;)V

    goto :goto_0

    :pswitch_7
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Lcom/android/server/enterprise/nap/NetworkAnalyticsService$AsyncHandlerObject;

    iget-object v7, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsService$NapHandler;->this$0:Lcom/android/server/enterprise/nap/NetworkAnalyticsService;

    iget-object v8, v2, Lcom/android/server/enterprise/nap/NetworkAnalyticsService$AsyncHandlerObject;->packageName:Ljava/lang/String;

    invoke-static {v7, v8}, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->-wrap6(Lcom/android/server/enterprise/nap/NetworkAnalyticsService;Ljava/lang/String;)V

    goto :goto_0

    :pswitch_8
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Landroid/os/Bundle;

    iget-object v7, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsService$NapHandler;->this$0:Lcom/android/server/enterprise/nap/NetworkAnalyticsService;

    invoke-static {v7, v3}, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->-wrap9(Lcom/android/server/enterprise/nap/NetworkAnalyticsService;Landroid/os/Bundle;)V

    goto :goto_0

    :pswitch_9
    iget v1, p1, Landroid/os/Message;->arg1:I

    if-gtz v1, :cond_4

    sget-boolean v7, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->DBG:Z

    if-eqz v7, :cond_0

    const-string/jumbo v7, "NetworkAnalytics:Service"

    const-string/jumbo v8, "handleMessage: ACTION_ON_PRE_ADMIN_REMOVED: Invalid adminUid"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_4
    iget-object v7, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsService$NapHandler;->this$0:Lcom/android/server/enterprise/nap/NetworkAnalyticsService;

    invoke-static {v7, v1}, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->-wrap4(Lcom/android/server/enterprise/nap/NetworkAnalyticsService;I)V

    goto/16 :goto_0

    :pswitch_a
    iget v1, p1, Landroid/os/Message;->arg1:I

    if-gtz v1, :cond_5

    sget-boolean v7, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->DBG:Z

    if-eqz v7, :cond_0

    const-string/jumbo v7, "NetworkAnalytics:Service"

    const-string/jumbo v8, "handleMessage: ACTION_ON_ADMIN_REMOVED: Invalid adminUid"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_5
    iget-object v7, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsService$NapHandler;->this$0:Lcom/android/server/enterprise/nap/NetworkAnalyticsService;

    invoke-static {v7, v1}, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->-wrap8(Lcom/android/server/enterprise/nap/NetworkAnalyticsService;I)V

    goto/16 :goto_0

    :pswitch_b
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Landroid/os/Bundle;

    if-nez v3, :cond_6

    return-void

    :cond_6
    const-string/jumbo v7, "reason"

    invoke-virtual {v3, v7, v8}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v6

    const/4 v7, 0x5

    if-ne v6, v7, :cond_8

    sget-boolean v7, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->DBG:Z

    if-eqz v7, :cond_7

    const-string/jumbo v7, "NetworkAnalytics:Service"

    const-string/jumbo v8, "handleMessage: ACTION_ULTRA_POWER_SAVING_MODE OFF"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7
    iget-object v7, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsService$NapHandler;->this$0:Lcom/android/server/enterprise/nap/NetworkAnalyticsService;

    invoke-static {v7}, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->-wrap0(Lcom/android/server/enterprise/nap/NetworkAnalyticsService;)V

    goto/16 :goto_0

    :cond_8
    const/4 v7, 0x3

    if-ne v6, v7, :cond_0

    sget-boolean v7, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->DBG:Z

    if-eqz v7, :cond_9

    const-string/jumbo v7, "NetworkAnalytics:Service"

    const-string/jumbo v8, "handleMessage: ACTION_ULTRA_POWER_SAVING_MODE ON"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_9
    iget-object v7, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsService$NapHandler;->this$0:Lcom/android/server/enterprise/nap/NetworkAnalyticsService;

    invoke-static {v7}, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->-wrap3(Lcom/android/server/enterprise/nap/NetworkAnalyticsService;)V

    goto/16 :goto_0

    :pswitch_c
    iget-object v7, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsService$NapHandler;->this$0:Lcom/android/server/enterprise/nap/NetworkAnalyticsService;

    invoke-static {v7}, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->-wrap0(Lcom/android/server/enterprise/nap/NetworkAnalyticsService;)V

    goto/16 :goto_0

    :pswitch_d
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Landroid/os/Bundle;

    if-nez v3, :cond_a

    return-void

    :cond_a
    iget-object v7, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsService$NapHandler;->this$0:Lcom/android/server/enterprise/nap/NetworkAnalyticsService;

    invoke-static {v7, v3}, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->-wrap11(Lcom/android/server/enterprise/nap/NetworkAnalyticsService;Landroid/os/Bundle;)V

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_0
        :pswitch_5
        :pswitch_2
        :pswitch_4
        :pswitch_6
        :pswitch_7
        :pswitch_9
        :pswitch_a
        :pswitch_1
        :pswitch_8
        :pswitch_b
        :pswitch_c
        :pswitch_d
    .end packed-switch
.end method
