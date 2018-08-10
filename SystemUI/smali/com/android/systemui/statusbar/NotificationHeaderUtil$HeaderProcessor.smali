.class Lcom/android/systemui/statusbar/NotificationHeaderUtil$HeaderProcessor;
.super Ljava/lang/Object;
.source "NotificationHeaderUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/NotificationHeaderUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "HeaderProcessor"
.end annotation


# instance fields
.field private final mApplicator:Lcom/android/systemui/statusbar/NotificationHeaderUtil$ResultApplicator;

.field private mApply:Z

.field private mComparator:Lcom/android/systemui/statusbar/NotificationHeaderUtil$ViewComparator;

.field private final mExtractor:Lcom/android/systemui/statusbar/NotificationHeaderUtil$DataExtractor;

.field private final mId:I

.field private mParentData:Ljava/lang/Object;

.field private final mParentRow:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

.field private mParentView:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/ExpandableNotificationRow;ILcom/android/systemui/statusbar/NotificationHeaderUtil$DataExtractor;Lcom/android/systemui/statusbar/NotificationHeaderUtil$ViewComparator;Lcom/android/systemui/statusbar/NotificationHeaderUtil$ResultApplicator;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Lcom/android/systemui/statusbar/NotificationHeaderUtil$HeaderProcessor;->mId:I

    iput-object p3, p0, Lcom/android/systemui/statusbar/NotificationHeaderUtil$HeaderProcessor;->mExtractor:Lcom/android/systemui/statusbar/NotificationHeaderUtil$DataExtractor;

    iput-object p5, p0, Lcom/android/systemui/statusbar/NotificationHeaderUtil$HeaderProcessor;->mApplicator:Lcom/android/systemui/statusbar/NotificationHeaderUtil$ResultApplicator;

    iput-object p4, p0, Lcom/android/systemui/statusbar/NotificationHeaderUtil$HeaderProcessor;->mComparator:Lcom/android/systemui/statusbar/NotificationHeaderUtil$ViewComparator;

    iput-object p1, p0, Lcom/android/systemui/statusbar/NotificationHeaderUtil$HeaderProcessor;->mParentRow:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    return-void
.end method

.method private applyToView(ZLandroid/view/View;)V
    .locals 2

    if-eqz p2, :cond_0

    iget v1, p0, Lcom/android/systemui/statusbar/NotificationHeaderUtil$HeaderProcessor;->mId:I

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationHeaderUtil$HeaderProcessor;->mComparator:Lcom/android/systemui/statusbar/NotificationHeaderUtil$ViewComparator;

    invoke-interface {v1, v0}, Lcom/android/systemui/statusbar/NotificationHeaderUtil$ViewComparator;->isEmpty(Landroid/view/View;)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationHeaderUtil$HeaderProcessor;->mApplicator:Lcom/android/systemui/statusbar/NotificationHeaderUtil$ResultApplicator;

    invoke-interface {v1, v0, p1}, Lcom/android/systemui/statusbar/NotificationHeaderUtil$ResultApplicator;->apply(Landroid/view/View;Z)V

    :cond_0
    return-void
.end method

.method public static forTextView(Lcom/android/systemui/statusbar/ExpandableNotificationRow;I)Lcom/android/systemui/statusbar/NotificationHeaderUtil$HeaderProcessor;
    .locals 6

    new-instance v0, Lcom/android/systemui/statusbar/NotificationHeaderUtil$HeaderProcessor;

    invoke-static {}, Lcom/android/systemui/statusbar/NotificationHeaderUtil;->-get0()Lcom/android/systemui/statusbar/NotificationHeaderUtil$TextViewComparator;

    move-result-object v4

    invoke-static {}, Lcom/android/systemui/statusbar/NotificationHeaderUtil;->-get1()Lcom/android/systemui/statusbar/NotificationHeaderUtil$VisibilityApplicator;

    move-result-object v5

    const/4 v3, 0x0

    move-object v1, p0

    move v2, p1

    invoke-direct/range {v0 .. v5}, Lcom/android/systemui/statusbar/NotificationHeaderUtil$HeaderProcessor;-><init>(Lcom/android/systemui/statusbar/ExpandableNotificationRow;ILcom/android/systemui/statusbar/NotificationHeaderUtil$DataExtractor;Lcom/android/systemui/statusbar/NotificationHeaderUtil$ViewComparator;Lcom/android/systemui/statusbar/NotificationHeaderUtil$ResultApplicator;)V

    return-object v0
.end method


