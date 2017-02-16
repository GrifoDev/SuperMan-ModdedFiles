.class public Ljava/util/IllegalFormatFlagsException;
.super Ljava/util/IllegalFormatException;
.source "IllegalFormatFlagsException.java"


# static fields
.field private static final serialVersionUID:J = 0xc1128L


# instance fields
.field private flags:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "f"    # Ljava/lang/String;

    .prologue
    .line 49
    invoke-direct {p0}, Ljava/util/IllegalFormatException;-><init>()V

    .line 50
    if-nez p1, :cond_0

    .line 51
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 52
    :cond_0
    iput-object p1, p0, Ljava/util/IllegalFormatFlagsException;->flags:Ljava/lang/String;

    .line 49
    return-void
.end method


# virtual methods
.method public getFlags()Ljava/lang/String;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Ljava/util/IllegalFormatFlagsException;->flags:Ljava/lang/String;

    return-object v0
.end method

.method public getMessage()Ljava/lang/String;
    .locals 2

    .prologue
    .line 65
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "Flags = \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Ljava/util/IllegalFormatFlagsException;->flags:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
