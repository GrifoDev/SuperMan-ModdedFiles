.class public Ljava/io/UnsupportedEncodingException;
.super Ljava/io/IOException;
.source "UnsupportedEncodingException.java"


# static fields
.field private static final serialVersionUID:J = -0x3b5147a5b199d75eL


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/io/IOException;-><init>()V

    .line 41
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 50
    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 49
    return-void
.end method
