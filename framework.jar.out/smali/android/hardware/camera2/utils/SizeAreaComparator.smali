.class public Landroid/hardware/camera2/utils/SizeAreaComparator;
.super Ljava/lang/Object;
.source "SizeAreaComparator.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Landroid/util/Size;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static findLargestByArea(Ljava/util/List;)Landroid/util/Size;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/util/Size;",
            ">;)",
            "Landroid/util/Size;"
        }
    .end annotation

    .prologue
    .line 67
    .local p0, "sizes":Ljava/util/List;, "Ljava/util/List<Landroid/util/Size;>;"
    const-string/jumbo v0, "sizes must not be null"

    invoke-static {p0, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 69
    new-instance v0, Landroid/hardware/camera2/utils/SizeAreaComparator;

    invoke-direct {v0}, Landroid/hardware/camera2/utils/SizeAreaComparator;-><init>()V

    invoke-static {p0, v0}, Ljava/util/Collections;->max(Ljava/util/Collection;Ljava/util/Comparator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Size;

    return-object v0
.end method


# virtual methods
.method public compare(Landroid/util/Size;Landroid/util/Size;)I
    .locals 12
    .param p1, "size"    # Landroid/util/Size;
    .param p2, "size2"    # Landroid/util/Size;

    .prologue
    const/4 v8, 0x1

    const/4 v9, -0x1

    .line 38
    const-string/jumbo v10, "size must not be null"

    invoke-static {p1, v10}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 39
    const-string/jumbo v10, "size2 must not be null"

    invoke-static {p2, v10}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    invoke-virtual {p1, p2}, Landroid/util/Size;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 42
    const/4 v8, 0x0

    return v8

    .line 45
    :cond_0
    invoke-virtual {p1}, Landroid/util/Size;->getWidth()I

    move-result v10

    int-to-long v4, v10

    .line 46
    .local v4, "width":J
    invoke-virtual {p2}, Landroid/util/Size;->getWidth()I

    move-result v10

    int-to-long v6, v10

    .line 47
    .local v6, "width2":J
    invoke-virtual {p1}, Landroid/util/Size;->getHeight()I

    move-result v10

    int-to-long v10, v10

    mul-long v0, v4, v10

    .line 48
    .local v0, "area":J
    invoke-virtual {p2}, Landroid/util/Size;->getHeight()I

    move-result v10

    int-to-long v10, v10

    mul-long v2, v6, v10

    .line 50
    .local v2, "area2":J
    cmp-long v10, v0, v2

    if-nez v10, :cond_2

    .line 51
    cmp-long v10, v4, v6

    if-lez v10, :cond_1

    :goto_0
    return v8

    :cond_1
    move v8, v9

    goto :goto_0

    .line 54
    :cond_2
    cmp-long v10, v0, v2

    if-lez v10, :cond_3

    :goto_1
    return v8

    :cond_3
    move v8, v9

    goto :goto_1
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .param p1, "size"    # Ljava/lang/Object;
    .param p2, "size2"    # Ljava/lang/Object;

    .prologue
    .line 37
    check-cast p1, Landroid/util/Size;

    .end local p1    # "size":Ljava/lang/Object;
    check-cast p2, Landroid/util/Size;

    .end local p2    # "size2":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Landroid/hardware/camera2/utils/SizeAreaComparator;->compare(Landroid/util/Size;Landroid/util/Size;)I

    move-result v0

    return v0
.end method
