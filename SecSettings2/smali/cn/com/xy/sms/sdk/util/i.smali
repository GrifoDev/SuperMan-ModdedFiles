.class public final Lcn/com/xy/sms/sdk/util/i;
.super Ljava/lang/Object;
.source "Unknown"

# interfaces
.implements Lcn/com/xy/sms/sdk/Iservice/IActionService;


# static fields
.field private static a:Lcn/com/xy/sms/sdk/Iservice/IActionService;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcn/com/xy/sms/sdk/util/i;

    invoke-direct {v0}, Lcn/com/xy/sms/sdk/util/i;-><init>()V

    sput-object v0, Lcn/com/xy/sms/sdk/util/i;->a:Lcn/com/xy/sms/sdk/Iservice/IActionService;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)Z
    .locals 5

    const/4 v4, 0x0

    const/4 v0, 0x0

    :try_start_0
    invoke-static {v0}, Lcn/com/xy/sms/sdk/dex/DexUtil;->getActionInterfaceImpl(Z)Lcn/com/xy/sms/sdk/Iservice/IActionService;

    move-result-object v0

    if-nez v0, :cond_0

    sget-object v0, Lcn/com/xy/sms/sdk/util/i;->a:Lcn/com/xy/sms/sdk/Iservice/IActionService;

    invoke-interface {v0, p0, p1, p2, p3}, Lcn/com/xy/sms/sdk/Iservice/IActionService;->startAppActionViewURL(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)Z

    move-result v0

    return v0

    :cond_0
    invoke-interface {v0, p0, p1, p2, p3}, Lcn/com/xy/sms/sdk/Iservice/IActionService;->startAppActionViewURL(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    return v0

    :catch_0
    move-exception v0

    const-string/jumbo v1, "XIAOYUAN"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "LocalActionImpl startAppActionViewByURL "

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

.method public static a(Landroid/content/Context;Ljava/lang/String;Lorg/json/JSONObject;)Z
    .locals 5

    const/4 v4, 0x0

    const/4 v0, 0x0

    :try_start_0
    invoke-static {v0}, Lcn/com/xy/sms/sdk/dex/DexUtil;->getActionInterfaceImpl(Z)Lcn/com/xy/sms/sdk/Iservice/IActionService;

    move-result-object v0

    if-nez v0, :cond_0

    :goto_0
    return v4

    :cond_0
    invoke-interface {v0, p0, p1, p2}, Lcn/com/xy/sms/sdk/Iservice/IActionService;->doAction(Landroid/content/Context;Ljava/lang/String;Lorg/json/JSONObject;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    return v0

    :catch_0
    move-exception v0

    const-string/jumbo v1, "XIAOYUAN"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "doActionOnImpl: "

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


# virtual methods
.method public final doAction(Landroid/content/Context;Ljava/lang/String;Lorg/json/JSONObject;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final startAppActionViewURL(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)Z
    .locals 5

    const/4 v4, 0x0

    if-nez p1, :cond_1

    :cond_0
    return v4

    :cond_1
    :try_start_0
    invoke-static {p2}, Lcn/com/xy/sms/sdk/util/StringUtils;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-static {p3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    const-string/jumbo v1, "android.intent.action.VIEW"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v1, 0x20000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const/high16 v1, 0x14000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    return v0

    :cond_2
    return v4

    :catch_0
    move-exception v0

    const-string/jumbo v1, "XIAOYUAN"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "startAppActionViewURL: "

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
