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

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 16
    const/16 v0, 0x70

    invoke-direct {p0, v0}, Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeBase;-><init>(B)V

    .line 10
    iput v1, p0, Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeShadow;->radius:F

    .line 11
    iput v1, p0, Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeShadow;->dx:F

    .line 12
    iput v1, p0, Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeShadow;->dy:F

    .line 13
    iput v2, p0, Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeShadow;->shadowColor:I

    .line 17
    iput v1, p0, Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeShadow;->dy:F

    iput v1, p0, Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeShadow;->dx:F

    iput v1, p0, Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeShadow;->radius:F

    .line 18
    iput v2, p0, Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeShadow;->shadowColor:I

    .line 15
    return-void
.end method

.method public constructor <init>(FFFI)V
    .locals 2
    .param p1, "radius"    # F
    .param p2, "dx"    # F
    .param p3, "dy"    # F
    .param p4, "color"    # I

    .prologue
    const/4 v1, 0x0

    .line 22
    const/16 v0, 0x70

    invoke-direct {p0, v0}, Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeBase;-><init>(B)V

    .line 10
    iput v1, p0, Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeShadow;->radius:F

    .line 11
    iput v1, p0, Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeShadow;->dx:F

    .line 12
    iput v1, p0, Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeShadow;->dy:F

    .line 13
    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeShadow;->shadowColor:I

    .line 23
    iput p1, p0, Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeShadow;->radius:F

    .line 24
    iput p2, p0, Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeShadow;->dx:F

    .line 25
    iput p3, p0, Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeShadow;->dy:F

    .line 26
    iput p4, p0, Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeShadow;->shadowColor:I

    .line 21
    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/graphics/spr/document/SprInputStream;)V
    .locals 2
    .param p1, "in"    # Lcom/samsung/android/graphics/spr/document/SprInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 30
    const/16 v0, 0x70

    invoke-direct {p0, v0}, Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeBase;-><init>(B)V

    .line 10
    iput v1, p0, Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeShadow;->radius:F

    .line 11
    iput v1, p0, Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeShadow;->dx:F

    .line 12
    iput v1, p0, Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeShadow;->dy:F

    .line 13
    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeShadow;->shadowColor:I

    .line 31
    invoke-virtual {p0, p1}, Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeShadow;->fromSPR(Lcom/samsung/android/graphics/spr/document/SprInputStream;)V

    .line 29
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

    .prologue
    .line 56
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

    .prologue
    .line 57
    invoke-super {p0}, Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeBase;->clone()Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeBase;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeShadow;

    .line 59
    .local v0, "attribute":Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeShadow;
    iget v1, p0, Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeShadow;->radius:F

    iput v1, v0, Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeShadow;->radius:F

    .line 60
    iget v1, p0, Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeShadow;->dx:F

    iput v1, v0, Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeShadow;->dx:F

    .line 61
    iget v1, p0, Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeShadow;->dy:F

    iput v1, v0, Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeShadow;->dy:F

    .line 62
    iget v1, p0, Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeShadow;->shadowColor:I

    iput v1, v0, Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeShadow;->shadowColor:I

    .line 64
    return-object v0
.end method

.method public fromSPR(Lcom/samsung/android/graphics/spr/document/SprInputStream;)V
    .locals 1
    .param p1, "in"    # Lcom/samsung/android/graphics/spr/document/SprInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 36
    invoke-virtual {p1}, Lcom/samsung/android/graphics/spr/document/SprInputStream;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeShadow;->radius:F

    .line 37
    invoke-virtual {p1}, Lcom/samsung/android/graphics/spr/document/SprInputStream;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeShadow;->dx:F

    .line 38
    invoke-virtual {p1}, Lcom/samsung/android/graphics/spr/document/SprInputStream;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeShadow;->dy:F

    .line 39
    invoke-virtual {p1}, Lcom/samsung/android/graphics/spr/document/SprInputStream;->readInt()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeShadow;->shadowColor:I

    .line 35
    return-void
.end method

.method public getSPRSize()I
    .locals 1

    .prologue
    .line 52
    const/16 v0, 0x10

    return v0
.end method

.method public toSPR(Ljava/io/DataOutputStream;)V
    .locals 1
    .param p1, "out"    # Ljava/io/DataOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 44
    iget v0, p0, Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeShadow;->radius:F

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeFloat(F)V

    .line 45
    iget v0, p0, Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeShadow;->dx:F

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeFloat(F)V

    .line 46
    iget v0, p0, Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeShadow;->dy:F

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeFloat(F)V

    .line 47
    iget v0, p0, Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeShadow;->shadowColor:I

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 43
    return-void
.end method
