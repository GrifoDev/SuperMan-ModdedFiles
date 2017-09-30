.class public Lcom/cmcc/sso/sdk/util/LogUtil;
.super Ljava/lang/Object;


# static fields
.field private static final DEFAULT_TAG:Ljava/lang/String; = "CMCC_SSO_SDK"

.field private static final LOG_LEVEL:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static debug(Ljava/lang/String;)V
    .locals 1

    const-string v0, "CMCC_SSO_SDK"

    invoke-static {v0, p0}, Lcom/cmcc/sso/sdk/util/LogUtil;->debug(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static debug(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static error(Ljava/lang/String;)V
    .locals 1

    const-string v0, "CMCC_SSO_SDK"

    invoke-static {v0, p0}, Lcom/cmcc/sso/sdk/util/LogUtil;->error(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static error(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0

    invoke-static {p0, p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method public static error(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    const-string v0, "CMCC_SSO_SDK"

    invoke-static {v0, p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method public static info(Ljava/lang/String;)V
    .locals 1

    const-string v0, "CMCC_SSO_SDK"

    invoke-static {v0, p0}, Lcom/cmcc/sso/sdk/util/LogUtil;->info(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private static info(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static verbose(Ljava/lang/String;)V
    .locals 1

    const-string v0, "CMCC_SSO_SDK"

    invoke-static {v0, p0}, Lcom/cmcc/sso/sdk/util/LogUtil;->verbose(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static verbose(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-static {p0, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static warn(Ljava/lang/String;)V
    .locals 1

    const-string v0, "CMCC_SSO_SDK"

    invoke-static {v0, p0}, Lcom/cmcc/sso/sdk/util/LogUtil;->warn(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static warn(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static warn(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0

    invoke-static {p0, p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method public static warn(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    const-string v0, "CMCC_SSO_SDK"

    invoke-static {v0, p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method
