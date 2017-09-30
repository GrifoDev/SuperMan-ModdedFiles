.class public Lcom/cmdm/control/util/encry/Base64OutputStream;
.super Ljava/io/OutputStream;


# instance fields
.field private dT:Ljava/io/OutputStream;

.field private dU:I

.field private dV:I

.field private dW:I

.field private dX:I


# direct methods
.method public constructor <init>(Ljava/io/OutputStream;)V
    .locals 1

    const/16 v0, 0x4c

    invoke-direct {p0, p1, v0}, Lcom/cmdm/control/util/encry/Base64OutputStream;-><init>(Ljava/io/OutputStream;I)V

    return-void
.end method

.method public constructor <init>(Ljava/io/OutputStream;I)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/cmdm/control/util/encry/Base64OutputStream;->dT:Ljava/io/OutputStream;

    iput v1, p0, Lcom/cmdm/control/util/encry/Base64OutputStream;->dU:I

    iput v1, p0, Lcom/cmdm/control/util/encry/Base64OutputStream;->dV:I

    iput v1, p0, Lcom/cmdm/control/util/encry/Base64OutputStream;->dW:I

    iput v1, p0, Lcom/cmdm/control/util/encry/Base64OutputStream;->dX:I

    iput-object p1, p0, Lcom/cmdm/control/util/encry/Base64OutputStream;->dT:Ljava/io/OutputStream;

    iput p2, p0, Lcom/cmdm/control/util/encry/Base64OutputStream;->dX:I

    return-void
.end method


# virtual methods
.method public close()V
    .locals 1

    invoke-virtual {p0}, Lcom/cmdm/control/util/encry/Base64OutputStream;->commit()V

    iget-object v0, p0, Lcom/cmdm/control/util/encry/Base64OutputStream;->dT:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    return-void
.end method

.method protected commit()V
    .locals 6

    const/4 v5, 0x0

    iget v0, p0, Lcom/cmdm/control/util/encry/Base64OutputStream;->dV:I

    if-lez v0, :cond_1

    iget v0, p0, Lcom/cmdm/control/util/encry/Base64OutputStream;->dX:I

    if-lez v0, :cond_0

    iget v0, p0, Lcom/cmdm/control/util/encry/Base64OutputStream;->dW:I

    iget v1, p0, Lcom/cmdm/control/util/encry/Base64OutputStream;->dX:I

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/cmdm/control/util/encry/Base64OutputStream;->dT:Ljava/io/OutputStream;

    const-string v1, "\r\n"

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write([B)V

    iput v5, p0, Lcom/cmdm/control/util/encry/Base64OutputStream;->dW:I

    :cond_0
    sget-object v0, Lcom/cmdm/control/util/encry/Shared;->ed:Ljava/lang/String;

    iget v1, p0, Lcom/cmdm/control/util/encry/Base64OutputStream;->dU:I

    shl-int/lit8 v1, v1, 0x8

    ushr-int/lit8 v1, v1, 0x1a

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    sget-object v0, Lcom/cmdm/control/util/encry/Shared;->ed:Ljava/lang/String;

    iget v1, p0, Lcom/cmdm/control/util/encry/Base64OutputStream;->dU:I

    shl-int/lit8 v1, v1, 0xe

    ushr-int/lit8 v1, v1, 0x1a

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    iget v0, p0, Lcom/cmdm/control/util/encry/Base64OutputStream;->dV:I

    const/4 v1, 0x2

    if-ge v0, v1, :cond_2

    sget-char v0, Lcom/cmdm/control/util/encry/Shared;->ee:C

    :goto_0
    iget v1, p0, Lcom/cmdm/control/util/encry/Base64OutputStream;->dV:I

    const/4 v4, 0x3

    if-ge v1, v4, :cond_3

    sget-char v1, Lcom/cmdm/control/util/encry/Shared;->ee:C

    :goto_1
    iget-object v4, p0, Lcom/cmdm/control/util/encry/Base64OutputStream;->dT:Ljava/io/OutputStream;

    invoke-virtual {v4, v2}, Ljava/io/OutputStream;->write(I)V

    iget-object v2, p0, Lcom/cmdm/control/util/encry/Base64OutputStream;->dT:Ljava/io/OutputStream;

    invoke-virtual {v2, v3}, Ljava/io/OutputStream;->write(I)V

    iget-object v2, p0, Lcom/cmdm/control/util/encry/Base64OutputStream;->dT:Ljava/io/OutputStream;

    invoke-virtual {v2, v0}, Ljava/io/OutputStream;->write(I)V

    iget-object v0, p0, Lcom/cmdm/control/util/encry/Base64OutputStream;->dT:Ljava/io/OutputStream;

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write(I)V

    iget v0, p0, Lcom/cmdm/control/util/encry/Base64OutputStream;->dW:I

    add-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/cmdm/control/util/encry/Base64OutputStream;->dW:I

    iput v5, p0, Lcom/cmdm/control/util/encry/Base64OutputStream;->dV:I

    iput v5, p0, Lcom/cmdm/control/util/encry/Base64OutputStream;->dU:I

    :cond_1
    return-void

    :cond_2
    sget-object v0, Lcom/cmdm/control/util/encry/Shared;->ed:Ljava/lang/String;

    iget v1, p0, Lcom/cmdm/control/util/encry/Base64OutputStream;->dU:I

    shl-int/lit8 v1, v1, 0x14

    ushr-int/lit8 v1, v1, 0x1a

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    goto :goto_0

    :cond_3
    sget-object v1, Lcom/cmdm/control/util/encry/Shared;->ed:Ljava/lang/String;

    iget v4, p0, Lcom/cmdm/control/util/encry/Base64OutputStream;->dU:I

    shl-int/lit8 v4, v4, 0x1a

    ushr-int/lit8 v4, v4, 0x1a

    invoke-virtual {v1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v1

    goto :goto_1
.end method

.method public write(I)V
    .locals 2

    and-int/lit16 v0, p1, 0xff

    iget v1, p0, Lcom/cmdm/control/util/encry/Base64OutputStream;->dV:I

    mul-int/lit8 v1, v1, 0x8

    rsub-int/lit8 v1, v1, 0x10

    shl-int/2addr v0, v1

    iget v1, p0, Lcom/cmdm/control/util/encry/Base64OutputStream;->dU:I

    or-int/2addr v0, v1

    iput v0, p0, Lcom/cmdm/control/util/encry/Base64OutputStream;->dU:I

    iget v0, p0, Lcom/cmdm/control/util/encry/Base64OutputStream;->dV:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/cmdm/control/util/encry/Base64OutputStream;->dV:I

    iget v0, p0, Lcom/cmdm/control/util/encry/Base64OutputStream;->dV:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/cmdm/control/util/encry/Base64OutputStream;->commit()V

    :cond_0
    return-void
.end method
