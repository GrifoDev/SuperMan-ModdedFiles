.class final Ljava/util/TreeMap$DescendingSubMap;
.super Ljava/util/TreeMap$NavigableSubMap;
.source "TreeMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/TreeMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "DescendingSubMap"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/util/TreeMap$DescendingSubMap$DescendingEntrySetView;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/TreeMap$NavigableSubMap",
        "<TK;TV;>;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0xcab946d1f0f9d0cL


# instance fields
.field private final reverseComparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<-TK;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/util/TreeMap;ZLjava/lang/Object;ZZLjava/lang/Object;Z)V
    .locals 1
    .param p2, "fromStart"    # Z
    .param p4, "loInclusive"    # Z
    .param p5, "toEnd"    # Z
    .param p7, "hiInclusive"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/TreeMap",
            "<TK;TV;>;ZTK;ZZTK;Z)V"
        }
    .end annotation

    .prologue
    .line 1973
    .local p0, "this":Ljava/util/TreeMap$DescendingSubMap;, "Ljava/util/TreeMap<TK;TV;>.DescendingSubMap<TK;TV;>;"
    .local p1, "m":Ljava/util/TreeMap;, "Ljava/util/TreeMap<TK;TV;>;"
    .local p3, "lo":Ljava/lang/Object;, "TK;"
    .local p6, "hi":Ljava/lang/Object;, "TK;"
    invoke-direct/range {p0 .. p7}, Ljava/util/TreeMap$NavigableSubMap;-><init>(Ljava/util/TreeMap;ZLjava/lang/Object;ZZLjava/lang/Object;Z)V

    .line 1977
    iget-object v0, p0, Ljava/util/TreeMap$NavigableSubMap;->m:Ljava/util/TreeMap;

    invoke-static {v0}, Ljava/util/TreeMap;->-get1(Ljava/util/TreeMap;)Ljava/util/Comparator;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->reverseOrder(Ljava/util/Comparator;)Ljava/util/Comparator;

    move-result-object v0

    .line 1976
    iput-object v0, p0, Ljava/util/TreeMap$DescendingSubMap;->reverseComparator:Ljava/util/Comparator;

    .line 1972
    return-void
.end method


# virtual methods
.method public comparator()Ljava/util/Comparator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Comparator",
            "<-TK;>;"
        }
    .end annotation

    .prologue
    .line 1980
    .local p0, "this":Ljava/util/TreeMap$DescendingSubMap;, "Ljava/util/TreeMap<TK;TV;>.DescendingSubMap<TK;TV;>;"
    iget-object v0, p0, Ljava/util/TreeMap$DescendingSubMap;->reverseComparator:Ljava/util/Comparator;

    return-object v0
.end method

.method descendingKeyIterator()Ljava/util/Iterator;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<TK;>;"
        }
    .end annotation

    .prologue
    .line 2038
    .local p0, "this":Ljava/util/TreeMap$DescendingSubMap;, "Ljava/util/TreeMap<TK;TV;>.DescendingSubMap<TK;TV;>;"
    new-instance v0, Ljava/util/TreeMap$NavigableSubMap$SubMapKeyIterator;

    invoke-virtual {p0}, Ljava/util/TreeMap$NavigableSubMap;->absLowest()Ljava/util/TreeMap$TreeMapEntry;

    move-result-object v1

    invoke-virtual {p0}, Ljava/util/TreeMap$NavigableSubMap;->absHighFence()Ljava/util/TreeMap$TreeMapEntry;

    move-result-object v2

    invoke-direct {v0, p0, v1, v2}, Ljava/util/TreeMap$NavigableSubMap$SubMapKeyIterator;-><init>(Ljava/util/TreeMap$NavigableSubMap;Ljava/util/TreeMap$TreeMapEntry;Ljava/util/TreeMap$TreeMapEntry;)V

    return-object v0
.end method

