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
.field private mIsAppUsage:Z

.field private mIsSettedDate:Z

.field private final mListener:Landroid/widget/AdapterView$OnItemSelectedListener;

.field private mSettedEndTime:J

.field private mSettedStartTime:J

.field private final mSpinner:Lcom/android/settings/datausage/CycleAdapter$SpinnerInterface;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/settings/datausage/CycleAdapter$SpinnerInterface;Landroid/widget/AdapterView$OnItemSelectedListener;Z)V
    .locals 4

    const-wide/16 v2, 0x0

    const/4 v1, 0x0

    if-eqz p4, :cond_0

    const v0, 0x7f0d0105

    :goto_0
    invoke-direct {p0, p1, v0}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I)V

    iput-boolean v1, p0, Lcom/android/settings/datausage/CycleAdapter;->mIsSettedDate:Z

    iput-wide v2, p0, Lcom/android/settings/datausage/CycleAdapter;->mSettedStartTime:J

    iput-wide v2, p0, Lcom/android/settings/datausage/CycleAdapter;->mSettedEndTime:J

    iput-boolean v1, p0, Lcom/android/settings/datausage/CycleAdapter;->mIsAppUsage:Z

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
    const v0, 0x7f0d00b3

    goto :goto_0
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/settings/datausage/CycleAdapter$SpinnerInterface;Landroid/widget/AdapterView$OnItemSelectedListener;ZZ)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/settings/datausage/CycleAdapter;-><init>(Landroid/content/Context;Lcom/android/settings/datausage/CycleAdapter$SpinnerInterface;Landroid/widget/AdapterView$OnItemSelectedListener;Z)V

    iput-boolean p5, p0, Lcom/android/settings/datausage/CycleAdapter;->mIsAppUsage:Z

    return-void
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

.method public setEndTime(J)V
    .locals 1

    iput-wide p1, p0, Lcom/android/settings/datausage/CycleAdapter;->mSettedEndTime:J

    return-void
.end method

