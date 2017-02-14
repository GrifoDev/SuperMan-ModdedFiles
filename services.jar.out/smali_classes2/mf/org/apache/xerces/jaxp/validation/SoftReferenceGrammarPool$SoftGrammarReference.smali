.class final Lmf/org/apache/xerces/jaxp/validation/SoftReferenceGrammarPool$SoftGrammarReference;
.super Ljava/lang/ref/SoftReference;
.source "SoftReferenceGrammarPool.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmf/org/apache/xerces/jaxp/validation/SoftReferenceGrammarPool;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "SoftGrammarReference"
.end annotation


# instance fields
.field public entry:Lmf/org/apache/xerces/jaxp/validation/SoftReferenceGrammarPool$Entry;


# direct methods
.method protected constructor <init>(Lmf/org/apache/xerces/jaxp/validation/SoftReferenceGrammarPool$Entry;Lmf/org/apache/xerces/xni/grammars/Grammar;Ljava/lang/ref/ReferenceQueue;)V
    .locals 0

    invoke-direct {p0, p2, p3}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;Ljava/lang/ref/ReferenceQueue;)V

    iput-object p1, p0, Lmf/org/apache/xerces/jaxp/validation/SoftReferenceGrammarPool$SoftGrammarReference;->entry:Lmf/org/apache/xerces/jaxp/validation/SoftReferenceGrammarPool$Entry;

    return-void
.end method
