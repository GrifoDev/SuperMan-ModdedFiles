.class public Ljava/lang/ClassFormatError;
.super Ljava/lang/LinkageError;
.source "ClassFormatError.java"


# static fields
.field private static final serialVersionUID:J = -0x74da41deeb7d0a8bL


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/LinkageError;-><init>()V

    .line 43
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 54
    invoke-direct {p0, p1}, Ljava/lang/LinkageError;-><init>(Ljava/lang/String;)V

    .line 53
    return-void
.end method
