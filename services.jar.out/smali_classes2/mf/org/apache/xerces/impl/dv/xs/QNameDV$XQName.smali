.class final Lmf/org/apache/xerces/impl/dv/xs/QNameDV$XQName;
.super Lmf/org/apache/xerces/xni/QName;
.source "QNameDV.java"

# interfaces
.implements Lmf/org/apache/xerces/xs/datatypes/XSQName;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmf/org/apache/xerces/impl/dv/xs/QNameDV;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "XQName"
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Lmf/org/apache/xerces/xni/QName;-><init>()V

    invoke-virtual {p0, p1, p2, p3, p4}, Lmf/org/apache/xerces/impl/dv/xs/QNameDV$XQName;->setValues(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v2, 0x0

    instance-of v0, p1, Lmf/org/apache/xerces/xni/QName;

    if-nez v0, :cond_0

    return v2

    :cond_0
    check-cast p1, Lmf/org/apache/xerces/xni/QName;

    iget-object v0, p0, Lmf/org/apache/xerces/impl/dv/xs/QNameDV$XQName;->uri:Ljava/lang/String;

    iget-object v1, p1, Lmf/org/apache/xerces/xni/QName;->uri:Ljava/lang/String;

    if-eq v0, v1, :cond_2

    :cond_1
    return v2

    :cond_2
    iget-object v0, p0, Lmf/org/apache/xerces/impl/dv/xs/QNameDV$XQName;->localpart:Ljava/lang/String;

    iget-object v1, p1, Lmf/org/apache/xerces/xni/QName;->localpart:Ljava/lang/String;

    if-ne v0, v1, :cond_1

    const/4 v0, 0x1

    return v0
.end method

.method public getJAXPQName()Ljavax/xml/namespace/QName;
    .locals 4

    new-instance v0, Ljavax/xml/namespace/QName;

    iget-object v1, p0, Lmf/org/apache/xerces/impl/dv/xs/QNameDV$XQName;->uri:Ljava/lang/String;

    iget-object v2, p0, Lmf/org/apache/xerces/impl/dv/xs/QNameDV$XQName;->localpart:Ljava/lang/String;

    iget-object v3, p0, Lmf/org/apache/xerces/impl/dv/xs/QNameDV$XQName;->prefix:Ljava/lang/String;

    invoke-direct {v0, v1, v2, v3}, Ljavax/xml/namespace/QName;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public getXNIQName()Lmf/org/apache/xerces/xni/QName;
    .locals 0

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lmf/org/apache/xerces/impl/dv/xs/QNameDV$XQName;->rawname:Ljava/lang/String;

    return-object v0
.end method
