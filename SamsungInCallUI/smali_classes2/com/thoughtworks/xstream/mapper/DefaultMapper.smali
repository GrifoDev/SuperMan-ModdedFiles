.class public Lcom/thoughtworks/xstream/mapper/DefaultMapper;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/thoughtworks/xstream/mapper/Mapper;


# static fields
.field private static XSTREAM_PACKAGE_ROOT:Ljava/lang/String;


# instance fields
.field private final classLoaderReference:Lcom/thoughtworks/xstream/core/ClassLoaderReference;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const-class v0, Lcom/thoughtworks/xstream/mapper/DefaultMapper;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, ".xstream."

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-lez v1, :cond_0

    const/4 v2, 0x0

    add-int/lit8 v1, v1, 0x9

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    :goto_0
    sput-object v0, Lcom/thoughtworks/xstream/mapper/DefaultMapper;->XSTREAM_PACKAGE_ROOT:Ljava/lang/String;

    return-void

    :cond_0
    const-string v0, ".N/A"

    goto :goto_0
.end method

.method public constructor <init>(Lcom/thoughtworks/xstream/core/ClassLoaderReference;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/thoughtworks/xstream/mapper/DefaultMapper;->classLoaderReference:Lcom/thoughtworks/xstream/core/ClassLoaderReference;

    return-void
.end method

.method public constructor <init>(Ljava/lang/ClassLoader;)V
    .locals 1

    new-instance v0, Lcom/thoughtworks/xstream/core/ClassLoaderReference;

    invoke-direct {v0, p1}, Lcom/thoughtworks/xstream/core/ClassLoaderReference;-><init>(Ljava/lang/ClassLoader;)V

    invoke-direct {p0, v0}, Lcom/thoughtworks/xstream/mapper/DefaultMapper;-><init>(Lcom/thoughtworks/xstream/core/ClassLoaderReference;)V

    return-void
.end method


# virtual methods
.method public aliasForAttribute(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    return-object p2
.end method

.method public aliasForAttribute(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    return-object p1
.end method

.method public aliasForSystemAttribute(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    return-object p1
.end method

.method public attributeForAlias(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    return-object p2
.end method

.method public attributeForAlias(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    return-object p1
.end method

.method public defaultImplementationOf(Ljava/lang/Class;)Ljava/lang/Class;
    .locals 0

    return-object p1
.end method

.method public getConverterFromAttribute(Ljava/lang/Class;Ljava/lang/String;)Lcom/thoughtworks/xstream/converters/SingleValueConverter;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getConverterFromAttribute(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;)Lcom/thoughtworks/xstream/converters/SingleValueConverter;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getConverterFromAttribute(Ljava/lang/String;)Lcom/thoughtworks/xstream/converters/SingleValueConverter;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getConverterFromItemType(Ljava/lang/Class;)Lcom/thoughtworks/xstream/converters/SingleValueConverter;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getConverterFromItemType(Ljava/lang/String;Ljava/lang/Class;)Lcom/thoughtworks/xstream/converters/SingleValueConverter;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getConverterFromItemType(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;)Lcom/thoughtworks/xstream/converters/SingleValueConverter;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getFieldNameForItemTypeAndName(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getImplicitCollectionDefForFieldName(Ljava/lang/Class;Ljava/lang/String;)Lcom/thoughtworks/xstream/mapper/Mapper$ImplicitCollectionMapping;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getItemTypeForItemFieldName(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Class;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getLocalConverter(Ljava/lang/Class;Ljava/lang/String;)Lcom/thoughtworks/xstream/converters/Converter;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public isImmutableValueType(Ljava/lang/Class;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public lookupMapperOfType(Ljava/lang/Class;)Lcom/thoughtworks/xstream/mapper/Mapper;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public lookupName(Ljava/lang/Class;)Ljava/lang/String;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/thoughtworks/xstream/mapper/DefaultMapper;->serializedClass(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public lookupType(Ljava/lang/String;)Ljava/lang/Class;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/thoughtworks/xstream/mapper/DefaultMapper;->realClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method

.method public realClass(Ljava/lang/String;)Ljava/lang/Class;
    .locals 6

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-static {p1}, Lcom/thoughtworks/xstream/core/util/Primitives;->primitiveType(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    if-eqz v2, :cond_0

    move-object v0, v2

    :goto_0
    return-object v0

    :cond_0
    :try_start_0
    sget-object v2, Lcom/thoughtworks/xstream/mapper/DefaultMapper;->XSTREAM_PACKAGE_ROOT:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-class v1, Lcom/thoughtworks/xstream/mapper/DefaultMapper;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    move-object v5, v1

    move v1, v0

    move-object v0, v5

    :goto_1
    invoke-static {p1, v1, v0}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v0

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lcom/thoughtworks/xstream/mapper/DefaultMapper;->classLoaderReference:Lcom/thoughtworks/xstream/core/ClassLoaderReference;

    invoke-virtual {v2}, Lcom/thoughtworks/xstream/core/ClassLoaderReference;->getReference()Ljava/lang/ClassLoader;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    const/16 v4, 0x5b

    if-ne v3, v4, :cond_2

    :goto_2
    move v1, v0

    move-object v0, v2

    goto :goto_1

    :cond_2
    move v0, v1

    goto :goto_2

    :catch_0
    move-exception v0

    new-instance v0, Lcom/thoughtworks/xstream/mapper/CannotResolveClassException;

    invoke-direct {v0, p1}, Lcom/thoughtworks/xstream/mapper/CannotResolveClassException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public realMember(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    return-object p2
.end method

.method public serializedClass(Ljava/lang/Class;)Ljava/lang/String;
    .locals 1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public serializedMember(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    return-object p2
.end method

.method public shouldSerializeMember(Ljava/lang/Class;Ljava/lang/String;)Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
