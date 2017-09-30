.class public abstract Lcom/thoughtworks/xstream/core/AbstractTreeMarshallingStrategy;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/thoughtworks/xstream/MarshallingStrategy;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method protected abstract createMarshallingContext(Lcom/thoughtworks/xstream/io/HierarchicalStreamWriter;Lcom/thoughtworks/xstream/converters/ConverterLookup;Lcom/thoughtworks/xstream/mapper/Mapper;)Lcom/thoughtworks/xstream/core/TreeMarshaller;
.end method

.method protected abstract createUnmarshallingContext(Ljava/lang/Object;Lcom/thoughtworks/xstream/io/HierarchicalStreamReader;Lcom/thoughtworks/xstream/converters/ConverterLookup;Lcom/thoughtworks/xstream/mapper/Mapper;)Lcom/thoughtworks/xstream/core/TreeUnmarshaller;
.end method

.method public marshal(Lcom/thoughtworks/xstream/io/HierarchicalStreamWriter;Ljava/lang/Object;Lcom/thoughtworks/xstream/converters/ConverterLookup;Lcom/thoughtworks/xstream/mapper/Mapper;Lcom/thoughtworks/xstream/converters/DataHolder;)V
    .locals 1

    invoke-virtual {p0, p1, p3, p4}, Lcom/thoughtworks/xstream/core/AbstractTreeMarshallingStrategy;->createMarshallingContext(Lcom/thoughtworks/xstream/io/HierarchicalStreamWriter;Lcom/thoughtworks/xstream/converters/ConverterLookup;Lcom/thoughtworks/xstream/mapper/Mapper;)Lcom/thoughtworks/xstream/core/TreeMarshaller;

    move-result-object v0

    invoke-virtual {v0, p2, p5}, Lcom/thoughtworks/xstream/core/TreeMarshaller;->start(Ljava/lang/Object;Lcom/thoughtworks/xstream/converters/DataHolder;)V

    return-void
.end method

.method public unmarshal(Ljava/lang/Object;Lcom/thoughtworks/xstream/io/HierarchicalStreamReader;Lcom/thoughtworks/xstream/converters/DataHolder;Lcom/thoughtworks/xstream/converters/ConverterLookup;Lcom/thoughtworks/xstream/mapper/Mapper;)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1, p2, p4, p5}, Lcom/thoughtworks/xstream/core/AbstractTreeMarshallingStrategy;->createUnmarshallingContext(Ljava/lang/Object;Lcom/thoughtworks/xstream/io/HierarchicalStreamReader;Lcom/thoughtworks/xstream/converters/ConverterLookup;Lcom/thoughtworks/xstream/mapper/Mapper;)Lcom/thoughtworks/xstream/core/TreeUnmarshaller;

    move-result-object v0

    invoke-virtual {v0, p3}, Lcom/thoughtworks/xstream/core/TreeUnmarshaller;->start(Lcom/thoughtworks/xstream/converters/DataHolder;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
