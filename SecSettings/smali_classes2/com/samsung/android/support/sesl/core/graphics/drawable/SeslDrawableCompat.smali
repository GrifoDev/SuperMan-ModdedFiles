.class public final Lcom/samsung/android/support/sesl/core/graphics/drawable/SeslDrawableCompat;
.super Ljava/lang/Object;
.source "SeslDrawableCompat.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/support/sesl/core/graphics/drawable/SeslDrawableCompat$DrawableCompatApi23Impl;,
        Lcom/samsung/android/support/sesl/core/graphics/drawable/SeslDrawableCompat$DrawableCompatBaseImpl;
    }
.end annotation


# static fields
.field static final IMPL:Lcom/samsung/android/support/sesl/core/graphics/drawable/SeslDrawableCompat$DrawableCompatBaseImpl;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-ge v0, v1, :cond_0

    new-instance v0, Lcom/samsung/android/support/sesl/core/graphics/drawable/SeslDrawableCompat$DrawableCompatBaseImpl;

    invoke-direct {v0}, Lcom/samsung/android/support/sesl/core/graphics/drawable/SeslDrawableCompat$DrawableCompatBaseImpl;-><init>()V

    sput-object v0, Lcom/samsung/android/support/sesl/core/graphics/drawable/SeslDrawableCompat;->IMPL:Lcom/samsung/android/support/sesl/core/graphics/drawable/SeslDrawableCompat$DrawableCompatBaseImpl;

    :goto_0
    return-void

    :cond_0
    new-instance v0, Lcom/samsung/android/support/sesl/core/graphics/drawable/SeslDrawableCompat$DrawableCompatApi23Impl;

    invoke-direct {v0}, Lcom/samsung/android/support/sesl/core/graphics/drawable/SeslDrawableCompat$DrawableCompatApi23Impl;-><init>()V

    sput-object v0, Lcom/samsung/android/support/sesl/core/graphics/drawable/SeslDrawableCompat;->IMPL:Lcom/samsung/android/support/sesl/core/graphics/drawable/SeslDrawableCompat$DrawableCompatBaseImpl;

    goto :goto_0
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static setLayoutDirection(Landroid/graphics/drawable/Drawable;I)Z
    .locals 1
    .param p0    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    sget-object v0, Lcom/samsung/android/support/sesl/core/graphics/drawable/SeslDrawableCompat;->IMPL:Lcom/samsung/android/support/sesl/core/graphics/drawable/SeslDrawableCompat$DrawableCompatBaseImpl;

    invoke-virtual {v0, p0, p1}, Lcom/samsung/android/support/sesl/core/graphics/drawable/SeslDrawableCompat$DrawableCompatBaseImpl;->setLayoutDirection(Landroid/graphics/drawable/Drawable;I)Z

    move-result v0

    return v0
.end method
