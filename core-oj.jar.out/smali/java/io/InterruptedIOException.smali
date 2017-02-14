.class public Ljava/io/InterruptedIOException;
.super Ljava/io/IOException;
.source "InterruptedIOException.java"


# static fields
.field private static final serialVersionUID:J = 0x37cbedb690cd3f17L


# instance fields
.field public bytesTransferred:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/io/IOException;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Ljava/io/InterruptedIOException;->bytesTransferred:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    const/4 v0, 0x0

    iput v0, p0, Ljava/io/InterruptedIOException;->bytesTransferred:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    iput v0, p0, Ljava/io/InterruptedIOException;->bytesTransferred:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/Throwable;)V
    .locals 1

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    iput v0, p0, Ljava/io/InterruptedIOException;->bytesTransferred:I

    return-void
.end method