.method public descendingMap()Ljava/util/NavigableMap;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/NavigableMap",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 2021
    .local p0, "this":Ljava/util/TreeMap$DescendingSubMap;, "Ljava/util/TreeMap<TK;TV;>.DescendingSubMap<TK;TV;>;"
    iget-object v8, p0, Ljava/util/TreeMap$NavigableSubMap;->descendingMapView:Ljava/util/NavigableMap;

    .line 2022
    .local v8, "mv":Ljava/util/NavigableMap;, "Ljava/util/NavigableMap<TK;TV;>;"
    if-eqz v8, :cond_0

    .end local v8    # "mv":Ljava/util/NavigableMap;, "Ljava/util/NavigableMap<TK;TV;>;"
    :goto_0
    return-object v8

    .line 2024
    .restart local v8    # "mv":Ljava/util/NavigableMap;, "Ljava/util/NavigableMap<TK;TV;>;"
    :cond_0
    new-instance v0, Ljava/util/TreeMap$AscendingSubMap;

    iget-object v1, p0, Ljava/util/TreeMap$NavigableSubMap;->m:Ljava/util/TreeMap;

    .line 2025
    iget-boolean v2, p0, Ljava/util/TreeMap$NavigableSubMap;->fromStart:Z

    iget-object v3, p0, Ljava/util/TreeMap$NavigableSubMap;->lo:Ljava/lang/Object;

    iget-boolean v4, p0, Ljava/util/TreeMap$NavigableSubMap;->loInclusive:Z

    .line 2026
    iget-boolean v5, p0, Ljava/util/TreeMap$NavigableSubMap;->toEnd:Z

    iget-object v6, p0, Ljava/util/TreeMap$NavigableSubMap;->hi:Ljava/lang/Object;

    iget-boolean v7, p0, Ljava/util/TreeMap$NavigableSubMap;->hiInclusive:Z

    .line 2024
    invoke-direct/range {v0 .. v7}, Ljava/util/TreeMap$AscendingSubMap;-><init>(Ljava/util/TreeMap;ZLjava/lang/Object;ZZLjava/lang/Object;Z)V

    .line 2023
    iput-object v0, p0, Ljava/util/TreeMap$NavigableSubMap;->descendingMapView:Ljava/util/NavigableMap;

    move-object v8, v0

    goto :goto_0
.end method

.method public entrySet()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;>;"
        }
    .end annotation

    .prologue
    .line 2048
    .local p0, "this":Ljava/util/TreeMap$DescendingSubMap;, "Ljava/util/TreeMap<TK;TV;>.DescendingSubMap<TK;TV;>;"
    iget-object v0, p0, Ljava/util/TreeMap$NavigableSubMap;->entrySetView:Ljava/util/TreeMap$NavigableSubMap$EntrySetView;

    .line 2049
    .local v0, "es":Ljava/util/TreeMap$NavigableSubMap$EntrySetView;, "Ljava/util/TreeMap$NavigableSubMap<TK;TV;>.EntrySetView;"
    if-eqz v0, :cond_0

    .end local v0    # "es":Ljava/util/TreeMap$NavigableSubMap$EntrySetView;, "Ljava/util/TreeMap$NavigableSubMap<TK;TV;>.EntrySetView;"
    :goto_0
    return-object v0

    .restart local v0    # "es":Ljava/util/TreeMap$NavigableSubMap$EntrySetView;, "Ljava/util/TreeMap$NavigableSubMap<TK;TV;>.EntrySetView;"
    :cond_0
    new-instance v0, Ljava/util/TreeMap$DescendingSubMap$DescendingEntrySetView;

    .end local v0    # "es":Ljava/util/TreeMap$NavigableSubMap$EntrySetView;, "Ljava/util/TreeMap$NavigableSubMap<TK;TV;>.EntrySetView;"
    invoke-direct {v0, p0}, Ljava/util/TreeMap$DescendingSubMap$DescendingEntrySetView;-><init>(Ljava/util/TreeMap$DescendingSubMap;)V

    iput-object v0, p0, Ljava/util/TreeMap$NavigableSubMap;->entrySetView:Ljava/util/TreeMap$NavigableSubMap$EntrySetView;

    goto :goto_0
