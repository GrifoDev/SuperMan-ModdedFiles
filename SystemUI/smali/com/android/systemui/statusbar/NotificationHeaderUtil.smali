.class public Lcom/android/systemui/statusbar/NotificationHeaderUtil;
.super Ljava/lang/Object;
.source "NotificationHeaderUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/NotificationHeaderUtil$1;,
        Lcom/android/systemui/statusbar/NotificationHeaderUtil$2;,
        Lcom/android/systemui/statusbar/NotificationHeaderUtil$3;,
        Lcom/android/systemui/statusbar/NotificationHeaderUtil$4;,
        Lcom/android/systemui/statusbar/NotificationHeaderUtil$DataExtractor;,
        Lcom/android/systemui/statusbar/NotificationHeaderUtil$HeaderProcessor;,
        Lcom/android/systemui/statusbar/NotificationHeaderUtil$IconComparator;,
        Lcom/android/systemui/statusbar/NotificationHeaderUtil$ResultApplicator;,
        Lcom/android/systemui/statusbar/NotificationHeaderUtil$TextViewComparator;,
        Lcom/android/systemui/statusbar/NotificationHeaderUtil$ViewComparator;,
        Lcom/android/systemui/statusbar/NotificationHeaderUtil$VisibilityApplicator;
    }
.end annotation


# static fields
.field private static final mGreyApplicator:Lcom/android/systemui/statusbar/NotificationHeaderUtil$ResultApplicator;

.field private static final sGreyComparator:Lcom/android/systemui/statusbar/NotificationHeaderUtil$IconComparator;

.field private static final sIconExtractor:Lcom/android/systemui/statusbar/NotificationHeaderUtil$DataExtractor;

.field private static final sIconVisibilityComparator:Lcom/android/systemui/statusbar/NotificationHeaderUtil$IconComparator;

.field private static final sTextViewComparator:Lcom/android/systemui/statusbar/NotificationHeaderUtil$TextViewComparator;

.field private static final sVisibilityApplicator:Lcom/android/systemui/statusbar/NotificationHeaderUtil$VisibilityApplicator;


# instance fields
.field private final mComparators:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/systemui/statusbar/NotificationHeaderUtil$HeaderProcessor;",
            ">;"
        }
    .end annotation
.end field

.field private final mDividers:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mRow:Lcom/android/systemui/statusbar/ExpandableNotificationRow;


# direct methods
.method static synthetic -get0()Lcom/android/systemui/statusbar/NotificationHeaderUtil$TextViewComparator;
    .locals 1

    sget-object v0, Lcom/android/systemui/statusbar/NotificationHeaderUtil;->sTextViewComparator:Lcom/android/systemui/statusbar/NotificationHeaderUtil$TextViewComparator;

    return-object v0
.end method

