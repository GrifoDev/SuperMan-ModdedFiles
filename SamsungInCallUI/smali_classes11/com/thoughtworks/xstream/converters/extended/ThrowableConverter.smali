.class public Lcom/thoughtworks/xstream/converters/extended/ThrowableConverter;
.super Ljava/lang/Object;
.source "ThrowableConverter.java"

# interfaces
.implements Lcom/thoughtworks/xstream/converters/Converter;


# instance fields
.field private defaultConverter:Lcom/thoughtworks/xstream/converters/Converter;

.field private final lookup:Lcom/thoughtworks/xstream/converters/ConverterLookup;


# direct methods
.method public constructor <init>(Lcom/thoughtworks/xstream/converters/Converter;)V
    .locals 1
    .param p1, "defaultConverter"    # Lcom/thoughtworks/xstream/converters/Converter;

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput-object p1, p0, Lcom/thoughtworks/xstream/converters/extended/ThrowableConverter;->defaultConverter:Lcom/thoughtworks/xstream/converters/Converter;

    .line 38
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/thoughtworks/xstream/converters/extended/ThrowableConverter;->lookup:Lcom/thoughtworks/xstream/converters/ConverterLookup;

    .line 39
    return-void
.end method

.method public constructor <init>(Lcom/thoughtworks/xstream/converters/ConverterLookup;)V
    .locals 0
    .param p1, "lookup"    # Lcom/thoughtworks/xstream/converters/ConverterLookup;

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    iput-object p1, p0, Lcom/thoughtworks/xstream/converters/extended/ThrowableConverter;->lookup:Lcom/thoughtworks/xstream/converters/ConverterLookup;

    .line 46
    return-void
.end method

.method private getConverter()Lcom/thoughtworks/xstream/converters/Converter;
    .locals 2

    .prologue
    .line 66
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
    .param p1, "type"    # Ljava/lang/Class;

    .prologue
    .line 49
    const-class v0, Ljava/lang/Throwable;

    invoke-virtual {v0, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    return v0
.end method

.method public marshal(Ljava/lang/Object;Lcom/thoughtworks/xstream/io/HierarchicalStreamWriter;Lcom/thoughtworks/xstream/converters/MarshallingContext;)V
    .locals 2
    .param p1, "source"    # Ljava/lang/Object;
    .param p2, "writer"    # Lcom/thoughtworks/xstream/io/HierarchicalStreamWriter;
    .param p3, "context"    # Lcom/thoughtworks/xstream/converters/MarshallingContext;

    .prologue
    .line 53
    move-object v0, p1

    check-cast v0, Ljava/lang/Throwable;

    .line 54
    .local v0, "throwable":Ljava/lang/Throwable;
    invoke-virtual {v0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    if-nez v1, :cond_0

    .line 56
    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {v0, v1}, Ljava/lang/Throwable;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 61
    :cond_0
    :goto_0
    invoke-virtual {v0}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    .line 62
    invoke-direct {p0}, Lcom/thoughtworks/xstream/converters/extended/ThrowableConverter;->getConverter()Lcom/thoughtworks/xstream/converters/Converter;

    move-result-object v1

    invoke-interface {v1, v0, p2, p3}, Lcom/thoughtworks/xstream/converters/Converter;->marshal(Ljava/lang/Object;Lcom/thoughtworks/xstream/io/HierarchicalStreamWriter;Lcom/thoughtworks/xstream/converters/MarshallingContext;)V

    .line 63
    return-void

    .line 57
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public unmarshal(Lcom/thoughtworks/xstream/io/HierarchicalStreamReader;Lcom/thoughtworks/xstream/converters/UnmarshallingContext;)Ljava/lang/Object;
    .locals 1
    .param p1, "reader"    # Lcom/thoughtworks/xstream/io/HierarchicalStreamReader;
    .param p2, "context"    # Lcom/thoughtworks/xstream/converters/UnmarshallingContext;

    .prologue
    .line 70
    invoke-direct {p0}, Lcom/thoughtworks/xstream/converters/extended/ThrowableConverter;->getConverter()Lcom/thoughtworks/xstream/converters/Converter;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/thoughtworks/xstream/converters/Converter;->unmarshal(Lcom/thoughtworks/xstream/io/HierarchicalStreamReader;Lcom/thoughtworks/xstream/converters/UnmarshallingContext;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
