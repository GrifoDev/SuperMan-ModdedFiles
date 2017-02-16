.class public Lcom/thoughtworks/xstream/converters/javabean/NativePropertySorter;
.super Ljava/lang/Object;
.source "NativePropertySorter.java"

# interfaces
.implements Lcom/thoughtworks/xstream/converters/javabean/PropertySorter;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public sort(Ljava/lang/Class;Ljava/util/Map;)Ljava/util/Map;
    .locals 0
    .param p1, "type"    # Ljava/lang/Class;
    .param p2, "nameMap"    # Ljava/util/Map;

    .prologue
    .line 26
    return-object p2
.end method
