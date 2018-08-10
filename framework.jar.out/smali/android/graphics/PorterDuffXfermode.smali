.class public Landroid/graphics/PorterDuffXfermode;
.super Landroid/graphics/Xfermode;
.source "PorterDuffXfermode.java"


# direct methods
.method public constructor <init>(Landroid/graphics/PorterDuff$Mode;)V
    .locals 1

    invoke-direct {p0}, Landroid/graphics/Xfermode;-><init>()V

    iget v0, p1, Landroid/graphics/PorterDuff$Mode;->nativeInt:I

    iput v0, p0, Landroid/graphics/PorterDuffXfermode;->porterDuffMode:I

    return-void
.end method
