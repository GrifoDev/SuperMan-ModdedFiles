.class public Lmf/org/apache/xerces/impl/xs/models/CMNodeFactory;
.super Ljava/lang/Object;
.source "CMNodeFactory.java"


# static fields
.field private static final DEBUG:Z = false

.field private static final ERROR_REPORTER:Ljava/lang/String; = "http://apache.org/xml/properties/internal/error-reporter"

.field private static final MULTIPLICITY:I = 0x1

.field private static final SECURITY_MANAGER:Ljava/lang/String; = "http://apache.org/xml/properties/security-manager"


# instance fields
.field private fErrorReporter:Lmf/org/apache/xerces/impl/XMLErrorReporter;

.field private fSecurityManager:Lmf/org/apache/xerces/util/SecurityManager;

.field private maxNodeLimit:I

.field private nodeCount:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lmf/org/apache/xerces/impl/xs/models/CMNodeFactory;->nodeCount:I

    const/4 v0, 0x0

    iput-object v0, p0, Lmf/org/apache/xerces/impl/xs/models/CMNodeFactory;->fSecurityManager:Lmf/org/apache/xerces/util/SecurityManager;

    return-void
.end method


# virtual methods
.method public getCMBinOpNode(ILmf/org/apache/xerces/impl/dtd/models/CMNode;Lmf/org/apache/xerces/impl/dtd/models/CMNode;)Lmf/org/apache/xerces/impl/dtd/models/CMNode;
    .locals 1

    invoke-virtual {p0}, Lmf/org/apache/xerces/impl/xs/models/CMNodeFactory;->nodeCountCheck()V

    new-instance v0, Lmf/org/apache/xerces/impl/xs/models/XSCMBinOp;

    invoke-direct {v0, p1, p2, p3}, Lmf/org/apache/xerces/impl/xs/models/XSCMBinOp;-><init>(ILmf/org/apache/xerces/impl/dtd/models/CMNode;Lmf/org/apache/xerces/impl/dtd/models/CMNode;)V

    return-object v0
.end method

.method public getCMLeafNode(ILjava/lang/Object;II)Lmf/org/apache/xerces/impl/dtd/models/CMNode;
    .locals 1

    invoke-virtual {p0}, Lmf/org/apache/xerces/impl/xs/models/CMNodeFactory;->nodeCountCheck()V

    new-instance v0, Lmf/org/apache/xerces/impl/xs/models/XSCMLeaf;

    invoke-direct {v0, p1, p2, p3, p4}, Lmf/org/apache/xerces/impl/xs/models/XSCMLeaf;-><init>(ILjava/lang/Object;II)V

    return-object v0
.end method

.method public getCMRepeatingLeafNode(ILjava/lang/Object;IIII)Lmf/org/apache/xerces/impl/dtd/models/CMNode;
    .locals 7

    invoke-virtual {p0}, Lmf/org/apache/xerces/impl/xs/models/CMNodeFactory;->nodeCountCheck()V

    new-instance v0, Lmf/org/apache/xerces/impl/xs/models/XSCMRepeatingLeaf;

    move v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    invoke-direct/range {v0 .. v6}, Lmf/org/apache/xerces/impl/xs/models/XSCMRepeatingLeaf;-><init>(ILjava/lang/Object;IIII)V

    return-object v0
.end method

.method public getCMUniOpNode(ILmf/org/apache/xerces/impl/dtd/models/CMNode;)Lmf/org/apache/xerces/impl/dtd/models/CMNode;
    .locals 1

    invoke-virtual {p0}, Lmf/org/apache/xerces/impl/xs/models/CMNodeFactory;->nodeCountCheck()V

    new-instance v0, Lmf/org/apache/xerces/impl/xs/models/XSCMUniOp;

    invoke-direct {v0, p1, p2}, Lmf/org/apache/xerces/impl/xs/models/XSCMUniOp;-><init>(ILmf/org/apache/xerces/impl/dtd/models/CMNode;)V

    return-object v0
.end method

.method public nodeCountCheck()V
    .locals 7

    const/4 v6, 0x0

    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/models/CMNodeFactory;->fSecurityManager:Lmf/org/apache/xerces/util/SecurityManager;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget v0, p0, Lmf/org/apache/xerces/impl/xs/models/CMNodeFactory;->nodeCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lmf/org/apache/xerces/impl/xs/models/CMNodeFactory;->nodeCount:I

    iget v1, p0, Lmf/org/apache/xerces/impl/xs/models/CMNodeFactory;->maxNodeLimit:I

    if-le v0, v1, :cond_0

    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/models/CMNodeFactory;->fErrorReporter:Lmf/org/apache/xerces/impl/XMLErrorReporter;

    const-string/jumbo v1, "http://www.w3.org/TR/xml-schema-1"

    const-string/jumbo v2, "maxOccurLimit"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    new-instance v4, Ljava/lang/Integer;

    iget v5, p0, Lmf/org/apache/xerces/impl/xs/models/CMNodeFactory;->maxNodeLimit:I

    invoke-direct {v4, v5}, Ljava/lang/Integer;-><init>(I)V

    aput-object v4, v3, v6

    const/4 v4, 0x2

    invoke-virtual {v0, v1, v2, v3, v4}, Lmf/org/apache/xerces/impl/XMLErrorReporter;->reportError(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;S)Ljava/lang/String;

    iput v6, p0, Lmf/org/apache/xerces/impl/xs/models/CMNodeFactory;->nodeCount:I

    goto :goto_0
