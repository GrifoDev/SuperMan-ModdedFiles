.class public interface abstract Lmf/org/apache/xml/resolver/readers/CatalogReader;
.super Ljava/lang/Object;
.source "CatalogReader.java"


# virtual methods
.method public abstract readCatalog(Lmf/org/apache/xml/resolver/Catalog;Ljava/io/InputStream;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lmf/org/apache/xml/resolver/CatalogException;
        }
    .end annotation
.end method

.method public abstract readCatalog(Lmf/org/apache/xml/resolver/Catalog;Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/MalformedURLException;,
            Ljava/io/IOException;,
            Lmf/org/apache/xml/resolver/CatalogException;
        }
    .end annotation
.end method
