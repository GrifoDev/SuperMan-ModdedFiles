.class public interface abstract Lmf/org/apache/xerces/xni/grammars/XMLGrammarLoader;
.super Ljava/lang/Object;
.source "XMLGrammarLoader.java"


# virtual methods
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

.method public abstract getRecognizedFeatures()[Ljava/lang/String;
.end method

.method public abstract getRecognizedProperties()[Ljava/lang/String;
.end method

.method public abstract loadGrammar(Lmf/org/apache/xerces/xni/parser/XMLInputSource;)Lmf/org/apache/xerces/xni/grammars/Grammar;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation
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
.end method

.method public abstract setProperty(Ljava/lang/String;Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/parser/XMLConfigurationException;
        }
    .end annotation
.end method
