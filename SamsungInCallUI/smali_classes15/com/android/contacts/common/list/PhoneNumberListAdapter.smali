.class public Lcom/android/contacts/common/list/PhoneNumberListAdapter;
.super Lcom/android/contacts/common/list/ContactEntryListAdapter;
.source "PhoneNumberListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/contacts/common/list/PhoneNumberListAdapter$PhoneQuery;,
        Lcom/android/contacts/common/list/PhoneNumberListAdapter$Listener;
    }
.end annotation


# static fields
.field private static final IGNORE_NUMBER_TOO_LONG_CLAUSE:Ljava/lang/String; = "length(data1) < 1000"

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final mCountryIso:Ljava/lang/String;

.field private final mExtendedDirectories:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/contacts/common/list/DirectoryPartition;",
            ">;"
        }
    .end annotation
.end field

.field private mFirstExtendedDirectoryId:J

.field private mIsPresenceEnabled:Z

.field private mIsVideoEnabled:Z

.field private mListener:Lcom/android/contacts/common/list/PhoneNumberListAdapter$Listener;

.field private mPhotoPosition:Lcom/android/contacts/common/list/ContactListItemView$PhotoPosition;

.field private final mUnknownNameText:Ljava/lang/CharSequence;

.field private mUseCallableUri:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 64
    const-class v0, Lcom/android/contacts/common/list/PhoneNumberListAdapter;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/contacts/common/list/PhoneNumberListAdapter;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 171
    invoke-direct {p0, p1}, Lcom/android/contacts/common/list/ContactEntryListAdapter;-><init>(Landroid/content/Context;)V

    .line 77
    const-wide v6, 0x7fffffffffffffffL

    iput-wide v6, p0, Lcom/android/contacts/common/list/PhoneNumberListAdapter;->mFirstExtendedDirectoryId:J

    .line 172
    const v2, 0x7f09050c

    invoke-virtual {p0, v2}, Lcom/android/contacts/common/list/PhoneNumberListAdapter;->setDefaultFilterHeaderText(I)V

    .line 173
    const v2, 0x104000e

    invoke-virtual {p1, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    iput-object v2, p0, Lcom/android/contacts/common/list/PhoneNumberListAdapter;->mUnknownNameText:Ljava/lang/CharSequence;

    .line 174
    invoke-static {p1}, Lcom/android/contacts/common/GeoUtil;->getCurrentCountryIso(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/contacts/common/list/PhoneNumberListAdapter;->mCountryIso:Ljava/lang/String;

    .line 177
    invoke-static {}, Lcom/android/contacts/common/extensions/ExtensionsFactory;->getExtendedPhoneDirectoriesManager()Lcom/android/contacts/common/extensions/ExtendedPhoneDirectoriesManager;

    move-result-object v0

    .line 178
    .local v0, "manager":Lcom/android/contacts/common/extensions/ExtendedPhoneDirectoriesManager;
    if-eqz v0, :cond_0

    .line 179
    iget-object v2, p0, Lcom/android/contacts/common/list/PhoneNumberListAdapter;->mContext:Landroid/content/Context;

    invoke-interface {v0, v2}, Lcom/android/contacts/common/extensions/ExtendedPhoneDirectoriesManager;->getExtendedDirectories(Landroid/content/Context;)Ljava/util/List;

    move-result-object v2

    iput-object v2, p0, Lcom/android/contacts/common/list/PhoneNumberListAdapter;->mExtendedDirectories:Ljava/util/List;

    .line 185
    :goto_0
    invoke-static {p1}, Lcom/android/contacts/common/CallUtil;->getVideoCallingAvailability(Landroid/content/Context;)I

    move-result v1

    .line 186
    .local v1, "videoCapabilities":I
    and-int/lit8 v2, v1, 0x1

    if-eqz v2, :cond_1

    move v2, v3

    :goto_1
    iput-boolean v2, p0, Lcom/android/contacts/common/list/PhoneNumberListAdapter;->mIsVideoEnabled:Z

    .line 187
    and-int/lit8 v2, v1, 0x2

    if-eqz v2, :cond_2

    :goto_2
    iput-boolean v3, p0, Lcom/android/contacts/common/list/PhoneNumberListAdapter;->mIsPresenceEnabled:Z

    .line 188
    return-void

    .line 182
    .end local v1    # "videoCapabilities":I
    :cond_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/android/contacts/common/list/PhoneNumberListAdapter;->mExtendedDirectories:Ljava/util/List;

    goto :goto_0

    .restart local v1    # "videoCapabilities":I
    :cond_1
    move v2, v4

    .line 186
    goto :goto_1

    :cond_2
    move v3, v4

    .line 187
    goto :goto_2
.end method

.method private applyFilter(Landroid/content/CursorLoader;Landroid/net/Uri$Builder;JLcom/android/contacts/common/list/ContactListFilter;)V
    .locals 5
    .param p1, "loader"    # Landroid/content/CursorLoader;
    .param p2, "uriBuilder"    # Landroid/net/Uri$Builder;
    .param p3, "directoryId"    # J
    .param p5, "filter"    # Lcom/android/contacts/common/list/ContactListFilter;

    .prologue
    .line 289
    if-eqz p5, :cond_0

    const-wide/16 v2, 0x0

    cmp-long v2, p3, v2

    if-eqz v2, :cond_1

    .line 320
    :cond_0
    :goto_0
    return-void

    .line 293
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 294
    .local v0, "selection":Ljava/lang/StringBuilder;
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 296
    .local v1, "selectionArgs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget v2, p5, Lcom/android/contacts/common/list/ContactListFilter;->filterType:I

    packed-switch v2, :pswitch_data_0

    .line 312
    :pswitch_0
    sget-object v2, Lcom/android/contacts/common/list/PhoneNumberListAdapter;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unsupported filter type came (type: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p5, Lcom/android/contacts/common/list/ContactListFilter;->filterType:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", toString: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " showing all contacts."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 318
    :goto_1
    :pswitch_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/content/CursorLoader;->setSelection(Ljava/lang/String;)V

    .line 319
    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/String;

    invoke-virtual {p1, v2}, Landroid/content/CursorLoader;->setSelectionArgs([Ljava/lang/String;)V

    goto :goto_0

    .line 298
    :pswitch_2
    const-string v2, "in_visible_group=1"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 299
    const-string v2, " AND has_phone_number=1"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 303
    :pswitch_3
    invoke-virtual {p5, p2}, Lcom/android/contacts/common/list/ContactListFilter;->addAccountQueryParameterToUrl(Landroid/net/Uri$Builder;)Landroid/net/Uri$Builder;

    goto :goto_1

    .line 296
    nop

    :pswitch_data_0
    .packed-switch -0x5
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method

.method private getExtendedDirectoryFromId(J)Lcom/android/contacts/common/list/DirectoryPartition;
    .locals 5
    .param p1, "directoryId"    # J

    .prologue
    .line 279
    iget-wide v2, p0, Lcom/android/contacts/common/list/PhoneNumberListAdapter;->mFirstExtendedDirectoryId:J

    sub-long v2, p1, v2

    long-to-int v0, v2

    .line 280
    .local v0, "directoryIndex":I
    iget-object v1, p0, Lcom/android/contacts/common/list/PhoneNumberListAdapter;->mExtendedDirectories:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/contacts/common/list/DirectoryPartition;

    return-object v1
.end method


# virtual methods
.method protected bindName(Lcom/android/contacts/common/list/ContactListItemView;Landroid/database/Cursor;)V
    .locals 2
    .param p1, "view"    # Lcom/android/contacts/common/list/ContactListItemView;
    .param p2, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 518
    const/4 v0, 0x7

    invoke-virtual {p0}, Lcom/android/contacts/common/list/PhoneNumberListAdapter;->getContactNameDisplayOrder()I

    move-result v1

    invoke-virtual {p1, p2, v0, v1}, Lcom/android/contacts/common/list/ContactListItemView;->showDisplayName(Landroid/database/Cursor;II)V

    .line 520
    return-void
.end method

.method protected bindPhoneNumber(Lcom/android/contacts/common/list/ContactListItemView;Landroid/database/Cursor;ZI)V
    .locals 10
    .param p1, "view"    # Lcom/android/contacts/common/list/ContactListItemView;
    .param p2, "cursor"    # Landroid/database/Cursor;
    .param p3, "displayNumber"    # Z
    .param p4, "position"    # I

    .prologue
    .line 473
    const/4 v4, 0x0

    .line 474
    .local v4, "label":Ljava/lang/CharSequence;
    if-eqz p3, :cond_0

    const/4 v9, 0x1

    invoke-interface {p2, v9}, Landroid/database/Cursor;->isNull(I)Z

    move-result v9

    if-nez v9, :cond_0

    .line 475
    const/4 v9, 0x1

    invoke-interface {p2, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    .line 476
    .local v8, "type":I
    const/4 v9, 0x2

    invoke-interface {p2, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 479
    .local v1, "customLabel":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/contacts/common/list/PhoneNumberListAdapter;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    invoke-static {v9, v8, v1}, Landroid/provider/ContactsContract$CommonDataKinds$Phone;->getTypeLabel(Landroid/content/res/Resources;ILjava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v4

    .line 481
    .end local v1    # "customLabel":Ljava/lang/String;
    .end local v8    # "type":I
    :cond_0
    invoke-virtual {p1, v4}, Lcom/android/contacts/common/list/ContactListItemView;->setLabel(Ljava/lang/CharSequence;)V

    .line 483
    if-eqz p3, :cond_4

    .line 484
    const/4 v9, 0x3

    invoke-interface {p2, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 495
    .local v7, "text":Ljava/lang/String;
    :goto_0
    iget-object v9, p0, Lcom/android/contacts/common/list/PhoneNumberListAdapter;->mCountryIso:Ljava/lang/String;

    invoke-virtual {p1, v7, v9}, Lcom/android/contacts/common/list/ContactListItemView;->setPhoneNumber(Ljava/lang/String;Ljava/lang/String;)V

    .line 497
    invoke-static {}, Lcom/android/contacts/common/compat/CompatUtils;->isVideoCompatible()Z

    move-result v9

    if-eqz v9, :cond_3

    .line 499
    const/16 v9, 0x9

    invoke-interface {p2, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    .line 500
    .local v0, "carrierPresence":I
    and-int/lit8 v9, v0, 0x1

    if-eqz v9, :cond_6

    const/4 v2, 0x1

    .line 502
    .local v2, "isPresent":Z
    :goto_1
    iget-boolean v9, p0, Lcom/android/contacts/common/list/PhoneNumberListAdapter;->mIsVideoEnabled:Z

    if-eqz v9, :cond_7

    iget-boolean v9, p0, Lcom/android/contacts/common/list/PhoneNumberListAdapter;->mIsPresenceEnabled:Z

    if-eqz v9, :cond_1

    if-nez v2, :cond_2

    :cond_1
    iget-boolean v9, p0, Lcom/android/contacts/common/list/PhoneNumberListAdapter;->mIsPresenceEnabled:Z

    if-nez v9, :cond_7

    :cond_2
    const/4 v3, 0x1

    .line 504
    .local v3, "isVideoIconShown":Z
    :goto_2
    iget-object v9, p0, Lcom/android/contacts/common/list/PhoneNumberListAdapter;->mListener:Lcom/android/contacts/common/list/PhoneNumberListAdapter$Listener;

    invoke-virtual {p1, v3, v9, p4}, Lcom/android/contacts/common/list/ContactListItemView;->setShowVideoCallIcon(ZLcom/android/contacts/common/list/PhoneNumberListAdapter$Listener;I)V

    .line 506
    .end local v0    # "carrierPresence":I
    .end local v2    # "isPresent":Z
    .end local v3    # "isVideoIconShown":Z
    :cond_3
    return-void

    .line 487
    .end local v7    # "text":Ljava/lang/String;
    :cond_4
    const/4 v9, 0x2

    invoke-interface {p2, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 488
    .local v5, "phoneLabel":Ljava/lang/String;
    if-eqz v5, :cond_5

    .line 489
    move-object v7, v5

    .restart local v7    # "text":Ljava/lang/String;
    goto :goto_0

    .line 491
    .end local v7    # "text":Ljava/lang/String;
    :cond_5
    const/4 v9, 0x3

    invoke-interface {p2, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 492
    .local v6, "phoneNumber":Ljava/lang/String;
    iget-object v9, p0, Lcom/android/contacts/common/list/PhoneNumberListAdapter;->mContext:Landroid/content/Context;

    invoke-static {v9, v6}, Lcom/android/contacts/common/GeoUtil;->getGeocodedLocationFor(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .restart local v7    # "text":Ljava/lang/String;
    goto :goto_0

    .line 500
    .end local v5    # "phoneLabel":Ljava/lang/String;
    .end local v6    # "phoneNumber":Ljava/lang/String;
    .restart local v0    # "carrierPresence":I
    :cond_6
    const/4 v2, 0x0

    goto :goto_1

    .line 502
    .restart local v2    # "isPresent":Z
    :cond_7
    const/4 v3, 0x0

    goto :goto_2
.end method

.method protected bindPhoto(Lcom/android/contacts/common/list/ContactListItemView;ILandroid/database/Cursor;)V
    .locals 15
    .param p1, "view"    # Lcom/android/contacts/common/list/ContactListItemView;
    .param p2, "partitionIndex"    # I
    .param p3, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 539
    move/from16 v0, p2

    invoke-virtual {p0, v0}, Lcom/android/contacts/common/list/PhoneNumberListAdapter;->isPhotoSupported(I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 540
    invoke-virtual/range {p1 .. p1}, Lcom/android/contacts/common/list/ContactListItemView;->removePhotoView()V

    .line 565
    :goto_0
    return-void

    .line 544
    :cond_0
    const-wide/16 v4, 0x0

    .line 545
    .local v4, "photoId":J
    const/4 v2, 0x6

    move-object/from16 v0, p3

    invoke-interface {v0, v2}, Landroid/database/Cursor;->isNull(I)Z

    move-result v2

    if-nez v2, :cond_1

    .line 546
    const/4 v2, 0x6

    move-object/from16 v0, p3

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    .line 549
    :cond_1
    const-wide/16 v2, 0x0

    cmp-long v2, v4, v2

    if-eqz v2, :cond_2

    .line 550
    invoke-virtual {p0}, Lcom/android/contacts/common/list/PhoneNumberListAdapter;->getPhotoLoader()Lcom/android/contacts/common/ContactPhotoManager;

    move-result-object v2

    invoke-virtual/range {p1 .. p1}, Lcom/android/contacts/common/list/ContactListItemView;->getPhotoView()Landroid/widget/ImageView;

    move-result-object v3

    const/4 v6, 0x0

    .line 551
    invoke-virtual {p0}, Lcom/android/contacts/common/list/PhoneNumberListAdapter;->getCircularPhotos()Z

    move-result v7

    const/4 v8, 0x0

    .line 550
    invoke-virtual/range {v2 .. v8}, Lcom/android/contacts/common/ContactPhotoManager;->loadThumbnail(Landroid/widget/ImageView;JZZLcom/android/contacts/common/ContactPhotoManager$DefaultImageRequest;)V

    goto :goto_0

    .line 553
    :cond_2
    const/16 v2, 0x8

    move-object/from16 v0, p3

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v14

    .line 554
    .local v14, "photoUriString":Ljava/lang/String;
    if-nez v14, :cond_4

    const/4 v8, 0x0

    .line 556
    .local v8, "photoUri":Landroid/net/Uri;
    :goto_1
    const/4 v11, 0x0

    .line 557
    .local v11, "request":Lcom/android/contacts/common/ContactPhotoManager$DefaultImageRequest;
    if-nez v8, :cond_3

    .line 558
    const/4 v2, 0x7

    move-object/from16 v0, p3

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 559
    .local v12, "displayName":Ljava/lang/String;
    const/4 v2, 0x5

    move-object/from16 v0, p3

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    .line 560
    .local v13, "lookupKey":Ljava/lang/String;
    new-instance v11, Lcom/android/contacts/common/ContactPhotoManager$DefaultImageRequest;

    .end local v11    # "request":Lcom/android/contacts/common/ContactPhotoManager$DefaultImageRequest;
    invoke-virtual {p0}, Lcom/android/contacts/common/list/PhoneNumberListAdapter;->getCircularPhotos()Z

    move-result v2

    invoke-direct {v11, v12, v13, v2}, Lcom/android/contacts/common/ContactPhotoManager$DefaultImageRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 562
    .end local v12    # "displayName":Ljava/lang/String;
    .end local v13    # "lookupKey":Ljava/lang/String;
    .restart local v11    # "request":Lcom/android/contacts/common/ContactPhotoManager$DefaultImageRequest;
    :cond_3
    invoke-virtual {p0}, Lcom/android/contacts/common/list/PhoneNumberListAdapter;->getPhotoLoader()Lcom/android/contacts/common/ContactPhotoManager;

    move-result-object v6

    invoke-virtual/range {p1 .. p1}, Lcom/android/contacts/common/list/ContactListItemView;->getPhotoView()Landroid/widget/ImageView;

    move-result-object v7

    const/4 v9, 0x0

    .line 563
    invoke-virtual {p0}, Lcom/android/contacts/common/list/PhoneNumberListAdapter;->getCircularPhotos()Z

    move-result v10

    .line 562
    invoke-virtual/range {v6 .. v11}, Lcom/android/contacts/common/ContactPhotoManager;->loadDirectoryPhoto(Landroid/widget/ImageView;Landroid/net/Uri;ZZLcom/android/contacts/common/ContactPhotoManager$DefaultImageRequest;)V

    goto :goto_0

    .line 554
    .end local v8    # "photoUri":Landroid/net/Uri;
    .end local v11    # "request":Lcom/android/contacts/common/ContactPhotoManager$DefaultImageRequest;
    :cond_4
    invoke-static {v14}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v8

    goto :goto_1
.end method

.method protected bindSectionHeaderAndDivider(Lcom/android/contacts/common/list/ContactListItemView;I)V
    .locals 3
    .param p1, "view"    # Lcom/android/contacts/common/list/ContactListItemView;
    .param p2, "position"    # I

    .prologue
    const/4 v1, 0x0

    .line 509
    invoke-virtual {p0}, Lcom/android/contacts/common/list/PhoneNumberListAdapter;->isSectionHeaderDisplayEnabled()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 510
    invoke-virtual {p0, p2}, Lcom/android/contacts/common/list/PhoneNumberListAdapter;->getItemPlacementInSection(I)Lcom/android/contacts/common/list/IndexerListAdapter$Placement;

    move-result-object v0

    .line 511
    .local v0, "placement":Lcom/android/contacts/common/list/IndexerListAdapter$Placement;
    iget-boolean v2, v0, Lcom/android/contacts/common/list/IndexerListAdapter$Placement;->firstInSection:Z

    if-eqz v2, :cond_0

    iget-object v1, v0, Lcom/android/contacts/common/list/IndexerListAdapter$Placement;->sectionHeader:Ljava/lang/String;

    :cond_0
    invoke-virtual {p1, v1}, Lcom/android/contacts/common/list/ContactListItemView;->setSectionHeader(Ljava/lang/String;)V

    .line 515
    .end local v0    # "placement":Lcom/android/contacts/common/list/IndexerListAdapter$Placement;
    :goto_0
    return-void

    .line 513
    :cond_1
    invoke-virtual {p1, v1}, Lcom/android/contacts/common/list/ContactListItemView;->setSectionHeader(Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected bindView(Landroid/view/View;ILandroid/database/Cursor;I)V
    .locals 22
    .param p1, "itemView"    # Landroid/view/View;
    .param p2, "partition"    # I
    .param p3, "cursor"    # Landroid/database/Cursor;
    .param p4, "position"    # I

    .prologue
    .line 414
    invoke-super/range {p0 .. p4}, Lcom/android/contacts/common/list/ContactEntryListAdapter;->bindView(Landroid/view/View;ILandroid/database/Cursor;I)V

    move-object/from16 v5, p1

    .line 415
    check-cast v5, Lcom/android/contacts/common/list/ContactListItemView;

    .line 417
    .local v5, "view":Lcom/android/contacts/common/list/ContactListItemView;
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-virtual {v0, v5, v1}, Lcom/android/contacts/common/list/PhoneNumberListAdapter;->setHighlight(Lcom/android/contacts/common/list/ContactListItemView;Landroid/database/Cursor;)V

    .line 424
    invoke-interface/range {p3 .. p4}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 425
    const/16 v16, 0x1

    .line 426
    .local v16, "isFirstEntry":Z
    const/16 v17, 0x1

    .line 427
    .local v17, "showBottomDivider":Z
    const/4 v4, 0x4

    move-object/from16 v0, p3

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v14

    .line 428
    .local v14, "currentContactId":J
    invoke-interface/range {p3 .. p3}, Landroid/database/Cursor;->moveToPrevious()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface/range {p3 .. p3}, Landroid/database/Cursor;->isBeforeFirst()Z

    move-result v4

    if-nez v4, :cond_0

    .line 429
    const/4 v4, 0x4

    move-object/from16 v0, p3

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v20

    .line 430
    .local v20, "previousContactId":J
    cmp-long v4, v14, v20

    if-nez v4, :cond_0

    .line 431
    const/16 v16, 0x0

    .line 434
    .end local v20    # "previousContactId":J
    :cond_0
    invoke-interface/range {p3 .. p4}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 435
    invoke-interface/range {p3 .. p3}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface/range {p3 .. p3}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v4

    if-nez v4, :cond_1

    .line 436
    const/4 v4, 0x4

    move-object/from16 v0, p3

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v18

    .line 437
    .local v18, "nextContactId":J
    cmp-long v4, v14, v18

    if-nez v4, :cond_1

    .line 442
    const/16 v17, 0x0

    .line 445
    .end local v18    # "nextContactId":J
    :cond_1
    invoke-interface/range {p3 .. p4}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 447
    const/4 v4, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-virtual {v0, v5, v1, v4}, Lcom/android/contacts/common/list/PhoneNumberListAdapter;->bindViewId(Lcom/android/contacts/common/list/ContactListItemView;Landroid/database/Cursor;I)V

    .line 449
    move-object/from16 v0, p0

    move/from16 v1, p4

    invoke-virtual {v0, v5, v1}, Lcom/android/contacts/common/list/PhoneNumberListAdapter;->bindSectionHeaderAndDivider(Lcom/android/contacts/common/list/ContactListItemView;I)V

    .line 450
    if-eqz v16, :cond_4

    .line 451
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-virtual {v0, v5, v1}, Lcom/android/contacts/common/list/PhoneNumberListAdapter;->bindName(Lcom/android/contacts/common/list/ContactListItemView;Landroid/database/Cursor;)V

    .line 452
    invoke-virtual/range {p0 .. p0}, Lcom/android/contacts/common/list/PhoneNumberListAdapter;->isQuickContactEnabled()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 453
    const/4 v8, 0x6

    const/16 v9, 0x8

    const/4 v10, 0x4

    const/4 v11, 0x5

    const/4 v12, 0x7

    move-object/from16 v4, p0

    move/from16 v6, p2

    move-object/from16 v7, p3

    invoke-virtual/range {v4 .. v12}, Lcom/android/contacts/common/list/PhoneNumberListAdapter;->bindQuickContact(Lcom/android/contacts/common/list/ContactListItemView;ILandroid/database/Cursor;IIIII)V

    .line 467
    :cond_2
    :goto_0
    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Lcom/android/contacts/common/list/PhoneNumberListAdapter;->getPartition(I)Lcom/android/contacts/common/list/CompositeCursorAdapter$Partition;

    move-result-object v13

    check-cast v13, Lcom/android/contacts/common/list/DirectoryPartition;

    .line 468
    .local v13, "directory":Lcom/android/contacts/common/list/DirectoryPartition;
    invoke-virtual {v13}, Lcom/android/contacts/common/list/DirectoryPartition;->isDisplayNumber()Z

    move-result v4

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    move/from16 v2, p4

    invoke-virtual {v0, v5, v1, v4, v2}, Lcom/android/contacts/common/list/PhoneNumberListAdapter;->bindPhoneNumber(Lcom/android/contacts/common/list/ContactListItemView;Landroid/database/Cursor;ZI)V

    .line 469
    return-void

    .line 457
    .end local v13    # "directory":Lcom/android/contacts/common/list/DirectoryPartition;
    :cond_3
    invoke-virtual/range {p0 .. p0}, Lcom/android/contacts/common/list/PhoneNumberListAdapter;->getDisplayPhotos()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 458
    move-object/from16 v0, p0

    move/from16 v1, p2

    move-object/from16 v2, p3

    invoke-virtual {v0, v5, v1, v2}, Lcom/android/contacts/common/list/PhoneNumberListAdapter;->bindPhoto(Lcom/android/contacts/common/list/ContactListItemView;ILandroid/database/Cursor;)V

    goto :goto_0

    .line 462
    :cond_4
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/android/contacts/common/list/PhoneNumberListAdapter;->unbindName(Lcom/android/contacts/common/list/ContactListItemView;)V

    .line 464
    const/4 v4, 0x1

    const/4 v6, 0x0

    invoke-virtual {v5, v4, v6}, Lcom/android/contacts/common/list/ContactListItemView;->removePhotoView(ZZ)V

    goto :goto_0
.end method

.method protected bindWorkProfileIcon(Lcom/android/contacts/common/list/ContactListItemView;I)V
    .locals 8
    .param p1, "view"    # Lcom/android/contacts/common/list/ContactListItemView;
    .param p2, "partition"    # I

    .prologue
    .line 528
    invoke-virtual {p0, p2}, Lcom/android/contacts/common/list/PhoneNumberListAdapter;->getPartition(I)Lcom/android/contacts/common/list/CompositeCursorAdapter$Partition;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/common/list/DirectoryPartition;

    .line 529
    .local v0, "directory":Lcom/android/contacts/common/list/DirectoryPartition;
    invoke-virtual {v0}, Lcom/android/contacts/common/list/DirectoryPartition;->getDirectoryId()J

    move-result-wide v2

    .line 530
    .local v2, "directoryId":J
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v6, 0x0

    invoke-static {v1, v6}, Lcom/android/contacts/common/ContactsUtils;->determineUserType(Ljava/lang/Long;Ljava/lang/Long;)J

    move-result-wide v4

    .line 535
    .local v4, "userType":J
    invoke-virtual {p0, v2, v3}, Lcom/android/contacts/common/list/PhoneNumberListAdapter;->isExtendedDirectory(J)Z

    move-result v1

    if-nez v1, :cond_0

    const-wide/16 v6, 0x1

    cmp-long v1, v4, v6

    if-nez v1, :cond_0

    const/4 v1, 0x1

    .line 534
    :goto_0
    invoke-virtual {p1, v1}, Lcom/android/contacts/common/list/ContactListItemView;->setWorkProfileIconEnabled(Z)V

    .line 536
    return-void

    .line 535
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public changeDirectories(Landroid/database/Cursor;)V
    .locals 14
    .param p1, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 596
    invoke-super {p0, p1}, Lcom/android/contacts/common/list/ContactEntryListAdapter;->changeDirectories(Landroid/database/Cursor;)V

    .line 597
    invoke-virtual {p0}, Lcom/android/contacts/common/list/PhoneNumberListAdapter;->getDirectorySearchMode()I

    move-result v10

    if-nez v10, :cond_1

    .line 636
    :cond_0
    return-void

    .line 600
    :cond_1
    iget-object v10, p0, Lcom/android/contacts/common/list/PhoneNumberListAdapter;->mExtendedDirectories:Ljava/util/List;

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v8

    .line 601
    .local v8, "numExtendedDirectories":I
    invoke-virtual {p0}, Lcom/android/contacts/common/list/PhoneNumberListAdapter;->getPartitionCount()I

    move-result v10

    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v11

    add-int/2addr v11, v8

    if-eq v10, v11, :cond_0

    .line 606
    const-wide v10, 0x7fffffffffffffffL

    iput-wide v10, p0, Lcom/android/contacts/common/list/PhoneNumberListAdapter;->mFirstExtendedDirectoryId:J

    .line 607
    if-lez v8, :cond_0

    .line 610
    const-wide/16 v6, 0x1

    .line 611
    .local v6, "maxId":J
    const/4 v4, 0x0

    .line 612
    .local v4, "insertIndex":I
    const/4 v1, 0x0

    .local v1, "i":I
    invoke-virtual {p0}, Lcom/android/contacts/common/list/PhoneNumberListAdapter;->getPartitionCount()I

    move-result v5

    .local v5, "n":I
    :goto_0
    if-ge v1, v5, :cond_4

    .line 613
    invoke-virtual {p0, v1}, Lcom/android/contacts/common/list/PhoneNumberListAdapter;->getPartition(I)Lcom/android/contacts/common/list/CompositeCursorAdapter$Partition;

    move-result-object v9

    check-cast v9, Lcom/android/contacts/common/list/DirectoryPartition;

    .line 614
    .local v9, "partition":Lcom/android/contacts/common/list/DirectoryPartition;
    invoke-virtual {v9}, Lcom/android/contacts/common/list/DirectoryPartition;->getDirectoryId()J

    move-result-wide v2

    .line 615
    .local v2, "id":J
    cmp-long v10, v2, v6

    if-lez v10, :cond_2

    .line 616
    move-wide v6, v2

    .line 618
    :cond_2
    invoke-static {v2, v3}, Lcom/android/contacts/common/compat/DirectoryCompat;->isRemoteDirectoryId(J)Z

    move-result v10

    if-nez v10, :cond_3

    .line 622
    add-int/lit8 v4, v1, 0x1

    .line 612
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 626
    .end local v2    # "id":J
    .end local v9    # "partition":Lcom/android/contacts/common/list/DirectoryPartition;
    :cond_4
    const-wide/16 v10, 0x1

    add-long/2addr v10, v6

    iput-wide v10, p0, Lcom/android/contacts/common/list/PhoneNumberListAdapter;->mFirstExtendedDirectoryId:J

    .line 627
    const/4 v1, 0x0

    :goto_1
    if-ge v1, v8, :cond_0

    .line 628
    iget-wide v10, p0, Lcom/android/contacts/common/list/PhoneNumberListAdapter;->mFirstExtendedDirectoryId:J

    int-to-long v12, v1

    add-long v2, v10, v12

    .line 629
    .restart local v2    # "id":J
    iget-object v10, p0, Lcom/android/contacts/common/list/PhoneNumberListAdapter;->mExtendedDirectories:Ljava/util/List;

    invoke-interface {v10, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/common/list/DirectoryPartition;

    .line 630
    .local v0, "directory":Lcom/android/contacts/common/list/DirectoryPartition;
    invoke-virtual {p0, v2, v3}, Lcom/android/contacts/common/list/PhoneNumberListAdapter;->getPartitionByDirectoryId(J)I

    move-result v10

    const/4 v11, -0x1

    if-ne v10, v11, :cond_5

    .line 631
    invoke-virtual {p0, v4, v0}, Lcom/android/contacts/common/list/PhoneNumberListAdapter;->addPartition(ILcom/android/contacts/common/list/CompositeCursorAdapter$Partition;)V

    .line 632
    invoke-virtual {v0, v2, v3}, Lcom/android/contacts/common/list/DirectoryPartition;->setDirectoryId(J)V

    .line 627
    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method public configureLoader(Landroid/content/CursorLoader;J)V
    .locals 18
    .param p1, "loader"    # Landroid/content/CursorLoader;
    .param p2, "directoryId"    # J

    .prologue
    .line 196
    invoke-virtual/range {p0 .. p0}, Lcom/android/contacts/common/list/PhoneNumberListAdapter;->getQueryString()Ljava/lang/String;

    move-result-object v16

    .line 197
    .local v16, "query":Ljava/lang/String;
    if-nez v16, :cond_0

    .line 198
    const-string v16, ""

    .line 200
    :cond_0
    move-object/from16 v0, p0

    move-wide/from16 v1, p2

    invoke-virtual {v0, v1, v2}, Lcom/android/contacts/common/list/PhoneNumberListAdapter;->isExtendedDirectory(J)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 201
    move-object/from16 v0, p0

    move-wide/from16 v1, p2

    invoke-direct {v0, v1, v2}, Lcom/android/contacts/common/list/PhoneNumberListAdapter;->getExtendedDirectoryFromId(J)Lcom/android/contacts/common/list/DirectoryPartition;

    move-result-object v12

    .line 202
    .local v12, "directory":Lcom/android/contacts/common/list/DirectoryPartition;
    invoke-virtual {v12}, Lcom/android/contacts/common/list/DirectoryPartition;->getContentUri()Ljava/lang/String;

    move-result-object v11

    .line 203
    .local v11, "contentUri":Ljava/lang/String;
    if-nez v11, :cond_1

    .line 204
    new-instance v5, Ljava/lang/IllegalStateException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Extended directory must have a content URL: "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 207
    :cond_1
    invoke-static {v11}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {v5}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v7

    .line 208
    .local v7, "builder":Landroid/net/Uri$Builder;
    move-object/from16 v0, v16

    invoke-virtual {v7, v0}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 209
    const-string v5, "limit"

    .line 210
    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/android/contacts/common/list/PhoneNumberListAdapter;->getDirectoryResultLimit(Lcom/android/contacts/common/list/DirectoryPartition;)I

    move-result v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    .line 209
    invoke-virtual {v7, v5, v6}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 211
    invoke-virtual {v7}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v5

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/content/CursorLoader;->setUri(Landroid/net/Uri;)V

    .line 212
    sget-object v5, Lcom/android/contacts/common/list/PhoneNumberListAdapter$PhoneQuery;->PROJECTION_PRIMARY:[Ljava/lang/String;

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/content/CursorLoader;->setProjection([Ljava/lang/String;)V

    .line 272
    .end local v11    # "contentUri":Ljava/lang/String;
    .end local v12    # "directory":Lcom/android/contacts/common/list/DirectoryPartition;
    :goto_0
    return-void

    .line 215
    .end local v7    # "builder":Landroid/net/Uri$Builder;
    :cond_2
    invoke-static/range {p2 .. p3}, Lcom/android/contacts/common/compat/DirectoryCompat;->isRemoteDirectoryId(J)Z

    move-result v13

    .line 217
    .local v13, "isRemoteDirectoryQuery":Z
    invoke-virtual/range {p0 .. p0}, Lcom/android/contacts/common/list/PhoneNumberListAdapter;->isSearchMode()Z

    move-result v5

    if-eqz v5, :cond_6

    .line 219
    if-eqz v13, :cond_4

    .line 220
    invoke-static {}, Lcom/android/contacts/common/compat/PhoneCompat;->getContentFilterUri()Landroid/net/Uri;

    move-result-object v4

    .line 226
    .local v4, "baseUri":Landroid/net/Uri;
    :goto_1
    invoke-virtual {v4}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v7

    .line 227
    .restart local v7    # "builder":Landroid/net/Uri$Builder;
    move-object/from16 v0, v16

    invoke-virtual {v7, v0}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 228
    const-string v5, "directory"

    .line 229
    invoke-static/range {p2 .. p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    .line 228
    invoke-virtual {v7, v5, v6}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 230
    if-eqz v13, :cond_3

    .line 231
    const-string v5, "limit"

    .line 232
    move-object/from16 v0, p0

    move-wide/from16 v1, p2

    invoke-virtual {v0, v1, v2}, Lcom/android/contacts/common/list/PhoneNumberListAdapter;->getDirectoryById(J)Lcom/android/contacts/common/list/DirectoryPartition;

    move-result-object v6

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/android/contacts/common/list/PhoneNumberListAdapter;->getDirectoryResultLimit(Lcom/android/contacts/common/list/DirectoryPartition;)I

    move-result v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    .line 231
    invoke-virtual {v7, v5, v6}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 246
    :cond_3
    :goto_2
    invoke-virtual/range {p1 .. p1}, Landroid/content/CursorLoader;->getSelection()Ljava/lang/String;

    move-result-object v15

    .line 248
    .local v15, "prevSelection":Ljava/lang/String;
    invoke-static {v15}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_9

    .line 249
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " AND "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "length(data1) < 1000"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    .line 253
    .local v14, "newSelection":Ljava/lang/String;
    :goto_3
    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Landroid/content/CursorLoader;->setSelection(Ljava/lang/String;)V

    .line 256
    const-string v5, "remove_duplicate_entries"

    const-string v6, "true"

    invoke-virtual {v7, v5, v6}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 257
    invoke-virtual {v7}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v5

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/content/CursorLoader;->setUri(Landroid/net/Uri;)V

    .line 260
    invoke-virtual/range {p0 .. p0}, Lcom/android/contacts/common/list/PhoneNumberListAdapter;->getContactNameDisplayOrder()I

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_a

    .line 261
    sget-object v5, Lcom/android/contacts/common/list/PhoneNumberListAdapter$PhoneQuery;->PROJECTION_PRIMARY:[Ljava/lang/String;

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/content/CursorLoader;->setProjection([Ljava/lang/String;)V

    .line 266
    :goto_4
    invoke-virtual/range {p0 .. p0}, Lcom/android/contacts/common/list/PhoneNumberListAdapter;->getSortOrder()I

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_b

    .line 267
    const-string v5, "sort_key"

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/content/CursorLoader;->setSortOrder(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 221
    .end local v4    # "baseUri":Landroid/net/Uri;
    .end local v7    # "builder":Landroid/net/Uri$Builder;
    .end local v14    # "newSelection":Ljava/lang/String;
    .end local v15    # "prevSelection":Ljava/lang/String;
    :cond_4
    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/android/contacts/common/list/PhoneNumberListAdapter;->mUseCallableUri:Z

    if-eqz v5, :cond_5

    .line 222
    invoke-static {}, Lcom/android/contacts/common/compat/CallableCompat;->getContentFilterUri()Landroid/net/Uri;

    move-result-object v4

    .restart local v4    # "baseUri":Landroid/net/Uri;
    goto/16 :goto_1

    .line 224
    .end local v4    # "baseUri":Landroid/net/Uri;
    :cond_5
    invoke-static {}, Lcom/android/contacts/common/compat/PhoneCompat;->getContentFilterUri()Landroid/net/Uri;

    move-result-object v4

    .restart local v4    # "baseUri":Landroid/net/Uri;
    goto/16 :goto_1

    .line 235
    .end local v4    # "baseUri":Landroid/net/Uri;
    :cond_6
    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/android/contacts/common/list/PhoneNumberListAdapter;->mUseCallableUri:Z

    if-eqz v5, :cond_8

    sget-object v4, Landroid/provider/ContactsContract$CommonDataKinds$Callable;->CONTENT_URI:Landroid/net/Uri;

    .line 236
    .restart local v4    # "baseUri":Landroid/net/Uri;
    :goto_5
    invoke-virtual {v4}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v5

    const-string v6, "directory"

    const-wide/16 v8, 0x0

    .line 237
    invoke-static {v8, v9}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v8

    .line 236
    invoke-virtual {v5, v6, v8}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v7

    .line 238
    .restart local v7    # "builder":Landroid/net/Uri$Builder;
    invoke-virtual/range {p0 .. p0}, Lcom/android/contacts/common/list/PhoneNumberListAdapter;->isSectionHeaderDisplayEnabled()Z

    move-result v5

    if-eqz v5, :cond_7

    .line 239
    const-string v5, "android.provider.extra.ADDRESS_BOOK_INDEX"

    const-string v6, "true"

    invoke-virtual {v7, v5, v6}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 241
    :cond_7
    invoke-virtual/range {p0 .. p0}, Lcom/android/contacts/common/list/PhoneNumberListAdapter;->getFilter()Lcom/android/contacts/common/list/ContactListFilter;

    move-result-object v10

    move-object/from16 v5, p0

    move-object/from16 v6, p1

    move-wide/from16 v8, p2

    invoke-direct/range {v5 .. v10}, Lcom/android/contacts/common/list/PhoneNumberListAdapter;->applyFilter(Landroid/content/CursorLoader;Landroid/net/Uri$Builder;JLcom/android/contacts/common/list/ContactListFilter;)V

    goto/16 :goto_2

    .line 235
    .end local v4    # "baseUri":Landroid/net/Uri;
    .end local v7    # "builder":Landroid/net/Uri$Builder;
    :cond_8
    sget-object v4, Landroid/provider/ContactsContract$CommonDataKinds$Phone;->CONTENT_URI:Landroid/net/Uri;

    goto :goto_5

    .line 251
    .restart local v4    # "baseUri":Landroid/net/Uri;
    .restart local v7    # "builder":Landroid/net/Uri$Builder;
    .restart local v15    # "prevSelection":Ljava/lang/String;
    :cond_9
    const-string v14, "length(data1) < 1000"

    .restart local v14    # "newSelection":Ljava/lang/String;
    goto :goto_3

    .line 263
    :cond_a
    sget-object v5, Lcom/android/contacts/common/list/PhoneNumberListAdapter$PhoneQuery;->PROJECTION_ALTERNATIVE:[Ljava/lang/String;

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/content/CursorLoader;->setProjection([Ljava/lang/String;)V

    goto :goto_4

    .line 269
    :cond_b
    const-string v5, "sort_key_alt"

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/content/CursorLoader;->setSortOrder(Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method public getContactDisplayName(I)Ljava/lang/String;
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 324
    const/4 v0, 0x0

    .line 325
    .local v0, "cursor":Landroid/database/Cursor;
    invoke-virtual {p0, p1}, Lcom/android/contacts/common/list/PhoneNumberListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "cursor":Landroid/database/Cursor;
    check-cast v0, Landroid/database/Cursor;

    .line 326
    .restart local v0    # "cursor":Landroid/database/Cursor;
    if-eqz v0, :cond_0

    .line 327
    const/4 v1, 0x7

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 329
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected getContactUri(ILandroid/database/Cursor;II)Landroid/net/Uri;
    .locals 6
    .param p1, "partitionIndex"    # I
    .param p2, "cursor"    # Landroid/database/Cursor;
    .param p3, "contactIdColumn"    # I
    .param p4, "lookUpKeyColumn"    # I

    .prologue
    .line 641
    invoke-virtual {p0, p1}, Lcom/android/contacts/common/list/PhoneNumberListAdapter;->getPartition(I)Lcom/android/contacts/common/list/CompositeCursorAdapter$Partition;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/common/list/DirectoryPartition;

    .line 642
    .local v0, "directory":Lcom/android/contacts/common/list/DirectoryPartition;
    invoke-virtual {v0}, Lcom/android/contacts/common/list/DirectoryPartition;->getDirectoryId()J

    move-result-wide v2

    .line 643
    .local v2, "directoryId":J
    invoke-virtual {p0, v2, v3}, Lcom/android/contacts/common/list/PhoneNumberListAdapter;->isExtendedDirectory(J)Z

    move-result v1

    if-nez v1, :cond_0

    .line 644
    invoke-super {p0, p1, p2, p3, p4}, Lcom/android/contacts/common/list/ContactEntryListAdapter;->getContactUri(ILandroid/database/Cursor;II)Landroid/net/Uri;

    move-result-object v1

    .line 652
    :goto_0
    return-object v1

    .line 646
    :cond_0
    sget-object v1, Landroid/provider/ContactsContract$Contacts;->CONTENT_LOOKUP_URI:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v1

    const-string v4, "encoded"

    .line 647
    invoke-virtual {v1, v4}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    const-string v4, "displayName"

    .line 648
    invoke-virtual {v0}, Lcom/android/contacts/common/list/DirectoryPartition;->getLabel()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    const-string v4, "directory"

    .line 650
    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    .line 649
    invoke-virtual {v1, v4, v5}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    .line 651
    invoke-interface {p2, p4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/net/Uri$Builder;->encodedFragment(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    .line 652
    invoke-virtual {v1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    goto :goto_0
.end method

.method public getDataUri(I)Landroid/net/Uri;
    .locals 3
    .param p1, "position"    # I

    .prologue
    .line 343
    invoke-virtual {p0, p1}, Lcom/android/contacts/common/list/PhoneNumberListAdapter;->getPartitionForPosition(I)I

    move-result v1

    .line 344
    .local v1, "partitionIndex":I
    invoke-virtual {p0, p1}, Lcom/android/contacts/common/list/PhoneNumberListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/database/Cursor;

    .line 345
    .local v0, "item":Landroid/database/Cursor;
    if-eqz v0, :cond_0

    invoke-virtual {p0, v1, v0}, Lcom/android/contacts/common/list/PhoneNumberListAdapter;->getDataUri(ILandroid/database/Cursor;)Landroid/net/Uri;

    move-result-object v2

    :goto_0
    return-object v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public getDataUri(ILandroid/database/Cursor;)Landroid/net/Uri;
    .locals 6
    .param p1, "partitionIndex"    # I
    .param p2, "cursor"    # Landroid/database/Cursor;

    .prologue
    const/4 v5, 0x0

    .line 349
    .line 350
    invoke-virtual {p0, p1}, Lcom/android/contacts/common/list/PhoneNumberListAdapter;->getPartition(I)Lcom/android/contacts/common/list/CompositeCursorAdapter$Partition;

    move-result-object v4

    check-cast v4, Lcom/android/contacts/common/list/DirectoryPartition;

    invoke-virtual {v4}, Lcom/android/contacts/common/list/DirectoryPartition;->getDirectoryId()J

    move-result-wide v0

    .line 351
    .local v0, "directoryId":J
    invoke-static {v0, v1}, Lcom/android/contacts/common/compat/DirectoryCompat;->isRemoteDirectoryId(J)Z

    move-result v4

    if-eqz v4, :cond_0

    move-object v4, v5

    .line 363
    :goto_0
    return-object v4

    .line 353
    :cond_0
    invoke-static {v0, v1}, Lcom/android/contacts/common/compat/DirectoryCompat;->isEnterpriseDirectoryId(J)Z

    move-result v4

    if-eqz v4, :cond_1

    move-object v4, v5

    .line 360
    goto :goto_0

    .line 362
    :cond_1
    const/4 v4, 0x0

    invoke-interface {p2, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    .line 363
    .local v2, "phoneId":J
    sget-object v4, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v4, v2, v3}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v4

    goto :goto_0
.end method

.method public getListener()Lcom/android/contacts/common/list/PhoneNumberListAdapter$Listener;
    .locals 1

    .prologue
    .line 656
    iget-object v0, p0, Lcom/android/contacts/common/list/PhoneNumberListAdapter;->mListener:Lcom/android/contacts/common/list/PhoneNumberListAdapter$Listener;

    return-object v0
.end method

.method public getLookupKey(I)Ljava/lang/String;
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 374
    invoke-virtual {p0, p1}, Lcom/android/contacts/common/list/PhoneNumberListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/database/Cursor;

    .line 375
    .local v0, "item":Landroid/database/Cursor;
    if-eqz v0, :cond_0

    const/4 v1, 0x5

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getPhoneNumber(I)Ljava/lang/String;
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 333
    invoke-virtual {p0, p1}, Lcom/android/contacts/common/list/PhoneNumberListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/database/Cursor;

    .line 334
    .local v0, "item":Landroid/database/Cursor;
    if-eqz v0, :cond_0

    const/4 v1, 0x3

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getPhotoPosition()Lcom/android/contacts/common/list/ContactListItemView$PhotoPosition;
    .locals 1

    .prologue
    .line 572
    iget-object v0, p0, Lcom/android/contacts/common/list/PhoneNumberListAdapter;->mPhotoPosition:Lcom/android/contacts/common/list/ContactListItemView$PhotoPosition;

    return-object v0
.end method

.method protected getResultCount(Landroid/database/Cursor;)I
    .locals 6
    .param p1, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 396
    if-nez p1, :cond_1

    .line 397
    const/4 v4, 0x0

    .line 409
    :cond_0
    return v4

    .line 399
    :cond_1
    const/4 v5, -0x1

    invoke-interface {p1, v5}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 400
    const-wide/16 v2, -0x1

    .line 401
    .local v2, "curContactId":J
    const/4 v4, 0x0

    .line 402
    .local v4, "numContacts":I
    :cond_2
    :goto_0
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 403
    const/4 v5, 0x4

    invoke-interface {p1, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    .line 404
    .local v0, "contactId":J
    cmp-long v5, v0, v2

    if-eqz v5, :cond_2

    .line 405
    move-wide v2, v0

    .line 406
    add-int/lit8 v4, v4, 0x1

    goto :goto_0
.end method

.method protected getUnknownNameText()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 191
    iget-object v0, p0, Lcom/android/contacts/common/list/PhoneNumberListAdapter;->mUnknownNameText:Ljava/lang/CharSequence;

    return-object v0
.end method

.method protected isExtendedDirectory(J)Z
    .locals 3
    .param p1, "directoryId"    # J

    .prologue
    .line 275
    iget-wide v0, p0, Lcom/android/contacts/common/list/PhoneNumberListAdapter;->mFirstExtendedDirectoryId:J

    cmp-long v0, p1, v0

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected bridge synthetic newView(Landroid/content/Context;ILandroid/database/Cursor;ILandroid/view/ViewGroup;)Landroid/view/View;
    .locals 1

    .prologue
    .line 62
    invoke-virtual/range {p0 .. p5}, Lcom/android/contacts/common/list/PhoneNumberListAdapter;->newView(Landroid/content/Context;ILandroid/database/Cursor;ILandroid/view/ViewGroup;)Lcom/android/contacts/common/list/ContactListItemView;

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
    .line 381
    invoke-super/range {p0 .. p5}, Lcom/android/contacts/common/list/ContactEntryListAdapter;->newView(Landroid/content/Context;ILandroid/database/Cursor;ILandroid/view/ViewGroup;)Lcom/android/contacts/common/list/ContactListItemView;

    move-result-object v0

    .line 382
    .local v0, "view":Lcom/android/contacts/common/list/ContactListItemView;
    iget-object v1, p0, Lcom/android/contacts/common/list/PhoneNumberListAdapter;->mUnknownNameText:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Lcom/android/contacts/common/list/ContactListItemView;->setUnknownNameText(Ljava/lang/CharSequence;)V

    .line 383
    invoke-virtual {p0}, Lcom/android/contacts/common/list/PhoneNumberListAdapter;->isQuickContactEnabled()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/contacts/common/list/ContactListItemView;->setQuickContactEnabled(Z)V

    .line 384
    iget-object v1, p0, Lcom/android/contacts/common/list/PhoneNumberListAdapter;->mPhotoPosition:Lcom/android/contacts/common/list/ContactListItemView$PhotoPosition;

    invoke-virtual {v0, v1}, Lcom/android/contacts/common/list/ContactListItemView;->setPhotoPosition(Lcom/android/contacts/common/list/ContactListItemView$PhotoPosition;)V

    .line 385
    return-object v0
.end method

.method protected setHighlight(Lcom/android/contacts/common/list/ContactListItemView;Landroid/database/Cursor;)V
    .locals 1
    .param p1, "view"    # Lcom/android/contacts/common/list/ContactListItemView;
    .param p2, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 389
    invoke-virtual {p0}, Lcom/android/contacts/common/list/PhoneNumberListAdapter;->isSearchMode()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/contacts/common/list/PhoneNumberListAdapter;->getUpperCaseQueryString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-virtual {p1, v0}, Lcom/android/contacts/common/list/ContactListItemView;->setHighlightedPrefix(Ljava/lang/String;)V

    .line 390
    return-void

    .line 389
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setListener(Lcom/android/contacts/common/list/PhoneNumberListAdapter$Listener;)V
    .locals 0
    .param p1, "listener"    # Lcom/android/contacts/common/list/PhoneNumberListAdapter$Listener;

    .prologue
    .line 660
    iput-object p1, p0, Lcom/android/contacts/common/list/PhoneNumberListAdapter;->mListener:Lcom/android/contacts/common/list/PhoneNumberListAdapter$Listener;

    .line 661
    return-void
.end method

.method public setPhotoPosition(Lcom/android/contacts/common/list/ContactListItemView$PhotoPosition;)V
    .locals 0
    .param p1, "photoPosition"    # Lcom/android/contacts/common/list/ContactListItemView$PhotoPosition;

    .prologue
    .line 568
    iput-object p1, p0, Lcom/android/contacts/common/list/PhoneNumberListAdapter;->mPhotoPosition:Lcom/android/contacts/common/list/ContactListItemView$PhotoPosition;

    .line 569
    return-void
.end method

.method public setUseCallableUri(Z)V
    .locals 0
    .param p1, "useCallableUri"    # Z

    .prologue
    .line 576
    iput-boolean p1, p0, Lcom/android/contacts/common/list/PhoneNumberListAdapter;->mUseCallableUri:Z

    .line 577
    return-void
.end method

.method protected unbindName(Lcom/android/contacts/common/list/ContactListItemView;)V
    .locals 0
    .param p1, "view"    # Lcom/android/contacts/common/list/ContactListItemView;

    .prologue
    .line 523
    invoke-virtual {p1}, Lcom/android/contacts/common/list/ContactListItemView;->hideDisplayName()V

    .line 524
    return-void
.end method

.method public usesCallableUri()Z
    .locals 1

    .prologue
    .line 580
    iget-boolean v0, p0, Lcom/android/contacts/common/list/PhoneNumberListAdapter;->mUseCallableUri:Z

    return v0
.end method
