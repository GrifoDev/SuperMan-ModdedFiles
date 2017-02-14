.class public Lcom/android/settings/datausage/CycleAdapter;
.super Landroid/widget/ArrayAdapter;
.source "CycleAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/datausage/CycleAdapter$CycleItem;,
        Lcom/android/settings/datausage/CycleAdapter$SpinnerInterface;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Lcom/android/settings/datausage/CycleAdapter$CycleItem;",
        ">;"
    }
.end annotation


# instance fields
.field private final mListener:Landroid/widget/AdapterView$OnItemSelectedListener;

.field private final mSpinner:Lcom/android/settings/datausage/CycleAdapter$SpinnerInterface;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/settings/datausage/CycleAdapter$SpinnerInterface;Landroid/widget/AdapterView$OnItemSelectedListener;Z)V
    .locals 2

    if-eqz p4, :cond_0

    const v0, 0x7f0400ef

    :goto_0
    invoke-direct {p0, p1, v0}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I)V

    const v0, 0x1090009

    invoke-virtual {p0, v0}, Lcom/android/settings/datausage/CycleAdapter;->setDropDownViewResource(I)V

    iput-object p2, p0, Lcom/android/settings/datausage/CycleAdapter;->mSpinner:Lcom/android/settings/datausage/CycleAdapter$SpinnerInterface;

    iput-object p3, p0, Lcom/android/settings/datausage/CycleAdapter;->mListener:Landroid/widget/AdapterView$OnItemSelectedListener;

    iget-object v0, p0, Lcom/android/settings/datausage/CycleAdapter;->mSpinner:Lcom/android/settings/datausage/CycleAdapter$SpinnerInterface;

    invoke-interface {v0, p0}, Lcom/android/settings/datausage/CycleAdapter$SpinnerInterface;->setAdapter(Lcom/android/settings/datausage/CycleAdapter;)V

    iget-object v0, p0, Lcom/android/settings/datausage/CycleAdapter;->mSpinner:Lcom/android/settings/datausage/CycleAdapter$SpinnerInterface;

    iget-object v1, p0, Lcom/android/settings/datausage/CycleAdapter;->mListener:Landroid/widget/AdapterView$OnItemSelectedListener;

    invoke-interface {v0, v1}, Lcom/android/settings/datausage/CycleAdapter$SpinnerInterface;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    return-void

    :cond_0
    const v0, 0x7f0400a5

    goto :goto_0
.end method


# virtual methods
.method public findNearestPosition(Lcom/android/settings/datausage/CycleAdapter$CycleItem;)I
    .locals 5

    const/4 v4, 0x0

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lcom/android/settings/datausage/CycleAdapter;->getCount()I

    move-result v0

    add-int/lit8 v1, v0, -0x1

    :goto_0
    if-ltz v1, :cond_1

    invoke-virtual {p0, v1}, Lcom/android/settings/datausage/CycleAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/settings/datausage/CycleAdapter$CycleItem;

    invoke-virtual {v2, p1}, Lcom/android/settings/datausage/CycleAdapter$CycleItem;->compareTo(Lcom/android/settings/datausage/CycleAdapter$CycleItem;)I

    move-result v3

    if-ltz v3, :cond_0

    return v1

    :cond_0
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_1
    return v4
.end method

