.class public Lcom/android/incallui/fragment/view/CallCardCallPlusView;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/app/LoaderManager$LoaderCallbacks;
.implements Lcom/android/incallui/fragment/view/ICallCardViewAdapter;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/app/LoaderManager$LoaderCallbacks",
        "<",
        "Landroid/database/Cursor;",
        ">;",
        "Lcom/android/incallui/fragment/view/ICallCardViewAdapter;"
    }
.end annotation


# static fields
.field private static final ARG_COLUMNS:Ljava/lang/String; = "ARG_COLUMNS"

.field private static final ARG_MSISDN:Ljava/lang/String; = "ARG_MSISDN"

.field private static final CALLCONTENT_LOADER:I = 0x1

.field private static final LOG_TAG:Ljava/lang/String; = "CallCardCallPlusView"


# instance fields
.field private mBackground:Ljava/lang/String;

.field private final mFragment:Lcom/android/incallui/fragment/CallCardFragment;

.field private mImportance:I

.field private mIsCallPlus:Z

.field private mLocation:Ljava/lang/String;

.field private mLocationLatLong:Ljava/lang/String;

.field private mLocation_map:Ljava/lang/String;

.field private mSubject:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/android/incallui/fragment/CallCardFragment;)V
    .locals 2

    const/4 v1, 0x0

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v1, p0, Lcom/android/incallui/fragment/view/CallCardCallPlusView;->mIsCallPlus:Z

    iput v1, p0, Lcom/android/incallui/fragment/view/CallCardCallPlusView;->mImportance:I

    iput-object v0, p0, Lcom/android/incallui/fragment/view/CallCardCallPlusView;->mSubject:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/incallui/fragment/view/CallCardCallPlusView;->mLocation:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/incallui/fragment/view/CallCardCallPlusView;->mLocationLatLong:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/incallui/fragment/view/CallCardCallPlusView;->mLocation_map:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/incallui/fragment/view/CallCardCallPlusView;->mBackground:Ljava/lang/String;

    iput-object p1, p0, Lcom/android/incallui/fragment/view/CallCardCallPlusView;->mFragment:Lcom/android/incallui/fragment/CallCardFragment;

    return-void
.end method

.method private arrangePrimaryLayout(Lcom/android/incallui/fragment/VoiceCallCardFragment;)V
    .locals 0

    return-void
.end method

.method private onViewCreated(Lcom/android/incallui/fragment/VoiceCallCardFragment;Landroid/view/View;)V
    .locals 0

    return-void
.end method

