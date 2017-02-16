.class public Landroid/sec/clipboard/data/list/ClipboardDataUriList;
.super Landroid/sec/clipboard/data/ClipboardData;
.source "ClipboardDataUriList.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field protected static final serialVersionUID:J = 0x1L


# instance fields
.field protected mUriArray:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 46
    invoke-direct {p0}, Landroid/sec/clipboard/data/ClipboardData;-><init>()V

    .line 45
    return-void
.end method


# virtual methods
.method public restoreToSemClipData()Lcom/samsung/android/content/clipboard/data/SemClipData;
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 51
    iget-object v5, p0, Landroid/sec/clipboard/data/list/ClipboardDataUriList;->mUriArray:Ljava/util/ArrayList;

    if-nez v5, :cond_0

    .line 52
    return-object v6

    .line 55
    :cond_0
    iget-object v5, p0, Landroid/sec/clipboard/data/list/ClipboardDataUriList;->mUriArray:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-gtz v5, :cond_1

    .line 56
    return-object v6

    .line 59
    :cond_1
    new-instance v1, Lcom/samsung/android/content/clipboard/data/SemUriListClipData;

    invoke-direct {v1}, Lcom/samsung/android/content/clipboard/data/SemUriListClipData;-><init>()V

    .line 60
    .local v1, "data":Lcom/samsung/android/content/clipboard/data/SemClipData;
    invoke-virtual {p0, v1}, Landroid/sec/clipboard/data/ClipboardData;->restoreBaseData(Lcom/samsung/android/content/clipboard/data/SemClipData;)V

    .line 62
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 63
    .local v4, "uriList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/net/Uri;>;"
    iget-object v5, p0, Landroid/sec/clipboard/data/list/ClipboardDataUriList;->mUriArray:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 64
    .local v0, "N":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_2

    .line 65
    iget-object v5, p0, Landroid/sec/clipboard/data/list/ClipboardDataUriList;->mUriArray:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 66
    .local v3, "uri":Ljava/lang/String;
    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 64
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .end local v3    # "uri":Ljava/lang/String;
    :cond_2
    move-object v5, v1

    .line 68
    nop

    nop

    invoke-virtual {v5, v4}, Lcom/samsung/android/content/clipboard/data/SemUriListClipData;->setUriList(Ljava/util/ArrayList;)Z

    .line 69
    return-object v1
.end method
