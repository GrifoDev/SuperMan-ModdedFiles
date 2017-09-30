.class Lcom/android/incallui/agif/AgifSlidingTabLayout$InternalViewPagerListener;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/support/v4/view/ViewPager$f;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/incallui/agif/AgifSlidingTabLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "InternalViewPagerListener"
.end annotation


# instance fields
.field private mScrollState:I

.field final synthetic this$0:Lcom/android/incallui/agif/AgifSlidingTabLayout;


# direct methods
.method private constructor <init>(Lcom/android/incallui/agif/AgifSlidingTabLayout;)V
    .locals 0

    iput-object p1, p0, Lcom/android/incallui/agif/AgifSlidingTabLayout$InternalViewPagerListener;->this$0:Lcom/android/incallui/agif/AgifSlidingTabLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/incallui/agif/AgifSlidingTabLayout;Lcom/android/incallui/agif/AgifSlidingTabLayout$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/incallui/agif/AgifSlidingTabLayout$InternalViewPagerListener;-><init>(Lcom/android/incallui/agif/AgifSlidingTabLayout;)V

    return-void
.end method


# virtual methods
.method public onPageScrollStateChanged(I)V
    .locals 0

    iput p1, p0, Lcom/android/incallui/agif/AgifSlidingTabLayout$InternalViewPagerListener;->mScrollState:I

    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 0

    return-void
.end method

.method public onPageSelected(I)V
    .locals 3

    const-string v0, "AgifSlidingTabLayout"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onPageSelected(), mScrollState = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/incallui/agif/AgifSlidingTabLayout$InternalViewPagerListener;->mScrollState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/incallui/agif/AgifSlidingTabLayout$InternalViewPagerListener;->this$0:Lcom/android/incallui/agif/AgifSlidingTabLayout;

    invoke-static {v0, p1}, Lcom/android/incallui/agif/AgifSlidingTabLayout;->access$100(Lcom/android/incallui/agif/AgifSlidingTabLayout;I)V

    return-void
.end method
