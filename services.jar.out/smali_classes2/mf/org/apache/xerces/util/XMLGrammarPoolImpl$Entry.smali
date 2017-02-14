.class public final Lmf/org/apache/xerces/util/XMLGrammarPoolImpl$Entry;
.super Ljava/lang/Object;
.source "XMLGrammarPoolImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmf/org/apache/xerces/util/XMLGrammarPoolImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1c
    name = "Entry"
.end annotation


# instance fields
.field public desc:Lmf/org/apache/xerces/xni/grammars/XMLGrammarDescription;

.field public grammar:Lmf/org/apache/xerces/xni/grammars/Grammar;

.field public hash:I

.field public next:Lmf/org/apache/xerces/util/XMLGrammarPoolImpl$Entry;


# direct methods
.method protected constructor <init>(ILmf/org/apache/xerces/xni/grammars/XMLGrammarDescription;Lmf/org/apache/xerces/xni/grammars/Grammar;Lmf/org/apache/xerces/util/XMLGrammarPoolImpl$Entry;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lmf/org/apache/xerces/util/XMLGrammarPoolImpl$Entry;->hash:I

    iput-object p2, p0, Lmf/org/apache/xerces/util/XMLGrammarPoolImpl$Entry;->desc:Lmf/org/apache/xerces/xni/grammars/XMLGrammarDescription;

    iput-object p3, p0, Lmf/org/apache/xerces/util/XMLGrammarPoolImpl$Entry;->grammar:Lmf/org/apache/xerces/xni/grammars/Grammar;

    iput-object p4, p0, Lmf/org/apache/xerces/util/XMLGrammarPoolImpl$Entry;->next:Lmf/org/apache/xerces/util/XMLGrammarPoolImpl$Entry;

    return-void
.end method


# virtual methods
.method protected clear()V
    .locals 2

    const/4 v1, 0x0

    iput-object v1, p0, Lmf/org/apache/xerces/util/XMLGrammarPoolImpl$Entry;->desc:Lmf/org/apache/xerces/xni/grammars/XMLGrammarDescription;

    iput-object v1, p0, Lmf/org/apache/xerces/util/XMLGrammarPoolImpl$Entry;->grammar:Lmf/org/apache/xerces/xni/grammars/Grammar;

    iget-object v0, p0, Lmf/org/apache/xerces/util/XMLGrammarPoolImpl$Entry;->next:Lmf/org/apache/xerces/util/XMLGrammarPoolImpl$Entry;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lmf/org/apache/xerces/util/XMLGrammarPoolImpl$Entry;->next:Lmf/org/apache/xerces/util/XMLGrammarPoolImpl$Entry;

    invoke-virtual {v0}, Lmf/org/apache/xerces/util/XMLGrammarPoolImpl$Entry;->clear()V

    iput-object v1, p0, Lmf/org/apache/xerces/util/XMLGrammarPoolImpl$Entry;->next:Lmf/org/apache/xerces/util/XMLGrammarPoolImpl$Entry;

    goto :goto_0
.end method
