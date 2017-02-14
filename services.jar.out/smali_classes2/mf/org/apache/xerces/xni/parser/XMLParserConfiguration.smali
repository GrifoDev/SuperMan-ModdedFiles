.class public interface abstract Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;
.super Ljava/lang/Object;
.source "XMLParserConfiguration.java"

# interfaces
.implements Lmf/org/apache/xerces/xni/parser/XMLComponentManager;


# virtual methods
.method public abstract addRecognizedFeatures([Ljava/lang/String;)V
.end method

.method public abstract addRecognizedProperties([Ljava/lang/String;)V
.end method

.method public abstract getDTDContentModelHandler()Lmf/org/apache/xerces/xni/XMLDTDContentModelHandler;
.end method

.method public abstract getDTDHandler()Lmf/org/apache/xerces/xni/XMLDTDHandler;
.end method

.method public abstract getDocumentHandler()Lmf/org/apache/xerces/xni/XMLDocumentHandler;
.end method

.method public abstract getEntityResolver()Lmf/org/apache/xerces/xni/parser/XMLEntityResolver;
.end method

.method public abstract getErrorHandler()Lmf/org/apache/xerces/xni/parser/XMLErrorHandler;
.end method

.method public abstract getFeature(Ljava/lang/String;)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/parser/XMLConfigurationException;
        }
    .end annotation
.end method

.method public abstract getLocale()Ljava/util/Locale;
.end method

.method public abstract getProperty(Ljava/lang/String;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/parser/XMLConfigurationException;
        }
    .end annotation
.end method

.method public abstract parse(Lmf/org/apache/xerces/xni/parser/XMLInputSource;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/XNIException;,
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract setDTDContentModelHandler(Lmf/org/apache/xerces/xni/XMLDTDContentModelHandler;)V
.end method

.method public abstract setDTDHandler(Lmf/org/apache/xerces/xni/XMLDTDHandler;)V
.end method

.method public abstract setDocumentHandler(Lmf/org/apache/xerces/xni/XMLDocumentHandler;)V
.end method

.method public abstract setEntityResolver(Lmf/org/apache/xerces/xni/parser/XMLEntityResolver;)V
.end method

.method public abstract setErrorHandler(Lmf/org/apache/xerces/xni/parser/XMLErrorHandler;)V
.end method

.method public abstract setFeature(Ljava/lang/String;Z)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/parser/XMLConfigurationException;
        }
    .end annotation
.end method

.method public abstract setLocale(Ljava/util/Locale;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation
.end method

.method public abstract setProperty(Ljava/lang/String;Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/parser/XMLConfigurationException;
        }
    .end annotation
.end method
