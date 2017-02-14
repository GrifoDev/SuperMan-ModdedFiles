.class public Lmf/javax/xml/transform/TransformerConfigurationException;
.super Lmf/javax/xml/transform/TransformerException;
.source "TransformerConfigurationException.java"


# direct methods
.method public constructor <init>()V
    .locals 1

    const-string/jumbo v0, "Configuration Error"

    invoke-direct {p0, v0}, Lmf/javax/xml/transform/TransformerException;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lmf/javax/xml/transform/TransformerException;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lmf/javax/xml/transform/TransformerException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lmf/javax/xml/transform/SourceLocator;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lmf/javax/xml/transform/TransformerException;-><init>(Ljava/lang/String;Lmf/javax/xml/transform/SourceLocator;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lmf/javax/xml/transform/SourceLocator;Ljava/lang/Throwable;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lmf/javax/xml/transform/TransformerException;-><init>(Ljava/lang/String;Lmf/javax/xml/transform/SourceLocator;Ljava/lang/Throwable;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Throwable;)V
    .locals 0

    invoke-direct {p0, p1}, Lmf/javax/xml/transform/TransformerException;-><init>(Ljava/lang/Throwable;)V

    return-void
.end method
