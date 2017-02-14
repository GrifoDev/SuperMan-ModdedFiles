.class public Ljava/nio/charset/IllegalCharsetNameException;
.super Ljava/lang/IllegalArgumentException;
.source "IllegalCharsetNameException.java"


# static fields
.field private static final serialVersionUID:J = 0x143a2b975aba792dL


# instance fields
.field private charsetName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Ljava/nio/charset/IllegalCharsetNameException;->charsetName:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getCharsetName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Ljava/nio/charset/IllegalCharsetNameException;->charsetName:Ljava/lang/String;

    return-object v0
.end method
