.class public Lcom/cmdm/control/bean/Category;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lcom/thoughtworks/xstream/annotations/XStreamAlias;
    value = "Category"
.end annotation


# instance fields
.field public categoryId:Ljava/lang/String;
    .annotation runtime Lcom/thoughtworks/xstream/annotations/XStreamAlias;
        value = "CategoryId"
    .end annotation
.end field

.field public categoryName:Ljava/lang/String;
    .annotation runtime Lcom/thoughtworks/xstream/annotations/XStreamAlias;
        value = "CategoryName"
    .end annotation
.end field

.field public count:Ljava/lang/String;
    .annotation runtime Lcom/thoughtworks/xstream/annotations/XStreamAlias;
        value = "Count"
    .end annotation
.end field

.field public coverUrl:Ljava/lang/String;
    .annotation runtime Lcom/thoughtworks/xstream/annotations/XStreamAlias;
        value = "CoverUrl"
    .end annotation
.end field

.field public label:Ljava/lang/String;
    .annotation runtime Lcom/thoughtworks/xstream/annotations/XStreamAlias;
        value = "Label"
    .end annotation
.end field

.field public subclass:Ljava/lang/String;
    .annotation runtime Lcom/thoughtworks/xstream/annotations/XStreamAsAttribute;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getCategoryId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lcom/cmdm/control/bean/Category;->categoryId:Ljava/lang/String;

    return-object v0
.end method

.method public getCategoryName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lcom/cmdm/control/bean/Category;->categoryName:Ljava/lang/String;

    return-object v0
.end method

.method public getCount()Ljava/lang/String;
    .locals 1

    .prologue
    .line 94
    iget-object v0, p0, Lcom/cmdm/control/bean/Category;->count:Ljava/lang/String;

    return-object v0
.end method

.method public getCoverUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 122
    iget-object v0, p0, Lcom/cmdm/control/bean/Category;->coverUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getLabel()Ljava/lang/String;
    .locals 1

    .prologue
    .line 108
    iget-object v0, p0, Lcom/cmdm/control/bean/Category;->label:Ljava/lang/String;

    return-object v0
.end method

.method public getSubclass()Ljava/lang/String;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/cmdm/control/bean/Category;->subclass:Ljava/lang/String;

    return-object v0
.end method

.method public setCategoryId(Ljava/lang/String;)V
    .locals 0
    .param p1, "categoryId"    # Ljava/lang/String;

    .prologue
    .line 73
    iput-object p1, p0, Lcom/cmdm/control/bean/Category;->categoryId:Ljava/lang/String;

    .line 74
    return-void
.end method

.method public setCategoryName(Ljava/lang/String;)V
    .locals 0
    .param p1, "categoryName"    # Ljava/lang/String;

    .prologue
    .line 87
    iput-object p1, p0, Lcom/cmdm/control/bean/Category;->categoryName:Ljava/lang/String;

    .line 88
    return-void
.end method

.method public setCount(Ljava/lang/String;)V
    .locals 0
    .param p1, "count"    # Ljava/lang/String;

    .prologue
    .line 101
    iput-object p1, p0, Lcom/cmdm/control/bean/Category;->count:Ljava/lang/String;

    .line 102
    return-void
.end method

.method public setCoverUrl(Ljava/lang/String;)V
    .locals 0
    .param p1, "coverUrl"    # Ljava/lang/String;

    .prologue
    .line 129
    iput-object p1, p0, Lcom/cmdm/control/bean/Category;->coverUrl:Ljava/lang/String;

    .line 130
    return-void
.end method

.method public setLabel(Ljava/lang/String;)V
    .locals 0
    .param p1, "label"    # Ljava/lang/String;

    .prologue
    .line 115
    iput-object p1, p0, Lcom/cmdm/control/bean/Category;->label:Ljava/lang/String;

    .line 116
    return-void
.end method

.method public setSubclass(Ljava/lang/String;)V
    .locals 0
    .param p1, "subclass"    # Ljava/lang/String;

    .prologue
    .line 59
    iput-object p1, p0, Lcom/cmdm/control/bean/Category;->subclass:Ljava/lang/String;

    .line 60
    return-void
.end method
