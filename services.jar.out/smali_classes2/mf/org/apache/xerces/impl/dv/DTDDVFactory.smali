.class public abstract Lmf/org/apache/xerces/impl/dv/DTDDVFactory;
.super Ljava/lang/Object;
.source "DTDDVFactory.java"


# static fields
.field private static final DEFAULT_FACTORY_CLASS:Ljava/lang/String; = "mf.org.apache.xerces.impl.dv.dtd.DTDDVFactoryImpl"


# direct methods
.method protected constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final getInstance()Lmf/org/apache/xerces/impl/dv/DTDDVFactory;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/impl/dv/DVFactoryException;
        }
    .end annotation

    const-string/jumbo v0, "mf.org.apache.xerces.impl.dv.dtd.DTDDVFactoryImpl"

    invoke-static {v0}, Lmf/org/apache/xerces/impl/dv/DTDDVFactory;->getInstance(Ljava/lang/String;)Lmf/org/apache/xerces/impl/dv/DTDDVFactory;

    move-result-object v0

    return-object v0
.end method

.method public static final getInstance(Ljava/lang/String;)Lmf/org/apache/xerces/impl/dv/DTDDVFactory;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/impl/dv/DVFactoryException;
        }
    .end annotation

    :try_start_0
    invoke-static {}, Lmf/org/apache/xerces/impl/dv/ObjectFactory;->findClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Lmf/org/apache/xerces/impl/dv/ObjectFactory;->newInstance(Ljava/lang/String;Ljava/lang/ClassLoader;Z)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmf/org/apache/xerces/impl/dv/DTDDVFactory;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    new-instance v0, Lmf/org/apache/xerces/impl/dv/DVFactoryException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "DTD factory class "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " does not extend from DTDDVFactory."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lmf/org/apache/xerces/impl/dv/DVFactoryException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public abstract getBuiltInDV(Ljava/lang/String;)Lmf/org/apache/xerces/impl/dv/DatatypeValidator;
.end method

.method public abstract getBuiltInTypes()Ljava/util/Hashtable;
.end method
