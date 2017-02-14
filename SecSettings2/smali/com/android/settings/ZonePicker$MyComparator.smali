.class Lcom/android/settings/ZonePicker$MyComparator;
.super Ljava/lang/Object;
.source "ZonePicker.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/ZonePicker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MyComparator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Ljava/util/Map",
        "<**>;>;"
    }
.end annotation


# instance fields
.field private mSortingKey:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/ZonePicker$MyComparator;->mSortingKey:Ljava/lang/String;

    return-void
.end method

.method private isComparable(Ljava/lang/Object;)Z
    .locals 1

    if-eqz p1, :cond_0

    instance-of v0, p1, Ljava/lang/Comparable;

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    check-cast p1, Ljava/util/Map;

    check-cast p2, Ljava/util/Map;

    invoke-virtual {p0, p1, p2}, Lcom/android/settings/ZonePicker$MyComparator;->compare(Ljava/util/Map;Ljava/util/Map;)I

    move-result v0

    return v0
.end method

.method public compare(Ljava/util/Map;Ljava/util/Map;)I
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<**>;",
            "Ljava/util/Map",
            "<**>;)I"
        }
    .end annotation

    const/4 v5, 0x1

    const/4 v8, -0x1

    iget-object v6, p0, Lcom/android/settings/ZonePicker$MyComparator;->mSortingKey:Ljava/lang/String;

    invoke-interface {p1, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    iget-object v6, p0, Lcom/android/settings/ZonePicker$MyComparator;->mSortingKey:Ljava/lang/String;

    invoke-interface {p2, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    const-string/jumbo v6, "name"

    iget-object v7, p0, Lcom/android/settings/ZonePicker$MyComparator;->mSortingKey:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-static {}, Ljava/text/Collator;->getInstance()Ljava/text/Collator;

    move-result-object v2

    const/4 v0, 0x0

    const/4 v1, 0x0

    if-eqz v3, :cond_0

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_0
    if-eqz v4, :cond_1

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_1
    if-nez v0, :cond_2

    return v5

    :cond_2
    if-nez v1, :cond_3

    return v8

    :cond_3
    invoke-virtual {v2, v0, v1}, Ljava/text/Collator;->compare(Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    return v5

    :cond_4
    invoke-direct {p0, v3}, Lcom/android/settings/ZonePicker$MyComparator;->isComparable(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_6

    invoke-direct {p0, v4}, Lcom/android/settings/ZonePicker$MyComparator;->isComparable(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    :goto_0
    return v5

    :cond_5
    const/4 v5, 0x0

    goto :goto_0

    :cond_6
    invoke-direct {p0, v4}, Lcom/android/settings/ZonePicker$MyComparator;->isComparable(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_7

    return v8

    :cond_7
    check-cast v3, Ljava/lang/Comparable;

    invoke-interface {v3, v4}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v5

    return v5
.end method
