.class public Lcom/samsung/android/settings/flipfont/TypefaceFinder$TypefaceSortByName;
.super Ljava/lang/Object;
.source "TypefaceFinder.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/flipfont/TypefaceFinder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TypefaceSortByName"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/samsung/android/settings/flipfont/Typeface;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/samsung/android/settings/flipfont/Typeface;Lcom/samsung/android/settings/flipfont/Typeface;)I
    .locals 2

    invoke-virtual {p1}, Lcom/samsung/android/settings/flipfont/Typeface;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Lcom/samsung/android/settings/flipfont/Typeface;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    check-cast p1, Lcom/samsung/android/settings/flipfont/Typeface;

    check-cast p2, Lcom/samsung/android/settings/flipfont/Typeface;

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/settings/flipfont/TypefaceFinder$TypefaceSortByName;->compare(Lcom/samsung/android/settings/flipfont/Typeface;Lcom/samsung/android/settings/flipfont/Typeface;)I

    move-result v0

    return v0
.end method