.end method

.method public headMap(Ljava/lang/Object;Z)Ljava/util/NavigableMap;
    .locals 8
    .param p2, "inclusive"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;Z)",
            "Ljava/util/NavigableMap",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .local p0, "this":Ljava/util/TreeMap$DescendingSubMap;, "Ljava/util/TreeMap<TK;TV;>.DescendingSubMap<TK;TV;>;"
    .local p1, "toKey":Ljava/lang/Object;, "TK;"
    const/4 v2, 0x0

    .line 1998
    invoke-virtual {p0, p1}, Ljava/util/TreeMap$NavigableSubMap;->inRange(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-boolean v0, p0, Ljava/util/TreeMap$NavigableSubMap;->fromStart:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Ljava/util/TreeMap$NavigableSubMap;->m:Ljava/util/TreeMap;

    iget-object v1, p0, Ljava/util/TreeMap$NavigableSubMap;->lo:Ljava/lang/Object;

    invoke-virtual {v0, p1, v1}, Ljava/util/TreeMap;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    if-eqz v0, :cond_1

    .line 2001
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "toKey out of range"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1999
    :cond_1
    iget-boolean v0, p0, Ljava/util/TreeMap$NavigableSubMap;->loInclusive:Z

    .line 1998
    if-nez v0, :cond_0

    if-nez p2, :cond_0

    .line 2002
    :cond_2
    new-instance v0, Ljava/util/TreeMap$DescendingSubMap;

    iget-object v1, p0, Ljava/util/TreeMap$NavigableSubMap;->m:Ljava/util/TreeMap;

    .line 2004
    iget-boolean v5, p0, Ljava/util/TreeMap$NavigableSubMap;->toEnd:Z

    iget-object v6, p0, Ljava/util/TreeMap$NavigableSubMap;->hi:Ljava/lang/Object;

    iget-boolean v7, p0, Ljava/util/TreeMap$NavigableSubMap;->hiInclusive:Z

    move-object v3, p1

    move v4, p2

    .line 2002
    invoke-direct/range {v0 .. v7}, Ljava/util/TreeMap$DescendingSubMap;-><init>(Ljava/util/TreeMap;ZLjava/lang/Object;ZZLjava/lang/Object;Z)V

    return-object v0
.end method

.method keyIterator()Ljava/util/Iterator;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<TK;>;"
        }
    .end annotation

    .prologue
    .line 2030
    .local p0, "this":Ljava/util/TreeMap$DescendingSubMap;, "Ljava/util/TreeMap<TK;TV;>.DescendingSubMap<TK;TV;>;"
    new-instance v0, Ljava/util/TreeMap$NavigableSubMap$DescendingSubMapKeyIterator;

    invoke-virtual {p0}, Ljava/util/TreeMap$NavigableSubMap;->absHighest()Ljava/util/TreeMap$TreeMapEntry;

    move-result-object v1

    invoke-virtual {p0}, Ljava/util/TreeMap$NavigableSubMap;->absLowFence()Ljava/util/TreeMap$TreeMapEntry;

    move-result-object v2

    invoke-direct {v0, p0, v1, v2}, Ljava/util/TreeMap$NavigableSubMap$DescendingSubMapKeyIterator;-><init>(Ljava/util/TreeMap$NavigableSubMap;Ljava/util/TreeMap$TreeMapEntry;Ljava/util/TreeMap$TreeMapEntry;)V

    return-object v0
.end method

