.class public Lcom/sec/android/cover/widget/MaxLargeTextView;
.super Landroid/widget/TextView;
.source "MaxLargeTextView.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/sec/android/cover/widget/MaxLargeTextView;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/android/cover/widget/MaxLargeTextView;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    invoke-direct {p0, p1}, Lcom/sec/android/cover/widget/MaxLargeTextView;->setTextSizeInternal(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    invoke-direct {p0, p1}, Lcom/sec/android/cover/widget/MaxLargeTextView;->setTextSizeInternal(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    invoke-direct {p0, p1}, Lcom/sec/android/cover/widget/MaxLargeTextView;->setTextSizeInternal(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    invoke-direct {p0, p1}, Lcom/sec/android/cover/widget/MaxLargeTextView;->setTextSizeInternal(Landroid/content/Context;)V

    return-void
.end method

.method private setTextSizeInternal(Landroid/content/Context;)V
    .locals 5

    const/high16 v1, 0x3f800000    # 1.0f

    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "font_scale"

    invoke-static {v3, v4}, Landroid/provider/Settings$System;->getFloat(Landroid/content/ContentResolver;Ljava/lang/String;)F
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    const v3, 0x3f99999a    # 1.2f

    cmpl-float v3, v1, v3

    if-lez v3, :cond_0

    const v1, 0x3f99999a    # 1.2f

    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/cover/widget/MaxLargeTextView;->getTextSize()F

    move-result v3

    mul-float v2, v3, v1

    const/4 v3, 0x0

    invoke-virtual {p0, v3, v2}, Lcom/sec/android/cover/widget/MaxLargeTextView;->setTextSize(IF)V

    return-void

    :catch_0
    move-exception v0

    sget-object v3, Lcom/sec/android/cover/widget/MaxLargeTextView;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "font_scale settings not found"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
