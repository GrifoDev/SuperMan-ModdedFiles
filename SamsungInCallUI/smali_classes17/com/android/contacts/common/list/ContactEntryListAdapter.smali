.class public abstract Lcom/android/contacts/common/list/ContactEntryListAdapter;
.super Lcom/android/contacts/common/list/IndexerListAdapter;
.source "ContactEntryListAdapter.java"


# static fields
.field public static final LOCAL_INVISIBLE_DIRECTORY_ENABLED:Z = false

.field private static final TAG:Ljava/lang/String; = "ContactEntryListAdapter"


# instance fields
.field private mAdjustSelectionBoundsEnabled:Z

.field private mCircularPhotos:Z

.field private mDarkTheme:Z

.field private mDefaultFilterHeaderText:Ljava/lang/CharSequence;

.field private mDirectoryResultLimit:I

.field private mDirectorySearchMode:I

.field private mDisplayOrder:I

.field private mDisplayPhotos:Z

.field private mEmptyListEnabled:Z

.field private mFilter:Lcom/android/contacts/common/list/ContactListFilter;

.field private mFragmentRootView:Landroid/view/View;

.field private mIncludeProfile:Z

.field private mPhotoLoader:Lcom/android/contacts/common/ContactPhotoManager;

.field private mProfileExists:Z

.field private mQueryString:Ljava/lang/String;

.field private mQuickContactEnabled:Z

.field private mSearchMode:Z

.field private mSelectionVisible:Z

.field private mSortOrder:I

.field private mUpperCaseQueryString:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x1

    .line 103
    invoke-direct {p0, p1}, Lcom/android/contacts/common/list/IndexerListAdapter;-><init>(Landroid/content/Context;)V

    .line 65
    iput-boolean v1, p0, Lcom/android/contacts/common/list/ContactEntryListAdapter;->mCircularPhotos:Z

    .line 90
    const v0, 0x7fffffff

    iput v0, p0, Lcom/android/contacts/common/list/ContactEntryListAdapter;->mDirectoryResultLimit:I

    .line 92
    iput-boolean v1, p0, Lcom/android/contacts/common/list/ContactEntryListAdapter;->mEmptyListEnabled:Z

    .line 97
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/contacts/common/list/ContactEntryListAdapter;->mDarkTheme:Z

    .line 104
    const v0, 0x7f09050b

    invoke-virtual {p0, v0}, Lcom/android/contacts/common/list/ContactEntryListAdapter;->setDefaultFilterHeaderText(I)V

    .line 105
    invoke-virtual {p0}, Lcom/android/contacts/common/list/ContactEntryListAdapter;->addPartitions()V

    .line 106
    return-void
.end method

