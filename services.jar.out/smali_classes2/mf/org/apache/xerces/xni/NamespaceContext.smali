.class public interface abstract Lmf/org/apache/xerces/xni/NamespaceContext;
.super Ljava/lang/Object;
.source "NamespaceContext.java"


# static fields
.field public static final XMLNS_URI:Ljava/lang/String;

.field public static final XML_URI:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string/jumbo v0, "http://www.w3.org/XML/1998/namespace"

    invoke-virtual {v0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lmf/org/apache/xerces/xni/NamespaceContext;->XML_URI:Ljava/lang/String;

    const-string/jumbo v0, "http://www.w3.org/2000/xmlns/"

    invoke-virtual {v0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lmf/org/apache/xerces/xni/NamespaceContext;->XMLNS_URI:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public abstract declarePrefix(Ljava/lang/String;Ljava/lang/String;)Z
.end method

.method public abstract getAllPrefixes()Ljava/util/Enumeration;
.end method

.method public abstract getDeclaredPrefixAt(I)Ljava/lang/String;
.end method

.method public abstract getDeclaredPrefixCount()I
.end method

.method public abstract getPrefix(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract getURI(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract popContext()V
.end method

.method public abstract pushContext()V
.end method

.method public abstract reset()V
.end method
