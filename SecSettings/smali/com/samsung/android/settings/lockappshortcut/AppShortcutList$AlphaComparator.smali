.class Lcom/samsung/android/settings/lockappshortcut/AppShortcutList$AlphaComparator;
.super Ljava/lang/Object;
.source "AppShortcutList.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/lockappshortcut/AppShortcutList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "AlphaComparator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/samsung/android/settings/lockappshortcut/AppShortcutInfo$AppListItem;",
        ">;"
    }
.end annotation


# instance fields
.field private final sCollator:Ljava/text/Collator;


# direct methods
.method constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Ljava/text/Collator;->getInstance()Ljava/text/Collator;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/lockappshortcut/AppShortcutList$AlphaComparator;->sCollator:Ljava/text/Collator;

    return-void
.end method


# virtual methods
.method public compare(Lcom/samsung/android/settings/lockappshortcut/AppShortcutInfo$AppListItem;Lcom/samsung/android/settings/lockappshortcut/AppShortcutInfo$AppListItem;)I
    .locals 3

    if-eqz p1, :cond_0

    iget-object v0, p1, Lcom/samsung/android/settings/lockappshortcut/AppShortcutInfo$AppListItem;->mLabel:Ljava/lang/String;

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, -0x1

    return v0

    :cond_1
    if-eqz p2, :cond_2

    iget-object v0, p2, Lcom/samsung/android/settings/lockappshortcut/AppShortcutInfo$AppListItem;->mLabel:Ljava/lang/String;

    if-nez v0, :cond_3

    :cond_2
    const/4 v0, 0x1

    return v0

    :cond_3
    iget-object v0, p0, Lcom/samsung/android/settings/lockappshortcut/AppShortcutList$AlphaComparator;->sCollator:Ljava/text/Collator;

    iget-object v1, p1, Lcom/samsung/android/settings/lockappshortcut/AppShortcutInfo$AppListItem;->mLabel:Ljava/lang/String;

    iget-object v2, p2, Lcom/samsung/android/settings/lockappshortcut/AppShortcutInfo$AppListItem;->mLabel:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/text/Collator;->compare(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    check-cast p1, Lcom/samsung/android/settings/lockappshortcut/AppShortcutInfo$AppListItem;

    check-cast p2, Lcom/samsung/android/settings/lockappshortcut/AppShortcutInfo$AppListItem;

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/settings/lockappshortcut/AppShortcutList$AlphaComparator;->compare(Lcom/samsung/android/settings/lockappshortcut/AppShortcutInfo$AppListItem;Lcom/samsung/android/settings/lockappshortcut/AppShortcutInfo$AppListItem;)I

    move-result v0

    return v0
.end method
