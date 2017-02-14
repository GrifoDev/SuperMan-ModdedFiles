.class public Lcom/android/launcher2/utils/common/FontSizeUtils;
.super Ljava/lang/Object;
.source "FontSizeUtils.java"


# static fields
.field public static final LARGE_TEXT_SCALE:F = 1.2f


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static setSystemFontSize(Landroid/widget/TextView;I)V
    .locals 5

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    iget v0, v3, Landroid/content/res/Configuration;->fontScale:F

    const v3, 0x3f99999a    # 1.2f

    invoke-static {v0, v3}, Ljava/lang/Math;->min(FF)F

    move-result v2

    invoke-virtual {p0}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    int-to-float v1, v3

    const/4 v3, 0x0

    mul-float v4, v1, v2

    invoke-virtual {p0, v3, v4}, Landroid/widget/TextView;->setTextSize(IF)V

    :cond_0
    return-void
.end method
