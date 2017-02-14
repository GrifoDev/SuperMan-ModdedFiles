.class Lcom/thoughtworks/xstream/converters/reflection/SortableFieldKeySorter$FieldComparator;
.super Ljava/lang/Object;
.source "SortableFieldKeySorter.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/thoughtworks/xstream/converters/reflection/SortableFieldKeySorter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FieldComparator"
.end annotation


# instance fields
.field private final fieldOrder:[Ljava/lang/String;

.field final synthetic this$0:Lcom/thoughtworks/xstream/converters/reflection/SortableFieldKeySorter;


# direct methods
.method public constructor <init>(Lcom/thoughtworks/xstream/converters/reflection/SortableFieldKeySorter;[Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/thoughtworks/xstream/converters/reflection/SortableFieldKeySorter$FieldComparator;->this$0:Lcom/thoughtworks/xstream/converters/reflection/SortableFieldKeySorter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/thoughtworks/xstream/converters/reflection/SortableFieldKeySorter$FieldComparator;->fieldOrder:[Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 4

    move-object v0, p1

    check-cast v0, Lcom/thoughtworks/xstream/converters/reflection/FieldKey;

    move-object v1, p2

    check-cast v1, Lcom/thoughtworks/xstream/converters/reflection/FieldKey;

    invoke-virtual {v0}, Lcom/thoughtworks/xstream/converters/reflection/FieldKey;->getFieldName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Lcom/thoughtworks/xstream/converters/reflection/FieldKey;->getFieldName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Lcom/thoughtworks/xstream/converters/reflection/SortableFieldKeySorter$FieldComparator;->compare(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    return v2
.end method

.method public compare(Ljava/lang/String;Ljava/lang/String;)I
    .locals 5

    const/4 v4, -0x1

    const/4 v0, -0x1

    const/4 v2, -0x1

    const/4 v1, 0x0

    :goto_0
    iget-object v3, p0, Lcom/thoughtworks/xstream/converters/reflection/SortableFieldKeySorter$FieldComparator;->fieldOrder:[Ljava/lang/String;

    array-length v3, v3

    if-ge v1, v3, :cond_2

    iget-object v3, p0, Lcom/thoughtworks/xstream/converters/reflection/SortableFieldKeySorter$FieldComparator;->fieldOrder:[Ljava/lang/String;

    aget-object v3, v3, v1

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    move v0, v1

    :cond_0
    iget-object v3, p0, Lcom/thoughtworks/xstream/converters/reflection/SortableFieldKeySorter$FieldComparator;->fieldOrder:[Ljava/lang/String;

    aget-object v3, v3, v1

    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    move v2, v1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    if-eq v0, v4, :cond_3

    if-ne v2, v4, :cond_4

    :cond_3
    new-instance v3, Lcom/thoughtworks/xstream/io/StreamException;

    const-string v4, "You have not given XStream a list of all fields to be serialized."

    invoke-direct {v3, v4}, Lcom/thoughtworks/xstream/io/StreamException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_4
    sub-int v3, v0, v2

    return v3
.end method
