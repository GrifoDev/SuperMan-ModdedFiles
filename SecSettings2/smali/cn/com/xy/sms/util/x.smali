.class public final Lcn/com/xy/sms/util/x;
.super Ljava/lang/Object;
.source "Unknown"


# static fields
.field private static a:Ljava/lang/String;

.field private static b:[C

.field private static c:S


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcn/com/xy/sms/util/x;->a:Ljava/lang/String;

    const-string/jumbo v0, "0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ"

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    sput-object v0, Lcn/com/xy/sms/util/x;->b:[C

    const/16 v0, 0x14

    sput-short v0, Lcn/com/xy/sms/util/x;->c:S

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a()Ljava/lang/String;
    .locals 2

    const/4 v1, 0x0

    sget-object v0, Lcn/com/xy/sms/util/x;->a:Ljava/lang/String;

    if-nez v0, :cond_1

    const-string/jumbo v0, "ro.aliyun.clouduuid"

    invoke-static {v0, v1}, Lcn/com/xy/sms/util/x;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcn/com/xy/sms/util/x;->a:Ljava/lang/String;

    if-nez v0, :cond_2

    :cond_0
    const-string/jumbo v0, "ro.sys.aliyun.clouduuid"

    invoke-static {v0, v1}, Lcn/com/xy/sms/util/x;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcn/com/xy/sms/util/x;->a:Ljava/lang/String;

    :goto_0
    sget-object v0, Lcn/com/xy/sms/util/x;->a:Ljava/lang/String;

    return-object v0

    :cond_1
    sget-object v0, Lcn/com/xy/sms/util/x;->a:Ljava/lang/String;

    return-object v0

    :cond_2
    sget-object v0, Lcn/com/xy/sms/util/x;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0
.end method

.method private static a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    const/4 v5, 0x0

    :try_start_0
    const-string/jumbo v0, "android.os.SystemProperties"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string/jumbo v1, "get"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    const-class v4, Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-class v4, Ljava/lang/String;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    const/4 v2, 0x1

    const/4 v3, 0x0

    aput-object v3, v1, v2

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    return-object v5
.end method

.method private static b()Ljava/lang/String;
    .locals 13

    const/4 v2, 0x1

    const/4 v3, 0x0

    const-wide/16 v10, 0x24

    sget-short v0, Lcn/com/xy/sms/util/x;->c:S

    new-array v6, v0, [C

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide v4, 0xda1a945800L

    sub-long/2addr v0, v4

    shr-long v4, v0, v2

    const/4 v0, 0x7

    :goto_0
    if-lez v0, :cond_0

    sget-object v1, Lcn/com/xy/sms/util/x;->b:[C

    rem-long v8, v4, v10

    long-to-int v7, v8

    aget-char v1, v1, v7

    int-to-char v1, v1

    aput-char v1, v6, v0

    div-long/2addr v4, v10

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    sget-object v0, Lcn/com/xy/sms/util/x;->b:[C

    const-wide/16 v8, 0x1a

    rem-long/2addr v4, v8

    long-to-int v1, v4

    add-int/lit8 v1, v1, 0xa

    aget-char v0, v0, v1

    int-to-char v0, v0

    aput-char v0, v6, v3

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->getLeastSignificantBits()J

    move-result-wide v4

    invoke-virtual {v0}, Ljava/util/UUID;->getMostSignificantBits()J

    move-result-wide v0

    xor-long/2addr v0, v4

    const-wide/16 v4, 0x0

    cmp-long v4, v0, v4

    if-ltz v4, :cond_2

    :goto_1
    if-nez v2, :cond_1

    neg-long v0, v0

    :cond_1
    const/16 v2, 0x8

    move v12, v2

    move-wide v2, v0

    move v0, v12

    :goto_2
    sget-short v1, Lcn/com/xy/sms/util/x;->c:S

    if-ge v0, v1, :cond_3

    sget-object v1, Lcn/com/xy/sms/util/x;->b:[C

    rem-long v4, v2, v10

    long-to-int v4, v4

    aget-char v1, v1, v4

    int-to-char v1, v1

    aput-char v1, v6, v0

    div-long/2addr v2, v10

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_2
    move v2, v3

    goto :goto_1

    :cond_3
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v6}, Ljava/lang/String;-><init>([C)V

    return-object v0
.end method