.end method

.method public reset()V
    .locals 1

    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/models/CMNodeFactory;->fSecurityManager:Lmf/org/apache/xerces/util/SecurityManager;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/models/CMNodeFactory;->fSecurityManager:Lmf/org/apache/xerces/util/SecurityManager;

    invoke-virtual {v0}, Lmf/org/apache/xerces/util/SecurityManager;->getMaxOccurNodeLimit()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1

    iput v0, p0, Lmf/org/apache/xerces/impl/xs/models/CMNodeFactory;->maxNodeLimit:I

    goto :goto_0
.end method

.method public reset(Lmf/org/apache/xerces/xni/parser/XMLComponentManager;)V
    .locals 1

    const-string/jumbo v0, "http://apache.org/xml/properties/internal/error-reporter"

    invoke-interface {p1, v0}, Lmf/org/apache/xerces/xni/parser/XMLComponentManager;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmf/org/apache/xerces/impl/XMLErrorReporter;

    iput-object v0, p0, Lmf/org/apache/xerces/impl/xs/models/CMNodeFactory;->fErrorReporter:Lmf/org/apache/xerces/impl/XMLErrorReporter;

    :try_start_0
    const-string/jumbo v0, "http://apache.org/xml/properties/security-manager"

    invoke-interface {p1, v0}, Lmf/org/apache/xerces/xni/parser/XMLComponentManager;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmf/org/apache/xerces/util/SecurityManager;

    iput-object v0, p0, Lmf/org/apache/xerces/impl/xs/models/CMNodeFactory;->fSecurityManager:Lmf/org/apache/xerces/util/SecurityManager;

    invoke-virtual {p0}, Lmf/org/apache/xerces/impl/xs/models/CMNodeFactory;->reset()V
    :try_end_0
    .catch Lmf/org/apache/xerces/xni/parser/XMLConfigurationException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    iput-object v0, p0, Lmf/org/apache/xerces/impl/xs/models/CMNodeFactory;->fSecurityManager:Lmf/org/apache/xerces/util/SecurityManager;

    goto :goto_0
.end method

.method public resetNodeCount()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lmf/org/apache/xerces/impl/xs/models/CMNodeFactory;->nodeCount:I

    return-void
.end method

.method public setProperty(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/parser/XMLConfigurationException;
        }
    .end annotation

    const/4 v0, 0x0

    const-string/jumbo v1, "http://apache.org/xml/properties/"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    return-void

    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    const-string/jumbo v2, "http://apache.org/xml/properties/"

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    sub-int/2addr v1, v2

    const-string/jumbo v2, "security-manager"

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-eq v1, v2, :cond_3

    :cond_2
    const-string/jumbo v0, "internal/error-reporter"

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-ne v1, v0, :cond_0

    const-string/jumbo v0, "internal/error-reporter"

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    check-cast p2, Lmf/org/apache/xerces/impl/XMLErrorReporter;

    iput-object p2, p0, Lmf/org/apache/xerces/impl/xs/models/CMNodeFactory;->fErrorReporter:Lmf/org/apache/xerces/impl/XMLErrorReporter;

    return-void

    :cond_3
    const-string/jumbo v2, "security-manager"

    invoke-virtual {p1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    check-cast p2, Lmf/org/apache/xerces/util/SecurityManager;

    iput-object p2, p0, Lmf/org/apache/xerces/impl/xs/models/CMNodeFactory;->fSecurityManager:Lmf/org/apache/xerces/util/SecurityManager;

    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/models/CMNodeFactory;->fSecurityManager:Lmf/org/apache/xerces/util/SecurityManager;

    if-nez v1, :cond_4

    :goto_0
    iput v0, p0, Lmf/org/apache/xerces/impl/xs/models/CMNodeFactory;->maxNodeLimit:I

    return-void

    :cond_4
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/models/CMNodeFactory;->fSecurityManager:Lmf/org/apache/xerces/util/SecurityManager;

    invoke-virtual {v0}, Lmf/org/apache/xerces/util/SecurityManager;->getMaxOccurNodeLimit()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method
