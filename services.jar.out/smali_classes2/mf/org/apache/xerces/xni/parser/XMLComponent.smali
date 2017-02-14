.class public interface abstract Lmf/org/apache/xerces/xni/parser/XMLComponent;
.super Ljava/lang/Object;
.source "XMLComponent.java"


# virtual methods
.method public abstract getFeatureDefault(Ljava/lang/String;)Ljava/lang/Boolean;
.end method

.method public abstract getPropertyDefault(Ljava/lang/String;)Ljava/lang/Object;
.end method

.method public abstract getRecognizedFeatures()[Ljava/lang/String;
.end method

.method public abstract getRecognizedProperties()[Ljava/lang/String;
.end method

.method public abstract reset(Lmf/org/apache/xerces/xni/parser/XMLComponentManager;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/parser/XMLConfigurationException;
        }
    .end annotation
.end method

.method public abstract setFeature(Ljava/lang/String;Z)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/parser/XMLConfigurationException;
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
