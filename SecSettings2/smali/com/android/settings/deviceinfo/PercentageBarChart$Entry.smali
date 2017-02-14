.class public Lcom/android/settings/deviceinfo/PercentageBarChart$Entry;
.super Ljava/lang/Object;
.source "PercentageBarChart.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/deviceinfo/PercentageBarChart;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Entry"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable",
        "<",
        "Lcom/android/settings/deviceinfo/PercentageBarChart$Entry;",
        ">;"
    }
.end annotation


# instance fields
.field public final order:I

.field public final paint:Landroid/graphics/Paint;

.field public final percentage:F


# virtual methods
.method public compareTo(Lcom/android/settings/deviceinfo/PercentageBarChart$Entry;)I
    .locals 2

    iget v0, p0, Lcom/android/settings/deviceinfo/PercentageBarChart$Entry;->order:I

    iget v1, p1, Lcom/android/settings/deviceinfo/PercentageBarChart$Entry;->order:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1

    check-cast p1, Lcom/android/settings/deviceinfo/PercentageBarChart$Entry;

    invoke-virtual {p0, p1}, Lcom/android/settings/deviceinfo/PercentageBarChart$Entry;->compareTo(Lcom/android/settings/deviceinfo/PercentageBarChart$Entry;)I

    move-result v0

    return v0
.end method
