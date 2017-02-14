.class public Lmf/org/apache/xerces/impl/xs/identity/UniqueOrKey;
.super Lmf/org/apache/xerces/impl/xs/identity/IdentityConstraint;
.source "UniqueOrKey.java"


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;S)V
    .locals 1

    invoke-direct {p0, p1, p2, p3}, Lmf/org/apache/xerces/impl/xs/identity/IdentityConstraint;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    int-to-short v0, p4

    iput-short v0, p0, Lmf/org/apache/xerces/impl/xs/identity/UniqueOrKey;->type:S

    return-void
.end method
