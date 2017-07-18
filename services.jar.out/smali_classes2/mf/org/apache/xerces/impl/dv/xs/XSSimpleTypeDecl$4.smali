.class Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl$4;
.super Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl$AbstractObjectList;
.source "XSSimpleTypeDecl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->getEnumerationItemTypeList()Lmf/org/apache/xerces/xs/datatypes/ObjectList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;


# direct methods
.method constructor <init>(Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;)V
    .locals 1

    iput-object p1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl$4;->this$0:Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl$AbstractObjectList;-><init>(Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl$AbstractObjectList;)V

    return-void
.end method


# virtual methods
.method public contains(Ljava/lang/Object;)Z
    .locals 3

    const/4 v1, 0x0

    iget-object v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl$4;->this$0:Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    invoke-static {v0}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->access$0(Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;)[Lmf/org/apache/xerces/impl/dv/ValidatedInfo;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    return v1

    :cond_1
    instance-of v0, p1, Lmf/org/apache/xerces/xs/ShortList;

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    iget-object v2, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl$4;->this$0:Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    invoke-static {v2}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->access$1(Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;)I

    move-result v2

    if-ge v0, v2, :cond_3

    iget-object v2, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl$4;->this$0:Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    invoke-static {v2}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->access$0(Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;)[Lmf/org/apache/xerces/impl/dv/ValidatedInfo;

    move-result-object v2

    aget-object v2, v2, v0

    iget-object v2, v2, Lmf/org/apache/xerces/impl/dv/ValidatedInfo;->itemValueTypes:Lmf/org/apache/xerces/xs/ShortList;

    if-eq v2, p1, :cond_2

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x1

    return v0

    :cond_3
    return v1
.end method

.method public getLength()I
    .locals 1

    iget-object v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl$4;->this$0:Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    invoke-static {v0}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->access$0(Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;)[Lmf/org/apache/xerces/impl/dv/ValidatedInfo;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl$4;->this$0:Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    invoke-static {v0}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->access$1(Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;)I

    move-result v0

    goto :goto_0
.end method

.method public item(I)Ljava/lang/Object;
    .locals 1

    if-gez p1, :cond_1

    :cond_0
    const/4 v0, 0x0

    return-object v0

    :cond_1
    invoke-virtual {p0}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl$4;->getLength()I

    move-result v0

    if-ge p1, v0, :cond_0

    iget-object v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl$4;->this$0:Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    invoke-static {v0}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->access$0(Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;)[Lmf/org/apache/xerces/impl/dv/ValidatedInfo;

    move-result-object v0

    aget-object v0, v0, p1

    iget-object v0, v0, Lmf/org/apache/xerces/impl/dv/ValidatedInfo;->itemValueTypes:Lmf/org/apache/xerces/xs/ShortList;

    return-object v0
.end method
