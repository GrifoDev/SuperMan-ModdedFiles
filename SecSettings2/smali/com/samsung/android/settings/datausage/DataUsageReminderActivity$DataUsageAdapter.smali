.class public Lcom/samsung/android/settings/datausage/DataUsageReminderActivity$DataUsageAdapter;
.super Landroid/widget/BaseAdapter;
.source "DataUsageReminderActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/datausage/DataUsageReminderActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "DataUsageAdapter"
.end annotation


# instance fields
.field private final mInsetSide:I

.field private mItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/android/settings/datausage/DataUsageReminderActivity$AppItem;",
            ">;"
        }
    .end annotation
.end field

.field private final mProvider:Lcom/android/settingslib/net/UidDetailProvider;

.field private final mUm:Landroid/os/UserManager;

.field final synthetic this$0:Lcom/samsung/android/settings/datausage/DataUsageReminderActivity;


# direct methods
.method public constructor <init>(Lcom/samsung/android/settings/datausage/DataUsageReminderActivity;Landroid/os/UserManager;Lcom/android/settingslib/net/UidDetailProvider;I)V
    .locals 1

    iput-object p1, p0, Lcom/samsung/android/settings/datausage/DataUsageReminderActivity$DataUsageAdapter;->this$0:Lcom/samsung/android/settings/datausage/DataUsageReminderActivity;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/datausage/DataUsageReminderActivity$DataUsageAdapter;->mItems:Ljava/util/ArrayList;

    invoke-static {p3}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settingslib/net/UidDetailProvider;

    iput-object v0, p0, Lcom/samsung/android/settings/datausage/DataUsageReminderActivity$DataUsageAdapter;->mProvider:Lcom/android/settingslib/net/UidDetailProvider;

    iput p4, p0, Lcom/samsung/android/settings/datausage/DataUsageReminderActivity$DataUsageAdapter;->mInsetSide:I

    iput-object p2, p0, Lcom/samsung/android/settings/datausage/DataUsageReminderActivity$DataUsageAdapter;->mUm:Landroid/os/UserManager;

    return-void
.end method

