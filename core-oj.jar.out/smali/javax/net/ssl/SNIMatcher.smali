.class public abstract Ljavax/net/ssl/SNIMatcher;
.super Ljava/lang/Object;
.source "SNIMatcher.java"


# instance fields
.field private final type:I


# direct methods
.method protected constructor <init>(I)V
    .locals 2
    .param p1, "type"    # I

    .prologue
    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    if-gez p1, :cond_0

    .line 67
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 68
    const-string/jumbo v1, "Server name type cannot be less than zero"

    .line 67
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 69
    :cond_0
    const/16 v0, 0xff

    if-le p1, v0, :cond_1

    .line 70
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 71
    const-string/jumbo v1, "Server name type cannot be greater than 255"

    .line 70
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 74
    :cond_1
    iput p1, p0, Ljavax/net/ssl/SNIMatcher;->type:I

    .line 65
    return-void
.end method


# virtual methods
.method public final getType()I
    .locals 1

    .prologue
    .line 85
    iget v0, p0, Ljavax/net/ssl/SNIMatcher;->type:I

    return v0
.end method

.method public abstract matches(Ljavax/net/ssl/SNIServerName;)Z
.end method
