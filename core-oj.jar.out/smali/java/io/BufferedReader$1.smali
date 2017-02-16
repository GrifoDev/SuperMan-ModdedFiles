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
    .param p1, "this$0"    # Ljava/io/BufferedReader;

    .prologue
    .line 570
    iput-object p1, p0, Ljava/io/BufferedReader$1;->this$0:Ljava/io/BufferedReader;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 571
    const/4 v0, 0x0

    iput-object v0, p0, Ljava/io/BufferedReader$1;->nextLine:Ljava/lang/String;

    .line 570
    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 3

    .prologue
    const/4 v1, 0x1

    .line 575
    iget-object v2, p0, Ljava/io/BufferedReader$1;->nextLine:Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 576
    return v1

    .line 579
    :cond_0
    :try_start_0
    iget-object v2, p0, Ljava/io/BufferedReader$1;->this$0:Ljava/io/BufferedReader;

    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Ljava/io/BufferedReader$1;->nextLine:Ljava/lang/String;

    .line 580
    iget-object v2, p0, Ljava/io/BufferedReader$1;->nextLine:Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v2, :cond_1

    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    .line 581
    :catch_0
    move-exception v0

    .line 582
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Ljava/io/UncheckedIOException;

    invoke-direct {v1, v0}, Ljava/io/UncheckedIOException;-><init>(Ljava/io/IOException;)V

    throw v1
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 588
    invoke-virtual {p0}, Ljava/io/BufferedReader$1;->next()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public next()Ljava/lang/String;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 589
    iget-object v1, p0, Ljava/io/BufferedReader$1;->nextLine:Ljava/lang/String;

    if-nez v1, :cond_0

    invoke-virtual {p0}, Ljava/io/BufferedReader$1;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 590
    :cond_0
    iget-object v0, p0, Ljava/io/BufferedReader$1;->nextLine:Ljava/lang/String;

    .line 591
    .local v0, "line":Ljava/lang/String;
    iput-object v2, p0, Ljava/io/BufferedReader$1;->nextLine:Ljava/lang/String;

    .line 592
    return-object v0

    .line 594
    .end local v0    # "line":Ljava/lang/String;
    :cond_1
    new-instance v1, Ljava/util/NoSuchElementException;

    invoke-direct {v1}, Ljava/util/NoSuchElementException;-><init>()V

    throw v1
.end method
