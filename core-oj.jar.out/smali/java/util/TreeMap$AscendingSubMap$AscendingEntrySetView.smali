.class final Ljava/util/TreeMap$AscendingSubMap$AscendingEntrySetView;
.super Ljava/util/TreeMap$NavigableSubMap$EntrySetView;
.source "TreeMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/TreeMap$AscendingSubMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "AscendingEntrySetView"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/TreeMap$NavigableSubMap",
        "<TK;TV;>.EntrySetView;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Ljava/util/TreeMap$AscendingSubMap;


# direct methods
.method constructor <init>(Ljava/util/TreeMap$AscendingSubMap;)V
    .locals 0

    iput-object p1, p0, Ljava/util/TreeMap$AscendingSubMap$AscendingEntrySetView;->this$1:Ljava/util/TreeMap$AscendingSubMap;

    invoke-direct {p0, p1}, Ljava/util/TreeMap$NavigableSubMap$EntrySetView;-><init>(Ljava/util/TreeMap$NavigableSubMap;)V

    return-void
.end method


# virtual methods
.method public iterator()Ljava/util/Iterator;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;>;"
        }
    .end annotation

    new-instance v0, Ljava/util/TreeMap$NavigableSubMap$SubMapEntryIterator;

    iget-object v1, p0, Ljava/util/TreeMap$AscendingSubMap$AscendingEntrySetView;->this$1:Ljava/util/TreeMap$AscendingSubMap;

    iget-object v2, p0, Ljava/util/TreeMap$AscendingSubMap$AscendingEntrySetView;->this$1:Ljava/util/TreeMap$AscendingSubMap;

    invoke-virtual {v2}, Ljava/util/TreeMap$AscendingSubMap;->absLowest()Ljava/util/TreeMap$TreeMapEntry;

    move-result-object v2

    iget-object v3, p0, Ljava/util/TreeMap$AscendingSubMap$AscendingEntrySetView;->this$1:Ljava/util/TreeMap$AscendingSubMap;

    invoke-virtual {v3}, Ljava/util/TreeMap$AscendingSubMap;->absHighFence()Ljava/util/TreeMap$TreeMapEntry;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Ljava/util/TreeMap$NavigableSubMap$SubMapEntryIterator;-><init>(Ljava/util/TreeMap$NavigableSubMap;Ljava/util/TreeMap$TreeMapEntry;Ljava/util/TreeMap$TreeMapEntry;)V

    return-object v0
.end method
