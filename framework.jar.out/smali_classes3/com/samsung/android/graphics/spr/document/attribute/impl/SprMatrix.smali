.class public Lcom/samsung/android/graphics/spr/document/attribute/impl/SprMatrix;
.super Ljava/lang/Object;
.source "SprMatrix.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static fromSPR(Lcom/samsung/android/graphics/spr/document/SprInputStream;)Landroid/graphics/Matrix;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v9, 0x0

    new-instance v6, Landroid/graphics/Matrix;

    invoke-direct {v6}, Landroid/graphics/Matrix;-><init>()V

    invoke-virtual {p0}, Lcom/samsung/android/graphics/spr/document/SprInputStream;->readFloat()F

    move-result v0

    invoke-virtual {p0}, Lcom/samsung/android/graphics/spr/document/SprInputStream;->readFloat()F

    move-result v1

    invoke-virtual {p0}, Lcom/samsung/android/graphics/spr/document/SprInputStream;->readFloat()F

    move-result v2

    invoke-virtual {p0}, Lcom/samsung/android/graphics/spr/document/SprInputStream;->readFloat()F

    move-result v3

    invoke-virtual {p0}, Lcom/samsung/android/graphics/spr/document/SprInputStream;->readFloat()F

    move-result v4

    invoke-virtual {p0}, Lcom/samsung/android/graphics/spr/document/SprInputStream;->readFloat()F

    move-result v5

    const/16 v7, 0x9

    new-array v7, v7, [F

    const/4 v8, 0x0

    aput v0, v7, v8

    const/4 v8, 0x1

    aput v1, v7, v8

    const/4 v8, 0x2

    aput v2, v7, v8

    const/4 v8, 0x3

    aput v3, v7, v8

    const/4 v8, 0x4

    aput v4, v7, v8

    const/4 v8, 0x5

    aput v5, v7, v8

    const/4 v8, 0x6

    aput v9, v7, v8

    const/4 v8, 0x7

    aput v9, v7, v8

    const/high16 v8, 0x3f800000    # 1.0f

    const/16 v9, 0x8

    aput v8, v7, v9

    invoke-virtual {v6, v7}, Landroid/graphics/Matrix;->setValues([F)V

    return-object v6
.end method

.method public static toSPR(Ljava/io/DataOutputStream;Landroid/graphics/Matrix;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v1, 0x0

    if-nez p1, :cond_0

    invoke-virtual {p0, v2}, Ljava/io/DataOutputStream;->writeFloat(F)V

    invoke-virtual {p0, v1}, Ljava/io/DataOutputStream;->writeFloat(F)V

    invoke-virtual {p0, v1}, Ljava/io/DataOutputStream;->writeFloat(F)V

    invoke-virtual {p0, v1}, Ljava/io/DataOutputStream;->writeFloat(F)V

    invoke-virtual {p0, v2}, Ljava/io/DataOutputStream;->writeFloat(F)V

    invoke-virtual {p0, v1}, Ljava/io/DataOutputStream;->writeFloat(F)V

    :goto_0
    return-void

    :cond_0
    const/16 v1, 0x9

    new-array v0, v1, [F

    invoke-virtual {p1, v0}, Landroid/graphics/Matrix;->getValues([F)V

    const/4 v1, 0x0

    aget v1, v0, v1

    invoke-virtual {p0, v1}, Ljava/io/DataOutputStream;->writeFloat(F)V

    const/4 v1, 0x1

    aget v1, v0, v1

    invoke-virtual {p0, v1}, Ljava/io/DataOutputStream;->writeFloat(F)V

    const/4 v1, 0x2

    aget v1, v0, v1

    invoke-virtual {p0, v1}, Ljava/io/DataOutputStream;->writeFloat(F)V

    const/4 v1, 0x3

    aget v1, v0, v1

    invoke-virtual {p0, v1}, Ljava/io/DataOutputStream;->writeFloat(F)V

    const/4 v1, 0x4

    aget v1, v0, v1

    invoke-virtual {p0, v1}, Ljava/io/DataOutputStream;->writeFloat(F)V

    const/4 v1, 0x5

    aget v1, v0, v1

    invoke-virtual {p0, v1}, Ljava/io/DataOutputStream;->writeFloat(F)V

    goto :goto_0
.end method
