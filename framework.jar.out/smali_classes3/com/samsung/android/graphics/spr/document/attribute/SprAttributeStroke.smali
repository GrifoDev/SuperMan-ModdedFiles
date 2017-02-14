.class public Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeStroke;
.super Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeColor;
.source "SprAttributeStroke.java"


# direct methods
.method public constructor <init>()V
    .locals 1

    const/16 v0, 0x23

    invoke-direct {p0, v0}, Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeColor;-><init>(B)V

    return-void
.end method

.method public constructor <init>(BI)V
    .locals 1

    const/16 v0, 0x23

    invoke-direct {p0, v0, p1, p2}, Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeColor;-><init>(BBI)V

    return-void
.end method

.method public constructor <init>(BLcom/samsung/android/graphics/spr/document/attribute/impl/SprGradientBase;)V
    .locals 1

    const/16 v0, 0x23

    invoke-direct {p0, v0, p1, p2}, Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeColor;-><init>(BBLcom/samsung/android/graphics/spr/document/attribute/impl/SprGradientBase;)V

    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/graphics/spr/document/SprInputStream;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0x23

    invoke-direct {p0, v0, p1}, Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeColor;-><init>(BLcom/samsung/android/graphics/spr/document/SprInputStream;)V

    return-void
.end method
