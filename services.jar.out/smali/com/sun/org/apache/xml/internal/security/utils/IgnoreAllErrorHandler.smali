.class public Lcom/sun/org/apache/xml/internal/security/utils/IgnoreAllErrorHandler;
.super Ljava/lang/Object;
.source "Unknown"

# interfaces
.implements Lorg/xml/sax/ErrorHandler;


# static fields
.field static synthetic class$com$sun$org$apache$xml$internal$security$utils$IgnoreAllErrorHandler:Ljava/lang/Class;

.field static log:Ljava/util/logging/Logger;

.field static final throwExceptions:Z

.field static final warnOnExceptions:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    sget-object v0, Lcom/sun/org/apache/xml/internal/security/utils/IgnoreAllErrorHandler;->class$com$sun$org$apache$xml$internal$security$utils$IgnoreAllErrorHandler:Ljava/lang/Class;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/sun/org/apache/xml/internal/security/utils/IgnoreAllErrorHandler;->class$com$sun$org$apache$xml$internal$security$utils$IgnoreAllErrorHandler:Ljava/lang/Class;

    :goto_0
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/sun/org/apache/xml/internal/security/utils/IgnoreAllErrorHandler;->log:Ljava/util/logging/Logger;

    const-string/jumbo v0, "com.sun.org.apache.xml.internal.security.test.warn.on.exceptions"

    const-string/jumbo v1, "false"

    invoke-static {v0, v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "true"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/sun/org/apache/xml/internal/security/utils/IgnoreAllErrorHandler;->warnOnExceptions:Z

    const-string/jumbo v0, "com.sun.org.apache.xml.internal.security.test.throw.exceptions"

    const-string/jumbo v1, "false"

    invoke-static {v0, v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "true"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/sun/org/apache/xml/internal/security/utils/IgnoreAllErrorHandler;->throwExceptions:Z

    return-void

    :cond_0
    const-string/jumbo v0, "com.sun.org.apache.xml.internal.security.utils.IgnoreAllErrorHandler"

    invoke-static {v0}, Lcom/sun/org/apache/xml/internal/security/utils/IgnoreAllErrorHandler;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lcom/sun/org/apache/xml/internal/security/utils/IgnoreAllErrorHandler;->class$com$sun$org$apache$xml$internal$security$utils$IgnoreAllErrorHandler:Ljava/lang/Class;

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic class$(Ljava/lang/String;)Ljava/lang/Class;
    .locals 2

    :try_start_0
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/NoClassDefFoundError;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/NoClassDefFoundError;-><init>(Ljava/lang/String;)V

    throw v1
.end method


# virtual methods
.method public error(Lorg/xml/sax/SAXParseException;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    sget-boolean v0, Lcom/sun/org/apache/xml/internal/security/utils/IgnoreAllErrorHandler;->warnOnExceptions:Z

    if-nez v0, :cond_0

    :goto_0
    sget-boolean v0, Lcom/sun/org/apache/xml/internal/security/utils/IgnoreAllErrorHandler;->throwExceptions:Z

    if-nez v0, :cond_1

    return-void

    :cond_0
    sget-object v0, Lcom/sun/org/apache/xml/internal/security/utils/IgnoreAllErrorHandler;->log:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    const-string/jumbo v2, ""

    invoke-virtual {v0, v1, v2, p1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_1
    throw p1
.end method

.method public fatalError(Lorg/xml/sax/SAXParseException;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    sget-boolean v0, Lcom/sun/org/apache/xml/internal/security/utils/IgnoreAllErrorHandler;->warnOnExceptions:Z

    if-nez v0, :cond_0

    :goto_0
    sget-boolean v0, Lcom/sun/org/apache/xml/internal/security/utils/IgnoreAllErrorHandler;->throwExceptions:Z

    if-nez v0, :cond_1

    return-void

    :cond_0
    sget-object v0, Lcom/sun/org/apache/xml/internal/security/utils/IgnoreAllErrorHandler;->log:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    const-string/jumbo v2, ""

    invoke-virtual {v0, v1, v2, p1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_1
    throw p1
.end method

.method public warning(Lorg/xml/sax/SAXParseException;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    sget-boolean v0, Lcom/sun/org/apache/xml/internal/security/utils/IgnoreAllErrorHandler;->warnOnExceptions:Z

    if-nez v0, :cond_0

    :goto_0
    sget-boolean v0, Lcom/sun/org/apache/xml/internal/security/utils/IgnoreAllErrorHandler;->throwExceptions:Z

    if-nez v0, :cond_1

    return-void

    :cond_0
    sget-object v0, Lcom/sun/org/apache/xml/internal/security/utils/IgnoreAllErrorHandler;->log:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    const-string/jumbo v2, ""

    invoke-virtual {v0, v1, v2, p1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_1
    throw p1
.end method
