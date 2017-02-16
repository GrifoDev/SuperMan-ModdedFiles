.class public Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeFill;
.super Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeColor;
.source "SprAttributeFill.java"


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 9
    const/16 v0, 0x20

    invoke-direct {p0, v0}, Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeColor;-><init>(B)V

    .line 8
    return-void
.end method

.method public constructor <init>(BI)V
    .locals 1
    .param p1, "type"    # B
    .param p2, "value"    # I

    .prologue
    .line 13
    const/16 v0, 0x20

    invoke-direct {p0, v0, p1, p2}, Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeColor;-><init>(BBI)V

    .line 12
    return-void
.end method

.method public constructor <init>(BLcom/samsung/android/graphics/spr/document/attribute/impl/SprGradientBase;)V
    .locals 1
    .param p1, "type"    # B
    .param p2, "gradient"    # Lcom/samsung/android/graphics/spr/document/attribute/impl/SprGradientBase;

    .prologue
    .line 17
    const/16 v0, 0x20

    invoke-direct {p0, v0, p1, p2}, Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeColor;-><init>(BBLcom/samsung/android/graphics/spr/document/attribute/impl/SprGradientBase;)V

    .line 16
    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/graphics/spr/document/SprInputStream;)V
    .locals 1
    .param p1, "in"    # Lcom/samsung/android/graphics/spr/document/SprInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 21
    const/16 v0, 0x20

    invoke-direct {p0, v0, p1}, Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeColor;-><init>(BLcom/samsung/android/graphics/spr/document/SprInputStream;)V

    .line 20
    return-void
.end method
