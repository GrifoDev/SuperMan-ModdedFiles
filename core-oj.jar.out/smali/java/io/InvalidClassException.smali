.class public Ljava/io/InvalidClassException;
.super Ljava/io/ObjectStreamException;
.source "InvalidClassException.java"


# static fields
.field private static final serialVersionUID:J = -0x3c23083669749950L


# instance fields
.field public classname:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "reason"    # Ljava/lang/String;

    .prologue
    .line 58
    invoke-direct {p0, p1}, Ljava/io/ObjectStreamException;-><init>(Ljava/lang/String;)V

    .line 57
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "cname"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/String;

    .prologue
    .line 68
    invoke-direct {p0, p2}, Ljava/io/ObjectStreamException;-><init>(Ljava/lang/String;)V

    .line 69
    iput-object p1, p0, Ljava/io/InvalidClassException;->classname:Ljava/lang/String;

    .line 67
    return-void
.end method


# virtual methods
.method public getMessage()Ljava/lang/String;
    .locals 2

    .prologue
    .line 76
    iget-object v0, p0, Ljava/io/InvalidClassException;->classname:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 77
    invoke-super {p0}, Ljava/io/ObjectStreamException;->getMessage()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 79
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Ljava/io/InvalidClassException;->classname:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "; "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-super {p0}, Ljava/io/ObjectStreamException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
