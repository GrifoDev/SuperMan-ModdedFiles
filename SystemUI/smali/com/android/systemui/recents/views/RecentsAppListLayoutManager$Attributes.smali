.class public Lcom/android/systemui/recents/views/RecentsAppListLayoutManager$Attributes;
.super Ljava/lang/Object;
.source "RecentsAppListLayoutManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/recents/views/RecentsAppListLayoutManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Attributes"
.end annotation


# instance fields
.field public mHeaderHeight:I

.field public mItemIconDpi:I

.field public mItemIconWidth:I

.field public mItemTextDarkColor:I

.field public mItemTextShadowColor:I

.field public mItemTextShadowSize:F

.field public mItemTextShadowYDistance:F

.field public mItemTextWhiteColor:I

.field public mOffsetEdge:I

.field public mOffsetGap:I

.field public mOffsetTop:I

.field public mSpanCount:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0705b5

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getFloat(I)F

    move-result v0

    iput v0, p0, Lcom/android/systemui/recents/views/RecentsAppListLayoutManager$Attributes;->mItemTextShadowSize:F

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0705b6

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getFloat(I)F

    move-result v0

    iput v0, p0, Lcom/android/systemui/recents/views/RecentsAppListLayoutManager$Attributes;->mItemTextShadowYDistance:F

    const v0, 0x7f06019f

    invoke-virtual {p1, v0}, Landroid/content/Context;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/recents/views/RecentsAppListLayoutManager$Attributes;->mItemTextShadowColor:I

    const v0, 0x7f06019e

    invoke-virtual {p1, v0}, Landroid/content/Context;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/recents/views/RecentsAppListLayoutManager$Attributes;->mItemTextDarkColor:I

    const v0, 0x7f06019d

    invoke-virtual {p1, v0}, Landroid/content/Context;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/recents/views/RecentsAppListLayoutManager$Attributes;->mItemTextWhiteColor:I

    invoke-direct {p0, p1}, Lcom/android/systemui/recents/views/RecentsAppListLayoutManager$Attributes;->load(Landroid/content/Context;)V

    return-void
.end method

.method private getIconDensity(I)I
    .locals 6

    const/4 v4, 0x7

    new-array v1, v4, [I

    fill-array-data v1, :array_0

    const/16 v0, 0x280

    array-length v4, v1

    add-int/lit8 v3, v4, -0x1

    :goto_0
    if-ltz v3, :cond_1

    aget v4, v1, v3

    int-to-float v4, v4

    const/high16 v5, 0x42400000    # 48.0f

    mul-float/2addr v4, v5

    const/high16 v5, 0x43200000    # 160.0f

    div-float v2, v4, v5

    int-to-float v4, p1

    cmpl-float v4, v2, v4

    if-ltz v4, :cond_0

    aget v0, v1, v3

    :cond_0
    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    :cond_1
    return v0

    :array_0
    .array-data 4
        0x78
        0xa0
        0xd5
        0xf0
        0x140
        0x1e0
        0x280
    .end array-data
.end method

.method private load(Landroid/content/Context;)V
    .locals 2

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b006a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/recents/views/RecentsAppListLayoutManager$Attributes;->mSpanCount:I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070549

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/android/systemui/recents/views/RecentsAppListLayoutManager$Attributes;->mOffsetTop:I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070548

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/android/systemui/recents/views/RecentsAppListLayoutManager$Attributes;->mOffsetGap:I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070547

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/android/systemui/recents/views/RecentsAppListLayoutManager$Attributes;->mOffsetEdge:I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070540

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/android/systemui/recents/views/RecentsAppListLayoutManager$Attributes;->mHeaderHeight:I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070544

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/android/systemui/recents/views/RecentsAppListLayoutManager$Attributes;->mItemIconWidth:I

    iget v0, p0, Lcom/android/systemui/recents/views/RecentsAppListLayoutManager$Attributes;->mItemIconWidth:I

    invoke-direct {p0, v0}, Lcom/android/systemui/recents/views/RecentsAppListLayoutManager$Attributes;->getIconDensity(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/recents/views/RecentsAppListLayoutManager$Attributes;->mItemIconDpi:I

    return-void
.end method


# virtual methods
.method public reinitialize(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/recents/views/RecentsAppListLayoutManager$Attributes;->load(Landroid/content/Context;)V

    return-void
.end method
