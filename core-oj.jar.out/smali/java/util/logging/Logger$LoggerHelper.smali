.class Ljava/util/logging/Logger$LoggerHelper;
.super Ljava/lang/Object;
.source "Logger.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/logging/Logger;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "LoggerHelper"
.end annotation


# static fields
.field static allowStackWalkSearch:Z

.field static disableCallerCheck:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string/jumbo v0, "sun.util.logging.disableCallerCheck"

    invoke-static {v0}, Ljava/util/logging/Logger$LoggerHelper;->getBooleanProperty(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Ljava/util/logging/Logger$LoggerHelper;->disableCallerCheck:Z

    const-string/jumbo v0, "jdk.logging.allowStackWalkSearch"

    invoke-static {v0}, Ljava/util/logging/Logger$LoggerHelper;->getBooleanProperty(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Ljava/util/logging/Logger$LoggerHelper;->allowStackWalkSearch:Z

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static getBooleanProperty(Ljava/lang/String;)Z
    .locals 2

    new-instance v1, Ljava/util/logging/Logger$LoggerHelper$1;

    invoke-direct {v1, p0}, Ljava/util/logging/Logger$LoggerHelper$1;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    return v1
.end method
