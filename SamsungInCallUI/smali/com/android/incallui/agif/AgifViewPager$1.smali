.class Lcom/android/incallui/agif/AgifViewPager$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/support/v4/view/ViewPager$f;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/incallui/agif/AgifViewPager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/incallui/agif/AgifViewPager;


# direct methods
.method constructor <init>(Lcom/android/incallui/agif/AgifViewPager;)V
    .locals 0

    iput-object p1, p0, Lcom/android/incallui/agif/AgifViewPager$1;->this$0:Lcom/android/incallui/agif/AgifViewPager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageScrollStateChanged(I)V
    .locals 0

    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 0

    return-void
.end method

.method public onPageSelected(I)V
    .locals 3

    iget-object v0, p0, Lcom/android/incallui/agif/AgifViewPager$1;->this$0:Lcom/android/incallui/agif/AgifViewPager;

    iget-object v0, v0, Lcom/android/incallui/agif/AgifViewPager;->mAgifTabIndicator:Lcom/android/incallui/agif/AgifTabIndicator;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/agif/AgifViewPager$1;->this$0:Lcom/android/incallui/agif/AgifViewPager;

    iget-object v0, v0, Lcom/android/incallui/agif/AgifViewPager;->mAgifTabIndicator:Lcom/android/incallui/agif/AgifTabIndicator;

    invoke-virtual {v0, p1}, Lcom/android/incallui/agif/AgifTabIndicator;->updateAgifTabIndicator(I)V

    :cond_0
    const-string v0, "AgifViewPager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onPageSelected = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/incallui/UiAdapter;->getInstance()Lcom/android/incallui/UiAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/UiAdapter;->getAgifUi()Lcom/android/incallui/AgifPresenter$AgifUi;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/android/incallui/UiAdapter;->getInstance()Lcom/android/incallui/UiAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/UiAdapter;->getAgifUi()Lcom/android/incallui/AgifPresenter$AgifUi;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/incallui/AgifPresenter$AgifUi;->updateAgifListText(I)V

    :cond_1
    return-void
.end method
