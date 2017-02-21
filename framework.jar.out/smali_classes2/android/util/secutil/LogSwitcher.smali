.class public final Landroid/util/secutil/LogSwitcher;
.super Ljava/lang/Object;
.source "LogSwitcher.java"


# static fields
.field public static isShowingGlobalLog:Z

.field public static isShowingSecDLog:Z

.field public static isShowingSecELog:Z

.field public static isShowingSecILog:Z

.field public static isShowingSecVLog:Z

.field public static isShowingSecWLog:Z

.field public static isShowingSecWtfLog:Z


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v1, 0x0

    sput-boolean v1, Landroid/util/secutil/LogSwitcher;->isShowingGlobalLog:Z

    sput-boolean v1, Landroid/util/secutil/LogSwitcher;->isShowingSecVLog:Z

    sput-boolean v1, Landroid/util/secutil/LogSwitcher;->isShowingSecDLog:Z

    sput-boolean v1, Landroid/util/secutil/LogSwitcher;->isShowingSecILog:Z

    sput-boolean v1, Landroid/util/secutil/LogSwitcher;->isShowingSecWLog:Z

    sput-boolean v1, Landroid/util/secutil/LogSwitcher;->isShowingSecELog:Z

    sput-boolean v1, Landroid/util/secutil/LogSwitcher;->isShowingSecWtfLog:Z

    :try_start_0
    const-string/jumbo v1, "1"

    const-string/jumbo v2, "persist.log.seclevel"

    const-string/jumbo v3, "0"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    sput-boolean v1, Landroid/util/secutil/LogSwitcher;->isShowingGlobalLog:Z

    sget-boolean v1, Landroid/util/secutil/LogSwitcher;->isShowingGlobalLog:Z

    sput-boolean v1, Landroid/util/secutil/LogSwitcher;->isShowingSecVLog:Z

    sget-boolean v1, Landroid/util/secutil/LogSwitcher;->isShowingGlobalLog:Z

    sput-boolean v1, Landroid/util/secutil/LogSwitcher;->isShowingSecDLog:Z

    sget-boolean v1, Landroid/util/secutil/LogSwitcher;->isShowingGlobalLog:Z

    sput-boolean v1, Landroid/util/secutil/LogSwitcher;->isShowingSecILog:Z

    sget-boolean v1, Landroid/util/secutil/LogSwitcher;->isShowingGlobalLog:Z

    sput-boolean v1, Landroid/util/secutil/LogSwitcher;->isShowingSecWLog:Z

    sget-boolean v1, Landroid/util/secutil/LogSwitcher;->isShowingGlobalLog:Z

    sput-boolean v1, Landroid/util/secutil/LogSwitcher;->isShowingSecELog:Z

    sget-boolean v1, Landroid/util/secutil/LogSwitcher;->isShowingGlobalLog:Z

    sput-boolean v1, Landroid/util/secutil/LogSwitcher;->isShowingSecWtfLog:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
