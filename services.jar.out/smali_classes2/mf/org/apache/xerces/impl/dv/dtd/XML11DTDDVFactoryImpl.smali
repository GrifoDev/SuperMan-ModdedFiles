.class public Lmf/org/apache/xerces/impl/dv/dtd/XML11DTDDVFactoryImpl;
.super Lmf/org/apache/xerces/impl/dv/dtd/DTDDVFactoryImpl;
.source "XML11DTDDVFactoryImpl.java"


# static fields
.field static final fXML11BuiltInTypes:Ljava/util/Hashtable;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    sput-object v0, Lmf/org/apache/xerces/impl/dv/dtd/XML11DTDDVFactoryImpl;->fXML11BuiltInTypes:Ljava/util/Hashtable;

    sget-object v0, Lmf/org/apache/xerces/impl/dv/dtd/XML11DTDDVFactoryImpl;->fXML11BuiltInTypes:Ljava/util/Hashtable;

    const-string/jumbo v1, "XML11ID"

    new-instance v2, Lmf/org/apache/xerces/impl/dv/dtd/XML11IDDatatypeValidator;

    invoke-direct {v2}, Lmf/org/apache/xerces/impl/dv/dtd/XML11IDDatatypeValidator;-><init>()V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lmf/org/apache/xerces/impl/dv/dtd/XML11IDREFDatatypeValidator;

    invoke-direct {v0}, Lmf/org/apache/xerces/impl/dv/dtd/XML11IDREFDatatypeValidator;-><init>()V

    sget-object v1, Lmf/org/apache/xerces/impl/dv/dtd/XML11DTDDVFactoryImpl;->fXML11BuiltInTypes:Ljava/util/Hashtable;

    const-string/jumbo v2, "XML11IDREF"

    invoke-virtual {v1, v2, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lmf/org/apache/xerces/impl/dv/dtd/XML11DTDDVFactoryImpl;->fXML11BuiltInTypes:Ljava/util/Hashtable;

    const-string/jumbo v2, "XML11IDREFS"

    new-instance v3, Lmf/org/apache/xerces/impl/dv/dtd/ListDatatypeValidator;

    invoke-direct {v3, v0}, Lmf/org/apache/xerces/impl/dv/dtd/ListDatatypeValidator;-><init>(Lmf/org/apache/xerces/impl/dv/DatatypeValidator;)V

    invoke-virtual {v1, v2, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lmf/org/apache/xerces/impl/dv/dtd/XML11NMTOKENDatatypeValidator;

    invoke-direct {v0}, Lmf/org/apache/xerces/impl/dv/dtd/XML11NMTOKENDatatypeValidator;-><init>()V

    sget-object v1, Lmf/org/apache/xerces/impl/dv/dtd/XML11DTDDVFactoryImpl;->fXML11BuiltInTypes:Ljava/util/Hashtable;

    const-string/jumbo v2, "XML11NMTOKEN"

    invoke-virtual {v1, v2, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lmf/org/apache/xerces/impl/dv/dtd/XML11DTDDVFactoryImpl;->fXML11BuiltInTypes:Ljava/util/Hashtable;

    const-string/jumbo v2, "XML11NMTOKENS"

    new-instance v3, Lmf/org/apache/xerces/impl/dv/dtd/ListDatatypeValidator;

    invoke-direct {v3, v0}, Lmf/org/apache/xerces/impl/dv/dtd/ListDatatypeValidator;-><init>(Lmf/org/apache/xerces/impl/dv/DatatypeValidator;)V

    invoke-virtual {v1, v2, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lmf/org/apache/xerces/impl/dv/dtd/DTDDVFactoryImpl;-><init>()V

    return-void
.end method


# virtual methods
.method public getBuiltInDV(Ljava/lang/String;)Lmf/org/apache/xerces/impl/dv/DatatypeValidator;
    .locals 1

    sget-object v0, Lmf/org/apache/xerces/impl/dv/dtd/XML11DTDDVFactoryImpl;->fXML11BuiltInTypes:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    sget-object v0, Lmf/org/apache/xerces/impl/dv/dtd/XML11DTDDVFactoryImpl;->fBuiltInTypes:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmf/org/apache/xerces/impl/dv/DatatypeValidator;

    return-object v0

    :cond_0
    sget-object v0, Lmf/org/apache/xerces/impl/dv/dtd/XML11DTDDVFactoryImpl;->fXML11BuiltInTypes:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmf/org/apache/xerces/impl/dv/DatatypeValidator;

    return-object v0
.end method

.method public getBuiltInTypes()Ljava/util/Hashtable;
    .locals 4

    sget-object v0, Lmf/org/apache/xerces/impl/dv/dtd/XML11DTDDVFactoryImpl;->fBuiltInTypes:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Hashtable;

    sget-object v1, Lmf/org/apache/xerces/impl/dv/dtd/XML11DTDDVFactoryImpl;->fXML11BuiltInTypes:Ljava/util/Hashtable;

    invoke-virtual {v1}, Ljava/util/Hashtable;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v3, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    return-object v0
.end method
