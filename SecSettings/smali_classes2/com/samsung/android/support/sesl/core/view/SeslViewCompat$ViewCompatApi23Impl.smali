.class Lcom/samsung/android/support/sesl/core/view/SeslViewCompat$ViewCompatApi23Impl;
.super Lcom/samsung/android/support/sesl/core/view/SeslViewCompat$ViewCompatBaseImpl;
.source "SeslViewCompat.java"


# annotations
.annotation build Landroid/support/annotation/RequiresApi;
    value = 0x17
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/support/sesl/core/view/SeslViewCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ViewCompatApi23Impl"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/support/sesl/core/view/SeslViewCompat$ViewCompatBaseImpl;-><init>()V

    return-void
.end method


# virtual methods
.method public offsetLeftAndRight(Landroid/view/View;I)V
    .locals 0

    invoke-virtual {p1, p2}, Landroid/view/View;->offsetLeftAndRight(I)V

    return-void
.end method

.method public offsetTopAndBottom(Landroid/view/View;I)V
    .locals 0

    invoke-virtual {p1, p2}, Landroid/view/View;->offsetTopAndBottom(I)V

    return-void
.end method
