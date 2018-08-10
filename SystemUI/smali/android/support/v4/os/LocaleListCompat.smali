.class public final Landroid/support/v4/os/LocaleListCompat;
.super Ljava/lang/Object;
.source "LocaleListCompat.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v4/os/LocaleListCompat$LocaleListCompatApi24Impl;,
        Landroid/support/v4/os/LocaleListCompat$LocaleListCompatBaseImpl;
    }
.end annotation


# static fields
.field static final IMPL:Landroid/support/v4/os/LocaleListInterface;

.field private static final sEmptyLocaleList:Landroid/support/v4/os/LocaleListCompat;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroid/support/v4/os/LocaleListCompat;

    invoke-direct {v0}, Landroid/support/v4/os/LocaleListCompat;-><init>()V

    sput-object v0, Landroid/support/v4/os/LocaleListCompat;->sEmptyLocaleList:Landroid/support/v4/os/LocaleListCompat;

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-lt v0, v1, :cond_0

    new-instance v0, Landroid/support/v4/os/LocaleListCompat$LocaleListCompatApi24Impl;

    invoke-direct {v0}, Landroid/support/v4/os/LocaleListCompat$LocaleListCompatApi24Impl;-><init>()V

    sput-object v0, Landroid/support/v4/os/LocaleListCompat;->IMPL:Landroid/support/v4/os/LocaleListInterface;

    :goto_0
    return-void

    :cond_0
    new-instance v0, Landroid/support/v4/os/LocaleListCompat$LocaleListCompatBaseImpl;

    invoke-direct {v0}, Landroid/support/v4/os/LocaleListCompat$LocaleListCompatBaseImpl;-><init>()V

    sput-object v0, Landroid/support/v4/os/LocaleListCompat;->IMPL:Landroid/support/v4/os/LocaleListInterface;

    goto :goto_0
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 1

    sget-object v0, Landroid/support/v4/os/LocaleListCompat;->IMPL:Landroid/support/v4/os/LocaleListInterface;

    invoke-interface {v0, p1}, Landroid/support/v4/os/LocaleListInterface;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public hashCode()I
    .locals 1

    sget-object v0, Landroid/support/v4/os/LocaleListCompat;->IMPL:Landroid/support/v4/os/LocaleListInterface;

    invoke-interface {v0}, Landroid/support/v4/os/LocaleListInterface;->hashCode()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    sget-object v0, Landroid/support/v4/os/LocaleListCompat;->IMPL:Landroid/support/v4/os/LocaleListInterface;

    invoke-interface {v0}, Landroid/support/v4/os/LocaleListInterface;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public unwrap()Ljava/lang/Object;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    sget-object v0, Landroid/support/v4/os/LocaleListCompat;->IMPL:Landroid/support/v4/os/LocaleListInterface;

    invoke-interface {v0}, Landroid/support/v4/os/LocaleListInterface;->getLocaleList()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