.method static synthetic -get1()Lcom/android/systemui/statusbar/NotificationHeaderUtil$VisibilityApplicator;
    .locals 1

    sget-object v0, Lcom/android/systemui/statusbar/NotificationHeaderUtil;->sVisibilityApplicator:Lcom/android/systemui/statusbar/NotificationHeaderUtil$VisibilityApplicator;

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 2

    const/4 v1, 0x0

    new-instance v0, Lcom/android/systemui/statusbar/NotificationHeaderUtil$TextViewComparator;

    invoke-direct {v0, v1}, Lcom/android/systemui/statusbar/NotificationHeaderUtil$TextViewComparator;-><init>(Lcom/android/systemui/statusbar/NotificationHeaderUtil$TextViewComparator;)V

    sput-object v0, Lcom/android/systemui/statusbar/NotificationHeaderUtil;->sTextViewComparator:Lcom/android/systemui/statusbar/NotificationHeaderUtil$TextViewComparator;

    new-instance v0, Lcom/android/systemui/statusbar/NotificationHeaderUtil$VisibilityApplicator;

    invoke-direct {v0, v1}, Lcom/android/systemui/statusbar/NotificationHeaderUtil$VisibilityApplicator;-><init>(Lcom/android/systemui/statusbar/NotificationHeaderUtil$VisibilityApplicator;)V

    sput-object v0, Lcom/android/systemui/statusbar/NotificationHeaderUtil;->sVisibilityApplicator:Lcom/android/systemui/statusbar/NotificationHeaderUtil$VisibilityApplicator;

    new-instance v0, Lcom/android/systemui/statusbar/NotificationHeaderUtil$1;

    invoke-direct {v0}, Lcom/android/systemui/statusbar/NotificationHeaderUtil$1;-><init>()V

    sput-object v0, Lcom/android/systemui/statusbar/NotificationHeaderUtil;->sIconExtractor:Lcom/android/systemui/statusbar/NotificationHeaderUtil$DataExtractor;

    new-instance v0, Lcom/android/systemui/statusbar/NotificationHeaderUtil$2;

    invoke-direct {v0}, Lcom/android/systemui/statusbar/NotificationHeaderUtil$2;-><init>()V

    sput-object v0, Lcom/android/systemui/statusbar/NotificationHeaderUtil;->sIconVisibilityComparator:Lcom/android/systemui/statusbar/NotificationHeaderUtil$IconComparator;

    new-instance v0, Lcom/android/systemui/statusbar/NotificationHeaderUtil$3;

    invoke-direct {v0}, Lcom/android/systemui/statusbar/NotificationHeaderUtil$3;-><init>()V

    sput-object v0, Lcom/android/systemui/statusbar/NotificationHeaderUtil;->sGreyComparator:Lcom/android/systemui/statusbar/NotificationHeaderUtil$IconComparator;

    new-instance v0, Lcom/android/systemui/statusbar/NotificationHeaderUtil$4;

    invoke-direct {v0}, Lcom/android/systemui/statusbar/NotificationHeaderUtil$4;-><init>()V

    sput-object v0, Lcom/android/systemui/statusbar/NotificationHeaderUtil;->mGreyApplicator:Lcom/android/systemui/statusbar/NotificationHeaderUtil$ResultApplicator;

    return-void
.end method

