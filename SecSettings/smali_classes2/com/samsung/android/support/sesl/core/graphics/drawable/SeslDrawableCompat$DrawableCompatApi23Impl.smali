.class Lcom/samsung/android/support/sesl/core/graphics/drawable/SeslDrawableCompat$DrawableCompatApi23Impl;
.super Lcom/samsung/android/support/sesl/core/graphics/drawable/SeslDrawableCompat$DrawableCompatBaseImpl;
.source "SeslDrawableCompat.java"


# annotations
.annotation build Landroid/support/annotation/RequiresApi;
    value = 0x17
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/support/sesl/core/graphics/drawable/SeslDrawableCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "DrawableCompatApi23Impl"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/support/sesl/core/graphics/drawable/SeslDrawableCompat$DrawableCompatBaseImpl;-><init>()V

    return-void
.end method


# virtual methods
.method public setLayoutDirection(Landroid/graphics/drawable/Drawable;I)Z
    .locals 1

    invoke-virtual {p1, p2}, Landroid/graphics/drawable/Drawable;->setLayoutDirection(I)Z

    move-result v0

    return v0
.end method
