.class public Ljava/nio/charset/MalformedInputException;
.super Ljava/nio/charset/CharacterCodingException;
.source "MalformedInputException.java"


# static fields
.field private static final serialVersionUID:J = -0x2fb927a9987467b2L


# instance fields
.field private inputLength:I


# direct methods
.method public constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Ljava/nio/charset/CharacterCodingException;-><init>()V

    iput p1, p0, Ljava/nio/charset/MalformedInputException;->inputLength:I

    return-void
.end method


# virtual methods
.method public getInputLength()I
    .locals 1

    iget v0, p0, Ljava/nio/charset/MalformedInputException;->inputLength:I

    return v0
.end method

.method public getMessage()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "Input length = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Ljava/nio/charset/MalformedInputException;->inputLength:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