.method private accumulate(ILandroid/util/SparseArray;IJJ)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/util/SparseArray",
            "<",
            "Lcom/samsung/android/settings/datausage/DataUsageReminderActivity$AppItem;",
            ">;IJJ)V"
        }
    .end annotation

    invoke-virtual {p2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/settings/datausage/DataUsageReminderActivity$AppItem;

    if-nez v0, :cond_0

    new-instance v0, Lcom/samsung/android/settings/datausage/DataUsageReminderActivity$AppItem;

    invoke-direct {v0, p1}, Lcom/samsung/android/settings/datausage/DataUsageReminderActivity$AppItem;-><init>(I)V

    iget-object v1, p0, Lcom/samsung/android/settings/datausage/DataUsageReminderActivity$DataUsageAdapter;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget v1, v0, Lcom/samsung/android/settings/datausage/DataUsageReminderActivity$AppItem;->key:I

    invoke-virtual {p2, v1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_0
    invoke-virtual {v0, p3}, Lcom/samsung/android/settings/datausage/DataUsageReminderActivity$AppItem;->addUid(I)V

    iget-wide v2, v0, Lcom/samsung/android/settings/datausage/DataUsageReminderActivity$AppItem;->m_total:J

    add-long/2addr v2, p4

    iput-wide v2, v0, Lcom/samsung/android/settings/datausage/DataUsageReminderActivity$AppItem;->m_total:J

    iget-wide v2, v0, Lcom/samsung/android/settings/datausage/DataUsageReminderActivity$AppItem;->w_total:J

    add-long/2addr v2, p6

    iput-wide v2, v0, Lcom/samsung/android/settings/datausage/DataUsageReminderActivity$AppItem;->w_total:J

    return-void
.end method


# virtual methods
.method public areAllItemsEnabled()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public bindStats()V
    .locals 24

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/settings/datausage/DataUsageReminderActivity$DataUsageAdapter;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    const-string/jumbo v2, "DataUsageReminderActivity_YIN"

    const-string/jumbo v10, "bindStats."

    invoke-static {v2, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/settings/datausage/DataUsageReminderActivity$DataUsageAdapter;->this$0:Lcom/samsung/android/settings/datausage/DataUsageReminderActivity;

    invoke-static {v2}, Lcom/samsung/android/settings/datausage/DataUsageReminderActivity;->-get0(Lcom/samsung/android/settings/datausage/DataUsageReminderActivity;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v23

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v18

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/settings/datausage/DataUsageReminderActivity$DataUsageAdapter;->mUm:Landroid/os/UserManager;

    invoke-virtual {v2}, Landroid/os/UserManager;->getUserProfiles()Ljava/util/List;

    move-result-object v21

    new-instance v4, Landroid/util/SparseArray;

    invoke-direct {v4}, Landroid/util/SparseArray;-><init>()V

    const/16 v19, 0x0

    :goto_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/settings/datausage/DataUsageReminderActivity$DataUsageAdapter;->this$0:Lcom/samsung/android/settings/datausage/DataUsageReminderActivity;

    invoke-static {v2}, Lcom/samsung/android/settings/datausage/DataUsageReminderActivity;->-get2(Lcom/samsung/android/settings/datausage/DataUsageReminderActivity;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    move/from16 v0, v19

    if-ge v0, v2, :cond_6

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/settings/datausage/DataUsageReminderActivity$DataUsageAdapter;->this$0:Lcom/samsung/android/settings/datausage/DataUsageReminderActivity;

    invoke-static {v2}, Lcom/samsung/android/settings/datausage/DataUsageReminderActivity;->-get2(Lcom/samsung/android/settings/datausage/DataUsageReminderActivity;)Ljava/util/ArrayList;

    move-result-object v2

    move/from16 v0, v19

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v5

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/settings/datausage/DataUsageReminderActivity$DataUsageAdapter;->this$0:Lcom/samsung/android/settings/datausage/DataUsageReminderActivity;

    invoke-static {v2}, Lcom/samsung/android/settings/datausage/DataUsageReminderActivity;->-get3(Lcom/samsung/android/settings/datausage/DataUsageReminderActivity;)Ljava/util/ArrayList;

    move-result-object v2

    move/from16 v0, v19

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/settings/datausage/DataUsageReminderActivity$DataUsageAdapter;->this$0:Lcom/samsung/android/settings/datausage/DataUsageReminderActivity;

    invoke-static {v2}, Lcom/samsung/android/settings/datausage/DataUsageReminderActivity;->-get1(Lcom/samsung/android/settings/datausage/DataUsageReminderActivity;)Ljava/util/ArrayList;

    move-result-object v2

    move/from16 v0, v19

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    const-string/jumbo v2, "DataUsageReminderActivity_YIN"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "uid = "

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v12, " wlan = "

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v12, " mobile = "

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v2, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v5}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v22

    invoke-static {v5}, Landroid/os/UserHandle;->isApp(I)Z

    move-result v2

    if-eqz v2, :cond_3

    new-instance v2, Landroid/os/UserHandle;

    move/from16 v0, v22

    invoke-direct {v2, v0}, Landroid/os/UserHandle;-><init>(I)V

    move-object/from16 v0, v21

    invoke-interface {v0, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    move/from16 v0, v22

    move/from16 v1, v18

    if-eq v0, v1, :cond_0

    invoke-static/range {v22 .. v22}, Lcom/android/settingslib/net/UidDetailProvider;->buildKeyForUser(I)I

    move-result v3

    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v9}, Lcom/samsung/android/settings/datausage/DataUsageReminderActivity$DataUsageAdapter;->accumulate(ILandroid/util/SparseArray;IJJ)V

    :cond_0
    move v11, v5

    :goto_1
    move-object/from16 v10, p0

    move-object v12, v4

    move v13, v5

    move-wide v14, v6

    move-wide/from16 v16, v8

    invoke-direct/range {v10 .. v17}, Lcom/samsung/android/settings/datausage/DataUsageReminderActivity$DataUsageAdapter;->accumulate(ILandroid/util/SparseArray;IJJ)V

    add-int/lit8 v19, v19, 0x1

    goto/16 :goto_0

    :cond_1
    move-object/from16 v0, v23

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v20

    if-nez v20, :cond_2

    const/4 v11, -0x4

    goto :goto_1

    :cond_2
    invoke-static/range {v22 .. v22}, Lcom/android/settingslib/net/UidDetailProvider;->buildKeyForUser(I)I

    move-result v11

    goto :goto_1

    :cond_3
    const/4 v2, -0x4

    if-eq v5, v2, :cond_4

    const/4 v2, -0x5

    if-ne v5, v2, :cond_5

    :cond_4
    move v11, v5

    goto :goto_1

    :cond_5
    const/16 v2, -0x64

    if-eq v5, v2, :cond_4

    const/16 v11, 0x3e8

    goto :goto_1

    :cond_6
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/settings/datausage/DataUsageReminderActivity$DataUsageAdapter;->mItems:Ljava/util/ArrayList;

    invoke-static {v2}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/datausage/DataUsageReminderActivity$DataUsageAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public getCount()I
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/datausage/DataUsageReminderActivity$DataUsageAdapter;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/datausage/DataUsageReminderActivity$DataUsageAdapter;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/settings/datausage/DataUsageReminderActivity$DataUsageAdapter;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/settings/datausage/DataUsageReminderActivity$AppItem;

    iget v0, v0, Lcom/samsung/android/settings/datausage/DataUsageReminderActivity$AppItem;->key:I

    int-to-long v0, v0

    return-wide v0
.end method

.method public getItemViewType(I)I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 10

    const-wide/16 v8, 0x0

    const/4 v6, 0x0

    iget-object v4, p0, Lcom/samsung/android/settings/datausage/DataUsageReminderActivity$DataUsageAdapter;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v4, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/settings/datausage/DataUsageReminderActivity$AppItem;

    if-nez p2, :cond_0

    invoke-virtual {p3}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v4

    const v5, 0x7f0400b2

    invoke-virtual {v4, v5, p3, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    iget v4, p0, Lcom/samsung/android/settings/datausage/DataUsageReminderActivity$DataUsageAdapter;->mInsetSide:I

    if-lez v4, :cond_0

    iget v4, p0, Lcom/samsung/android/settings/datausage/DataUsageReminderActivity$DataUsageAdapter;->mInsetSide:I

    iget v5, p0, Lcom/samsung/android/settings/datausage/DataUsageReminderActivity$DataUsageAdapter;->mInsetSide:I

    invoke-virtual {p2, v4, v6, v5, v6}, Landroid/view/View;->setPaddingRelative(IIII)V

    :cond_0
    invoke-virtual {p3}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    const v4, 0x7f11027e

    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iget-object v4, p0, Lcom/samsung/android/settings/datausage/DataUsageReminderActivity$DataUsageAdapter;->mProvider:Lcom/android/settingslib/net/UidDetailProvider;

    invoke-static {v4, v2, p2}, Lcom/samsung/android/settings/datausage/DataUsageReminderActivity$UidDetailTask;->bindView(Lcom/android/settingslib/net/UidDetailProvider;Lcom/samsung/android/settings/datausage/DataUsageReminderActivity$AppItem;Landroid/view/View;)V

    const-string/jumbo v3, ""

    iget-wide v4, v2, Lcom/samsung/android/settings/datausage/DataUsageReminderActivity$AppItem;->m_total:J

    cmp-long v4, v4, v8

    if-lez v4, :cond_1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/samsung/android/settings/datausage/DataUsageReminderActivity$DataUsageAdapter;->this$0:Lcom/samsung/android/settings/datausage/DataUsageReminderActivity;

    invoke-static {v5}, Lcom/samsung/android/settings/datausage/DataUsageReminderActivity;->-get0(Lcom/samsung/android/settings/datausage/DataUsageReminderActivity;)Landroid/content/Context;

    move-result-object v5

    const v6, 0x7f0b0c4f

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ": "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-wide v6, v2, Lcom/samsung/android/settings/datausage/DataUsageReminderActivity$AppItem;->m_total:J

    invoke-static {v0, v6, v7}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iget-wide v4, v2, Lcom/samsung/android/settings/datausage/DataUsageReminderActivity$AppItem;->w_total:J

    cmp-long v4, v4, v8

    if-lez v4, :cond_1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "  "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    :cond_1
    iget-wide v4, v2, Lcom/samsung/android/settings/datausage/DataUsageReminderActivity$AppItem;->w_total:J

    cmp-long v4, v4, v8

    if-lez v4, :cond_2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/samsung/android/settings/datausage/DataUsageReminderActivity$DataUsageAdapter;->this$0:Lcom/samsung/android/settings/datausage/DataUsageReminderActivity;

    invoke-static {v5}, Lcom/samsung/android/settings/datausage/DataUsageReminderActivity;->-get0(Lcom/samsung/android/settings/datausage/DataUsageReminderActivity;)Landroid/content/Context;

    move-result-object v5

    const v6, 0x7f0b0c50

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ": "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-wide v6, v2, Lcom/samsung/android/settings/datausage/DataUsageReminderActivity$AppItem;->w_total:J

    invoke-static {v0, v6, v7}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    :cond_2
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-object p2
.end method

.method public getViewTypeCount()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public isEnabled(I)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
