.class Lcom/samsung/android/support/sesl/core/view/SeslViewPager$PagerObserver;
.super Landroid/database/DataSetObserver;
.source "SeslViewPager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/support/sesl/core/view/SeslViewPager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PagerObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/support/sesl/core/view/SeslViewPager;


# direct methods
.method constructor <init>(Lcom/samsung/android/support/sesl/core/view/SeslViewPager;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/sesl/core/view/SeslViewPager$PagerObserver;->this$0:Lcom/samsung/android/support/sesl/core/view/SeslViewPager;

    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/view/SeslViewPager$PagerObserver;->this$0:Lcom/samsung/android/support/sesl/core/view/SeslViewPager;

    invoke-virtual {v0}, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->dataSetChanged()V

    return-void
.end method

.method public onInvalidated()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/view/SeslViewPager$PagerObserver;->this$0:Lcom/samsung/android/support/sesl/core/view/SeslViewPager;

    invoke-virtual {v0}, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->dataSetChanged()V

    return-void
.end method
