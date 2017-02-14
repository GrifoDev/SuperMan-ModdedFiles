.class final Lcn/com/xy/sms/sdk/queue/h;
.super Ljava/lang/Thread;
.source "Unknown"


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    :try_start_0
    const-string/jumbo v0, "xiaoyuan_taskqueue"

    invoke-virtual {p0, v0}, Lcn/com/xy/sms/sdk/queue/h;->setName(Ljava/lang/String;)V

    sget v0, Lcn/com/xy/sms/sdk/queue/g;->b:I

    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    :cond_0
    :goto_0
    :try_start_1
    sget-object v0, Lcn/com/xy/sms/sdk/queue/g;->a:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v0}, Ljava/util/concurrent/BlockingQueue;->take()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/com/xy/sms/sdk/queue/i;

    if-eqz v0, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "task ="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Lcn/com/xy/sms/sdk/queue/i;->a:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    iget v1, v0, Lcn/com/xy/sms/sdk/queue/i;->a:I

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object v0, v0, Lcn/com/xy/sms/sdk/queue/i;->b:Ljava/util/HashMap;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcn/com/xy/sms/sdk/iccid/IccidLocationUtil;->startQueryIccidLocation(Ljava/util/HashMap;Z)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_2
    const-string/jumbo v1, "XIAOYUAN"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "startTaskQueue: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcn/com/xy/sms/sdk/log/LogManager;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    :catch_1
    move-exception v0

    const-string/jumbo v1, "XIAOYUAN"

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcn/com/xy/sms/sdk/log/LogManager;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void

    :pswitch_1
    :try_start_3
    invoke-static {}, Lcn/com/xy/sms/sdk/util/e;->a()V

    goto :goto_0

    :pswitch_2
    iget-object v0, v0, Lcn/com/xy/sms/sdk/queue/i;->b:Ljava/util/HashMap;

    invoke-static {v0}, Lcn/com/xy/sms/sdk/db/entity/n;->a(Ljava/util/HashMap;)J

    goto :goto_0

    :pswitch_3
    iget-object v0, v0, Lcn/com/xy/sms/sdk/queue/i;->b:Ljava/util/HashMap;

    invoke-static {v0}, Lcn/com/xy/sms/sdk/db/entity/n;->b(Ljava/util/HashMap;)J

    goto :goto_0

    :pswitch_4
    iget-object v0, v0, Lcn/com/xy/sms/sdk/queue/i;->b:Ljava/util/HashMap;

    invoke-static {v0}, Lcn/com/xy/sms/sdk/db/entity/o;->a(Ljava/util/HashMap;)J

    goto :goto_0

    :pswitch_5
    iget-object v0, v0, Lcn/com/xy/sms/sdk/queue/i;->b:Ljava/util/HashMap;

    invoke-static {v0}, Lcn/com/xy/sms/sdk/queue/i;->a(Ljava/util/HashMap;)J

    goto :goto_0

    :pswitch_6
    invoke-static {}, Lcn/com/xy/sms/sdk/queue/c;->a()V

    goto :goto_0

    :pswitch_7
    iget-object v0, v0, Lcn/com/xy/sms/sdk/queue/i;->b:Ljava/util/HashMap;

    invoke-static {v0}, Lcn/com/xy/sms/sdk/db/entity/u;->a(Ljava/util/HashMap;)V

    goto :goto_0

    :pswitch_8
    iget-object v1, v0, Lcn/com/xy/sms/sdk/queue/i;->b:Ljava/util/HashMap;

    invoke-static {v1}, Lcn/com/xy/sms/sdk/db/entity/a/c;->c(Ljava/util/HashMap;)V

    invoke-static {}, Lcn/com/xy/sms/sdk/queue/b;->a()V

    invoke-static {}, Lcn/com/xy/sms/sdk/service/c/a;->a()V

    iget-object v0, v0, Lcn/com/xy/sms/sdk/queue/i;->b:Ljava/util/HashMap;

    invoke-static {v0}, Lcn/com/xy/sms/sdk/db/entity/a/c;->b(Ljava/util/HashMap;)V

    goto/16 :goto_0

    :pswitch_9
    iget-object v0, v0, Lcn/com/xy/sms/sdk/queue/i;->b:Ljava/util/HashMap;

    invoke-static {v0}, Lcn/com/xy/sms/sdk/db/entity/a/c;->a(Ljava/util/HashMap;)V

    invoke-static {}, Lcn/com/xy/sms/sdk/queue/b;->a()V

    invoke-static {}, Lcn/com/xy/sms/sdk/service/c/a;->b()V

    goto/16 :goto_0

    :pswitch_a
    iget-object v0, v0, Lcn/com/xy/sms/sdk/queue/i;->b:Ljava/util/HashMap;

    invoke-static {v0}, Lcn/com/xy/sms/sdk/db/entity/E;->a(Ljava/util/HashMap;)J

    goto/16 :goto_0

    :pswitch_b
    iget-object v0, v0, Lcn/com/xy/sms/sdk/queue/i;->b:Ljava/util/HashMap;

    const-string/jumbo v1, "state"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Lcn/com/xy/sms/sdk/util/p;->a(I)V

    goto/16 :goto_0

    :pswitch_c
    iget-object v1, v0, Lcn/com/xy/sms/sdk/queue/i;->b:Ljava/util/HashMap;

    const-string/jumbo v2, "phoneNum"

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iget-object v0, v0, Lcn/com/xy/sms/sdk/queue/i;->b:Ljava/util/HashMap;

    const-string/jumbo v2, "dbresoult"

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v1, v0}, Lcn/com/xy/sms/sdk/service/b/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_d
    iget-object v1, v0, Lcn/com/xy/sms/sdk/queue/i;->b:Ljava/util/HashMap;

    const-string/jumbo v0, "phoneNumber"

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string/jumbo v2, "isSuccess"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-static {v0, v1}, Lcn/com/xy/sms/sdk/db/entity/v;->a(Ljava/lang/String;Z)V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
    .end packed-switch
.end method
