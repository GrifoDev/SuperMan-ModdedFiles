.class final Lcn/com/xy/sms/util/r;
.super Ljava/lang/Object;
.source "Unknown"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic a:Ljava/lang/String;

.field private final synthetic b:I

.field private final synthetic c:Ljava/lang/String;

.field private final synthetic d:Ljava/lang/String;

.field private final synthetic e:J

.field private final synthetic f:Lcn/com/xy/sms/util/SdkCallBack;

.field private final synthetic g:Ljava/lang/String;

.field private final synthetic h:Ljava/util/HashMap;


# direct methods
.method constructor <init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;JLcn/com/xy/sms/util/SdkCallBack;Ljava/lang/String;Ljava/util/HashMap;)V
    .locals 1

    iput-object p1, p0, Lcn/com/xy/sms/util/r;->a:Ljava/lang/String;

    iput p2, p0, Lcn/com/xy/sms/util/r;->b:I

    iput-object p3, p0, Lcn/com/xy/sms/util/r;->c:Ljava/lang/String;

    iput-object p4, p0, Lcn/com/xy/sms/util/r;->d:Ljava/lang/String;

    iput-wide p5, p0, Lcn/com/xy/sms/util/r;->e:J

    iput-object p7, p0, Lcn/com/xy/sms/util/r;->f:Lcn/com/xy/sms/util/SdkCallBack;

    iput-object p8, p0, Lcn/com/xy/sms/util/r;->g:Ljava/lang/String;

    iput-object p9, p0, Lcn/com/xy/sms/util/r;->h:Ljava/util/HashMap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    :try_start_0
    sget-object v0, Lcn/com/xy/sms/sdk/util/x;->i:Ljava/util/HashSet;

    iget-object v1, p0, Lcn/com/xy/sms/util/r;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    const/16 v0, -0x10

    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    iget v0, p0, Lcn/com/xy/sms/util/r;->b:I

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcn/com/xy/sms/util/r;->a:Ljava/lang/String;

    iget-object v1, p0, Lcn/com/xy/sms/util/r;->c:Ljava/lang/String;

    iget-object v2, p0, Lcn/com/xy/sms/util/r;->d:Ljava/lang/String;

    iget-object v3, p0, Lcn/com/xy/sms/util/r;->g:Ljava/lang/String;

    iget-wide v4, p0, Lcn/com/xy/sms/util/r;->e:J

    iget-object v6, p0, Lcn/com/xy/sms/util/r;->h:Ljava/util/HashMap;

    invoke-static/range {v0 .. v6}, Lcn/com/xy/sms/util/ParseRichBubbleManager;->queryBubbleDataFromApi(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/util/HashMap;)Lorg/json/JSONObject;

    move-result-object v0

    if-nez v0, :cond_3

    sget-object v0, Lcn/com/xy/sms/sdk/util/x;->h:Ljava/util/HashSet;

    iget-object v1, p0, Lcn/com/xy/sms/util/r;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcn/com/xy/sms/sdk/util/x;->f:Ljava/util/Map;

    iget-object v1, p0, Lcn/com/xy/sms/util/r;->a:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v0, "duoqu_xiaoyuan"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "add  invalidBubbleData msgId:  "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcn/com/xy/sms/util/r;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcn/com/xy/sms/sdk/log/LogManager;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    iget-object v0, p0, Lcn/com/xy/sms/util/r;->f:Lcn/com/xy/sms/util/SdkCallBack;

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const/4 v3, -0x3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string/jumbo v3, " parse failed "

    aput-object v3, v1, v2

    const/4 v2, 0x2

    iget-object v3, p0, Lcn/com/xy/sms/util/r;->a:Ljava/lang/String;

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcn/com/xy/sms/sdk/util/XyUtil;->doXycallBackResult(Lcn/com/xy/sms/sdk/Iservice/XyCallBack;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :goto_0
    sget-object v0, Lcn/com/xy/sms/sdk/util/x;->i:Ljava/util/HashSet;

    iget-object v1, p0, Lcn/com/xy/sms/util/r;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    return-void

    :cond_1
    :try_start_1
    iget-object v0, p0, Lcn/com/xy/sms/util/r;->a:Ljava/lang/String;

    iget-object v1, p0, Lcn/com/xy/sms/util/r;->c:Ljava/lang/String;

    iget-object v2, p0, Lcn/com/xy/sms/util/r;->d:Ljava/lang/String;

    iget-wide v4, p0, Lcn/com/xy/sms/util/r;->e:J

    invoke-static {v0, v1, v2, v4, v5}, Lcn/com/xy/sms/util/ParseRichBubbleManager;->queryBubbleDataFromDb(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)Lorg/json/JSONObject;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string/jumbo v1, "need_parse_bubble"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string/jumbo v1, "bubble_result"

    invoke-static {v0, v1}, Lcn/com/xy/sms/sdk/util/JsonUtil;->getValueFromJsonObject(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/json/JSONObject;

    if-nez v0, :cond_2

    sget-object v0, Lcn/com/xy/sms/sdk/util/x;->h:Ljava/util/HashSet;

    iget-object v1, p0, Lcn/com/xy/sms/util/r;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcn/com/xy/sms/sdk/util/x;->f:Ljava/util/Map;

    iget-object v1, p0, Lcn/com/xy/sms/util/r;->a:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcn/com/xy/sms/util/r;->f:Lcn/com/xy/sms/util/SdkCallBack;

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const/4 v3, -0x3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string/jumbo v3, " invalid data "

    aput-object v3, v1, v2

    const/4 v2, 0x2

    iget-object v3, p0, Lcn/com/xy/sms/util/r;->a:Ljava/lang/String;

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcn/com/xy/sms/sdk/util/XyUtil;->doXycallBackResult(Lcn/com/xy/sms/sdk/Iservice/XyCallBack;[Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    sget-object v0, Lcn/com/xy/sms/sdk/util/x;->i:Ljava/util/HashSet;

    iget-object v1, p0, Lcn/com/xy/sms/util/r;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    return-void

    :cond_2
    :try_start_2
    sget-object v1, Lcn/com/xy/sms/sdk/util/x;->g:Ljava/util/Map;

    monitor-enter v1
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :try_start_3
    sget-object v2, Lcn/com/xy/sms/sdk/util/x;->g:Ljava/util/Map;

    iget-object v3, p0, Lcn/com/xy/sms/util/r;->a:Ljava/lang/String;

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    sget-object v1, Lcn/com/xy/sms/sdk/util/x;->f:Ljava/util/Map;

    iget-object v2, p0, Lcn/com/xy/sms/util/r;->a:Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcn/com/xy/sms/sdk/util/x;->h:Ljava/util/HashSet;

    iget-object v2, p0, Lcn/com/xy/sms/util/r;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcn/com/xy/sms/util/r;->f:Lcn/com/xy/sms/util/SdkCallBack;

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object v0, v2, v3

    const/4 v0, 0x2

    iget-object v3, p0, Lcn/com/xy/sms/util/r;->a:Ljava/lang/String;

    aput-object v3, v2, v0

    invoke-static {v1, v2}, Lcn/com/xy/sms/sdk/util/XyUtil;->doXycallBackResult(Lcn/com/xy/sms/sdk/Iservice/XyCallBack;[Ljava/lang/Object;)V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    sget-object v0, Lcn/com/xy/sms/sdk/util/x;->i:Ljava/util/HashSet;

    iget-object v1, p0, Lcn/com/xy/sms/util/r;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    return-void

    :catchall_0
    move-exception v0

    :try_start_5
    monitor-exit v1

    throw v0
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :catch_0
    move-exception v0

    :try_start_6
    iget-object v1, p0, Lcn/com/xy/sms/util/r;->f:Lcn/com/xy/sms/util/SdkCallBack;

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const/4 v4, -0x3

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "error: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    iget-object v4, p0, Lcn/com/xy/sms/util/r;->a:Ljava/lang/String;

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Lcn/com/xy/sms/sdk/util/XyUtil;->doXycallBackResult(Lcn/com/xy/sms/sdk/Iservice/XyCallBack;[Ljava/lang/Object;)V

    const-string/jumbo v1, "XIAOYUAN"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "queryDataByMsgItem: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcn/com/xy/sms/sdk/log/LogManager;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    sget-object v0, Lcn/com/xy/sms/sdk/util/x;->i:Ljava/util/HashSet;

    iget-object v1, p0, Lcn/com/xy/sms/util/r;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    return-void

    :cond_3
    :try_start_7
    sget-object v1, Lcn/com/xy/sms/sdk/util/x;->g:Ljava/util/Map;

    monitor-enter v1
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    :try_start_8
    sget-object v2, Lcn/com/xy/sms/sdk/util/x;->g:Ljava/util/Map;

    iget-object v3, p0, Lcn/com/xy/sms/util/r;->a:Ljava/lang/String;

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v1
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    :try_start_9
    sget-object v1, Lcn/com/xy/sms/sdk/util/x;->h:Ljava/util/HashSet;

    iget-object v2, p0, Lcn/com/xy/sms/util/r;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    sget-object v1, Lcn/com/xy/sms/sdk/util/x;->f:Ljava/util/Map;

    iget-object v2, p0, Lcn/com/xy/sms/util/r;->a:Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcn/com/xy/sms/util/r;->f:Lcn/com/xy/sms/util/SdkCallBack;

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object v0, v2, v3

    const/4 v0, 0x2

    iget-object v3, p0, Lcn/com/xy/sms/util/r;->a:Ljava/lang/String;

    aput-object v3, v2, v0

    invoke-static {v1, v2}, Lcn/com/xy/sms/sdk/util/XyUtil;->doXycallBackResult(Lcn/com/xy/sms/sdk/Iservice/XyCallBack;[Ljava/lang/Object;)V
    :try_end_9
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_9} :catch_0
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    goto/16 :goto_0

    :catchall_1
    move-exception v0

    sget-object v1, Lcn/com/xy/sms/sdk/util/x;->i:Ljava/util/HashSet;

    iget-object v2, p0, Lcn/com/xy/sms/util/r;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    throw v0

    :catchall_2
    move-exception v0

    :try_start_a
    monitor-exit v1

    throw v0
    :try_end_a
    .catch Ljava/lang/Throwable; {:try_start_a .. :try_end_a} :catch_0
    .catchall {:try_start_a .. :try_end_a} :catchall_1
.end method
