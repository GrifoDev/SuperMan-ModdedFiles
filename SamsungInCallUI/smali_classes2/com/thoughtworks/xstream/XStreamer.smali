.class public Lcom/thoughtworks/xstream/XStreamer;
.super Ljava/lang/Object;


# static fields
.field private static final PERMISSIONS:[Lcom/thoughtworks/xstream/security/TypePermission;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    const/4 v4, 0x1

    const/4 v6, 0x0

    const/16 v0, 0x10

    new-array v0, v0, [Lcom/thoughtworks/xstream/security/TypePermission;

    new-instance v1, Lcom/thoughtworks/xstream/security/TypeHierarchyPermission;

    const-class v2, Lcom/thoughtworks/xstream/converters/ConverterMatcher;

    invoke-direct {v1, v2}, Lcom/thoughtworks/xstream/security/TypeHierarchyPermission;-><init>(Ljava/lang/Class;)V

    aput-object v1, v0, v6

    new-instance v1, Lcom/thoughtworks/xstream/security/TypeHierarchyPermission;

    const-class v2, Lcom/thoughtworks/xstream/mapper/Mapper;

    invoke-direct {v1, v2}, Lcom/thoughtworks/xstream/security/TypeHierarchyPermission;-><init>(Ljava/lang/Class;)V

    aput-object v1, v0, v4

    const/4 v1, 0x2

    new-instance v2, Lcom/thoughtworks/xstream/security/TypeHierarchyPermission;

    const-class v3, Lcom/thoughtworks/xstream/XStream;

    invoke-direct {v2, v3}, Lcom/thoughtworks/xstream/security/TypeHierarchyPermission;-><init>(Ljava/lang/Class;)V

    aput-object v2, v0, v1

    const/4 v1, 0x3

    new-instance v2, Lcom/thoughtworks/xstream/security/TypeHierarchyPermission;

    const-class v3, Lcom/thoughtworks/xstream/converters/reflection/ReflectionProvider;

    invoke-direct {v2, v3}, Lcom/thoughtworks/xstream/security/TypeHierarchyPermission;-><init>(Ljava/lang/Class;)V

    aput-object v2, v0, v1

    const/4 v1, 0x4

    new-instance v2, Lcom/thoughtworks/xstream/security/TypeHierarchyPermission;

    const-class v3, Lcom/thoughtworks/xstream/converters/javabean/JavaBeanProvider;

    invoke-direct {v2, v3}, Lcom/thoughtworks/xstream/security/TypeHierarchyPermission;-><init>(Ljava/lang/Class;)V

    aput-object v2, v0, v1

    const/4 v1, 0x5

    new-instance v2, Lcom/thoughtworks/xstream/security/TypeHierarchyPermission;

    const-class v3, Lcom/thoughtworks/xstream/converters/reflection/FieldKeySorter;

    invoke-direct {v2, v3}, Lcom/thoughtworks/xstream/security/TypeHierarchyPermission;-><init>(Ljava/lang/Class;)V

    aput-object v2, v0, v1

    const/4 v1, 0x6

    new-instance v2, Lcom/thoughtworks/xstream/security/TypeHierarchyPermission;

    const-class v3, Lcom/thoughtworks/xstream/converters/ConverterLookup;

    invoke-direct {v2, v3}, Lcom/thoughtworks/xstream/security/TypeHierarchyPermission;-><init>(Ljava/lang/Class;)V

    aput-object v2, v0, v1

    const/4 v1, 0x7

    new-instance v2, Lcom/thoughtworks/xstream/security/TypeHierarchyPermission;

    const-class v3, Lcom/thoughtworks/xstream/converters/ConverterRegistry;

    invoke-direct {v2, v3}, Lcom/thoughtworks/xstream/security/TypeHierarchyPermission;-><init>(Ljava/lang/Class;)V

    aput-object v2, v0, v1

    const/16 v1, 0x8

    new-instance v2, Lcom/thoughtworks/xstream/security/TypeHierarchyPermission;

    const-class v3, Lcom/thoughtworks/xstream/io/HierarchicalStreamDriver;

    invoke-direct {v2, v3}, Lcom/thoughtworks/xstream/security/TypeHierarchyPermission;-><init>(Ljava/lang/Class;)V

    aput-object v2, v0, v1

    const/16 v1, 0x9

    new-instance v2, Lcom/thoughtworks/xstream/security/TypeHierarchyPermission;

    const-class v3, Lcom/thoughtworks/xstream/MarshallingStrategy;

    invoke-direct {v2, v3}, Lcom/thoughtworks/xstream/security/TypeHierarchyPermission;-><init>(Ljava/lang/Class;)V

    aput-object v2, v0, v1

    const/16 v1, 0xa

    new-instance v2, Lcom/thoughtworks/xstream/security/TypeHierarchyPermission;

    const-class v3, Lcom/thoughtworks/xstream/converters/MarshallingContext;

    invoke-direct {v2, v3}, Lcom/thoughtworks/xstream/security/TypeHierarchyPermission;-><init>(Ljava/lang/Class;)V

    aput-object v2, v0, v1

    const/16 v1, 0xb

    new-instance v2, Lcom/thoughtworks/xstream/security/TypeHierarchyPermission;

    const-class v3, Lcom/thoughtworks/xstream/converters/UnmarshallingContext;

    invoke-direct {v2, v3}, Lcom/thoughtworks/xstream/security/TypeHierarchyPermission;-><init>(Ljava/lang/Class;)V

    aput-object v2, v0, v1

    const/16 v1, 0xc

    new-instance v2, Lcom/thoughtworks/xstream/security/TypeHierarchyPermission;

    const-class v3, Lcom/thoughtworks/xstream/io/naming/NameCoder;

    invoke-direct {v2, v3}, Lcom/thoughtworks/xstream/security/TypeHierarchyPermission;-><init>(Ljava/lang/Class;)V

    aput-object v2, v0, v1

    const/16 v1, 0xd

    new-instance v2, Lcom/thoughtworks/xstream/security/TypeHierarchyPermission;

    const-class v3, Lcom/thoughtworks/xstream/security/TypePermission;

    invoke-direct {v2, v3}, Lcom/thoughtworks/xstream/security/TypeHierarchyPermission;-><init>(Ljava/lang/Class;)V

    aput-object v2, v0, v1

    const/16 v1, 0xe

    new-instance v2, Lcom/thoughtworks/xstream/security/WildcardTypePermission;

    new-array v3, v4, [Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-class v5, Lcom/thoughtworks/xstream/core/JVM;

    invoke-virtual {v5}, Ljava/lang/Class;->getPackage()Ljava/lang/Package;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Package;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ".**"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-direct {v2, v3}, Lcom/thoughtworks/xstream/security/WildcardTypePermission;-><init>([Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0xf

    new-instance v2, Lcom/thoughtworks/xstream/security/TypeHierarchyPermission;

    const-class v3, Ljavax/xml/datatype/DatatypeFactory;

    invoke-direct {v2, v3}, Lcom/thoughtworks/xstream/security/TypeHierarchyPermission;-><init>(Ljava/lang/Class;)V

    aput-object v2, v0, v1

    sput-object v0, Lcom/thoughtworks/xstream/XStreamer;->PERMISSIONS:[Lcom/thoughtworks/xstream/security/TypePermission;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getDefaultPermissions()[Lcom/thoughtworks/xstream/security/TypePermission;
    .locals 1

    sget-object v0, Lcom/thoughtworks/xstream/XStreamer;->PERMISSIONS:[Lcom/thoughtworks/xstream/security/TypePermission;

    invoke-virtual {v0}, [Lcom/thoughtworks/xstream/security/TypePermission;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/thoughtworks/xstream/security/TypePermission;

    check-cast v0, [Lcom/thoughtworks/xstream/security/TypePermission;

    return-object v0
.end method


# virtual methods
.method public fromXML(Lcom/thoughtworks/xstream/io/HierarchicalStreamDriver;Ljava/io/Reader;)Ljava/lang/Object;
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [Lcom/thoughtworks/xstream/security/TypePermission;

    const/4 v1, 0x0

    sget-object v2, Lcom/thoughtworks/xstream/security/AnyTypePermission;->ANY:Lcom/thoughtworks/xstream/security/TypePermission;

    aput-object v2, v0, v1

    invoke-virtual {p0, p1, p2, v0}, Lcom/thoughtworks/xstream/XStreamer;->fromXML(Lcom/thoughtworks/xstream/io/HierarchicalStreamDriver;Ljava/io/Reader;[Lcom/thoughtworks/xstream/security/TypePermission;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public fromXML(Lcom/thoughtworks/xstream/io/HierarchicalStreamDriver;Ljava/io/Reader;[Lcom/thoughtworks/xstream/security/TypePermission;)Ljava/lang/Object;
    .locals 3

    new-instance v1, Lcom/thoughtworks/xstream/XStream;

    invoke-direct {v1, p1}, Lcom/thoughtworks/xstream/XStream;-><init>(Lcom/thoughtworks/xstream/io/HierarchicalStreamDriver;)V

    const/4 v0, 0x0

    :goto_0
    array-length v2, p3

    if-ge v0, v2, :cond_0

    aget-object v2, p3, v0

    invoke-virtual {v1, v2}, Lcom/thoughtworks/xstream/XStream;->addPermission(Lcom/thoughtworks/xstream/security/TypePermission;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    invoke-interface {p1, p2}, Lcom/thoughtworks/xstream/io/HierarchicalStreamDriver;->createReader(Ljava/io/Reader;)Lcom/thoughtworks/xstream/io/HierarchicalStreamReader;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/thoughtworks/xstream/XStream;->createObjectInputStream(Lcom/thoughtworks/xstream/io/HierarchicalStreamReader;)Ljava/io/ObjectInputStream;

    move-result-object v1

    :try_start_0
    invoke-virtual {v1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/thoughtworks/xstream/XStream;

    invoke-virtual {v0, v2}, Lcom/thoughtworks/xstream/XStream;->createObjectInputStream(Lcom/thoughtworks/xstream/io/HierarchicalStreamReader;)Ljava/io/ObjectInputStream;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-object v0

    :try_start_1
    invoke-virtual {v0}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v2

    :try_start_2
    invoke-virtual {v0}, Ljava/io/ObjectInputStream;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    invoke-virtual {v1}, Ljava/io/ObjectInputStream;->close()V

    return-object v2

    :catchall_0
    move-exception v2

    :try_start_3
    invoke-virtual {v0}, Ljava/io/ObjectInputStream;->close()V

    throw v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception v0

    invoke-virtual {v1}, Ljava/io/ObjectInputStream;->close()V

    throw v0
.end method

.method public fromXML(Lcom/thoughtworks/xstream/io/HierarchicalStreamDriver;Ljava/lang/String;)Ljava/lang/Object;
    .locals 3

    :try_start_0
    new-instance v0, Ljava/io/StringReader;

    invoke-direct {v0, p2}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1, v0}, Lcom/thoughtworks/xstream/XStreamer;->fromXML(Lcom/thoughtworks/xstream/io/HierarchicalStreamDriver;Ljava/io/Reader;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/io/ObjectStreamException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v0

    throw v0

    :catch_1
    move-exception v0

    new-instance v1, Lcom/thoughtworks/xstream/converters/ConversionException;

    const-string v2, "Unexpected IO error from a StringReader"

    invoke-direct {v1, v2, v0}, Lcom/thoughtworks/xstream/converters/ConversionException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public fromXML(Lcom/thoughtworks/xstream/io/HierarchicalStreamDriver;Ljava/lang/String;[Lcom/thoughtworks/xstream/security/TypePermission;)Ljava/lang/Object;
    .locals 3

    :try_start_0
    new-instance v0, Ljava/io/StringReader;

    invoke-direct {v0, p2}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1, v0, p3}, Lcom/thoughtworks/xstream/XStreamer;->fromXML(Lcom/thoughtworks/xstream/io/HierarchicalStreamDriver;Ljava/io/Reader;[Lcom/thoughtworks/xstream/security/TypePermission;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/io/ObjectStreamException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v0

    throw v0

    :catch_1
    move-exception v0

    new-instance v1, Lcom/thoughtworks/xstream/converters/ConversionException;

    const-string v2, "Unexpected IO error from a StringReader"

    invoke-direct {v1, v2, v0}, Lcom/thoughtworks/xstream/converters/ConversionException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public fromXML(Ljava/io/Reader;)Ljava/lang/Object;
    .locals 1

    new-instance v0, Lcom/thoughtworks/xstream/io/xml/XppDriver;

    invoke-direct {v0}, Lcom/thoughtworks/xstream/io/xml/XppDriver;-><init>()V

    invoke-virtual {p0, v0, p1}, Lcom/thoughtworks/xstream/XStreamer;->fromXML(Lcom/thoughtworks/xstream/io/HierarchicalStreamDriver;Ljava/io/Reader;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public fromXML(Ljava/io/Reader;[Lcom/thoughtworks/xstream/security/TypePermission;)Ljava/lang/Object;
    .locals 1

    new-instance v0, Lcom/thoughtworks/xstream/io/xml/XppDriver;

    invoke-direct {v0}, Lcom/thoughtworks/xstream/io/xml/XppDriver;-><init>()V

    invoke-virtual {p0, v0, p1, p2}, Lcom/thoughtworks/xstream/XStreamer;->fromXML(Lcom/thoughtworks/xstream/io/HierarchicalStreamDriver;Ljava/io/Reader;[Lcom/thoughtworks/xstream/security/TypePermission;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public fromXML(Ljava/lang/String;)Ljava/lang/Object;
    .locals 3

    :try_start_0
    new-instance v0, Ljava/io/StringReader;

    invoke-direct {v0, p1}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/thoughtworks/xstream/XStreamer;->fromXML(Ljava/io/Reader;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/io/ObjectStreamException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v0

    throw v0

    :catch_1
    move-exception v0

    new-instance v1, Lcom/thoughtworks/xstream/converters/ConversionException;

    const-string v2, "Unexpected IO error from a StringReader"

    invoke-direct {v1, v2, v0}, Lcom/thoughtworks/xstream/converters/ConversionException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public fromXML(Ljava/lang/String;[Lcom/thoughtworks/xstream/security/TypePermission;)Ljava/lang/Object;
    .locals 3

    :try_start_0
    new-instance v0, Ljava/io/StringReader;

    invoke-direct {v0, p1}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, p2}, Lcom/thoughtworks/xstream/XStreamer;->fromXML(Ljava/io/Reader;[Lcom/thoughtworks/xstream/security/TypePermission;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/io/ObjectStreamException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v0

    throw v0

    :catch_1
    move-exception v0

    new-instance v1, Lcom/thoughtworks/xstream/converters/ConversionException;

    const-string v2, "Unexpected IO error from a StringReader"

    invoke-direct {v1, v2, v0}, Lcom/thoughtworks/xstream/converters/ConversionException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public toXML(Lcom/thoughtworks/xstream/XStream;Ljava/lang/Object;)Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/io/StringWriter;

    invoke-direct {v0}, Ljava/io/StringWriter;-><init>()V

    :try_start_0
    invoke-virtual {p0, p1, p2, v0}, Lcom/thoughtworks/xstream/XStreamer;->toXML(Lcom/thoughtworks/xstream/XStream;Ljava/lang/Object;Ljava/io/Writer;)V
    :try_end_0
    .catch Ljava/io/ObjectStreamException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v0

    throw v0

    :catch_1
    move-exception v0

    new-instance v1, Lcom/thoughtworks/xstream/converters/ConversionException;

    const-string v2, "Unexpected IO error from a StringWriter"

    invoke-direct {v1, v2, v0}, Lcom/thoughtworks/xstream/converters/ConversionException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public toXML(Lcom/thoughtworks/xstream/XStream;Ljava/lang/Object;Ljava/io/Writer;)V
    .locals 2

    new-instance v0, Lcom/thoughtworks/xstream/XStream;

    invoke-direct {v0}, Lcom/thoughtworks/xstream/XStream;-><init>()V

    invoke-virtual {v0, p3}, Lcom/thoughtworks/xstream/XStream;->createObjectOutputStream(Ljava/io/Writer;)Ljava/io/ObjectOutputStream;

    move-result-object v1

    :try_start_0
    invoke-virtual {v1, p1}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    invoke-virtual {v1}, Ljava/io/ObjectOutputStream;->flush()V

    invoke-virtual {p1, p2, p3}, Lcom/thoughtworks/xstream/XStream;->toXML(Ljava/lang/Object;Ljava/io/Writer;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v1}, Ljava/io/ObjectOutputStream;->close()V

    return-void

    :catchall_0
    move-exception v0

    invoke-virtual {v1}, Ljava/io/ObjectOutputStream;->close()V

    throw v0
.end method
