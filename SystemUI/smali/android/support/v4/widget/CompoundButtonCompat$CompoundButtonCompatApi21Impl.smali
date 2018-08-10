.class Landroid/support/v4/widget/CompoundButtonCompat$CompoundButtonCompatApi21Impl;
.super Landroid/support/v4/widget/CompoundButtonCompat$CompoundButtonCompatBaseImpl;
.source "CompoundButtonCompat.java"


# annotations
.annotation build Landroid/support/annotation/RequiresApi;
    value = 0x15
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/widget/CompoundButtonCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "CompoundButtonCompatApi21Impl"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/support/v4/widget/CompoundButtonCompat$CompoundButtonCompatBaseImpl;-><init>()V

    return-void
.end method


# virtual methods
.method public setButtonTintList(Landroid/widget/CompoundButton;Landroid/content/res/ColorStateList;)V
    .locals 0

    invoke-virtual {p1, p2}, Landroid/widget/CompoundButton;->setButtonTintList(Landroid/content/res/ColorStateList;)V

    return-void
.end method

.method public setButtonTintMode(Landroid/widget/CompoundButton;Landroid/graphics/PorterDuff$Mode;)V
    .locals 0

    invoke-virtual {p1, p2}, Landroid/widget/CompoundButton;->setButtonTintMode(Landroid/graphics/PorterDuff$Mode;)V

    return-void
.end method
