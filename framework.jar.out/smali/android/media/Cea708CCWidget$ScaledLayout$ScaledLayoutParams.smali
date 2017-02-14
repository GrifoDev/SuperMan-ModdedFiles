.class Landroid/media/Cea708CCWidget$ScaledLayout$ScaledLayoutParams;
.super Landroid/view/ViewGroup$LayoutParams;
.source "Cea708CaptionRenderer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/Cea708CCWidget$ScaledLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ScaledLayoutParams"
.end annotation


# static fields
.field public static final SCALE_UNSPECIFIED:F = -1.0f


# instance fields
.field public scaleEndCol:F

.field public scaleEndRow:F

.field public scaleStartCol:F

.field public scaleStartRow:F


# direct methods
.method public constructor <init>(FFFF)V
    .locals 1

    const/4 v0, -0x1

    invoke-direct {p0, v0, v0}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    iput p1, p0, Landroid/media/Cea708CCWidget$ScaledLayout$ScaledLayoutParams;->scaleStartRow:F

    iput p2, p0, Landroid/media/Cea708CCWidget$ScaledLayout$ScaledLayoutParams;->scaleEndRow:F

    iput p3, p0, Landroid/media/Cea708CCWidget$ScaledLayout$ScaledLayoutParams;->scaleStartCol:F

    iput p4, p0, Landroid/media/Cea708CCWidget$ScaledLayout$ScaledLayoutParams;->scaleEndCol:F

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, -0x1

    invoke-direct {p0, v0, v0}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    return-void
.end method
