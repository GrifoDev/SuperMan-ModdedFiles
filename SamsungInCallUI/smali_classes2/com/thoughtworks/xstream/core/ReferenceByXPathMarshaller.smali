.class public Lcom/thoughtworks/xstream/core/ReferenceByXPathMarshaller;
.super Lcom/thoughtworks/xstream/core/AbstractReferenceMarshaller;


# instance fields
.field private final mode:I


# direct methods
.method public constructor <init>(Lcom/thoughtworks/xstream/io/HierarchicalStreamWriter;Lcom/thoughtworks/xstream/converters/ConverterLookup;Lcom/thoughtworks/xstream/mapper/Mapper;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/thoughtworks/xstream/core/AbstractReferenceMarshaller;-><init>(Lcom/thoughtworks/xstream/io/HierarchicalStreamWriter;Lcom/thoughtworks/xstream/converters/ConverterLookup;Lcom/thoughtworks/xstream/mapper/Mapper;)V

    iput p4, p0, Lcom/thoughtworks/xstream/core/ReferenceByXPathMarshaller;->mode:I

    return-void
.end method


# virtual methods
.method protected createReference(Lcom/thoughtworks/xstream/io/path/Path;Ljava/lang/Object;)Ljava/lang/String;
    .locals 2

    check-cast p2, Lcom/thoughtworks/xstream/io/path/Path;

    iget v0, p0, Lcom/thoughtworks/xstream/core/ReferenceByXPathMarshaller;->mode:I

    sget v1, Lcom/thoughtworks/xstream/core/ReferenceByXPathMarshallingStrategy;->ABSOLUTE:I

    and-int/2addr v0, v1

    if-lez v0, :cond_0

    :goto_0
    iget v0, p0, Lcom/thoughtworks/xstream/core/ReferenceByXPathMarshaller;->mode:I

    sget v1, Lcom/thoughtworks/xstream/core/ReferenceByXPathMarshallingStrategy;->SINGLE_NODE:I

    and-int/2addr v0, v1

    if-lez v0, :cond_1

    invoke-virtual {p2}, Lcom/thoughtworks/xstream/io/path/Path;->explicit()Ljava/lang/String;

    move-result-object v0

    :goto_1
    return-object v0

    :cond_0
    invoke-virtual {p1, p2}, Lcom/thoughtworks/xstream/io/path/Path;->relativeTo(Lcom/thoughtworks/xstream/io/path/Path;)Lcom/thoughtworks/xstream/io/path/Path;

    move-result-object p2

    goto :goto_0

    :cond_1
    invoke-virtual {p2}, Lcom/thoughtworks/xstream/io/path/Path;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method

.method protected createReferenceKey(Lcom/thoughtworks/xstream/io/path/Path;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    return-object p1
.end method

.method protected fireValidReference(Ljava/lang/Object;)V
    .locals 0

    return-void
.end method
