.class public Lcom/thoughtworks/xstream/converters/SingleValueConverterWrapper;
.super Ljava/lang/Object;
.source "SingleValueConverterWrapper.java"

# interfaces
.implements Lcom/thoughtworks/xstream/converters/Converter;
.implements Lcom/thoughtworks/xstream/converters/SingleValueConverter;
.implements Lcom/thoughtworks/xstream/converters/ErrorReporter;


# instance fields
.field private final wrapped:Lcom/thoughtworks/xstream/converters/SingleValueConverter;


# direct methods
.method public constructor <init>(Lcom/thoughtworks/xstream/converters/SingleValueConverter;)V
    .locals 0
    .param p1, "wrapped"    # Lcom/thoughtworks/xstream/converters/SingleValueConverter;

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-object p1, p0, Lcom/thoughtworks/xstream/converters/SingleValueConverterWrapper;->wrapped:Lcom/thoughtworks/xstream/converters/SingleValueConverter;

    .line 30
    return-void
.end method


# virtual methods
.method public appendErrors(Lcom/thoughtworks/xstream/converters/ErrorWriter;)V
    .locals 2
    .param p1, "errorWriter"    # Lcom/thoughtworks/xstream/converters/ErrorWriter;

    .prologue
    .line 53
    const-string v1, "wrapped-converter"

    iget-object v0, p0, Lcom/thoughtworks/xstream/converters/SingleValueConverterWrapper;->wrapped:Lcom/thoughtworks/xstream/converters/SingleValueConverter;

    if-nez v0, :cond_1

    const-string v0, "(null)"

    :goto_0
    invoke-interface {p1, v1, v0}, Lcom/thoughtworks/xstream/converters/ErrorWriter;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    iget-object v0, p0, Lcom/thoughtworks/xstream/converters/SingleValueConverterWrapper;->wrapped:Lcom/thoughtworks/xstream/converters/SingleValueConverter;

    instance-of v0, v0, Lcom/thoughtworks/xstream/converters/ErrorReporter;

    if-eqz v0, :cond_0

    .line 55
    iget-object v0, p0, Lcom/thoughtworks/xstream/converters/SingleValueConverterWrapper;->wrapped:Lcom/thoughtworks/xstream/converters/SingleValueConverter;

    check-cast v0, Lcom/thoughtworks/xstream/converters/ErrorReporter;

    invoke-interface {v0, p1}, Lcom/thoughtworks/xstream/converters/ErrorReporter;->appendErrors(Lcom/thoughtworks/xstream/converters/ErrorWriter;)V

    .line 57
    :cond_0
    return-void

    .line 53
    :cond_1
    iget-object v0, p0, Lcom/thoughtworks/xstream/converters/SingleValueConverterWrapper;->wrapped:Lcom/thoughtworks/xstream/converters/SingleValueConverter;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public canConvert(Ljava/lang/Class;)Z
    .locals 1
    .param p1, "type"    # Ljava/lang/Class;

    .prologue
    .line 33
    iget-object v0, p0, Lcom/thoughtworks/xstream/converters/SingleValueConverterWrapper;->wrapped:Lcom/thoughtworks/xstream/converters/SingleValueConverter;

    invoke-interface {v0, p1}, Lcom/thoughtworks/xstream/converters/SingleValueConverter;->canConvert(Ljava/lang/Class;)Z

    move-result v0

    return v0
.end method

.method public fromString(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .param p1, "str"    # Ljava/lang/String;

    .prologue
    .line 41
    iget-object v0, p0, Lcom/thoughtworks/xstream/converters/SingleValueConverterWrapper;->wrapped:Lcom/thoughtworks/xstream/converters/SingleValueConverter;

    invoke-interface {v0, p1}, Lcom/thoughtworks/xstream/converters/SingleValueConverter;->fromString(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public marshal(Ljava/lang/Object;Lcom/thoughtworks/xstream/io/HierarchicalStreamWriter;Lcom/thoughtworks/xstream/converters/MarshallingContext;)V
    .locals 1
    .param p1, "source"    # Ljava/lang/Object;
    .param p2, "writer"    # Lcom/thoughtworks/xstream/io/HierarchicalStreamWriter;
    .param p3, "context"    # Lcom/thoughtworks/xstream/converters/MarshallingContext;

    .prologue
    .line 45
    invoke-virtual {p0, p1}, Lcom/thoughtworks/xstream/converters/SingleValueConverterWrapper;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, v0}, Lcom/thoughtworks/xstream/io/HierarchicalStreamWriter;->setValue(Ljava/lang/String;)V

    .line 46
    return-void
.end method

.method public toString(Ljava/lang/Object;)Ljava/lang/String;
    .locals 1
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    .line 37
    iget-object v0, p0, Lcom/thoughtworks/xstream/converters/SingleValueConverterWrapper;->wrapped:Lcom/thoughtworks/xstream/converters/SingleValueConverter;

    invoke-interface {v0, p1}, Lcom/thoughtworks/xstream/converters/SingleValueConverter;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public unmarshal(Lcom/thoughtworks/xstream/io/HierarchicalStreamReader;Lcom/thoughtworks/xstream/converters/UnmarshallingContext;)Ljava/lang/Object;
    .locals 1
    .param p1, "reader"    # Lcom/thoughtworks/xstream/io/HierarchicalStreamReader;
    .param p2, "context"    # Lcom/thoughtworks/xstream/converters/UnmarshallingContext;

    .prologue
    .line 49
    invoke-interface {p1}, Lcom/thoughtworks/xstream/io/HierarchicalStreamReader;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/thoughtworks/xstream/converters/SingleValueConverterWrapper;->fromString(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
