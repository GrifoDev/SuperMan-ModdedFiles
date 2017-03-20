.class public Lcom/thoughtworks/xstream/converters/javabean/ComparingPropertySorter;
.super Ljava/lang/Object;
.source "ComparingPropertySorter.java"

# interfaces
.implements Lcom/thoughtworks/xstream/converters/javabean/PropertySorter;


# instance fields
.field private final comparator:Ljava/util/Comparator;


# direct methods
.method public constructor <init>(Ljava/util/Comparator;)V
    .locals 0
    .param p1, "propertyNameComparator"    # Ljava/util/Comparator;

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-object p1, p0, Lcom/thoughtworks/xstream/converters/javabean/ComparingPropertySorter;->comparator:Ljava/util/Comparator;

    .line 29
    return-void
.end method


# virtual methods
.method public sort(Ljava/lang/Class;Ljava/util/Map;)Ljava/util/Map;
    .locals 2
    .param p1, "type"    # Ljava/lang/Class;
    .param p2, "nameMap"    # Ljava/util/Map;

    .prologue
    .line 32
    new-instance v0, Ljava/util/TreeMap;

    iget-object v1, p0, Lcom/thoughtworks/xstream/converters/javabean/ComparingPropertySorter;->comparator:Ljava/util/Comparator;

    invoke-direct {v0, v1}, Ljava/util/TreeMap;-><init>(Ljava/util/Comparator;)V

    .line 33
    .local v0, "map":Ljava/util/TreeMap;
    invoke-virtual {v0, p2}, Ljava/util/TreeMap;->putAll(Ljava/util/Map;)V

    .line 34
    return-object v0
.end method
