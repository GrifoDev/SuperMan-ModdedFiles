.class public final Lmf/org/apache/xerces/impl/xs/util/XSInputSource;
.super Lmf/org/apache/xerces/xni/parser/XMLInputSource;
.source "XSInputSource.java"


# instance fields
.field private fComponents:[Lmf/org/apache/xerces/xs/XSObject;

.field private fGrammars:[Lmf/org/apache/xerces/impl/xs/SchemaGrammar;


# direct methods
.method public constructor <init>([Lmf/org/apache/xerces/impl/xs/SchemaGrammar;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0, v0, v0}, Lmf/org/apache/xerces/xni/parser/XMLInputSource;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iput-object p1, p0, Lmf/org/apache/xerces/impl/xs/util/XSInputSource;->fGrammars:[Lmf/org/apache/xerces/impl/xs/SchemaGrammar;

    iput-object v0, p0, Lmf/org/apache/xerces/impl/xs/util/XSInputSource;->fComponents:[Lmf/org/apache/xerces/xs/XSObject;

    return-void
.end method

.method public constructor <init>([Lmf/org/apache/xerces/xs/XSObject;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0, v0, v0}, Lmf/org/apache/xerces/xni/parser/XMLInputSource;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lmf/org/apache/xerces/impl/xs/util/XSInputSource;->fGrammars:[Lmf/org/apache/xerces/impl/xs/SchemaGrammar;

    iput-object p1, p0, Lmf/org/apache/xerces/impl/xs/util/XSInputSource;->fComponents:[Lmf/org/apache/xerces/xs/XSObject;

    return-void
.end method


# virtual methods
.method public getComponents()[Lmf/org/apache/xerces/xs/XSObject;
    .locals 1

    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/util/XSInputSource;->fComponents:[Lmf/org/apache/xerces/xs/XSObject;

    return-object v0
.end method

.method public getGrammars()[Lmf/org/apache/xerces/impl/xs/SchemaGrammar;
    .locals 1

    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/util/XSInputSource;->fGrammars:[Lmf/org/apache/xerces/impl/xs/SchemaGrammar;

    return-object v0
.end method

.method public setComponents([Lmf/org/apache/xerces/xs/XSObject;)V
    .locals 0

    iput-object p1, p0, Lmf/org/apache/xerces/impl/xs/util/XSInputSource;->fComponents:[Lmf/org/apache/xerces/xs/XSObject;

    return-void
.end method

.method public setGrammars([Lmf/org/apache/xerces/impl/xs/SchemaGrammar;)V
    .locals 0

    iput-object p1, p0, Lmf/org/apache/xerces/impl/xs/util/XSInputSource;->fGrammars:[Lmf/org/apache/xerces/impl/xs/SchemaGrammar;

    return-void
.end method
