.class public abstract Lmf/javax/xml/stream/XMLInputFactory;
.super Ljava/lang/Object;
.source "XMLInputFactory.java"


# static fields
.field public static final ALLOCATOR:Ljava/lang/String; = "javax.xml.stream.allocator"

.field static final DEFAULIMPL:Ljava/lang/String; = "com.sun.xml.internal.stream.XMLInputFactoryImpl"

.field public static final IS_COALESCING:Ljava/lang/String; = "javax.xml.stream.isCoalescing"

.field public static final IS_NAMESPACE_AWARE:Ljava/lang/String; = "javax.xml.stream.isNamespaceAware"

.field public static final IS_REPLACING_ENTITY_REFERENCES:Ljava/lang/String; = "javax.xml.stream.isReplacingEntityReferences"

.field public static final IS_SUPPORTING_EXTERNAL_ENTITIES:Ljava/lang/String; = "javax.xml.stream.isSupportingExternalEntities"

.field public static final IS_VALIDATING:Ljava/lang/String; = "javax.xml.stream.isValidating"

.field public static final REPORTER:Ljava/lang/String; = "javax.xml.stream.reporter"

.field public static final RESOLVER:Ljava/lang/String; = "javax.xml.stream.resolver"

.field public static final SUPPORT_DTD:Ljava/lang/String; = "javax.xml.stream.supportDTD"


# direct methods
.method protected constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static newFactory()Lmf/javax/xml/stream/XMLInputFactory;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/javax/xml/stream/FactoryConfigurationError;
        }
    .end annotation

    const-string/jumbo v0, "javax.xml.stream.XMLInputFactory"

    const-string/jumbo v1, "com.sun.xml.internal.stream.XMLInputFactoryImpl"

    invoke-static {v0, v1}, Lmf/javax/xml/stream/FactoryFinder;->find(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmf/javax/xml/stream/XMLInputFactory;

    return-object v0
.end method

.method public static newFactory(Ljava/lang/String;Ljava/lang/ClassLoader;)Lmf/javax/xml/stream/XMLInputFactory;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/javax/xml/stream/FactoryConfigurationError;
        }
    .end annotation

    const/4 v0, 0x0

    :try_start_0
    invoke-static {p0, p1, v0}, Lmf/javax/xml/stream/FactoryFinder;->find(Ljava/lang/String;Ljava/lang/ClassLoader;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmf/javax/xml/stream/XMLInputFactory;
    :try_end_0
    .catch Lmf/javax/xml/stream/FactoryFinder$ConfigurationError; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Lmf/javax/xml/stream/FactoryConfigurationError;

    invoke-virtual {v0}, Lmf/javax/xml/stream/FactoryFinder$ConfigurationError;->getException()Ljava/lang/Exception;

    move-result-object v2

    invoke-virtual {v0}, Lmf/javax/xml/stream/FactoryFinder$ConfigurationError;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Lmf/javax/xml/stream/FactoryConfigurationError;-><init>(Ljava/lang/Exception;Ljava/lang/String;)V

    throw v1
.end method

.method public static newInstance()Lmf/javax/xml/stream/XMLInputFactory;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/javax/xml/stream/FactoryConfigurationError;
        }
    .end annotation

    const-string/jumbo v0, "javax.xml.stream.XMLInputFactory"

    const-string/jumbo v1, "com.sun.xml.internal.stream.XMLInputFactoryImpl"

    invoke-static {v0, v1}, Lmf/javax/xml/stream/FactoryFinder;->find(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmf/javax/xml/stream/XMLInputFactory;

    return-object v0
.end method

.method public static newInstance(Ljava/lang/String;Ljava/lang/ClassLoader;)Lmf/javax/xml/stream/XMLInputFactory;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/javax/xml/stream/FactoryConfigurationError;
        }
    .end annotation

    const/4 v0, 0x0

    :try_start_0
    invoke-static {p0, p1, v0}, Lmf/javax/xml/stream/FactoryFinder;->find(Ljava/lang/String;Ljava/lang/ClassLoader;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmf/javax/xml/stream/XMLInputFactory;
    :try_end_0
    .catch Lmf/javax/xml/stream/FactoryFinder$ConfigurationError; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Lmf/javax/xml/stream/FactoryConfigurationError;

    invoke-virtual {v0}, Lmf/javax/xml/stream/FactoryFinder$ConfigurationError;->getException()Ljava/lang/Exception;

    move-result-object v2

    invoke-virtual {v0}, Lmf/javax/xml/stream/FactoryFinder$ConfigurationError;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Lmf/javax/xml/stream/FactoryConfigurationError;-><init>(Ljava/lang/Exception;Ljava/lang/String;)V

    throw v1
.end method


# virtual methods
.method public abstract createFilteredReader(Lmf/javax/xml/stream/XMLEventReader;Lmf/javax/xml/stream/EventFilter;)Lmf/javax/xml/stream/XMLEventReader;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/javax/xml/stream/XMLStreamException;
        }
    .end annotation
