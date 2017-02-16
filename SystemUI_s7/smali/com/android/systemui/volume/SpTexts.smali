.class public Lcom/android/systemui/volume/SpTexts;
.super Ljava/lang/Object;
.source "SpTexts.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/volume/SpTexts$1;
    }
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mTexts:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap",
            "<",
            "Landroid/widget/TextView;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mUpdateAll:Ljava/lang/Runnable;


# direct methods
.method static synthetic -get0(Lcom/android/systemui/volume/SpTexts;)Landroid/util/ArrayMap;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/volume/SpTexts;->mTexts:Landroid/util/ArrayMap;

    return-object v0
.end method

.method static synthetic -wrap0(Lcom/android/systemui/volume/SpTexts;Landroid/widget/TextView;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/systemui/volume/SpTexts;->setTextSizeH(Landroid/widget/TextView;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/volume/SpTexts;->mTexts:Landroid/util/ArrayMap;

    new-instance v0, Lcom/android/systemui/volume/SpTexts$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/volume/SpTexts$1;-><init>(Lcom/android/systemui/volume/SpTexts;)V

    iput-object v0, p0, Lcom/android/systemui/volume/SpTexts;->mUpdateAll:Ljava/lang/Runnable;

    iput-object p1, p0, Lcom/android/systemui/volume/SpTexts;->mContext:Landroid/content/Context;

    return-void
.end method

.method private setTextSizeH(Landroid/widget/TextView;I)V
    .locals 2

    int-to-float v0, p2

    const/4 v1, 0x2

    invoke-virtual {p1, v1, v0}, Landroid/widget/TextView;->setTextSize(IF)V

    return-void
.end method


# virtual methods
.method public add(Landroid/widget/TextView;)I
    .locals 7

    if-nez p1, :cond_0

    const/4 v5, 0x0

    return v5

    :cond_0
    iget-object v5, p0, Lcom/android/systemui/volume/SpTexts;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v5

    iget v1, v5, Landroid/content/res/Configuration;->fontScale:F

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v5

    iget v0, v5, Landroid/util/DisplayMetrics;->density:F

    invoke-virtual {p1}, Landroid/widget/TextView;->getTextSize()F

    move-result v2

    div-float v5, v2, v1

    div-float/2addr v5, v0

    float-to-int v4, v5

    iget-object v5, p0, Lcom/android/systemui/volume/SpTexts;->mTexts:Landroid/util/ArrayMap;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, p1, v6}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v5, Lcom/android/systemui/volume/SpTexts$2;

    invoke-direct {v5, p0, p1, v4}, Lcom/android/systemui/volume/SpTexts$2;-><init>(Lcom/android/systemui/volume/SpTexts;Landroid/widget/TextView;I)V

    invoke-virtual {p1, v5}, Landroid/widget/TextView;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    return v4
.end method

.method public update()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/volume/SpTexts;->mTexts:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/volume/SpTexts;->mTexts:Landroid/util/ArrayMap;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/systemui/volume/SpTexts;->mUpdateAll:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
