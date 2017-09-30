.class public Lcom/thoughtworks/xstream/converters/extended/ThrowableConverter;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/thoughtworks/xstream/converters/Converter;


# instance fields
.field private defaultConverter:Lcom/thoughtworks/xstream/converters/Converter;

.field private final lookup:Lcom/thoughtworks/xstream/converters/ConverterLookup;


# direct methods
.method public constructor <init>(Lcom/thoughtworks/xstream/converters/Converter;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/thoughtworks/xstream/converters/extended/ThrowableConverter;->defaultConverter:Lcom/thoughtworks/xstream/converters/Converter;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/thoughtworks/xstream/converters/extended/ThrowableConverter;->lookup:Lcom/thoughtworks/xstream/converters/ConverterLookup;

    return-void
.end method

.method public constructor <init>(Lcom/thoughtworks/xstream/converters/ConverterLookup;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/thoughtworks/xstream/converters/extended/ThrowableConverter;->lookup:Lcom/thoughtworks/xstream/converters/ConverterLookup;

    return-void
.end method

.method private getConverter()Lcom/thoughtworks/xstream/converters/Converter;
    .locals 2

    iget-object v0, p0, Lcom/thoughtworks/xstream/converters/extended/ThrowableConverter;->defaultConverter:Lcom/thoughtworks/xstream/converters/Converter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/thoughtworks/xstream/converters/extended/ThrowableConverter;->defaultConverter:Lcom/thoughtworks/xstream/converters/Converter;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/thoughtworks/xstream/converters/extended/ThrowableConverter;->lookup:Lcom/thoughtworks/xstream/converters/ConverterLookup;

    const-class v1, Ljava/lang/Object;

    invoke-interface {v0, v1}, Lcom/thoughtworks/xstream/converters/ConverterLookup;->lookupConverterForType(Ljava/lang/Class;)Lcom/thoughtworks/xstream/converters/Converter;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method public canConvert(Ljava/lang/Class;)Z
    .locals 1

    const-class v0, Ljava/lang/Throwable;

    invoke-virtual {v0, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    return v0
.end method

.method public marshal(Ljava/lang/Object;Lcom/thoughtworks/xstream/io/HierarchicalStreamWriter;Lcom/thoughtworks/xstream/converters/MarshallingContext;)V
    .locals 1

    check-cast p1, Ljava/lang/Throwable;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p1, v0}, Ljava/lang/Throwable;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    invoke-virtual {p1}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    invoke-direct {p0}, Lcom/thoughtworks/xstream/converters/extended/ThrowableConverter;->getConverter()Lcom/thoughtworks/xstream/converters/Converter;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lcom/thoughtworks/xstream/converters/Converter;->marshal(Ljava/lang/Object;Lcom/thoughtworks/xstream/io/HierarchicalStreamWriter;Lcom/thoughtworks/xstream/converters/MarshallingContext;)V

    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public unmarshal(Lcom/thoughtworks/xstream/io/HierarchicalStreamReader;Lcom/thoughtworks/xstream/converters/UnmarshallingContext;)Ljava/lang/Object;
    .locals 1

    invoke-direct {p0}, Lcom/thoughtworks/xstream/converters/extended/ThrowableConverter;->getConverter()Lcom/thoughtworks/xstream/converters/Converter;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/thoughtworks/xstream/converters/Converter;->unmarshal(Lcom/thoughtworks/xstream/io/HierarchicalStreamReader;Lcom/thoughtworks/xstream/converters/UnmarshallingContext;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
