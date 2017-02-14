.class public final Lcn/com/xy/sms/sdk/net/util/o;
.super Ljava/lang/Object;
.source "Unknown"


# static fields
.field private static a:Ljava/lang/String; = "95ad98c4ba9a0ec12a7dca2af77f312bef6fd02580c23fc082b28f1cab03d9d5b7694bd5dd9693a8b6786c9480dfbcc462373bd1b9f5bed66151be80a370465d6516f89e66d6d70ba52a3d063acbe4544a585d62896d953b3269efd345ff888e5ed7f7f7b60c862ca5a27f20ccdba704113a9861fcd91cf3f0fd7115987568d04f444224b3c2436b833ed0439b4fa8c92e938827f360b6a4a070fed4608a46c8a52023fabfd2561bcd4205052254caaffe9a55aa73254537a1a2c0efbcd76254bef3e01902ffee20b0a45b6c8e6beb496c9c3494d263dedf0fff4702ebbfee0cb568da4940b8f5f8c89aa96b2c21e2ff9596e30e26b18e1b563353843ee95787"

.field private static b:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private static c:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcn/com/xy/sms/sdk/net/util/o;->b:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcn/com/xy/sms/sdk/net/util/o;->c:Ljava/util/HashMap;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/lang/String;)Ljava/lang/Boolean;
    .locals 3

    const/4 v2, 0x0

    invoke-static {p0}, Lcn/com/xy/sms/sdk/util/d;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcn/com/xy/sms/sdk/net/util/o;->b:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    if-nez v0, :cond_2

    invoke-static {}, Lcn/com/xy/sms/sdk/constant/Constant;->getContext()Landroid/content/Context;

    invoke-static {p0}, Lcn/com/xy/sms/sdk/net/util/o;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/com/xy/sms/sdk/util/StringUtils;->isNull(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    :cond_0
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    :goto_0
    sget-object v1, Lcn/com/xy/sms/sdk/net/util/o;->b:Ljava/util/HashMap;

    invoke-virtual {v1, p0, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0

    :cond_1
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    :cond_2
    return-object v0

    :cond_3
    const-string/jumbo v1, "95ad98c4ba9a0ec12a7dca2af77f312bef6fd02580c23fc082b28f1cab03d9d5b7694bd5dd9693a8b6786c9480dfbcc462373bd1b9f5bed66151be80a370465d6516f89e66d6d70ba52a3d063acbe4544a585d62896d953b3269efd345ff888e5ed7f7f7b60c862ca5a27f20ccdba704113a9861fcd91cf3f0fd7115987568d04f444224b3c2436b833ed0439b4fa8c92e938827f360b6a4a070fed4608a46c8a52023fabfd2561bcd4205052254caaffe9a55aa73254537a1a2c0efbcd76254bef3e01902ffee20b0a45b6c8e6beb496c9c3494d263dedf0fff4702ebbfee0cb568da4940b8f5f8c89aa96b2c21e2ff9596e30e26b18e1b563353843ee95787"

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    const/4 v1, 0x0

    :try_start_0
    new-instance v2, Ljava/io/File;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v0, Ljava/io/BufferedReader;

    new-instance v3, Ljava/io/FileReader;

    invoke-direct {v3, v2}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-direct {v0, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    :goto_0
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catch_0
    move-exception v1

    :goto_1
    if-nez v0, :cond_1

    :goto_2
    const-string/jumbo v0, ""

    return-object v0

    :cond_0
    :try_start_2
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-result-object v1

    :try_start_3
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    :goto_3
    return-object v1

    :catch_1
    move-exception v0

    const-string/jumbo v2, "XIAOYUAN"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "getVerifyCode: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Lcn/com/xy/sms/sdk/log/LogManager;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_3

    :cond_1
    :try_start_4
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_2

    :catch_2
    move-exception v0

    const-string/jumbo v1, "XIAOYUAN"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "getVerifyCode: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcn/com/xy/sms/sdk/log/LogManager;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2

    :catchall_0
    move-exception v0

    :goto_4
    if-nez v1, :cond_2

    :goto_5
    throw v0

    :cond_2
    :try_start_5
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    goto :goto_5

    :catch_3
    move-exception v1

    const-string/jumbo v2, "XIAOYUAN"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "getVerifyCode: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Lcn/com/xy/sms/sdk/log/LogManager;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_5

    :catchall_1
    move-exception v1

    move-object v5, v1

    move-object v1, v0

    move-object v0, v5

    goto :goto_4

    :catch_4
    move-exception v0

    move-object v0, v1

    goto :goto_1
.end method

.method public static a()Z
    .locals 1

    invoke-static {}, Lcn/com/xy/sms/sdk/util/KeyManager;->initAppKey()V

    const/4 v0, 0x1

    return v0
.end method

.method public static a(B)Z
    .locals 7

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    :try_start_0
    invoke-static {}, Lcn/com/xy/sms/sdk/util/KeyManager;->initAppKey()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    sget-object v0, Lcn/com/xy/sms/sdk/util/KeyManager;->channel:Ljava/lang/String;

    invoke-static {v0}, Lcn/com/xy/sms/sdk/util/StringUtils;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "XwIDAQABYUN"

    sget-object v1, Lcn/com/xy/sms/sdk/util/KeyManager;->channel:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string/jumbo v0, "NQIDAQABCOOL"

    sget-object v1, Lcn/com/xy/sms/sdk/util/KeyManager;->channel:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    const-string/jumbo v0, "6QIDAQABSTARRYSKY"

    sget-object v1, Lcn/com/xy/sms/sdk/util/KeyManager;->channel:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    const-string/jumbo v0, "vwIDAQABLIANLUOOS"

    sget-object v1, Lcn/com/xy/sms/sdk/util/KeyManager;->channel:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9

    const-string/jumbo v0, "FEhNrwHTXL"

    sget-object v1, Lcn/com/xy/sms/sdk/util/KeyManager;->channel:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_b

    const-string/jumbo v0, "1i1BDH2wONE+"

    sget-object v1, Lcn/com/xy/sms/sdk/util/KeyManager;->channel:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_d

    const-string/jumbo v0, "Oq1QGcwIYUNOS"

    sget-object v1, Lcn/com/xy/sms/sdk/util/KeyManager;->channel:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_f

    const-string/jumbo v0, "j3FIT5mwLETV"

    sget-object v1, Lcn/com/xy/sms/sdk/util/KeyManager;->channel:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_12

    const-string/jumbo v0, "D6mKXM8MEIZU"

    sget-object v1, Lcn/com/xy/sms/sdk/util/KeyManager;->channel:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_14

    const-string/jumbo v0, "3GdfMSKwHUAWEI"

    sget-object v1, Lcn/com/xy/sms/sdk/util/KeyManager;->channel:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_16

    const-string/jumbo v0, "0GCSqGSITOS"

    sget-object v1, Lcn/com/xy/sms/sdk/util/KeyManager;->channel:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_18

    const-string/jumbo v0, "wupzCqnwGUAIWU"

    sget-object v1, Lcn/com/xy/sms/sdk/util/KeyManager;->channel:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1a

    const-string/jumbo v0, "XRyvMvZwSMARTISAN"

    sget-object v1, Lcn/com/xy/sms/sdk/util/KeyManager;->channel:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1c

    const-string/jumbo v0, "dToXA5JQDAKELE"

    sget-object v1, Lcn/com/xy/sms/sdk/util/KeyManager;->channel:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1e

    const-string/jumbo v0, "p5O4wKmwGIONEE"

    sget-object v1, Lcn/com/xy/sms/sdk/util/KeyManager;->channel:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_20

    const-string/jumbo v0, "z5N7W51wKINGSUN"

    sget-object v1, Lcn/com/xy/sms/sdk/util/KeyManager;->channel:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_22

    const-string/jumbo v0, "Cko59T6wSUGAR"

    sget-object v1, Lcn/com/xy/sms/sdk/util/KeyManager;->channel:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_24

    const-string/jumbo v0, "oWIH+3ZQLEIDIANOS"

    sget-object v1, Lcn/com/xy/sms/sdk/util/KeyManager;->channel:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_26

    const-string/jumbo v0, "al30zFgQTEST_T"

    sget-object v1, Lcn/com/xy/sms/sdk/util/KeyManager;->channel:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_28

    const-string/jumbo v0, "gsjHPHwIKOOBEE"

    sget-object v1, Lcn/com/xy/sms/sdk/util/KeyManager;->channel:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2a

    const-string/jumbo v0, "AjAFrJSQWENTAI"

    sget-object v1, Lcn/com/xy/sms/sdk/util/KeyManager;->channel:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2c

    const-string/jumbo v0, "JqyMtaHQNUBIA"

    sget-object v1, Lcn/com/xy/sms/sdk/util/KeyManager;->channel:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2e

    const-string/jumbo v0, "15Du354QGIONEECARD"

    sget-object v1, Lcn/com/xy/sms/sdk/util/KeyManager;->channel:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_30

    const-string/jumbo v0, "rahtBH7wTCL"

    sget-object v1, Lcn/com/xy/sms/sdk/util/KeyManager;->channel:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_32

    const-string/jumbo v0, "xU6UT6pwTOS2"

    sget-object v1, Lcn/com/xy/sms/sdk/util/KeyManager;->channel:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_34

    const-string/jumbo v0, "5Gx84kmwYULONG_COOLPAD"

    sget-object v1, Lcn/com/xy/sms/sdk/util/KeyManager;->channel:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_36

    const-string/jumbo v0, "tnjdWFeQKTOUCH"

    sget-object v1, Lcn/com/xy/sms/sdk/util/KeyManager;->channel:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_38

    const-string/jumbo v0, "Uj2pznXQHCT"

    sget-object v1, Lcn/com/xy/sms/sdk/util/KeyManager;->channel:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3a

    const-string/jumbo v0, "XkXZJmwIPPTV"

    sget-object v1, Lcn/com/xy/sms/sdk/util/KeyManager;->channel:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3c

    const-string/jumbo v0, "PzqP0ONQTOSWATCH"

    sget-object v1, Lcn/com/xy/sms/sdk/util/KeyManager;->channel:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3e

    const-string/jumbo v0, "VCTyBOSwSmartisan"

    sget-object v1, Lcn/com/xy/sms/sdk/util/KeyManager;->channel:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_40

    const-string/jumbo v0, "HUAWEITMW"

    sget-object v1, Lcn/com/xy/sms/sdk/util/KeyManager;->channel:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_42

    const-string/jumbo v0, "HUAWEIAND"

    sget-object v1, Lcn/com/xy/sms/sdk/util/KeyManager;->channel:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_44

    const-string/jumbo v0, "5rLWVKgQMEITU_PHONE"

    sget-object v1, Lcn/com/xy/sms/sdk/util/KeyManager;->channel:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_46

    const-string/jumbo v0, "zcK2P6yQINNOS"

    sget-object v1, Lcn/com/xy/sms/sdk/util/KeyManager;->channel:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_48

    const-string/jumbo v0, "J2kSrxdQGigaset"

    sget-object v1, Lcn/com/xy/sms/sdk/util/KeyManager;->channel:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4a

    const-string/jumbo v0, "RbWRsTYQdroi"

    sget-object v1, Lcn/com/xy/sms/sdk/util/KeyManager;->channel:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4c

    const-string/jumbo v0, "5zZZdrFQIUNI"

    sget-object v1, Lcn/com/xy/sms/sdk/util/KeyManager;->channel:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4e

    const-string/jumbo v0, "nZpg6u3wDOOV"

    sget-object v1, Lcn/com/xy/sms/sdk/util/KeyManager;->channel:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_50

    const-string/jumbo v0, "RQIDAQABONEPLUSCARDNEW"

    sget-object v1, Lcn/com/xy/sms/sdk/util/KeyManager;->channel:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_52

    const-string/jumbo v0, "i3GPvZLwASUS"

    sget-object v1, Lcn/com/xy/sms/sdk/util/KeyManager;->channel:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_54

    const-string/jumbo v0, "cNNrw5WQEBEN"

    sget-object v1, Lcn/com/xy/sms/sdk/util/KeyManager;->channel:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_56

    const-string/jumbo v0, "cNNrw5WQEBEN"

    sget-object v1, Lcn/com/xy/sms/sdk/util/KeyManager;->channel:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_58

    const-string/jumbo v0, "UdcqV6aQLANMO"

    sget-object v1, Lcn/com/xy/sms/sdk/util/KeyManager;->channel:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5a

    const-string/jumbo v0, "PunKwZfwHISENSE"

    sget-object v1, Lcn/com/xy/sms/sdk/util/KeyManager;->channel:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5c

    const-string/jumbo v0, "gO0o2CXwVIVO"

    sget-object v1, Lcn/com/xy/sms/sdk/util/KeyManager;->channel:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5e

    const-string/jumbo v0, "kpGIJXywSAMSUNGFLOW"

    sget-object v1, Lcn/com/xy/sms/sdk/util/KeyManager;->channel:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_60

    const-string/jumbo v0, "DEaerxdwASUSCARD"

    sget-object v1, Lcn/com/xy/sms/sdk/util/KeyManager;->channel:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_62

    return v5

    :catch_0
    move-exception v0

    const-string/jumbo v1, "XIAOYUAN"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "checkChannelFuncPower "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcn/com/xy/sms/sdk/log/LogManager;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_0

    :cond_0
    return v4

    :cond_1
    if-ne p0, v6, :cond_3

    :cond_2
    return v5

    :cond_3
    const/4 v0, 0x4

    if-eq p0, v0, :cond_2

    return v4

    :cond_4
    if-eq p0, v5, :cond_5

    const/16 v0, 0xc

    if-eq p0, v0, :cond_6

    return v5

    :cond_5
    return v4

    :cond_6
    return v5

    :cond_7
    if-eq p0, v5, :cond_8

    return v5

    :cond_8
    return v4

    :cond_9
    if-eq p0, v5, :cond_a

    return v5

    :cond_a
    return v4

    :cond_b
    if-eq p0, v5, :cond_c

    return v4

    :cond_c
    return v5

    :cond_d
    if-eq p0, v5, :cond_e

    return v5

    :cond_e
    return v4

    :cond_f
    if-ne p0, v5, :cond_11

    :cond_10
    return v4

    :cond_11
    if-eq p0, v6, :cond_10

    return v5

    :cond_12
    if-eq p0, v5, :cond_13

    return v5

    :cond_13
    return v4

    :cond_14
    if-eq p0, v5, :cond_15

    return v5

    :cond_15
    return v4

    :cond_16
    if-eq p0, v5, :cond_17

    return v5

    :cond_17
    return v4

    :cond_18
    if-eq p0, v5, :cond_19

    return v5

    :cond_19
    return v4

    :cond_1a
    if-eq p0, v5, :cond_1b

    return v5

    :cond_1b
    return v4

    :cond_1c
    if-eq p0, v5, :cond_1d

    return v5

    :cond_1d
    return v4

    :cond_1e
    if-eq p0, v5, :cond_1f

    return v5

    :cond_1f
    return v4

    :cond_20
    if-eq p0, v5, :cond_21

    return v5

    :cond_21
    return v4

    :cond_22
    if-eq p0, v5, :cond_23

    return v5

    :cond_23
    return v4

    :cond_24
    if-eq p0, v5, :cond_25

    return v5

    :cond_25
    return v4

    :cond_26
    if-eq p0, v5, :cond_27

    return v5

    :cond_27
    return v4

    :cond_28
    if-eq p0, v5, :cond_29

    return v5

    :cond_29
    return v4

    :cond_2a
    if-eq p0, v5, :cond_2b

    return v5

    :cond_2b
    return v4

    :cond_2c
    if-eq p0, v5, :cond_2d

    return v5

    :cond_2d
    return v4

    :cond_2e
    if-eq p0, v5, :cond_2f

    return v5

    :cond_2f
    return v4

    :cond_30
    if-eq p0, v5, :cond_31

    return v5

    :cond_31
    return v4

    :cond_32
    if-eq p0, v5, :cond_33

    return v5

    :cond_33
    return v4

    :cond_34
    if-eq p0, v5, :cond_35

    return v5

    :cond_35
    return v4

    :cond_36
    if-eq p0, v5, :cond_37

    return v5

    :cond_37
    return v4

    :cond_38
    if-eq p0, v5, :cond_39

    return v5

    :cond_39
    return v4

    :cond_3a
    if-eq p0, v5, :cond_3b

    return v5

    :cond_3b
    return v4

    :cond_3c
    if-eq p0, v5, :cond_3d

    return v5

    :cond_3d
    return v4

    :cond_3e
    if-eq p0, v5, :cond_3f

    return v5

    :cond_3f
    return v4

    :cond_40
    if-eq p0, v5, :cond_41

    return v5

    :cond_41
    return v4

    :cond_42
    if-eq p0, v5, :cond_43

    return v5

    :cond_43
    return v4

    :cond_44
    if-eq p0, v5, :cond_45

    return v5

    :cond_45
    return v4

    :cond_46
    if-eq p0, v5, :cond_47

    return v5

    :cond_47
    return v4

    :cond_48
    if-eq p0, v5, :cond_49

    return v5

    :cond_49
    return v4

    :cond_4a
    if-eq p0, v5, :cond_4b

    return v5

    :cond_4b
    return v4

    :cond_4c
    if-eq p0, v5, :cond_4d

    return v5

    :cond_4d
    return v4

    :cond_4e
    if-eq p0, v5, :cond_4f

    return v5

    :cond_4f
    return v4

    :cond_50
    if-eq p0, v5, :cond_51

    return v5

    :cond_51
    return v4

    :cond_52
    if-eq p0, v5, :cond_53

    return v5

    :cond_53
    return v4

    :cond_54
    if-eq p0, v5, :cond_55

    return v5

    :cond_55
    return v4

    :cond_56
    if-eq p0, v5, :cond_57

    return v5

    :cond_57
    return v4

    :cond_58
    if-eq p0, v5, :cond_59

    return v5

    :cond_59
    return v4

    :cond_5a
    if-eq p0, v5, :cond_5b

    return v5

    :cond_5b
    return v4

    :cond_5c
    if-eq p0, v5, :cond_5d

    return v5

    :cond_5d
    return v4

    :cond_5e
    if-eq p0, v5, :cond_5f

    return v5

    :cond_5f
    return v4

    :cond_60
    if-eq p0, v5, :cond_61

    return v5

    :cond_61
    return v4

    :cond_62
    if-eq p0, v5, :cond_63

    return v5

    :cond_63
    return v4
.end method

.method private static a(Ljava/util/jar/JarFile;Ljava/util/jar/JarEntry;)[Ljava/security/cert/Certificate;
    .locals 6

    const/4 v0, 0x0

    const/16 v1, 0x400

    :try_start_0
    new-array v1, v1, [B

    invoke-virtual {p0, p1}, Ljava/util/jar/JarFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    :cond_0
    const/4 v3, 0x0

    const/16 v4, 0x400

    :try_start_1
    invoke-virtual {v2, v1, v3, v4}, Ljava/io/InputStream;->read([BII)I

    move-result v3

    const/4 v4, -0x1

    if-ne v3, v4, :cond_0

    if-nez p1, :cond_1

    :goto_0
    if-nez v2, :cond_2

    :goto_1
    return-object v0

    :cond_1
    invoke-virtual {p1}, Ljava/util/jar/JarEntry;->getCertificates()[Ljava/security/cert/Certificate;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_7
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_6
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v0

    goto :goto_0

    :cond_2
    :try_start_2
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    :catch_0
    move-exception v1

    goto :goto_1

    :catch_1
    move-exception v1

    move-object v2, v0

    :goto_2
    :try_start_3
    const-string/jumbo v3, "XIAOYUAN"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "loadCertificates: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v1}, Lcn/com/xy/sms/sdk/log/LogManager;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-nez v2, :cond_4

    :cond_3
    :goto_3
    return-object v0

    :cond_4
    :try_start_4
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_3

    :catch_2
    move-exception v1

    goto :goto_3

    :catch_3
    move-exception v1

    move-object v2, v0

    :goto_4
    :try_start_5
    const-string/jumbo v3, "XIAOYUAN"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "loadCertificates: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v1}, Lcn/com/xy/sms/sdk/log/LogManager;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    if-eqz v2, :cond_3

    :try_start_6
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_4

    goto :goto_3

    :catch_4
    move-exception v1

    goto :goto_3

    :catchall_0
    move-exception v1

    move-object v2, v0

    move-object v0, v1

    :goto_5
    if-nez v2, :cond_5

    :goto_6
    throw v0

    :cond_5
    :try_start_7
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_5

    goto :goto_6

    :catch_5
    move-exception v1

    goto :goto_6

    :catchall_1
    move-exception v0

    goto :goto_5

    :catch_6
    move-exception v1

    goto :goto_4

    :catch_7
    move-exception v1

    goto :goto_2
.end method

.method private static b(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    const/4 v2, 0x0

    :try_start_0
    new-instance v1, Ljava/util/jar/JarFile;

    invoke-direct {v1, p0}, Ljava/util/jar/JarFile;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    const-string/jumbo v0, "classes.dex"

    invoke-virtual {v1, v0}, Ljava/util/jar/JarFile;->getJarEntry(Ljava/lang/String;)Ljava/util/jar/JarEntry;

    move-result-object v0

    invoke-static {v1, v0}, Lcn/com/xy/sms/sdk/net/util/o;->a(Ljava/util/jar/JarFile;Ljava/util/jar/JarEntry;)[Ljava/security/cert/Certificate;

    move-result-object v0

    if-nez v0, :cond_2

    :cond_0
    invoke-virtual {v1}, Ljava/util/jar/JarFile;->close()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_5
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    invoke-virtual {v1}, Ljava/util/jar/JarFile;->close()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_4

    :cond_1
    :goto_0
    const-string/jumbo v0, ""

    return-object v0

    :cond_2
    :try_start_3
    array-length v2, v0

    if-lez v2, :cond_0

    array-length v2, v0

    if-lez v2, :cond_0

    const/4 v2, 0x0

    aget-object v0, v0, v2

    invoke-virtual {v0}, Ljava/security/cert/Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_5
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move-result-object v0

    :try_start_4
    invoke-virtual {v1}, Ljava/util/jar/JarFile;->close()V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_0

    :goto_1
    return-object v0

    :catch_0
    move-exception v1

    goto :goto_1

    :catch_1
    move-exception v0

    move-object v1, v2

    :goto_2
    :try_start_5
    const-string/jumbo v2, "XIAOYUAN"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "getSignature: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Lcn/com/xy/sms/sdk/log/LogManager;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    if-eqz v1, :cond_1

    :try_start_6
    invoke-virtual {v1}, Ljava/util/jar/JarFile;->close()V
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_2

    goto :goto_0

    :catch_2
    move-exception v0

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object v1, v2

    :goto_3
    if-nez v1, :cond_3

    :goto_4
    throw v0

    :cond_3
    :try_start_7
    invoke-virtual {v1}, Ljava/util/jar/JarFile;->close()V
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_3

    goto :goto_4

    :catch_3
    move-exception v1

    goto :goto_4

    :catch_4
    move-exception v0

    goto :goto_0

    :catchall_1
    move-exception v0

    goto :goto_3

    :catch_5
    move-exception v0

    goto :goto_2
.end method

.method private static b(B)Z
    .locals 6

    const/4 v5, 0x1

    const/4 v4, 0x0

    if-eq p0, v5, :cond_1

    :cond_0
    return v5

    :cond_1
    :try_start_0
    invoke-static {}, Lcn/com/xy/sms/sdk/constant/Constant;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcn/com/xy/sms/sdk/net/util/c;->a(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0}, Ljava/util/Date;->getHours()I

    move-result v1

    sget-object v0, Lcn/com/xy/sms/sdk/net/util/o;->c:Ljava/util/HashMap;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    :goto_0
    sget-object v2, Lcn/com/xy/sms/sdk/net/util/o;->c:Ljava/util/HashMap;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/16 v1, 0x12c

    if-le v0, v1, :cond_0

    return v4

    :cond_2
    return v4

    :cond_3
    sget-object v0, Lcn/com/xy/sms/sdk/net/util/o;->c:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string/jumbo v1, "XIAOYUAN"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "testChannelVersion: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcn/com/xy/sms/sdk/log/LogManager;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return v4
.end method
