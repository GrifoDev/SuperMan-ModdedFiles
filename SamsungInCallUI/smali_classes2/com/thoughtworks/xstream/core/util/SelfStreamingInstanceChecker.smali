.class public Lcom/thoughtworks/xstream/core/util/SelfStreamingInstanceChecker;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/thoughtworks/xstream/converters/Converter;


# instance fields
.field private defaultConverter:Lcom/thoughtworks/xstream/converters/Converter;

.field private final lookup:Lcom/thoughtworks/xstream/converters/ConverterLookup;

.field private final self:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lcom/thoughtworks/xstream/converters/Converter;Ljava/lang/Object;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/thoughtworks/xstream/core/util/SelfStreamingInstanceChecker;->defaultConverter:Lcom/thoughtworks/xstream/converters/Converter;

    iput-object p2, p0, Lcom/thoughtworks/xstream/core/util/SelfStreamingInstanceChecker;->self:Ljava/lang/Object;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/thoughtworks/xstream/core/util/SelfStreamingInstanceChecker;->lookup:Lcom/thoughtworks/xstream/converters/ConverterLookup;

    return-void
.end method

.method public constructor <init>(Lcom/thoughtworks/xstream/converters/ConverterLookup;Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/thoughtworks/xstream/core/util/SelfStreamingInstanceChecker;->lookup:Lcom/thoughtworks/xstream/converters/ConverterLookup;

    iput-object p2, p0, Lcom/thoughtworks/xstream/core/util/SelfStreamingInstanceChecker;->self:Ljava/lang/Object;

    return-void
.end method

.method private getConverter()Lcom/thoughtworks/xstream/converters/Converter;
    .locals 2

    iget-object v0, p0, Lcom/thoughtworks/xstream/core/util/SelfStreamingInstanceChecker;->defaultConverter:Lcom/thoughtworks/xstream/converters/Converter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/thoughtworks/xstream/core/util/SelfStreamingInstanceChecker;->defaultConverter:Lcom/thoughtworks/xstream/converters/Converter;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/thoughtworks/xstream/core/util/SelfStreamingInstanceChecker;->lookup:Lcom/thoughtworks/xstream/converters/ConverterLookup;

    const-class v1, Ljava/lang/Object;

    invoke-interface {v0, v1}, Lcom/thoughtworks/xstream/converters/ConverterLookup;->lookupConverterForType(Ljava/lang/Class;)Lcom/thoughtworks/xstream/converters/Converter;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method public canConvert(Ljava/lang/Class;)Z
    .locals 1

    iget-object v0, p0, Lcom/thoughtworks/xstream/core/util/SelfStreamingInstanceChecker;->self:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    if-ne p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public marshal(Ljava/lang/Object;Lcom/thoughtworks/xstream/io/HierarchicalStreamWriter;Lcom/thoughtworks/xstream/converters/MarshallingContext;)V
    .locals 2

    iget-object v0, p0, Lcom/thoughtworks/xstream/core/util/SelfStreamingInstanceChecker;->self:Ljava/lang/Object;

    if-ne p1, v0, :cond_0

    new-instance v0, Lcom/thoughtworks/xstream/converters/ConversionException;

    const-string v1, "Cannot marshal the XStream instance in action"

    invoke-direct {v0, v1}, Lcom/thoughtworks/xstream/converters/ConversionException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-direct {p0}, Lcom/thoughtworks/xstream/core/util/SelfStreamingInstanceChecker;->getConverter()Lcom/thoughtworks/xstream/converters/Converter;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lcom/thoughtworks/xstream/converters/Converter;->marshal(Ljava/lang/Object;Lcom/thoughtworks/xstream/io/HierarchicalStreamWriter;Lcom/thoughtworks/xstream/converters/MarshallingContext;)V

    return-void
.end method

.method public unmarshal(Lcom/thoughtworks/xstream/io/HierarchicalStreamReader;Lcom/thoughtworks/xstream/converters/UnmarshallingContext;)Ljava/lang/Object;
    .locals 1

    invoke-direct {p0}, Lcom/thoughtworks/xstream/core/util/SelfStreamingInstanceChecker;->getConverter()Lcom/thoughtworks/xstream/converters/Converter;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/thoughtworks/xstream/converters/Converter;->unmarshal(Lcom/thoughtworks/xstream/io/HierarchicalStreamReader;Lcom/thoughtworks/xstream/converters/UnmarshallingContext;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
