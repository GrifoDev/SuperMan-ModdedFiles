.class Lcom/thoughtworks/xstream/mapper/ImplicitCollectionMapper$NamedItemType;
.super Ljava/lang/Object;
.source "ImplicitCollectionMapper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/thoughtworks/xstream/mapper/ImplicitCollectionMapper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "NamedItemType"
.end annotation


# instance fields
.field itemFieldName:Ljava/lang/String;

.field itemType:Ljava/lang/Class;


# direct methods
.method constructor <init>(Ljava/lang/Class;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-nez p1, :cond_0

    const-class p1, Ljava/lang/Object;

    :cond_0
    iput-object p1, p0, Lcom/thoughtworks/xstream/mapper/ImplicitCollectionMapper$NamedItemType;->itemType:Ljava/lang/Class;

    iput-object p2, p0, Lcom/thoughtworks/xstream/mapper/ImplicitCollectionMapper$NamedItemType;->itemFieldName:Ljava/lang/String;

    return-void
.end method

.method private static isEquals(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1

    if-nez p0, :cond_1

    if-nez p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v1, 0x0

    instance-of v2, p1, Lcom/thoughtworks/xstream/mapper/ImplicitCollectionMapper$NamedItemType;

    if-eqz v2, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/thoughtworks/xstream/mapper/ImplicitCollectionMapper$NamedItemType;

    iget-object v2, p0, Lcom/thoughtworks/xstream/mapper/ImplicitCollectionMapper$NamedItemType;->itemType:Ljava/lang/Class;

    iget-object v3, v0, Lcom/thoughtworks/xstream/mapper/ImplicitCollectionMapper$NamedItemType;->itemType:Ljava/lang/Class;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/thoughtworks/xstream/mapper/ImplicitCollectionMapper$NamedItemType;->itemFieldName:Ljava/lang/String;

    iget-object v3, v0, Lcom/thoughtworks/xstream/mapper/ImplicitCollectionMapper$NamedItemType;->itemFieldName:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/thoughtworks/xstream/mapper/ImplicitCollectionMapper$NamedItemType;->isEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public hashCode()I
    .locals 2

    iget-object v1, p0, Lcom/thoughtworks/xstream/mapper/ImplicitCollectionMapper$NamedItemType;->itemType:Ljava/lang/Class;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    shl-int/lit8 v0, v1, 0x7

    iget-object v1, p0, Lcom/thoughtworks/xstream/mapper/ImplicitCollectionMapper$NamedItemType;->itemFieldName:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/thoughtworks/xstream/mapper/ImplicitCollectionMapper$NamedItemType;->itemFieldName:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    :cond_0
    return v0
.end method
