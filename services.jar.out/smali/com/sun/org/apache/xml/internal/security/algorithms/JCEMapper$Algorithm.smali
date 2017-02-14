.class public Lcom/sun/org/apache/xml/internal/security/algorithms/JCEMapper$Algorithm;
.super Ljava/lang/Object;
.source "Unknown"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/org/apache/xml/internal/security/algorithms/JCEMapper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Algorithm"
.end annotation


# instance fields
.field algorithmClass:Ljava/lang/String;

.field keyLength:Ljava/lang/String;

.field requiredKey:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lorg/w3c/dom/Element;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string/jumbo v0, "AlgorithmClass"

    invoke-interface {p1, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sun/org/apache/xml/internal/security/algorithms/JCEMapper$Algorithm;->algorithmClass:Ljava/lang/String;

    const-string/jumbo v0, "KeyLength"

    invoke-interface {p1, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sun/org/apache/xml/internal/security/algorithms/JCEMapper$Algorithm;->keyLength:Ljava/lang/String;

    const-string/jumbo v0, "RequiredKey"

    invoke-interface {p1, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sun/org/apache/xml/internal/security/algorithms/JCEMapper$Algorithm;->requiredKey:Ljava/lang/String;

    return-void
.end method
