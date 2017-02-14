.class public Lmf/org/apache/xerces/impl/xs/identity/Field;
.super Ljava/lang/Object;
.source "Field.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmf/org/apache/xerces/impl/xs/identity/Field$Matcher;,
        Lmf/org/apache/xerces/impl/xs/identity/Field$XPath;
    }
.end annotation


# instance fields
.field protected final fIdentityConstraint:Lmf/org/apache/xerces/impl/xs/identity/IdentityConstraint;

.field protected final fXPath:Lmf/org/apache/xerces/impl/xs/identity/Field$XPath;


# direct methods
.method public constructor <init>(Lmf/org/apache/xerces/impl/xs/identity/Field$XPath;Lmf/org/apache/xerces/impl/xs/identity/IdentityConstraint;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lmf/org/apache/xerces/impl/xs/identity/Field;->fXPath:Lmf/org/apache/xerces/impl/xs/identity/Field$XPath;

    iput-object p2, p0, Lmf/org/apache/xerces/impl/xs/identity/Field;->fIdentityConstraint:Lmf/org/apache/xerces/impl/xs/identity/IdentityConstraint;

    return-void
.end method


# virtual methods
.method public createMatcher(Lmf/org/apache/xerces/impl/xs/identity/ValueStore;)Lmf/org/apache/xerces/impl/xs/identity/XPathMatcher;
    .locals 2

    new-instance v0, Lmf/org/apache/xerces/impl/xs/identity/Field$Matcher;

    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/identity/Field;->fXPath:Lmf/org/apache/xerces/impl/xs/identity/Field$XPath;

    invoke-direct {v0, p0, v1, p1}, Lmf/org/apache/xerces/impl/xs/identity/Field$Matcher;-><init>(Lmf/org/apache/xerces/impl/xs/identity/Field;Lmf/org/apache/xerces/impl/xs/identity/Field$XPath;Lmf/org/apache/xerces/impl/xs/identity/ValueStore;)V

    return-object v0
.end method

.method public getIdentityConstraint()Lmf/org/apache/xerces/impl/xs/identity/IdentityConstraint;
    .locals 1

    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/identity/Field;->fIdentityConstraint:Lmf/org/apache/xerces/impl/xs/identity/IdentityConstraint;

    return-object v0
.end method

.method public getXPath()Lmf/org/apache/xerces/impl/xpath/XPath;
    .locals 1

    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/identity/Field;->fXPath:Lmf/org/apache/xerces/impl/xs/identity/Field$XPath;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/identity/Field;->fXPath:Lmf/org/apache/xerces/impl/xs/identity/Field$XPath;

    invoke-virtual {v0}, Lmf/org/apache/xerces/impl/xs/identity/Field$XPath;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
