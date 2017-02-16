.class Ljava/util/logging/FileHandler$MeteredStream;
.super Ljava/io/OutputStream;
.source "FileHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/logging/FileHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MeteredStream"
.end annotation


# instance fields
.field out:Ljava/io/OutputStream;

.field final synthetic this$0:Ljava/util/logging/FileHandler;

.field written:I


# direct methods
.method constructor <init>(Ljava/util/logging/FileHandler;Ljava/io/OutputStream;I)V
    .locals 0
    .param p1, "this$0"    # Ljava/util/logging/FileHandler;
    .param p2, "out"    # Ljava/io/OutputStream;
    .param p3, "written"    # I

    .prologue
    .line 140
    iput-object p1, p0, Ljava/util/logging/FileHandler$MeteredStream;->this$0:Ljava/util/logging/FileHandler;

    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    .line 141
    iput-object p2, p0, Ljava/util/logging/FileHandler$MeteredStream;->out:Ljava/io/OutputStream;

    .line 142
    iput p3, p0, Ljava/util/logging/FileHandler$MeteredStream;->written:I

    .line 140
    return-void
.end method


# virtual methods
.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 165
    iget-object v0, p0, Ljava/util/logging/FileHandler$MeteredStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    .line 164
    return-void
.end method

.method public flush()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 161
    iget-object v0, p0, Ljava/util/logging/FileHandler$MeteredStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V

    .line 160
    return-void
.end method

.method public write(I)V
    .locals 1
    .param p1, "b"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 146
    iget-object v0, p0, Ljava/util/logging/FileHandler$MeteredStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write(I)V

    .line 147
    iget v0, p0, Ljava/util/logging/FileHandler$MeteredStream;->written:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Ljava/util/logging/FileHandler$MeteredStream;->written:I

    .line 145
    return-void
.end method

.method public write([B)V
    .locals 2
    .param p1, "buff"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 151
    iget-object v0, p0, Ljava/util/logging/FileHandler$MeteredStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write([B)V

    .line 152
    iget v0, p0, Ljava/util/logging/FileHandler$MeteredStream;->written:I

    array-length v1, p1

    add-int/2addr v0, v1

    iput v0, p0, Ljava/util/logging/FileHandler$MeteredStream;->written:I

    .line 150
    return-void
.end method

.method public write([BII)V
    .locals 1
    .param p1, "buff"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 156
    iget-object v0, p0, Ljava/util/logging/FileHandler$MeteredStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/OutputStream;->write([BII)V

    .line 157
    iget v0, p0, Ljava/util/logging/FileHandler$MeteredStream;->written:I

    add-int/2addr v0, p3

    iput v0, p0, Ljava/util/logging/FileHandler$MeteredStream;->written:I

    .line 155
    return-void
.end method
