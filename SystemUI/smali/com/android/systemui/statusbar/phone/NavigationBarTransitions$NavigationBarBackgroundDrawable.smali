.class Lcom/android/systemui/statusbar/phone/NavigationBarTransitions$NavigationBarBackgroundDrawable;
.super Lcom/android/systemui/statusbar/phone/BarTransitions$BarBackgroundDrawable;
.source "NavigationBarTransitions.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/phone/NavigationBarTransitions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "NavigationBarBackgroundDrawable"
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/phone/BarTransitions$BarBackgroundDrawable;-><init>(Landroid/content/Context;I)V

    const v0, 0x7f0600e4

    invoke-virtual {p1, v0}, Landroid/content/Context;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarTransitions$NavigationBarBackgroundDrawable;->mOpaque:I

    const v0, 0x7f0601e6

    invoke-virtual {p1, v0}, Landroid/content/Context;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarTransitions$NavigationBarBackgroundDrawable;->mBlackOpaque:I

    return-void
.end method


# virtual methods
.method public updateOpaqueColor(I)V
    .locals 0

    iput p1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarTransitions$NavigationBarBackgroundDrawable;->mOpaque:I

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarTransitions$NavigationBarBackgroundDrawable;->invalidateSelf()V

    return-void
.end method