.method public constructor <init>(Lcom/android/systemui/statusbar/ExpandableNotificationRow;)V
    .locals 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/NotificationHeaderUtil;->mComparators:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/NotificationHeaderUtil;->mDividers:Ljava/util/HashSet;

    iput-object p1, p0, Lcom/android/systemui/statusbar/NotificationHeaderUtil;->mRow:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    iget-object v6, p0, Lcom/android/systemui/statusbar/NotificationHeaderUtil;->mComparators:Ljava/util/ArrayList;

    new-instance v0, Lcom/android/systemui/statusbar/NotificationHeaderUtil$HeaderProcessor;

    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationHeaderUtil;->mRow:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    sget-object v3, Lcom/android/systemui/statusbar/NotificationHeaderUtil;->sIconExtractor:Lcom/android/systemui/statusbar/NotificationHeaderUtil$DataExtractor;

    sget-object v4, Lcom/android/systemui/statusbar/NotificationHeaderUtil;->sIconVisibilityComparator:Lcom/android/systemui/statusbar/NotificationHeaderUtil$IconComparator;

    sget-object v5, Lcom/android/systemui/statusbar/NotificationHeaderUtil;->sVisibilityApplicator:Lcom/android/systemui/statusbar/NotificationHeaderUtil$VisibilityApplicator;

    const v2, 0x1020006

    invoke-direct/range {v0 .. v5}, Lcom/android/systemui/statusbar/NotificationHeaderUtil$HeaderProcessor;-><init>(Lcom/android/systemui/statusbar/ExpandableNotificationRow;ILcom/android/systemui/statusbar/NotificationHeaderUtil$DataExtractor;Lcom/android/systemui/statusbar/NotificationHeaderUtil$ViewComparator;Lcom/android/systemui/statusbar/NotificationHeaderUtil$ResultApplicator;)V

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v6, p0, Lcom/android/systemui/statusbar/NotificationHeaderUtil;->mComparators:Ljava/util/ArrayList;

    new-instance v0, Lcom/android/systemui/statusbar/NotificationHeaderUtil$HeaderProcessor;

    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationHeaderUtil;->mRow:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    sget-object v3, Lcom/android/systemui/statusbar/NotificationHeaderUtil;->sIconExtractor:Lcom/android/systemui/statusbar/NotificationHeaderUtil$DataExtractor;

    sget-object v4, Lcom/android/systemui/statusbar/NotificationHeaderUtil;->sGreyComparator:Lcom/android/systemui/statusbar/NotificationHeaderUtil$IconComparator;

    sget-object v5, Lcom/android/systemui/statusbar/NotificationHeaderUtil;->mGreyApplicator:Lcom/android/systemui/statusbar/NotificationHeaderUtil$ResultApplicator;

    const v2, 0x10203bd

    invoke-direct/range {v0 .. v5}, Lcom/android/systemui/statusbar/NotificationHeaderUtil$HeaderProcessor;-><init>(Lcom/android/systemui/statusbar/ExpandableNotificationRow;ILcom/android/systemui/statusbar/NotificationHeaderUtil$DataExtractor;Lcom/android/systemui/statusbar/NotificationHeaderUtil$ViewComparator;Lcom/android/systemui/statusbar/NotificationHeaderUtil$ResultApplicator;)V

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v6, p0, Lcom/android/systemui/statusbar/NotificationHeaderUtil;->mComparators:Ljava/util/ArrayList;

    new-instance v0, Lcom/android/systemui/statusbar/NotificationHeaderUtil$HeaderProcessor;

    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationHeaderUtil;->mRow:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    new-instance v4, Lcom/android/systemui/statusbar/NotificationHeaderUtil$5;

    invoke-direct {v4, p0}, Lcom/android/systemui/statusbar/NotificationHeaderUtil$5;-><init>(Lcom/android/systemui/statusbar/NotificationHeaderUtil;)V

    sget-object v5, Lcom/android/systemui/statusbar/NotificationHeaderUtil;->sVisibilityApplicator:Lcom/android/systemui/statusbar/NotificationHeaderUtil$VisibilityApplicator;

    const v2, 0x102041b

    const/4 v3, 0x0

    invoke-direct/range {v0 .. v5}, Lcom/android/systemui/statusbar/NotificationHeaderUtil$HeaderProcessor;-><init>(Lcom/android/systemui/statusbar/ExpandableNotificationRow;ILcom/android/systemui/statusbar/NotificationHeaderUtil$DataExtractor;Lcom/android/systemui/statusbar/NotificationHeaderUtil$ViewComparator;Lcom/android/systemui/statusbar/NotificationHeaderUtil$ResultApplicator;)V

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationHeaderUtil;->mComparators:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationHeaderUtil;->mRow:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    const v2, 0x10201ea

    invoke-static {v1, v2}, Lcom/android/systemui/statusbar/NotificationHeaderUtil$HeaderProcessor;->forTextView(Lcom/android/systemui/statusbar/ExpandableNotificationRow;I)Lcom/android/systemui/statusbar/NotificationHeaderUtil$HeaderProcessor;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationHeaderUtil;->mComparators:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationHeaderUtil;->mRow:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    const v2, 0x10202ec

    invoke-static {v1, v2}, Lcom/android/systemui/statusbar/NotificationHeaderUtil$HeaderProcessor;->forTextView(Lcom/android/systemui/statusbar/ExpandableNotificationRow;I)Lcom/android/systemui/statusbar/NotificationHeaderUtil$HeaderProcessor;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationHeaderUtil;->mDividers:Ljava/util/HashSet;

    const v1, 0x10202ed

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationHeaderUtil;->mDividers:Ljava/util/HashSet;

    const v1, 0x1020525

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private sanitizeChild(ZLandroid/view/View;)V
    .locals 2

    if-eqz p2, :cond_0

    const v1, 0x10203bd

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/NotificationHeaderView;

    invoke-direct {p0, p1, v0}, Lcom/android/systemui/statusbar/NotificationHeaderUtil;->sanitizeHeader(ZLandroid/view/NotificationHeaderView;)V

    :cond_0
    return-void
