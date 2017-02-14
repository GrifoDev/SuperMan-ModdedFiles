.class Lcom/sun/org/apache/xml/internal/security/transforms/implementations/TransformEnvelopedSignature$EnvelopedNodeFilter;
.super Ljava/lang/Object;
.source "Unknown"

# interfaces
.implements Lcom/sun/org/apache/xml/internal/security/signature/NodeFilter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/org/apache/xml/internal/security/transforms/implementations/TransformEnvelopedSignature;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "EnvelopedNodeFilter"
.end annotation


# instance fields
.field exclude:Lorg/w3c/dom/Node;

.field private final synthetic this$0:Lcom/sun/org/apache/xml/internal/security/transforms/implementations/TransformEnvelopedSignature;


# direct methods
.method constructor <init>(Lcom/sun/org/apache/xml/internal/security/transforms/implementations/TransformEnvelopedSignature;Lorg/w3c/dom/Node;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sun/org/apache/xml/internal/security/transforms/implementations/TransformEnvelopedSignature$EnvelopedNodeFilter;->this$0:Lcom/sun/org/apache/xml/internal/security/transforms/implementations/TransformEnvelopedSignature;

    iput-object p2, p0, Lcom/sun/org/apache/xml/internal/security/transforms/implementations/TransformEnvelopedSignature$EnvelopedNodeFilter;->exclude:Lorg/w3c/dom/Node;

    return-void
.end method


# virtual methods
.method public isNodeInclude(Lorg/w3c/dom/Node;)Z
    .locals 2

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/sun/org/apache/xml/internal/security/transforms/implementations/TransformEnvelopedSignature$EnvelopedNodeFilter;->exclude:Lorg/w3c/dom/Node;

    invoke-static {v1, p1}, Lcom/sun/org/apache/xml/internal/security/utils/XMLUtils;->isDescendantOrSelf(Lorg/w3c/dom/Node;Lorg/w3c/dom/Node;)Z

    move-result v1

    if-eqz v1, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method