.method keySpliterator()Ljava/util/Spliterator;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Spliterator",
            "<TK;>;"
        }
    .end annotation

    .prologue
    .line 2034
    .local p0, "this":Ljava/util/TreeMap$DescendingSubMap;, "Ljava/util/TreeMap<TK;TV;>.DescendingSubMap<TK;TV;>;"
    new-instance v0, Ljava/util/TreeMap$NavigableSubMap$DescendingSubMapKeyIterator;

    invoke-virtual {p0}, Ljava/util/TreeMap$NavigableSubMap;->absHighest()Ljava/util/TreeMap$TreeMapEntry;

    move-result-object v1

    invoke-virtual {p0}, Ljava/util/TreeMap$NavigableSubMap;->absLowFence()Ljava/util/TreeMap$TreeMapEntry;

    move-result-object v2

    invoke-direct {v0, p0, v1, v2}, Ljava/util/TreeMap$NavigableSubMap$DescendingSubMapKeyIterator;-><init>(Ljava/util/TreeMap$NavigableSubMap;Ljava/util/TreeMap$TreeMapEntry;Ljava/util/TreeMap$TreeMapEntry;)V

    return-object v0
.end method

.method subCeiling(Ljava/lang/Object;)Ljava/util/TreeMap$TreeMapEntry;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)",
            "Ljava/util/TreeMap$TreeMapEntry",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 2054
    .local p0, "this":Ljava/util/TreeMap$DescendingSubMap;, "Ljava/util/TreeMap<TK;TV;>.DescendingSubMap<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    invoke-virtual {p0, p1}, Ljava/util/TreeMap$NavigableSubMap;->absFloor(Ljava/lang/Object;)Ljava/util/TreeMap$TreeMapEntry;

    move-result-object v0

    return-object v0
.end method

.method subFloor(Ljava/lang/Object;)Ljava/util/TreeMap$TreeMapEntry;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)",
            "Ljava/util/TreeMap$TreeMapEntry",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 2056
    .local p0, "this":Ljava/util/TreeMap$DescendingSubMap;, "Ljava/util/TreeMap<TK;TV;>.DescendingSubMap<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    invoke-virtual {p0, p1}, Ljava/util/TreeMap$NavigableSubMap;->absCeiling(Ljava/lang/Object;)Ljava/util/TreeMap$TreeMapEntry;

    move-result-object v0

    return-object v0
.end method

.method subHigher(Ljava/lang/Object;)Ljava/util/TreeMap$TreeMapEntry;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)",
            "Ljava/util/TreeMap$TreeMapEntry",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 2055
    .local p0, "this":Ljava/util/TreeMap$DescendingSubMap;, "Ljava/util/TreeMap<TK;TV;>.DescendingSubMap<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    invoke-virtual {p0, p1}, Ljava/util/TreeMap$NavigableSubMap;->absLower(Ljava/lang/Object;)Ljava/util/TreeMap$TreeMapEntry;

    move-result-object v0

    return-object v0
.end method

.method subHighest()Ljava/util/TreeMap$TreeMapEntry;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/TreeMap$TreeMapEntry",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 2053
    .local p0, "this":Ljava/util/TreeMap$DescendingSubMap;, "Ljava/util/TreeMap<TK;TV;>.DescendingSubMap<TK;TV;>;"
    invoke-virtual {p0}, Ljava/util/TreeMap$NavigableSubMap;->absLowest()Ljava/util/TreeMap$TreeMapEntry;

    move-result-object v0

    return-object v0
.end method

.method subLower(Ljava/lang/Object;)Ljava/util/TreeMap$TreeMapEntry;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)",
            "Ljava/util/TreeMap$TreeMapEntry",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 2057
    .local p0, "this":Ljava/util/TreeMap$DescendingSubMap;, "Ljava/util/TreeMap<TK;TV;>.DescendingSubMap<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    invoke-virtual {p0, p1}, Ljava/util/TreeMap$NavigableSubMap;->absHigher(Ljava/lang/Object;)Ljava/util/TreeMap$TreeMapEntry;

    move-result-object v0

    return-object v0
.end method

.method subLowest()Ljava/util/TreeMap$TreeMapEntry;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/TreeMap$TreeMapEntry",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 2052
    .local p0, "this":Ljava/util/TreeMap$DescendingSubMap;, "Ljava/util/TreeMap<TK;TV;>.DescendingSubMap<TK;TV;>;"
    invoke-virtual {p0}, Ljava/util/TreeMap$NavigableSubMap;->absHighest()Ljava/util/TreeMap$TreeMapEntry;

    move-result-object v0

    return-object v0
