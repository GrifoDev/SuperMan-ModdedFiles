.class Lcom/thoughtworks/xstream/converters/reflection/SortableFieldKeySorter$FieldComparator;
.super Ljava/lang/Object;

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
    .locals 2

    check-cast p1, Lcom/thoughtworks/xstream/converters/reflection/FieldKey;

    check-cast p2, Lcom/thoughtworks/xstream/converters/reflection/FieldKey;

    invoke-virtual {p1}, Lcom/thoughtworks/xstream/converters/reflection/FieldKey;->getFieldName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Lcom/thoughtworks/xstream/converters/reflection/FieldKey;->getFieldName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/thoughtworks/xstream/converters/reflection/SortableFieldKeySorter$FieldComparator;->compare(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public compare(Ljava/lang/String;Ljava/lang/String;)I
    .locals 5

    const/4 v2, -0x1

    const/4 v0, 0x0

    move v1, v2

    move v3, v2

    :goto_0
    iget-object v4, p0, Lcom/thoughtworks/xstream/converters/reflection/SortableFieldKeySorter$FieldComparator;->fieldOrder:[Ljava/lang/String;

    array-length v4, v4

    if-ge v0, v4, :cond_2

    iget-object v4, p0, Lcom/thoughtworks/xstream/converters/reflection/SortableFieldKeySorter$FieldComparator;->fieldOrder:[Ljava/lang/String;

    aget-object v4, v4, v0

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    move v3, v0

    :cond_0
    iget-object v4, p0, Lcom/thoughtworks/xstream/converters/reflection/SortableFieldKeySorter$FieldComparator;->fieldOrder:[Ljava/lang/String;

    aget-object v4, v4, v0

    invoke-virtual {v4, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    move v1, v0

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    if-eq v3, v2, :cond_3

    if-ne v1, v2, :cond_4

    :cond_3
    new-instance v0, Lcom/thoughtworks/xstream/io/StreamException;

    const-string v1, "You have not given XStream a list of all fields to be serialized."

    invoke-direct {v0, v1}, Lcom/thoughtworks/xstream/io/StreamException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    sub-int v0, v3, v1

    return v0
.end method
