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
    .param p1, "itemType"    # Ljava/lang/Class;
    .param p2, "itemFieldName"    # Ljava/lang/String;

    .prologue
    .line 268
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 269
    if-nez p1, :cond_0

    const-class p1, Ljava/lang/Object;

    .end local p1    # "itemType":Ljava/lang/Class;
    :cond_0
    iput-object p1, p0, Lcom/thoughtworks/xstream/mapper/ImplicitCollectionMapper$NamedItemType;->itemType:Ljava/lang/Class;

    .line 270
    iput-object p2, p0, Lcom/thoughtworks/xstream/mapper/ImplicitCollectionMapper$NamedItemType;->itemFieldName:Ljava/lang/String;

    .line 271
    return-void
.end method

.method private static isEquals(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1
    .param p0, "a"    # Ljava/lang/Object;
    .param p1, "b"    # Ljava/lang/Object;

    .prologue
    .line 283
    if-nez p0, :cond_1

    .line 284
    if-nez p1, :cond_0

    const/4 v0, 0x1

    .line 286
    :goto_0
    return v0

    .line 284
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 286
    :cond_1
    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x0

    .line 274
    instance-of v2, p1, Lcom/thoughtworks/xstream/mapper/ImplicitCollectionMapper$NamedItemType;

    if-eqz v2, :cond_0

    move-object v0, p1

    .line 275
    check-cast v0, Lcom/thoughtworks/xstream/mapper/ImplicitCollectionMapper$NamedItemType;

    .line 276
    .local v0, "b":Lcom/thoughtworks/xstream/mapper/ImplicitCollectionMapper$NamedItemType;
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

    .line 278
    .end local v0    # "b":Lcom/thoughtworks/xstream/mapper/ImplicitCollectionMapper$NamedItemType;
    :cond_0
    return v1
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 291
    iget-object v1, p0, Lcom/thoughtworks/xstream/mapper/ImplicitCollectionMapper$NamedItemType;->itemType:Ljava/lang/Class;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    shl-int/lit8 v0, v1, 0x7

    .line 292
    .local v0, "hash":I
    iget-object v1, p0, Lcom/thoughtworks/xstream/mapper/ImplicitCollectionMapper$NamedItemType;->itemFieldName:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 293
    iget-object v1, p0, Lcom/thoughtworks/xstream/mapper/ImplicitCollectionMapper$NamedItemType;->itemFieldName:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 295
    :cond_0
    return v0
.end method
