.class public Lcom/android/contacts/common/util/ContactListViewUtils;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Landroid/content/res/Resources;Landroid/widget/ListView;Landroid/view/View;)V
    .locals 4

    const/4 v3, 0x0

    const v0, 0x7f0f0044

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    const v1, 0x7f0f0043

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    if-lez v0, :cond_1

    if-lez v1, :cond_1

    invoke-virtual {p2, v3}, Landroid/view/View;->setBackgroundResource(I)V

    const v2, 0x7f100102

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    if-nez v2, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Your content must have a list card view who can be turned visible whenever it is necessary."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    new-instance v2, Lcom/android/contacts/common/util/ContactListViewUtils$1;

    invoke-direct {v2, p1, p2, v0, v1}, Lcom/android/contacts/common/util/ContactListViewUtils$1;-><init>(Landroid/widget/ListView;Landroid/view/View;II)V

    invoke-static {p1, v3, v2}, Lcom/android/contacts/common/util/SchedulingUtils;->a(Landroid/view/View;ZLjava/lang/Runnable;)V

    :cond_1
    return-void
.end method

.method static synthetic a(Landroid/widget/ListView;III)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/android/contacts/common/util/ContactListViewUtils;->b(Landroid/widget/ListView;III)V

    return-void
.end method

.method private static b(Landroid/widget/ListView;III)V
    .locals 8

    const-wide v6, 0x3ff199999999999aL    # 1.1

    if-lez p2, :cond_0

    if-lez p3, :cond_0

    int-to-double v0, p2

    mul-int/lit8 v2, p2, 0x2

    add-int/2addr v2, p3

    int-to-double v2, v2

    div-double/2addr v0, v2

    int-to-double v2, p1

    mul-double/2addr v2, v0

    mul-double/2addr v2, v6

    double-to-int v2, v2

    invoke-virtual {p0}, Landroid/widget/ListView;->getPaddingTop()I

    move-result v3

    int-to-double v4, p1

    mul-double/2addr v0, v4

    mul-double/2addr v0, v6

    double-to-int v0, v0

    invoke-virtual {p0}, Landroid/widget/ListView;->getPaddingBottom()I

    move-result v1

    invoke-virtual {p0, v2, v3, v0, v1}, Landroid/widget/ListView;->setPadding(IIII)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/widget/ListView;->setClipToPadding(Z)V

    const/high16 v0, 0x2000000

    invoke-virtual {p0, v0}, Landroid/widget/ListView;->setScrollBarStyle(I)V

    :cond_0
    return-void
.end method
