.class final Lmf/org/apache/xerces/impl/xs/opti/SchemaDOMImplementation;
.super Ljava/lang/Object;
.source "SchemaDOMImplementation.java"

# interfaces
.implements Lmf/org/w3c/dom/DOMImplementation;


# static fields
.field private static final singleton:Lmf/org/apache/xerces/impl/xs/opti/SchemaDOMImplementation;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lmf/org/apache/xerces/impl/xs/opti/SchemaDOMImplementation;

    invoke-direct {v0}, Lmf/org/apache/xerces/impl/xs/opti/SchemaDOMImplementation;-><init>()V

    sput-object v0, Lmf/org/apache/xerces/impl/xs/opti/SchemaDOMImplementation;->singleton:Lmf/org/apache/xerces/impl/xs/opti/SchemaDOMImplementation;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getDOMImplementation()Lmf/org/w3c/dom/DOMImplementation;
    .locals 1

    sget-object v0, Lmf/org/apache/xerces/impl/xs/opti/SchemaDOMImplementation;->singleton:Lmf/org/apache/xerces/impl/xs/opti/SchemaDOMImplementation;

    return-object v0
.end method


# virtual methods
.method public createDocument(Ljava/lang/String;Ljava/lang/String;Lmf/org/w3c/dom/DocumentType;)Lmf/org/w3c/dom/Document;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/w3c/dom/DOMException;
        }
    .end annotation

    new-instance v0, Lmf/org/w3c/dom/DOMException;

    const-string/jumbo v1, "Method not supported"

    const/16 v2, 0x9

    invoke-direct {v0, v2, v1}, Lmf/org/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw v0
.end method

.method public createDocumentType(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lmf/org/w3c/dom/DocumentType;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/w3c/dom/DOMException;
        }
    .end annotation

    new-instance v0, Lmf/org/w3c/dom/DOMException;

    const-string/jumbo v1, "Method not supported"

    const/16 v2, 0x9

    invoke-direct {v0, v2, v1}, Lmf/org/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw v0
.end method

.method public getFeature(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;
    .locals 1

    sget-object v0, Lmf/org/apache/xerces/impl/xs/opti/SchemaDOMImplementation;->singleton:Lmf/org/apache/xerces/impl/xs/opti/SchemaDOMImplementation;

    invoke-virtual {v0, p1, p2}, Lmf/org/apache/xerces/impl/xs/opti/SchemaDOMImplementation;->hasFeature(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    sget-object v0, Lmf/org/apache/xerces/impl/xs/opti/SchemaDOMImplementation;->singleton:Lmf/org/apache/xerces/impl/xs/opti/SchemaDOMImplementation;

    return-object v0
.end method

.method public hasFeature(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 4

    const/4 v2, 0x1

    const/4 v1, 0x0

    if-nez p2, :cond_3

    :cond_0
    move v0, v2

    :goto_0
    const-string/jumbo v3, "Core"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    :cond_1
    if-eqz v0, :cond_5

    :cond_2
    return v2

    :cond_3
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_4
    const-string/jumbo v3, "XML"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    :goto_1
    return v1

    :cond_5
    const-string/jumbo v0, "1.0"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string/jumbo v0, "2.0"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string/jumbo v0, "3.0"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_1
.end method
