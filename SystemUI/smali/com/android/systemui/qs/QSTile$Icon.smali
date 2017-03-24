.class public abstract Lcom/android/systemui/qs/QSTile$Icon;
.super Ljava/lang/Object;
.source "QSTile.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/qs/QSTile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Icon"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract getDrawable(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;
.end method

.method public getInvisibleDrawable(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/QSTile$Icon;->getDrawable(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public getPadding()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public hashCode()I
    .locals 1

    const-class v0, Lcom/android/systemui/qs/QSTile$Icon;

    invoke-virtual {v0}, Ljava/lang/Class;->hashCode()I

    move-result v0

    return v0
.end method

.method public setColor(Landroid/content/Context;Lcom/android/systemui/qs/QSTile$State;Landroid/graphics/drawable/Drawable;)Z
    .locals 9

    const v7, 0x7f0b00fa

    const v6, 0x7f0b00f9

    if-eqz p3, :cond_8

    instance-of v3, p2, Lcom/android/systemui/qs/QSTile$BooleanState;

    if-eqz v3, :cond_8

    sget-boolean v8, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mAllowQsColorChange:Z

    move-object v1, p2

    check-cast v1, Lcom/android/systemui/qs/QSTile$BooleanState;

    const/high16 v0, 0x3f800000    # 1.0f

    iget-boolean v3, v1, Lcom/android/systemui/qs/QSTile$BooleanState;->dim:Z

    if-eqz v3, :cond_2

    invoke-virtual {p1, v6}, Landroid/content/Context;->getColor(I)I

    move-result v3

    if-eqz v8, :cond_0

    sget v3, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mQsIconOnColor:I

    :cond_0
    ushr-int/lit8 v3, v3, 0x18

    int-to-float v3, v3

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0c007b

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getFloat(I)F

    move-result v4

    mul-float v0, v3, v4

    invoke-virtual {p1, v6}, Landroid/content/Context;->getColor(I)I

    move-result v2

    if-eqz v8, :cond_1

    sget v2, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mQsIconOnColor:I

    :cond_1
    :goto_0
    invoke-virtual {p3, v2}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    float-to-int v3, v0

    invoke-virtual {p3, v3}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    const/4 v3, 0x1

    return v3

    :cond_2
    iget-boolean v3, v1, Lcom/android/systemui/qs/QSTile$BooleanState;->value:Z

    if-eqz v3, :cond_5

    invoke-virtual {p1, v6}, Landroid/content/Context;->getColor(I)I

    move-result v3

    if-eqz v8, :cond_3

    sget v3, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mQsIconOnColor:I

    :cond_3
    ushr-int/lit8 v3, v3, 0x18

    int-to-float v3, v3

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0c007c

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getFloat(I)F

    move-result v4

    mul-float v0, v3, v4

    invoke-virtual {p1, v6}, Landroid/content/Context;->getColor(I)I

    move-result v2

    if-eqz v8, :cond_4

    sget v2, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mQsIconOnColor:I

    :cond_4
    goto :goto_0

    :cond_5
    invoke-virtual {p1, v7}, Landroid/content/Context;->getColor(I)I

    move-result v3

    if-eqz v8, :cond_6

    sget v3, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mQsIconOffColor:I

    :cond_6
    ushr-int/lit8 v3, v3, 0x18

    int-to-float v3, v3

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0c007d

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getFloat(I)F

    move-result v4

    mul-float v0, v3, v4

    invoke-virtual {p1, v7}, Landroid/content/Context;->getColor(I)I

    move-result v3

    if-eqz v8, :cond_7

    sget v3, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mQsIconOffColor:I

    :cond_7
    const/high16 v4, -0x1000000

    or-int v2, v3, v4

    goto :goto_0

    :cond_8
    const/4 v3, 0x0

    return v3
.end method
