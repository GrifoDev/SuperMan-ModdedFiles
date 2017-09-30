.class public Lcom/thoughtworks/xstream/core/ReferenceByIdUnmarshaller;
.super Lcom/thoughtworks/xstream/core/AbstractReferenceUnmarshaller;


# direct methods
.method public constructor <init>(Ljava/lang/Object;Lcom/thoughtworks/xstream/io/HierarchicalStreamReader;Lcom/thoughtworks/xstream/converters/ConverterLookup;Lcom/thoughtworks/xstream/mapper/Mapper;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/thoughtworks/xstream/core/AbstractReferenceUnmarshaller;-><init>(Ljava/lang/Object;Lcom/thoughtworks/xstream/io/HierarchicalStreamReader;Lcom/thoughtworks/xstream/converters/ConverterLookup;Lcom/thoughtworks/xstream/mapper/Mapper;)V

    return-void
.end method


# virtual methods
.method protected getCurrentReferenceKey()Ljava/lang/Object;
    .locals 2

    invoke-virtual {p0}, Lcom/thoughtworks/xstream/core/ReferenceByIdUnmarshaller;->getMapper()Lcom/thoughtworks/xstream/mapper/Mapper;

    move-result-object v0

    const-string v1, "id"

    invoke-interface {v0, v1}, Lcom/thoughtworks/xstream/mapper/Mapper;->aliasForSystemAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v1, p0, Lcom/thoughtworks/xstream/core/ReferenceByIdUnmarshaller;->reader:Lcom/thoughtworks/xstream/io/HierarchicalStreamReader;

    invoke-interface {v1, v0}, Lcom/thoughtworks/xstream/io/HierarchicalStreamReader;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method protected getReferenceKey(Ljava/lang/String;)Ljava/lang/Object;
    .locals 0

    return-object p1
.end method
