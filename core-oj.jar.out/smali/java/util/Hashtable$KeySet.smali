.class Ljava/util/Hashtable$KeySet;
.super Ljava/util/AbstractSet;
.source "Hashtable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/Hashtable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "KeySet"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/AbstractSet",
        "<TK;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Ljava/util/Hashtable;


# direct methods
.method private constructor <init>(Ljava/util/Hashtable;)V
    .locals 0

    .prologue
    .line 637
    .local p0, "this":Ljava/util/Hashtable$KeySet;, "Ljava/util/Hashtable<TK;TV;>.KeySet;"
    .local p1, "this$0":Ljava/util/Hashtable;, "Ljava/util/Hashtable<TK;TV;>;"
    iput-object p1, p0, Ljava/util/Hashtable$KeySet;->this$0:Ljava/util/Hashtable;

    invoke-direct {p0}, Ljava/util/AbstractSet;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Ljava/util/Hashtable;Ljava/util/Hashtable$KeySet;)V
    .locals 0
    .param p1, "this$0"    # Ljava/util/Hashtable;

    .prologue
    .local p0, "this":Ljava/util/Hashtable$KeySet;, "Ljava/util/Hashtable<TK;TV;>.KeySet;"
    invoke-direct {p0, p1}, Ljava/util/Hashtable$KeySet;-><init>(Ljava/util/Hashtable;)V

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    .prologue
    .line 651
    .local p0, "this":Ljava/util/Hashtable$KeySet;, "Ljava/util/Hashtable<TK;TV;>.KeySet;"
    iget-object v0, p0, Ljava/util/Hashtable$KeySet;->this$0:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->clear()V

    .line 650
    return-void
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .line 645
    .local p0, "this":Ljava/util/Hashtable$KeySet;, "Ljava/util/Hashtable<TK;TV;>.KeySet;"
    iget-object v0, p0, Ljava/util/Hashtable$KeySet;->this$0:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<TK;>;"
        }
    .end annotation

    .prologue
    .line 639
    .local p0, "this":Ljava/util/Hashtable$KeySet;, "Ljava/util/Hashtable<TK;TV;>.KeySet;"
    iget-object v0, p0, Ljava/util/Hashtable$KeySet;->this$0:Ljava/util/Hashtable;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/util/Hashtable;->-wrap1(Ljava/util/Hashtable;I)Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .line 648
    .local p0, "this":Ljava/util/Hashtable$KeySet;, "Ljava/util/Hashtable<TK;TV;>.KeySet;"
    iget-object v0, p0, Ljava/util/Hashtable$KeySet;->this$0:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public size()I
    .locals 1

    .prologue
    .line 642
    .local p0, "this":Ljava/util/Hashtable$KeySet;, "Ljava/util/Hashtable<TK;TV;>.KeySet;"
    iget-object v0, p0, Ljava/util/Hashtable$KeySet;->this$0:Ljava/util/Hashtable;

    invoke-static {v0}, Ljava/util/Hashtable;->-get0(Ljava/util/Hashtable;)I

    move-result v0

    return v0
.end method
