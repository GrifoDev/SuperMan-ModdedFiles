.class final Lcom/android/launcher2/IconAutoAlign$1;
.super Ljava/lang/Object;
.source "IconAutoAlign.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher2/IconAutoAlign;
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
        "Lcom/android/launcher2/BaseItem;",
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
.method public compare(Lcom/android/launcher2/BaseItem;Lcom/android/launcher2/BaseItem;)I
    .locals 4

    move-object v0, p1

    check-cast v0, Lcom/android/launcher2/HomeItem;

    move-object v1, p2

    check-cast v1, Lcom/android/launcher2/HomeItem;

    iget v2, v0, Lcom/android/launcher2/HomeItem;->cellY:I

    iget v3, v1, Lcom/android/launcher2/HomeItem;->cellY:I

    if-ne v2, v3, :cond_0

    iget v2, v0, Lcom/android/launcher2/HomeItem;->cellX:I

    iget v3, v1, Lcom/android/launcher2/HomeItem;->cellX:I

    sub-int/2addr v2, v3

    :goto_0
    return v2

    :cond_0
    iget v2, v0, Lcom/android/launcher2/HomeItem;->cellY:I

    iget v3, v1, Lcom/android/launcher2/HomeItem;->cellY:I

    sub-int/2addr v2, v3

    goto :goto_0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    check-cast p1, Lcom/android/launcher2/BaseItem;

    check-cast p2, Lcom/android/launcher2/BaseItem;

    invoke-virtual {p0, p1, p2}, Lcom/android/launcher2/IconAutoAlign$1;->compare(Lcom/android/launcher2/BaseItem;Lcom/android/launcher2/BaseItem;)I

    move-result v0

    return v0
.end method
