.class public Lcom/samsung/android/sdk/enhancedfeatures/internal/common/ui/ShapeOnButton;
.super Landroid/widget/Button;


# static fields
.field private static final SHOW_BUTTON_BACKGROUND:Ljava/lang/String; = "show_button_background"


# instance fields
.field private mArchivedBackground:Landroid/graphics/drawable/Drawable;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    invoke-direct {p0}, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/ui/ShapeOnButton;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/widget/Button;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    invoke-direct {p0}, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/ui/ShapeOnButton;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/Button;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    invoke-direct {p0}, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/ui/ShapeOnButton;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/Button;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    invoke-direct {p0}, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/ui/ShapeOnButton;->init()V

    return-void
.end method

.method private changeButtonBackground()V
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/ui/ShapeOnButton;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "show_button_background"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v0, :cond_0

    :goto_0
    if-eqz v0, :cond_1

    sget v0, Lcom/samsung/android/sdk/enhancedfeatures/R$drawable;->ef_btn_bg_show_button_background:I

    invoke-virtual {p0, v0}, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/ui/ShapeOnButton;->setBackgroundResource(I)V

    :goto_1
    return-void

    :cond_0
    move v0, v1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/ui/ShapeOnButton;->mArchivedBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v0}, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/ui/ShapeOnButton;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1
.end method

.method private init()V
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/ui/ShapeOnButton;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/ui/ShapeOnButton;->mArchivedBackground:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0}, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/ui/ShapeOnButton;->changeButtonBackground()V

    return-void
.end method


# virtual methods
.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/widget/Button;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    invoke-direct {p0}, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/ui/ShapeOnButton;->changeButtonBackground()V

    return-void
.end method
