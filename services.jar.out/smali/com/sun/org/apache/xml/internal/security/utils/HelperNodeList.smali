.class public Lcom/sun/org/apache/xml/internal/security/utils/HelperNodeList;
.super Ljava/lang/Object;
.source "Unknown"

# interfaces
.implements Lorg/w3c/dom/NodeList;


# static fields
.field static synthetic class$com$sun$org$apache$xml$internal$security$utils$HelperNodeList:Ljava/lang/Class;

.field static log:Ljava/util/logging/Logger;


# instance fields
.field _allNodesMustHaveSameParent:Z

.field nodes:Ljava/util/ArrayList;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lcom/sun/org/apache/xml/internal/security/utils/HelperNodeList;->class$com$sun$org$apache$xml$internal$security$utils$HelperNodeList:Ljava/lang/Class;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/sun/org/apache/xml/internal/security/utils/HelperNodeList;->class$com$sun$org$apache$xml$internal$security$utils$HelperNodeList:Ljava/lang/Class;

    :goto_0
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/sun/org/apache/xml/internal/security/utils/HelperNodeList;->log:Ljava/util/logging/Logger;

    return-void

    :cond_0
    const-string/jumbo v0, "com.sun.org.apache.xml.internal.security.utils.HelperNodeList"

    invoke-static {v0}, Lcom/sun/org/apache/xml/internal/security/utils/HelperNodeList;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lcom/sun/org/apache/xml/internal/security/utils/HelperNodeList;->class$com$sun$org$apache$xml$internal$security$utils$HelperNodeList:Ljava/lang/Class;

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/sun/org/apache/xml/internal/security/utils/HelperNodeList;-><init>(Z)V

    return-void
.end method

.method public constructor <init>(Z)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0x14

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/sun/org/apache/xml/internal/security/utils/HelperNodeList;->nodes:Ljava/util/ArrayList;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sun/org/apache/xml/internal/security/utils/HelperNodeList;->_allNodesMustHaveSameParent:Z

    iput-boolean p1, p0, Lcom/sun/org/apache/xml/internal/security/utils/HelperNodeList;->_allNodesMustHaveSameParent:Z

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
.method public appendChild(Lorg/w3c/dom/Node;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    const/4 v1, 0x0

    iget-boolean v0, p0, Lcom/sun/org/apache/xml/internal/security/utils/HelperNodeList;->_allNodesMustHaveSameParent:Z

    if-nez v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/security/utils/HelperNodeList;->nodes:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/sun/org/apache/xml/internal/security/utils/HelperNodeList;->getLength()I

    move-result v0

    if-lez v0, :cond_0

    invoke-virtual {p0, v1}, Lcom/sun/org/apache/xml/internal/security/utils/HelperNodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v0

    invoke-interface {v0}, Lorg/w3c/dom/Node;->getParentNode()Lorg/w3c/dom/Node;

    move-result-object v0

    invoke-interface {p1}, Lorg/w3c/dom/Node;->getParentNode()Lorg/w3c/dom/Node;

    move-result-object v1

    if-eq v0, v1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Nodes have not the same Parent"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getLength()I
    .locals 1

    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/security/utils/HelperNodeList;->nodes:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getOwnerDocument()Lorg/w3c/dom/Document;
    .locals 2

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/sun/org/apache/xml/internal/security/utils/HelperNodeList;->getLength()I

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, v1}, Lcom/sun/org/apache/xml/internal/security/utils/HelperNodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v0

    invoke-static {v0}, Lcom/sun/org/apache/xml/internal/security/utils/XMLUtils;->getOwnerDocument(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Document;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public item(I)Lorg/w3c/dom/Node;
    .locals 1

    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/security/utils/HelperNodeList;->nodes:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/w3c/dom/Node;

    return-object v0
.end method
