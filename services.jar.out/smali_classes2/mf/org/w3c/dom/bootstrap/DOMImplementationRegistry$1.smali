.class Lmf/org/w3c/dom/bootstrap/DOMImplementationRegistry$1;
.super Ljava/lang/Object;
.source "DOMImplementationRegistry.java"

# interfaces
.implements Lmf/org/w3c/dom/DOMImplementationList;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmf/org/w3c/dom/bootstrap/DOMImplementationRegistry;->getDOMImplementationList(Ljava/lang/String;)Lmf/org/w3c/dom/DOMImplementationList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmf/org/w3c/dom/bootstrap/DOMImplementationRegistry;

.field private final synthetic val$implementations:Ljava/util/Vector;


# direct methods
.method constructor <init>(Lmf/org/w3c/dom/bootstrap/DOMImplementationRegistry;Ljava/util/Vector;)V
    .locals 0

    iput-object p1, p0, Lmf/org/w3c/dom/bootstrap/DOMImplementationRegistry$1;->this$0:Lmf/org/w3c/dom/bootstrap/DOMImplementationRegistry;

    iput-object p2, p0, Lmf/org/w3c/dom/bootstrap/DOMImplementationRegistry$1;->val$implementations:Ljava/util/Vector;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getLength()I
    .locals 1

    iget-object v0, p0, Lmf/org/w3c/dom/bootstrap/DOMImplementationRegistry$1;->val$implementations:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    return v0
.end method

.method public item(I)Lmf/org/w3c/dom/DOMImplementation;
    .locals 2

    const/4 v1, 0x0

    if-gez p1, :cond_1

    :cond_0
    return-object v1

    :cond_1
    iget-object v0, p0, Lmf/org/w3c/dom/bootstrap/DOMImplementationRegistry$1;->val$implementations:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lmf/org/w3c/dom/bootstrap/DOMImplementationRegistry$1;->val$implementations:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmf/org/w3c/dom/DOMImplementation;
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    return-object v1
.end method
