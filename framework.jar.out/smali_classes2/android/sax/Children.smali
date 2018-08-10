.class Landroid/sax/Children;
.super Ljava/lang/Object;
.source "Children.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/sax/Children$Child;
    }
.end annotation


# instance fields
.field children:[Landroid/sax/Children$Child;


# direct methods
.method constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x10

    new-array v0, v0, [Landroid/sax/Children$Child;

    iput-object v0, p0, Landroid/sax/Children;->children:[Landroid/sax/Children$Child;

    return-void
.end method


# virtual methods
.method get(Ljava/lang/String;Ljava/lang/String;)Landroid/sax/Element;
    .locals 6

    const/4 v5, 0x0

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v3

    mul-int/lit8 v3, v3, 0x1f

    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result v4

    add-int v1, v3, v4

    and-int/lit8 v2, v1, 0xf

    iget-object v3, p0, Landroid/sax/Children;->children:[Landroid/sax/Children$Child;

    aget-object v0, v3, v2

    if-nez v0, :cond_1

    return-object v5

    :cond_0
    iget-object v0, v0, Landroid/sax/Children$Child;->next:Landroid/sax/Children$Child;

    if-eqz v0, :cond_2

    :cond_1
    iget v3, v0, Landroid/sax/Children$Child;->hash:I

    if-ne v3, v1, :cond_0

    iget-object v3, v0, Landroid/sax/Children$Child;->uri:Ljava/lang/String;

    invoke-virtual {v3, p1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, v0, Landroid/sax/Children$Child;->localName:Ljava/lang/String;

    invoke-virtual {v3, p2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_0

    return-object v0

    :cond_2
    return-object v5
.end method

.method getOrCreate(Landroid/sax/Element;Ljava/lang/String;Ljava/lang/String;)Landroid/sax/Element;
    .locals 8

    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result v1

    mul-int/lit8 v1, v1, 0x1f

    invoke-virtual {p3}, Ljava/lang/String;->hashCode()I

    move-result v2

    add-int v5, v1, v2

    and-int/lit8 v6, v5, 0xf

    iget-object v1, p0, Landroid/sax/Children;->children:[Landroid/sax/Children$Child;

    aget-object v0, v1, v6

    if-nez v0, :cond_1

    new-instance v0, Landroid/sax/Children$Child;

    iget v1, p1, Landroid/sax/Element;->depth:I

    add-int/lit8 v4, v1, 0x1

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v5}, Landroid/sax/Children$Child;-><init>(Landroid/sax/Element;Ljava/lang/String;Ljava/lang/String;II)V

    iget-object v1, p0, Landroid/sax/Children;->children:[Landroid/sax/Children$Child;

    aput-object v0, v1, v6

    return-object v0

    :cond_0
    move-object v7, v0

    iget-object v0, v0, Landroid/sax/Children$Child;->next:Landroid/sax/Children$Child;

    if-eqz v0, :cond_2

    :cond_1
    iget v1, v0, Landroid/sax/Children$Child;->hash:I

    if-ne v1, v5, :cond_0

    iget-object v1, v0, Landroid/sax/Children$Child;->uri:Ljava/lang/String;

    invoke-virtual {v1, p2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, v0, Landroid/sax/Children$Child;->localName:Ljava/lang/String;

    invoke-virtual {v1, p3}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_0

    return-object v0

    :cond_2
    new-instance v0, Landroid/sax/Children$Child;

    iget v1, p1, Landroid/sax/Element;->depth:I

    add-int/lit8 v4, v1, 0x1

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v5}, Landroid/sax/Children$Child;-><init>(Landroid/sax/Element;Ljava/lang/String;Ljava/lang/String;II)V

    iput-object v0, v7, Landroid/sax/Children$Child;->next:Landroid/sax/Children$Child;

    return-object v0
.end method
