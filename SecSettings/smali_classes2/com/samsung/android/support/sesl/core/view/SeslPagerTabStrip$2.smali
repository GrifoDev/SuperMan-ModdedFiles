.class Lcom/samsung/android/support/sesl/core/view/SeslPagerTabStrip$2;
.super Ljava/lang/Object;
.source "SeslPagerTabStrip.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/support/sesl/core/view/SeslPagerTabStrip;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/support/sesl/core/view/SeslPagerTabStrip;


# direct methods
.method constructor <init>(Lcom/samsung/android/support/sesl/core/view/SeslPagerTabStrip;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/sesl/core/view/SeslPagerTabStrip$2;->this$0:Lcom/samsung/android/support/sesl/core/view/SeslPagerTabStrip;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/view/SeslPagerTabStrip$2;->this$0:Lcom/samsung/android/support/sesl/core/view/SeslPagerTabStrip;

    iget-object v0, v0, Lcom/samsung/android/support/sesl/core/view/SeslPagerTabStrip;->mPager:Lcom/samsung/android/support/sesl/core/view/SeslViewPager;

    iget-object v1, p0, Lcom/samsung/android/support/sesl/core/view/SeslPagerTabStrip$2;->this$0:Lcom/samsung/android/support/sesl/core/view/SeslPagerTabStrip;

    iget-object v1, v1, Lcom/samsung/android/support/sesl/core/view/SeslPagerTabStrip;->mPager:Lcom/samsung/android/support/sesl/core/view/SeslViewPager;

    invoke-virtual {v1}, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->getCurrentItem()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->setCurrentItem(I)V

    return-void
.end method
