.class Ljava/util/logging/LogManager$SystemLoggerContext;
.super Ljava/util/logging/LogManager$LoggerContext;
.source "LogManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/logging/LogManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "SystemLoggerContext"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 725
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Ljava/util/logging/LogManager$LoggerContext;-><init>(Ljava/util/logging/LogManager$LoggerContext;)V

    return-void
.end method


# virtual methods
.method demandLogger(Ljava/lang/String;Ljava/lang/String;)Ljava/util/logging/Logger;
    .locals 3
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "resourceBundleName"    # Ljava/lang/String;

    .prologue
    .line 731
    invoke-virtual {p0, p1}, Ljava/util/logging/LogManager$SystemLoggerContext;->findLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v1

    .line 732
    .local v1, "result":Ljava/util/logging/Logger;
    if-nez v1, :cond_1

    .line 734
    new-instance v0, Ljava/util/logging/Logger;

    invoke-direct {v0, p1, p2}, Ljava/util/logging/Logger;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 736
    .local v0, "newLogger":Ljava/util/logging/Logger;
    :cond_0
    invoke-virtual {p0, v0}, Ljava/util/logging/LogManager$SystemLoggerContext;->addLocalLogger(Ljava/util/logging/Logger;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 739
    move-object v1, v0

    .line 754
    :goto_0
    if-eqz v1, :cond_0

    .line 756
    .end local v0    # "newLogger":Ljava/util/logging/Logger;
    :cond_1
    return-object v1

    .line 752
    .restart local v0    # "newLogger":Ljava/util/logging/Logger;
    :cond_2
    invoke-virtual {p0, p1}, Ljava/util/logging/LogManager$SystemLoggerContext;->findLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v1

    goto :goto_0
.end method
