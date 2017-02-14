.class final Lsun/util/logging/PlatformLogger$JavaLoggerProxy;
.super Lsun/util/logging/PlatformLogger$LoggerProxy;
.source "PlatformLogger.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lsun/util/logging/PlatformLogger;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "JavaLoggerProxy"
.end annotation


# instance fields
.field private final javaLogger:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    invoke-static {}, Lsun/util/logging/PlatformLogger$Level;->values()[Lsun/util/logging/PlatformLogger$Level;

    move-result-object v2

    const/4 v1, 0x0

    array-length v3, v2

    :goto_0
    if-ge v1, v3, :cond_0

    aget-object v0, v2, v1

    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lsun/util/logging/LoggingSupport;->parseLevel(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    iput-object v4, v0, Lsun/util/logging/PlatformLogger$Level;->javaLevel:Ljava/lang/Object;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method constructor <init>(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lsun/util/logging/PlatformLogger$JavaLoggerProxy;-><init>(Ljava/lang/String;Lsun/util/logging/PlatformLogger$Level;)V

    return-void
.end method

.method constructor <init>(Ljava/lang/String;Lsun/util/logging/PlatformLogger$Level;)V
    .locals 2

    invoke-direct {p0, p1}, Lsun/util/logging/PlatformLogger$LoggerProxy;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lsun/util/logging/LoggingSupport;->getLogger(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lsun/util/logging/PlatformLogger$JavaLoggerProxy;->javaLogger:Ljava/lang/Object;

    if-eqz p2, :cond_0

    iget-object v0, p0, Lsun/util/logging/PlatformLogger$JavaLoggerProxy;->javaLogger:Ljava/lang/Object;

    iget-object v1, p2, Lsun/util/logging/PlatformLogger$Level;->javaLevel:Ljava/lang/Object;

    invoke-static {v0, v1}, Lsun/util/logging/LoggingSupport;->setLevel(Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    return-void
.end method


# virtual methods
.method doLog(Lsun/util/logging/PlatformLogger$Level;Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lsun/util/logging/PlatformLogger$JavaLoggerProxy;->javaLogger:Ljava/lang/Object;

    iget-object v1, p1, Lsun/util/logging/PlatformLogger$Level;->javaLevel:Ljava/lang/Object;

    invoke-static {v0, v1, p2}, Lsun/util/logging/LoggingSupport;->log(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method doLog(Lsun/util/logging/PlatformLogger$Level;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2

    iget-object v0, p0, Lsun/util/logging/PlatformLogger$JavaLoggerProxy;->javaLogger:Ljava/lang/Object;

    iget-object v1, p1, Lsun/util/logging/PlatformLogger$Level;->javaLevel:Ljava/lang/Object;

    invoke-static {v0, v1, p2, p3}, Lsun/util/logging/LoggingSupport;->log(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method varargs doLog(Lsun/util/logging/PlatformLogger$Level;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 5

    invoke-virtual {p0, p1}, Lsun/util/logging/PlatformLogger$JavaLoggerProxy;->isLoggable(Lsun/util/logging/PlatformLogger$Level;)Z

    move-result v3

    if-nez v3, :cond_0

    return-void

    :cond_0
    if-eqz p3, :cond_1

    array-length v1, p3

    :goto_0
    new-array v2, v1, [Ljava/lang/String;

    const/4 v0, 0x0

    :goto_1
    if-ge v0, v1, :cond_2

    aget-object v3, p3, v0

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    :cond_2
    iget-object v3, p0, Lsun/util/logging/PlatformLogger$JavaLoggerProxy;->javaLogger:Ljava/lang/Object;

    iget-object v4, p1, Lsun/util/logging/PlatformLogger$Level;->javaLevel:Ljava/lang/Object;

    invoke-static {v3, v4, p2, v2}, Lsun/util/logging/LoggingSupport;->log(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method getLevel()Lsun/util/logging/PlatformLogger$Level;
    .locals 4

    const/4 v3, 0x0

    iget-object v2, p0, Lsun/util/logging/PlatformLogger$JavaLoggerProxy;->javaLogger:Ljava/lang/Object;

    invoke-static {v2}, Lsun/util/logging/LoggingSupport;->getLevel(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_0

    return-object v3

    :cond_0
    :try_start_0
    invoke-static {v1}, Lsun/util/logging/LoggingSupport;->getLevelName(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lsun/util/logging/PlatformLogger$Level;->valueOf(Ljava/lang/String;)Lsun/util/logging/PlatformLogger$Level;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    return-object v2

    :catch_0
    move-exception v0

    invoke-static {v1}, Lsun/util/logging/LoggingSupport;->getLevelValue(Ljava/lang/Object;)I

    move-result v2

    invoke-static {v2}, Lsun/util/logging/PlatformLogger$Level;->valueOf(I)Lsun/util/logging/PlatformLogger$Level;

    move-result-object v2

    return-object v2
.end method

.method isEnabled()Z
    .locals 2

    iget-object v0, p0, Lsun/util/logging/PlatformLogger$JavaLoggerProxy;->javaLogger:Ljava/lang/Object;

    sget-object v1, Lsun/util/logging/PlatformLogger$Level;->OFF:Lsun/util/logging/PlatformLogger$Level;

    iget-object v1, v1, Lsun/util/logging/PlatformLogger$Level;->javaLevel:Ljava/lang/Object;

    invoke-static {v0, v1}, Lsun/util/logging/LoggingSupport;->isLoggable(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method isLoggable(Lsun/util/logging/PlatformLogger$Level;)Z
    .locals 2

    iget-object v0, p0, Lsun/util/logging/PlatformLogger$JavaLoggerProxy;->javaLogger:Ljava/lang/Object;

    iget-object v1, p1, Lsun/util/logging/PlatformLogger$Level;->javaLevel:Ljava/lang/Object;

    invoke-static {v0, v1}, Lsun/util/logging/LoggingSupport;->isLoggable(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method setLevel(Lsun/util/logging/PlatformLogger$Level;)V
    .locals 2

    const/4 v0, 0x0

    iget-object v1, p0, Lsun/util/logging/PlatformLogger$JavaLoggerProxy;->javaLogger:Ljava/lang/Object;

    if-nez p1, :cond_0

    :goto_0
    invoke-static {v1, v0}, Lsun/util/logging/LoggingSupport;->setLevel(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void

    :cond_0
    iget-object v0, p1, Lsun/util/logging/PlatformLogger$Level;->javaLevel:Ljava/lang/Object;

    goto :goto_0
.end method
