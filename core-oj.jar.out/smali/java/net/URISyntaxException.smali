.class public Ljava/net/URISyntaxException;
.super Ljava/lang/Exception;
.source "URISyntaxException.java"


# static fields
.field private static final serialVersionUID:J = 0x1daba13138e5d7fbL


# instance fields
.field private index:I

.field private input:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "input"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/String;

    .prologue
    .line 82
    const/4 v0, -0x1

    invoke-direct {p0, p1, p2, v0}, Ljava/net/URISyntaxException;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    .line 81
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 1
    .param p1, "input"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/String;
    .param p3, "index"    # I

    .prologue
    .line 62
    invoke-direct {p0, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 63
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 64
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 65
    :cond_1
    const/4 v0, -0x1

    if-ge p3, v0, :cond_2

    .line 66
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 67
    :cond_2
    iput-object p1, p0, Ljava/net/URISyntaxException;->input:Ljava/lang/String;

    .line 68
    iput p3, p0, Ljava/net/URISyntaxException;->index:I

    .line 61
    return-void
.end method


# virtual methods
.method public getIndex()I
    .locals 1

    .prologue
    .line 110
    iget v0, p0, Ljava/net/URISyntaxException;->index:I

    return v0
.end method

.method public getInput()Ljava/lang/String;
    .locals 1

    .prologue
    .line 91
    iget-object v0, p0, Ljava/net/URISyntaxException;->input:Ljava/lang/String;

    return-object v0
.end method

.method public getMessage()Ljava/lang/String;
    .locals 3

    .prologue
    .line 124
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 125
    .local v0, "sb":Ljava/lang/StringBuffer;
    invoke-virtual {p0}, Ljava/net/URISyntaxException;->getReason()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 126
    iget v1, p0, Ljava/net/URISyntaxException;->index:I

    const/4 v2, -0x1

    if-le v1, v2, :cond_0

    .line 127
    const-string/jumbo v1, " at index "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 128
    iget v1, p0, Ljava/net/URISyntaxException;->index:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 130
    :cond_0
    const-string/jumbo v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 131
    iget-object v1, p0, Ljava/net/URISyntaxException;->input:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 132
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getReason()Ljava/lang/String;
    .locals 1

    .prologue
    .line 100
    invoke-super {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
