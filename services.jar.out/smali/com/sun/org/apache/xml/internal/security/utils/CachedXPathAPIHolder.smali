.class public Lcom/sun/org/apache/xml/internal/security/utils/CachedXPathAPIHolder;
.super Ljava/lang/Object;
.source "Unknown"


# static fields
.field static synthetic class$com$sun$org$apache$xml$internal$security$utils$CachedXPathAPIHolder:Ljava/lang/Class;

.field static local:Ljava/lang/ThreadLocal;

.field static localDoc:Ljava/lang/ThreadLocal;

.field static log:Ljava/util/logging/Logger;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lcom/sun/org/apache/xml/internal/security/utils/CachedXPathAPIHolder;->class$com$sun$org$apache$xml$internal$security$utils$CachedXPathAPIHolder:Ljava/lang/Class;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/sun/org/apache/xml/internal/security/utils/CachedXPathAPIHolder;->class$com$sun$org$apache$xml$internal$security$utils$CachedXPathAPIHolder:Ljava/lang/Class;

    :goto_0
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/sun/org/apache/xml/internal/security/utils/CachedXPathAPIHolder;->log:Ljava/util/logging/Logger;

    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v0, Lcom/sun/org/apache/xml/internal/security/utils/CachedXPathAPIHolder;->local:Ljava/lang/ThreadLocal;

    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v0, Lcom/sun/org/apache/xml/internal/security/utils/CachedXPathAPIHolder;->localDoc:Ljava/lang/ThreadLocal;

    return-void

    :cond_0
    const-string/jumbo v0, "com.sun.org.apache.xml.internal.security.utils.CachedXPathAPIHolder"

    invoke-static {v0}, Lcom/sun/org/apache/xml/internal/security/utils/CachedXPathAPIHolder;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lcom/sun/org/apache/xml/internal/security/utils/CachedXPathAPIHolder;->class$com$sun$org$apache$xml$internal$security$utils$CachedXPathAPIHolder:Ljava/lang/Class;

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

.method public static getCachedXPathAPI()Lcom/sun/org/apache/xpath/internal/CachedXPathAPI;
    .locals 3

    const/4 v2, 0x0

    sget-object v0, Lcom/sun/org/apache/xml/internal/security/utils/CachedXPathAPIHolder;->local:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sun/org/apache/xpath/internal/CachedXPathAPI;

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/sun/org/apache/xpath/internal/CachedXPathAPI;

    invoke-direct {v0}, Lcom/sun/org/apache/xpath/internal/CachedXPathAPI;-><init>()V

    sget-object v1, Lcom/sun/org/apache/xml/internal/security/utils/CachedXPathAPIHolder;->local:Ljava/lang/ThreadLocal;

    invoke-virtual {v1, v0}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    sget-object v1, Lcom/sun/org/apache/xml/internal/security/utils/CachedXPathAPIHolder;->localDoc:Ljava/lang/ThreadLocal;

    invoke-virtual {v1, v2}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public static setDoc(Lorg/w3c/dom/Document;)V
    .locals 2

    sget-object v0, Lcom/sun/org/apache/xml/internal/security/utils/CachedXPathAPIHolder;->localDoc:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    if-ne v0, p0, :cond_0

    :goto_0
    return-void

    :cond_0
    sget-object v0, Lcom/sun/org/apache/xml/internal/security/utils/CachedXPathAPIHolder;->local:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sun/org/apache/xpath/internal/CachedXPathAPI;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/sun/org/apache/xpath/internal/CachedXPathAPI;->getXPathContext()Lcom/sun/org/apache/xpath/internal/XPathContext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sun/org/apache/xpath/internal/XPathContext;->reset()V

    sget-object v0, Lcom/sun/org/apache/xml/internal/security/utils/CachedXPathAPIHolder;->localDoc:Ljava/lang/ThreadLocal;

    invoke-virtual {v0, p0}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    new-instance v0, Lcom/sun/org/apache/xpath/internal/CachedXPathAPI;

    invoke-direct {v0}, Lcom/sun/org/apache/xpath/internal/CachedXPathAPI;-><init>()V

    sget-object v1, Lcom/sun/org/apache/xml/internal/security/utils/CachedXPathAPIHolder;->local:Ljava/lang/ThreadLocal;

    invoke-virtual {v1, v0}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    sget-object v0, Lcom/sun/org/apache/xml/internal/security/utils/CachedXPathAPIHolder;->localDoc:Ljava/lang/ThreadLocal;

    invoke-virtual {v0, p0}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    return-void
.end method
