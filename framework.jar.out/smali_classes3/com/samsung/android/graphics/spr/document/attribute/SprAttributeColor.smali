.class public abstract Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeColor;
.super Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeBase;
.source "SprAttributeColor.java"


# static fields
.field public static final TYPE_ARGB:B = 0x1t

.field public static final TYPE_LINEAR_GRADIENT:B = 0x3t

.field public static final TYPE_LINK:B = 0x2t

.field public static final TYPE_NONE:B = 0x0t

.field public static final TYPE_RADIAL_GRADIENT:B = 0x4t


# instance fields
.field public color:I

.field public colorType:B

.field public gradient:Lcom/samsung/android/graphics/spr/document/attribute/impl/SprGradientBase;


# direct methods
.method public constructor <init>(B)V
    .locals 2

    const/4 v1, 0x1

    invoke-direct {p0, p1}, Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeBase;-><init>(B)V

    iput-byte v1, p0, Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeColor;->colorType:B

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeColor;->gradient:Lcom/samsung/android/graphics/spr/document/attribute/impl/SprGradientBase;

    iput-byte v1, p0, Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeColor;->colorType:B

    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeColor;->color:I

    return-void
.end method

.method public constructor <init>(BBI)V
    .locals 3

    invoke-direct {p0, p1}, Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeBase;-><init>(B)V

    const/4 v0, 0x1

    iput-byte v0, p0, Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeColor;->colorType:B

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeColor;->gradient:Lcom/samsung/android/graphics/spr/document/attribute/impl/SprGradientBase;

    iput-byte p2, p0, Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeColor;->colorType:B

    packed-switch p2, :pswitch_data_0

    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "unexpected stroke type:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    iput p3, p0, Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeColor;->color:I

    :pswitch_1
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public constructor <init>(BBLcom/samsung/android/graphics/spr/document/attribute/impl/SprGradientBase;)V
    .locals 3

    invoke-direct {p0, p1}, Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeBase;-><init>(B)V

    const/4 v0, 0x1

    iput-byte v0, p0, Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeColor;->colorType:B

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeColor;->gradient:Lcom/samsung/android/graphics/spr/document/attribute/impl/SprGradientBase;

    iput-byte p2, p0, Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeColor;->colorType:B

    packed-switch p2, :pswitch_data_0

    :pswitch_0
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "unexpected stroke type:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_1
    iput-object p3, p0, Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeColor;->gradient:Lcom/samsung/android/graphics/spr/document/attribute/impl/SprGradientBase;

    :pswitch_2
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public constructor <init>(BLcom/samsung/android/graphics/spr/document/SprInputStream;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeBase;-><init>(B)V

    const/4 v0, 0x1

    iput-byte v0, p0, Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeColor;->colorType:B

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeColor;->gradient:Lcom/samsung/android/graphics/spr/document/attribute/impl/SprGradientBase;

    invoke-virtual {p0, p2}, Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeColor;->fromSPR(Lcom/samsung/android/graphics/spr/document/SprInputStream;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic clone()Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeBase;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeColor;->clone()Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeColor;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeColor;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    invoke-super {p0}, Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeBase;->clone()Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeBase;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeColor;

    iget-object v1, p0, Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeColor;->gradient:Lcom/samsung/android/graphics/spr/document/attribute/impl/SprGradientBase;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeColor;->gradient:Lcom/samsung/android/graphics/spr/document/attribute/impl/SprGradientBase;

    invoke-virtual {v1}, Lcom/samsung/android/graphics/spr/document/attribute/impl/SprGradientBase;->clone()Lcom/samsung/android/graphics/spr/document/attribute/impl/SprGradientBase;

    move-result-object v1

    iput-object v1, v0, Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeColor;->gradient:Lcom/samsung/android/graphics/spr/document/attribute/impl/SprGradientBase;

    :cond_0
    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeColor;->clone()Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeColor;

    move-result-object v0

    return-object v0
.end method

.method public fromSPR(Lcom/samsung/android/graphics/spr/document/SprInputStream;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p1}, Lcom/samsung/android/graphics/spr/document/SprInputStream;->readByte()B

    move-result v0

    iput-byte v0, p0, Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeColor;->colorType:B

    iget-byte v0, p0, Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeColor;->colorType:B

    packed-switch v0, :pswitch_data_0

    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "unknown fill type:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-byte v2, p0, Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeColor;->colorType:B

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    invoke-virtual {p1}, Lcom/samsung/android/graphics/spr/document/SprInputStream;->readInt()I

    :goto_0
    return-void

    :pswitch_1
    invoke-virtual {p1}, Lcom/samsung/android/graphics/spr/document/SprInputStream;->readInt()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeColor;->color:I

    goto :goto_0

    :pswitch_2
    new-instance v0, Lcom/samsung/android/graphics/spr/document/attribute/impl/SprLinearGradient;

    invoke-direct {v0, p1}, Lcom/samsung/android/graphics/spr/document/attribute/impl/SprLinearGradient;-><init>(Lcom/samsung/android/graphics/spr/document/SprInputStream;)V

    iput-object v0, p0, Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeColor;->gradient:Lcom/samsung/android/graphics/spr/document/attribute/impl/SprGradientBase;

    goto :goto_0

    :pswitch_3
    new-instance v0, Lcom/samsung/android/graphics/spr/document/attribute/impl/SprRadialGradient;

    invoke-direct {v0, p1}, Lcom/samsung/android/graphics/spr/document/attribute/impl/SprRadialGradient;-><init>(Lcom/samsung/android/graphics/spr/document/SprInputStream;)V

    iput-object v0, p0, Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeColor;->gradient:Lcom/samsung/android/graphics/spr/document/attribute/impl/SprGradientBase;

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public getSPRSize()I
    .locals 4

    const/4 v0, 0x0

    iget-byte v1, p0, Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeColor;->colorType:B

    packed-switch v1, :pswitch_data_0

    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "unknown fill type:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-byte v3, p0, Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeColor;->colorType:B

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    :pswitch_0
    const/4 v0, 0x0

    :goto_0
    return v0

    :pswitch_1
    const/4 v0, 0x5

    goto :goto_0

    :pswitch_2
    iget-object v1, p0, Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeColor;->gradient:Lcom/samsung/android/graphics/spr/document/attribute/impl/SprGradientBase;

    invoke-virtual {v1}, Lcom/samsung/android/graphics/spr/document/attribute/impl/SprGradientBase;->getSPRSize()I

    move-result v1

    add-int/lit8 v0, v1, 0x1

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method

.method public toSPR(Ljava/io/DataOutputStream;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-byte v0, p0, Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeColor;->colorType:B

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeByte(I)V

    iget-byte v0, p0, Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeColor;->colorType:B

    packed-switch v0, :pswitch_data_0

    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "unknown fill type:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-byte v2, p0, Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeColor;->colorType:B

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeInt(I)V

    :goto_0
    return-void

    :pswitch_1
    iget v0, p0, Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeColor;->color:I

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeInt(I)V

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeColor;->gradient:Lcom/samsung/android/graphics/spr/document/attribute/impl/SprGradientBase;

    invoke-virtual {v0, p1}, Lcom/samsung/android/graphics/spr/document/attribute/impl/SprGradientBase;->toSPR(Ljava/io/DataOutputStream;)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method
