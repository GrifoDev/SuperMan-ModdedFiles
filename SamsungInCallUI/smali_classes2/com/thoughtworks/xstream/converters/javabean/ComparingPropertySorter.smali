.class public Lcom/thoughtworks/xstream/converters/javabean/ComparingPropertySorter;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/thoughtworks/xstream/converters/javabean/PropertySorter;


# instance fields
.field private final comparator:Ljava/util/Comparator;


# direct methods
.method public constructor <init>(Ljava/util/Comparator;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/thoughtworks/xstream/converters/javabean/ComparingPropertySorter;->comparator:Ljava/util/Comparator;

    return-void
.end method


# virtual methods
.method public sort(Ljava/lang/Class;Ljava/util/Map;)Ljava/util/Map;
    .locals 2

    new-instance v0, Ljava/util/TreeMap;

    iget-object v1, p0, Lcom/thoughtworks/xstream/converters/javabean/ComparingPropertySorter;->comparator:Ljava/util/Comparator;

    invoke-direct {v0, v1}, Ljava/util/TreeMap;-><init>(Ljava/util/Comparator;)V

    invoke-virtual {v0, p2}, Ljava/util/TreeMap;->putAll(Ljava/util/Map;)V

    return-object v0
.end method
