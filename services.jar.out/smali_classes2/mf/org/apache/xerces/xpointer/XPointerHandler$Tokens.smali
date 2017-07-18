.class final Lmf/org/apache/xerces/xpointer/XPointerHandler$Tokens;
.super Ljava/lang/Object;
.source "XPointerHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmf/org/apache/xerces/xpointer/XPointerHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "Tokens"
.end annotation


# static fields
.field private static final INITIAL_TOKEN_COUNT:I = 0x100

.field private static final XPTRTOKEN_CLOSE_PAREN:I = 0x1

.field private static final XPTRTOKEN_OPEN_PAREN:I = 0x0

.field private static final XPTRTOKEN_SCHEMEDATA:I = 0x4

.field private static final XPTRTOKEN_SCHEMENAME:I = 0x3

.field private static final XPTRTOKEN_SHORTHAND:I = 0x2


# instance fields
.field private fCurrentTokenIndex:I

.field private fSymbolTable:Lmf/org/apache/xerces/util/SymbolTable;

.field private fTokenCount:I

.field private fTokenNames:Ljava/util/HashMap;

.field private fTokens:[I

.field private final fgTokenNames:[Ljava/lang/String;

.field final synthetic this$0:Lmf/org/apache/xerces/xpointer/XPointerHandler;


# direct methods
.method private constructor <init>(Lmf/org/apache/xerces/xpointer/XPointerHandler;Lmf/org/apache/xerces/util/SymbolTable;)V
    .locals 7

    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    iput-object p1, p0, Lmf/org/apache/xerces/xpointer/XPointerHandler$Tokens;->this$0:Lmf/org/apache/xerces/xpointer/XPointerHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "XPTRTOKEN_OPEN_PAREN"

    aput-object v1, v0, v2

    const-string/jumbo v1, "XPTRTOKEN_CLOSE_PAREN"

    aput-object v1, v0, v3

    const-string/jumbo v1, "XPTRTOKEN_SHORTHAND"

    aput-object v1, v0, v4

    const-string/jumbo v1, "XPTRTOKEN_SCHEMENAME"

    aput-object v1, v0, v5

    const-string/jumbo v1, "XPTRTOKEN_SCHEMEDATA"

    aput-object v1, v0, v6

    iput-object v0, p0, Lmf/org/apache/xerces/xpointer/XPointerHandler$Tokens;->fgTokenNames:[Ljava/lang/String;

    const/16 v0, 0x100

    new-array v0, v0, [I

    iput-object v0, p0, Lmf/org/apache/xerces/xpointer/XPointerHandler$Tokens;->fTokens:[I

    iput v2, p0, Lmf/org/apache/xerces/xpointer/XPointerHandler$Tokens;->fTokenCount:I

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lmf/org/apache/xerces/xpointer/XPointerHandler$Tokens;->fTokenNames:Ljava/util/HashMap;

    iput-object p2, p0, Lmf/org/apache/xerces/xpointer/XPointerHandler$Tokens;->fSymbolTable:Lmf/org/apache/xerces/util/SymbolTable;

    iget-object v0, p0, Lmf/org/apache/xerces/xpointer/XPointerHandler$Tokens;->fTokenNames:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, v2}, Ljava/lang/Integer;-><init>(I)V

    const-string/jumbo v2, "XPTRTOKEN_OPEN_PAREN"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lmf/org/apache/xerces/xpointer/XPointerHandler$Tokens;->fTokenNames:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, v3}, Ljava/lang/Integer;-><init>(I)V

    const-string/jumbo v2, "XPTRTOKEN_CLOSE_PAREN"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lmf/org/apache/xerces/xpointer/XPointerHandler$Tokens;->fTokenNames:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, v4}, Ljava/lang/Integer;-><init>(I)V

    const-string/jumbo v2, "XPTRTOKEN_SHORTHAND"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lmf/org/apache/xerces/xpointer/XPointerHandler$Tokens;->fTokenNames:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, v5}, Ljava/lang/Integer;-><init>(I)V

    const-string/jumbo v2, "XPTRTOKEN_SCHEMENAME"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lmf/org/apache/xerces/xpointer/XPointerHandler$Tokens;->fTokenNames:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, v6}, Ljava/lang/Integer;-><init>(I)V

    const-string/jumbo v2, "XPTRTOKEN_SCHEMEDATA"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method synthetic constructor <init>(Lmf/org/apache/xerces/xpointer/XPointerHandler;Lmf/org/apache/xerces/util/SymbolTable;Lmf/org/apache/xerces/xpointer/XPointerHandler$Tokens;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lmf/org/apache/xerces/xpointer/XPointerHandler$Tokens;-><init>(Lmf/org/apache/xerces/xpointer/XPointerHandler;Lmf/org/apache/xerces/util/SymbolTable;)V

    return-void
.end method

.method static synthetic access$0(Lmf/org/apache/xerces/xpointer/XPointerHandler$Tokens;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lmf/org/apache/xerces/xpointer/XPointerHandler$Tokens;->addToken(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1(Lmf/org/apache/xerces/xpointer/XPointerHandler$Tokens;I)V
    .locals 0

    invoke-direct {p0, p1}, Lmf/org/apache/xerces/xpointer/XPointerHandler$Tokens;->addToken(I)V

    return-void
.end method

.method static synthetic access$3(Lmf/org/apache/xerces/xpointer/XPointerHandler$Tokens;I)Ljava/lang/String;
    .locals 1

    invoke-direct {p0, p1}, Lmf/org/apache/xerces/xpointer/XPointerHandler$Tokens;->getTokenString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$4(Lmf/org/apache/xerces/xpointer/XPointerHandler$Tokens;)Z
    .locals 1

    invoke-direct {p0}, Lmf/org/apache/xerces/xpointer/XPointerHandler$Tokens;->hasMore()Z

    move-result v0

    return v0
.end method

.method static synthetic access$5(Lmf/org/apache/xerces/xpointer/XPointerHandler$Tokens;)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    invoke-direct {p0}, Lmf/org/apache/xerces/xpointer/XPointerHandler$Tokens;->nextToken()I

    move-result v0

    return v0
.end method

.method static synthetic access$6(Lmf/org/apache/xerces/xpointer/XPointerHandler$Tokens;)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    invoke-direct {p0}, Lmf/org/apache/xerces/xpointer/XPointerHandler$Tokens;->peekToken()I

    move-result v0

    return v0
.end method

.method private addToken(I)V
    .locals 4

    const/4 v3, 0x0

    :try_start_0
    iget-object v0, p0, Lmf/org/apache/xerces/xpointer/XPointerHandler$Tokens;->fTokens:[I

    iget v1, p0, Lmf/org/apache/xerces/xpointer/XPointerHandler$Tokens;->fTokenCount:I

    aput p1, v0, v1
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    iget v0, p0, Lmf/org/apache/xerces/xpointer/XPointerHandler$Tokens;->fTokenCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lmf/org/apache/xerces/xpointer/XPointerHandler$Tokens;->fTokenCount:I

    return-void

    :catch_0
    move-exception v0

    iget-object v0, p0, Lmf/org/apache/xerces/xpointer/XPointerHandler$Tokens;->fTokens:[I

    iget v1, p0, Lmf/org/apache/xerces/xpointer/XPointerHandler$Tokens;->fTokenCount:I

    shl-int/lit8 v1, v1, 0x1

    new-array v1, v1, [I

    iput-object v1, p0, Lmf/org/apache/xerces/xpointer/XPointerHandler$Tokens;->fTokens:[I

    iget-object v1, p0, Lmf/org/apache/xerces/xpointer/XPointerHandler$Tokens;->fTokens:[I

    iget v2, p0, Lmf/org/apache/xerces/xpointer/XPointerHandler$Tokens;->fTokenCount:I

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v0, p0, Lmf/org/apache/xerces/xpointer/XPointerHandler$Tokens;->fTokens:[I

    iget v1, p0, Lmf/org/apache/xerces/xpointer/XPointerHandler$Tokens;->fTokenCount:I

    aput p1, v0, v1

    goto :goto_0
.end method

.method private addToken(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lmf/org/apache/xerces/xpointer/XPointerHandler$Tokens;->fTokenNames:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-eqz v0, :cond_0

    :goto_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-direct {p0, v0}, Lmf/org/apache/xerces/xpointer/XPointerHandler$Tokens;->addToken(I)V

    return-void

    :cond_0
    new-instance v0, Ljava/lang/Integer;

    iget-object v1, p0, Lmf/org/apache/xerces/xpointer/XPointerHandler$Tokens;->fTokenNames:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/lang/Integer;-><init>(I)V

    iget-object v1, p0, Lmf/org/apache/xerces/xpointer/XPointerHandler$Tokens;->fTokenNames:Ljava/util/HashMap;

    invoke-virtual {v1, v0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method private getTokenString(I)Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lmf/org/apache/xerces/xpointer/XPointerHandler$Tokens;->fTokenNames:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method private hasMore()Z
    .locals 2

    iget v0, p0, Lmf/org/apache/xerces/xpointer/XPointerHandler$Tokens;->fCurrentTokenIndex:I

    iget v1, p0, Lmf/org/apache/xerces/xpointer/XPointerHandler$Tokens;->fTokenCount:I

    if-lt v0, v1, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method private nextToken()I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    iget v0, p0, Lmf/org/apache/xerces/xpointer/XPointerHandler$Tokens;->fCurrentTokenIndex:I

    iget v1, p0, Lmf/org/apache/xerces/xpointer/XPointerHandler$Tokens;->fTokenCount:I

    if-eq v0, v1, :cond_0

    :goto_0
    iget-object v0, p0, Lmf/org/apache/xerces/xpointer/XPointerHandler$Tokens;->fTokens:[I

    iget v1, p0, Lmf/org/apache/xerces/xpointer/XPointerHandler$Tokens;->fCurrentTokenIndex:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lmf/org/apache/xerces/xpointer/XPointerHandler$Tokens;->fCurrentTokenIndex:I

    aget v0, v0, v1

    return v0

    :cond_0
    iget-object v0, p0, Lmf/org/apache/xerces/xpointer/XPointerHandler$Tokens;->this$0:Lmf/org/apache/xerces/xpointer/XPointerHandler;

    const-string/jumbo v1, "XPointerProcessingError"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lmf/org/apache/xerces/xpointer/XPointerHandler;->access$0(Lmf/org/apache/xerces/xpointer/XPointerHandler;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method private nextTokenAsString()Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    const/4 v3, 0x0

    invoke-direct {p0}, Lmf/org/apache/xerces/xpointer/XPointerHandler$Tokens;->nextToken()I

    move-result v0

    invoke-direct {p0, v0}, Lmf/org/apache/xerces/xpointer/XPointerHandler$Tokens;->getTokenString(I)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    iget-object v1, p0, Lmf/org/apache/xerces/xpointer/XPointerHandler$Tokens;->this$0:Lmf/org/apache/xerces/xpointer/XPointerHandler;

    const-string/jumbo v2, "XPointerProcessingError"

    invoke-static {v1, v2, v3}, Lmf/org/apache/xerces/xpointer/XPointerHandler;->access$0(Lmf/org/apache/xerces/xpointer/XPointerHandler;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method private peekToken()I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    iget v0, p0, Lmf/org/apache/xerces/xpointer/XPointerHandler$Tokens;->fCurrentTokenIndex:I

    iget v1, p0, Lmf/org/apache/xerces/xpointer/XPointerHandler$Tokens;->fTokenCount:I

    if-eq v0, v1, :cond_0

    :goto_0
    iget-object v0, p0, Lmf/org/apache/xerces/xpointer/XPointerHandler$Tokens;->fTokens:[I

    iget v1, p0, Lmf/org/apache/xerces/xpointer/XPointerHandler$Tokens;->fCurrentTokenIndex:I

    aget v0, v0, v1

    return v0

    :cond_0
    iget-object v0, p0, Lmf/org/apache/xerces/xpointer/XPointerHandler$Tokens;->this$0:Lmf/org/apache/xerces/xpointer/XPointerHandler;

    const-string/jumbo v1, "XPointerProcessingError"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lmf/org/apache/xerces/xpointer/XPointerHandler;->access$0(Lmf/org/apache/xerces/xpointer/XPointerHandler;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method private rewind()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lmf/org/apache/xerces/xpointer/XPointerHandler$Tokens;->fCurrentTokenIndex:I

    return-void
.end method
