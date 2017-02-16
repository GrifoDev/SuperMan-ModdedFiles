.class public Ljava/util/IllegalFormatCodePointException;
.super Ljava/util/IllegalFormatException;
.source "IllegalFormatCodePointException.java"


# static fields
.field private static final serialVersionUID:J = 0x12325b6L


# instance fields
.field private c:I


# direct methods
.method public constructor <init>(I)V
    .locals 0
    .param p1, "c"    # I

    .prologue
    .line 52
    invoke-direct {p0}, Ljava/util/IllegalFormatException;-><init>()V

    .line 53
    iput p1, p0, Ljava/util/IllegalFormatCodePointException;->c:I

    .line 52
    return-void
.end method


# virtual methods
.method public getCodePoint()I
    .locals 1

    .prologue
    .line 63
    iget v0, p0, Ljava/util/IllegalFormatCodePointException;->c:I

    return v0
.end method

.method public getMessage()Ljava/lang/String;
    .locals 4

    .prologue
    .line 67
    const-string/jumbo v0, "Code point = %#x"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    iget v2, p0, Ljava/util/IllegalFormatCodePointException;->c:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
