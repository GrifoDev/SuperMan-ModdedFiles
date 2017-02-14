.class final Lcn/com/xy/sms/sdk/db/j;
.super Ljava/lang/Object;
.source "Unknown"

# interfaces
.implements Lcn/com/xy/sms/sdk/Iservice/XyCallBack;


# instance fields
.field private final synthetic a:Lcn/com/xy/sms/sdk/Iservice/XyCallBack;

.field private final synthetic b:Ljava/lang/String;

.field private final synthetic c:Ljava/lang/String;

.field private final synthetic d:Ljava/lang/String;

.field private final synthetic e:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcn/com/xy/sms/sdk/Iservice/XyCallBack;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcn/com/xy/sms/sdk/db/j;->a:Lcn/com/xy/sms/sdk/Iservice/XyCallBack;

    iput-object p2, p0, Lcn/com/xy/sms/sdk/db/j;->b:Ljava/lang/String;

    iput-object p3, p0, Lcn/com/xy/sms/sdk/db/j;->c:Ljava/lang/String;

    iput-object p4, p0, Lcn/com/xy/sms/sdk/db/j;->d:Ljava/lang/String;

    iput-object p5, p0, Lcn/com/xy/sms/sdk/db/j;->e:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final varargs execute([Ljava/lang/Object;)V
    .locals 8

    const/4 v2, 0x2

    const/4 v1, 0x0

    const/4 v4, 0x1

    const/4 v3, 0x0

    if-nez p1, :cond_1

    :cond_0
    iget-object v0, p0, Lcn/com/xy/sms/sdk/db/j;->a:Lcn/com/xy/sms/sdk/Iservice/XyCallBack;

    new-array v1, v4, [Ljava/lang/Object;

    iget-object v2, p0, Lcn/com/xy/sms/sdk/db/j;->b:Ljava/lang/String;

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Lcn/com/xy/sms/sdk/util/XyUtil;->doXycallBackResult(Lcn/com/xy/sms/sdk/Iservice/XyCallBack;[Ljava/lang/Object;)V

    return-void

    :cond_1
    array-length v0, p1

    if-ne v0, v2, :cond_0

    aget-object v0, p1, v3

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v2, "0"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :try_start_0
    aget-object v0, p1, v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/com/xy/sms/sdk/net/util/j;->g(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    if-nez v0, :cond_3

    :cond_2
    iget-object v0, p0, Lcn/com/xy/sms/sdk/db/j;->a:Lcn/com/xy/sms/sdk/Iservice/XyCallBack;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcn/com/xy/sms/sdk/db/j;->b:Ljava/lang/String;

    aput-object v4, v2, v3

    invoke-static {v0, v2}, Lcn/com/xy/sms/sdk/util/XyUtil;->doXycallBackResult(Lcn/com/xy/sms/sdk/Iservice/XyCallBack;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v1}, Lcn/com/xy/sms/sdk/db/DBManager;->close(Landroid/database/sqlite/SQLiteDatabase;)V

    return-void

    :cond_3
    :try_start_1
    invoke-virtual {v0}, Lorg/json/JSONObject;->length()I

    move-result v2

    if-lez v2, :cond_2

    invoke-static {}, Lcn/com/xy/sms/sdk/db/DBManager;->getSQLiteDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    const-string/jumbo v2, "cc"

    iget-object v3, p0, Lcn/com/xy/sms/sdk/db/j;->c:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-static {v0}, Lcn/com/xy/sms/sdk/db/TrainManager;->getContentValues(Lorg/json/JSONObject;)Landroid/content/ContentValues;

    move-result-object v2

    if-eqz v2, :cond_2

    const-string/jumbo v3, "tb_train"

    const-string/jumbo v4, "train_num = ? "

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    iget-object v7, p0, Lcn/com/xy/sms/sdk/db/j;->c:Ljava/lang/String;

    aput-object v7, v5, v6

    invoke-static {v1, v3, v2, v4, v5}, Lcn/com/xy/sms/sdk/db/base/BaseManager;->saveOrUpdate(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)J

    iget-object v2, p0, Lcn/com/xy/sms/sdk/db/j;->a:Lcn/com/xy/sms/sdk/Iservice/XyCallBack;

    const/4 v3, 0x6

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lcn/com/xy/sms/sdk/db/j;->b:Ljava/lang/String;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    aput-object v0, v3, v4

    const/4 v0, 0x2

    iget-object v4, p0, Lcn/com/xy/sms/sdk/db/j;->c:Ljava/lang/String;

    aput-object v4, v3, v0

    const/4 v0, 0x3

    iget-object v4, p0, Lcn/com/xy/sms/sdk/db/j;->d:Ljava/lang/String;

    aput-object v4, v3, v0

    const/4 v0, 0x4

    iget-object v4, p0, Lcn/com/xy/sms/sdk/db/j;->e:Ljava/lang/String;

    aput-object v4, v3, v0

    const/4 v0, 0x5

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v3, v0

    invoke-static {v2, v3}, Lcn/com/xy/sms/sdk/util/XyUtil;->doXycallBackResult(Lcn/com/xy/sms/sdk/Iservice/XyCallBack;[Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {v1}, Lcn/com/xy/sms/sdk/db/DBManager;->close(Landroid/database/sqlite/SQLiteDatabase;)V

    return-void

    :catch_0
    move-exception v0

    :try_start_2
    const-string/jumbo v2, "XIAOYUAN"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "checkDataOnline: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Lcn/com/xy/sms/sdk/log/LogManager;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    iget-object v0, p0, Lcn/com/xy/sms/sdk/db/j;->a:Lcn/com/xy/sms/sdk/Iservice/XyCallBack;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcn/com/xy/sms/sdk/db/j;->b:Ljava/lang/String;

    aput-object v4, v2, v3

    invoke-static {v0, v2}, Lcn/com/xy/sms/sdk/util/XyUtil;->doXycallBackResult(Lcn/com/xy/sms/sdk/Iservice/XyCallBack;[Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-static {v1}, Lcn/com/xy/sms/sdk/db/DBManager;->close(Landroid/database/sqlite/SQLiteDatabase;)V

    return-void

    :catchall_0
    move-exception v0

    invoke-static {v1}, Lcn/com/xy/sms/sdk/db/DBManager;->close(Landroid/database/sqlite/SQLiteDatabase;)V

    throw v0
.end method
