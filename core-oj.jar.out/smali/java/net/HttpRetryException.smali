.class public Ljava/net/HttpRetryException;
.super Ljava/io/IOException;
.source "HttpRetryException.java"


# static fields
.field private static final serialVersionUID:J = -0x7f7b4e9993d01e55L


# instance fields
.field private location:Ljava/lang/String;

.field private responseCode:I


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .param p1, "detail"    # Ljava/lang/String;
    .param p2, "code"    # I

    .prologue
    .line 53
    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 54
    iput p2, p0, Ljava/net/HttpRetryException;->responseCode:I

    .line 52
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .param p1, "detail"    # Ljava/lang/String;
    .param p2, "code"    # I
    .param p3, "location"    # Ljava/lang/String;

    .prologue
    .line 66
    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 67
    iput p2, p0, Ljava/net/HttpRetryException;->responseCode:I

    .line 68
    iput-object p3, p0, Ljava/net/HttpRetryException;->location:Ljava/lang/String;

    .line 65
    return-void
.end method


# virtual methods
.method public getLocation()Ljava/lang/String;
    .locals 1

    .prologue
    .line 97
    iget-object v0, p0, Ljava/net/HttpRetryException;->location:Ljava/lang/String;

    return-object v0
.end method

.method public getReason()Ljava/lang/String;
    .locals 1

    .prologue
    .line 87
    invoke-super {p0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public responseCode()I
    .locals 1

    .prologue
    .line 77
    iget v0, p0, Ljava/net/HttpRetryException;->responseCode:I

    return v0
.end method
