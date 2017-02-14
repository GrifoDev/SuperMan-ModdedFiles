.class public abstract Lmf/javax/xml/transform/sax/SAXTransformerFactory;
.super Lmf/javax/xml/transform/TransformerFactory;
.source "SAXTransformerFactory.java"


# static fields
.field public static final FEATURE:Ljava/lang/String; = "http://javax.xml.transform.sax.SAXTransformerFactory/feature"

.field public static final FEATURE_XMLFILTER:Ljava/lang/String; = "http://javax.xml.transform.sax.SAXTransformerFactory/feature/xmlfilter"


# direct methods
.method protected constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lmf/javax/xml/transform/TransformerFactory;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract newTemplatesHandler()Lmf/javax/xml/transform/sax/TemplatesHandler;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/javax/xml/transform/TransformerConfigurationException;
        }
    .end annotation
.end method

.method public abstract newTransformerHandler()Lmf/javax/xml/transform/sax/TransformerHandler;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/javax/xml/transform/TransformerConfigurationException;
        }
    .end annotation
.end method

.method public abstract newTransformerHandler(Lmf/javax/xml/transform/Source;)Lmf/javax/xml/transform/sax/TransformerHandler;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/javax/xml/transform/TransformerConfigurationException;
        }
    .end annotation
.end method

.method public abstract newTransformerHandler(Lmf/javax/xml/transform/Templates;)Lmf/javax/xml/transform/sax/TransformerHandler;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/javax/xml/transform/TransformerConfigurationException;
        }
    .end annotation
.end method

.method public abstract newXMLFilter(Lmf/javax/xml/transform/Source;)Lorg/xml/sax/XMLFilter;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/javax/xml/transform/TransformerConfigurationException;
        }
    .end annotation
.end method

.method public abstract newXMLFilter(Lmf/javax/xml/transform/Templates;)Lorg/xml/sax/XMLFilter;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/javax/xml/transform/TransformerConfigurationException;
        }
    .end annotation
.end method
