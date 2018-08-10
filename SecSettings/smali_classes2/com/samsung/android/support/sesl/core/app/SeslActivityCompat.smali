.class public Lcom/samsung/android/support/sesl/core/app/SeslActivityCompat;
.super Lcom/samsung/android/support/sesl/core/content/SeslContextCompat;
.source "SeslActivityCompat.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/support/sesl/core/app/SeslActivityCompat$SharedElementCallback21Impl;,
        Lcom/samsung/android/support/sesl/core/app/SeslActivityCompat$SharedElementCallback23Impl;
    }
.end annotation


# direct methods
.method protected constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/support/sesl/core/content/SeslContextCompat;-><init>()V

    return-void
.end method

.method public static setExitSharedElementCallback(Landroid/app/Activity;Landroid/app/SharedElementCallback;)V
    .locals 3

    const/4 v0, 0x0

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x17

    if-ge v1, v2, :cond_0

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    if-ge v1, v2, :cond_2

    :goto_0
    return-void

    :cond_0
    if-nez p1, :cond_1

    :goto_1
    invoke-virtual {p0, v0}, Landroid/app/Activity;->setExitSharedElementCallback(Landroid/app/SharedElementCallback;)V

    goto :goto_0

    :cond_1
    new-instance v0, Lcom/samsung/android/support/sesl/core/app/SeslActivityCompat$SharedElementCallback23Impl;

    invoke-direct {v0, p1}, Lcom/samsung/android/support/sesl/core/app/SeslActivityCompat$SharedElementCallback23Impl;-><init>(Landroid/app/SharedElementCallback;)V

    goto :goto_1

    :cond_2
    if-nez p1, :cond_3

    :goto_2
    invoke-virtual {p0, v0}, Landroid/app/Activity;->setExitSharedElementCallback(Landroid/app/SharedElementCallback;)V

    goto :goto_0

    :cond_3
    new-instance v0, Lcom/samsung/android/support/sesl/core/app/SeslActivityCompat$SharedElementCallback21Impl;

    invoke-direct {v0, p1}, Lcom/samsung/android/support/sesl/core/app/SeslActivityCompat$SharedElementCallback21Impl;-><init>(Landroid/app/SharedElementCallback;)V

    goto :goto_2
.end method