.method private queryForCallPlus()V
    .locals 4

    const/4 v0, 0x0

    const/4 v3, 0x1

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/CallList;->hasIncomingCall()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/CallList;->getIncomingCall()Lcom/android/incallui/Call;

    move-result-object v1

    :goto_0
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/android/incallui/Call;->getNumber()Ljava/lang/String;

    move-result-object v0

    :cond_0
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_1

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "ARG_MSISDN"

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "ARG_COLUMNS"

    sget-object v2, Lcom/android/incallui/CallContentContract;->COMPOSER_DATA:[Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/incallui/fragment/view/CallCardCallPlusView;->mFragment:Lcom/android/incallui/fragment/CallCardFragment;

    invoke-virtual {v0}, Lcom/android/incallui/fragment/CallCardFragment;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v0

    invoke-virtual {v0, v3, v1, p0}, Landroid/app/LoaderManager;->restartLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/content/Loader;

    :goto_1
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/incallui/fragment/view/CallCardCallPlusView;->mFragment:Lcom/android/incallui/fragment/CallCardFragment;

    invoke-virtual {v0}, Lcom/android/incallui/fragment/CallCardFragment;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/app/LoaderManager;->destroyLoader(I)V

    goto :goto_1

    :cond_2
    move-object v1, v0

    goto :goto_0
.end method

.method private queryForCrane()V
    .locals 4

    const/4 v0, 0x0

    const/4 v3, 0x1

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/CallList;->hasIncomingCall()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/CallList;->getIncomingCall()Lcom/android/incallui/Call;

    move-result-object v1

    :goto_0
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/android/incallui/Call;->getNumber()Ljava/lang/String;

    move-result-object v0

    :cond_0
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_1

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "ARG_MSISDN"

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "ARG_COLUMNS"

    sget-object v2, Lcom/android/incallui/CallContentContractCrane;->COMPOSER_DATA:[Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/incallui/fragment/view/CallCardCallPlusView;->mFragment:Lcom/android/incallui/fragment/CallCardFragment;

    invoke-virtual {v0}, Lcom/android/incallui/fragment/CallCardFragment;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v0

    invoke-virtual {v0, v3, v1, p0}, Landroid/app/LoaderManager;->restartLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/content/Loader;

    :goto_1
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/incallui/fragment/view/CallCardCallPlusView;->mFragment:Lcom/android/incallui/fragment/CallCardFragment;

    invoke-virtual {v0}, Lcom/android/incallui/fragment/CallCardFragment;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/app/LoaderManager;->destroyLoader(I)V

    goto :goto_1

    :cond_2
    move-object v1, v0

    goto :goto_0
.end method

.method private setPrimary(Lcom/android/incallui/fragment/VoiceCallCardFragment;Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;)V
    .locals 0

    return-void
.end method

.method private updateCallerInfoCardView(Landroid/database/Cursor;)V
    .locals 9

    const/4 v8, 0x5

    const/4 v7, 0x4

    const/4 v4, 0x3

    const/4 v6, 0x1

    const/4 v5, 0x0

    const-string v0, "CallCardCallPlusView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateView data :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v6}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    if-eqz p1, :cond_0

    const-string v0, "CallCardCallPlusView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateView data count  :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v6}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    :cond_0
    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/incallui/fragment/view/CallCardCallPlusView;->mFragment:Lcom/android/incallui/fragment/CallCardFragment;

    instance-of v1, v1, Lcom/android/incallui/fragment/VoiceCallCardFragment;

    if-eqz v1, :cond_1

    iget-object v0, p0, Lcom/android/incallui/fragment/view/CallCardCallPlusView;->mFragment:Lcom/android/incallui/fragment/CallCardFragment;

    check-cast v0, Lcom/android/incallui/fragment/VoiceCallCardFragment;

    :cond_1
    if-nez v0, :cond_3

    :cond_2
    :goto_0
    return-void

    :cond_3
    invoke-virtual {v0}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->inflateCallerInfoCardView()V

    invoke-virtual {v0}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->getCallerInfoCardView()Lcom/android/incallui/callerinfocard/CallerInfoCardView;

    move-result-object v1

    if-eqz p1, :cond_8

    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_8

    const-string v2, "CallCardCallPlusView"

    const-string v3, "CallPlus available ,incoming call"

    invoke-static {v2, v3, v6}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    iput-boolean v6, p0, Lcom/android/incallui/fragment/view/CallCardCallPlusView;->mIsCallPlus:Z

    const-string v2, "ims_crane"

    invoke-static {v2}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {p1, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    iput v2, p0, Lcom/android/incallui/fragment/view/CallCardCallPlusView;->mImportance:I

    invoke-interface {p1, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/incallui/fragment/view/CallCardCallPlusView;->mSubject:Ljava/lang/String;

    const/4 v2, 0x2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/incallui/fragment/view/CallCardCallPlusView;->mLocation:Ljava/lang/String;

    invoke-interface {p1, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/incallui/fragment/view/CallCardCallPlusView;->mLocationLatLong:Ljava/lang/String;

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/incallui/fragment/view/CallCardCallPlusView;->mLocation_map:Ljava/lang/String;

    invoke-interface {p1, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/incallui/fragment/view/CallCardCallPlusView;->mBackground:Ljava/lang/String;

    :goto_1
    const-string v2, "CallCardCallPlusView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updateView mImportance :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/incallui/fragment/view/CallCardCallPlusView;->mImportance:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "mSubject "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/incallui/fragment/view/CallCardCallPlusView;->mSubject:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v6}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    const-string v2, "CallCardCallPlusView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updateView mLocation :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/incallui/fragment/view/CallCardCallPlusView;->mLocation:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "mLocation_map "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/incallui/fragment/view/CallCardCallPlusView;->mLocation_map:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "mBackground "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/incallui/fragment/view/CallCardCallPlusView;->mBackground:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v6}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v2, v3, v5}, Lcom/android/incallui/util/InCallUtils;->getCallToDisplay(Lcom/android/incallui/CallList;Lcom/android/incallui/Call;Z)Lcom/android/incallui/Call;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-virtual {v0}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->getView()Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/android/incallui/ContactInfoCache;->getInstance(Landroid/content/Context;)Lcom/android/incallui/ContactInfoCache;

    move-result-object v3

    invoke-virtual {v2}, Lcom/android/incallui/Call;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Lcom/android/incallui/ContactInfoCache;->getInfo(Ljava/lang/String;)Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    move-result-object v2

    if-eqz v2, :cond_2

    iget-object v3, v2, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->photo:Landroid/graphics/drawable/Drawable;

    iget-boolean v2, v2, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->isPersonalPhotoAvailable:Z

    invoke-virtual {v0, v3, v2}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->setPrimaryImage(Landroid/graphics/drawable/Drawable;Z)V

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lcom/android/incallui/callerinfocard/CallerInfoCardView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    invoke-virtual {v1}, Lcom/android/incallui/callerinfocard/CallerInfoCardView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    iget-object v3, p0, Lcom/android/incallui/fragment/view/CallCardCallPlusView;->mFragment:Lcom/android/incallui/fragment/CallCardFragment;

    invoke-virtual {v3}, Lcom/android/incallui/fragment/CallCardFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0a046a

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    float-to-int v3, v3

    iput v3, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget-object v3, p0, Lcom/android/incallui/fragment/view/CallCardCallPlusView;->mFragment:Lcom/android/incallui/fragment/CallCardFragment;

    invoke-virtual {v3}, Lcom/android/incallui/fragment/CallCardFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0a046b

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    float-to-int v3, v3

    iput v3, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    invoke-virtual {v1, v2}, Lcom/android/incallui/callerinfocard/CallerInfoCardView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v1, v0}, Lcom/android/incallui/callerinfocard/CallerInfoCardView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-boolean v0, p0, Lcom/android/incallui/fragment/view/CallCardCallPlusView;->mIsCallPlus:Z

    invoke-virtual {v1, v0}, Lcom/android/incallui/callerinfocard/CallerInfoCardView;->removeInfo(Z)V

    iget-object v0, p0, Lcom/android/incallui/fragment/view/CallCardCallPlusView;->mLocation:Ljava/lang/String;

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/android/incallui/fragment/view/CallCardCallPlusView;->mBackground:Ljava/lang/String;

    if-nez v0, :cond_5

    iget-boolean v0, p0, Lcom/android/incallui/fragment/view/CallCardCallPlusView;->mIsCallPlus:Z

    iget v2, p0, Lcom/android/incallui/fragment/view/CallCardCallPlusView;->mImportance:I

    invoke-virtual {v1, v0, v2}, Lcom/android/incallui/callerinfocard/CallerInfoCardView;->setCallPlusImportance(ZI)V

    iget-boolean v0, p0, Lcom/android/incallui/fragment/view/CallCardCallPlusView;->mIsCallPlus:Z

    iget-object v2, p0, Lcom/android/incallui/fragment/view/CallCardCallPlusView;->mSubject:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lcom/android/incallui/callerinfocard/CallerInfoCardView;->setCallPlusSubject(ZLjava/lang/String;)V

    iget-object v0, p0, Lcom/android/incallui/fragment/view/CallCardCallPlusView;->mLocation:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/incallui/fragment/view/CallCardCallPlusView;->mLocationLatLong:Ljava/lang/String;

    invoke-virtual {v1, v5, v0, v2}, Lcom/android/incallui/callerinfocard/CallerInfoCardView;->setCallPlusAddress(ZLjava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/incallui/fragment/view/CallCardCallPlusView;->mLocation_map:Ljava/lang/String;

    invoke-virtual {v1, v5, v0, v5}, Lcom/android/incallui/callerinfocard/CallerInfoCardView;->setCallPlusMap(ZLjava/lang/String;Z)V

    iget-object v0, p0, Lcom/android/incallui/fragment/view/CallCardCallPlusView;->mBackground:Ljava/lang/String;

    invoke-virtual {v1, v5, v0, v5}, Lcom/android/incallui/callerinfocard/CallerInfoCardView;->setCallPlusMapImage(ZLjava/lang/String;Z)V

    goto/16 :goto_0

    :cond_4
    invoke-interface {p1, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    iput v2, p0, Lcom/android/incallui/fragment/view/CallCardCallPlusView;->mImportance:I

    const/4 v2, 0x7

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/incallui/fragment/view/CallCardCallPlusView;->mSubject:Ljava/lang/String;

    invoke-interface {p1, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/incallui/fragment/view/CallCardCallPlusView;->mLocation:Ljava/lang/String;

    invoke-interface {p1, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/incallui/fragment/view/CallCardCallPlusView;->mLocation_map:Ljava/lang/String;

    const/4 v2, 0x6

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/incallui/fragment/view/CallCardCallPlusView;->mBackground:Ljava/lang/String;

    goto/16 :goto_1

    :cond_5
    iget-object v0, p0, Lcom/android/incallui/fragment/view/CallCardCallPlusView;->mLocation:Ljava/lang/String;

    if-nez v0, :cond_6

    iget-boolean v0, p0, Lcom/android/incallui/fragment/view/CallCardCallPlusView;->mIsCallPlus:Z

    iget v2, p0, Lcom/android/incallui/fragment/view/CallCardCallPlusView;->mImportance:I

    invoke-virtual {v1, v0, v2}, Lcom/android/incallui/callerinfocard/CallerInfoCardView;->setCallPlusImportance(ZI)V

    iget-boolean v0, p0, Lcom/android/incallui/fragment/view/CallCardCallPlusView;->mIsCallPlus:Z

    iget-object v2, p0, Lcom/android/incallui/fragment/view/CallCardCallPlusView;->mSubject:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lcom/android/incallui/callerinfocard/CallerInfoCardView;->setCallPlusSubject(ZLjava/lang/String;)V

    iget-object v0, p0, Lcom/android/incallui/fragment/view/CallCardCallPlusView;->mLocation:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/incallui/fragment/view/CallCardCallPlusView;->mLocationLatLong:Ljava/lang/String;

    invoke-virtual {v1, v5, v0, v2}, Lcom/android/incallui/callerinfocard/CallerInfoCardView;->setCallPlusAddress(ZLjava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/incallui/fragment/view/CallCardCallPlusView;->mLocation_map:Ljava/lang/String;

    invoke-virtual {v1, v5, v0, v5}, Lcom/android/incallui/callerinfocard/CallerInfoCardView;->setCallPlusMap(ZLjava/lang/String;Z)V

    iget-boolean v0, p0, Lcom/android/incallui/fragment/view/CallCardCallPlusView;->mIsCallPlus:Z

    iget-object v2, p0, Lcom/android/incallui/fragment/view/CallCardCallPlusView;->mBackground:Ljava/lang/String;

    invoke-virtual {v1, v0, v2, v6}, Lcom/android/incallui/callerinfocard/CallerInfoCardView;->setCallPlusMapImage(ZLjava/lang/String;Z)V

    goto/16 :goto_0

    :cond_6
    iget-object v0, p0, Lcom/android/incallui/fragment/view/CallCardCallPlusView;->mBackground:Ljava/lang/String;

    if-nez v0, :cond_7

    iget-boolean v0, p0, Lcom/android/incallui/fragment/view/CallCardCallPlusView;->mIsCallPlus:Z

    iget v2, p0, Lcom/android/incallui/fragment/view/CallCardCallPlusView;->mImportance:I

    invoke-virtual {v1, v0, v2}, Lcom/android/incallui/callerinfocard/CallerInfoCardView;->setCallPlusImportance(ZI)V

    iget-boolean v0, p0, Lcom/android/incallui/fragment/view/CallCardCallPlusView;->mIsCallPlus:Z

    iget-object v2, p0, Lcom/android/incallui/fragment/view/CallCardCallPlusView;->mSubject:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lcom/android/incallui/callerinfocard/CallerInfoCardView;->setCallPlusSubject(ZLjava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/incallui/fragment/view/CallCardCallPlusView;->mIsCallPlus:Z

    iget-object v2, p0, Lcom/android/incallui/fragment/view/CallCardCallPlusView;->mLocation:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/incallui/fragment/view/CallCardCallPlusView;->mLocationLatLong:Ljava/lang/String;

    invoke-virtual {v1, v0, v2, v3}, Lcom/android/incallui/callerinfocard/CallerInfoCardView;->setCallPlusAddress(ZLjava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/incallui/fragment/view/CallCardCallPlusView;->mBackground:Ljava/lang/String;

    invoke-virtual {v1, v5, v0, v5}, Lcom/android/incallui/callerinfocard/CallerInfoCardView;->setCallPlusMapImage(ZLjava/lang/String;Z)V

    iget-boolean v0, p0, Lcom/android/incallui/fragment/view/CallCardCallPlusView;->mIsCallPlus:Z

    iget-object v2, p0, Lcom/android/incallui/fragment/view/CallCardCallPlusView;->mLocation_map:Ljava/lang/String;

    invoke-virtual {v1, v0, v2, v6}, Lcom/android/incallui/callerinfocard/CallerInfoCardView;->setCallPlusMap(ZLjava/lang/String;Z)V

    goto/16 :goto_0

    :cond_7
    iget-boolean v0, p0, Lcom/android/incallui/fragment/view/CallCardCallPlusView;->mIsCallPlus:Z

    iget v2, p0, Lcom/android/incallui/fragment/view/CallCardCallPlusView;->mImportance:I

    invoke-virtual {v1, v0, v2}, Lcom/android/incallui/callerinfocard/CallerInfoCardView;->setCallPlusImportance(ZI)V

    iget-boolean v0, p0, Lcom/android/incallui/fragment/view/CallCardCallPlusView;->mIsCallPlus:Z

    iget-object v2, p0, Lcom/android/incallui/fragment/view/CallCardCallPlusView;->mSubject:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lcom/android/incallui/callerinfocard/CallerInfoCardView;->setCallPlusSubject(ZLjava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/incallui/fragment/view/CallCardCallPlusView;->mIsCallPlus:Z

    iget-object v2, p0, Lcom/android/incallui/fragment/view/CallCardCallPlusView;->mLocation:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/incallui/fragment/view/CallCardCallPlusView;->mLocationLatLong:Ljava/lang/String;

    invoke-virtual {v1, v0, v2, v3}, Lcom/android/incallui/callerinfocard/CallerInfoCardView;->setCallPlusAddress(ZLjava/lang/String;Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/incallui/fragment/view/CallCardCallPlusView;->mIsCallPlus:Z

    iget-object v2, p0, Lcom/android/incallui/fragment/view/CallCardCallPlusView;->mBackground:Ljava/lang/String;

    invoke-virtual {v1, v0, v2, v5}, Lcom/android/incallui/callerinfocard/CallerInfoCardView;->setCallPlusMapImage(ZLjava/lang/String;Z)V

    iget-boolean v0, p0, Lcom/android/incallui/fragment/view/CallCardCallPlusView;->mIsCallPlus:Z

    iget-object v2, p0, Lcom/android/incallui/fragment/view/CallCardCallPlusView;->mLocation_map:Ljava/lang/String;

    invoke-virtual {v1, v0, v2, v5}, Lcom/android/incallui/callerinfocard/CallerInfoCardView;->setCallPlusMap(ZLjava/lang/String;Z)V

    goto/16 :goto_0

    :cond_8
    const-string v0, "CallCardCallPlusView"

    const-string v2, "CallPlus not available ,incoming call"

    invoke-static {v0, v2, v6}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    iput-boolean v5, p0, Lcom/android/incallui/fragment/view/CallCardCallPlusView;->mIsCallPlus:Z

    iget-boolean v0, p0, Lcom/android/incallui/fragment/view/CallCardCallPlusView;->mIsCallPlus:Z

    iget v2, p0, Lcom/android/incallui/fragment/view/CallCardCallPlusView;->mImportance:I

    invoke-virtual {v1, v0, v2}, Lcom/android/incallui/callerinfocard/CallerInfoCardView;->setCallPlusImportance(ZI)V

    iget-boolean v0, p0, Lcom/android/incallui/fragment/view/CallCardCallPlusView;->mIsCallPlus:Z

    iget-object v2, p0, Lcom/android/incallui/fragment/view/CallCardCallPlusView;->mSubject:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lcom/android/incallui/callerinfocard/CallerInfoCardView;->setCallPlusSubject(ZLjava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/incallui/fragment/view/CallCardCallPlusView;->mIsCallPlus:Z

    iget-object v2, p0, Lcom/android/incallui/fragment/view/CallCardCallPlusView;->mLocation:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/incallui/fragment/view/CallCardCallPlusView;->mLocationLatLong:Ljava/lang/String;

    invoke-virtual {v1, v0, v2, v3}, Lcom/android/incallui/callerinfocard/CallerInfoCardView;->setCallPlusAddress(ZLjava/lang/String;Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/incallui/fragment/view/CallCardCallPlusView;->mIsCallPlus:Z

    iget-object v2, p0, Lcom/android/incallui/fragment/view/CallCardCallPlusView;->mBackground:Ljava/lang/String;

    invoke-virtual {v1, v0, v2, v5}, Lcom/android/incallui/callerinfocard/CallerInfoCardView;->setCallPlusMapImage(ZLjava/lang/String;Z)V

    iget-boolean v0, p0, Lcom/android/incallui/fragment/view/CallCardCallPlusView;->mIsCallPlus:Z

    iget-object v2, p0, Lcom/android/incallui/fragment/view/CallCardCallPlusView;->mLocation_map:Ljava/lang/String;

    invoke-virtual {v1, v0, v2, v5}, Lcom/android/incallui/callerinfocard/CallerInfoCardView;->setCallPlusMap(ZLjava/lang/String;Z)V

    goto/16 :goto_0
.end method


# virtual methods
.method public animateForAnswerCall()V
    .locals 0

    return-void
.end method

.method public animateForSwap()V
    .locals 0

    return-void
.end method

.method public arrangePrimaryLayout()V
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/fragment/view/CallCardCallPlusView;->mFragment:Lcom/android/incallui/fragment/CallCardFragment;

    instance-of v0, v0, Lcom/android/incallui/fragment/VoiceCallCardFragment;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/fragment/view/CallCardCallPlusView;->mFragment:Lcom/android/incallui/fragment/CallCardFragment;

    check-cast v0, Lcom/android/incallui/fragment/VoiceCallCardFragment;

    invoke-direct {p0, v0}, Lcom/android/incallui/fragment/view/CallCardCallPlusView;->arrangePrimaryLayout(Lcom/android/incallui/fragment/VoiceCallCardFragment;)V

    :cond_0
    return-void
.end method

.method public isCrane()Z
    .locals 3

    const-string v0, "CallCardCallPlusView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isCrane :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/incallui/fragment/view/CallCardCallPlusView;->mIsCallPlus:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    iget-boolean v0, p0, Lcom/android/incallui/fragment/view/CallCardCallPlusView;->mIsCallPlus:Z

    return v0
.end method

.method public needToShowIncomingPhoto()Z
    .locals 4

    const/4 v0, 0x1

    const-string v1, "ims_callplus"

    invoke-static {v1}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "CallCardCallPlusView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setIncomingPrimaryImage: mImportance:  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/incallui/fragment/view/CallCardCallPlusView;->mImportance:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    const-string v1, "CallCardCallPlusView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setIncomingPrimaryImage: mSubject:  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/incallui/fragment/view/CallCardCallPlusView;->mSubject:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    iget v1, p0, Lcom/android/incallui/fragment/view/CallCardCallPlusView;->mImportance:I

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/incallui/fragment/view/CallCardCallPlusView;->mSubject:Ljava/lang/String;

    if-eqz v1, :cond_1

    :cond_0
    const/4 v0, 0x0

    :cond_1
    return v0
.end method

.method public onCreateLoader(ILandroid/os/Bundle;)Landroid/content/Loader;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/os/Bundle;",
            ")",
            "Landroid/content/Loader",
            "<",
            "Landroid/database/Cursor;",
            ">;"
        }
    .end annotation

    const/4 v4, 0x0

    const-string v0, "ARG_MSISDN"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "ARG_COLUMNS"

    invoke-virtual {p2, v1}, Landroid/os/Bundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    packed-switch p1, :pswitch_data_0

    move-object v0, v4

    :goto_0
    return-object v0

    :pswitch_0
    const-string v1, "CallCardCallPlusView"

    const-string v2, "onCreateLoader CALLCONTENT_LOADER :"

    const/4 v5, 0x1

    invoke-static {v1, v2, v5}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    const-string v1, "ims_crane"

    invoke-static {v1}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lcom/android/incallui/CallContentContractCrane;->CALLCONTENT_CONTENT_URI:Landroid/net/Uri;

    invoke-static {v0}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    new-instance v0, Landroid/content/CursorLoader;

    iget-object v1, p0, Lcom/android/incallui/fragment/view/CallCardCallPlusView;->mFragment:Lcom/android/incallui/fragment/CallCardFragment;

    invoke-virtual {v1}, Lcom/android/incallui/fragment/CallCardFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    move-object v5, v4

    move-object v6, v4

    invoke-direct/range {v0 .. v6}, Landroid/content/CursorLoader;-><init>(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    sget-object v1, Lcom/android/incallui/CallContentContract;->CALLCONTENT_CONTENT_URI:Landroid/net/Uri;

    invoke-static {v0}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    new-instance v5, Landroid/content/CursorLoader;

    iget-object v0, p0, Lcom/android/incallui/fragment/view/CallCardCallPlusView;->mFragment:Lcom/android/incallui/fragment/CallCardFragment;

    invoke-virtual {v0}, Lcom/android/incallui/fragment/CallCardFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    const-string v9, "direction= 1"

    move-object v8, v3

    move-object v10, v4

    move-object v11, v4

    invoke-direct/range {v5 .. v11}, Landroid/content/CursorLoader;-><init>(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v5

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public onLoadFinished(Landroid/content/Loader;Landroid/database/Cursor;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Loader",
            "<",
            "Landroid/database/Cursor;",
            ">;",
            "Landroid/database/Cursor;",
            ")V"
        }
    .end annotation

    invoke-virtual {p1}, Landroid/content/Loader;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    invoke-direct {p0, p2}, Lcom/android/incallui/fragment/view/CallCardCallPlusView;->updateCallerInfoCardView(Landroid/database/Cursor;)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public bridge synthetic onLoadFinished(Landroid/content/Loader;Ljava/lang/Object;)V
    .locals 0

    check-cast p2, Landroid/database/Cursor;

    invoke-virtual {p0, p1, p2}, Lcom/android/incallui/fragment/view/CallCardCallPlusView;->onLoadFinished(Landroid/content/Loader;Landroid/database/Cursor;)V

    return-void
.end method

.method public onLoaderReset(Landroid/content/Loader;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Loader",
            "<",
            "Landroid/database/Cursor;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p1}, Landroid/content/Loader;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/incallui/fragment/view/CallCardCallPlusView;->updateCallerInfoCardView(Landroid/database/Cursor;)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public onResume()V
    .locals 1

    const-string v0, "ims_crane"

    invoke-static {v0}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/android/incallui/fragment/view/CallCardCallPlusView;->queryForCrane()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v0, "ims_callplus"

    invoke-static {v0}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/incallui/fragment/view/CallCardCallPlusView;->queryForCallPlus()V

    goto :goto_0
.end method

.method public onViewCreated(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/fragment/view/CallCardCallPlusView;->mFragment:Lcom/android/incallui/fragment/CallCardFragment;

    instance-of v0, v0, Lcom/android/incallui/fragment/VoiceCallCardFragment;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/fragment/view/CallCardCallPlusView;->mFragment:Lcom/android/incallui/fragment/CallCardFragment;

    check-cast v0, Lcom/android/incallui/fragment/VoiceCallCardFragment;

    invoke-direct {p0, v0, p1}, Lcom/android/incallui/fragment/view/CallCardCallPlusView;->onViewCreated(Lcom/android/incallui/fragment/VoiceCallCardFragment;Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method public setCallState(I)V
    .locals 0

    return-void
.end method

.method public setPrimary(Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;)V
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/fragment/view/CallCardCallPlusView;->mFragment:Lcom/android/incallui/fragment/CallCardFragment;

    instance-of v0, v0, Lcom/android/incallui/fragment/VoiceCallCardFragment;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/fragment/view/CallCardCallPlusView;->mFragment:Lcom/android/incallui/fragment/CallCardFragment;

    check-cast v0, Lcom/android/incallui/fragment/VoiceCallCardFragment;

    invoke-direct {p0, v0, p1}, Lcom/android/incallui/fragment/view/CallCardCallPlusView;->setPrimary(Lcom/android/incallui/fragment/VoiceCallCardFragment;Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;)V

    :cond_0
    return-void
.end method
