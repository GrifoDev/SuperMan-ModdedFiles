.class public Lcom/sun/org/apache/xml/internal/security/exceptions/XMLSecurityException;
.super Ljava/lang/Exception;
.source "Unknown"


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field protected msgID:Ljava/lang/String;

.field protected originalException:Ljava/lang/Exception;


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    const-string/jumbo v0, "Missing message string"

    invoke-direct {p0, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/sun/org/apache/xml/internal/security/exceptions/XMLSecurityException;->originalException:Ljava/lang/Exception;

    iput-object v1, p0, Lcom/sun/org/apache/xml/internal/security/exceptions/XMLSecurityException;->msgID:Ljava/lang/String;

    iput-object v1, p0, Lcom/sun/org/apache/xml/internal/security/exceptions/XMLSecurityException;->originalException:Ljava/lang/Exception;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Exception;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string/jumbo v1, "Missing message ID to locate message string in resource bundle \"com/sun/org/apache/xml/internal/security/resource/xmlsecurity\". Original Exception was a "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string/jumbo v1, " and message "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sun/org/apache/xml/internal/security/exceptions/XMLSecurityException;->originalException:Ljava/lang/Exception;

    iput-object p1, p0, Lcom/sun/org/apache/xml/internal/security/exceptions/XMLSecurityException;->originalException:Ljava/lang/Exception;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    const/4 v1, 0x0

    invoke-static {p1}, Lcom/sun/org/apache/xml/internal/security/utils/I18n;->getExceptionMessage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/sun/org/apache/xml/internal/security/exceptions/XMLSecurityException;->originalException:Ljava/lang/Exception;

    iput-object p1, p0, Lcom/sun/org/apache/xml/internal/security/exceptions/XMLSecurityException;->msgID:Ljava/lang/String;

    iput-object v1, p0, Lcom/sun/org/apache/xml/internal/security/exceptions/XMLSecurityException;->originalException:Ljava/lang/Exception;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Exception;)V
    .locals 1

    invoke-static {p1, p2}, Lcom/sun/org/apache/xml/internal/security/utils/I18n;->getExceptionMessage(Ljava/lang/String;Ljava/lang/Exception;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sun/org/apache/xml/internal/security/exceptions/XMLSecurityException;->originalException:Ljava/lang/Exception;

    iput-object p1, p0, Lcom/sun/org/apache/xml/internal/security/exceptions/XMLSecurityException;->msgID:Ljava/lang/String;

    iput-object p2, p0, Lcom/sun/org/apache/xml/internal/security/exceptions/XMLSecurityException;->originalException:Ljava/lang/Exception;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 2

    const/4 v1, 0x0

    invoke-static {p1}, Lcom/sun/org/apache/xml/internal/security/utils/I18n;->getExceptionMessage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p2}, Ljava/text/MessageFormat;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/sun/org/apache/xml/internal/security/exceptions/XMLSecurityException;->originalException:Ljava/lang/Exception;

    iput-object p1, p0, Lcom/sun/org/apache/xml/internal/security/exceptions/XMLSecurityException;->msgID:Ljava/lang/String;

    iput-object v1, p0, Lcom/sun/org/apache/xml/internal/security/exceptions/XMLSecurityException;->originalException:Ljava/lang/Exception;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/Exception;)V
    .locals 1

    invoke-static {p1}, Lcom/sun/org/apache/xml/internal/security/utils/I18n;->getExceptionMessage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p2}, Ljava/text/MessageFormat;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sun/org/apache/xml/internal/security/exceptions/XMLSecurityException;->originalException:Ljava/lang/Exception;

    iput-object p1, p0, Lcom/sun/org/apache/xml/internal/security/exceptions/XMLSecurityException;->msgID:Ljava/lang/String;

    iput-object p3, p0, Lcom/sun/org/apache/xml/internal/security/exceptions/XMLSecurityException;->originalException:Ljava/lang/Exception;

    return-void
.end method


# virtual methods
.method public getMsgID()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/security/exceptions/XMLSecurityException;->msgID:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/security/exceptions/XMLSecurityException;->msgID:Ljava/lang/String;

    return-object v0

    :cond_0
    const-string/jumbo v0, "Missing message ID"

    return-object v0
.end method

.method public getOriginalException()Ljava/lang/Exception;
    .locals 1

    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/security/exceptions/XMLSecurityException;->originalException:Ljava/lang/Exception;

    return-object v0
.end method

.method public printStackTrace()V
    .locals 3

    sget-object v1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    monitor-enter v1

    :try_start_0
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-super {p0, v0}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintStream;)V

    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/security/exceptions/XMLSecurityException;->originalException:Ljava/lang/Exception;

    if-nez v0, :cond_0

    :goto_0
    monitor-exit v1

    return-void

    :cond_0
    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/security/exceptions/XMLSecurityException;->originalException:Ljava/lang/Exception;

    sget-object v2, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v0, v2}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintStream;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public printStackTrace(Ljava/io/PrintStream;)V
    .locals 1

    invoke-super {p0, p1}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintStream;)V

    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/security/exceptions/XMLSecurityException;->originalException:Ljava/lang/Exception;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/security/exceptions/XMLSecurityException;->originalException:Ljava/lang/Exception;

    invoke-virtual {v0, p1}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintStream;)V

    goto :goto_0
.end method

.method public printStackTrace(Ljava/io/PrintWriter;)V
    .locals 1

    invoke-super {p0, p1}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintWriter;)V

    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/security/exceptions/XMLSecurityException;->originalException:Ljava/lang/Exception;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/security/exceptions/XMLSecurityException;->originalException:Ljava/lang/Exception;

    invoke-virtual {v0, p1}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintWriter;)V

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-super {p0}, Ljava/lang/Throwable;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    :goto_0
    iget-object v1, p0, Lcom/sun/org/apache/xml/internal/security/exceptions/XMLSecurityException;->originalException:Ljava/lang/Exception;

    if-nez v1, :cond_1

    :goto_1
    return-object v0

    :cond_0
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string/jumbo v2, ": "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string/jumbo v1, "\nOriginal Exception was "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p0, Lcom/sun/org/apache/xml/internal/security/exceptions/XMLSecurityException;->originalException:Ljava/lang/Exception;

    invoke-virtual {v1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method
