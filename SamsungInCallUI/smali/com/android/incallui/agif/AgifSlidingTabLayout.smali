.class public Lcom/android/incallui/agif/AgifSlidingTabLayout;
.super Landroid/widget/HorizontalScrollView;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/incallui/agif/AgifSlidingTabLayout$InternalViewPagerListener;
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "AgifSlidingTabLayout"


# instance fields
.field private mViewPager:Lcom/android/incallui/agif/AgifViewPager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/incallui/agif/AgifSlidingTabLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/incallui/agif/AgifSlidingTabLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/HorizontalScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/incallui/agif/AgifSlidingTabLayout;->setFillViewport(Z)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/incallui/agif/AgifSlidingTabLayout;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/incallui/agif/AgifSlidingTabLayout;->scrollToTab(I)V

    return-void
.end method

.method private scrollToTab(I)V
    .locals 6

    const-string v0, "AgifSlidingTabLayout"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "scrollToTab(), tabIndex = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/incallui/agif/AgifSlidingTabLayout;->mViewPager:Lcom/android/incallui/agif/AgifViewPager;

    invoke-virtual {v0}, Lcom/android/incallui/agif/AgifViewPager;->getAgifTabIndicator()Lcom/android/incallui/agif/AgifTabIndicator;

    move-result-object v0

    iget-object v1, p0, Lcom/android/incallui/agif/AgifSlidingTabLayout;->mViewPager:Lcom/android/incallui/agif/AgifViewPager;

    invoke-virtual {v1}, Lcom/android/incallui/agif/AgifViewPager;->getAgifTabIndicator()Lcom/android/incallui/agif/AgifTabIndicator;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/agif/AgifTabIndicator;->getChildCount()I

    move-result v1

    if-eqz v1, :cond_0

    if-ltz p1, :cond_0

    if-lt p1, v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {v0, p1}, Lcom/android/incallui/agif/AgifTabIndicator;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/incallui/agif/AgifSlidingTabLayout;->getMeasuredWidth()I

    move-result v2

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    invoke-virtual {p0}, Lcom/android/incallui/agif/AgifSlidingTabLayout;->getScrollX()I

    move-result v4

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v0

    const/4 v1, -0x1

    add-int v5, v0, v3

    sub-int/2addr v5, v4

    if-ge v2, v5, :cond_3

    sub-int/2addr v0, v2

    add-int/2addr v0, v3

    :cond_2
    :goto_1
    const-string v1, "AgifSlidingTabLayout"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "scrollToTab(), tagetScrollX = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-ltz v0, :cond_0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/incallui/agif/AgifSlidingTabLayout;->scrollTo(II)V

    goto :goto_0

    :cond_3
    sub-int v2, v0, v4

    if-ltz v2, :cond_2

    move v0, v1

    goto :goto_1
.end method


# virtual methods
.method public setViewPager(Landroid/support/v4/view/ViewPager;)V
    .locals 3

    if-eqz p1, :cond_0

    instance-of v0, p1, Lcom/android/incallui/agif/AgifViewPager;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/android/incallui/agif/AgifViewPager;

    iput-object p1, p0, Lcom/android/incallui/agif/AgifSlidingTabLayout;->mViewPager:Lcom/android/incallui/agif/AgifViewPager;

    :cond_0
    iget-object v0, p0, Lcom/android/incallui/agif/AgifSlidingTabLayout;->mViewPager:Lcom/android/incallui/agif/AgifViewPager;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/incallui/agif/AgifSlidingTabLayout;->mViewPager:Lcom/android/incallui/agif/AgifViewPager;

    new-instance v1, Lcom/android/incallui/agif/AgifSlidingTabLayout$InternalViewPagerListener;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/incallui/agif/AgifSlidingTabLayout$InternalViewPagerListener;-><init>(Lcom/android/incallui/agif/AgifSlidingTabLayout;Lcom/android/incallui/agif/AgifSlidingTabLayout$1;)V

    invoke-virtual {v0, v1}, Lcom/android/incallui/agif/AgifViewPager;->setOnPageChangeListener(Landroid/support/v4/view/ViewPager$f;)V

    :cond_1
    return-void
.end method
