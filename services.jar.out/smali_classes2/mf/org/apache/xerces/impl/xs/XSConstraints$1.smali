.class Lmf/org/apache/xerces/impl/xs/XSConstraints$1;
.super Ljava/lang/Object;
.source "XSConstraints.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmf/org/apache/xerces/impl/xs/XSConstraints;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 7

    const/4 v3, 0x1

    const/4 v2, 0x0

    check-cast p1, Lmf/org/apache/xerces/impl/xs/XSParticleDecl;

    check-cast p2, Lmf/org/apache/xerces/impl/xs/XSParticleDecl;

    iget-object v0, p1, Lmf/org/apache/xerces/impl/xs/XSParticleDecl;->fValue:Lmf/org/apache/xerces/xs/XSTerm;

    check-cast v0, Lmf/org/apache/xerces/impl/xs/XSElementDecl;

    iget-object v1, p2, Lmf/org/apache/xerces/impl/xs/XSParticleDecl;->fValue:Lmf/org/apache/xerces/xs/XSTerm;

    check-cast v1, Lmf/org/apache/xerces/impl/xs/XSElementDecl;

    invoke-virtual {v0}, Lmf/org/apache/xerces/impl/xs/XSElementDecl;->getNamespace()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1}, Lmf/org/apache/xerces/impl/xs/XSElementDecl;->getNamespace()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0}, Lmf/org/apache/xerces/impl/xs/XSElementDecl;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1}, Lmf/org/apache/xerces/impl/xs/XSElementDecl;->getName()Ljava/lang/String;

    move-result-object v1

    if-eq v4, v5, :cond_1

    move v0, v2

    :goto_0
    if-eqz v0, :cond_2

    move v0, v2

    :goto_1
    if-nez v0, :cond_0

    invoke-virtual {v6, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    :cond_0
    return v0

    :cond_1
    move v0, v3

    goto :goto_0

    :cond_2
    if-nez v4, :cond_3

    const/4 v0, -0x1

    goto :goto_1

    :cond_3
    if-nez v5, :cond_4

    move v0, v3

    goto :goto_1

    :cond_4
    invoke-virtual {v4, v5}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    goto :goto_1
.end method