.method private updateIndexer(Landroid/database/Cursor;)V
    .locals 9
    .param p1, "cursor"    # Landroid/database/Cursor;

    .prologue
    const/4 v7, 0x0

    const/4 v8, 0x0

    .line 494
    if-eqz p1, :cond_0

    invoke-interface {p1}, Landroid/database/Cursor;->isClosed()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 495
    :cond_0
    invoke-virtual {p0, v7}, Lcom/android/contacts/common/list/ContactEntryListAdapter;->setIndexer(Landroid/widget/SectionIndexer;)V

    .line 524
    :goto_0
    return-void

    .line 499
    :cond_1
    invoke-interface {p1}, Landroid/database/Cursor;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    .line 500
    .local v2, "bundle":Landroid/os/Bundle;
    const-string v6, "android.provider.extra.ADDRESS_BOOK_INDEX_TITLES"

    invoke-virtual {v2, v6}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_4

    const-string v6, "android.provider.extra.ADDRESS_BOOK_INDEX_COUNTS"

    .line 501
    invoke-virtual {v2, v6}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 502
    const-string v6, "android.provider.extra.ADDRESS_BOOK_INDEX_TITLES"

    .line 503
    invoke-virtual {v2, v6}, Landroid/os/Bundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 504
    .local v5, "sections":[Ljava/lang/String;
    const-string v6, "android.provider.extra.ADDRESS_BOOK_INDEX_COUNTS"

    invoke-virtual {v2, v6}, Landroid/os/Bundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v3

    .line 507
    .local v3, "counts":[I
    invoke-virtual {p0}, Lcom/android/contacts/common/list/ContactEntryListAdapter;->getExtraStartingSection()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 509
    array-length v6, v5

    add-int/lit8 v6, v6, 0x1

    new-array v1, v6, [Ljava/lang/String;

    .line 510
    .local v1, "allSections":[Ljava/lang/String;
    array-length v6, v3

    add-int/lit8 v6, v6, 0x1

    new-array v0, v6, [I

    .line 511
    .local v0, "allCounts":[I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_1
    array-length v6, v5

    if-ge v4, v6, :cond_2

    .line 512
    add-int/lit8 v6, v4, 0x1

    aget-object v7, v5, v4

    aput-object v7, v1, v6

    .line 513
    add-int/lit8 v6, v4, 0x1

    aget v7, v3, v4

    aput v7, v0, v6

    .line 511
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 515
    :cond_2
    const/4 v6, 0x1

    aput v6, v0, v8

    .line 516
    const-string v6, ""

    aput-object v6, v1, v8

    .line 517
    new-instance v6, Lcom/android/contacts/common/list/ContactsSectionIndexer;

    invoke-direct {v6, v1, v0}, Lcom/android/contacts/common/list/ContactsSectionIndexer;-><init>([Ljava/lang/String;[I)V

    invoke-virtual {p0, v6}, Lcom/android/contacts/common/list/ContactEntryListAdapter;->setIndexer(Landroid/widget/SectionIndexer;)V

    goto :goto_0

    .line 519
    .end local v0    # "allCounts":[I
    .end local v1    # "allSections":[Ljava/lang/String;
    .end local v4    # "i":I
    :cond_3
    new-instance v6, Lcom/android/contacts/common/list/ContactsSectionIndexer;

    invoke-direct {v6, v5, v3}, Lcom/android/contacts/common/list/ContactsSectionIndexer;-><init>([Ljava/lang/String;[I)V

    invoke-virtual {p0, v6}, Lcom/android/contacts/common/list/ContactEntryListAdapter;->setIndexer(Landroid/widget/SectionIndexer;)V

    goto :goto_0

    .line 522
    .end local v3    # "counts":[I
    .end local v5    # "sections":[Ljava/lang/String;
    :cond_4
    invoke-virtual {p0, v7}, Lcom/android/contacts/common/list/ContactEntryListAdapter;->setIndexer(Landroid/widget/SectionIndexer;)V

    goto :goto_0
.end method


# virtual methods
.method protected addPartitions()V
    .locals 1

    .prologue
    .line 147
    invoke-virtual {p0}, Lcom/android/contacts/common/list/ContactEntryListAdapter;->createDefaultDirectoryPartition()Lcom/android/contacts/common/list/DirectoryPartition;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/contacts/common/list/ContactEntryListAdapter;->addPartition(Lcom/android/contacts/common/list/CompositeCursorAdapter$Partition;)V

    .line 148
    return-void
.end method

.method public areAllPartitionsEmpty()Z
    .locals 3

    .prologue
    .line 579
    invoke-virtual {p0}, Lcom/android/contacts/common/list/ContactEntryListAdapter;->getPartitionCount()I

    move-result v0

    .line 580
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 581
    invoke-virtual {p0, v1}, Lcom/android/contacts/common/list/ContactEntryListAdapter;->isPartitionEmpty(I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 582
    const/4 v2, 0x0

    .line 585
    :goto_1
    return v2

    .line 580
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 585
    :cond_1
    const/4 v2, 0x1

    goto :goto_1
.end method

.method protected bindHeaderView(Landroid/view/View;ILandroid/database/Cursor;)V
    .locals 13
    .param p1, "view"    # Landroid/view/View;
    .param p2, "partitionIndex"    # I
    .param p3, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 635
    invoke-virtual {p0, p2}, Lcom/android/contacts/common/list/ContactEntryListAdapter;->getPartition(I)Lcom/android/contacts/common/list/CompositeCursorAdapter$Partition;

    move-result-object v8

    .line 636
    .local v8, "partition":Lcom/android/contacts/common/list/CompositeCursorAdapter$Partition;
    instance-of v10, v8, Lcom/android/contacts/common/list/DirectoryPartition;

    if-nez v10, :cond_0

    .line 661
    :goto_0
    return-void

    :cond_0
    move-object v3, v8

    .line 640
    check-cast v3, Lcom/android/contacts/common/list/DirectoryPartition;

    .line 641
    .local v3, "directoryPartition":Lcom/android/contacts/common/list/DirectoryPartition;
    invoke-virtual {v3}, Lcom/android/contacts/common/list/DirectoryPartition;->getDirectoryId()J

    move-result-wide v0

    .line 642
    .local v0, "directoryId":J
    const v10, 0x7f10010e

    invoke-virtual {p1, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    .line 643
    .local v7, "labelTextView":Landroid/widget/TextView;
    const v10, 0x7f10010f

    invoke-virtual {p1, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 644
    .local v5, "displayNameTextView":Landroid/widget/TextView;
    invoke-virtual {v3}, Lcom/android/contacts/common/list/DirectoryPartition;->getLabel()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 645
    invoke-static {v0, v1}, Lcom/android/contacts/common/compat/DirectoryCompat;->isRemoteDirectoryId(J)Z

    move-result v10

    if-nez v10, :cond_1

    .line 646
    const/4 v10, 0x0

    invoke-virtual {v5, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 655
    :goto_1
    invoke-virtual {p0}, Lcom/android/contacts/common/list/ContactEntryListAdapter;->getContext()Landroid/content/Context;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    .line 656
    .local v9, "res":Landroid/content/res/Resources;
    const/4 v10, 0x1

    if-ne p2, v10, :cond_3

    const/4 v10, 0x0

    invoke-virtual {p0, v10}, Lcom/android/contacts/common/list/ContactEntryListAdapter;->getPartition(I)Lcom/android/contacts/common/list/CompositeCursorAdapter$Partition;

    move-result-object v10

    invoke-virtual {v10}, Lcom/android/contacts/common/list/CompositeCursorAdapter$Partition;->isEmpty()Z

    move-result v10

    if-eqz v10, :cond_3

    const/4 v6, 0x0

    .line 659
    .local v6, "headerPaddingTop":I
    :goto_2
    invoke-virtual {p1}, Landroid/view/View;->getPaddingStart()I

    move-result v10

    invoke-virtual {p1}, Landroid/view/View;->getPaddingEnd()I

    move-result v11

    .line 660
    invoke-virtual {p1}, Landroid/view/View;->getPaddingBottom()I

    move-result v12

    .line 659
    invoke-virtual {p1, v10, v6, v11, v12}, Landroid/view/View;->setPaddingRelative(IIII)V

    goto :goto_0

    .line 648
    .end local v6    # "headerPaddingTop":I
    .end local v9    # "res":Landroid/content/res/Resources;
    :cond_1
    invoke-virtual {v3}, Lcom/android/contacts/common/list/DirectoryPartition;->getDisplayName()Ljava/lang/String;

    move-result-object v2

    .line 649
    .local v2, "directoryName":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_2

    move-object v4, v2

    .line 652
    .local v4, "displayName":Ljava/lang/String;
    :goto_3
    invoke-virtual {v5, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 651
    .end local v4    # "displayName":Ljava/lang/String;
    :cond_2
    invoke-virtual {v3}, Lcom/android/contacts/common/list/DirectoryPartition;->getDirectoryType()Ljava/lang/String;

    move-result-object v4

    goto :goto_3

    .line 656
    .end local v2    # "directoryName":Ljava/lang/String;
    .restart local v9    # "res":Landroid/content/res/Resources;
    :cond_3
    const v10, 0x7f0a043b

    .line 657
    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v6

    goto :goto_2
.end method

.method protected bindQuickContact(Lcom/android/contacts/common/list/ContactListItemView;ILandroid/database/Cursor;IIIII)V
    .locals 18
    .param p1, "view"    # Lcom/android/contacts/common/list/ContactListItemView;
    .param p2, "partitionIndex"    # I
    .param p3, "cursor"    # Landroid/database/Cursor;
    .param p4, "photoIdColumn"    # I
    .param p5, "photoUriColumn"    # I
    .param p6, "contactIdColumn"    # I
    .param p7, "lookUpKeyColumn"    # I
    .param p8, "displayNameColumn"    # I

    .prologue
    .line 741
    const-wide/16 v8, 0x0

    .line 742
    .local v8, "photoId":J
    invoke-interface/range {p3 .. p4}, Landroid/database/Cursor;->isNull(I)Z

    move-result v6

    if-nez v6, :cond_0

    .line 743
    invoke-interface/range {p3 .. p4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    .line 746
    :cond_0
    invoke-virtual/range {p1 .. p1}, Lcom/android/contacts/common/list/ContactListItemView;->getQuickContact()Landroid/widget/QuickContactBadge;

    move-result-object v7

    .line 748
    .local v7, "quickContact":Landroid/widget/QuickContactBadge;
    move-object/from16 v0, p0

    move/from16 v1, p2

    move-object/from16 v2, p3

    move/from16 v3, p6

    move/from16 v4, p7

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/contacts/common/list/ContactEntryListAdapter;->getContactUri(ILandroid/database/Cursor;II)Landroid/net/Uri;

    move-result-object v6

    .line 747
    invoke-virtual {v7, v6}, Landroid/widget/QuickContactBadge;->assignContactUri(Landroid/net/Uri;)V

    .line 749
    invoke-static {}, Lcom/android/contacts/common/compat/CompatUtils;->hasPrioritizedMimeType()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 753
    const-string v6, "vnd.android.cursor.item/phone_v2"

    invoke-virtual {v7, v6}, Landroid/widget/QuickContactBadge;->setPrioritizedMimeType(Ljava/lang/String;)V

    .line 756
    :cond_1
    const-wide/16 v10, 0x0

    cmp-long v6, v8, v10

    if-nez v6, :cond_2

    const/4 v6, -0x1

    move/from16 v0, p5

    if-ne v0, v6, :cond_3

    .line 757
    :cond_2
    invoke-virtual/range {p0 .. p0}, Lcom/android/contacts/common/list/ContactEntryListAdapter;->getPhotoLoader()Lcom/android/contacts/common/ContactPhotoManager;

    move-result-object v6

    move-object/from16 v0, p0

    iget-boolean v10, v0, Lcom/android/contacts/common/list/ContactEntryListAdapter;->mDarkTheme:Z

    move-object/from16 v0, p0

    iget-boolean v11, v0, Lcom/android/contacts/common/list/ContactEntryListAdapter;->mCircularPhotos:Z

    const/4 v12, 0x0

    invoke-virtual/range {v6 .. v12}, Lcom/android/contacts/common/ContactPhotoManager;->loadThumbnail(Landroid/widget/ImageView;JZZLcom/android/contacts/common/ContactPhotoManager$DefaultImageRequest;)V

    .line 771
    :goto_0
    return-void

    .line 760
    :cond_3
    move-object/from16 v0, p3

    move/from16 v1, p5

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v17

    .line 761
    .local v17, "photoUriString":Ljava/lang/String;
    if-nez v17, :cond_5

    const/4 v12, 0x0

    .line 762
    .local v12, "photoUri":Landroid/net/Uri;
    :goto_1
    const/16 v16, 0x0

    .line 763
    .local v16, "request":Lcom/android/contacts/common/ContactPhotoManager$DefaultImageRequest;
    if-nez v12, :cond_4

    .line 764
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    move/from16 v2, p8

    move/from16 v3, p7

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/contacts/common/list/ContactEntryListAdapter;->getDefaultImageRequestFromCursor(Landroid/database/Cursor;II)Lcom/android/contacts/common/ContactPhotoManager$DefaultImageRequest;

    move-result-object v16

    .line 767
    :cond_4
    invoke-virtual/range {p0 .. p0}, Lcom/android/contacts/common/list/ContactEntryListAdapter;->getPhotoLoader()Lcom/android/contacts/common/ContactPhotoManager;

    move-result-object v10

    const/4 v13, -0x1

    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/android/contacts/common/list/ContactEntryListAdapter;->mDarkTheme:Z

    move-object/from16 v0, p0

    iget-boolean v15, v0, Lcom/android/contacts/common/list/ContactEntryListAdapter;->mCircularPhotos:Z

    move-object v11, v7

    invoke-virtual/range {v10 .. v16}, Lcom/android/contacts/common/ContactPhotoManager;->loadPhoto(Landroid/widget/ImageView;Landroid/net/Uri;IZZLcom/android/contacts/common/ContactPhotoManager$DefaultImageRequest;)V

    goto :goto_0

    .line 761
    .end local v12    # "photoUri":Landroid/net/Uri;
    .end local v16    # "request":Lcom/android/contacts/common/ContactPhotoManager$DefaultImageRequest;
    :cond_5
    invoke-static/range {v17 .. v17}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v12

    goto :goto_1
.end method

.method protected bindView(Landroid/view/View;ILandroid/database/Cursor;I)V
    .locals 2
    .param p1, "itemView"    # Landroid/view/View;
    .param p2, "partition"    # I
    .param p3, "cursor"    # Landroid/database/Cursor;
    .param p4, "position"    # I

    .prologue
    .line 131
    move-object v0, p1

    check-cast v0, Lcom/android/contacts/common/list/ContactListItemView;

    .line 132
    .local v0, "view":Lcom/android/contacts/common/list/ContactListItemView;
    invoke-virtual {p0}, Lcom/android/contacts/common/list/ContactEntryListAdapter;->isSectionHeaderDisplayEnabled()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/contacts/common/list/ContactListItemView;->setIsSectionHeaderEnabled(Z)V

    .line 133
    invoke-virtual {p0, v0, p2}, Lcom/android/contacts/common/list/ContactEntryListAdapter;->bindWorkProfileIcon(Lcom/android/contacts/common/list/ContactListItemView;I)V

    .line 134
    return-void
.end method

.method protected bindViewId(Lcom/android/contacts/common/list/ContactListItemView;Landroid/database/Cursor;I)V
    .locals 4
    .param p1, "view"    # Lcom/android/contacts/common/list/ContactListItemView;
    .param p2, "cursor"    # Landroid/database/Cursor;
    .param p3, "idColumn"    # I

    .prologue
    .line 784
    invoke-interface {p2, p3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    .line 785
    .local v0, "contactId":J
    const-wide/32 v2, 0x7fffffff

    rem-long v2, v0, v2

    long-to-int v2, v2

    invoke-virtual {p1, v2}, Lcom/android/contacts/common/list/ContactListItemView;->setId(I)V

    .line 787
    return-void
.end method

.method protected bindWorkProfileIcon(Lcom/android/contacts/common/list/ContactListItemView;I)V
    .locals 8
    .param p1, "view"    # Lcom/android/contacts/common/list/ContactListItemView;
    .param p2, "partitionId"    # I

    .prologue
    .line 624
    invoke-virtual {p0, p2}, Lcom/android/contacts/common/list/ContactEntryListAdapter;->getPartition(I)Lcom/android/contacts/common/list/CompositeCursorAdapter$Partition;

    move-result-object v3

    .line 625
    .local v3, "partition":Lcom/android/contacts/common/list/CompositeCursorAdapter$Partition;
    instance-of v6, v3, Lcom/android/contacts/common/list/DirectoryPartition;

    if-eqz v6, :cond_0

    move-object v2, v3

    .line 626
    check-cast v2, Lcom/android/contacts/common/list/DirectoryPartition;

    .line 627
    .local v2, "directoryPartition":Lcom/android/contacts/common/list/DirectoryPartition;
    invoke-virtual {v2}, Lcom/android/contacts/common/list/DirectoryPartition;->getDirectoryId()J

    move-result-wide v0

    .line 628
    .local v0, "directoryId":J
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    const/4 v7, 0x0

    invoke-static {v6, v7}, Lcom/android/contacts/common/ContactsUtils;->determineUserType(Ljava/lang/Long;Ljava/lang/Long;)J

    move-result-wide v4

    .line 629
    .local v4, "userType":J
    const-wide/16 v6, 0x1

    cmp-long v6, v4, v6

    if-nez v6, :cond_1

    const/4 v6, 0x1

    :goto_0
    invoke-virtual {p1, v6}, Lcom/android/contacts/common/list/ContactListItemView;->setWorkProfileIconEnabled(Z)V

    .line 631
    .end local v0    # "directoryId":J
    .end local v2    # "directoryPartition":Lcom/android/contacts/common/list/DirectoryPartition;
    .end local v4    # "userType":J
    :cond_0
    return-void

    .line 629
    .restart local v0    # "directoryId":J
    .restart local v2    # "directoryPartition":Lcom/android/contacts/common/list/DirectoryPartition;
    .restart local v4    # "userType":J
    :cond_1
    const/4 v6, 0x0

    goto :goto_0
.end method

.method public changeCursor(ILandroid/database/Cursor;)V
    .locals 3
    .param p1, "partitionIndex"    # I
    .param p2, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 462
    invoke-virtual {p0}, Lcom/android/contacts/common/list/ContactEntryListAdapter;->getPartitionCount()I

    move-result v1

    if-lt p1, v1, :cond_1

    .line 484
    :cond_0
    :goto_0
    return-void

    .line 467
    :cond_1
    invoke-virtual {p0, p1}, Lcom/android/contacts/common/list/ContactEntryListAdapter;->getPartition(I)Lcom/android/contacts/common/list/CompositeCursorAdapter$Partition;

    move-result-object v0

    .line 468
    .local v0, "partition":Lcom/android/contacts/common/list/CompositeCursorAdapter$Partition;
    instance-of v1, v0, Lcom/android/contacts/common/list/DirectoryPartition;

    if-eqz v1, :cond_2

    .line 469
    check-cast v0, Lcom/android/contacts/common/list/DirectoryPartition;

    .end local v0    # "partition":Lcom/android/contacts/common/list/CompositeCursorAdapter$Partition;
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/android/contacts/common/list/DirectoryPartition;->setStatus(I)V

    .line 472
    :cond_2
    iget-boolean v1, p0, Lcom/android/contacts/common/list/ContactEntryListAdapter;->mDisplayPhotos:Z

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/contacts/common/list/ContactEntryListAdapter;->mPhotoLoader:Lcom/android/contacts/common/ContactPhotoManager;

    if-eqz v1, :cond_3

    invoke-virtual {p0, p1}, Lcom/android/contacts/common/list/ContactEntryListAdapter;->isPhotoSupported(I)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 473
    iget-object v1, p0, Lcom/android/contacts/common/list/ContactEntryListAdapter;->mPhotoLoader:Lcom/android/contacts/common/ContactPhotoManager;

    invoke-virtual {v1}, Lcom/android/contacts/common/ContactPhotoManager;->refreshCache()V

    .line 476
    :cond_3
    invoke-super {p0, p1, p2}, Lcom/android/contacts/common/list/IndexerListAdapter;->changeCursor(ILandroid/database/Cursor;)V

    .line 478
    invoke-virtual {p0}, Lcom/android/contacts/common/list/ContactEntryListAdapter;->isSectionHeaderDisplayEnabled()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-virtual {p0}, Lcom/android/contacts/common/list/ContactEntryListAdapter;->getIndexedPartition()I

    move-result v1

    if-ne p1, v1, :cond_4

    .line 479
    invoke-direct {p0, p2}, Lcom/android/contacts/common/list/ContactEntryListAdapter;->updateIndexer(Landroid/database/Cursor;)V

    .line 483
    :cond_4
    iget-object v1, p0, Lcom/android/contacts/common/list/ContactEntryListAdapter;->mPhotoLoader:Lcom/android/contacts/common/ContactPhotoManager;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/contacts/common/list/ContactEntryListAdapter;->mPhotoLoader:Lcom/android/contacts/common/ContactPhotoManager;

    iget-object v2, p0, Lcom/android/contacts/common/list/ContactEntryListAdapter;->mFragmentRootView:Landroid/view/View;

    invoke-virtual {v1, v2}, Lcom/android/contacts/common/ContactPhotoManager;->cancelPendingRequests(Landroid/view/View;)V

    goto :goto_0
.end method

.method public changeCursor(Landroid/database/Cursor;)V
    .locals 1
    .param p1, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 487
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Lcom/android/contacts/common/list/ContactEntryListAdapter;->changeCursor(ILandroid/database/Cursor;)V

    .line 488
    return-void
.end method

.method public changeDirectories(Landroid/database/Cursor;)V
    .locals 14
    .param p1, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 399
    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v11

    if-nez v11, :cond_0

    .line 402
    const-string v11, "ContactEntryListAdapter"

    const-string v12, "Directory search loader returned an empty cursor, which implies we have no directory entries."

    new-instance v13, Ljava/lang/RuntimeException;

    invoke-direct {v13}, Ljava/lang/RuntimeException;-><init>()V

    invoke-static {v11, v12, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 458
    :goto_0
    return-void

    .line 406
    :cond_0
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 408
    .local v1, "directoryIds":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/Long;>;"
    const-string v11, "_id"

    invoke-interface {p1, v11}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    .line 409
    .local v5, "idColumnIndex":I
    const-string v11, "directoryType"

    invoke-interface {p1, v11}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    .line 410
    .local v2, "directoryTypeColumnIndex":I
    const-string v11, "displayName"

    invoke-interface {p1, v11}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    .line 411
    .local v3, "displayNameColumnIndex":I
    const-string v11, "photoSupport"

    invoke-interface {p1, v11}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v10

    .line 415
    .local v10, "photoSupportColumnIndex":I
    const/4 v11, -0x1

    invoke-interface {p1, v11}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 416
    :cond_1
    :goto_1
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v11

    if-eqz v11, :cond_7

    .line 417
    invoke-interface {p1, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    .line 418
    .local v6, "id":J
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    invoke-virtual {v1, v11}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 419
    invoke-virtual {p0, v6, v7}, Lcom/android/contacts/common/list/ContactEntryListAdapter;->getPartitionByDirectoryId(J)I

    move-result v11

    const/4 v12, -0x1

    if-ne v11, v12, :cond_1

    .line 420
    new-instance v8, Lcom/android/contacts/common/list/DirectoryPartition;

    const/4 v11, 0x0

    const/4 v12, 0x1

    invoke-direct {v8, v11, v12}, Lcom/android/contacts/common/list/DirectoryPartition;-><init>(ZZ)V

    .line 421
    .local v8, "partition":Lcom/android/contacts/common/list/DirectoryPartition;
    invoke-virtual {v8, v6, v7}, Lcom/android/contacts/common/list/DirectoryPartition;->setDirectoryId(J)V

    .line 422
    invoke-static {v6, v7}, Lcom/android/contacts/common/compat/DirectoryCompat;->isRemoteDirectoryId(J)Z

    move-result v11

    if-eqz v11, :cond_4

    .line 423
    invoke-static {v6, v7}, Lcom/android/contacts/common/compat/DirectoryCompat;->isEnterpriseDirectoryId(J)Z

    move-result v11

    if-eqz v11, :cond_3

    .line 424
    iget-object v11, p0, Lcom/android/contacts/common/list/ContactEntryListAdapter;->mContext:Landroid/content/Context;

    const v12, 0x7f0904a7

    invoke-virtual {v11, v12}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v8, v11}, Lcom/android/contacts/common/list/DirectoryPartition;->setLabel(Ljava/lang/String;)V

    .line 435
    :goto_2
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v8, v11}, Lcom/android/contacts/common/list/DirectoryPartition;->setDirectoryType(Ljava/lang/String;)V

    .line 436
    invoke-interface {p1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v8, v11}, Lcom/android/contacts/common/list/DirectoryPartition;->setDisplayName(Ljava/lang/String;)V

    .line 437
    invoke-interface {p1, v10}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    .line 438
    .local v9, "photoSupport":I
    const/4 v11, 0x1

    if-eq v9, v11, :cond_2

    const/4 v11, 0x3

    if-ne v9, v11, :cond_6

    :cond_2
    const/4 v11, 0x1

    :goto_3
    invoke-virtual {v8, v11}, Lcom/android/contacts/common/list/DirectoryPartition;->setPhotoSupported(Z)V

    .line 440
    invoke-virtual {p0, v8}, Lcom/android/contacts/common/list/ContactEntryListAdapter;->addPartition(Lcom/android/contacts/common/list/CompositeCursorAdapter$Partition;)V

    goto :goto_1

    .line 426
    .end local v9    # "photoSupport":I
    :cond_3
    iget-object v11, p0, Lcom/android/contacts/common/list/ContactEntryListAdapter;->mContext:Landroid/content/Context;

    const v12, 0x7f0904a6

    invoke-virtual {v11, v12}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v8, v11}, Lcom/android/contacts/common/list/DirectoryPartition;->setLabel(Ljava/lang/String;)V

    goto :goto_2

    .line 429
    :cond_4
    invoke-static {v6, v7}, Lcom/android/contacts/common/compat/DirectoryCompat;->isEnterpriseDirectoryId(J)Z

    move-result v11

    if-eqz v11, :cond_5

    .line 430
    iget-object v11, p0, Lcom/android/contacts/common/list/ContactEntryListAdapter;->mContext:Landroid/content/Context;

    const v12, 0x7f090508

    invoke-virtual {v11, v12}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v8, v11}, Lcom/android/contacts/common/list/DirectoryPartition;->setLabel(Ljava/lang/String;)V

    goto :goto_2

    .line 432
    :cond_5
    iget-object v11, p0, Lcom/android/contacts/common/list/ContactEntryListAdapter;->mDefaultFilterHeaderText:Ljava/lang/CharSequence;

    invoke-interface {v11}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v8, v11}, Lcom/android/contacts/common/list/DirectoryPartition;->setLabel(Ljava/lang/String;)V

    goto :goto_2

    .line 438
    .restart local v9    # "photoSupport":I
    :cond_6
    const/4 v11, 0x0

    goto :goto_3

    .line 445
    .end local v6    # "id":J
    .end local v8    # "partition":Lcom/android/contacts/common/list/DirectoryPartition;
    .end local v9    # "photoSupport":I
    :cond_7
    invoke-virtual {p0}, Lcom/android/contacts/common/list/ContactEntryListAdapter;->getPartitionCount()I

    move-result v0

    .line 446
    .local v0, "count":I
    move v4, v0

    .local v4, "i":I
    :cond_8
    :goto_4
    add-int/lit8 v4, v4, -0x1

    if-ltz v4, :cond_9

    .line 447
    invoke-virtual {p0, v4}, Lcom/android/contacts/common/list/ContactEntryListAdapter;->getPartition(I)Lcom/android/contacts/common/list/CompositeCursorAdapter$Partition;

    move-result-object v8

    .line 448
    .local v8, "partition":Lcom/android/contacts/common/list/CompositeCursorAdapter$Partition;
    instance-of v11, v8, Lcom/android/contacts/common/list/DirectoryPartition;

    if-eqz v11, :cond_8

    .line 449
    check-cast v8, Lcom/android/contacts/common/list/DirectoryPartition;

    .end local v8    # "partition":Lcom/android/contacts/common/list/CompositeCursorAdapter$Partition;
    invoke-virtual {v8}, Lcom/android/contacts/common/list/DirectoryPartition;->getDirectoryId()J

    move-result-wide v6

    .line 450
    .restart local v6    # "id":J
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    invoke-virtual {v1, v11}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_8

    .line 451
    invoke-virtual {p0, v4}, Lcom/android/contacts/common/list/ContactEntryListAdapter;->removePartition(I)V

    goto :goto_4

    .line 456
    .end local v6    # "id":J
    :cond_9
    invoke-virtual {p0}, Lcom/android/contacts/common/list/ContactEntryListAdapter;->invalidate()V

    .line 457
    invoke-virtual {p0}, Lcom/android/contacts/common/list/ContactEntryListAdapter;->notifyDataSetChanged()V

    goto/16 :goto_0
.end method

.method public clearPartitions()V
    .locals 5

    .prologue
    .line 236
    invoke-virtual {p0}, Lcom/android/contacts/common/list/ContactEntryListAdapter;->getPartitionCount()I

    move-result v0

    .line 237
    .local v0, "count":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_1

    .line 238
    invoke-virtual {p0, v2}, Lcom/android/contacts/common/list/ContactEntryListAdapter;->getPartition(I)Lcom/android/contacts/common/list/CompositeCursorAdapter$Partition;

    move-result-object v3

    .line 239
    .local v3, "partition":Lcom/android/contacts/common/list/CompositeCursorAdapter$Partition;
    instance-of v4, v3, Lcom/android/contacts/common/list/DirectoryPartition;

    if-eqz v4, :cond_0

    move-object v1, v3

    .line 240
    check-cast v1, Lcom/android/contacts/common/list/DirectoryPartition;

    .line 241
    .local v1, "directoryPartition":Lcom/android/contacts/common/list/DirectoryPartition;
    const/4 v4, 0x0

    invoke-virtual {v1, v4}, Lcom/android/contacts/common/list/DirectoryPartition;->setStatus(I)V

    .line 237
    .end local v1    # "directoryPartition":Lcom/android/contacts/common/list/DirectoryPartition;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 244
    .end local v3    # "partition":Lcom/android/contacts/common/list/CompositeCursorAdapter$Partition;
    :cond_1
    invoke-super {p0}, Lcom/android/contacts/common/list/IndexerListAdapter;->clearPartitions()V

    .line 245
    return-void
.end method

.method public configureDefaultPartition(ZZ)V
    .locals 8
    .param p1, "showIfEmpty"    # Z
    .param p2, "hasHeader"    # Z

    .prologue
    .line 592
    const/4 v1, -0x1

    .line 593
    .local v1, "defaultPartitionIndex":I
    invoke-virtual {p0}, Lcom/android/contacts/common/list/ContactEntryListAdapter;->getPartitionCount()I

    move-result v0

    .line 594
    .local v0, "count":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_0

    .line 595
    invoke-virtual {p0, v2}, Lcom/android/contacts/common/list/ContactEntryListAdapter;->getPartition(I)Lcom/android/contacts/common/list/CompositeCursorAdapter$Partition;

    move-result-object v3

    .line 596
    .local v3, "partition":Lcom/android/contacts/common/list/CompositeCursorAdapter$Partition;
    instance-of v4, v3, Lcom/android/contacts/common/list/DirectoryPartition;

    if-eqz v4, :cond_2

    check-cast v3, Lcom/android/contacts/common/list/DirectoryPartition;

    .line 597
    .end local v3    # "partition":Lcom/android/contacts/common/list/CompositeCursorAdapter$Partition;
    invoke-virtual {v3}, Lcom/android/contacts/common/list/DirectoryPartition;->getDirectoryId()J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-nez v4, :cond_2

    .line 598
    move v1, v2

    .line 602
    :cond_0
    const/4 v4, -0x1

    if-eq v1, v4, :cond_1

    .line 603
    invoke-virtual {p0, v1, p1}, Lcom/android/contacts/common/list/ContactEntryListAdapter;->setShowIfEmpty(IZ)V

    .line 604
    invoke-virtual {p0, v1, p2}, Lcom/android/contacts/common/list/ContactEntryListAdapter;->setHasHeader(IZ)V

    .line 606
    :cond_1
    return-void

    .line 594
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public abstract configureLoader(Landroid/content/CursorLoader;J)V
.end method

.method protected createDefaultDirectoryPartition()Lcom/android/contacts/common/list/DirectoryPartition;
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 151
    new-instance v0, Lcom/android/contacts/common/list/DirectoryPartition;

    invoke-direct {v0, v4, v4}, Lcom/android/contacts/common/list/DirectoryPartition;-><init>(ZZ)V

    .line 152
    .local v0, "partition":Lcom/android/contacts/common/list/DirectoryPartition;
    const-wide/16 v2, 0x0

    invoke-virtual {v0, v2, v3}, Lcom/android/contacts/common/list/DirectoryPartition;->setDirectoryId(J)V

    .line 153
    invoke-virtual {p0}, Lcom/android/contacts/common/list/ContactEntryListAdapter;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f09046c

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/contacts/common/list/DirectoryPartition;->setDirectoryType(Ljava/lang/String;)V

    .line 154
    invoke-virtual {v0, v4}, Lcom/android/contacts/common/list/DirectoryPartition;->setPriorityDirectory(Z)V

    .line 155
    invoke-virtual {v0, v4}, Lcom/android/contacts/common/list/DirectoryPartition;->setPhotoSupported(Z)V

    .line 156
    iget-object v1, p0, Lcom/android/contacts/common/list/ContactEntryListAdapter;->mDefaultFilterHeaderText:Ljava/lang/CharSequence;

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/contacts/common/list/DirectoryPartition;->setLabel(Ljava/lang/String;)V

    .line 157
    return-object v0
.end method

.method protected createPinnedSectionHeaderView(Landroid/content/Context;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 138
    new-instance v0, Lcom/android/contacts/common/list/ContactListPinnedHeaderView;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1, p2}, Lcom/android/contacts/common/list/ContactListPinnedHeaderView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;Landroid/view/View;)V

    return-object v0
.end method

.method public getCircularPhotos()Z
    .locals 1

    .prologue
    .line 327
    iget-boolean v0, p0, Lcom/android/contacts/common/list/ContactEntryListAdapter;->mCircularPhotos:Z

    return v0
.end method

.method public abstract getContactDisplayName(I)Ljava/lang/String;
.end method

.method public getContactNameDisplayOrder()I
    .locals 1

    .prologue
    .line 295
    iget v0, p0, Lcom/android/contacts/common/list/ContactEntryListAdapter;->mDisplayOrder:I

    return v0
.end method

.method protected getContactUri(ILandroid/database/Cursor;II)Landroid/net/Uri;
    .locals 9
    .param p1, "partitionIndex"    # I
    .param p2, "cursor"    # Landroid/database/Cursor;
    .param p3, "contactIdColumn"    # I
    .param p4, "lookUpKeyColumn"    # I

    .prologue
    .line 791
    invoke-interface {p2, p3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    .line 792
    .local v0, "contactId":J
    invoke-interface {p2, p4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 793
    .local v4, "lookupKey":Ljava/lang/String;
    invoke-virtual {p0, p1}, Lcom/android/contacts/common/list/ContactEntryListAdapter;->getPartition(I)Lcom/android/contacts/common/list/CompositeCursorAdapter$Partition;

    move-result-object v6

    check-cast v6, Lcom/android/contacts/common/list/DirectoryPartition;

    invoke-virtual {v6}, Lcom/android/contacts/common/list/DirectoryPartition;->getDirectoryId()J

    move-result-wide v2

    .line 794
    .local v2, "directoryId":J
    invoke-static {v0, v1, v4}, Landroid/provider/ContactsContract$Contacts;->getLookupUri(JLjava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    .line 795
    .local v5, "uri":Landroid/net/Uri;
    if-eqz v5, :cond_0

    const-wide/16 v6, 0x0

    cmp-long v6, v2, v6

    if-eqz v6, :cond_0

    .line 796
    invoke-virtual {v5}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v6

    const-string v7, "directory"

    .line 797
    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v8

    .line 796
    invoke-virtual {v6, v7, v8}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v6

    .line 797
    invoke-virtual {v6}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v5

    .line 799
    :cond_0
    return-object v5
.end method

.method public getDefaultImageRequestFromCursor(Landroid/database/Cursor;II)Lcom/android/contacts/common/ContactPhotoManager$DefaultImageRequest;
    .locals 4
    .param p1, "cursor"    # Landroid/database/Cursor;
    .param p2, "displayNameColumn"    # I
    .param p3, "lookupKeyColumn"    # I

    .prologue
    .line 814
    invoke-interface {p1, p2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 815
    .local v0, "displayName":Ljava/lang/String;
    invoke-interface {p1, p3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 816
    .local v1, "lookupKey":Ljava/lang/String;
    new-instance v2, Lcom/android/contacts/common/ContactPhotoManager$DefaultImageRequest;

    iget-boolean v3, p0, Lcom/android/contacts/common/list/ContactEntryListAdapter;->mCircularPhotos:Z

    invoke-direct {v2, v0, v1, v3}, Lcom/android/contacts/common/ContactPhotoManager$DefaultImageRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    return-object v2
.end method

.method protected getDirectoryById(J)Lcom/android/contacts/common/list/DirectoryPartition;
    .locals 7
    .param p1, "id"    # J

    .prologue
    .line 196
    invoke-virtual {p0}, Lcom/android/contacts/common/list/ContactEntryListAdapter;->getPartitionCount()I

    move-result v0

    .line 197
    .local v0, "count":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_1

    .line 198
    invoke-virtual {p0, v2}, Lcom/android/contacts/common/list/ContactEntryListAdapter;->getPartition(I)Lcom/android/contacts/common/list/CompositeCursorAdapter$Partition;

    move-result-object v3

    .line 199
    .local v3, "partition":Lcom/android/contacts/common/list/CompositeCursorAdapter$Partition;
    instance-of v4, v3, Lcom/android/contacts/common/list/DirectoryPartition;

    if-eqz v4, :cond_0

    move-object v1, v3

    .line 200
    check-cast v1, Lcom/android/contacts/common/list/DirectoryPartition;

    .line 201
    .local v1, "directoryPartition":Lcom/android/contacts/common/list/DirectoryPartition;
    invoke-virtual {v1}, Lcom/android/contacts/common/list/DirectoryPartition;->getDirectoryId()J

    move-result-wide v4

    cmp-long v4, v4, p1

    if-nez v4, :cond_0

    .line 206
    .end local v1    # "directoryPartition":Lcom/android/contacts/common/list/DirectoryPartition;
    .end local v3    # "partition":Lcom/android/contacts/common/list/CompositeCursorAdapter$Partition;
    :goto_1
    return-object v1

    .line 197
    .restart local v3    # "partition":Lcom/android/contacts/common/list/CompositeCursorAdapter$Partition;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 206
    .end local v3    # "partition":Lcom/android/contacts/common/list/CompositeCursorAdapter$Partition;
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public getDirectoryResultLimit()I
    .locals 1

    .prologue
    .line 282
    iget v0, p0, Lcom/android/contacts/common/list/ContactEntryListAdapter;->mDirectoryResultLimit:I

    return v0
.end method

.method public getDirectoryResultLimit(Lcom/android/contacts/common/list/DirectoryPartition;)I
    .locals 2
    .param p1, "directoryPartition"    # Lcom/android/contacts/common/list/DirectoryPartition;

    .prologue
    .line 286
    invoke-virtual {p1}, Lcom/android/contacts/common/list/DirectoryPartition;->getResultLimit()I

    move-result v0

    .line 287
    .local v0, "limit":I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/android/contacts/common/list/ContactEntryListAdapter;->mDirectoryResultLimit:I

    .end local v0    # "limit":I
    :cond_0
    return v0
.end method

.method public getDirectorySearchMode()I
    .locals 1

    .prologue
    .line 274
    iget v0, p0, Lcom/android/contacts/common/list/ContactEntryListAdapter;->mDirectorySearchMode:I

    return v0
.end method

.method public getDisplayPhotos()Z
    .locals 1

    .prologue
    .line 319
    iget-boolean v0, p0, Lcom/android/contacts/common/list/ContactEntryListAdapter;->mDisplayPhotos:Z

    return v0
.end method

.method protected getExtraStartingSection()Z
    .locals 1

    .prologue
    .line 527
    const/4 v0, 0x0

    return v0
.end method

.method public getFilter()Lcom/android/contacts/common/list/ContactListFilter;
    .locals 1

    .prologue
    .line 720
    iget-object v0, p0, Lcom/android/contacts/common/list/ContactEntryListAdapter;->mFilter:Lcom/android/contacts/common/list/ContactListFilter;

    return-object v0
.end method

.method public getItemViewType(II)I
    .locals 3
    .param p1, "partitionIndex"    # I
    .param p2, "position"    # I

    .prologue
    .line 539
    invoke-super {p0, p1, p2}, Lcom/android/contacts/common/list/IndexerListAdapter;->getItemViewType(II)I

    move-result v1

    .line 540
    .local v1, "type":I
    invoke-virtual {p0, p2}, Lcom/android/contacts/common/list/ContactEntryListAdapter;->isUserProfile(I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 541
    invoke-virtual {p0}, Lcom/android/contacts/common/list/ContactEntryListAdapter;->isSectionHeaderDisplayEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 542
    invoke-virtual {p0}, Lcom/android/contacts/common/list/ContactEntryListAdapter;->getIndexedPartition()I

    move-result v2

    if-ne p1, v2, :cond_0

    .line 543
    invoke-virtual {p0, p2}, Lcom/android/contacts/common/list/ContactEntryListAdapter;->getItemPlacementInSection(I)Lcom/android/contacts/common/list/IndexerListAdapter$Placement;

    move-result-object v0

    .line 544
    .local v0, "placement":Lcom/android/contacts/common/list/IndexerListAdapter$Placement;
    iget-boolean v2, v0, Lcom/android/contacts/common/list/IndexerListAdapter$Placement;->firstInSection:Z

    if-eqz v2, :cond_1

    .line 546
    .end local v0    # "placement":Lcom/android/contacts/common/list/IndexerListAdapter$Placement;
    .end local v1    # "type":I
    :cond_0
    :goto_0
    return v1

    .line 544
    .restart local v0    # "placement":Lcom/android/contacts/common/list/IndexerListAdapter$Placement;
    .restart local v1    # "type":I
    :cond_1
    invoke-virtual {p0}, Lcom/android/contacts/common/list/ContactEntryListAdapter;->getItemViewTypeCount()I

    move-result v2

    add-int/2addr v1, v2

    goto :goto_0
.end method

.method protected getPartitionByDirectoryId(J)I
    .locals 7
    .param p1, "id"    # J

    .prologue
    .line 183
    invoke-virtual {p0}, Lcom/android/contacts/common/list/ContactEntryListAdapter;->getPartitionCount()I

    move-result v0

    .line 184
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 185
    invoke-virtual {p0, v1}, Lcom/android/contacts/common/list/ContactEntryListAdapter;->getPartition(I)Lcom/android/contacts/common/list/CompositeCursorAdapter$Partition;

    move-result-object v2

    .line 186
    .local v2, "partition":Lcom/android/contacts/common/list/CompositeCursorAdapter$Partition;
    instance-of v3, v2, Lcom/android/contacts/common/list/DirectoryPartition;

    if-eqz v3, :cond_0

    .line 187
    check-cast v2, Lcom/android/contacts/common/list/DirectoryPartition;

    .end local v2    # "partition":Lcom/android/contacts/common/list/CompositeCursorAdapter$Partition;
    invoke-virtual {v2}, Lcom/android/contacts/common/list/DirectoryPartition;->getDirectoryId()J

    move-result-wide v4

    cmp-long v3, v4, p1

    if-nez v3, :cond_0

    .line 192
    .end local v1    # "i":I
    :goto_1
    return v1

    .line 184
    .restart local v1    # "i":I
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 192
    :cond_1
    const/4 v1, -0x1

    goto :goto_1
.end method

.method protected getPhotoLoader()Lcom/android/contacts/common/ContactPhotoManager;
    .locals 1

    .prologue
    .line 315
    iget-object v0, p0, Lcom/android/contacts/common/list/ContactEntryListAdapter;->mPhotoLoader:Lcom/android/contacts/common/ContactPhotoManager;

    return-object v0
.end method

.method public getQuantityText(III)Ljava/lang/String;
    .locals 4
    .param p1, "count"    # I
    .param p2, "zeroResourceId"    # I
    .param p3, "pluralResourceId"    # I

    .prologue
    .line 699
    if-nez p1, :cond_0

    .line 700
    invoke-virtual {p0}, Lcom/android/contacts/common/list/ContactEntryListAdapter;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 704
    :goto_0
    return-object v1

    .line 702
    :cond_0
    invoke-virtual {p0}, Lcom/android/contacts/common/list/ContactEntryListAdapter;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 703
    invoke-virtual {v1, p3, p1}, Landroid/content/res/Resources;->getQuantityText(II)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    .line 704
    .local v0, "format":Ljava/lang/String;
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public getQueryString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 256
    iget-object v0, p0, Lcom/android/contacts/common/list/ContactEntryListAdapter;->mQueryString:Ljava/lang/String;

    return-object v0
.end method

.method protected getResultCount(Landroid/database/Cursor;)I
    .locals 1
    .param p1, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 667
    if-nez p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v0

    goto :goto_0
.end method

.method public getSortOrder()I
    .locals 1

    .prologue
    .line 303
    iget v0, p0, Lcom/android/contacts/common/list/ContactEntryListAdapter;->mSortOrder:I

    return v0
.end method

.method public getUpperCaseQueryString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 270
    iget-object v0, p0, Lcom/android/contacts/common/list/ContactEntryListAdapter;->mUpperCaseQueryString:Ljava/lang/String;

    return-object v0
.end method

.method public getViewTypeCount()I
    .locals 1

    .prologue
    .line 534
    invoke-virtual {p0}, Lcom/android/contacts/common/list/ContactEntryListAdapter;->getItemViewTypeCount()I

    move-result v0

    mul-int/lit8 v0, v0, 0x2

    add-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public hasProfile()Z
    .locals 1

    .prologue
    .line 387
    iget-boolean v0, p0, Lcom/android/contacts/common/list/ContactEntryListAdapter;->mProfileExists:Z

    return v0
.end method

.method public hasStableIds()Z
    .locals 1

    .prologue
    .line 778
    const/4 v0, 0x1

    return v0
.end method

.method public isAdjustSelectionBoundsEnabled()Z
    .locals 1

    .prologue
    .line 359
    iget-boolean v0, p0, Lcom/android/contacts/common/list/ContactEntryListAdapter;->mAdjustSelectionBoundsEnabled:Z

    return v0
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 557
    iget-boolean v0, p0, Lcom/android/contacts/common/list/ContactEntryListAdapter;->mEmptyListEnabled:Z

    if-nez v0, :cond_0

    .line 558
    const/4 v0, 0x0

    .line 562
    :goto_0
    return v0

    .line 559
    :cond_0
    invoke-virtual {p0}, Lcom/android/contacts/common/list/ContactEntryListAdapter;->isSearchMode()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 560
    invoke-virtual {p0}, Lcom/android/contacts/common/list/ContactEntryListAdapter;->getQueryString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    goto :goto_0

    .line 562
    :cond_1
    invoke-super {p0}, Lcom/android/contacts/common/list/IndexerListAdapter;->isEmpty()Z

    move-result v0

    goto :goto_0
.end method

.method public isEmptyListEnabled()Z
    .locals 1

    .prologue
    .line 335
    iget-boolean v0, p0, Lcom/android/contacts/common/list/ContactEntryListAdapter;->mEmptyListEnabled:Z

    return v0
.end method

.method public isLoading()Z
    .locals 4

    .prologue
    .line 567
    invoke-virtual {p0}, Lcom/android/contacts/common/list/ContactEntryListAdapter;->getPartitionCount()I

    move-result v0

    .line 568
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 569
    invoke-virtual {p0, v1}, Lcom/android/contacts/common/list/ContactEntryListAdapter;->getPartition(I)Lcom/android/contacts/common/list/CompositeCursorAdapter$Partition;

    move-result-object v2

    .line 570
    .local v2, "partition":Lcom/android/contacts/common/list/CompositeCursorAdapter$Partition;
    instance-of v3, v2, Lcom/android/contacts/common/list/DirectoryPartition;

    if-eqz v3, :cond_0

    check-cast v2, Lcom/android/contacts/common/list/DirectoryPartition;

    .line 571
    .end local v2    # "partition":Lcom/android/contacts/common/list/CompositeCursorAdapter$Partition;
    invoke-virtual {v2}, Lcom/android/contacts/common/list/DirectoryPartition;->isLoading()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 572
    const/4 v3, 0x1

    .line 575
    :goto_1
    return v3

    .line 568
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 575
    :cond_1
    const/4 v3, 0x0

    goto :goto_1
.end method

.method public isPhotoSupported(I)Z
    .locals 2
    .param p1, "partitionIndex"    # I

    .prologue
    .line 709
    invoke-virtual {p0, p1}, Lcom/android/contacts/common/list/ContactEntryListAdapter;->getPartition(I)Lcom/android/contacts/common/list/CompositeCursorAdapter$Partition;

    move-result-object v0

    .line 710
    .local v0, "partition":Lcom/android/contacts/common/list/CompositeCursorAdapter$Partition;
    instance-of v1, v0, Lcom/android/contacts/common/list/DirectoryPartition;

    if-eqz v1, :cond_0

    .line 711
    check-cast v0, Lcom/android/contacts/common/list/DirectoryPartition;

    .end local v0    # "partition":Lcom/android/contacts/common/list/CompositeCursorAdapter$Partition;
    invoke-virtual {v0}, Lcom/android/contacts/common/list/DirectoryPartition;->isPhotoSupported()Z

    move-result v1

    .line 713
    :goto_0
    return v1

    .restart local v0    # "partition":Lcom/android/contacts/common/list/CompositeCursorAdapter$Partition;
    :cond_0
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public isQuickContactEnabled()Z
    .locals 1

    .prologue
    .line 351
    iget-boolean v0, p0, Lcom/android/contacts/common/list/ContactEntryListAdapter;->mQuickContactEnabled:Z

    return v0
.end method

.method public isSearchMode()Z
    .locals 1

    .prologue
    .line 248
    iget-boolean v0, p0, Lcom/android/contacts/common/list/ContactEntryListAdapter;->mSearchMode:Z

    return v0
.end method

.method public isSelectionVisible()Z
    .locals 1

    .prologue
    .line 343
    iget-boolean v0, p0, Lcom/android/contacts/common/list/ContactEntryListAdapter;->mSelectionVisible:Z

    return v0
.end method

.method protected isUserProfile(I)Z
    .locals 7
    .param p1, "position"    # I

    .prologue
    const/4 v5, 0x1

    .line 676
    const/4 v1, 0x0

    .line 677
    .local v1, "isUserProfile":Z
    if-nez p1, :cond_1

    .line 678
    invoke-virtual {p0, p1}, Lcom/android/contacts/common/list/ContactEntryListAdapter;->getPartitionForPosition(I)I

    move-result v3

    .line 679
    .local v3, "partition":I
    if-ltz v3, :cond_1

    .line 682
    invoke-virtual {p0, v3}, Lcom/android/contacts/common/list/ContactEntryListAdapter;->getCursor(I)Landroid/database/Cursor;

    move-result-object v6

    invoke-interface {v6}, Landroid/database/Cursor;->getPosition()I

    move-result v2

    .line 683
    .local v2, "offset":I
    invoke-virtual {p0, p1}, Lcom/android/contacts/common/list/ContactEntryListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/database/Cursor;

    .line 684
    .local v0, "cursor":Landroid/database/Cursor;
    if-eqz v0, :cond_1

    .line 685
    const-string v6, "is_user_profile"

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    .line 686
    .local v4, "profileColumnIndex":I
    const/4 v6, -0x1

    if-eq v4, v6, :cond_0

    .line 687
    invoke-interface {v0, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    if-ne v6, v5, :cond_2

    move v1, v5

    .line 690
    :cond_0
    :goto_0
    invoke-interface {v0, v2}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 694
    .end local v0    # "cursor":Landroid/database/Cursor;
    .end local v2    # "offset":I
    .end local v3    # "partition":I
    .end local v4    # "profileColumnIndex":I
    :cond_1
    return v1

    .line 687
    .restart local v0    # "cursor":Landroid/database/Cursor;
    .restart local v2    # "offset":I
    .restart local v3    # "partition":I
    .restart local v4    # "profileColumnIndex":I
    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected newHeaderView(Landroid/content/Context;ILandroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "partition"    # I
    .param p3, "cursor"    # Landroid/database/Cursor;
    .param p4, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 611
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 612
    .local v0, "inflater":Landroid/view/LayoutInflater;
    const v2, 0x7f04004b

    const/4 v3, 0x0

    invoke-virtual {v0, v2, p4, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 613
    .local v1, "view":Landroid/view/View;
    invoke-virtual {p0}, Lcom/android/contacts/common/list/ContactEntryListAdapter;->getPinnedPartitionHeadersEnabled()Z

    move-result v2

    if-nez v2, :cond_0

    .line 618
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 620
    :cond_0
    return-object v1
.end method

.method protected bridge synthetic newView(Landroid/content/Context;ILandroid/database/Cursor;ILandroid/view/ViewGroup;)Landroid/view/View;
    .locals 1

    .prologue
    .line 51
    invoke-virtual/range {p0 .. p5}, Lcom/android/contacts/common/list/ContactEntryListAdapter;->newView(Landroid/content/Context;ILandroid/database/Cursor;ILandroid/view/ViewGroup;)Lcom/android/contacts/common/list/ContactListItemView;

    move-result-object v0

    return-object v0
.end method

.method protected newView(Landroid/content/Context;ILandroid/database/Cursor;ILandroid/view/ViewGroup;)Lcom/android/contacts/common/list/ContactListItemView;
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "partition"    # I
    .param p3, "cursor"    # Landroid/database/Cursor;
    .param p4, "position"    # I
    .param p5, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 123
    new-instance v0, Lcom/android/contacts/common/list/ContactListItemView;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/android/contacts/common/list/ContactListItemView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 124
    .local v0, "view":Lcom/android/contacts/common/list/ContactListItemView;
    invoke-virtual {p0}, Lcom/android/contacts/common/list/ContactEntryListAdapter;->isSectionHeaderDisplayEnabled()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/contacts/common/list/ContactListItemView;->setIsSectionHeaderEnabled(Z)V

    .line 125
    invoke-virtual {p0}, Lcom/android/contacts/common/list/ContactEntryListAdapter;->isAdjustSelectionBoundsEnabled()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/contacts/common/list/ContactListItemView;->setAdjustSelectionBoundsEnabled(Z)V

    .line 126
    return-object v0
.end method

.method public onDataReload()V
    .locals 6

    .prologue
    .line 217
    const/4 v3, 0x0

    .line 218
    .local v3, "notify":Z
    invoke-virtual {p0}, Lcom/android/contacts/common/list/ContactEntryListAdapter;->getPartitionCount()I

    move-result v0

    .line 219
    .local v0, "count":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_2

    .line 220
    invoke-virtual {p0, v2}, Lcom/android/contacts/common/list/ContactEntryListAdapter;->getPartition(I)Lcom/android/contacts/common/list/CompositeCursorAdapter$Partition;

    move-result-object v4

    .line 221
    .local v4, "partition":Lcom/android/contacts/common/list/CompositeCursorAdapter$Partition;
    instance-of v5, v4, Lcom/android/contacts/common/list/DirectoryPartition;

    if-eqz v5, :cond_1

    move-object v1, v4

    .line 222
    check-cast v1, Lcom/android/contacts/common/list/DirectoryPartition;

    .line 223
    .local v1, "directoryPartition":Lcom/android/contacts/common/list/DirectoryPartition;
    invoke-virtual {v1}, Lcom/android/contacts/common/list/DirectoryPartition;->isLoading()Z

    move-result v5

    if-nez v5, :cond_0

    .line 224
    const/4 v3, 0x1

    .line 226
    :cond_0
    const/4 v5, 0x0

    invoke-virtual {v1, v5}, Lcom/android/contacts/common/list/DirectoryPartition;->setStatus(I)V

    .line 219
    .end local v1    # "directoryPartition":Lcom/android/contacts/common/list/DirectoryPartition;
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 229
    .end local v4    # "partition":Lcom/android/contacts/common/list/CompositeCursorAdapter$Partition;
    :cond_2
    if-eqz v3, :cond_3

    .line 230
    invoke-virtual {p0}, Lcom/android/contacts/common/list/ContactEntryListAdapter;->notifyDataSetChanged()V

    .line 232
    :cond_3
    return-void
.end method

.method public removeDirectoriesAfterDefault()V
    .locals 8

    .prologue
    .line 170
    invoke-virtual {p0}, Lcom/android/contacts/common/list/ContactEntryListAdapter;->getPartitionCount()I

    move-result v2

    .line 171
    .local v2, "partitionCount":I
    add-int/lit8 v0, v2, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_0

    .line 172
    invoke-virtual {p0, v0}, Lcom/android/contacts/common/list/ContactEntryListAdapter;->getPartition(I)Lcom/android/contacts/common/list/CompositeCursorAdapter$Partition;

    move-result-object v1

    .line 173
    .local v1, "partition":Lcom/android/contacts/common/list/CompositeCursorAdapter$Partition;
    instance-of v3, v1, Lcom/android/contacts/common/list/DirectoryPartition;

    if-eqz v3, :cond_1

    check-cast v1, Lcom/android/contacts/common/list/DirectoryPartition;

    .line 174
    .end local v1    # "partition":Lcom/android/contacts/common/list/CompositeCursorAdapter$Partition;
    invoke-virtual {v1}, Lcom/android/contacts/common/list/DirectoryPartition;->getDirectoryId()J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v3, v4, v6

    if-nez v3, :cond_1

    .line 180
    :cond_0
    return-void

    .line 177
    :cond_1
    invoke-virtual {p0, v0}, Lcom/android/contacts/common/list/ContactEntryListAdapter;->removePartition(I)V

    .line 171
    add-int/lit8 v0, v0, -0x1

    goto :goto_0
.end method

.method public setAdjustSelectionBoundsEnabled(Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .prologue
    .line 363
    iput-boolean p1, p0, Lcom/android/contacts/common/list/ContactEntryListAdapter;->mAdjustSelectionBoundsEnabled:Z

    .line 364
    return-void
.end method

.method public setCircularPhotos(Z)V
    .locals 0
    .param p1, "circularPhotos"    # Z

    .prologue
    .line 331
    iput-boolean p1, p0, Lcom/android/contacts/common/list/ContactEntryListAdapter;->mCircularPhotos:Z

    .line 332
    return-void
.end method

.method public setContactNameDisplayOrder(I)V
    .locals 0
    .param p1, "displayOrder"    # I

    .prologue
    .line 299
    iput p1, p0, Lcom/android/contacts/common/list/ContactEntryListAdapter;->mDisplayOrder:I

    .line 300
    return-void
.end method

.method public setDarkTheme(Z)V
    .locals 0
    .param p1, "value"    # Z

    .prologue
    .line 391
    iput-boolean p1, p0, Lcom/android/contacts/common/list/ContactEntryListAdapter;->mDarkTheme:Z

    .line 392
    return-void
.end method

.method protected setDefaultFilterHeaderText(I)V
    .locals 1
    .param p1, "resourceId"    # I

    .prologue
    .line 117
    invoke-virtual {p0}, Lcom/android/contacts/common/list/ContactEntryListAdapter;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/common/list/ContactEntryListAdapter;->mDefaultFilterHeaderText:Ljava/lang/CharSequence;

    .line 118
    return-void
.end method

.method public setDirectoryResultLimit(I)V
    .locals 0
    .param p1, "limit"    # I

    .prologue
    .line 291
    iput p1, p0, Lcom/android/contacts/common/list/ContactEntryListAdapter;->mDirectoryResultLimit:I

    .line 292
    return-void
.end method

.method public setDirectorySearchMode(I)V
    .locals 0
    .param p1, "mode"    # I

    .prologue
    .line 278
    iput p1, p0, Lcom/android/contacts/common/list/ContactEntryListAdapter;->mDirectorySearchMode:I

    .line 279
    return-void
.end method

.method public setDisplayPhotos(Z)V
    .locals 0
    .param p1, "displayPhotos"    # Z

    .prologue
    .line 323
    iput-boolean p1, p0, Lcom/android/contacts/common/list/ContactEntryListAdapter;->mDisplayPhotos:Z

    .line 324
    return-void
.end method

.method public setEmptyListEnabled(Z)V
    .locals 0
    .param p1, "flag"    # Z

    .prologue
    .line 339
    iput-boolean p1, p0, Lcom/android/contacts/common/list/ContactEntryListAdapter;->mEmptyListEnabled:Z

    .line 340
    return-void
.end method

.method public setFilter(Lcom/android/contacts/common/list/ContactListFilter;)V
    .locals 0
    .param p1, "filter"    # Lcom/android/contacts/common/list/ContactListFilter;

    .prologue
    .line 724
    iput-object p1, p0, Lcom/android/contacts/common/list/ContactEntryListAdapter;->mFilter:Lcom/android/contacts/common/list/ContactListFilter;

    .line 725
    return-void
.end method

.method protected setFragmentRootView(Landroid/view/View;)V
    .locals 0
    .param p1, "fragmentRootView"    # Landroid/view/View;

    .prologue
    .line 113
    iput-object p1, p0, Lcom/android/contacts/common/list/ContactEntryListAdapter;->mFragmentRootView:Landroid/view/View;

    .line 114
    return-void
.end method

.method public setIncludeProfile(Z)V
    .locals 0
    .param p1, "includeProfile"    # Z

    .prologue
    .line 371
    iput-boolean p1, p0, Lcom/android/contacts/common/list/ContactEntryListAdapter;->mIncludeProfile:Z

    .line 372
    return-void
.end method

.method public setPhotoLoader(Lcom/android/contacts/common/ContactPhotoManager;)V
    .locals 0
    .param p1, "photoLoader"    # Lcom/android/contacts/common/ContactPhotoManager;

    .prologue
    .line 311
    iput-object p1, p0, Lcom/android/contacts/common/list/ContactEntryListAdapter;->mPhotoLoader:Lcom/android/contacts/common/ContactPhotoManager;

    .line 312
    return-void
.end method

.method protected setPinnedSectionTitle(Landroid/view/View;Ljava/lang/String;)V
    .locals 0
    .param p1, "pinnedHeaderView"    # Landroid/view/View;
    .param p2, "title"    # Ljava/lang/String;

    .prologue
    .line 143
    check-cast p1, Lcom/android/contacts/common/list/ContactListPinnedHeaderView;

    .end local p1    # "pinnedHeaderView":Landroid/view/View;
    invoke-virtual {p1, p2}, Lcom/android/contacts/common/list/ContactListPinnedHeaderView;->setSectionHeaderTitle(Ljava/lang/String;)V

    .line 144
    return-void
.end method

.method public setProfileExists(Z)V
    .locals 3
    .param p1, "exists"    # Z

    .prologue
    .line 375
    iput-boolean p1, p0, Lcom/android/contacts/common/list/ContactEntryListAdapter;->mProfileExists:Z

    .line 377
    if-eqz p1, :cond_0

    .line 378
    invoke-virtual {p0}, Lcom/android/contacts/common/list/ContactEntryListAdapter;->getIndexer()Landroid/widget/SectionIndexer;

    move-result-object v0

    .line 379
    .local v0, "indexer":Landroid/widget/SectionIndexer;
    if-eqz v0, :cond_0

    .line 380
    check-cast v0, Lcom/android/contacts/common/list/ContactsSectionIndexer;

    .line 381
    .end local v0    # "indexer":Landroid/widget/SectionIndexer;
    invoke-virtual {p0}, Lcom/android/contacts/common/list/ContactEntryListAdapter;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0905b6

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 380
    invoke-virtual {v0, v1}, Lcom/android/contacts/common/list/ContactsSectionIndexer;->setProfileHeader(Ljava/lang/String;)V

    .line 384
    :cond_0
    return-void
.end method

.method public setQueryString(Ljava/lang/String;)V
    .locals 1
    .param p1, "queryString"    # Ljava/lang/String;

    .prologue
    .line 260
    iput-object p1, p0, Lcom/android/contacts/common/list/ContactEntryListAdapter;->mQueryString:Ljava/lang/String;

    .line 261
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 262
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/contacts/common/list/ContactEntryListAdapter;->mUpperCaseQueryString:Ljava/lang/String;

    .line 267
    :goto_0
    return-void

    .line 265
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/contacts/common/util/SearchUtil;->cleanStartAndEndOfSearchQuery(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/common/list/ContactEntryListAdapter;->mUpperCaseQueryString:Ljava/lang/String;

    goto :goto_0
.end method

.method public setQuickContactEnabled(Z)V
    .locals 0
    .param p1, "quickContactEnabled"    # Z

    .prologue
    .line 355
    iput-boolean p1, p0, Lcom/android/contacts/common/list/ContactEntryListAdapter;->mQuickContactEnabled:Z

    .line 356
    return-void
.end method

.method public setSearchMode(Z)V
    .locals 0
    .param p1, "flag"    # Z

    .prologue
    .line 252
    iput-boolean p1, p0, Lcom/android/contacts/common/list/ContactEntryListAdapter;->mSearchMode:Z

    .line 253
    return-void
.end method

.method public setSelectionVisible(Z)V
    .locals 0
    .param p1, "flag"    # Z

    .prologue
    .line 347
    iput-boolean p1, p0, Lcom/android/contacts/common/list/ContactEntryListAdapter;->mSelectionVisible:Z

    .line 348
    return-void
.end method

.method public setSortOrder(I)V
    .locals 0
    .param p1, "sortOrder"    # I

    .prologue
    .line 307
    iput p1, p0, Lcom/android/contacts/common/list/ContactEntryListAdapter;->mSortOrder:I

    .line 308
    return-void
.end method

.method public shouldIncludeProfile()Z
    .locals 1

    .prologue
    .line 367
    iget-boolean v0, p0, Lcom/android/contacts/common/list/ContactEntryListAdapter;->mIncludeProfile:Z

    return v0
.end method
