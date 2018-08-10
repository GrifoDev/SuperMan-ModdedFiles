.class Lcom/samsung/android/support/sesl/core/view/SeslViewPager$1;
.super Ljava/lang/Object;
.source "SeslViewPager.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/support/sesl/core/view/SeslViewPager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/samsung/android/support/sesl/core/view/SeslViewPager$ItemInfo;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/samsung/android/support/sesl/core/view/SeslViewPager$ItemInfo;Lcom/samsung/android/support/sesl/core/view/SeslViewPager$ItemInfo;)I
    .locals 2

    iget v0, p1, Lcom/samsung/android/support/sesl/core/view/SeslViewPager$ItemInfo;->position:I

    iget v1, p2, Lcom/samsung/android/support/sesl/core/view/SeslViewPager$ItemInfo;->position:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    check-cast p1, Lcom/samsung/android/support/sesl/core/view/SeslViewPager$ItemInfo;

    check-cast p2, Lcom/samsung/android/support/sesl/core/view/SeslViewPager$ItemInfo;

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/support/sesl/core/view/SeslViewPager$1;->compare(Lcom/samsung/android/support/sesl/core/view/SeslViewPager$ItemInfo;Lcom/samsung/android/support/sesl/core/view/SeslViewPager$ItemInfo;)I

    move-result v0

    return v0
.end method
