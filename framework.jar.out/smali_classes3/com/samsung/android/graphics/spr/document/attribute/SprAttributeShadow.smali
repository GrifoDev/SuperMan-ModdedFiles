.class public Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeShadow;
.super Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeBase;
.source "SprAttributeShadow.java"


# instance fields
.field public dx:F

.field public dy:F

.field public radius:F

.field public shadowColor:I


# direct methods
.method public constructor <init>()V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x0

    const/16 v0, 0x70

    invoke-direct {p0, v0}, Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeBase;-><init>(B)V

    iput v1, p0, Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeShadow;->radius:F

    iput v1, p0, Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeShadow;->dx:F

    iput v1, p0, Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeShadow;->dy:F

    iput v2, p0, Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeShadow;->shadowColor:I

    iput v1, p0, Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeShadow;->dy:F

    iput v1, p0, Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeShadow;->dx:F

    iput v1, p0, Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeShadow;->radius:F

    iput v2, p0, Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeShadow;->shadowColor:I

    return-void
.end method

.method public constructor <init>(FFFI)V
    .locals 2

    const/4 v1, 0x0

    const/16 v0, 0x70

    invoke-direct {p0, v0}, Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeBase;-><init>(B)V

    iput v1, p0, Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeShadow;->radius:F

    iput v1, p0, Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeShadow;->dx:F

    iput v1, p0, Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeShadow;->dy:F

    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeShadow;->shadowColor:I

    iput p1, p0, Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeShadow;->radius:F

    iput p2, p0, Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeShadow;->dx:F

    iput p3, p0, Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeShadow;->dy:F

    iput p4, p0, Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeShadow;->shadowColor:I

    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/graphics/spr/document/SprInputStream;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v1, 0x0

    const/16 v0, 0x70

    invoke-direct {p0, v0}, Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeBase;-><init>(B)V

    iput v1, p0, Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeShadow;->radius:F

    iput v1, p0, Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeShadow;->dx:F

    iput v1, p0, Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeShadow;->dy:F

    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeShadow;->shadowColor:I

    invoke-virtual {p0, p1}, Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeShadow;->fromSPR(Lcom/samsung/android/graphics/spr/document/SprInputStream;)V

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

    invoke-virtual {p0}, Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeShadow;->clone()Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeShadow;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeShadow;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    invoke-super {p0}, Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeBase;->clone()Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeBase;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeShadow;

    iget v1, p0, Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeShadow;->radius:F

    iput v1, v0, Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeShadow;->radius:F

    iget v1, p0, Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeShadow;->dx:F

    iput v1, v0, Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeShadow;->dx:F

    iget v1, p0, Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeShadow;->dy:F

    iput v1, v0, Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeShadow;->dy:F

    iget v1, p0, Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeShadow;->shadowColor:I

    iput v1, v0, Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeShadow;->shadowColor:I

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeShadow;->clone()Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeShadow;

    move-result-object v0

    return-object v0
.end method

.method public fromSPR(Lcom/samsung/android/graphics/spr/document/SprInputStream;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p1}, Lcom/samsung/android/graphics/spr/document/SprInputStream;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeShadow;->radius:F

    invoke-virtual {p1}, Lcom/samsung/android/graphics/spr/document/SprInputStream;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeShadow;->dx:F

    invoke-virtual {p1}, Lcom/samsung/android/graphics/spr/document/SprInputStream;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeShadow;->dy:F

    invoke-virtual {p1}, Lcom/samsung/android/graphics/spr/document/SprInputStream;->readInt()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeShadow;->shadowColor:I

    return-void
.end method

.method public getSPRSize()I
    .locals 1

    const/16 v0, 0x10

    return v0
.end method

.method public toSPR(Ljava/io/DataOutputStream;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeShadow;->radius:F

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeFloat(F)V

    iget v0, p0, Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeShadow;->dx:F

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeFloat(F)V

    iget v0, p0, Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeShadow;->dy:F

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeFloat(F)V

    iget v0, p0, Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeShadow;->shadowColor:I

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeInt(I)V

    return-void
.end method