.end method

.method private sanitizeHeader(ZLandroid/view/NotificationHeaderView;)V
    .locals 21

    if-nez p2, :cond_0

    return-void

    :cond_0
    invoke-virtual/range {p2 .. p2}, Landroid/view/NotificationHeaderView;->getChildCount()I

    move-result v5

    const v17, 0x1020521

    move-object/from16 v0, p2

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/view/NotificationHeaderView;->findViewById(I)Landroid/view/View;

    move-result-object v14

    const/4 v6, 0x0

    const/4 v9, 0x1

    :goto_0
    add-int/lit8 v17, v5, -0x1

    move/from16 v0, v17

    if-ge v9, v0, :cond_1

    move-object/from16 v0, p2

    invoke-virtual {v0, v9}, Landroid/view/NotificationHeaderView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    instance-of v0, v4, Landroid/widget/TextView;

    move/from16 v17, v0

    if-eqz v17, :cond_6

    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    move-result v17

    const/16 v18, 0x8

    move/from16 v0, v17

    move/from16 v1, v18

    if-eq v0, v1, :cond_6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/NotificationHeaderUtil;->mDividers:Ljava/util/HashSet;

    move-object/from16 v17, v0

    invoke-virtual {v4}, Landroid/view/View;->getId()I

    move-result v18

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v17

    xor-int/lit8 v17, v17, 0x1

    if-eqz v17, :cond_6

    if-eq v4, v14, :cond_6

    const/4 v6, 0x1

    :cond_1
    if-eqz v6, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/NotificationHeaderUtil;->mRow:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getStatusBarNotification()Landroid/service/notification/StatusBarNotification;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/app/Notification;->showsTime()Z

    move-result v17

    if-eqz v17, :cond_7

    :cond_2
    const/4 v15, 0x0

    :goto_1
    invoke-virtual {v14, v15}, Landroid/view/View;->setVisibility(I)V

    new-instance v11, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-virtual {v14}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-direct {v11, v0}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v14}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v17

    const v18, 0x1050172

    invoke-virtual/range {v17 .. v18}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v13

    if-nez v6, :cond_8

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    move/from16 v0, v17

    move/from16 v1, v18

    move/from16 v2, v19

    move/from16 v3, v20

    invoke-virtual {v11, v0, v1, v2, v3}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginsRelative(IIII)V

    :goto_2
    new-instance v17, Landroid/widget/FrameLayout$LayoutParams;

    move-object/from16 v0, v17

    invoke-direct {v0, v11}, Landroid/widget/FrameLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    move-object/from16 v0, v17

    invoke-virtual {v14, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const v17, 0x10202ec

    move-object/from16 v0, p2

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/view/NotificationHeaderView;->findViewById(I)Landroid/view/View;

    move-result-object v7

    if-eqz v7, :cond_3

    invoke-virtual {v7}, Landroid/view/View;->getVisibility()I

    move-result v17

    if-nez v17, :cond_3

    new-instance v8, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-virtual {v7}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-direct {v8, v0}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    if-eqz p1, :cond_9

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    move/from16 v0, v17

    move/from16 v1, v18

    move/from16 v2, v19

    move/from16 v3, v20

    invoke-virtual {v8, v0, v1, v2, v3}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginsRelative(IIII)V

    :goto_3
    new-instance v17, Landroid/widget/FrameLayout$LayoutParams;

    move-object/from16 v0, v17

    invoke-direct {v0, v8}, Landroid/widget/FrameLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    move-object/from16 v0, v17

    invoke-virtual {v7, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_3
    const/4 v10, 0x0

    const/4 v9, 0x1

    :goto_4
    add-int/lit8 v17, v5, -0x1

    move/from16 v0, v17

    if-ge v9, v0, :cond_f

    move-object/from16 v0, p2

    invoke-virtual {v0, v9}, Landroid/view/NotificationHeaderView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/NotificationHeaderUtil;->mDividers:Ljava/util/HashSet;

    move-object/from16 v17, v0

    invoke-virtual {v4}, Landroid/view/View;->getId()I

    move-result v18

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_e

    const/16 v16, 0x0

    add-int/lit8 v9, v9, 0x1

    :goto_5
    add-int/lit8 v17, v5, -0x1

    move/from16 v0, v17

    if-ge v9, v0, :cond_4

    move-object/from16 v0, p2

    invoke-virtual {v0, v9}, Landroid/view/NotificationHeaderView;->getChildAt(I)Landroid/view/View;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/NotificationHeaderUtil;->mDividers:Ljava/util/HashSet;

    move-object/from16 v17, v0

    invoke-virtual {v12}, Landroid/view/View;->getId()I

    move-result v18

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_a

    add-int/lit8 v9, v9, -0x1

    :cond_4
    :goto_6
    if-eqz v16, :cond_d

    const/16 v17, 0x0

    :goto_7
    move/from16 v0, v17

    invoke-virtual {v4, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_5
    :goto_8
    add-int/lit8 v9, v9, 0x1

    goto :goto_4

    :cond_6
    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_0

    :cond_7
    const/16 v15, 0x8

    goto/16 :goto_1

    :cond_8
    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    move/from16 v0, v17

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v11, v13, v0, v1, v2}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginsRelative(IIII)V

    goto/16 :goto_2

    :cond_9
    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    move/from16 v0, v17

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v8, v13, v0, v1, v2}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginsRelative(IIII)V

    goto/16 :goto_3

    :cond_a
    invoke-virtual {v12}, Landroid/view/View;->getVisibility()I

    move-result v17

    const/16 v18, 0x8

    move/from16 v0, v17

    move/from16 v1, v18

    if-eq v0, v1, :cond_c

    instance-of v0, v12, Landroid/widget/TextView;

    move/from16 v17, v0

    if-eqz v17, :cond_c

    if-eqz v10, :cond_b

    const/16 v16, 0x1

    :goto_9
    move-object v10, v12

    goto :goto_6

    :cond_b
    const/16 v16, 0x0

    goto :goto_9

    :cond_c
    add-int/lit8 v9, v9, 0x1

    goto :goto_5

    :cond_d
    const/16 v17, 0x8

    goto :goto_7

    :cond_e
    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    move-result v17

    const/16 v18, 0x8

    move/from16 v0, v17

    move/from16 v1, v18

    if-eq v0, v1, :cond_5

    instance-of v0, v4, Landroid/widget/TextView;

    move/from16 v17, v0

    if-eqz v17, :cond_5

    move-object v10, v4

    goto :goto_8

    :cond_f
    return-void
.end method

.method private sanitizeHeaderViews(Lcom/android/systemui/statusbar/ExpandableNotificationRow;)V
    .locals 4

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getGroupManager()Lcom/android/systemui/statusbar/phone/NotificationGroupManager;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getGroupManager()Lcom/android/systemui/statusbar/phone/NotificationGroupManager;

    move-result-object v2

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getStatusBarNotification()Landroid/service/notification/StatusBarNotification;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/systemui/statusbar/phone/NotificationGroupManager;->isChildInGroupWithSummary(Landroid/service/notification/StatusBarNotification;)Z

    move-result v0

    :goto_0
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->isSummaryWithChildren()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getNotificationHeader()Landroid/view/NotificationHeaderView;

    move-result-object v2

    invoke-direct {p0, v0, v2}, Lcom/android/systemui/statusbar/NotificationHeaderUtil;->sanitizeHeader(ZLandroid/view/NotificationHeaderView;)V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getPrivateLayout()Lcom/android/systemui/statusbar/NotificationContentView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/NotificationContentView;->getContractedChild()Landroid/view/View;

    move-result-object v2

    invoke-direct {p0, v0, v2}, Lcom/android/systemui/statusbar/NotificationHeaderUtil;->sanitizeChild(ZLandroid/view/View;)V

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/NotificationContentView;->getHeadsUpChild()Landroid/view/View;

    move-result-object v2

    invoke-direct {p0, v0, v2}, Lcom/android/systemui/statusbar/NotificationHeaderUtil;->sanitizeChild(ZLandroid/view/View;)V

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/NotificationContentView;->getExpandedChild()Landroid/view/View;

    move-result-object v2

    invoke-direct {p0, v0, v2}, Lcom/android/systemui/statusbar/NotificationHeaderUtil;->sanitizeChild(ZLandroid/view/View;)V

    return-void
.end method


# virtual methods
.method public restoreNotificationHeader(Lcom/android/systemui/statusbar/ExpandableNotificationRow;)V
    .locals 3

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationHeaderUtil;->mComparators:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationHeaderUtil;->mComparators:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/NotificationHeaderUtil$HeaderProcessor;

    const/4 v2, 0x1

    invoke-virtual {v1, p1, v2}, Lcom/android/systemui/statusbar/NotificationHeaderUtil$HeaderProcessor;->apply(Lcom/android/systemui/statusbar/ExpandableNotificationRow;Z)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/NotificationHeaderUtil;->sanitizeHeaderViews(Lcom/android/systemui/statusbar/ExpandableNotificationRow;)V

    return-void
.end method

.method public updateChildrenHeaderAppearance()V
    .locals 5

    iget-object v4, p0, Lcom/android/systemui/statusbar/NotificationHeaderUtil;->mRow:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-virtual {v4}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getNotificationChildren()Ljava/util/List;

    move-result-object v2

    if-nez v2, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-object v4, p0, Lcom/android/systemui/statusbar/NotificationHeaderUtil;->mComparators:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v0, v4, :cond_1

    iget-object v4, p0, Lcom/android/systemui/statusbar/NotificationHeaderUtil;->mComparators:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/systemui/statusbar/NotificationHeaderUtil$HeaderProcessor;

    invoke-virtual {v4}, Lcom/android/systemui/statusbar/NotificationHeaderUtil$HeaderProcessor;->init()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_1
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    if-ge v1, v4, :cond_3

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    const/4 v0, 0x0

    :goto_2
    iget-object v4, p0, Lcom/android/systemui/statusbar/NotificationHeaderUtil;->mComparators:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v0, v4, :cond_2

    iget-object v4, p0, Lcom/android/systemui/statusbar/NotificationHeaderUtil;->mComparators:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/systemui/statusbar/NotificationHeaderUtil$HeaderProcessor;

    invoke-virtual {v4, v3}, Lcom/android/systemui/statusbar/NotificationHeaderUtil$HeaderProcessor;->compareToHeader(Lcom/android/systemui/statusbar/ExpandableNotificationRow;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_3
    const/4 v1, 0x0

    :goto_3
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    if-ge v1, v4, :cond_5

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    const/4 v0, 0x0

    :goto_4
    iget-object v4, p0, Lcom/android/systemui/statusbar/NotificationHeaderUtil;->mComparators:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v0, v4, :cond_4

    iget-object v4, p0, Lcom/android/systemui/statusbar/NotificationHeaderUtil;->mComparators:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/systemui/statusbar/NotificationHeaderUtil$HeaderProcessor;

    invoke-virtual {v4, v3}, Lcom/android/systemui/statusbar/NotificationHeaderUtil$HeaderProcessor;->apply(Lcom/android/systemui/statusbar/ExpandableNotificationRow;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    :cond_4
    invoke-direct {p0, v3}, Lcom/android/systemui/statusbar/NotificationHeaderUtil;->sanitizeHeaderViews(Lcom/android/systemui/statusbar/ExpandableNotificationRow;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_5
    return-void
.end method
