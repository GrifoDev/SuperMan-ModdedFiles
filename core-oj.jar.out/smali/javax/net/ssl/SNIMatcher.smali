.class public abstract Ljavax/net/ssl/SNIMatcher;
.super Ljava/lang/Object;
.source "SNIMatcher.java"


# instance fields
.field private final type:I


# direct methods
.method protected constructor <init>(I)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-gez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Server name type cannot be less than zero"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    const/16 v0, 0xff

    if-le p1, v0, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Server name type cannot be greater than 255"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iput p1, p0, Ljavax/net/ssl/SNIMatcher;->type:I

    return-void
.end method


# virtual methods
.method public final getType()I
    .locals 1

    iget v0, p0, Ljavax/net/ssl/SNIMatcher;->type:I

    return v0
.end method

.method public abstract matches(Ljavax/net/ssl/SNIServerName;)Z
.end method
