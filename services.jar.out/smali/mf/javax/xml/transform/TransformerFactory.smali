.class public abstract Lmf/javax/xml/transform/TransformerFactory;
.super Ljava/lang/Object;
.source "TransformerFactory.java"


# direct methods
.method protected constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static newInstance()Lmf/javax/xml/transform/TransformerFactory;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/javax/xml/transform/TransformerFactoryConfigurationError;
        }
    .end annotation

    :try_start_0
    const-string/jumbo v0, "javax.xml.transform.TransformerFactory"

    const-string/jumbo v1, "com.sun.org.apache.xalan.internal.xsltc.trax.TransformerFactoryImpl"

    invoke-static {v0, v1}, Lmf/javax/xml/transform/FactoryFinder;->find(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmf/javax/xml/transform/TransformerFactory;
    :try_end_0
    .catch Lmf/javax/xml/transform/FactoryFinder$ConfigurationError; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Lmf/javax/xml/transform/TransformerFactoryConfigurationError;

    invoke-virtual {v0}, Lmf/javax/xml/transform/FactoryFinder$ConfigurationError;->getException()Ljava/lang/Exception;

    move-result-object v2

    invoke-virtual {v0}, Lmf/javax/xml/transform/FactoryFinder$ConfigurationError;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Lmf/javax/xml/transform/TransformerFactoryConfigurationError;-><init>(Ljava/lang/Exception;Ljava/lang/String;)V

    throw v1
.end method

.method public static newInstance(Ljava/lang/String;Ljava/lang/ClassLoader;)Lmf/javax/xml/transform/TransformerFactory;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/javax/xml/transform/TransformerFactoryConfigurationError;
        }
    .end annotation

    const/4 v0, 0x0

    :try_start_0
    invoke-static {p0, p1, v0}, Lmf/javax/xml/transform/FactoryFinder;->newInstance(Ljava/lang/String;Ljava/lang/ClassLoader;Z)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmf/javax/xml/transform/TransformerFactory;
    :try_end_0
    .catch Lmf/javax/xml/transform/FactoryFinder$ConfigurationError; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Lmf/javax/xml/transform/TransformerFactoryConfigurationError;

    invoke-virtual {v0}, Lmf/javax/xml/transform/FactoryFinder$ConfigurationError;->getException()Ljava/lang/Exception;

    move-result-object v2

    invoke-virtual {v0}, Lmf/javax/xml/transform/FactoryFinder$ConfigurationError;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Lmf/javax/xml/transform/TransformerFactoryConfigurationError;-><init>(Ljava/lang/Exception;Ljava/lang/String;)V

    throw v1
.end method


# virtual methods
.method public abstract getAssociatedStylesheet(Lmf/javax/xml/transform/Source;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lmf/javax/xml/transform/Source;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/javax/xml/transform/TransformerConfigurationException;
        }
    .end annotation
.end method

.method public abstract getAttribute(Ljava/lang/String;)Ljava/lang/Object;
.end method

.method public abstract getErrorListener()Lmf/javax/xml/transform/ErrorListener;
.end method

.method public abstract getFeature(Ljava/lang/String;)Z
.end method

.method public abstract getURIResolver()Lmf/javax/xml/transform/URIResolver;
.end method

.method public abstract newTemplates(Lmf/javax/xml/transform/Source;)Lmf/javax/xml/transform/Templates;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/javax/xml/transform/TransformerConfigurationException;
        }
    .end annotation
.end method

.method public abstract newTransformer()Lmf/javax/xml/transform/Transformer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/javax/xml/transform/TransformerConfigurationException;
        }
    .end annotation
.end method

.method public abstract newTransformer(Lmf/javax/xml/transform/Source;)Lmf/javax/xml/transform/Transformer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/javax/xml/transform/TransformerConfigurationException;
        }
    .end annotation
.end method

.method public abstract setAttribute(Ljava/lang/String;Ljava/lang/Object;)V
.end method

.method public abstract setErrorListener(Lmf/javax/xml/transform/ErrorListener;)V
.end method

.method public abstract setFeature(Ljava/lang/String;Z)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/javax/xml/transform/TransformerConfigurationException;
        }
    .end annotation
.end method

.method public abstract setURIResolver(Lmf/javax/xml/transform/URIResolver;)V
.end method
