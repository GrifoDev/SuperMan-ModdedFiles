.class public Landroid/support/v13/app/FragmentCompat;
.super Ljava/lang/Object;
.source "FragmentCompat.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v13/app/FragmentCompat$FragmentCompatApi15Impl;,
        Landroid/support/v13/app/FragmentCompat$FragmentCompatApi23Impl;,
        Landroid/support/v13/app/FragmentCompat$FragmentCompatApi24Impl;,
        Landroid/support/v13/app/FragmentCompat$FragmentCompatBaseImpl;,
        Landroid/support/v13/app/FragmentCompat$FragmentCompatImpl;
    }
.end annotation


# static fields
.field static final IMPL:Landroid/support/v13/app/FragmentCompat$FragmentCompatImpl;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-lt v0, v1, :cond_0

    new-instance v0, Landroid/support/v13/app/FragmentCompat$FragmentCompatApi24Impl;

    invoke-direct {v0}, Landroid/support/v13/app/FragmentCompat$FragmentCompatApi24Impl;-><init>()V

    sput-object v0, Landroid/support/v13/app/FragmentCompat;->IMPL:Landroid/support/v13/app/FragmentCompat$FragmentCompatImpl;

    :goto_0
    return-void

    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_1

    new-instance v0, Landroid/support/v13/app/FragmentCompat$FragmentCompatApi23Impl;

    invoke-direct {v0}, Landroid/support/v13/app/FragmentCompat$FragmentCompatApi23Impl;-><init>()V

    sput-object v0, Landroid/support/v13/app/FragmentCompat;->IMPL:Landroid/support/v13/app/FragmentCompat$FragmentCompatImpl;

    goto :goto_0

    :cond_1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xf

    if-lt v0, v1, :cond_2

    new-instance v0, Landroid/support/v13/app/FragmentCompat$FragmentCompatApi15Impl;

    invoke-direct {v0}, Landroid/support/v13/app/FragmentCompat$FragmentCompatApi15Impl;-><init>()V

    sput-object v0, Landroid/support/v13/app/FragmentCompat;->IMPL:Landroid/support/v13/app/FragmentCompat$FragmentCompatImpl;

    goto :goto_0

    :cond_2
    new-instance v0, Landroid/support/v13/app/FragmentCompat$FragmentCompatBaseImpl;

    invoke-direct {v0}, Landroid/support/v13/app/FragmentCompat$FragmentCompatBaseImpl;-><init>()V

    sput-object v0, Landroid/support/v13/app/FragmentCompat;->IMPL:Landroid/support/v13/app/FragmentCompat$FragmentCompatImpl;

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static setUserVisibleHint(Landroid/app/Fragment;Z)V
    .locals 1

    sget-object v0, Landroid/support/v13/app/FragmentCompat;->IMPL:Landroid/support/v13/app/FragmentCompat$FragmentCompatImpl;

    invoke-interface {v0, p0, p1}, Landroid/support/v13/app/FragmentCompat$FragmentCompatImpl;->setUserVisibleHint(Landroid/app/Fragment;Z)V

    return-void
.end method
