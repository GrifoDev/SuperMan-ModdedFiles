.class Lcom/samsung/android/support/sesl/core/view/SeslViewPager$3;
.super Ljava/lang/Object;
.source "SeslViewPager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/support/sesl/core/view/SeslViewPager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/support/sesl/core/view/SeslViewPager;


# direct methods
.method constructor <init>(Lcom/samsung/android/support/sesl/core/view/SeslViewPager;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/sesl/core/view/SeslViewPager$3;->this$0:Lcom/samsung/android/support/sesl/core/view/SeslViewPager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/view/SeslViewPager$3;->this$0:Lcom/samsung/android/support/sesl/core/view/SeslViewPager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->setScrollState(I)V

    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/view/SeslViewPager$3;->this$0:Lcom/samsung/android/support/sesl/core/view/SeslViewPager;

    invoke-virtual {v0}, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->populate()V

    return-void
.end method
