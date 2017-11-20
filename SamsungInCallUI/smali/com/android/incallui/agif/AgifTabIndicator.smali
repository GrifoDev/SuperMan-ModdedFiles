.class public Lcom/android/incallui/agif/AgifTabIndicator;
.super Landroid/widget/LinearLayout;

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/incallui/agif/AgifTabIndicator$AgifTabImageView;
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "AgifTabIndicator"


# instance fields
.field mAgifPackageInfo:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/incallui/agif/AgifLoader$AgifPackageInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mAgifViewPager:Lcom/android/incallui/agif/AgifViewPager;

.field private mContext:Landroid/content/Context;

.field private mHasRecommendPage:Z

.field private tabIndicator:[Lcom/android/incallui/agif/AgifTabIndicator$AgifTabImageView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/incallui/agif/AgifTabIndicator;->mAgifViewPager:Lcom/android/incallui/agif/AgifViewPager;

    iput-object p1, p0, Lcom/android/incallui/agif/AgifTabIndicator;->mContext:Landroid/content/Context;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/incallui/agif/AgifTabIndicator;->mAgifViewPager:Lcom/android/incallui/agif/AgifViewPager;

    iput-object p1, p0, Lcom/android/incallui/agif/AgifTabIndicator;->mContext:Landroid/content/Context;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/incallui/agif/AgifTabIndicator;->mAgifViewPager:Lcom/android/incallui/agif/AgifViewPager;

    iput-object p1, p0, Lcom/android/incallui/agif/AgifTabIndicator;->mContext:Landroid/content/Context;

    return-void
.end method

.method static synthetic access$000(Lcom/android/incallui/agif/AgifTabIndicator;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/agif/AgifTabIndicator;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private removeAgifResources()V
    .locals 4

    const/4 v1, 0x0

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/android/incallui/agif/AgifTabIndicator;->tabIndicator:[Lcom/android/incallui/agif/AgifTabIndicator$AgifTabImageView;

    if-eqz v0, :cond_2

    move v0, v1

    :goto_0
    iget-object v2, p0, Lcom/android/incallui/agif/AgifTabIndicator;->tabIndicator:[Lcom/android/incallui/agif/AgifTabIndicator$AgifTabImageView;

    array-length v2, v2

    if-ge v0, v2, :cond_1

    iget-object v2, p0, Lcom/android/incallui/agif/AgifTabIndicator;->tabIndicator:[Lcom/android/incallui/agif/AgifTabIndicator$AgifTabImageView;

    aget-object v2, v2, v0

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/incallui/agif/AgifTabIndicator;->tabIndicator:[Lcom/android/incallui/agif/AgifTabIndicator$AgifTabImageView;

    aget-object v2, v2, v0

    invoke-virtual {v2, v3}, Lcom/android/incallui/agif/AgifTabIndicator$AgifTabImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    iget-object v2, p0, Lcom/android/incallui/agif/AgifTabIndicator;->tabIndicator:[Lcom/android/incallui/agif/AgifTabIndicator$AgifTabImageView;

    aget-object v2, v2, v0

    invoke-virtual {v2, v1}, Lcom/android/incallui/agif/AgifTabIndicator$AgifTabImageView;->setImageResource(I)V

    iget-object v2, p0, Lcom/android/incallui/agif/AgifTabIndicator;->tabIndicator:[Lcom/android/incallui/agif/AgifTabIndicator$AgifTabImageView;

    aget-object v2, v2, v0

    invoke-virtual {v2, v3}, Lcom/android/incallui/agif/AgifTabIndicator$AgifTabImageView;->setForeground(Landroid/graphics/drawable/Drawable;)V

    iget-object v2, p0, Lcom/android/incallui/agif/AgifTabIndicator;->tabIndicator:[Lcom/android/incallui/agif/AgifTabIndicator$AgifTabImageView;

    aget-object v2, v2, v0

    invoke-virtual {v2, v3}, Lcom/android/incallui/agif/AgifTabIndicator$AgifTabImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    iput-object v3, p0, Lcom/android/incallui/agif/AgifTabIndicator;->tabIndicator:[Lcom/android/incallui/agif/AgifTabIndicator$AgifTabImageView;

    :cond_2
    iget-object v0, p0, Lcom/android/incallui/agif/AgifTabIndicator;->mAgifPackageInfo:Ljava/util/ArrayList;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/incallui/agif/AgifTabIndicator;->mAgifPackageInfo:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iput-object v3, p0, Lcom/android/incallui/agif/AgifTabIndicator;->mAgifPackageInfo:Ljava/util/ArrayList;

    :cond_3
    iget-object v0, p0, Lcom/android/incallui/agif/AgifTabIndicator;->mAgifViewPager:Lcom/android/incallui/agif/AgifViewPager;

    if-eqz v0, :cond_4

    iput-object v3, p0, Lcom/android/incallui/agif/AgifTabIndicator;->mAgifViewPager:Lcom/android/incallui/agif/AgifViewPager;

    :cond_4
    return-void
.end method


# virtual methods
.method public createAgifTabIndicator(ILjava/lang/String;ZLcom/android/incallui/agif/AgifViewPager;)V
    .locals 11

    const/4 v1, 0x1

    const/4 v2, 0x0

    const-string v0, "AgifTabIndicator"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "createAgifTabIndicator = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/incallui/agif/AgifTabIndicator;->removeAllViewsInLayout()V

    iput-boolean p3, p0, Lcom/android/incallui/agif/AgifTabIndicator;->mHasRecommendPage:Z

    iput-object p4, p0, Lcom/android/incallui/agif/AgifTabIndicator;->mAgifViewPager:Lcom/android/incallui/agif/AgifViewPager;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/incallui/agif/AgifTabIndicator;->mAgifPackageInfo:Ljava/util/ArrayList;

    invoke-static {}, Lcom/android/incallui/agif/AgifLoader;->getInstance()Lcom/android/incallui/agif/AgifLoader;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/android/incallui/agif/AgifLoader;->getAgifPackageInfo(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/incallui/agif/AgifLoader;->getInstance()Lcom/android/incallui/agif/AgifLoader;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/android/incallui/agif/AgifLoader;->getAgifPackageInfo(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    iput-object v0, p0, Lcom/android/incallui/agif/AgifTabIndicator;->mAgifPackageInfo:Ljava/util/ArrayList;

    const-string v0, "AgifTabIndicator"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "createAgifTabIndicator package info size = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/incallui/agif/AgifTabIndicator;->mAgifPackageInfo:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/android/incallui/agif/AgifTabIndicator;->mAgifPackageInfo:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/incallui/agif/AgifTabIndicator;->mAgifPackageInfo:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-gtz v0, :cond_2

    :cond_1
    const-string v0, "AgifTabIndicator"

    const-string v1, "The package info is null."

    invoke-static {v0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_2
    new-array v0, p1, [Lcom/android/incallui/agif/AgifTabIndicator$AgifTabImageView;

    iput-object v0, p0, Lcom/android/incallui/agif/AgifTabIndicator;->tabIndicator:[Lcom/android/incallui/agif/AgifTabIndicator$AgifTabImageView;

    iget-object v0, p0, Lcom/android/incallui/agif/AgifTabIndicator;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v3, 0x7f0a03c2

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v4, v0

    iget-object v0, p0, Lcom/android/incallui/agif/AgifTabIndicator;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v3, 0x7f0a03bc

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v5, v0

    iget-object v0, p0, Lcom/android/incallui/agif/AgifTabIndicator;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v3, 0x7f0a03bf

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v6, v0

    iget-object v0, p0, Lcom/android/incallui/agif/AgifTabIndicator;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v3, 0x7f0a03c0

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v7, v0

    iget-object v0, p0, Lcom/android/incallui/agif/AgifTabIndicator;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v3, 0x7f0a03be

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v8, v0

    move v3, v2

    :goto_1
    if-ge v3, p1, :cond_5

    iget-object v0, p0, Lcom/android/incallui/agif/AgifTabIndicator;->tabIndicator:[Lcom/android/incallui/agif/AgifTabIndicator$AgifTabImageView;

    new-instance v9, Lcom/android/incallui/agif/AgifTabIndicator$AgifTabImageView;

    iget-object v10, p0, Lcom/android/incallui/agif/AgifTabIndicator;->mContext:Landroid/content/Context;

    invoke-direct {v9, p0, v10}, Lcom/android/incallui/agif/AgifTabIndicator$AgifTabImageView;-><init>(Lcom/android/incallui/agif/AgifTabIndicator;Landroid/content/Context;)V

    aput-object v9, v0, v3

    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v4, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const v9, 0x800003

    iput v9, v0, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    iget-object v9, p0, Lcom/android/incallui/agif/AgifTabIndicator;->tabIndicator:[Lcom/android/incallui/agif/AgifTabIndicator$AgifTabImageView;

    aget-object v9, v9, v3

    invoke-virtual {v9, v1}, Lcom/android/incallui/agif/AgifTabIndicator$AgifTabImageView;->setFocusable(Z)V

    iget-object v9, p0, Lcom/android/incallui/agif/AgifTabIndicator;->tabIndicator:[Lcom/android/incallui/agif/AgifTabIndicator$AgifTabImageView;

    aget-object v9, v9, v3

    invoke-virtual {v9, v0}, Lcom/android/incallui/agif/AgifTabIndicator$AgifTabImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/android/incallui/agif/AgifTabIndicator;->tabIndicator:[Lcom/android/incallui/agif/AgifTabIndicator$AgifTabImageView;

    aget-object v0, v0, v3

    invoke-virtual {v0, v6, v7, v6, v8}, Lcom/android/incallui/agif/AgifTabIndicator$AgifTabImageView;->setPadding(IIII)V

    iget-object v0, p0, Lcom/android/incallui/agif/AgifTabIndicator;->tabIndicator:[Lcom/android/incallui/agif/AgifTabIndicator$AgifTabImageView;

    aget-object v0, v0, v3

    iget-object v9, p0, Lcom/android/incallui/agif/AgifTabIndicator;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f020059

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v9

    invoke-virtual {v0, v9}, Lcom/android/incallui/agif/AgifTabIndicator$AgifTabImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    iget-boolean v0, p0, Lcom/android/incallui/agif/AgifTabIndicator;->mHasRecommendPage:Z

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/incallui/agif/AgifTabIndicator;->tabIndicator:[Lcom/android/incallui/agif/AgifTabIndicator$AgifTabImageView;

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    if-ne v3, v0, :cond_4

    iget-object v0, p0, Lcom/android/incallui/agif/AgifTabIndicator;->tabIndicator:[Lcom/android/incallui/agif/AgifTabIndicator$AgifTabImageView;

    aget-object v0, v0, v3

    const v9, 0x7f020056

    invoke-virtual {v0, v9}, Lcom/android/incallui/agif/AgifTabIndicator$AgifTabImageView;->setImageResource(I)V

    iget-object v0, p0, Lcom/android/incallui/agif/AgifTabIndicator;->tabIndicator:[Lcom/android/incallui/agif/AgifTabIndicator$AgifTabImageView;

    aget-object v0, v0, v3

    invoke-virtual {p0}, Lcom/android/incallui/agif/AgifTabIndicator;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f0900b4

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v9}, Lcom/android/incallui/agif/AgifTabIndicator$AgifTabImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    :cond_3
    :goto_2
    iget-object v0, p0, Lcom/android/incallui/agif/AgifTabIndicator;->tabIndicator:[Lcom/android/incallui/agif/AgifTabIndicator$AgifTabImageView;

    aget-object v0, v0, v3

    const v9, 0x7f100013

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v0, v9, v10}, Lcom/android/incallui/agif/AgifTabIndicator$AgifTabImageView;->setTag(ILjava/lang/Object;)V

    iget-object v0, p0, Lcom/android/incallui/agif/AgifTabIndicator;->tabIndicator:[Lcom/android/incallui/agif/AgifTabIndicator$AgifTabImageView;

    aget-object v0, v0, v3

    invoke-virtual {v0, p0}, Lcom/android/incallui/agif/AgifTabIndicator$AgifTabImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/android/incallui/agif/AgifTabIndicator;->tabIndicator:[Lcom/android/incallui/agif/AgifTabIndicator$AgifTabImageView;

    aget-object v0, v0, v3

    invoke-virtual {p0, v0}, Lcom/android/incallui/agif/AgifTabIndicator;->addView(Landroid/view/View;)V

    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto/16 :goto_1

    :cond_4
    iget-object v0, p0, Lcom/android/incallui/agif/AgifTabIndicator;->mAgifPackageInfo:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-le v0, v3, :cond_3

    iget-object v0, p0, Lcom/android/incallui/agif/AgifTabIndicator;->tabIndicator:[Lcom/android/incallui/agif/AgifTabIndicator$AgifTabImageView;

    aget-object v9, v0, v3

    iget-object v0, p0, Lcom/android/incallui/agif/AgifTabIndicator;->mAgifPackageInfo:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/agif/AgifLoader$AgifPackageInfo;

    iget-object v0, v0, Lcom/android/incallui/agif/AgifLoader$AgifPackageInfo;->contentName:Ljava/lang/String;

    invoke-virtual {v9, v0}, Lcom/android/incallui/agif/AgifTabIndicator$AgifTabImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_2

    :cond_5
    invoke-virtual {p0, v2}, Lcom/android/incallui/agif/AgifTabIndicator;->updateAgifTabIndicator(I)V

    iget-boolean v0, p0, Lcom/android/incallui/agif/AgifTabIndicator;->mHasRecommendPage:Z

    if-eqz v0, :cond_6

    invoke-static {}, Lcom/android/incallui/agif/AgifLoader;->getInstance()Lcom/android/incallui/agif/AgifLoader;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/android/incallui/agif/AgifLoader;->isNewRecommendedContents(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    move v0, v1

    :goto_3
    invoke-virtual {p0, v0}, Lcom/android/incallui/agif/AgifTabIndicator;->updateNewBadge(Z)V

    goto/16 :goto_0

    :cond_6
    move v0, v2

    goto :goto_3
.end method

.method public onClick(Landroid/view/View;)V
    .locals 4

    const v1, 0x7f100013

    if-eqz p1, :cond_0

    invoke-virtual {p1, v1}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p1, v1}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const-string v0, "AgifTabIndicator"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onClick = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-lez v1, :cond_3

    iget-boolean v0, p0, Lcom/android/incallui/agif/AgifTabIndicator;->mHasRecommendPage:Z

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/incallui/agif/AgifTabIndicator;->tabIndicator:[Lcom/android/incallui/agif/AgifTabIndicator$AgifTabImageView;

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    if-ne v1, v0, :cond_4

    invoke-static {}, Lcom/android/incallui/util/VoiceCallAppLogging;->agifScreen_addAgif()V

    :cond_2
    :goto_1
    invoke-virtual {p0, v1}, Lcom/android/incallui/agif/AgifTabIndicator;->updateAgifTabIndicator(I)V

    :cond_3
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/CallList;->hasIncomingCall()Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/incallui/agif/AgifTabIndicator;->mAgifViewPager:Lcom/android/incallui/agif/AgifViewPager;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/android/incallui/agif/AgifViewPager;->setCurrentItem(IZ)V

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lcom/android/incallui/agif/AgifTabIndicator;->mAgifPackageInfo:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/incallui/agif/AgifTabIndicator;->mAgifPackageInfo:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/agif/AgifLoader$AgifPackageInfo;

    iget-object v0, v0, Lcom/android/incallui/agif/AgifLoader$AgifPackageInfo;->contentName:Ljava/lang/String;

    invoke-static {v0}, Lcom/android/incallui/util/VoiceCallAppLogging;->agifScreen_selectAgifSet(Ljava/lang/String;)V

    goto :goto_1

    :cond_5
    invoke-static {}, Lcom/android/incallui/UiAdapter;->getInstance()Lcom/android/incallui/UiAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/UiAdapter;->getAgifUi()Lcom/android/incallui/AgifPresenter$AgifUi;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/incallui/UiAdapter;->getInstance()Lcom/android/incallui/UiAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/UiAdapter;->getAgifUi()Lcom/android/incallui/AgifPresenter$AgifUi;

    move-result-object v0

    invoke-interface {v0, v1}, Lcom/android/incallui/AgifPresenter$AgifUi;->selectAgifPage(I)V

    goto :goto_0
.end method

.method protected onDetachedFromWindow()V
    .locals 0

    invoke-super {p0}, Landroid/widget/LinearLayout;->onDetachedFromWindow()V

    invoke-direct {p0}, Lcom/android/incallui/agif/AgifTabIndicator;->removeAgifResources()V

    return-void
.end method

.method public removeAllViewsInLayout()V
    .locals 0

    invoke-super {p0}, Landroid/widget/LinearLayout;->removeAllViewsInLayout()V

    invoke-direct {p0}, Lcom/android/incallui/agif/AgifTabIndicator;->removeAgifResources()V

    return-void
.end method

.method public updateAgifTabIndicator(I)V
    .locals 4

    const/4 v2, 0x0

    const-string v0, "AgifTabIndicator"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateAgifTabIndicator = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/incallui/agif/AgifTabIndicator;->tabIndicator:[Lcom/android/incallui/agif/AgifTabIndicator$AgifTabImageView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/agif/AgifTabIndicator;->tabIndicator:[Lcom/android/incallui/agif/AgifTabIndicator$AgifTabImageView;

    array-length v0, v0

    if-gtz v0, :cond_1

    :cond_0
    return-void

    :cond_1
    move v1, v2

    :goto_0
    iget-object v0, p0, Lcom/android/incallui/agif/AgifTabIndicator;->tabIndicator:[Lcom/android/incallui/agif/AgifTabIndicator$AgifTabImageView;

    array-length v0, v0

    if-ge v1, v0, :cond_0

    if-ne v1, p1, :cond_4

    iget-object v0, p0, Lcom/android/incallui/agif/AgifTabIndicator;->tabIndicator:[Lcom/android/incallui/agif/AgifTabIndicator$AgifTabImageView;

    aget-object v0, v0, v1

    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Lcom/android/incallui/agif/AgifTabIndicator$AgifTabImageView;->setSelected(Z)V

    iget-boolean v0, p0, Lcom/android/incallui/agif/AgifTabIndicator;->mHasRecommendPage:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/incallui/agif/AgifTabIndicator;->tabIndicator:[Lcom/android/incallui/agif/AgifTabIndicator$AgifTabImageView;

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    if-eq v1, v0, :cond_3

    :cond_2
    iget-object v0, p0, Lcom/android/incallui/agif/AgifTabIndicator;->mAgifPackageInfo:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-le v0, v1, :cond_3

    iget-object v0, p0, Lcom/android/incallui/agif/AgifTabIndicator;->tabIndicator:[Lcom/android/incallui/agif/AgifTabIndicator$AgifTabImageView;

    aget-object v3, v0, v1

    iget-object v0, p0, Lcom/android/incallui/agif/AgifTabIndicator;->mAgifPackageInfo:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/agif/AgifLoader$AgifPackageInfo;

    iget-object v0, v0, Lcom/android/incallui/agif/AgifLoader$AgifPackageInfo;->trayIconOn:Landroid/graphics/Bitmap;

    invoke-virtual {v3, v0}, Lcom/android/incallui/agif/AgifTabIndicator$AgifTabImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    :cond_3
    :goto_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lcom/android/incallui/agif/AgifTabIndicator;->tabIndicator:[Lcom/android/incallui/agif/AgifTabIndicator$AgifTabImageView;

    aget-object v0, v0, v1

    invoke-virtual {v0, v2}, Lcom/android/incallui/agif/AgifTabIndicator$AgifTabImageView;->setSelected(Z)V

    iget-boolean v0, p0, Lcom/android/incallui/agif/AgifTabIndicator;->mHasRecommendPage:Z

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/incallui/agif/AgifTabIndicator;->tabIndicator:[Lcom/android/incallui/agif/AgifTabIndicator$AgifTabImageView;

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    if-eq v1, v0, :cond_3

    :cond_5
    iget-object v0, p0, Lcom/android/incallui/agif/AgifTabIndicator;->mAgifPackageInfo:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-le v0, v1, :cond_3

    iget-object v0, p0, Lcom/android/incallui/agif/AgifTabIndicator;->tabIndicator:[Lcom/android/incallui/agif/AgifTabIndicator$AgifTabImageView;

    aget-object v3, v0, v1

    iget-object v0, p0, Lcom/android/incallui/agif/AgifTabIndicator;->mAgifPackageInfo:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/agif/AgifLoader$AgifPackageInfo;

    iget-object v0, v0, Lcom/android/incallui/agif/AgifLoader$AgifPackageInfo;->trayIconOff:Landroid/graphics/Bitmap;

    invoke-virtual {v3, v0}, Lcom/android/incallui/agif/AgifTabIndicator$AgifTabImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_1
.end method

.method public updateNewBadge(Z)V
    .locals 4

    iget-object v0, p0, Lcom/android/incallui/agif/AgifTabIndicator;->tabIndicator:[Lcom/android/incallui/agif/AgifTabIndicator$AgifTabImageView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/agif/AgifTabIndicator;->tabIndicator:[Lcom/android/incallui/agif/AgifTabIndicator$AgifTabImageView;

    array-length v0, v0

    if-gtz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    new-instance v0, Lcom/android/incallui/agif/AgifNewBadgeDrawable;

    iget-object v1, p0, Lcom/android/incallui/agif/AgifTabIndicator;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/incallui/agif/AgifNewBadgeDrawable;-><init>(Landroid/content/Context;)V

    const-string v1, "AgifTabIndicator"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateNewBadge = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", badgeDrawable = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/incallui/agif/AgifTabIndicator;->tabIndicator:[Lcom/android/incallui/agif/AgifTabIndicator$AgifTabImageView;

    iget-object v2, p0, Lcom/android/incallui/agif/AgifTabIndicator;->tabIndicator:[Lcom/android/incallui/agif/AgifTabIndicator$AgifTabImageView;

    array-length v2, v2

    add-int/lit8 v2, v2, -0x1

    aget-object v1, v1, v2

    if-eqz p1, :cond_2

    :goto_1
    invoke-virtual {v1, v0}, Lcom/android/incallui/agif/AgifTabIndicator$AgifTabImageView;->setForeground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method
