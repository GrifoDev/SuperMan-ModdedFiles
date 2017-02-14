.class public Lsun/util/locale/LocaleSyntaxException;
.super Ljava/lang/Exception;
.source "LocaleSyntaxException.java"


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private index:I


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lsun/util/locale/LocaleSyntaxException;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 1

    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    const/4 v0, -0x1

    iput v0, p0, Lsun/util/locale/LocaleSyntaxException;->index:I

    iput p2, p0, Lsun/util/locale/LocaleSyntaxException;->index:I

    return-void
.end method


# virtual methods
.method public getErrorIndex()I
    .locals 1

    iget v0, p0, Lsun/util/locale/LocaleSyntaxException;->index:I

    return v0
.end method
