.class public interface abstract Lcom/thoughtworks/xstream/converters/Converter;
.super Ljava/lang/Object;
.source "Converter.java"

# interfaces
.implements Lcom/thoughtworks/xstream/converters/ConverterMatcher;


# virtual methods
.method public abstract marshal(Ljava/lang/Object;Lcom/thoughtworks/xstream/io/HierarchicalStreamWriter;Lcom/thoughtworks/xstream/converters/MarshallingContext;)V
.end method

.method public abstract unmarshal(Lcom/thoughtworks/xstream/io/HierarchicalStreamReader;Lcom/thoughtworks/xstream/converters/UnmarshallingContext;)Ljava/lang/Object;
.end method