.method public updateCycleList(Landroid/net/NetworkPolicy;Lcom/android/settingslib/net/ChartData;)Z
    .locals 28

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings/datausage/CycleAdapter;->mSpinner:Lcom/android/settings/datausage/CycleAdapter$SpinnerInterface;

    invoke-interface {v4}, Lcom/android/settings/datausage/CycleAdapter$SpinnerInterface;->getSelectedItem()Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Lcom/android/settings/datausage/CycleAdapter$CycleItem;

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/datausage/CycleAdapter;->clear()V

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/datausage/CycleAdapter;->getContext()Landroid/content/Context;

    move-result-object v11

    const/4 v10, 0x0

    const-wide v22, 0x7fffffffffffffffL

    const-wide/high16 v20, -0x8000000000000000L

    if-eqz p2, :cond_0

    move-object/from16 v0, p2

    iget-object v4, v0, Lcom/android/settingslib/net/ChartData;->network:Landroid/net/NetworkStatsHistory;

    invoke-virtual {v4}, Landroid/net/NetworkStatsHistory;->getStart()J

    move-result-wide v22

    move-object/from16 v0, p2

    iget-object v4, v0, Lcom/android/settingslib/net/ChartData;->network:Landroid/net/NetworkStatsHistory;

    invoke-virtual {v4}, Landroid/net/NetworkStatsHistory;->getEnd()J

    move-result-wide v20

    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v24

    const-wide v4, 0x7fffffffffffffffL

    cmp-long v4, v22, v4

    if-eqz v4, :cond_1

    cmp-long v4, v22, v24

    if-lez v4, :cond_2

    :cond_1
    move-wide/from16 v22, v24

    :cond_2
    const-wide/high16 v4, -0x8000000000000000L

    cmp-long v4, v20, v4

    if-eqz v4, :cond_3

    cmp-long v4, v20, v24

    if-lez v4, :cond_4

    :cond_3
    const-wide/16 v4, 0x1

    add-long v20, v24, v4

    :cond_4
    const/16 v18, 0x0

    if-eqz p1, :cond_8

    move-wide/from16 v0, v20

    move-object/from16 v2, p1

    invoke-static {v0, v1, v2}, Landroid/net/NetworkPolicyManager;->computeNextCycleBoundary(JLandroid/net/NetworkPolicy;)J

    move-result-wide v8

    :goto_0
    cmp-long v4, v8, v22

    if-lez v4, :cond_8

    move-object/from16 v0, p1

    invoke-static {v8, v9, v0}, Landroid/net/NetworkPolicyManager;->computeLastCycleBoundary(JLandroid/net/NetworkPolicy;)J

    move-result-wide v6

    if-eqz p2, :cond_7

    move-object/from16 v0, p2

    iget-object v5, v0, Lcom/android/settingslib/net/ChartData;->network:Landroid/net/NetworkStatsHistory;

    invoke-virtual/range {v5 .. v10}, Landroid/net/NetworkStatsHistory;->getValues(JJLandroid/net/NetworkStatsHistory$Entry;)Landroid/net/NetworkStatsHistory$Entry;

    move-result-object v10

    iget-wide v4, v10, Landroid/net/NetworkStatsHistory$Entry;->rxBytes:J

    iget-wide v12, v10, Landroid/net/NetworkStatsHistory$Entry;->txBytes:J

    add-long/2addr v4, v12

    const-wide/16 v12, 0x0

    cmp-long v4, v4, v12

    if-lez v4, :cond_6

    const/16 v19, 0x1

    :goto_1
    if-eqz v19, :cond_5

    new-instance v4, Lcom/android/settings/datausage/CycleAdapter$CycleItem;

    move-object v5, v11

    invoke-direct/range {v4 .. v9}, Lcom/android/settings/datausage/CycleAdapter$CycleItem;-><init>(Landroid/content/Context;JJ)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/settings/datausage/CycleAdapter;->add(Ljava/lang/Object;)V

    const/16 v18, 0x1

    :cond_5
    move-wide v8, v6

    goto :goto_0

    :cond_6
    const/16 v19, 0x0

    goto :goto_1

    :cond_7
    const/16 v19, 0x1

    goto :goto_1

    :cond_8
    if-nez v18, :cond_c

    move-wide/from16 v8, v20

    :goto_2
    cmp-long v4, v8, v22

    if-lez v4, :cond_c

    const-wide v4, 0x90321000L

    sub-long v6, v8, v4

    if-eqz p2, :cond_b

    move-object/from16 v0, p2

    iget-object v5, v0, Lcom/android/settingslib/net/ChartData;->network:Landroid/net/NetworkStatsHistory;

    invoke-virtual/range {v5 .. v10}, Landroid/net/NetworkStatsHistory;->getValues(JJLandroid/net/NetworkStatsHistory$Entry;)Landroid/net/NetworkStatsHistory$Entry;

    move-result-object v10

    iget-wide v4, v10, Landroid/net/NetworkStatsHistory$Entry;->rxBytes:J

    iget-wide v12, v10, Landroid/net/NetworkStatsHistory$Entry;->txBytes:J

    add-long/2addr v4, v12

    const-wide/16 v12, 0x0

    cmp-long v4, v4, v12

    if-lez v4, :cond_a

    const/16 v19, 0x1

    :goto_3
    if-eqz v19, :cond_9

    new-instance v4, Lcom/android/settings/datausage/CycleAdapter$CycleItem;

    move-object v5, v11

    invoke-direct/range {v4 .. v9}, Lcom/android/settings/datausage/CycleAdapter$CycleItem;-><init>(Landroid/content/Context;JJ)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/settings/datausage/CycleAdapter;->add(Ljava/lang/Object;)V

    :cond_9
    move-wide v8, v6

    goto :goto_2

    :cond_a
    const/16 v19, 0x0

    goto :goto_3

    :cond_b
    const/16 v19, 0x1

    goto :goto_3

    :cond_c
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/datausage/CycleAdapter;->getCount()I

    move-result v4

    if-lez v4, :cond_d

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/android/settings/datausage/CycleAdapter;->findNearestPosition(Lcom/android/settings/datausage/CycleAdapter$CycleItem;)I

    move-result v15

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings/datausage/CycleAdapter;->mSpinner:Lcom/android/settings/datausage/CycleAdapter$SpinnerInterface;

    invoke-interface {v4, v15}, Lcom/android/settings/datausage/CycleAdapter$SpinnerInterface;->setSelection(I)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/android/settings/datausage/CycleAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v27

    check-cast v27, Lcom/android/settings/datausage/CycleAdapter$CycleItem;

    move-object/from16 v0, v27

    move-object/from16 v1, v26

    invoke-static {v0, v1}, Llibcore/util/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_d

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/settings/datausage/CycleAdapter;->mListener:Landroid/widget/AdapterView$OnItemSelectedListener;

    const-wide/16 v16, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    invoke-interface/range {v12 .. v17}, Landroid/widget/AdapterView$OnItemSelectedListener;->onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V

    const/4 v4, 0x0

    return v4

    :cond_d
    const/4 v4, 0x1

    return v4
.end method