# virtual methods
.method public apply(Lcom/android/systemui/statusbar/ExpandableNotificationRow;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/systemui/statusbar/NotificationHeaderUtil$HeaderProcessor;->apply(Lcom/android/systemui/statusbar/ExpandableNotificationRow;Z)V

    return-void
.end method

.method public apply(Lcom/android/systemui/statusbar/ExpandableNotificationRow;Z)V
    .locals 2

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/NotificationHeaderUtil$HeaderProcessor;->mApply:Z

    if-eqz v1, :cond_0

    xor-int/lit8 v0, p2, 0x1

    :goto_0
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->isSummaryWithChildren()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getNotificationHeader()Landroid/view/NotificationHeaderView;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/android/systemui/statusbar/NotificationHeaderUtil$HeaderProcessor;->applyToView(ZLandroid/view/View;)V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getPrivateLayout()Lcom/android/systemui/statusbar/NotificationContentView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/NotificationContentView;->getContractedChild()Landroid/view/View;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/android/systemui/statusbar/NotificationHeaderUtil$HeaderProcessor;->applyToView(ZLandroid/view/View;)V

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getPrivateLayout()Lcom/android/systemui/statusbar/NotificationContentView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/NotificationContentView;->getHeadsUpChild()Landroid/view/View;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/android/systemui/statusbar/NotificationHeaderUtil$HeaderProcessor;->applyToView(ZLandroid/view/View;)V

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getPrivateLayout()Lcom/android/systemui/statusbar/NotificationContentView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/NotificationContentView;->getExpandedChild()Landroid/view/View;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/android/systemui/statusbar/NotificationHeaderUtil$HeaderProcessor;->applyToView(ZLandroid/view/View;)V

    return-void
.end method

.method public compareToHeader(Lcom/android/systemui/statusbar/ExpandableNotificationRow;)V
    .locals 6

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/NotificationHeaderUtil$HeaderProcessor;->mApply:Z

    if-nez v2, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getNotificationHeader()Landroid/view/NotificationHeaderView;

    move-result-object v1

    if-nez v1, :cond_1

    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/systemui/statusbar/NotificationHeaderUtil$HeaderProcessor;->mApply:Z

    return-void

    :cond_1
    iget-object v2, p0, Lcom/android/systemui/statusbar/NotificationHeaderUtil$HeaderProcessor;->mExtractor:Lcom/android/systemui/statusbar/NotificationHeaderUtil$DataExtractor;

    if-nez v2, :cond_2

    const/4 v0, 0x0

    :goto_0
    iget-object v2, p0, Lcom/android/systemui/statusbar/NotificationHeaderUtil$HeaderProcessor;->mComparator:Lcom/android/systemui/statusbar/NotificationHeaderUtil$ViewComparator;

    iget-object v3, p0, Lcom/android/systemui/statusbar/NotificationHeaderUtil$HeaderProcessor;->mParentView:Landroid/view/View;

    iget v4, p0, Lcom/android/systemui/statusbar/NotificationHeaderUtil$HeaderProcessor;->mId:I

    invoke-virtual {v1, v4}, Landroid/view/NotificationHeaderView;->findViewById(I)Landroid/view/View;

    move-result-object v4

    iget-object v5, p0, Lcom/android/systemui/statusbar/NotificationHeaderUtil$HeaderProcessor;->mParentData:Ljava/lang/Object;

    invoke-interface {v2, v3, v4, v5, v0}, Lcom/android/systemui/statusbar/NotificationHeaderUtil$ViewComparator;->compare(Landroid/view/View;Landroid/view/View;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/systemui/statusbar/NotificationHeaderUtil$HeaderProcessor;->mApply:Z

    return-void

    :cond_2
    iget-object v2, p0, Lcom/android/systemui/statusbar/NotificationHeaderUtil$HeaderProcessor;->mExtractor:Lcom/android/systemui/statusbar/NotificationHeaderUtil$DataExtractor;

    invoke-interface {v2, p1}, Lcom/android/systemui/statusbar/NotificationHeaderUtil$DataExtractor;->extractData(Lcom/android/systemui/statusbar/ExpandableNotificationRow;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public init()V
    .locals 3

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationHeaderUtil$HeaderProcessor;->mParentRow:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getNotificationHeader()Landroid/view/NotificationHeaderView;

    move-result-object v1

    iget v2, p0, Lcom/android/systemui/statusbar/NotificationHeaderUtil$HeaderProcessor;->mId:I

    invoke-virtual {v1, v2}, Landroid/view/NotificationHeaderView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/statusbar/NotificationHeaderUtil$HeaderProcessor;->mParentView:Landroid/view/View;

    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationHeaderUtil$HeaderProcessor;->mExtractor:Lcom/android/systemui/statusbar/NotificationHeaderUtil$DataExtractor;

    if-nez v1, :cond_0

    :goto_0
    iput-object v0, p0, Lcom/android/systemui/statusbar/NotificationHeaderUtil$HeaderProcessor;->mParentData:Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationHeaderUtil$HeaderProcessor;->mComparator:Lcom/android/systemui/statusbar/NotificationHeaderUtil$ViewComparator;

    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationHeaderUtil$HeaderProcessor;->mParentView:Landroid/view/View;

    invoke-interface {v0, v1}, Lcom/android/systemui/statusbar/NotificationHeaderUtil$ViewComparator;->isEmpty(Landroid/view/View;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/NotificationHeaderUtil$HeaderProcessor;->mApply:Z

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationHeaderUtil$HeaderProcessor;->mExtractor:Lcom/android/systemui/statusbar/NotificationHeaderUtil$DataExtractor;

    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationHeaderUtil$HeaderProcessor;->mParentRow:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-interface {v0, v1}, Lcom/android/systemui/statusbar/NotificationHeaderUtil$DataExtractor;->extractData(Lcom/android/systemui/statusbar/ExpandableNotificationRow;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method
