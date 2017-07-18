.class Lmf/org/apache/xerces/xpointer/XPointerHandler$1;
.super Lmf/org/apache/xerces/xpointer/XPointerHandler$Scanner;
.source "XPointerHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmf/org/apache/xerces/xpointer/XPointerHandler;->parseXPointer(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmf/org/apache/xerces/xpointer/XPointerHandler;


# direct methods
.method constructor <init>(Lmf/org/apache/xerces/xpointer/XPointerHandler;Lmf/org/apache/xerces/util/SymbolTable;)V
    .locals 1

    iput-object p1, p0, Lmf/org/apache/xerces/xpointer/XPointerHandler$1;->this$0:Lmf/org/apache/xerces/xpointer/XPointerHandler;

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lmf/org/apache/xerces/xpointer/XPointerHandler$Scanner;-><init>(Lmf/org/apache/xerces/xpointer/XPointerHandler;Lmf/org/apache/xerces/util/SymbolTable;Lmf/org/apache/xerces/xpointer/XPointerHandler$Scanner;)V

    return-void
.end method


# virtual methods
.method protected addToken(Lmf/org/apache/xerces/xpointer/XPointerHandler$Tokens;I)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    const/4 v2, 0x1

    const/4 v4, 0x0

    if-nez p2, :cond_1

    :cond_0
    invoke-super {p0, p1, p2}, Lmf/org/apache/xerces/xpointer/XPointerHandler$Scanner;->addToken(Lmf/org/apache/xerces/xpointer/XPointerHandler$Tokens;I)V

    return-void

    :cond_1
    if-eq p2, v2, :cond_0

    const/4 v0, 0x3

    if-eq p2, v0, :cond_0

    const/4 v0, 0x4

    if-eq p2, v0, :cond_0

    const/4 v0, 0x2

    if-eq p2, v0, :cond_0

    iget-object v0, p0, Lmf/org/apache/xerces/xpointer/XPointerHandler$1;->this$0:Lmf/org/apache/xerces/xpointer/XPointerHandler;

    const-string/jumbo v1, "InvalidXPointerToken"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p1, p2}, Lmf/org/apache/xerces/xpointer/XPointerHandler$Tokens;->access$3(Lmf/org/apache/xerces/xpointer/XPointerHandler$Tokens;I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v0, v1, v2}, Lmf/org/apache/xerces/xpointer/XPointerHandler;->access$0(Lmf/org/apache/xerces/xpointer/XPointerHandler;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method
