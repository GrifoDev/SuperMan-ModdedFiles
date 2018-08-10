.class Landroid/widget/ArrayAdapter$ArrayFilter;
.super Landroid/widget/Filter;
.source "ArrayAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/ArrayAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ArrayFilter"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/widget/ArrayAdapter;


# direct methods
.method private constructor <init>(Landroid/widget/ArrayAdapter;)V
    .locals 0

    iput-object p1, p0, Landroid/widget/ArrayAdapter$ArrayFilter;->this$0:Landroid/widget/ArrayAdapter;

    invoke-direct {p0}, Landroid/widget/Filter;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/widget/ArrayAdapter;Landroid/widget/ArrayAdapter$ArrayFilter;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/widget/ArrayAdapter$ArrayFilter;-><init>(Landroid/widget/ArrayAdapter;)V

    return-void
.end method


# virtual methods
.method protected performFiltering(Ljava/lang/CharSequence;)Landroid/widget/Filter$FilterResults;
    .locals 15

    new-instance v5, Landroid/widget/Filter$FilterResults;

    invoke-direct {v5}, Landroid/widget/Filter$FilterResults;-><init>()V

    iget-object v11, p0, Landroid/widget/ArrayAdapter$ArrayFilter;->this$0:Landroid/widget/ArrayAdapter;

    invoke-static {v11}, Landroid/widget/ArrayAdapter;->-get2(Landroid/widget/ArrayAdapter;)Ljava/util/ArrayList;

    move-result-object v11

    if-nez v11, :cond_0

    iget-object v11, p0, Landroid/widget/ArrayAdapter$ArrayFilter;->this$0:Landroid/widget/ArrayAdapter;

    invoke-static {v11}, Landroid/widget/ArrayAdapter;->-get0(Landroid/widget/ArrayAdapter;)Ljava/lang/Object;

    move-result-object v12

    monitor-enter v12

    :try_start_0
    iget-object v11, p0, Landroid/widget/ArrayAdapter$ArrayFilter;->this$0:Landroid/widget/ArrayAdapter;

    new-instance v13, Ljava/util/ArrayList;

    iget-object v14, p0, Landroid/widget/ArrayAdapter$ArrayFilter;->this$0:Landroid/widget/ArrayAdapter;

    invoke-static {v14}, Landroid/widget/ArrayAdapter;->-get1(Landroid/widget/ArrayAdapter;)Ljava/util/List;

    move-result-object v14

    invoke-direct {v13, v14}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {v11, v13}, Landroid/widget/ArrayAdapter;->-set1(Landroid/widget/ArrayAdapter;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v12

    :cond_0
    if-eqz p1, :cond_1

    invoke-interface/range {p1 .. p1}, Ljava/lang/CharSequence;->length()I

    move-result v11

    if-nez v11, :cond_2

    :cond_1
    iget-object v11, p0, Landroid/widget/ArrayAdapter$ArrayFilter;->this$0:Landroid/widget/ArrayAdapter;

    invoke-static {v11}, Landroid/widget/ArrayAdapter;->-get0(Landroid/widget/ArrayAdapter;)Ljava/lang/Object;

    move-result-object v12

    monitor-enter v12

    :try_start_1
    new-instance v2, Ljava/util/ArrayList;

    iget-object v11, p0, Landroid/widget/ArrayAdapter$ArrayFilter;->this$0:Landroid/widget/ArrayAdapter;

    invoke-static {v11}, Landroid/widget/ArrayAdapter;->-get2(Landroid/widget/ArrayAdapter;)Ljava/util/ArrayList;

    move-result-object v11

    invoke-direct {v2, v11}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    monitor-exit v12

    iput-object v2, v5, Landroid/widget/Filter$FilterResults;->values:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v11

    iput v11, v5, Landroid/widget/Filter$FilterResults;->count:I

    :goto_0
    return-object v5

    :catchall_0
    move-exception v11

    monitor-exit v12

    throw v11

    :catchall_1
    move-exception v11

    monitor-exit v12

    throw v11

    :cond_2
    invoke-interface/range {p1 .. p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    iget-object v11, p0, Landroid/widget/ArrayAdapter$ArrayFilter;->this$0:Landroid/widget/ArrayAdapter;

    invoke-static {v11}, Landroid/widget/ArrayAdapter;->-get0(Landroid/widget/ArrayAdapter;)Ljava/lang/Object;

    move-result-object v12

    monitor-enter v12

    :try_start_2
    new-instance v8, Ljava/util/ArrayList;

    iget-object v11, p0, Landroid/widget/ArrayAdapter$ArrayFilter;->this$0:Landroid/widget/ArrayAdapter;

    invoke-static {v11}, Landroid/widget/ArrayAdapter;->-get2(Landroid/widget/ArrayAdapter;)Ljava/util/ArrayList;

    move-result-object v11

    invoke-direct {v8, v11}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    monitor-exit v12

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    :goto_1
    if-ge v1, v0, :cond_6

    invoke-virtual {v8, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_4

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :catchall_2
    move-exception v11

    monitor-exit v12

    throw v11

    :cond_4
    const-string/jumbo v11, " "

    invoke-virtual {v7, v11}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x0

    array-length v12, v10

    :goto_3
    if-ge v11, v12, :cond_3

    aget-object v9, v10, v11

    invoke-virtual {v9, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_5

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_5
    add-int/lit8 v11, v11, 0x1

    goto :goto_3

    :cond_6
    iput-object v3, v5, Landroid/widget/Filter$FilterResults;->values:Ljava/lang/Object;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v11

    iput v11, v5, Landroid/widget/Filter$FilterResults;->count:I

    goto :goto_0
.end method

.method protected publishResults(Ljava/lang/CharSequence;Landroid/widget/Filter$FilterResults;)V
    .locals 2

    iget-object v1, p0, Landroid/widget/ArrayAdapter$ArrayFilter;->this$0:Landroid/widget/ArrayAdapter;

    iget-object v0, p2, Landroid/widget/Filter$FilterResults;->values:Ljava/lang/Object;

    check-cast v0, Ljava/util/List;

    invoke-static {v1, v0}, Landroid/widget/ArrayAdapter;->-set0(Landroid/widget/ArrayAdapter;Ljava/util/List;)Ljava/util/List;

    iget v0, p2, Landroid/widget/Filter$FilterResults;->count:I

    if-lez v0, :cond_0

    iget-object v0, p0, Landroid/widget/ArrayAdapter$ArrayFilter;->this$0:Landroid/widget/ArrayAdapter;

    invoke-virtual {v0}, Landroid/widget/ArrayAdapter;->notifyDataSetChanged()V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Landroid/widget/ArrayAdapter$ArrayFilter;->this$0:Landroid/widget/ArrayAdapter;

    invoke-virtual {v0}, Landroid/widget/ArrayAdapter;->notifyDataSetInvalidated()V

    goto :goto_0
.end method
