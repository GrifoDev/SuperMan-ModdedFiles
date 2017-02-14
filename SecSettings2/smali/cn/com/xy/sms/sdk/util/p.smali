.class public final Lcn/com/xy/sms/sdk/util/p;
.super Ljava/lang/Object;
.source "Unknown"


# static fields
.field private static a:I = 0x0

.field private static b:I = 0x8

.field private static c:I = 0x100

.field private static d:I = 0x7

.field private static e:I = 0x80

.field private static f:I = 0x6

.field private static g:I = 0x40

.field private static h:I = 0x5

.field private static i:I = 0x20

.field private static j:I = 0x4

.field private static k:I = 0x10

.field private static l:I = 0x3

.field private static m:I = 0x8

.field private static n:I = 0x2

.field private static o:I = 0x4

.field private static p:I = 0x1

.field private static q:I = 0x2


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput v0, Lcn/com/xy/sms/sdk/util/p;->a:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(II)I
    .locals 2

    invoke-static {}, Lcn/com/xy/sms/sdk/constant/Constant;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "RECORD_FUNCTION_STATE"

    invoke-static {v0, v1}, Lcn/com/xy/sms/sdk/db/entity/SysParamEntityManager;->getStringParam(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    and-int/2addr v0, p0

    shr-int/2addr v0, p1

    return v0
.end method

.method public static a()Ljava/lang/String;
    .locals 2

    sget v0, Lcn/com/xy/sms/sdk/util/p;->a:I

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    sget v0, Lcn/com/xy/sms/sdk/util/p;->a:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_1
    invoke-static {}, Lcn/com/xy/sms/sdk/constant/Constant;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "RECORD_FUNCTION_STATE"

    invoke-static {v0, v1}, Lcn/com/xy/sms/sdk/db/entity/SysParamEntityManager;->getStringParam(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcn/com/xy/sms/sdk/util/p;->a:I

    goto :goto_0
.end method

.method public static a(I)V
    .locals 3

    const/4 v0, 0x0

    invoke-static {}, Lcn/com/xy/sms/sdk/constant/Constant;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string/jumbo v2, "RECORD_FUNCTION_STATE"

    invoke-static {v1, v2}, Lcn/com/xy/sms/sdk/db/entity/SysParamEntityManager;->getStringParam(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    :goto_0
    or-int v1, v0, p0

    sput v1, Lcn/com/xy/sms/sdk/util/p;->a:I

    if-ne v1, v0, :cond_1

    :goto_1
    return-void

    :cond_0
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    goto :goto_0

    :cond_1
    const-string/jumbo v0, "RECORD_FUNCTION_STATE"

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/com/xy/sms/sdk/db/entity/SysParamEntityManager;->setParam(Ljava/lang/String;Ljava/lang/String;)J

    goto :goto_1
.end method

.method private static b(I)V
    .locals 2

    invoke-static {}, Lcn/com/xy/sms/sdk/constant/Constant;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "RECORD_FUNCTION_STATE"

    invoke-static {v0, v1}, Lcn/com/xy/sms/sdk/db/entity/SysParamEntityManager;->getStringParam(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    xor-int/lit8 v1, p0, -0x1

    and-int/2addr v0, v1

    const-string/jumbo v1, "RECORD_FUNCTION_STATE"

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcn/com/xy/sms/sdk/db/entity/SysParamEntityManager;->setParam(Ljava/lang/String;Ljava/lang/String;)J

    return-void
.end method

.method private static c(I)Ljava/lang/Boolean;
    .locals 2

    invoke-static {}, Lcn/com/xy/sms/sdk/constant/Constant;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "RECORD_FUNCTION_STATE"

    invoke-static {v0, v1}, Lcn/com/xy/sms/sdk/db/entity/SysParamEntityManager;->getStringParam(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    and-int/2addr v0, p0

    if-eq v0, p0, :cond_0

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method
