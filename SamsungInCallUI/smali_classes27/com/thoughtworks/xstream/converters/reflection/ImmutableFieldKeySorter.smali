.class public Lcom/thoughtworks/xstream/converters/reflection/ImmutableFieldKeySorter;
.super Ljava/lang/Object;
.source "ImmutableFieldKeySorter.java"

# interfaces
.implements Lcom/thoughtworks/xstream/converters/reflection/FieldKeySorter;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public sort(Ljava/lang/Class;Ljava/util/Map;)Ljava/util/Map;
    .locals 0
    .param p1, "type"    # Ljava/lang/Class;
    .param p2, "keyedByFieldKey"    # Ljava/util/Map;

    .prologue
    .line 24
    return-object p2
.end method
