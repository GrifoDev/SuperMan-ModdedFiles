.class public abstract Landroid/media/Image$Plane;
.super Ljava/lang/Object;
.source "Image.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/Image;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Plane"
.end annotation


# direct methods
.method protected constructor <init>()V
    .locals 0

    .prologue
    .line 347
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract getBuffer()Ljava/nio/ByteBuffer;
.end method

.method public abstract getPixelStride()I
.end method

.method public abstract getRowStride()I
.end method
