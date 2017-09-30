.class public Lcom/android/incallui/agif/AgifViewPager;
.super Landroid/support/v4/view/ViewPager;


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "AgifViewPager"


# instance fields
.field protected mAgifTabIndicator:Lcom/android/incallui/agif/AgifTabIndicator;

.field private mOnPageChangeListener:Landroid/support/v4/view/ViewPager$f;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Landroid/support/v4/view/ViewPager;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance v0, Lcom/android/incallui/agif/AgifViewPager$1;

    invoke-direct {v0, p0}, Lcom/android/incallui/agif/AgifViewPager$1;-><init>(Lcom/android/incallui/agif/AgifViewPager;)V

    iput-object v0, p0, Lcom/android/incallui/agif/AgifViewPager;->mOnPageChangeListener:Landroid/support/v4/view/ViewPager$f;

    iget-object v0, p0, Lcom/android/incallui/agif/AgifViewPager;->mOnPageChangeListener:Landroid/support/v4/view/ViewPager$f;

    invoke-virtual {p0, v0}, Lcom/android/incallui/agif/AgifViewPager;->addOnPageChangeListener(Landroid/support/v4/view/ViewPager$f;)V

    return-void
.end method


# virtual methods
.method public getAgifTabIndicator()Lcom/android/incallui/agif/AgifTabIndicator;
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/agif/AgifViewPager;->mAgifTabIndicator:Lcom/android/incallui/agif/AgifTabIndicator;

    return-object v0
.end method

.method public setAgifTabIndicator(Lcom/android/incallui/agif/AgifTabIndicator;)V
    .locals 0

    iput-object p1, p0, Lcom/android/incallui/agif/AgifViewPager;->mAgifTabIndicator:Lcom/android/incallui/agif/AgifTabIndicator;

    return-void
.end method

.method public setCurrentItem(IZ)V
    .locals 1

    invoke-super {p0, p1, p2}, Landroid/support/v4/view/ViewPager;->setCurrentItem(IZ)V

    iget-object v0, p0, Lcom/android/incallui/agif/AgifViewPager;->mAgifTabIndicator:Lcom/android/incallui/agif/AgifTabIndicator;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/agif/AgifViewPager;->mAgifTabIndicator:Lcom/android/incallui/agif/AgifTabIndicator;

    invoke-virtual {v0, p1}, Lcom/android/incallui/agif/AgifTabIndicator;->updateAgifTabIndicator(I)V

    :cond_0
    return-void
.end method
