.class Ljava/io/BufferedReader$1;
.super Ljava/lang/Object;
.source "BufferedReader.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljava/io/BufferedReader;->lines()Ljava/util/stream/Stream;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field nextLine:Ljava/lang/String;

.field final synthetic this$0:Ljava/io/BufferedReader;


# direct methods
.method constructor <init>(Ljava/io/BufferedReader;)V
    .locals 1

    iput-object p1, p0, Ljava/io/BufferedReader$1;->this$0:Ljava/io/BufferedReader;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Ljava/io/BufferedReader$1;->nextLine:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 3

    const/4 v1, 0x1

    iget-object v2, p0, Ljava/io/BufferedReader$1;->nextLine:Ljava/lang/String;

    if-eqz v2, :cond_0

    return v1

    :cond_0
    :try_start_0
    iget-object v2, p0, Ljava/io/BufferedReader$1;->this$0:Ljava/io/BufferedReader;

    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Ljava/io/BufferedReader$1;->nextLine:Ljava/lang/String;

    iget-object v2, p0, Ljava/io/BufferedReader$1;->nextLine:Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v2, :cond_1

    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/io/UncheckedIOException;

    invoke-direct {v1, v0}, Ljava/io/UncheckedIOException;-><init>(Ljava/io/IOException;)V

    throw v1
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Ljava/io/BufferedReader$1;->next()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public next()Ljava/lang/String;
    .locals 3

    const/4 v2, 0x0

    iget-object v1, p0, Ljava/io/BufferedReader$1;->nextLine:Ljava/lang/String;

    if-nez v1, :cond_0

    invoke-virtual {p0}, Ljava/io/BufferedReader$1;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    iget-object v0, p0, Ljava/io/BufferedReader$1;->nextLine:Ljava/lang/String;

    iput-object v2, p0, Ljava/io/BufferedReader$1;->nextLine:Ljava/lang/String;

    return-object v0

    :cond_1
    new-instance v1, Ljava/util/NoSuchElementException;

    invoke-direct {v1}, Ljava/util/NoSuchElementException;-><init>()V

    throw v1
.end method
