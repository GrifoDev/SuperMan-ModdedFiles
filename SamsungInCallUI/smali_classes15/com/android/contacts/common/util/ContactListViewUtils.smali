.class public Lcom/android/contacts/common/util/ContactListViewUtils;
.super Ljava/lang/Object;
.source "ContactListViewUtils.java"


# static fields
.field private static final TEXT_LEFT_PADDING_TO_CARD_PADDING_RATIO:D = 1.1


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Landroid/widget/ListView;III)V
    .locals 0
    .param p0, "x0"    # Landroid/widget/ListView;
    .param p1, "x1"    # I
    .param p2, "x2"    # I
    .param p3, "x3"    # I

    .prologue
    .line 13
    invoke-static {p0, p1, p2, p3}, Lcom/android/contacts/common/util/ContactListViewUtils;->addPaddingToView(Landroid/widget/ListView;III)V

    return-void
.end method

.method private static addPaddingToView(Landroid/widget/ListView;III)V
    .locals 8
    .param p0, "listView"    # Landroid/widget/ListView;
    .param p1, "parentWidth"    # I
    .param p2, "listSpaceWeight"    # I
    .param p3, "listViewWeight"    # I

    .prologue
    const-wide v6, 0x3ff199999999999aL    # 1.1

    .line 20
    if-lez p2, :cond_0

    if-lez p3, :cond_0

    .line 21
    int-to-double v2, p2

    mul-int/lit8 v4, p2, 0x2

    add-int/2addr v4, p3

    int-to-double v4, v4

    div-double v0, v2, v4

    .line 23
    .local v0, "paddingPercent":D
    int-to-double v2, p1

    mul-double/2addr v2, v0

    mul-double/2addr v2, v6

    double-to-int v2, v2

    .line 25
    invoke-virtual {p0}, Landroid/widget/ListView;->getPaddingTop()I

    move-result v3

    int-to-double v4, p1

    mul-double/2addr v4, v0

    mul-double/2addr v4, v6

    double-to-int v4, v4

    .line 27
    invoke-virtual {p0}, Landroid/widget/ListView;->getPaddingBottom()I

    move-result v5

    .line 23
    invoke-virtual {p0, v2, v3, v4, v5}, Landroid/widget/ListView;->setPadding(IIII)V

    .line 29
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Landroid/widget/ListView;->setClipToPadding(Z)V

    .line 30
    const/high16 v2, 0x2000000

    invoke-virtual {p0, v2}, Landroid/widget/ListView;->setScrollBarStyle(I)V

    .line 32
    .end local v0    # "paddingPercent":D
    :cond_0
    return-void
.end method

.method public static applyCardPaddingToView(Landroid/content/res/Resources;Landroid/widget/ListView;Landroid/view/View;)V
    .locals 5
    .param p0, "resources"    # Landroid/content/res/Resources;
    .param p1, "listView"    # Landroid/widget/ListView;
    .param p2, "rootLayout"    # Landroid/view/View;

    .prologue
    const/4 v4, 0x0

    .line 48
    const v3, 0x7f0d0024

    invoke-virtual {p0, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    .line 50
    .local v0, "listSpaceWeight":I
    const v3, 0x7f0d0023

    invoke-virtual {p0, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    .line 52
    .local v1, "listViewWeight":I
    if-lez v0, :cond_1

    if-lez v1, :cond_1

    .line 53
    invoke-virtual {p2, v4}, Landroid/view/View;->setBackgroundResource(I)V

    .line 55
    const v3, 0x7f1000cf

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 56
    .local v2, "mCardView":Landroid/view/View;
    if-nez v2, :cond_0

    .line 57
    new-instance v3, Ljava/lang/RuntimeException;

    const-string v4, "Your content must have a list card view who can be turned visible whenever it is necessary."

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 61
    :cond_0
    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 64
    new-instance v3, Lcom/android/contacts/common/util/ContactListViewUtils$1;

    invoke-direct {v3, p1, p2, v0, v1}, Lcom/android/contacts/common/util/ContactListViewUtils$1;-><init>(Landroid/widget/ListView;Landroid/view/View;II)V

    invoke-static {p1, v4, v3}, Lcom/android/contacts/common/util/SchedulingUtils;->doOnPreDraw(Landroid/view/View;ZLjava/lang/Runnable;)V

    .line 75
    .end local v2    # "mCardView":Landroid/view/View;
    :cond_1
    return-void
.end method