.method public setIsSettedDate(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/settings/datausage/CycleAdapter;->mIsSettedDate:Z

    return-void
.end method

.method public setStartTime(J)V
    .locals 1

    iput-wide p1, p0, Lcom/android/settings/datausage/CycleAdapter;->mSettedStartTime:J

    return-void
.end method

.method public updateCycleList(Landroid/net/NetworkPolicy;Lcom/android/settingslib/net/ChartData;)Z
    .locals 29

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings/datausage/CycleAdapter;->mSpinner:Lcom/android/settings/datausage/CycleAdapter$SpinnerInterface;

    invoke-interface {v4}, Lcom/android/settings/datausage/CycleAdapter$SpinnerInterface;->getSelectedItem()Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Lcom/android/settings/datausage/CycleAdapter$CycleItem;

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/datausage/CycleAdapter;->clear()V

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/datausage/CycleAdapter;->getContext()Landroid/content/Context;

    move-result-object v13

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

    move-result-wide v26

    const-wide v4, 0x7fffffffffffffffL

    cmp-long v4, v22, v4

    if-nez v4, :cond_1

    move-wide/from16 v22, v26

    :cond_1
    const-wide/high16 v4, -0x8000000000000000L

    cmp-long v4, v20, v4

    if-nez v4, :cond_2

    const-wide/16 v4, 0x1

    add-long v20, v26, v4

    :cond_2
    const/4 v11, 0x0

    if-eqz p1, :cond_6

    move-wide/from16 v0, v20

    move-object/from16 v2, p1

    invoke-static {v0, v1, v2}, Landroid/net/NetworkPolicyManager;->computeNextCycleBoundary(JLandroid/net/NetworkPolicy;)J

    move-result-wide v8

    :goto_0
    cmp-long v4, v8, v22

    if-lez v4, :cond_6

    move-object/from16 v0, p1

    invoke-static {v8, v9, v0}, Landroid/net/NetworkPolicyManager;->computeLastCycleBoundary(JLandroid/net/NetworkPolicy;)J

    move-result-wide v6

    if-eqz p2, :cond_5

    move-object/from16 v0, p2

    iget-object v5, v0, Lcom/android/settingslib/net/ChartData;->network:Landroid/net/NetworkStatsHistory;

    invoke-virtual/range {v5 .. v10}, Landroid/net/NetworkStatsHistory;->getValues(JJLandroid/net/NetworkStatsHistory$Entry;)Landroid/net/NetworkStatsHistory$Entry;

    move-result-object v10

    iget-wide v4, v10, Landroid/net/NetworkStatsHistory$Entry;->rxBytes:J

    iget-wide v14, v10, Landroid/net/NetworkStatsHistory$Entry;->txBytes:J

    add-long/2addr v4, v14

    const-wide/16 v14, 0x0

    cmp-long v4, v4, v14

    if-lez v4, :cond_4

    const/16 v24, 0x1

    :goto_1
    if-eqz v24, :cond_3

    new-instance v4, Lcom/android/settings/datausage/CycleAdapter$CycleItem;

    move-object v5, v13

    invoke-direct/range {v4 .. v9}, Lcom/android/settings/datausage/CycleAdapter$CycleItem;-><init>(Landroid/content/Context;JJ)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/settings/datausage/CycleAdapter;->add(Ljava/lang/Object;)V

    const/4 v11, 0x1

    :cond_3
    move-wide v8, v6

    goto :goto_0

    :cond_4
    const/16 v24, 0x0

    goto :goto_1

    :cond_5
    const/16 v24, 0x1

    goto :goto_1

    :cond_6
    if-nez v11, :cond_a

    move-wide/from16 v8, v20

    :goto_2
    cmp-long v4, v8, v22

    if-lez v4, :cond_a

    const-wide v4, 0x90321000L

    sub-long v6, v8, v4

    if-eqz p2, :cond_9

    move-object/from16 v0, p2

    iget-object v5, v0, Lcom/android/settingslib/net/ChartData;->network:Landroid/net/NetworkStatsHistory;

    invoke-virtual/range {v5 .. v10}, Landroid/net/NetworkStatsHistory;->getValues(JJLandroid/net/NetworkStatsHistory$Entry;)Landroid/net/NetworkStatsHistory$Entry;

    move-result-object v10

    iget-wide v4, v10, Landroid/net/NetworkStatsHistory$Entry;->rxBytes:J

    iget-wide v14, v10, Landroid/net/NetworkStatsHistory$Entry;->txBytes:J

    add-long/2addr v4, v14

    const-wide/16 v14, 0x0

    cmp-long v4, v4, v14

    if-lez v4, :cond_8

    const/16 v24, 0x1

    :goto_3
    if-eqz v24, :cond_7

    new-instance v4, Lcom/android/settings/datausage/CycleAdapter$CycleItem;

    move-object v5, v13

    invoke-direct/range {v4 .. v9}, Lcom/android/settings/datausage/CycleAdapter$CycleItem;-><init>(Landroid/content/Context;JJ)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/settings/datausage/CycleAdapter;->add(Ljava/lang/Object;)V

    :cond_7
    move-wide v8, v6

    goto :goto_2

    :cond_8
    const/16 v24, 0x0

    goto :goto_3

    :cond_9
    const/16 v24, 0x1

    goto :goto_3

    :cond_a
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/datausage/CycleAdapter;->getCount()I

    move-result v4

    if-lez v4, :cond_d

    invoke-static {}, Lcom/android/settings/Utils;->isSupportCHNDataRank()Z

    move-result v4

    if-nez v4, :cond_b

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/settings/datausage/CycleAdapter;->mIsAppUsage:Z

    if-eqz v4, :cond_c

    :cond_b
    new-instance v4, Lcom/android/settings/datausage/CycleAdapter$CycleItem;

    invoke-direct {v4, v13}, Lcom/android/settings/datausage/CycleAdapter$CycleItem;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/settings/datausage/CycleAdapter;->add(Ljava/lang/Object;)V

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/settings/datausage/CycleAdapter;->mIsSettedDate:Z

    if-eqz v4, :cond_c

    new-instance v12, Lcom/android/settings/datausage/CycleAdapter$CycleItem;

    move-object/from16 v0, p0

    iget-wide v14, v0, Lcom/android/settings/datausage/CycleAdapter;->mSettedStartTime:J

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/settings/datausage/CycleAdapter;->mSettedEndTime:J

    move-wide/from16 v16, v0

    const/16 v18, 0x1

    invoke-direct/range {v12 .. v18}, Lcom/android/settings/datausage/CycleAdapter$CycleItem;-><init>(Landroid/content/Context;JJZ)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/android/settings/datausage/CycleAdapter;->add(Ljava/lang/Object;)V

    :cond_c
    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/android/settings/datausage/CycleAdapter;->findNearestPosition(Lcom/android/settings/datausage/CycleAdapter$CycleItem;)I

    move-result v17

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings/datausage/CycleAdapter;->mSpinner:Lcom/android/settings/datausage/CycleAdapter$SpinnerInterface;

    move/from16 v0, v17

    invoke-interface {v4, v0}, Lcom/android/settings/datausage/CycleAdapter$SpinnerInterface;->setSelection(I)V

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/settings/datausage/CycleAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v28

    check-cast v28, Lcom/android/settings/datausage/CycleAdapter$CycleItem;

    move-object/from16 v0, v28

    move-object/from16 v1, v25

    invoke-static {v0, v1}, Llibcore/util/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_d

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/datausage/CycleAdapter;->mListener:Landroid/widget/AdapterView$OnItemSelectedListener;

    const-wide/16 v18, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    invoke-interface/range {v14 .. v19}, Landroid/widget/AdapterView$OnItemSelectedListener;->onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V

    const/4 v4, 0x0

    return v4

    :cond_d
    const/4 v4, 0x1

    return v4
.end method
