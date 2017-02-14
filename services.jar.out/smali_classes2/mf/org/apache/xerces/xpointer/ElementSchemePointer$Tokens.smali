.class final Lmf/org/apache/xerces/xpointer/ElementSchemePointer$Tokens;
.super Ljava/lang/Object;
.source "ElementSchemePointer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmf/org/apache/xerces/xpointer/ElementSchemePointer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "Tokens"
.end annotation


# static fields
.field private static final INITIAL_TOKEN_COUNT:I = 0x100

.field private static final XPTRTOKEN_ELEM_CHILD:I = 0x1

.field private static final XPTRTOKEN_ELEM_NCNAME:I


# instance fields
.field private fCurrentTokenIndex:I

.field private fSymbolTable:Lmf/org/apache/xerces/util/SymbolTable;

.field private fTokenCount:I

.field private fTokenNames:Ljava/util/HashMap;

.field private fTokens:[I

.field private final fgTokenNames:[Ljava/lang/String;

.field final synthetic this$0:Lmf/org/apache/xerces/xpointer/ElementSchemePointer;


# direct methods
.method private constructor <init>(Lmf/org/apache/xerces/xpointer/ElementSchemePointer;Lmf/org/apache/xerces/util/SymbolTable;)V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    iput-object p1, p0, Lmf/org/apache/xerces/xpointer/ElementSchemePointer$Tokens;->this$0:Lmf/org/apache/xerces/xpointer/ElementSchemePointer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "XPTRTOKEN_ELEM_NCNAME"

    aput-object v1, v0, v2

    const-string/jumbo v1, "XPTRTOKEN_ELEM_CHILD"

    aput-object v1, v0, v3

    iput-object v0, p0, Lmf/org/apache/xerces/xpointer/ElementSchemePointer$Tokens;->fgTokenNames:[Ljava/lang/String;

    const/16 v0, 0x100

    new-array v0, v0, [I

    iput-object v0, p0, Lmf/org/apache/xerces/xpointer/ElementSchemePointer$Tokens;->fTokens:[I

    iput v2, p0, Lmf/org/apache/xerces/xpointer/ElementSchemePointer$Tokens;->fTokenCount:I

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lmf/org/apache/xerces/xpointer/ElementSchemePointer$Tokens;->fTokenNames:Ljava/util/HashMap;

    iput-object p2, p0, Lmf/org/apache/xerces/xpointer/ElementSchemePointer$Tokens;->fSymbolTable:Lmf/org/apache/xerces/util/SymbolTable;

    iget-object v0, p0, Lmf/org/apache/xerces/xpointer/ElementSchemePointer$Tokens;->fTokenNames:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, v2}, Ljava/lang/Integer;-><init>(I)V

    const-string/jumbo v2, "XPTRTOKEN_ELEM_NCNAME"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lmf/org/apache/xerces/xpointer/ElementSchemePointer$Tokens;->fTokenNames:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, v3}, Ljava/lang/Integer;-><init>(I)V

    const-string/jumbo v2, "XPTRTOKEN_ELEM_CHILD"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method synthetic constructor <init>(Lmf/org/apache/xerces/xpointer/ElementSchemePointer;Lmf/org/apache/xerces/util/SymbolTable;Lmf/org/apache/xerces/xpointer/ElementSchemePointer$Tokens;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lmf/org/apache/xerces/xpointer/ElementSchemePointer$Tokens;-><init>(Lmf/org/apache/xerces/xpointer/ElementSchemePointer;Lmf/org/apache/xerces/util/SymbolTable;)V

    return-void
.end method

.method static synthetic access$0(Lmf/org/apache/xerces/xpointer/ElementSchemePointer$Tokens;I)V
    .locals 0

    invoke-direct {p0, p1}, Lmf/org/apache/xerces/xpointer/ElementSchemePointer$Tokens;->addToken(I)V

    return-void
.end method

.method static synthetic access$1(Lmf/org/apache/xerces/xpointer/ElementSchemePointer$Tokens;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lmf/org/apache/xerces/xpointer/ElementSchemePointer$Tokens;->addToken(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$3(Lmf/org/apache/xerces/xpointer/ElementSchemePointer$Tokens;I)Ljava/lang/String;
    .locals 1

    invoke-direct {p0, p1}, Lmf/org/apache/xerces/xpointer/ElementSchemePointer$Tokens;->getTokenString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$4(Lmf/org/apache/xerces/xpointer/ElementSchemePointer$Tokens;)I
    .locals 1

    invoke-direct {p0}, Lmf/org/apache/xerces/xpointer/ElementSchemePointer$Tokens;->getTokenCount()I

    move-result v0

    return v0
.end method

.method static synthetic access$5(Lmf/org/apache/xerces/xpointer/ElementSchemePointer$Tokens;)Z
    .locals 1

    invoke-direct {p0}, Lmf/org/apache/xerces/xpointer/ElementSchemePointer$Tokens;->hasMore()Z

    move-result v0

    return v0
.end method

.method static synthetic access$6(Lmf/org/apache/xerces/xpointer/ElementSchemePointer$Tokens;)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    invoke-direct {p0}, Lmf/org/apache/xerces/xpointer/ElementSchemePointer$Tokens;->nextToken()I

    move-result v0

    return v0
.end method

.method private addToken(I)V
    .locals 4

    const/4 v3, 0x0

    :try_start_0
    iget-object v0, p0, Lmf/org/apache/xerces/xpointer/ElementSchemePointer$Tokens;->fTokens:[I

    iget v1, p0, Lmf/org/apache/xerces/xpointer/ElementSchemePointer$Tokens;->fTokenCount:I

    aput p1, v0, v1
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    iget v0, p0, Lmf/org/apache/xerces/xpointer/ElementSchemePointer$Tokens;->fTokenCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lmf/org/apache/xerces/xpointer/ElementSchemePointer$Tokens;->fTokenCount:I

    return-void

    :catch_0
    move-exception v0

    iget-object v0, p0, Lmf/org/apache/xerces/xpointer/ElementSchemePointer$Tokens;->fTokens:[I

    iget v1, p0, Lmf/org/apache/xerces/xpointer/ElementSchemePointer$Tokens;->fTokenCount:I

    shl-int/lit8 v1, v1, 0x1

    new-array v1, v1, [I

    iput-object v1, p0, Lmf/org/apache/xerces/xpointer/ElementSchemePointer$Tokens;->fTokens:[I

    iget-object v1, p0, Lmf/org/apache/xerces/xpointer/ElementSchemePointer$Tokens;->fTokens:[I

    iget v2, p0, Lmf/org/apache/xerces/xpointer/ElementSchemePointer$Tokens;->fTokenCount:I

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v0, p0, Lmf/org/apache/xerces/xpointer/ElementSchemePointer$Tokens;->fTokens:[I

    iget v1, p0, Lmf/org/apache/xerces/xpointer/ElementSchemePointer$Tokens;->fTokenCount:I

    aput p1, v0, v1

    goto :goto_0
.end method

.method private addToken(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lmf/org/apache/xerces/xpointer/ElementSchemePointer$Tokens;->fTokenNames:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-eqz v0, :cond_0

    :goto_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-direct {p0, v0}, Lmf/org/apache/xerces/xpointer/ElementSchemePointer$Tokens;->addToken(I)V

    return-void

    :cond_0
    new-instance v0, Ljava/lang/Integer;

    iget-object v1, p0, Lmf/org/apache/xerces/xpointer/ElementSchemePointer$Tokens;->fTokenNames:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/lang/Integer;-><init>(I)V

    iget-object v1, p0, Lmf/org/apache/xerces/xpointer/ElementSchemePointer$Tokens;->fTokenNames:Ljava/util/HashMap;

    invoke-virtual {v1, v0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method private getToken(I)Ljava/lang/Integer;
    .locals 2

    iget-object v0, p0, Lmf/org/apache/xerces/xpointer/ElementSchemePointer$Tokens;->fTokenNames:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    return-object v0
.end method

.method private getTokenCount()I
    .locals 1

    iget v0, p0, Lmf/org/apache/xerces/xpointer/ElementSchemePointer$Tokens;->fTokenCount:I

    return v0
.end method

.method private getTokenString(I)Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lmf/org/apache/xerces/xpointer/ElementSchemePointer$Tokens;->fTokenNames:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method private hasMore()Z
    .locals 2

    iget v0, p0, Lmf/org/apache/xerces/xpointer/ElementSchemePointer$Tokens;->fCurrentTokenIndex:I

    iget v1, p0, Lmf/org/apache/xerces/xpointer/ElementSchemePointer$Tokens;->fTokenCount:I

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

    iget v0, p0, Lmf/org/apache/xerces/xpointer/ElementSchemePointer$Tokens;->fCurrentTokenIndex:I

    iget v1, p0, Lmf/org/apache/xerces/xpointer/ElementSchemePointer$Tokens;->fTokenCount:I

    if-eq v0, v1, :cond_0

    :goto_0
    iget-object v0, p0, Lmf/org/apache/xerces/xpointer/ElementSchemePointer$Tokens;->fTokens:[I

    iget v1, p0, Lmf/org/apache/xerces/xpointer/ElementSchemePointer$Tokens;->fCurrentTokenIndex:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lmf/org/apache/xerces/xpointer/ElementSchemePointer$Tokens;->fCurrentTokenIndex:I

    aget v0, v0, v1

    return v0

    :cond_0
    iget-object v0, p0, Lmf/org/apache/xerces/xpointer/ElementSchemePointer$Tokens;->this$0:Lmf/org/apache/xerces/xpointer/ElementSchemePointer;

    const-string/jumbo v1, "XPointerElementSchemeProcessingError"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lmf/org/apache/xerces/xpointer/ElementSchemePointer;->reportError(Ljava/lang/String;[Ljava/lang/Object;)V

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

    invoke-direct {p0}, Lmf/org/apache/xerces/xpointer/ElementSchemePointer$Tokens;->nextToken()I

    move-result v0

    invoke-direct {p0, v0}, Lmf/org/apache/xerces/xpointer/ElementSchemePointer$Tokens;->getTokenString(I)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    iget-object v1, p0, Lmf/org/apache/xerces/xpointer/ElementSchemePointer$Tokens;->this$0:Lmf/org/apache/xerces/xpointer/ElementSchemePointer;

    const-string/jumbo v2, "XPointerElementSchemeProcessingError"

    invoke-virtual {v1, v2, v3}, Lmf/org/apache/xerces/xpointer/ElementSchemePointer;->reportError(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method private peekToken()I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    iget v0, p0, Lmf/org/apache/xerces/xpointer/ElementSchemePointer$Tokens;->fCurrentTokenIndex:I

    iget v1, p0, Lmf/org/apache/xerces/xpointer/ElementSchemePointer$Tokens;->fTokenCount:I

    if-eq v0, v1, :cond_0

    :goto_0
    iget-object v0, p0, Lmf/org/apache/xerces/xpointer/ElementSchemePointer$Tokens;->fTokens:[I

    iget v1, p0, Lmf/org/apache/xerces/xpointer/ElementSchemePointer$Tokens;->fCurrentTokenIndex:I

    aget v0, v0, v1

    return v0

    :cond_0
    iget-object v0, p0, Lmf/org/apache/xerces/xpointer/ElementSchemePointer$Tokens;->this$0:Lmf/org/apache/xerces/xpointer/ElementSchemePointer;

    const-string/jumbo v1, "XPointerElementSchemeProcessingError"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lmf/org/apache/xerces/xpointer/ElementSchemePointer;->reportError(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method private rewind()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lmf/org/apache/xerces/xpointer/ElementSchemePointer$Tokens;->fCurrentTokenIndex:I

    return-void
.end method