.end method

.method public subMap(Ljava/lang/Object;ZLjava/lang/Object;Z)Ljava/util/NavigableMap;
    .locals 8
    .param p2, "fromInclusive"    # Z
    .param p4, "toInclusive"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;ZTK;Z)",
            "Ljava/util/NavigableMap",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .local p0, "this":Ljava/util/TreeMap$DescendingSubMap;, "Ljava/util/TreeMap<TK;TV;>.DescendingSubMap<TK;TV;>;"
    .local p1, "fromKey":Ljava/lang/Object;, "TK;"
    .local p3, "toKey":Ljava/lang/Object;, "TK;"
    const/4 v2, 0x0

    .line 1985
    invoke-virtual {p0, p1, p2}, Ljava/util/TreeMap$NavigableSubMap;->inRange(Ljava/lang/Object;Z)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1986
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "fromKey out of range"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1987
    :cond_0
    invoke-virtual {p0, p3, p4}, Ljava/util/TreeMap$NavigableSubMap;->inRange(Ljava/lang/Object;Z)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1988
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "toKey out of range"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1989
    :cond_1
    new-instance v0, Ljava/util/TreeMap$DescendingSubMap;

    iget-object v1, p0, Ljava/util/TreeMap$NavigableSubMap;->m:Ljava/util/TreeMap;

    move-object v3, p3

    move v4, p4

    move v5, v2

    move-object v6, p1

    move v7, p2

    invoke-direct/range {v0 .. v7}, Ljava/util/TreeMap$DescendingSubMap;-><init>(Ljava/util/TreeMap;ZLjava/lang/Object;ZZLjava/lang/Object;Z)V

    return-object v0
.end method

.method public tailMap(Ljava/lang/Object;Z)Ljava/util/NavigableMap;
    .locals 8
    .param p2, "inclusive"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;Z)",
            "Ljava/util/NavigableMap",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .local p0, "this":Ljava/util/TreeMap$DescendingSubMap;, "Ljava/util/TreeMap<TK;TV;>.DescendingSubMap<TK;TV;>;"
    .local p1, "fromKey":Ljava/lang/Object;, "TK;"
    const/4 v5, 0x0

    .line 2011
    invoke-virtual {p0, p1}, Ljava/util/TreeMap$NavigableSubMap;->inRange(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-boolean v0, p0, Ljava/util/TreeMap$NavigableSubMap;->toEnd:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Ljava/util/TreeMap$NavigableSubMap;->m:Ljava/util/TreeMap;

    iget-object v1, p0, Ljava/util/TreeMap$NavigableSubMap;->hi:Ljava/lang/Object;

    invoke-virtual {v0, p1, v1}, Ljava/util/TreeMap;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    if-eqz v0, :cond_1

    .line 2014
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "fromKey out of range"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2012
    :cond_1
    iget-boolean v0, p0, Ljava/util/TreeMap$NavigableSubMap;->hiInclusive:Z

    .line 2011
    if-nez v0, :cond_0

    if-nez p2, :cond_0

    .line 2015
    :cond_2
    new-instance v0, Ljava/util/TreeMap$DescendingSubMap;

    iget-object v1, p0, Ljava/util/TreeMap$NavigableSubMap;->m:Ljava/util/TreeMap;

    .line 2016
    iget-boolean v2, p0, Ljava/util/TreeMap$NavigableSubMap;->fromStart:Z

    iget-object v3, p0, Ljava/util/TreeMap$NavigableSubMap;->lo:Ljava/lang/Object;

    iget-boolean v4, p0, Ljava/util/TreeMap$NavigableSubMap;->loInclusive:Z

    move-object v6, p1

    move v7, p2

    .line 2015
    invoke-direct/range {v0 .. v7}, Ljava/util/TreeMap$DescendingSubMap;-><init>(Ljava/util/TreeMap;ZLjava/lang/Object;ZZLjava/lang/Object;Z)V

    return-object v0
.end method
