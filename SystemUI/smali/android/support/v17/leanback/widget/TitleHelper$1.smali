.class Landroid/support/v17/leanback/widget/TitleHelper$1;
.super Ljava/lang/Object;
.source "TitleHelper.java"

# interfaces
.implements Landroid/support/v17/leanback/widget/BrowseFrameLayout$OnFocusSearchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v17/leanback/widget/TitleHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/support/v17/leanback/widget/TitleHelper;


# direct methods
.method constructor <init>(Landroid/support/v17/leanback/widget/TitleHelper;)V
    .locals 0

    iput-object p1, p0, Landroid/support/v17/leanback/widget/TitleHelper$1;->this$0:Landroid/support/v17/leanback/widget/TitleHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFocusSearch(Landroid/view/View;I)Landroid/view/View;
    .locals 4

    iget-object v2, p0, Landroid/support/v17/leanback/widget/TitleHelper$1;->this$0:Landroid/support/v17/leanback/widget/TitleHelper;

    iget-object v2, v2, Landroid/support/v17/leanback/widget/TitleHelper;->mTitleView:Landroid/view/View;

    if-eq p1, v2, :cond_0

    const/16 v2, 0x21

    if-ne p2, v2, :cond_0

    iget-object v2, p0, Landroid/support/v17/leanback/widget/TitleHelper$1;->this$0:Landroid/support/v17/leanback/widget/TitleHelper;

    iget-object v2, v2, Landroid/support/v17/leanback/widget/TitleHelper;->mTitleView:Landroid/view/View;

    return-object v2

    :cond_0
    invoke-static {p1}, Landroid/support/v4/view/ViewCompat;->getLayoutDirection(Landroid/view/View;)I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_2

    const/4 v1, 0x1

    :goto_0
    if-eqz v1, :cond_3

    const/16 v0, 0x11

    :goto_1
    iget-object v2, p0, Landroid/support/v17/leanback/widget/TitleHelper$1;->this$0:Landroid/support/v17/leanback/widget/TitleHelper;

    iget-object v2, v2, Landroid/support/v17/leanback/widget/TitleHelper;->mTitleView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->hasFocus()Z

    move-result v2

    if-eqz v2, :cond_4

    const/16 v2, 0x82

    if-eq p2, v2, :cond_1

    if-ne p2, v0, :cond_4

    :cond_1
    iget-object v2, p0, Landroid/support/v17/leanback/widget/TitleHelper$1;->this$0:Landroid/support/v17/leanback/widget/TitleHelper;

    iget-object v2, v2, Landroid/support/v17/leanback/widget/TitleHelper;->mSceneRoot:Landroid/view/ViewGroup;

    return-object v2

    :cond_2
    const/4 v1, 0x0

    goto :goto_0

    :cond_3
    const/16 v0, 0x42

    goto :goto_1

    :cond_4
    const/4 v2, 0x0

    return-object v2
.end method
