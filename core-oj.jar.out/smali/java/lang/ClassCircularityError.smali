.class public Ljava/lang/ClassCircularityError;
.super Ljava/lang/LinkageError;
.source "ClassCircularityError.java"


# static fields
.field private static final serialVersionUID:J = 0xea1d92582e610a9L


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/LinkageError;-><init>()V

    .line 41
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 53
    invoke-direct {p0, p1}, Ljava/lang/LinkageError;-><init>(Ljava/lang/String;)V

    .line 52
    return-void
.end method
