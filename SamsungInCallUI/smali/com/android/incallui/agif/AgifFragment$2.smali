.class Lcom/android/incallui/agif/AgifFragment$2;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/ViewTreeObserver$OnPreDrawListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/incallui/agif/AgifFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/incallui/agif/AgifFragment;


# direct methods
.method constructor <init>(Lcom/android/incallui/agif/AgifFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/android/incallui/agif/AgifFragment$2;->this$0:Lcom/android/incallui/agif/AgifFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreDraw()Z
    .locals 3

    const/4 v2, 0x1

    iget-object v0, p0, Lcom/android/incallui/agif/AgifFragment$2;->this$0:Lcom/android/incallui/agif/AgifFragment;

    iget-object v0, v0, Lcom/android/incallui/agif/AgifFragment;->mAgifViewPager:Lcom/android/incallui/agif/AgifViewPager;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return v2

    :cond_1
    iget-object v0, p0, Lcom/android/incallui/agif/AgifFragment$2;->this$0:Lcom/android/incallui/agif/AgifFragment;

    iget-object v0, v0, Lcom/android/incallui/agif/AgifFragment;->mAgifViewPager:Lcom/android/incallui/agif/AgifViewPager;

    invoke-virtual {v0}, Lcom/android/incallui/agif/AgifViewPager;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewTreeObserver;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/agif/AgifFragment$2;->this$0:Lcom/android/incallui/agif/AgifFragment;

    iget v0, v0, Lcom/android/incallui/agif/AgifFragment;->mAgifViewPagerWidth:I

    iget-object v1, p0, Lcom/android/incallui/agif/AgifFragment$2;->this$0:Lcom/android/incallui/agif/AgifFragment;

    iget-object v1, v1, Lcom/android/incallui/agif/AgifFragment;->mAgifViewPager:Lcom/android/incallui/agif/AgifViewPager;

    invoke-virtual {v1}, Lcom/android/incallui/agif/AgifViewPager;->getWidth()I

    move-result v1

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/incallui/agif/AgifFragment$2;->this$0:Lcom/android/incallui/agif/AgifFragment;

    iget-object v0, v0, Lcom/android/incallui/agif/AgifFragment;->mAgifViewPager:Lcom/android/incallui/agif/AgifViewPager;

    invoke-virtual {v0}, Lcom/android/incallui/agif/AgifViewPager;->getWidth()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/agif/AgifFragment$2;->this$0:Lcom/android/incallui/agif/AgifFragment;

    iget-object v1, p0, Lcom/android/incallui/agif/AgifFragment$2;->this$0:Lcom/android/incallui/agif/AgifFragment;

    iget-object v1, v1, Lcom/android/incallui/agif/AgifFragment;->mAgifViewPager:Lcom/android/incallui/agif/AgifViewPager;

    invoke-virtual {v1}, Lcom/android/incallui/agif/AgifViewPager;->getWidth()I

    move-result v1

    iput v1, v0, Lcom/android/incallui/agif/AgifFragment;->mAgifViewPagerWidth:I

    iget-object v0, p0, Lcom/android/incallui/agif/AgifFragment$2;->this$0:Lcom/android/incallui/agif/AgifFragment;

    invoke-static {v0}, Lcom/android/incallui/agif/AgifFragment;->access$100(Lcom/android/incallui/agif/AgifFragment;)V

    goto :goto_0
.end method
