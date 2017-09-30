.class public Lcom/thoughtworks/xstream/core/ReferenceByIdMarshallingStrategy;
.super Lcom/thoughtworks/xstream/core/AbstractTreeMarshallingStrategy;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/thoughtworks/xstream/core/AbstractTreeMarshallingStrategy;-><init>()V

    return-void
.end method


# virtual methods
.method protected createMarshallingContext(Lcom/thoughtworks/xstream/io/HierarchicalStreamWriter;Lcom/thoughtworks/xstream/converters/ConverterLookup;Lcom/thoughtworks/xstream/mapper/Mapper;)Lcom/thoughtworks/xstream/core/TreeMarshaller;
    .locals 1

    new-instance v0, Lcom/thoughtworks/xstream/core/ReferenceByIdMarshaller;

    invoke-direct {v0, p1, p2, p3}, Lcom/thoughtworks/xstream/core/ReferenceByIdMarshaller;-><init>(Lcom/thoughtworks/xstream/io/HierarchicalStreamWriter;Lcom/thoughtworks/xstream/converters/ConverterLookup;Lcom/thoughtworks/xstream/mapper/Mapper;)V

    return-object v0
.end method

.method protected createUnmarshallingContext(Ljava/lang/Object;Lcom/thoughtworks/xstream/io/HierarchicalStreamReader;Lcom/thoughtworks/xstream/converters/ConverterLookup;Lcom/thoughtworks/xstream/mapper/Mapper;)Lcom/thoughtworks/xstream/core/TreeUnmarshaller;
    .locals 1

    new-instance v0, Lcom/thoughtworks/xstream/core/ReferenceByIdUnmarshaller;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/thoughtworks/xstream/core/ReferenceByIdUnmarshaller;-><init>(Ljava/lang/Object;Lcom/thoughtworks/xstream/io/HierarchicalStreamReader;Lcom/thoughtworks/xstream/converters/ConverterLookup;Lcom/thoughtworks/xstream/mapper/Mapper;)V

    return-object v0
.end method
