.class Ljava/util/Hashtable$ValueCollection;
.super Ljava/util/AbstractCollection;
.source "Hashtable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/Hashtable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ValueCollection"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/AbstractCollection",
        "<TV;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Ljava/util/Hashtable;


# direct methods
.method private constructor <init>(Ljava/util/Hashtable;)V
    .locals 0

    .prologue
    .line 758
    .local p0, "this":Ljava/util/Hashtable$ValueCollection;, "Ljava/util/Hashtable<TK;TV;>.ValueCollection;"
    .local p1, "this$0":Ljava/util/Hashtable;, "Ljava/util/Hashtable<TK;TV;>;"
    iput-object p1, p0, Ljava/util/Hashtable$ValueCollection;->this$0:Ljava/util/Hashtable;

    invoke-direct {p0}, Ljava/util/AbstractCollection;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Ljava/util/Hashtable;Ljava/util/Hashtable$ValueCollection;)V
    .locals 0
    .param p1, "this$0"    # Ljava/util/Hashtable;

    .prologue
    .local p0, "this":Ljava/util/Hashtable$ValueCollection;, "Ljava/util/Hashtable<TK;TV;>.ValueCollection;"
    invoke-direct {p0, p1}, Ljava/util/Hashtable$ValueCollection;-><init>(Ljava/util/Hashtable;)V

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    .prologue
    .line 769
    .local p0, "this":Ljava/util/Hashtable$ValueCollection;, "Ljava/util/Hashtable<TK;TV;>.ValueCollection;"
    iget-object v0, p0, Ljava/util/Hashtable$ValueCollection;->this$0:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->clear()V

    .line 768
    return-void
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .line 766
    .local p0, "this":Ljava/util/Hashtable$ValueCollection;, "Ljava/util/Hashtable<TK;TV;>.ValueCollection;"
    iget-object v0, p0, Ljava/util/Hashtable$ValueCollection;->this$0:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->containsValue(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<TV;>;"
        }
    .end annotation

    .prologue
    .line 760
    .local p0, "this":Ljava/util/Hashtable$ValueCollection;, "Ljava/util/Hashtable<TK;TV;>.ValueCollection;"
    iget-object v0, p0, Ljava/util/Hashtable$ValueCollection;->this$0:Ljava/util/Hashtable;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Ljava/util/Hashtable;->-wrap1(Ljava/util/Hashtable;I)Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public size()I
    .locals 1

    .prologue
    .line 763
    .local p0, "this":Ljava/util/Hashtable$ValueCollection;, "Ljava/util/Hashtable<TK;TV;>.ValueCollection;"
    iget-object v0, p0, Ljava/util/Hashtable$ValueCollection;->this$0:Ljava/util/Hashtable;

    invoke-static {v0}, Ljava/util/Hashtable;->-get0(Ljava/util/Hashtable;)I

    move-result v0

    return v0
.end method
