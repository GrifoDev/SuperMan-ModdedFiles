.class public Lcom/android/contacts/common/list/ContactsSectionIndexer;
.super Ljava/lang/Object;
.source "ContactsSectionIndexer.java"

# interfaces
.implements Landroid/widget/SectionIndexer;


# static fields
.field private static final BLANK_HEADER_STRING:Ljava/lang/String; = " "


# instance fields
.field private mCount:I

.field private mPositions:[I

.field private mSections:[Ljava/lang/String;


# direct methods
.method public constructor <init>([Ljava/lang/String;[I)V
    .locals 4
    .param p1, "sections"    # [Ljava/lang/String;
    .param p2, "counts"    # [I

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 43
    :cond_0
    new-instance v2, Ljava/lang/NullPointerException;

    invoke-direct {v2}, Ljava/lang/NullPointerException;-><init>()V

    throw v2

    .line 46
    :cond_1
    array-length v2, p1

    array-length v3, p2

    if-eq v2, v3, :cond_2

    .line 47
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "The sections and counts arrays must have the same length"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 53
    :cond_2
    iput-object p1, p0, Lcom/android/contacts/common/list/ContactsSectionIndexer;->mSections:[Ljava/lang/String;

    .line 54
    array-length v2, p2

    new-array v2, v2, [I

    iput-object v2, p0, Lcom/android/contacts/common/list/ContactsSectionIndexer;->mPositions:[I

    .line 55
    const/4 v1, 0x0

    .line 56
    .local v1, "position":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v2, p2

    if-ge v0, v2, :cond_5

    .line 57
    iget-object v2, p0, Lcom/android/contacts/common/list/ContactsSectionIndexer;->mSections:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 58
    iget-object v2, p0, Lcom/android/contacts/common/list/ContactsSectionIndexer;->mSections:[Ljava/lang/String;

    const-string v3, " "

    aput-object v3, v2, v0

    .line 63
    :cond_3
    :goto_1
    iget-object v2, p0, Lcom/android/contacts/common/list/ContactsSectionIndexer;->mPositions:[I

    aput v1, v2, v0

    .line 64
    aget v2, p2, v0

    add-int/2addr v1, v2

    .line 56
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 59
    :cond_4
    iget-object v2, p0, Lcom/android/contacts/common/list/ContactsSectionIndexer;->mSections:[Ljava/lang/String;

    aget-object v2, v2, v0

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 60
    iget-object v2, p0, Lcom/android/contacts/common/list/ContactsSectionIndexer;->mSections:[Ljava/lang/String;

    iget-object v3, p0, Lcom/android/contacts/common/list/ContactsSectionIndexer;->mSections:[Ljava/lang/String;

    aget-object v3, v3, v0

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v0

    goto :goto_1

    .line 66
    :cond_5
    iput v1, p0, Lcom/android/contacts/common/list/ContactsSectionIndexer;->mCount:I

    .line 67
    return-void
.end method


# virtual methods
.method public getPositionForSection(I)I
    .locals 1
    .param p1, "section"    # I

    .prologue
    .line 74
    if-ltz p1, :cond_0

    iget-object v0, p0, Lcom/android/contacts/common/list/ContactsSectionIndexer;->mSections:[Ljava/lang/String;

    array-length v0, v0

    if-lt p1, v0, :cond_1

    .line 75
    :cond_0
    const/4 v0, -0x1

    .line 78
    :goto_0
    return v0

    :cond_1
    iget-object v0, p0, Lcom/android/contacts/common/list/ContactsSectionIndexer;->mPositions:[I

    aget v0, v0, p1

    goto :goto_0
.end method

.method public getSectionForPosition(I)I
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 82
    if-ltz p1, :cond_0

    iget v1, p0, Lcom/android/contacts/common/list/ContactsSectionIndexer;->mCount:I

    if-lt p1, v1, :cond_2

    .line 83
    :cond_0
    const/4 v0, -0x1

    .line 96
    :cond_1
    :goto_0
    return v0

    .line 86
    :cond_2
    iget-object v1, p0, Lcom/android/contacts/common/list/ContactsSectionIndexer;->mPositions:[I

    invoke-static {v1, p1}, Ljava/util/Arrays;->binarySearch([II)I

    move-result v0

    .line 96
    .local v0, "index":I
    if-gez v0, :cond_1

    neg-int v1, v0

    add-int/lit8 v0, v1, -0x2

    goto :goto_0
.end method

.method public getSections()[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lcom/android/contacts/common/list/ContactsSectionIndexer;->mSections:[Ljava/lang/String;

    return-object v0
.end method

.method public setProfileHeader(Ljava/lang/String;)V
    .locals 5
    .param p1, "header"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 100
    iget-object v3, p0, Lcom/android/contacts/common/list/ContactsSectionIndexer;->mSections:[Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 102
    iget-object v3, p0, Lcom/android/contacts/common/list/ContactsSectionIndexer;->mSections:[Ljava/lang/String;

    array-length v3, v3

    if-lez v3, :cond_1

    iget-object v3, p0, Lcom/android/contacts/common/list/ContactsSectionIndexer;->mSections:[Ljava/lang/String;

    aget-object v3, v3, v4

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 120
    :cond_0
    :goto_0
    return-void

    .line 108
    :cond_1
    iget-object v3, p0, Lcom/android/contacts/common/list/ContactsSectionIndexer;->mSections:[Ljava/lang/String;

    array-length v3, v3

    add-int/lit8 v3, v3, 0x1

    new-array v2, v3, [Ljava/lang/String;

    .line 109
    .local v2, "tempSections":[Ljava/lang/String;
    iget-object v3, p0, Lcom/android/contacts/common/list/ContactsSectionIndexer;->mPositions:[I

    array-length v3, v3

    add-int/lit8 v3, v3, 0x1

    new-array v1, v3, [I

    .line 110
    .local v1, "tempPositions":[I
    aput-object p1, v2, v4

    .line 111
    aput v4, v1, v4

    .line 112
    const/4 v0, 0x1

    .local v0, "i":I
    :goto_1
    iget-object v3, p0, Lcom/android/contacts/common/list/ContactsSectionIndexer;->mPositions:[I

    array-length v3, v3

    if-gt v0, v3, :cond_2

    .line 113
    iget-object v3, p0, Lcom/android/contacts/common/list/ContactsSectionIndexer;->mSections:[Ljava/lang/String;

    add-int/lit8 v4, v0, -0x1

    aget-object v3, v3, v4

    aput-object v3, v2, v0

    .line 114
    iget-object v3, p0, Lcom/android/contacts/common/list/ContactsSectionIndexer;->mPositions:[I

    add-int/lit8 v4, v0, -0x1

    aget v3, v3, v4

    add-int/lit8 v3, v3, 0x1

    aput v3, v1, v0

    .line 112
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 116
    :cond_2
    iput-object v2, p0, Lcom/android/contacts/common/list/ContactsSectionIndexer;->mSections:[Ljava/lang/String;

    .line 117
    iput-object v1, p0, Lcom/android/contacts/common/list/ContactsSectionIndexer;->mPositions:[I

    .line 118
    iget v3, p0, Lcom/android/contacts/common/list/ContactsSectionIndexer;->mCount:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/android/contacts/common/list/ContactsSectionIndexer;->mCount:I

    goto :goto_0
.end method
