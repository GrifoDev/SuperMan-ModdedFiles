.class Lmf/org/apache/xerces/impl/xs/util/XSNamedMapImpl$1;
.super Ljava/util/AbstractSet;
.source "XSNamedMapImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmf/org/apache/xerces/impl/xs/util/XSNamedMapImpl;->entrySet()Ljava/util/Set;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmf/org/apache/xerces/impl/xs/util/XSNamedMapImpl;

.field private final synthetic val$entries:[Lmf/org/apache/xerces/impl/xs/util/XSNamedMapImpl$XSNamedMapEntry;

.field private final synthetic val$length:I


# direct methods
.method constructor <init>(Lmf/org/apache/xerces/impl/xs/util/XSNamedMapImpl;I[Lmf/org/apache/xerces/impl/xs/util/XSNamedMapImpl$XSNamedMapEntry;)V
    .locals 0

    iput-object p1, p0, Lmf/org/apache/xerces/impl/xs/util/XSNamedMapImpl$1;->this$0:Lmf/org/apache/xerces/impl/xs/util/XSNamedMapImpl;

    iput p2, p0, Lmf/org/apache/xerces/impl/xs/util/XSNamedMapImpl$1;->val$length:I

    iput-object p3, p0, Lmf/org/apache/xerces/impl/xs/util/XSNamedMapImpl$1;->val$entries:[Lmf/org/apache/xerces/impl/xs/util/XSNamedMapImpl$XSNamedMapEntry;

    invoke-direct {p0}, Ljava/util/AbstractSet;-><init>()V

    return-void
.end method


# virtual methods
.method public iterator()Ljava/util/Iterator;
    .locals 3

    new-instance v0, Lmf/org/apache/xerces/impl/xs/util/XSNamedMapImpl$1$1;

    iget v1, p0, Lmf/org/apache/xerces/impl/xs/util/XSNamedMapImpl$1;->val$length:I

    iget-object v2, p0, Lmf/org/apache/xerces/impl/xs/util/XSNamedMapImpl$1;->val$entries:[Lmf/org/apache/xerces/impl/xs/util/XSNamedMapImpl$XSNamedMapEntry;

    invoke-direct {v0, p0, v1, v2}, Lmf/org/apache/xerces/impl/xs/util/XSNamedMapImpl$1$1;-><init>(Lmf/org/apache/xerces/impl/xs/util/XSNamedMapImpl$1;I[Lmf/org/apache/xerces/impl/xs/util/XSNamedMapImpl$XSNamedMapEntry;)V

    return-object v0
.end method

.method public size()I
    .locals 1

    iget v0, p0, Lmf/org/apache/xerces/impl/xs/util/XSNamedMapImpl$1;->val$length:I

    return v0
.end method
