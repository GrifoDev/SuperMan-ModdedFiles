.class public interface abstract Lcom/thoughtworks/xstream/mapper/Mapper;
.super Ljava/lang/Object;
.source "Mapper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/thoughtworks/xstream/mapper/Mapper$ImplicitCollectionMapping;,
        Lcom/thoughtworks/xstream/mapper/Mapper$Null;
    }
.end annotation


# virtual methods
.method public abstract aliasForAttribute(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract aliasForAttribute(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract aliasForSystemAttribute(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract attributeForAlias(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract attributeForAlias(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract defaultImplementationOf(Ljava/lang/Class;)Ljava/lang/Class;
.end method

.method public abstract getConverterFromAttribute(Ljava/lang/Class;Ljava/lang/String;)Lcom/thoughtworks/xstream/converters/SingleValueConverter;
.end method

.method public abstract getConverterFromAttribute(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;)Lcom/thoughtworks/xstream/converters/SingleValueConverter;
.end method

.method public abstract getConverterFromAttribute(Ljava/lang/String;)Lcom/thoughtworks/xstream/converters/SingleValueConverter;
.end method

.method public abstract getConverterFromItemType(Ljava/lang/Class;)Lcom/thoughtworks/xstream/converters/SingleValueConverter;
.end method

.method public abstract getConverterFromItemType(Ljava/lang/String;Ljava/lang/Class;)Lcom/thoughtworks/xstream/converters/SingleValueConverter;
.end method

.method public abstract getConverterFromItemType(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;)Lcom/thoughtworks/xstream/converters/SingleValueConverter;
.end method

.method public abstract getFieldNameForItemTypeAndName(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract getImplicitCollectionDefForFieldName(Ljava/lang/Class;Ljava/lang/String;)Lcom/thoughtworks/xstream/mapper/Mapper$ImplicitCollectionMapping;
.end method

.method public abstract getItemTypeForItemFieldName(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Class;
.end method

.method public abstract getLocalConverter(Ljava/lang/Class;Ljava/lang/String;)Lcom/thoughtworks/xstream/converters/Converter;
.end method

.method public abstract isImmutableValueType(Ljava/lang/Class;)Z
.end method

.method public abstract lookupMapperOfType(Ljava/lang/Class;)Lcom/thoughtworks/xstream/mapper/Mapper;
.end method

.method public abstract realClass(Ljava/lang/String;)Ljava/lang/Class;
.end method

.method public abstract realMember(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract serializedClass(Ljava/lang/Class;)Ljava/lang/String;
.end method

.method public abstract serializedMember(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract shouldSerializeMember(Ljava/lang/Class;Ljava/lang/String;)Z
.end method
