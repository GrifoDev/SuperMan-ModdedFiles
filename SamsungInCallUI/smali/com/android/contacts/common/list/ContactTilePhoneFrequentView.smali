.class public Lcom/android/contacts/common/list/ContactTilePhoneFrequentView;
.super Lcom/android/contacts/common/list/ContactTileView;


# instance fields
.field private b:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/contacts/common/list/ContactTileView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method static synthetic a(Lcom/android/contacts/common/list/ContactTilePhoneFrequentView;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/contacts/common/list/ContactTilePhoneFrequentView;->b:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public a(Lcom/android/contacts/common/list/ContactEntry;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/android/contacts/common/list/ContactTileView;->a(Lcom/android/contacts/common/list/ContactEntry;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/contacts/common/list/ContactTilePhoneFrequentView;->b:Ljava/lang/String;

    if-eqz p1, :cond_0

    iget-object v0, p1, Lcom/android/contacts/common/list/ContactEntry;->e:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/contacts/common/list/ContactTilePhoneFrequentView;->b:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method protected a()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method protected b()Landroid/view/View$OnClickListener;
    .locals 1

    new-instance v0, Lcom/android/contacts/common/list/ContactTilePhoneFrequentView$1;

    invoke-direct {v0, p0}, Lcom/android/contacts/common/list/ContactTilePhoneFrequentView$1;-><init>(Lcom/android/contacts/common/list/ContactTilePhoneFrequentView;)V

    return-object v0
.end method

.method protected getApproximateImageSize()I
    .locals 1

    invoke-virtual {p0}, Lcom/android/contacts/common/list/ContactTilePhoneFrequentView;->getQuickContact()Landroid/widget/QuickContactBadge;

    move-result-object v0

    invoke-static {v0}, Lcom/android/contacts/common/util/ViewUtil;->a(Landroid/view/View;)I

    move-result v0

    return v0
.end method
