.class public final Lcn/com/xy/sms/sdk/db/entity/E;
.super Ljava/lang/Object;
.source "Unknown"


# static fields
.field private static a:Ljava/lang/String; = "phone_num"

.field private static b:Ljava/lang/String; = "date"

.field private static c:Ljava/lang/String; = "click_times"

.field private static d:Ljava/lang/String; = "company_num"

.field private static e:Ljava/lang/String; = "function_mode"

.field private static f:Ljava/lang/String; = "tb_menu_action"

.field private static g:Ljava/lang/String; = " DROP TABLE IF EXISTS tb_menu_action"

.field private static h:Ljava/lang/String; = "create table  if not exists tb_menu_action (phone_num TEXT, date TEXT, company_num TEXT, function_mode TEXT, click_times INTEGER DEFAULT \'0\'  ) "


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/util/HashMap;)J
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)J"
        }
    .end annotation

    const/4 v3, 0x0

    const-string/jumbo v0, "phoneNum"

    invoke-virtual {p0, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string/jumbo v1, "companyNum"

    invoke-virtual {p0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string/jumbo v2, "functionMode"

    invoke-virtual {p0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const-wide/16 v4, -0x1

    :try_start_0
    invoke-static {v1}, Lcn/com/xy/sms/sdk/util/StringUtils;->isNull(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    :cond_0
    :goto_0
    if-nez v3, :cond_2

    new-instance v3, Lcn/com/xy/sms/sdk/db/entity/D;

    invoke-direct {v3}, Lcn/com/xy/sms/sdk/db/entity/D;-><init>()V

    iput-object v0, v3, Lcn/com/xy/sms/sdk/db/entity/D;->a:Ljava/lang/String;

    invoke-static {v0}, Lcn/com/xy/sms/sdk/net/util/n;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v3, Lcn/com/xy/sms/sdk/db/entity/D;->a:Ljava/lang/String;

    iput-object v1, v3, Lcn/com/xy/sms/sdk/db/entity/D;->b:Ljava/lang/String;

    iput-object v2, v3, Lcn/com/xy/sms/sdk/db/entity/D;->d:Ljava/lang/String;

    const-string/jumbo v0, "yyyyMMdd"

    invoke-static {v0}, Lcn/com/xy/sms/sdk/util/DateUtils;->getCurrentTimeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v3, Lcn/com/xy/sms/sdk/db/entity/D;->c:Ljava/lang/String;

    const/4 v0, 0x1

    iput v0, v3, Lcn/com/xy/sms/sdk/db/entity/D;->e:I

    invoke-static {v3}, Lcn/com/xy/sms/sdk/db/entity/E;->a(Lcn/com/xy/sms/sdk/db/entity/D;)Landroid/content/ContentValues;

    move-result-object v0

    const-string/jumbo v1, "tb_menu_action"

    invoke-static {v1, v0}, Lcn/com/xy/sms/sdk/db/DBManager;->insert(Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v0

    :goto_1
    return-wide v0

    :cond_1
    invoke-static {v2}, Lcn/com/xy/sms/sdk/util/StringUtils;->isNull(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_0

    invoke-static {v1, v2}, Lcn/com/xy/sms/sdk/db/entity/E;->a(Ljava/lang/String;Ljava/lang/String;)Lcn/com/xy/sms/sdk/db/entity/D;

    move-result-object v3

    goto :goto_0

    :cond_2
    iget v0, v3, Lcn/com/xy/sms/sdk/db/entity/D;->e:I

    add-int/lit8 v0, v0, 0x1

    iput v0, v3, Lcn/com/xy/sms/sdk/db/entity/D;->e:I

    invoke-static {v3}, Lcn/com/xy/sms/sdk/db/entity/E;->a(Lcn/com/xy/sms/sdk/db/entity/D;)Landroid/content/ContentValues;

    move-result-object v0

    const-string/jumbo v1, "tb_menu_action"

    const-string/jumbo v2, "company_num = ? and function_mode = ? and date = ? "

    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    iget-object v8, v3, Lcn/com/xy/sms/sdk/db/entity/D;->b:Ljava/lang/String;

    aput-object v8, v6, v7

    const/4 v7, 0x1

    iget-object v8, v3, Lcn/com/xy/sms/sdk/db/entity/D;->d:Ljava/lang/String;

    aput-object v8, v6, v7

    const/4 v7, 0x2

    iget-object v3, v3, Lcn/com/xy/sms/sdk/db/entity/D;->c:Ljava/lang/String;

    aput-object v3, v6, v7

    invoke-static {v1, v0, v2, v6}, Lcn/com/xy/sms/sdk/db/DBManager;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    const-wide/16 v0, 0x0

    return-wide v0

    :catch_0
    move-exception v0

    const-string/jumbo v1, "XIAOYUAN"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "getSimIndex: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcn/com/xy/sms/sdk/log/LogManager;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    move-wide v0, v4

    goto :goto_1
.end method

.method private static a(Lcn/com/xy/sms/sdk/db/entity/D;)Landroid/content/ContentValues;
    .locals 3

    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-string/jumbo v1, "phone_num"

    iget-object v2, p0, Lcn/com/xy/sms/sdk/db/entity/D;->a:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v1, "company_num"

    iget-object v2, p0, Lcn/com/xy/sms/sdk/db/entity/D;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v1, "date"

    iget-object v2, p0, Lcn/com/xy/sms/sdk/db/entity/D;->c:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v1, "function_mode"

    iget-object v2, p0, Lcn/com/xy/sms/sdk/db/entity/D;->d:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v1, "click_times"

    iget v2, p0, Lcn/com/xy/sms/sdk/db/entity/D;->e:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    return-object v0
.end method

.method private static a(Ljava/lang/String;Ljava/lang/String;)Lcn/com/xy/sms/sdk/db/entity/D;
    .locals 10

    const/4 v9, 0x1

    const/4 v8, 0x0

    const-string/jumbo v0, "yyyyMMdd"

    invoke-static {v0}, Lcn/com/xy/sms/sdk/util/DateUtils;->getCurrentTimeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    :try_start_0
    const-string/jumbo v0, "tb_menu_action"

    const/4 v1, 0x5

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string/jumbo v3, "phone_num"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string/jumbo v3, "company_num"

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-string/jumbo v3, "date"

    aput-object v3, v1, v2

    const/4 v2, 0x3

    const-string/jumbo v3, "function_mode"

    aput-object v3, v1, v2

    const/4 v2, 0x4

    const-string/jumbo v3, "click_times"

    aput-object v3, v1, v2

    const-string/jumbo v2, "company_num = ? and date = ? and function_mode = ? "

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object p0, v3, v5

    const/4 v5, 0x1

    aput-object v4, v3, v5

    const/4 v4, 0x2

    aput-object p1, v3, v4

    const-string/jumbo v7, "1"

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static/range {v0 .. v7}, Lcn/com/xy/sms/sdk/db/DBManager;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcn/com/xy/sms/sdk/db/XyCursor;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v3

    if-nez v3, :cond_1

    :cond_0
    invoke-static {v3, v9}, Lcn/com/xy/sms/sdk/db/XyCursor;->closeCursor(Lcn/com/xy/sms/sdk/db/XyCursor;Z)V

    :goto_0
    return-object v8

    :cond_1
    :try_start_1
    invoke-virtual {v3}, Lcn/com/xy/sms/sdk/db/XyCursor;->getCount()I

    move-result v0

    if-lez v0, :cond_0

    const-string/jumbo v0, "phone_num"

    invoke-virtual {v3, v0}, Lcn/com/xy/sms/sdk/db/XyCursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    const-string/jumbo v1, "company_num"

    invoke-virtual {v3, v1}, Lcn/com/xy/sms/sdk/db/XyCursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    const-string/jumbo v1, "date"

    invoke-virtual {v3, v1}, Lcn/com/xy/sms/sdk/db/XyCursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    const-string/jumbo v1, "function_mode"

    invoke-virtual {v3, v1}, Lcn/com/xy/sms/sdk/db/XyCursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    const-string/jumbo v1, "click_times"

    invoke-virtual {v3, v1}, Lcn/com/xy/sms/sdk/db/XyCursor;->getColumnIndex(Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result v7

    move-object v2, v8

    :goto_1
    :try_start_2
    invoke-virtual {v3}, Lcn/com/xy/sms/sdk/db/XyCursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_2

    new-instance v1, Lcn/com/xy/sms/sdk/db/entity/D;

    invoke-direct {v1}, Lcn/com/xy/sms/sdk/db/entity/D;-><init>()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :try_start_3
    invoke-virtual {v3, v0}, Lcn/com/xy/sms/sdk/db/XyCursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcn/com/xy/sms/sdk/db/entity/D;->a:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcn/com/xy/sms/sdk/db/XyCursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcn/com/xy/sms/sdk/db/entity/D;->b:Ljava/lang/String;

    invoke-virtual {v3, v5}, Lcn/com/xy/sms/sdk/db/XyCursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcn/com/xy/sms/sdk/db/entity/D;->c:Ljava/lang/String;

    invoke-virtual {v3, v6}, Lcn/com/xy/sms/sdk/db/XyCursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcn/com/xy/sms/sdk/db/entity/D;->d:Ljava/lang/String;

    invoke-virtual {v3, v7}, Lcn/com/xy/sms/sdk/db/XyCursor;->getInt(I)I

    move-result v2

    iput v2, v1, Lcn/com/xy/sms/sdk/db/entity/D;->e:I
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move-object v2, v1

    goto :goto_1

    :cond_2
    invoke-static {v3, v9}, Lcn/com/xy/sms/sdk/db/XyCursor;->closeCursor(Lcn/com/xy/sms/sdk/db/XyCursor;Z)V

    return-object v2

    :catch_0
    move-exception v0

    move-object v1, v8

    :goto_2
    :try_start_4
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    invoke-static {v8, v9}, Lcn/com/xy/sms/sdk/db/XyCursor;->closeCursor(Lcn/com/xy/sms/sdk/db/XyCursor;Z)V

    move-object v8, v1

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object v3, v8

    :goto_3
    invoke-static {v3, v9}, Lcn/com/xy/sms/sdk/db/XyCursor;->closeCursor(Lcn/com/xy/sms/sdk/db/XyCursor;Z)V

    throw v0

    :catchall_1
    move-exception v0

    goto :goto_3

    :catchall_2
    move-exception v0

    move-object v3, v8

    goto :goto_3

    :catch_1
    move-exception v0

    move-object v1, v8

    move-object v8, v3

    goto :goto_2

    :catch_2
    move-exception v0

    move-object v1, v2

    move-object v8, v3

    goto :goto_2

    :catch_3
    move-exception v0

    move-object v8, v3

    goto :goto_2
.end method

.method public static a(Ljava/lang/String;)Lorg/json/JSONArray;
    .locals 10

    const/4 v8, 0x0

    const/4 v9, 0x1

    :try_start_0
    const-string/jumbo v0, "tb_menu_action"

    const/4 v1, 0x5

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string/jumbo v3, "phone_num"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string/jumbo v3, "company_num"

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-string/jumbo v3, "date"

    aput-object v3, v1, v2

    const/4 v2, 0x3

    const-string/jumbo v3, "function_mode"

    aput-object v3, v1, v2

    const/4 v2, 0x4

    const-string/jumbo v3, "click_times"

    aput-object v3, v1, v2

    const-string/jumbo v2, "date < ? "

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-static/range {v0 .. v7}, Lcn/com/xy/sms/sdk/db/DBManager;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcn/com/xy/sms/sdk/db/XyCursor;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    const/4 v0, 0x5

    :try_start_1
    new-array v0, v0, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string/jumbo v3, "phone_num"

    aput-object v3, v0, v2

    const/4 v2, 0x1

    const-string/jumbo v3, "company_num"

    aput-object v3, v0, v2

    const/4 v2, 0x2

    const-string/jumbo v3, "date"

    aput-object v3, v0, v2

    const/4 v2, 0x3

    const-string/jumbo v3, "function_mode"

    aput-object v3, v0, v2

    const/4 v2, 0x4

    const-string/jumbo v3, "click_times"

    aput-object v3, v0, v2

    invoke-static {v0, v1}, Lcn/com/xy/sms/sdk/db/base/BaseManager;->loadArrDataFromCursor([Ljava/lang/String;Lcn/com/xy/sms/sdk/db/XyCursor;)Lorg/json/JSONArray;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v8

    invoke-static {v1, v9}, Lcn/com/xy/sms/sdk/db/XyCursor;->closeCursor(Lcn/com/xy/sms/sdk/db/XyCursor;Z)V

    :goto_0
    return-object v8

    :catch_0
    move-exception v0

    move-object v1, v8

    :goto_1
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    invoke-static {v1, v9}, Lcn/com/xy/sms/sdk/db/XyCursor;->closeCursor(Lcn/com/xy/sms/sdk/db/XyCursor;Z)V

    goto :goto_0

    :catchall_0
    move-exception v0

    :goto_2
    invoke-static {v8, v9}, Lcn/com/xy/sms/sdk/db/XyCursor;->closeCursor(Lcn/com/xy/sms/sdk/db/XyCursor;Z)V

    throw v0

    :catchall_1
    move-exception v0

    move-object v8, v1

    goto :goto_2

    :catch_1
    move-exception v0

    goto :goto_1
.end method

.method private static a()V
    .locals 3

    :try_start_0
    const-string/jumbo v0, "tb_menu_action"

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcn/com/xy/sms/sdk/db/DBManager;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method

.method public static b(Ljava/lang/String;)V
    .locals 4

    :try_start_0
    const-string/jumbo v0, "tb_menu_action"

    const-string/jumbo v1, "date < ?"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    invoke-static {v0, v1, v2}, Lcn/com/xy/sms/sdk/db/DBManager;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method

.method private static c(Ljava/lang/String;)Ljava/util/List;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcn/com/xy/sms/sdk/db/entity/D;",
            ">;"
        }
    .end annotation

    const/4 v8, 0x0

    const/4 v10, 0x1

    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    :try_start_0
    const-string/jumbo v0, "tb_menu_action"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string/jumbo v3, "date"

    aput-object v3, v1, v2

    const-string/jumbo v2, "date < ? "

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    const-string/jumbo v4, "date"

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-static/range {v0 .. v7}, Lcn/com/xy/sms/sdk/db/DBManager;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcn/com/xy/sms/sdk/db/XyCursor;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    if-nez v1, :cond_1

    :cond_0
    invoke-static {v1, v10}, Lcn/com/xy/sms/sdk/db/XyCursor;->closeCursor(Lcn/com/xy/sms/sdk/db/XyCursor;Z)V

    :goto_0
    return-object v9

    :cond_1
    :try_start_1
    invoke-virtual {v1}, Lcn/com/xy/sms/sdk/db/XyCursor;->getCount()I

    move-result v0

    if-lez v0, :cond_0

    const-string/jumbo v0, "date"

    invoke-virtual {v1, v0}, Lcn/com/xy/sms/sdk/db/XyCursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    :goto_1
    invoke-virtual {v1}, Lcn/com/xy/sms/sdk/db/XyCursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_2

    new-instance v2, Lcn/com/xy/sms/sdk/db/entity/D;

    invoke-direct {v2}, Lcn/com/xy/sms/sdk/db/entity/D;-><init>()V

    invoke-virtual {v1, v0}, Lcn/com/xy/sms/sdk/db/XyCursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcn/com/xy/sms/sdk/db/entity/D;->c:Ljava/lang/String;

    invoke-interface {v9, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :catch_0
    move-exception v0

    :goto_2
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    invoke-static {v1, v10}, Lcn/com/xy/sms/sdk/db/XyCursor;->closeCursor(Lcn/com/xy/sms/sdk/db/XyCursor;Z)V

    goto :goto_0

    :cond_2
    invoke-static {v1, v10}, Lcn/com/xy/sms/sdk/db/XyCursor;->closeCursor(Lcn/com/xy/sms/sdk/db/XyCursor;Z)V

    return-object v9

    :catchall_0
    move-exception v0

    move-object v1, v8

    :goto_3
    invoke-static {v1, v10}, Lcn/com/xy/sms/sdk/db/XyCursor;->closeCursor(Lcn/com/xy/sms/sdk/db/XyCursor;Z)V

    throw v0

    :catchall_1
    move-exception v0

    goto :goto_3

    :catch_1
    move-exception v0

    move-object v1, v8

    goto :goto_2
.end method

.method private static d(Ljava/lang/String;)Ljava/util/List;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcn/com/xy/sms/sdk/db/entity/D;",
            ">;"
        }
    .end annotation

    const/4 v10, 0x1

    const/4 v8, 0x0

    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    :try_start_0
    const-string/jumbo v0, "tb_menu_action"

    const/4 v1, 0x5

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string/jumbo v3, "phone_num"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string/jumbo v3, "company_num"

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-string/jumbo v3, "date"

    aput-object v3, v1, v2

    const/4 v2, 0x3

    const-string/jumbo v3, "function_mode"

    aput-object v3, v1, v2

    const/4 v2, 0x4

    const-string/jumbo v3, "click_times"

    aput-object v3, v1, v2

    const-string/jumbo v2, "date = ? "

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-static/range {v0 .. v7}, Lcn/com/xy/sms/sdk/db/DBManager;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcn/com/xy/sms/sdk/db/XyCursor;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    if-nez v1, :cond_1

    :cond_0
    invoke-static {v1, v10}, Lcn/com/xy/sms/sdk/db/XyCursor;->closeCursor(Lcn/com/xy/sms/sdk/db/XyCursor;Z)V

    :goto_0
    return-object v9

    :cond_1
    :try_start_1
    invoke-virtual {v1}, Lcn/com/xy/sms/sdk/db/XyCursor;->getCount()I

    move-result v0

    if-lez v0, :cond_0

    const-string/jumbo v0, "phone_num"

    invoke-virtual {v1, v0}, Lcn/com/xy/sms/sdk/db/XyCursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    const-string/jumbo v2, "company_num"

    invoke-virtual {v1, v2}, Lcn/com/xy/sms/sdk/db/XyCursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    const-string/jumbo v3, "date"

    invoke-virtual {v1, v3}, Lcn/com/xy/sms/sdk/db/XyCursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    const-string/jumbo v4, "function_mode"

    invoke-virtual {v1, v4}, Lcn/com/xy/sms/sdk/db/XyCursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    const-string/jumbo v5, "click_times"

    invoke-virtual {v1, v5}, Lcn/com/xy/sms/sdk/db/XyCursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    :goto_1
    invoke-virtual {v1}, Lcn/com/xy/sms/sdk/db/XyCursor;->moveToNext()Z

    move-result v6

    if-eqz v6, :cond_0

    new-instance v6, Lcn/com/xy/sms/sdk/db/entity/D;

    invoke-direct {v6}, Lcn/com/xy/sms/sdk/db/entity/D;-><init>()V

    new-instance v6, Lcn/com/xy/sms/sdk/db/entity/D;

    invoke-direct {v6}, Lcn/com/xy/sms/sdk/db/entity/D;-><init>()V

    invoke-virtual {v1, v0}, Lcn/com/xy/sms/sdk/db/XyCursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v6, Lcn/com/xy/sms/sdk/db/entity/D;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcn/com/xy/sms/sdk/db/XyCursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v6, Lcn/com/xy/sms/sdk/db/entity/D;->b:Ljava/lang/String;

    invoke-virtual {v1, v3}, Lcn/com/xy/sms/sdk/db/XyCursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v6, Lcn/com/xy/sms/sdk/db/entity/D;->c:Ljava/lang/String;

    invoke-virtual {v1, v4}, Lcn/com/xy/sms/sdk/db/XyCursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v6, Lcn/com/xy/sms/sdk/db/entity/D;->d:Ljava/lang/String;

    invoke-virtual {v1, v5}, Lcn/com/xy/sms/sdk/db/XyCursor;->getInt(I)I

    move-result v7

    iput v7, v6, Lcn/com/xy/sms/sdk/db/entity/D;->e:I

    invoke-interface {v9, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :catch_0
    move-exception v0

    :goto_2
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    invoke-static {v1, v10}, Lcn/com/xy/sms/sdk/db/XyCursor;->closeCursor(Lcn/com/xy/sms/sdk/db/XyCursor;Z)V

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object v1, v8

    :goto_3
    invoke-static {v1, v10}, Lcn/com/xy/sms/sdk/db/XyCursor;->closeCursor(Lcn/com/xy/sms/sdk/db/XyCursor;Z)V

    throw v0

    :catchall_1
    move-exception v0

    goto :goto_3

    :catch_1
    move-exception v0

    move-object v1, v8

    goto :goto_2
.end method