.end method

.method public abstract createFilteredReader(Lmf/javax/xml/stream/XMLStreamReader;Lmf/javax/xml/stream/StreamFilter;)Lmf/javax/xml/stream/XMLStreamReader;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/javax/xml/stream/XMLStreamException;
        }
    .end annotation
.end method

.method public abstract createXMLEventReader(Ljava/io/InputStream;)Lmf/javax/xml/stream/XMLEventReader;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/javax/xml/stream/XMLStreamException;
        }
    .end annotation
.end method

.method public abstract createXMLEventReader(Ljava/io/InputStream;Ljava/lang/String;)Lmf/javax/xml/stream/XMLEventReader;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/javax/xml/stream/XMLStreamException;
        }
    .end annotation
.end method

.method public abstract createXMLEventReader(Ljava/io/Reader;)Lmf/javax/xml/stream/XMLEventReader;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/javax/xml/stream/XMLStreamException;
        }
    .end annotation
.end method

.method public abstract createXMLEventReader(Ljava/lang/String;Ljava/io/InputStream;)Lmf/javax/xml/stream/XMLEventReader;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/javax/xml/stream/XMLStreamException;
        }
    .end annotation
.end method

.method public abstract createXMLEventReader(Ljava/lang/String;Ljava/io/Reader;)Lmf/javax/xml/stream/XMLEventReader;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/javax/xml/stream/XMLStreamException;
        }
    .end annotation
.end method

.method public abstract createXMLEventReader(Lmf/javax/xml/stream/XMLStreamReader;)Lmf/javax/xml/stream/XMLEventReader;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/javax/xml/stream/XMLStreamException;
        }
    .end annotation
.end method

.method public abstract createXMLEventReader(Lmf/javax/xml/transform/Source;)Lmf/javax/xml/stream/XMLEventReader;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/javax/xml/stream/XMLStreamException;
        }
    .end annotation
.end method

.method public abstract createXMLStreamReader(Ljava/io/InputStream;)Lmf/javax/xml/stream/XMLStreamReader;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/javax/xml/stream/XMLStreamException;
        }
    .end annotation
.end method

.method public abstract createXMLStreamReader(Ljava/io/InputStream;Ljava/lang/String;)Lmf/javax/xml/stream/XMLStreamReader;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/javax/xml/stream/XMLStreamException;
        }
    .end annotation
.end method

.method public abstract createXMLStreamReader(Ljava/io/Reader;)Lmf/javax/xml/stream/XMLStreamReader;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/javax/xml/stream/XMLStreamException;
        }
    .end annotation
.end method

.method public abstract createXMLStreamReader(Ljava/lang/String;Ljava/io/InputStream;)Lmf/javax/xml/stream/XMLStreamReader;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/javax/xml/stream/XMLStreamException;
        }
    .end annotation
.end method

.method public abstract createXMLStreamReader(Ljava/lang/String;Ljava/io/Reader;)Lmf/javax/xml/stream/XMLStreamReader;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/javax/xml/stream/XMLStreamException;
        }
    .end annotation
.end method

.method public abstract createXMLStreamReader(Lmf/javax/xml/transform/Source;)Lmf/javax/xml/stream/XMLStreamReader;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/javax/xml/stream/XMLStreamException;
        }
    .end annotation
.end method

.method public abstract getEventAllocator()Lmf/javax/xml/stream/util/XMLEventAllocator;
.end method

.method public abstract getProperty(Ljava/lang/String;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation
.end method

.method public abstract getXMLReporter()Lmf/javax/xml/stream/XMLReporter;
.end method

.method public abstract getXMLResolver()Lmf/javax/xml/stream/XMLResolver;
.end method

.method public abstract isPropertySupported(Ljava/lang/String;)Z
.end method

.method public abstract setEventAllocator(Lmf/javax/xml/stream/util/XMLEventAllocator;)V
.end method

.method public abstract setProperty(Ljava/lang/String;Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation
.end method

.method public abstract setXMLReporter(Lmf/javax/xml/stream/XMLReporter;)V
.end method

.method public abstract setXMLResolver(Lmf/javax/xml/stream/XMLResolver;)V
.end method
