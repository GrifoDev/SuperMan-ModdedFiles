.class public Lcom/samsung/android/srib/glutils/TextureHelper;
.super Ljava/lang/Object;
.source "TextureHelper.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "TextureHelper"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static loadTexture(Landroid/content/Context;Landroid/graphics/Bitmap;Z)I
    .locals 6

    const/4 v3, 0x1

    const/16 v5, 0xde1

    const/4 v4, 0x0

    new-array v1, v3, [I

    invoke-static {v3, v1, v4}, Landroid/opengl/GLES20;->glGenTextures(I[II)V

    aget v2, v1, v4

    if-eqz v2, :cond_0

    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    iput-boolean v4, v0, Landroid/graphics/BitmapFactory$Options;->inScaled:Z

    if-eqz p1, :cond_1

    aget v2, v1, v4

    invoke-static {v5, v2}, Landroid/opengl/GLES20;->glBindTexture(II)V

    const/16 v2, 0x2801

    const/16 v3, 0x2703

    invoke-static {v5, v2, v3}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    const/16 v2, 0x2800

    const/16 v3, 0x2601

    invoke-static {v5, v2, v3}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    invoke-static {v5, v4, p1, v4}, Landroid/opengl/GLUtils;->texImage2D(IILandroid/graphics/Bitmap;I)V

    invoke-static {v5}, Landroid/opengl/GLES20;->glGenerateMipmap(I)V

    if-nez p2, :cond_2

    :goto_0
    invoke-static {v5, v4}, Landroid/opengl/GLES20;->glBindTexture(II)V

    aget v2, v1, v4

    return v2

    :cond_0
    return v4

    :cond_1
    invoke-static {v3, v1, v4}, Landroid/opengl/GLES20;->glDeleteTextures(I[II)V

    return v4

    :cond_2
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V

    goto :goto_0
.end method
