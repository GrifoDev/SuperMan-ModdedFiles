.class public Lcom/android/contacts/common/list/ContactsSectionIndexer;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/widget/SectionIndexer;


# instance fields
.field private a:[Ljava/lang/String;

.field private b:[I

.field private c:I


# direct methods
.method public constructor <init>([Ljava/lang/String;[I)V
    .locals 4

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_1
    array-length v1, p1

    array-length v2, p2

    if-eq v1, v2, :cond_2

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The sections and counts arrays must have the same length"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    iput-object p1, p0, Lcom/android/contacts/common/list/ContactsSectionIndexer;->a:[Ljava/lang/String;

    array-length v1, p2

    new-array v1, v1, [I

    iput-object v1, p0, Lcom/android/contacts/common/list/ContactsSectionIndexer;->b:[I

    move v1, v0

    :goto_0
    array-length v2, p2

    if-ge v0, v2, :cond_5

    iget-object v2, p0, Lcom/android/contacts/common/list/ContactsSectionIndexer;->a:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/android/contacts/common/list/ContactsSectionIndexer;->a:[Ljava/lang/String;

    const-string v3, " "

    aput-object v3, v2, v0

    :cond_3
    :goto_1
    iget-object v2, p0, Lcom/android/contacts/common/list/ContactsSectionIndexer;->b:[I

    aput v1, v2, v0

    aget v2, p2, v0

    add-int/2addr v1, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_4
    iget-object v2, p0, Lcom/android/contacts/common/list/ContactsSectionIndexer;->a:[Ljava/lang/String;

    aget-object v2, v2, v0

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    iget-object v2, p0, Lcom/android/contacts/common/list/ContactsSectionIndexer;->a:[Ljava/lang/String;

    iget-object v3, p0, Lcom/android/contacts/common/list/ContactsSectionIndexer;->a:[Ljava/lang/String;

    aget-object v3, v3, v0

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v0

    goto :goto_1

    :cond_5
    iput v1, p0, Lcom/android/contacts/common/list/ContactsSectionIndexer;->c:I

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .locals 5

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/android/contacts/common/list/ContactsSectionIndexer;->a:[Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/contacts/common/list/ContactsSectionIndexer;->a:[Ljava/lang/String;

    array-length v0, v0

    if-lez v0, :cond_1

    iget-object v0, p0, Lcom/android/contacts/common/list/ContactsSectionIndexer;->a:[Ljava/lang/String;

    aget-object v0, v0, v3

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/contacts/common/list/ContactsSectionIndexer;->a:[Ljava/lang/String;

    array-length v0, v0

    add-int/lit8 v0, v0, 0x1

    new-array v1, v0, [Ljava/lang/String;

    iget-object v0, p0, Lcom/android/contacts/common/list/ContactsSectionIndexer;->b:[I

    array-length v0, v0

    add-int/lit8 v0, v0, 0x1

    new-array v2, v0, [I

    aput-object p1, v1, v3

    aput v3, v2, v3

    const/4 v0, 0x1

    :goto_1
    iget-object v3, p0, Lcom/android/contacts/common/list/ContactsSectionIndexer;->b:[I

    array-length v3, v3

    if-gt v0, v3, :cond_2

    iget-object v3, p0, Lcom/android/contacts/common/list/ContactsSectionIndexer;->a:[Ljava/lang/String;

    add-int/lit8 v4, v0, -0x1

    aget-object v3, v3, v4

    aput-object v3, v1, v0

    iget-object v3, p0, Lcom/android/contacts/common/list/ContactsSectionIndexer;->b:[I

    add-int/lit8 v4, v0, -0x1

    aget v3, v3, v4

    add-int/lit8 v3, v3, 0x1

    aput v3, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    iput-object v1, p0, Lcom/android/contacts/common/list/ContactsSectionIndexer;->a:[Ljava/lang/String;

    iput-object v2, p0, Lcom/android/contacts/common/list/ContactsSectionIndexer;->b:[I

    iget v0, p0, Lcom/android/contacts/common/list/ContactsSectionIndexer;->c:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/contacts/common/list/ContactsSectionIndexer;->c:I

    goto :goto_0
.end method

.method public getPositionForSection(I)I
    .locals 1

    if-ltz p1, :cond_0

    iget-object v0, p0, Lcom/android/contacts/common/list/ContactsSectionIndexer;->a:[Ljava/lang/String;

    array-length v0, v0

    if-lt p1, v0, :cond_1

    :cond_0
    const/4 v0, -0x1

    :goto_0
    return v0

    :cond_1
    iget-object v0, p0, Lcom/android/contacts/common/list/ContactsSectionIndexer;->b:[I

    aget v0, v0, p1

    goto :goto_0
.end method

.method public getSectionForPosition(I)I
    .locals 1

    if-ltz p1, :cond_0

    iget v0, p0, Lcom/android/contacts/common/list/ContactsSectionIndexer;->c:I

    if-lt p1, v0, :cond_2

    :cond_0
    const/4 v0, -0x1

    :cond_1
    :goto_0
    return v0

    :cond_2
    iget-object v0, p0, Lcom/android/contacts/common/list/ContactsSectionIndexer;->b:[I

    invoke-static {v0, p1}, Ljava/util/Arrays;->binarySearch([II)I

    move-result v0

    if-gez v0, :cond_1

    neg-int v0, v0

    add-int/lit8 v0, v0, -0x2

    goto :goto_0
.end method

.method public getSections()[Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/android/contacts/common/list/ContactsSectionIndexer;->a:[Ljava/lang/String;

    return-object v0
.end method
