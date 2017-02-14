.class Lmf/org/apache/xerces/stax/DefaultNamespaceContext$2;
.super Ljava/lang/Object;
.source "DefaultNamespaceContext.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmf/org/apache/xerces/stax/DefaultNamespaceContext;->getPrefixes(Ljava/lang/String;)Ljava/util/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field more:Z

.field final synthetic this$0:Lmf/org/apache/xerces/stax/DefaultNamespaceContext;


# direct methods
.method constructor <init>(Lmf/org/apache/xerces/stax/DefaultNamespaceContext;)V
    .locals 1

    iput-object p1, p0, Lmf/org/apache/xerces/stax/DefaultNamespaceContext$2;->this$0:Lmf/org/apache/xerces/stax/DefaultNamespaceContext;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lmf/org/apache/xerces/stax/DefaultNamespaceContext$2;->more:Z

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 1

    iget-boolean v0, p0, Lmf/org/apache/xerces/stax/DefaultNamespaceContext$2;->more:Z

    return v0
.end method

.method public next()Ljava/lang/Object;
    .locals 2

    const/4 v1, 0x0

    invoke-virtual {p0}, Lmf/org/apache/xerces/stax/DefaultNamespaceContext$2;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    iput-boolean v1, p0, Lmf/org/apache/xerces/stax/DefaultNamespaceContext$2;->more:Z

    const-string/jumbo v0, "xmlns"

    return-object v0

    :cond_0
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public remove()V
    .locals 1

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
