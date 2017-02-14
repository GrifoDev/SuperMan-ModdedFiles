.class public Lcn/com/xy/sms/sdk/db/entity/SysParamEntityManager;
.super Ljava/lang/Object;
.source "Unknown"


# static fields
.field public static final CREATE_TABLE:Ljava/lang/String; = "create table  if not exists tb_sdk_param (id int primary key,p_key TEXT,p_value TEXT,pextend_value TEXT)"

.field public static final DROP_TABLE:Ljava/lang/String; = " DROP TABLE IF EXISTS tb_sdk_param"

.field public static final ID:Ljava/lang/String; = "id"

.field public static final PEXTENDVALUE:Ljava/lang/String; = "pextend_value"

.field public static final PKEY:Ljava/lang/String; = "p_key"

.field public static final PVALUE:Ljava/lang/String; = "p_value"

.field public static final TABLE_NAME:Ljava/lang/String; = "tb_sdk_param"

.field public static cacheMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcn/com/xy/sms/sdk/db/entity/SysParamEntityManager;->cacheMap:Ljava/util/HashMap;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static clearOldData(Ljava/lang/String;)V
    .locals 2

    :try_start_0
    invoke-static {}, Lcn/com/xy/sms/sdk/constant/Constant;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "CHANNEL"

    invoke-static {v0, v1}, Lcn/com/xy/sms/sdk/db/entity/SysParamEntityManager;->queryValueParamKey(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/com/xy/sms/sdk/util/StringUtils;->isNull(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-static {p0}, Lcn/com/xy/sms/sdk/util/StringUtils;->isNull(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    invoke-static {v0}, Lcn/com/xy/sms/sdk/db/entity/SysParamEntityManager;->clearOldData(Z)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static clearOldData(Z)V
    .locals 4

    if-nez p0, :cond_0

    :goto_0
    :try_start_0
    invoke-static {}, Lcn/com/xy/sms/sdk/db/entity/f;->d()I

    invoke-static {}, Lcn/com/xy/sms/sdk/constant/Constant;->getPARSE_PATH()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/com/xy/sms/sdk/util/d;->d(Ljava/lang/String;)V

    invoke-static {}, Lcn/com/xy/sms/sdk/constant/Constant;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "outdex"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v0

    invoke-static {v0}, Lcn/com/xy/sms/sdk/util/d;->a(Ljava/io/File;)V

    invoke-static {}, Lcn/com/xy/sms/sdk/db/ParseItemManager;->deleteAll()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :cond_0
    :try_start_1
    const-string/jumbo v0, "tb_scene_config"

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcn/com/xy/sms/sdk/db/DBManager;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    :goto_1
    :try_start_2
    const-string/jumbo v0, "tb_scenerule_config"

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcn/com/xy/sms/sdk/db/DBManager;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_2

    :goto_2
    :try_start_3
    const-string/jumbo v0, "tb_res_download"

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcn/com/xy/sms/sdk/db/DBManager;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_3

    :goto_3
    :try_start_4
    const-string/jumbo v0, "tb_xml_res_download"

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcn/com/xy/sms/sdk/db/DBManager;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_4

    :goto_4
    :try_start_5
    invoke-static {}, Lcn/com/xy/sms/sdk/db/entity/MatchCacheManager;->deleteAll()V

    goto :goto_0

    :catch_0
    move-exception v0

    return-void

    :catch_1
    move-exception v0

    const-string/jumbo v1, "XIAOYUAN"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "deleteAll: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcn/com/xy/sms/sdk/log/LogManager;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    :catch_2
    move-exception v0

    const-string/jumbo v1, "XIAOYUAN"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "deleteAll: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcn/com/xy/sms/sdk/log/LogManager;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2

    :catch_3
    move-exception v0

    const-string/jumbo v1, "XIAOYUAN"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "deleteAll: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcn/com/xy/sms/sdk/log/LogManager;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_3

    :catch_4
    move-exception v0

    const-string/jumbo v1, "XIAOYUAN"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "deleteAll: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcn/com/xy/sms/sdk/log/LogManager;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_0

    goto :goto_4
.end method

.method public static deleteOldFile()V
    .locals 4

    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {}, Lcn/com/xy/sms/sdk/constant/Constant;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "parse"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/com/xy/sms/sdk/util/d;->a(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    :goto_0
    invoke-static {}, Lcn/com/xy/sms/sdk/constant/Constant;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "outdex"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/com/xy/sms/sdk/util/d;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    :goto_1
    return-void

    :cond_0
    const-string/jumbo v1, "ParseUtilCasual_"

    const-string/jumbo v2, ".jar"

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Lcn/com/xy/sms/sdk/util/d;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v1, "ParseUtilEC_"

    const-string/jumbo v2, ".jar"

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Lcn/com/xy/sms/sdk/util/d;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v1, "ParseUtilFinanceL_"

    const-string/jumbo v2, ".jar"

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Lcn/com/xy/sms/sdk/util/d;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v1, "ParseUtilFinanceM_"

    const-string/jumbo v2, ".jar"

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Lcn/com/xy/sms/sdk/util/d;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v1, "ParseUtilFinanceS_"

    const-string/jumbo v2, ".jar"

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Lcn/com/xy/sms/sdk/util/d;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v1, "ParseUtilLife_"

    const-string/jumbo v2, ".jar"

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Lcn/com/xy/sms/sdk/util/d;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v1, "ParseUtilMove_"

    const-string/jumbo v2, ".jar"

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Lcn/com/xy/sms/sdk/util/d;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v1, "ParseUtilTelecom_"

    const-string/jumbo v2, ".jar"

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Lcn/com/xy/sms/sdk/util/d;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v1, "ParseUtilTravel_"

    const-string/jumbo v2, ".jar"

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Lcn/com/xy/sms/sdk/util/d;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v1, "ParseUtilUnicom_"

    const-string/jumbo v2, ".jar"

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Lcn/com/xy/sms/sdk/util/d;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :catch_0
    move-exception v0

    return-void

    :cond_1
    const-string/jumbo v0, "ParseUtilCasual_"

    const-string/jumbo v1, ".dex"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcn/com/xy/sms/sdk/util/d;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "ParseUtilEC_"

    const-string/jumbo v1, ".dex"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcn/com/xy/sms/sdk/util/d;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "ParseUtilFinanceL_"

    const-string/jumbo v1, ".dex"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcn/com/xy/sms/sdk/util/d;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "ParseUtilFinanceM_"

    const-string/jumbo v1, ".dex"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcn/com/xy/sms/sdk/util/d;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "ParseUtilFinanceS_"

    const-string/jumbo v1, ".dex"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcn/com/xy/sms/sdk/util/d;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "ParseUtilLife_"

    const-string/jumbo v1, ".dex"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcn/com/xy/sms/sdk/util/d;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "ParseUtilMove_"

    const-string/jumbo v1, ".dex"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcn/com/xy/sms/sdk/util/d;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "ParseUtilTelecom_"

    const-string/jumbo v1, ".dex"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcn/com/xy/sms/sdk/util/d;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "ParseUtilTravel_"

    const-string/jumbo v1, ".dex"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcn/com/xy/sms/sdk/util/d;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "ParseUtilUnicom_"

    const-string/jumbo v1, ".dex"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcn/com/xy/sms/sdk/util/d;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_1
.end method

.method public static getBooleanParam(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcn/com/xy/sms/sdk/db/entity/SysParamEntityManager;->getBooleanParam(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static getBooleanParam(Landroid/content/Context;Ljava/lang/String;Z)Z
    .locals 5

    const/4 v1, 0x0

    sget-object v0, Lcn/com/xy/sms/sdk/db/entity/SysParamEntityManager;->cacheMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    return v0

    :cond_0
    invoke-static {p0, p1}, Lcn/com/xy/sms/sdk/db/entity/SysParamEntityManager;->queryValueParamKey(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    const-string/jumbo v2, "false"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v1, 0x1

    :cond_1
    :goto_0
    sget-object v0, Lcn/com/xy/sms/sdk/db/entity/SysParamEntityManager;->cacheMap:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, p1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_1
    return v1

    :cond_2
    sget-object v0, Lcn/com/xy/sms/sdk/db/entity/SysParamEntityManager;->cacheMap:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, p1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move v1, p2

    goto :goto_0

    :catch_0
    move-exception v0

    const-string/jumbo v2, "XIAOYUAN"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "getBooleanParam: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Lcn/com/xy/sms/sdk/log/LogManager;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method public static getIntParam(Landroid/content/Context;Ljava/lang/String;)I
    .locals 5

    sget-object v0, Lcn/com/xy/sms/sdk/db/entity/SysParamEntityManager;->cacheMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    const/4 v1, -0x1

    if-eqz v0, :cond_0

    :try_start_0
    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    return v0

    :cond_0
    invoke-static {p0, p1}, Lcn/com/xy/sms/sdk/db/entity/SysParamEntityManager;->queryValueParamKey(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    :goto_0
    move v0, v1

    :goto_1
    return v0

    :cond_1
    sget-object v2, Lcn/com/xy/sms/sdk/db/entity/SysParamEntityManager;->cacheMap:Ljava/util/HashMap;

    invoke-virtual {v2, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_1

    :catch_0
    move-exception v0

    const-string/jumbo v2, "XIAOYUAN"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "getIntParam: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Lcn/com/xy/sms/sdk/log/LogManager;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public static getLongParam(Ljava/lang/String;JLandroid/content/Context;)J
    .locals 7

    const/4 v1, 0x0

    const/4 v6, 0x1

    :try_start_0
    const-string/jumbo v0, "tb_sdk_param"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string/jumbo v4, "p_value"

    aput-object v4, v2, v3

    const-string/jumbo v3, "p_key=?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object p0, v4, v5

    invoke-static {v0, v2, v3, v4}, Lcn/com/xy/sms/sdk/db/DBManager;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Lcn/com/xy/sms/sdk/db/XyCursor;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    if-nez v1, :cond_2

    :cond_0
    if-nez p3, :cond_3

    :cond_1
    invoke-static {v1, v6}, Lcn/com/xy/sms/sdk/db/XyCursor;->closeCursor(Lcn/com/xy/sms/sdk/db/XyCursor;Z)V

    :goto_0
    return-wide p1

    :cond_2
    :try_start_1
    invoke-virtual {v1}, Lcn/com/xy/sms/sdk/db/XyCursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "p_value"

    invoke-virtual {v1, v0}, Lcn/com/xy/sms/sdk/db/XyCursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v1, v0}, Lcn/com/xy/sms/sdk/db/XyCursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/com/xy/sms/sdk/util/StringUtils;->isNull(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-static {v0}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-wide v2

    invoke-static {v1, v6}, Lcn/com/xy/sms/sdk/db/XyCursor;->closeCursor(Lcn/com/xy/sms/sdk/db/XyCursor;Z)V

    return-wide v2

    :cond_3
    :try_start_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcn/com/xy/sms/sdk/db/entity/SysParamEntityManager;->setParam(Ljava/lang/String;Ljava/lang/String;)J
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-static {v1, v6}, Lcn/com/xy/sms/sdk/db/XyCursor;->closeCursor(Lcn/com/xy/sms/sdk/db/XyCursor;Z)V

    return-wide p1

    :catch_0
    move-exception v0

    :try_start_3
    const-string/jumbo v2, "XIAOYUAN"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "getLongParam: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Lcn/com/xy/sms/sdk/log/LogManager;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    invoke-static {v1, v6}, Lcn/com/xy/sms/sdk/db/XyCursor;->closeCursor(Lcn/com/xy/sms/sdk/db/XyCursor;Z)V

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-static {v1, v6}, Lcn/com/xy/sms/sdk/db/XyCursor;->closeCursor(Lcn/com/xy/sms/sdk/db/XyCursor;Z)V

    throw v0
.end method

.method public static getStringParam(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    const/4 v1, 0x0

    sget-object v0, Lcn/com/xy/sms/sdk/db/entity/SysParamEntityManager;->cacheMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    check-cast v0, Ljava/lang/String;

    return-object v0

    :cond_0
    invoke-static {p0, p1}, Lcn/com/xy/sms/sdk/db/entity/SysParamEntityManager;->queryValueParamKey(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_1

    :goto_0
    return-object v1

    :cond_1
    sget-object v0, Lcn/com/xy/sms/sdk/db/entity/SysParamEntityManager;->cacheMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string/jumbo v2, "XIAOYUAN"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "getStringParam: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Lcn/com/xy/sms/sdk/log/LogManager;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public static initParams(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZZLjava/util/Map;)V
    .locals 25
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "ZZ",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-static/range {p1 .. p1}, Lcn/com/xy/sms/sdk/db/entity/SysParamEntityManager;->clearOldData(Ljava/lang/String;)V

    const-string/jumbo v3, "smartsms_enhance"

    move-object/from16 v0, p0

    invoke-static {v0, v3}, Lcn/com/xy/sms/sdk/db/entity/SysParamEntityManager;->queryValueParamKey(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    :goto_0
    const-string/jumbo v3, "SUPPORT_NETWORK_TYPE"

    move-object/from16 v0, p0

    invoke-static {v0, v3}, Lcn/com/xy/sms/sdk/db/entity/SysParamEntityManager;->queryValueParamKey(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_3

    :goto_1
    const-string/jumbo v3, "ONLINE_UPDATE_SDK_PERIOD"

    move-object/from16 v0, p0

    invoke-static {v0, v3}, Lcn/com/xy/sms/sdk/db/entity/SysParamEntityManager;->queryValueParamKey(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_6

    :goto_2
    const-string/jumbo v3, "PRELOADENABLE"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static/range {p3 .. p3}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    move-object/from16 v0, p0

    invoke-static {v0, v3, v4, v5}, Lcn/com/xy/sms/sdk/db/entity/SysParamEntityManager;->insertOrUpdateKeyValue(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)J

    const-string/jumbo v3, "SMSLOCATEENABLE"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static/range {p4 .. p4}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    move-object/from16 v0, p0

    invoke-static {v0, v3, v4, v5}, Lcn/com/xy/sms/sdk/db/entity/SysParamEntityManager;->insertOrUpdateKeyValue(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)J

    const-string/jumbo v3, "CHANNEL"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static/range {p1 .. p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    move-object/from16 v0, p0

    invoke-static {v0, v3, v4, v5}, Lcn/com/xy/sms/sdk/db/entity/SysParamEntityManager;->insertOrUpdateKeyValue(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)J

    sget-object v3, Lcn/com/xy/sms/sdk/db/entity/SysParamEntityManager;->cacheMap:Ljava/util/HashMap;

    const-string/jumbo v4, "PRELOADENABLE"

    invoke-static/range {p3 .. p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v3, Lcn/com/xy/sms/sdk/db/entity/SysParamEntityManager;->cacheMap:Ljava/util/HashMap;

    const-string/jumbo v4, "SMSLOCATEENABLE"

    invoke-static/range {p4 .. p4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v3, Lcn/com/xy/sms/sdk/db/entity/SysParamEntityManager;->cacheMap:Ljava/util/HashMap;

    const-string/jumbo v4, "CHANNEL"

    move-object/from16 v0, p1

    invoke-virtual {v3, v4, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v5, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v15, 0x0

    const/4 v14, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/4 v11, 0x0

    const/4 v8, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    if-nez p5, :cond_9

    :goto_3
    if-eqz v3, :cond_b

    :goto_4
    const-string/jumbo v20, "CUSTOM_LOCATION_SERVER_URL"

    const/16 v21, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    invoke-static {v0, v1, v3, v2}, Lcn/com/xy/sms/sdk/db/entity/SysParamEntityManager;->insertOrUpdateKeyValue(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)J

    sget-object v20, Lcn/com/xy/sms/sdk/db/entity/SysParamEntityManager;->cacheMap:Ljava/util/HashMap;

    const-string/jumbo v21, "CUSTOM_LOCATION_SERVER_URL"

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz v4, :cond_c

    move-object v3, v4

    :goto_5
    invoke-static {v3}, Lcn/com/xy/sms/sdk/util/StringUtils;->isNull(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_d

    :goto_6
    if-eqz v6, :cond_f

    move-object v4, v6

    :goto_7
    invoke-static {v4}, Lcn/com/xy/sms/sdk/util/StringUtils;->isNull(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_10

    :goto_8
    const-string/jumbo v6, "CUSTOM_PUBINFO_SERVER_URL"

    const/16 v20, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-static {v0, v6, v4, v1}, Lcn/com/xy/sms/sdk/db/entity/SysParamEntityManager;->insertOrUpdateKeyValue(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)J

    sget-object v6, Lcn/com/xy/sms/sdk/db/entity/SysParamEntityManager;->cacheMap:Ljava/util/HashMap;

    const-string/jumbo v20, "CUSTOM_PUBINFO_SERVER_URL"

    move-object/from16 v0, v20

    invoke-virtual {v6, v0, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v4, "CUSTOM_PUBLIC_SERVER_URL"

    const/4 v6, 0x0

    move-object/from16 v0, p0

    invoke-static {v0, v4, v3, v6}, Lcn/com/xy/sms/sdk/db/entity/SysParamEntityManager;->insertOrUpdateKeyValue(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)J

    sget-object v4, Lcn/com/xy/sms/sdk/db/entity/SysParamEntityManager;->cacheMap:Ljava/util/HashMap;

    const-string/jumbo v6, "CUSTOM_PUBLIC_SERVER_URL"

    invoke-virtual {v4, v6, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz v7, :cond_11

    move-object v3, v7

    :goto_9
    const-string/jumbo v4, "CUSTOM_SDK_SERVER_URL"

    const/4 v6, 0x0

    move-object/from16 v0, p0

    invoke-static {v0, v4, v3, v6}, Lcn/com/xy/sms/sdk/db/entity/SysParamEntityManager;->insertOrUpdateKeyValue(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)J

    sget-object v4, Lcn/com/xy/sms/sdk/db/entity/SysParamEntityManager;->cacheMap:Ljava/util/HashMap;

    const-string/jumbo v6, "CUSTOM_SDK_SERVER_URL"

    invoke-virtual {v4, v6, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v3}, Lcn/com/xy/sms/sdk/util/StringUtils;->isNull(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_12

    :goto_a
    if-eqz v8, :cond_14

    move-object v3, v8

    :goto_b
    const-string/jumbo v4, "CUSTOM_SDK_RES_DOWNLAOD_URL"

    const/4 v6, 0x0

    move-object/from16 v0, p0

    invoke-static {v0, v4, v3, v6}, Lcn/com/xy/sms/sdk/db/entity/SysParamEntityManager;->insertOrUpdateKeyValue(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)J

    sget-object v4, Lcn/com/xy/sms/sdk/db/entity/SysParamEntityManager;->cacheMap:Ljava/util/HashMap;

    const-string/jumbo v6, "CUSTOM_SDK_RES_DOWNLAOD_URL"

    invoke-virtual {v4, v6, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v3}, Lcn/com/xy/sms/sdk/util/StringUtils;->isNull(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_15

    :goto_c
    if-eqz v9, :cond_16

    move-object v3, v9

    :goto_d
    const-string/jumbo v4, "ONLINE_UPDATE_SDK"

    const/4 v6, 0x0

    move-object/from16 v0, p0

    invoke-static {v0, v4, v3, v6}, Lcn/com/xy/sms/sdk/db/entity/SysParamEntityManager;->insertOrUpdateKeyValue(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)J

    sget-object v4, Lcn/com/xy/sms/sdk/db/entity/SysParamEntityManager;->cacheMap:Ljava/util/HashMap;

    const-string/jumbo v6, "ONLINE_UPDATE_SDK"

    invoke-virtual {v4, v6, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz v10, :cond_17

    move-object v3, v10

    :goto_e
    const-string/jumbo v4, "QUERY_ONLINE"

    const/4 v6, 0x0

    move-object/from16 v0, p0

    invoke-static {v0, v4, v3, v6}, Lcn/com/xy/sms/sdk/db/entity/SysParamEntityManager;->insertOrUpdateKeyValue(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)J

    sget-object v4, Lcn/com/xy/sms/sdk/db/entity/SysParamEntityManager;->cacheMap:Ljava/util/HashMap;

    const-string/jumbo v6, "QUERY_ONLINE"

    invoke-virtual {v4, v6, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz v11, :cond_18

    move-object v3, v11

    :goto_f
    const-string/jumbo v4, "SCENE_CENSUS_ONLINE"

    const/4 v6, 0x0

    move-object/from16 v0, p0

    invoke-static {v0, v4, v3, v6}, Lcn/com/xy/sms/sdk/db/entity/SysParamEntityManager;->insertOrUpdateKeyValue(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)J

    sget-object v4, Lcn/com/xy/sms/sdk/db/entity/SysParamEntityManager;->cacheMap:Ljava/util/HashMap;

    const-string/jumbo v6, "SCENE_CENSUS_ONLINE"

    invoke-virtual {v4, v6, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz v12, :cond_19

    move-object v3, v12

    :goto_10
    const-string/jumbo v4, "RECOGNIZE_LEVEL"

    const/4 v6, 0x0

    move-object/from16 v0, p0

    invoke-static {v0, v4, v3, v6}, Lcn/com/xy/sms/sdk/db/entity/SysParamEntityManager;->insertOrUpdateKeyValue(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)J

    sget-object v4, Lcn/com/xy/sms/sdk/db/entity/SysParamEntityManager;->cacheMap:Ljava/util/HashMap;

    const-string/jumbo v6, "RECOGNIZE_LEVEL"

    invoke-virtual {v4, v6, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz v13, :cond_1a

    move-object v3, v13

    :goto_11
    sget-object v4, Lcn/com/xy/sms/sdk/db/entity/SysParamEntityManager;->cacheMap:Ljava/util/HashMap;

    const-string/jumbo v6, "OPEN_POPUP_DRAG"

    invoke-virtual {v4, v6, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz v14, :cond_1b

    move-object v3, v14

    :goto_12
    const-string/jumbo v4, "AUTO_UPDATE_DATA"

    const/4 v6, 0x0

    move-object/from16 v0, p0

    invoke-static {v0, v4, v3, v6}, Lcn/com/xy/sms/sdk/db/entity/SysParamEntityManager;->insertOrUpdateKeyValue(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)J

    sget-object v4, Lcn/com/xy/sms/sdk/db/entity/SysParamEntityManager;->cacheMap:Ljava/util/HashMap;

    const-string/jumbo v6, "AUTO_UPDATE_DATA"

    invoke-virtual {v4, v6, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz v15, :cond_1c

    move-object v3, v15

    :goto_13
    const-string/jumbo v4, "POPUP_BG_TYPE"

    const/4 v6, 0x0

    move-object/from16 v0, p0

    invoke-static {v0, v4, v3, v6}, Lcn/com/xy/sms/sdk/db/entity/SysParamEntityManager;->insertOrUpdateKeyValue(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)J

    sget-object v4, Lcn/com/xy/sms/sdk/db/entity/SysParamEntityManager;->cacheMap:Ljava/util/HashMap;

    const-string/jumbo v6, "POPUP_BG_TYPE"

    invoke-virtual {v4, v6, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz v16, :cond_1d

    move-object/from16 v3, v16

    :goto_14
    const-string/jumbo v4, "SUPPORT_NETWORK_TYPE_MAJOR"

    const/4 v6, 0x0

    move-object/from16 v0, p0

    invoke-static {v0, v4, v3, v6}, Lcn/com/xy/sms/sdk/db/entity/SysParamEntityManager;->insertOrUpdateKeyValue(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)J

    sget-object v4, Lcn/com/xy/sms/sdk/db/entity/SysParamEntityManager;->cacheMap:Ljava/util/HashMap;

    const-string/jumbo v6, "SUPPORT_NETWORK_TYPE_MAJOR"

    invoke-virtual {v4, v6, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz v17, :cond_1e

    move-object/from16 v3, v17

    :goto_15
    const-string/jumbo v4, "ONLINE_UPDATE_RES_PERIOD"

    const/4 v6, 0x0

    move-object/from16 v0, p0

    invoke-static {v0, v4, v3, v6}, Lcn/com/xy/sms/sdk/db/entity/SysParamEntityManager;->insertOrUpdateKeyValue(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)J

    sget-object v4, Lcn/com/xy/sms/sdk/db/entity/SysParamEntityManager;->cacheMap:Ljava/util/HashMap;

    const-string/jumbo v6, "ONLINE_UPDATE_RES_PERIOD"

    invoke-virtual {v4, v6, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz v18, :cond_1f

    move-object/from16 v3, v18

    :goto_16
    const-string/jumbo v4, "REPARSE_BUBBLE_CYCLE"

    const/4 v6, 0x0

    move-object/from16 v0, p0

    invoke-static {v0, v4, v3, v6}, Lcn/com/xy/sms/sdk/db/entity/SysParamEntityManager;->insertOrUpdateKeyValue(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)J

    sget-object v4, Lcn/com/xy/sms/sdk/db/entity/SysParamEntityManager;->cacheMap:Ljava/util/HashMap;

    const-string/jumbo v6, "REPARSE_BUBBLE_CYCLE"

    invoke-virtual {v4, v6, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz v19, :cond_20

    move-object/from16 v3, v19

    :goto_17
    const-string/jumbo v4, "COMPARE_PUBNUM_OPERATOR"

    const/4 v6, 0x0

    move-object/from16 v0, p0

    invoke-static {v0, v4, v3, v6}, Lcn/com/xy/sms/sdk/db/entity/SysParamEntityManager;->insertOrUpdateKeyValue(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)J

    sget-object v4, Lcn/com/xy/sms/sdk/db/entity/SysParamEntityManager;->cacheMap:Ljava/util/HashMap;

    const-string/jumbo v6, "COMPARE_PUBNUM_OPERATOR"

    invoke-virtual {v4, v6, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static/range {p2 .. p2}, Lcn/com/xy/sms/sdk/util/StringUtils;->isNull(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_21

    :goto_18
    const-string/jumbo v3, "APPVERSION"

    sget-object v4, Lcn/com/xy/sms/sdk/net/NetUtil;->APPVERSION:Ljava/lang/String;

    const/4 v5, 0x0

    move-object/from16 v0, p0

    invoke-static {v0, v3, v4, v5}, Lcn/com/xy/sms/sdk/db/entity/SysParamEntityManager;->insertOrUpdateKeyValue(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)J

    return-void

    :cond_0
    if-nez p5, :cond_1

    :goto_19
    if-eqz v3, :cond_2

    :goto_1a
    const-string/jumbo v4, "smartsms_enhance"

    const/4 v5, 0x0

    move-object/from16 v0, p0

    invoke-static {v0, v4, v3, v5}, Lcn/com/xy/sms/sdk/db/entity/SysParamEntityManager;->insertOrUpdateKeyValue(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)J

    sget-object v4, Lcn/com/xy/sms/sdk/db/entity/SysParamEntityManager;->cacheMap:Ljava/util/HashMap;

    const-string/jumbo v5, "smartsms_enhance"

    invoke-virtual {v4, v5, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    :cond_1
    const-string/jumbo v3, "smartsms_enhance"

    move-object/from16 v0, p5

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    goto :goto_19

    :cond_2
    const-string/jumbo v3, "true"

    goto :goto_1a

    :cond_3
    if-nez p5, :cond_4

    :goto_1b
    if-eqz v3, :cond_5

    :goto_1c
    const-string/jumbo v4, "SUPPORT_NETWORK_TYPE"

    const/4 v5, 0x0

    move-object/from16 v0, p0

    invoke-static {v0, v4, v3, v5}, Lcn/com/xy/sms/sdk/db/entity/SysParamEntityManager;->insertOrUpdateKeyValue(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)J

    sget-object v4, Lcn/com/xy/sms/sdk/db/entity/SysParamEntityManager;->cacheMap:Ljava/util/HashMap;

    const-string/jumbo v5, "SUPPORT_NETWORK_TYPE"

    invoke-virtual {v4, v5, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1

    :cond_4
    const-string/jumbo v3, "SUPPORT_NETWORK_TYPE"

    move-object/from16 v0, p5

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    goto :goto_1b

    :cond_5
    const-string/jumbo v3, "1"

    goto :goto_1c

    :cond_6
    if-nez p5, :cond_7

    :goto_1d
    if-eqz v3, :cond_8

    :goto_1e
    const-string/jumbo v4, "ONLINE_UPDATE_SDK_PERIOD"

    const/4 v5, 0x0

    move-object/from16 v0, p0

    invoke-static {v0, v4, v3, v5}, Lcn/com/xy/sms/sdk/db/entity/SysParamEntityManager;->insertOrUpdateKeyValue(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)J

    sget-object v4, Lcn/com/xy/sms/sdk/db/entity/SysParamEntityManager;->cacheMap:Ljava/util/HashMap;

    const-string/jumbo v5, "ONLINE_UPDATE_SDK_PERIOD"

    invoke-virtual {v4, v5, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_2

    :cond_7
    const-string/jumbo v3, "ONLINE_UPDATE_SDK_PERIOD"

    move-object/from16 v0, p5

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    goto :goto_1d

    :cond_8
    const-string/jumbo v3, "1"

    goto :goto_1e

    :cond_9
    const-string/jumbo v3, "SIM_ICCID_2"

    move-object/from16 v0, p5

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const-string/jumbo v4, "SMS_LOCATE_2"

    move-object/from16 v0, p5

    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    if-nez v3, :cond_a

    :goto_1f
    const-string/jumbo v3, "CUSTOM_LOCATION_SERVER_URL"

    move-object/from16 v0, p5

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const-string/jumbo v4, "CUSTOM_PUBLIC_SERVER_URL"

    move-object/from16 v0, p5

    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    const-string/jumbo v5, "CUSTOM_PUBINFO_SERVER_URL"

    move-object/from16 v0, p5

    invoke-interface {v0, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    const-string/jumbo v6, "CUSTOM_SDK_SERVER_URL"

    move-object/from16 v0, p5

    invoke-interface {v0, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    const-string/jumbo v7, "ONLINE_UPDATE_SDK"

    move-object/from16 v0, p5

    invoke-interface {v0, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    const-string/jumbo v8, "QUERY_ONLINE"

    move-object/from16 v0, p5

    invoke-interface {v0, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    const-string/jumbo v9, "SMS_LOCATE"

    move-object/from16 v0, p5

    invoke-interface {v0, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    const-string/jumbo v10, "RECOGNIZE_LEVEL"

    move-object/from16 v0, p5

    invoke-interface {v0, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    const-string/jumbo v11, "SECRETKEY"

    move-object/from16 v0, p5

    invoke-interface {v0, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    const-string/jumbo v12, "OPEN_POPUP_DRAG"

    move-object/from16 v0, p5

    invoke-interface {v0, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    const-string/jumbo v13, "AUTO_UPDATE_DATA"

    move-object/from16 v0, p5

    invoke-interface {v0, v13}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    sget-object v14, Lcn/com/xy/sms/sdk/db/entity/SysParamEntityManager;->cacheMap:Ljava/util/HashMap;

    const-string/jumbo v15, "SECRETKEY"

    invoke-virtual {v14, v15, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v11, "POPUP_BG_TYPE"

    move-object/from16 v0, p5

    invoke-interface {v0, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    const-string/jumbo v14, "SCENE_CENSUS_ONLINE"

    move-object/from16 v0, p5

    invoke-interface {v0, v14}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    const-string/jumbo v15, "CUSTOM_SDK_RES_DOWNLAOD_URL"

    move-object/from16 v0, p5

    invoke-interface {v0, v15}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/String;

    const-string/jumbo v16, "SUPPORT_NETWORK_TYPE_MAJOR"

    move-object/from16 v0, p5

    move-object/from16 v1, v16

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/lang/String;

    const-string/jumbo v17, "ONLINE_UPDATE_RES_PERIOD"

    move-object/from16 v0, p5

    move-object/from16 v1, v17

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/lang/String;

    const-string/jumbo v18, "REPARSE_BUBBLE_CYCLE"

    move-object/from16 v0, p5

    move-object/from16 v1, v18

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/lang/String;

    const-string/jumbo v19, "COMPARE_PUBNUM_OPERATOR"

    move-object/from16 v0, p5

    move-object/from16 v1, v19

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljava/lang/String;

    const-string/jumbo v20, "RSAPRVKEY"

    move-object/from16 v0, p5

    move-object/from16 v1, v20

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Ljava/lang/String;

    sget-object v21, Lcn/com/xy/sms/sdk/db/entity/SysParamEntityManager;->cacheMap:Ljava/util/HashMap;

    const-string/jumbo v22, "RSAPRVKEY"

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v23, v15

    move-object v15, v11

    move-object v11, v14

    move-object v14, v13

    move-object v13, v12

    move-object v12, v10

    move-object v10, v8

    move-object/from16 v8, v23

    move-object/from16 v24, v7

    move-object v7, v6

    move-object v6, v5

    move-object v5, v9

    move-object/from16 v9, v24

    goto/16 :goto_3

    :cond_a
    const-string/jumbo v6, ""

    const-string/jumbo v7, ""

    const-string/jumbo v8, ""

    const/4 v4, 0x0

    move-object/from16 v9, p0

    invoke-static/range {v3 .. v9}, Lcn/com/xy/sms/sdk/db/entity/IccidInfoManager;->insertIccid(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)J

    new-instance v4, Lcn/com/xy/sms/sdk/queue/i;

    const/4 v6, 0x1

    const/4 v7, 0x4

    new-array v7, v7, [Ljava/lang/String;

    const/4 v8, 0x0

    const-string/jumbo v9, "simIccid"

    aput-object v9, v7, v8

    const/4 v8, 0x1

    aput-object v3, v7, v8

    const/4 v3, 0x2

    const-string/jumbo v8, "smsLocate"

    aput-object v8, v7, v3

    const/4 v3, 0x3

    aput-object v5, v7, v3

    invoke-direct {v4, v6, v7}, Lcn/com/xy/sms/sdk/queue/i;-><init>(I[Ljava/lang/String;)V

    invoke-static {v4}, Lcn/com/xy/sms/sdk/queue/g;->a(Lcn/com/xy/sms/sdk/queue/i;)V

    goto/16 :goto_1f

    :cond_b
    const-string/jumbo v3, ""

    goto/16 :goto_4

    :cond_c
    const-string/jumbo v3, ""

    goto/16 :goto_5

    :cond_d
    invoke-static {}, Lcn/com/xy/sms/sdk/net/NetUtil;->isUseHttps()Z

    move-result v4

    if-nez v4, :cond_e

    sput-object v3, Lcn/com/xy/sms/sdk/net/NetUtil;->serverUrl2:Ljava/lang/String;

    goto/16 :goto_6

    :cond_e
    sput-object v3, Lcn/com/xy/sms/sdk/net/NetUtil;->PUBINFO_SERVER_URL_HTTPS:Ljava/lang/String;

    goto/16 :goto_6

    :cond_f
    const-string/jumbo v4, ""

    goto/16 :goto_7

    :cond_10
    sput-object v4, Lcn/com/xy/sms/sdk/net/NetUtil;->publicInfoServerUrl:Ljava/lang/String;

    goto/16 :goto_8

    :cond_11
    const-string/jumbo v3, ""

    goto/16 :goto_9

    :cond_12
    invoke-static {}, Lcn/com/xy/sms/sdk/net/NetUtil;->isUseHttps()Z

    move-result v4

    if-nez v4, :cond_13

    sput-object v3, Lcn/com/xy/sms/sdk/net/NetUtil;->serverUrl:Ljava/lang/String;

    goto/16 :goto_a

    :cond_13
    sput-object v3, Lcn/com/xy/sms/sdk/net/NetUtil;->POPUP_SERVER_URL_HTTPS:Ljava/lang/String;

    goto/16 :goto_a

    :cond_14
    const-string/jumbo v3, ""

    goto/16 :goto_b

    :cond_15
    sput-object v3, Lcn/com/xy/sms/sdk/net/NetUtil;->prex:Ljava/lang/String;

    goto/16 :goto_c

    :cond_16
    const-string/jumbo v3, "1"

    goto/16 :goto_d

    :cond_17
    const-string/jumbo v3, "1"

    goto/16 :goto_e

    :cond_18
    const-string/jumbo v3, "0"

    goto/16 :goto_f

    :cond_19
    const-string/jumbo v3, "3"

    goto/16 :goto_10

    :cond_1a
    const-string/jumbo v3, "0"

    goto/16 :goto_11

    :cond_1b
    const-string/jumbo v3, "0"

    goto/16 :goto_12

    :cond_1c
    const-string/jumbo v3, "1"

    goto/16 :goto_13

    :cond_1d
    const-string/jumbo v3, "2"

    goto/16 :goto_14

    :cond_1e
    const-string/jumbo v3, "2"

    goto/16 :goto_15

    :cond_1f
    const-string/jumbo v3, "-1"

    goto/16 :goto_16

    :cond_20
    const-string/jumbo v3, "true"

    goto/16 :goto_17

    :cond_21
    const-string/jumbo v6, ""

    const-string/jumbo v7, ""

    const-string/jumbo v8, ""

    const/4 v4, 0x1

    move-object/from16 v3, p2

    move-object/from16 v9, p0

    invoke-static/range {v3 .. v9}, Lcn/com/xy/sms/sdk/db/entity/IccidInfoManager;->insertIccid(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)J

    new-instance v3, Lcn/com/xy/sms/sdk/queue/i;

    const/4 v4, 0x1

    const/4 v6, 0x4

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    const-string/jumbo v8, "simIccid"

    aput-object v8, v6, v7

    const/4 v7, 0x1

    aput-object p2, v6, v7

    const/4 v7, 0x2

    const-string/jumbo v8, "smsLocate"

    aput-object v8, v6, v7

    const/4 v7, 0x3

    aput-object v5, v6, v7

    invoke-direct {v3, v4, v6}, Lcn/com/xy/sms/sdk/queue/i;-><init>(I[Ljava/lang/String;)V

    invoke-static {v3}, Lcn/com/xy/sms/sdk/queue/g;->a(Lcn/com/xy/sms/sdk/queue/i;)V

    goto/16 :goto_18
.end method

.method public static insertOrUpdateKeyValue(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)J
    .locals 5

    invoke-static {p0, p1}, Lcn/com/xy/sms/sdk/db/entity/SysParamEntityManager;->queryValueParamKey(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    const-string/jumbo v2, "p_key"

    invoke-virtual {v1, v2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v2, "p_value"

    invoke-virtual {v1, v2, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v2, "pextend_value"

    invoke-virtual {v1, v2, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    if-nez v0, :cond_0

    const-string/jumbo v0, "tb_sdk_param"

    invoke-static {v0, v1}, Lcn/com/xy/sms/sdk/db/DBManager;->insert(Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v0

    long-to-int v0, v0

    :goto_0
    int-to-long v0, v0

    return-wide v0

    :cond_0
    const-string/jumbo v0, "tb_sdk_param"

    const-string/jumbo v2, "p_key=?"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcn/com/xy/sms/sdk/db/DBManager;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    goto :goto_0
.end method

.method public static queryValueParamKey(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 11

    const/4 v9, 0x0

    const/4 v10, 0x1

    :try_start_0
    const-string/jumbo v1, "tb_sdk_param"

    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string/jumbo v3, "p_value"

    aput-object v3, v2, v0

    const-string/jumbo v3, "p_key=?"

    const/4 v0, 0x1

    new-array v4, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    aput-object p1, v4, v0

    const-string/jumbo v8, "1"

    const/4 v0, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-static/range {v0 .. v8}, Lcn/com/xy/sms/sdk/db/DBManager;->query(ZLjava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcn/com/xy/sms/sdk/db/XyCursor;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
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

    invoke-virtual {v1}, Lcn/com/xy/sms/sdk/db/XyCursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "p_value"

    invoke-virtual {v1, v0}, Lcn/com/xy/sms/sdk/db/XyCursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v1, v0}, Lcn/com/xy/sms/sdk/db/XyCursor;->getString(I)Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v0

    invoke-static {v1, v10}, Lcn/com/xy/sms/sdk/db/XyCursor;->closeCursor(Lcn/com/xy/sms/sdk/db/XyCursor;Z)V

    return-object v0

    :catch_0
    move-exception v0

    move-object v1, v9

    :goto_1
    :try_start_2
    const-string/jumbo v2, "XIAOYUAN"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "queryValueParamKey: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Lcn/com/xy/sms/sdk/log/LogManager;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    invoke-static {v1, v10}, Lcn/com/xy/sms/sdk/db/XyCursor;->closeCursor(Lcn/com/xy/sms/sdk/db/XyCursor;Z)V

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object v1, v9

    :goto_2
    invoke-static {v1, v10}, Lcn/com/xy/sms/sdk/db/XyCursor;->closeCursor(Lcn/com/xy/sms/sdk/db/XyCursor;Z)V

    throw v0

    :catchall_1
    move-exception v0

    goto :goto_2

    :catch_1
    move-exception v0

    goto :goto_1
.end method

.method public static setParam(Ljava/lang/String;Ljava/lang/String;)J
    .locals 5

    :try_start_0
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-string/jumbo v1, "p_key"

    invoke-virtual {v0, v1, p0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v1, "p_value"

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v1, "tb_sdk_param"

    const-string/jumbo v2, "p_key=?"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    invoke-static {v1, v0, v2, v3}, Lcn/com/xy/sms/sdk/db/DBManager;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    sget-object v2, Lcn/com/xy/sms/sdk/db/entity/SysParamEntityManager;->cacheMap:Ljava/util/HashMap;

    invoke-virtual {v2, p0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-lez v1, :cond_0

    :goto_0
    const-wide/16 v0, 0x0

    return-wide v0

    :cond_0
    const-string/jumbo v1, "tb_sdk_param"

    invoke-static {v1, v0}, Lcn/com/xy/sms/sdk/db/DBManager;->insert(Ljava/lang/String;Landroid/content/ContentValues;)J
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v0

    return-wide v0

    :catch_0
    move-exception v0

    const-string/jumbo v1, "XIAOYUAN"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "setParam: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcn/com/xy/sms/sdk/log/LogManager;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method
