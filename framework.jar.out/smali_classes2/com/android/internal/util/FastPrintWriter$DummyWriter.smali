.class Lcom/android/internal/util/FastPrintWriter$DummyWriter;
.super Ljava/io/Writer;
.source "FastPrintWriter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/util/FastPrintWriter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DummyWriter"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/io/Writer;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/internal/util/FastPrintWriter$DummyWriter;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/internal/util/FastPrintWriter$DummyWriter;-><init>()V

    return-void
.end method


# virtual methods
.method public close()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v1, "Shouldn\'t be here"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public flush()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/android/internal/util/FastPrintWriter$DummyWriter;->close()V

    return-void
.end method

.method public write([CII)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/android/internal/util/FastPrintWriter$DummyWriter;->close()V

    return-void
.end method
