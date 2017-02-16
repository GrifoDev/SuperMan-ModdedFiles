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

    .prologue
    const/4 v1, 0x0

    .line 10
    sput-boolean v1, Landroid/util/secutil/LogSwitcher;->isShowingGlobalLog:Z

    .line 12
    sput-boolean v1, Landroid/util/secutil/LogSwitcher;->isShowingSecVLog:Z

    .line 13
    sput-boolean v1, Landroid/util/secutil/LogSwitcher;->isShowingSecDLog:Z

    .line 14
    sput-boolean v1, Landroid/util/secutil/LogSwitcher;->isShowingSecILog:Z

    .line 15
    sput-boolean v1, Landroid/util/secutil/LogSwitcher;->isShowingSecWLog:Z

    .line 16
    sput-boolean v1, Landroid/util/secutil/LogSwitcher;->isShowingSecELog:Z

    .line 18
    sput-boolean v1, Landroid/util/secutil/LogSwitcher;->isShowingSecWtfLog:Z

    .line 24
    :try_start_0
    const-string/jumbo v1, "1"

    const-string/jumbo v2, "persist.log.seclevel"

    const-string/jumbo v3, "0"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    sput-boolean v1, Landroid/util/secutil/LogSwitcher;->isShowingGlobalLog:Z

    .line 28
    sget-boolean v1, Landroid/util/secutil/LogSwitcher;->isShowingGlobalLog:Z

    sput-boolean v1, Landroid/util/secutil/LogSwitcher;->isShowingSecVLog:Z

    .line 29
    sget-boolean v1, Landroid/util/secutil/LogSwitcher;->isShowingGlobalLog:Z

    sput-boolean v1, Landroid/util/secutil/LogSwitcher;->isShowingSecDLog:Z

    .line 30
    sget-boolean v1, Landroid/util/secutil/LogSwitcher;->isShowingGlobalLog:Z

    sput-boolean v1, Landroid/util/secutil/LogSwitcher;->isShowingSecILog:Z

    .line 31
    sget-boolean v1, Landroid/util/secutil/LogSwitcher;->isShowingGlobalLog:Z

    sput-boolean v1, Landroid/util/secutil/LogSwitcher;->isShowingSecWLog:Z

    .line 32
    sget-boolean v1, Landroid/util/secutil/LogSwitcher;->isShowingGlobalLog:Z

    sput-boolean v1, Landroid/util/secutil/LogSwitcher;->isShowingSecELog:Z

    .line 34
    sget-boolean v1, Landroid/util/secutil/LogSwitcher;->isShowingGlobalLog:Z

    sput-boolean v1, Landroid/util/secutil/LogSwitcher;->isShowingSecWtfLog:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 8
    .local v0, "e":Ljava/lang/Exception;
    :goto_0
    return-void

    .line 35
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_0
    move-exception v0

    .restart local v0    # "e":Ljava/lang/Exception;
    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
