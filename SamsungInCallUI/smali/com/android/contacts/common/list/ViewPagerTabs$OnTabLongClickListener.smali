.class Lcom/android/contacts/common/list/ViewPagerTabs$OnTabLongClickListener;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/common/list/ViewPagerTabs;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "OnTabLongClickListener"
.end annotation


# instance fields
.field final a:I

.field final synthetic b:Lcom/android/contacts/common/list/ViewPagerTabs;


# direct methods
.method public constructor <init>(Lcom/android/contacts/common/list/ViewPagerTabs;I)V
    .locals 0

    iput-object p1, p0, Lcom/android/contacts/common/list/ViewPagerTabs$OnTabLongClickListener;->b:Lcom/android/contacts/common/list/ViewPagerTabs;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Lcom/android/contacts/common/list/ViewPagerTabs$OnTabLongClickListener;->a:I

    return-void
.end method


# virtual methods
.method public onLongClick(Landroid/view/View;)Z
    .locals 9

    const/4 v8, 0x1

    const/4 v7, 0x0

    const/4 v0, 0x2

    new-array v0, v0, [I

    iget-object v1, p0, Lcom/android/contacts/common/list/ViewPagerTabs$OnTabLongClickListener;->b:Lcom/android/contacts/common/list/ViewPagerTabs;

    invoke-virtual {v1, v0}, Lcom/android/contacts/common/list/ViewPagerTabs;->getLocationOnScreen([I)V

    iget-object v1, p0, Lcom/android/contacts/common/list/ViewPagerTabs$OnTabLongClickListener;->b:Lcom/android/contacts/common/list/ViewPagerTabs;

    invoke-virtual {v1}, Lcom/android/contacts/common/list/ViewPagerTabs;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/contacts/common/list/ViewPagerTabs$OnTabLongClickListener;->b:Lcom/android/contacts/common/list/ViewPagerTabs;

    invoke-virtual {v2}, Lcom/android/contacts/common/list/ViewPagerTabs;->getWidth()I

    move-result v2

    iget-object v3, p0, Lcom/android/contacts/common/list/ViewPagerTabs$OnTabLongClickListener;->b:Lcom/android/contacts/common/list/ViewPagerTabs;

    invoke-virtual {v3}, Lcom/android/contacts/common/list/ViewPagerTabs;->getHeight()I

    move-result v3

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    iget v4, v4, Landroid/util/DisplayMetrics;->widthPixels:I

    iget-object v5, p0, Lcom/android/contacts/common/list/ViewPagerTabs$OnTabLongClickListener;->b:Lcom/android/contacts/common/list/ViewPagerTabs;

    iget-object v5, v5, Lcom/android/contacts/common/list/ViewPagerTabs;->a:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v5}, Landroid/support/v4/view/ViewPager;->getAdapter()Landroid/support/v4/view/ac;

    move-result-object v5

    iget v6, p0, Lcom/android/contacts/common/list/ViewPagerTabs$OnTabLongClickListener;->a:I

    invoke-virtual {v5, v6}, Landroid/support/v4/view/ac;->getPageTitle(I)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-static {v1, v5, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    const/16 v5, 0x31

    aget v6, v0, v7

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v2, v6

    div-int/lit8 v4, v4, 0x2

    sub-int/2addr v2, v4

    aget v0, v0, v8

    add-int/2addr v0, v3

    invoke-virtual {v1, v5, v2, v0}, Landroid/widget/Toast;->setGravity(III)V

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    return v8
.end method
