.class public final Landroid/support/v4/widget/EdgeEffectCompat;
.super Ljava/lang/Object;
.source "EdgeEffectCompat.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v4/widget/EdgeEffectCompat$EdgeEffectApi21Impl;,
        Landroid/support/v4/widget/EdgeEffectCompat$EdgeEffectBaseImpl;
    }
.end annotation


# static fields
.field private static final IMPL:Landroid/support/v4/widget/EdgeEffectCompat$EdgeEffectBaseImpl;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    new-instance v0, Landroid/support/v4/widget/EdgeEffectCompat$EdgeEffectApi21Impl;

    invoke-direct {v0}, Landroid/support/v4/widget/EdgeEffectCompat$EdgeEffectApi21Impl;-><init>()V

    sput-object v0, Landroid/support/v4/widget/EdgeEffectCompat;->IMPL:Landroid/support/v4/widget/EdgeEffectCompat$EdgeEffectBaseImpl;

    :goto_0
    return-void

    :cond_0
    new-instance v0, Landroid/support/v4/widget/EdgeEffectCompat$EdgeEffectBaseImpl;

    invoke-direct {v0}, Landroid/support/v4/widget/EdgeEffectCompat$EdgeEffectBaseImpl;-><init>()V

    sput-object v0, Landroid/support/v4/widget/EdgeEffectCompat;->IMPL:Landroid/support/v4/widget/EdgeEffectCompat$EdgeEffectBaseImpl;

    goto :goto_0
.end method

.method public static onPull(Landroid/widget/EdgeEffect;FF)V
    .locals 1

    sget-object v0, Landroid/support/v4/widget/EdgeEffectCompat;->IMPL:Landroid/support/v4/widget/EdgeEffectCompat$EdgeEffectBaseImpl;

    invoke-virtual {v0, p0, p1, p2}, Landroid/support/v4/widget/EdgeEffectCompat$EdgeEffectBaseImpl;->onPull(Landroid/widget/EdgeEffect;FF)V

    return-void
.end method
