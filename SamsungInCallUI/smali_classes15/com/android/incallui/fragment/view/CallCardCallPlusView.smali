.class public Lcom/android/incallui/fragment/view/CallCardCallPlusView;
.super Ljava/lang/Object;
.source "CallCardCallPlusView.java"

# interfaces
.implements Lcom/android/incallui/fragment/view/ICallCardViewAdapter;
.implements Landroid/app/LoaderManager$LoaderCallbacks;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/android/incallui/fragment/view/ICallCardViewAdapter;",
        "Landroid/app/LoaderManager$LoaderCallbacks",
        "<",
        "Landroid/database/Cursor;",
        ">;"
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

.field private mLocation_map:Ljava/lang/String;

.field private mSubject:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/android/incallui/fragment/CallCardFragment;)V
    .locals 2
    .param p1, "fragment"    # Lcom/android/incallui/fragment/CallCardFragment;

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    iput-boolean v1, p0, Lcom/android/incallui/fragment/view/CallCardCallPlusView;->mIsCallPlus:Z

    .line 54
    iput v1, p0, Lcom/android/incallui/fragment/view/CallCardCallPlusView;->mImportance:I

    .line 55
    iput-object v0, p0, Lcom/android/incallui/fragment/view/CallCardCallPlusView;->mSubject:Ljava/lang/String;

    .line 56
    iput-object v0, p0, Lcom/android/incallui/fragment/view/CallCardCallPlusView;->mLocation:Ljava/lang/String;

    .line 57
    iput-object v0, p0, Lcom/android/incallui/fragment/view/CallCardCallPlusView;->mLocation_map:Ljava/lang/String;

    .line 58
    iput-object v0, p0, Lcom/android/incallui/fragment/view/CallCardCallPlusView;->mBackground:Ljava/lang/String;

    .line 61
    iput-object p1, p0, Lcom/android/incallui/fragment/view/CallCardCallPlusView;->mFragment:Lcom/android/incallui/fragment/CallCardFragment;

    .line 62
    return-void
.end method

.method private arrangePrimaryLayout(Lcom/android/incallui/fragment/VoiceCallCardFragment;)V
    .locals 0
    .param p1, "fragment"    # Lcom/android/incallui/fragment/VoiceCallCardFragment;

    .prologue
    .line 117
    return-void
.end method

.method private onViewCreated(Lcom/android/incallui/fragment/VoiceCallCardFragment;Landroid/view/View;)V
    .locals 0
    .param p1, "fragment"    # Lcom/android/incallui/fragment/VoiceCallCardFragment;
    .param p2, "view"    # Landroid/view/View;

    .prologue
    .line 109
    return-void
.end method

.method private queryForCallPlus()V
    .locals 8

    .prologue
    const/4 v4, 0x1

    .line 120
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/incallui/CallList;->getActiveCall()Lcom/android/incallui/Call;

    move-result-object v5

    if-eqz v5, :cond_2

    move v2, v4

    .line 121
    .local v2, "hasActiveCall":Z
    :goto_0
    const/4 v1, 0x0

    .line 122
    .local v1, "call":Lcom/android/incallui/Call;
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/incallui/CallList;->hasIncomingCall()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 123
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/incallui/CallList;->getIncomingCall()Lcom/android/incallui/Call;

    move-result-object v1

    .line 125
    :cond_0
    const/4 v3, 0x0

    .line 126
    .local v3, "msisdn":Ljava/lang/String;
    if-eqz v1, :cond_1

    .line 127
    invoke-virtual {v1}, Lcom/android/incallui/Call;->getNumber()Ljava/lang/String;

    move-result-object v3

    .line 128
    const-string v5, "CallCardCallPlusView"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "queryForCallPlus number : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, v4}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 130
    :cond_1
    if-eqz v3, :cond_3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_3

    .line 131
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 132
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v5, "ARG_MSISDN"

    invoke-virtual {v0, v5, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 133
    const-string v5, "ARG_COLUMNS"

    sget-object v6, Lcom/android/incallui/CallContentContract;->COMPOSER_DATA:[Ljava/lang/String;

    invoke-virtual {v0, v5, v6}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    .line 134
    iget-object v5, p0, Lcom/android/incallui/fragment/view/CallCardCallPlusView;->mFragment:Lcom/android/incallui/fragment/CallCardFragment;

    invoke-virtual {v5}, Lcom/android/incallui/fragment/CallCardFragment;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v5

    invoke-virtual {v5, v4, v0, p0}, Landroid/app/LoaderManager;->restartLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/content/Loader;

    .line 139
    .end local v0    # "bundle":Landroid/os/Bundle;
    :goto_1
    return-void

    .line 120
    .end local v1    # "call":Lcom/android/incallui/Call;
    .end local v2    # "hasActiveCall":Z
    .end local v3    # "msisdn":Ljava/lang/String;
    :cond_2
    const/4 v2, 0x0

    goto :goto_0

    .line 137
    .restart local v1    # "call":Lcom/android/incallui/Call;
    .restart local v2    # "hasActiveCall":Z
    .restart local v3    # "msisdn":Ljava/lang/String;
    :cond_3
    iget-object v5, p0, Lcom/android/incallui/fragment/view/CallCardCallPlusView;->mFragment:Lcom/android/incallui/fragment/CallCardFragment;

    invoke-virtual {v5}, Lcom/android/incallui/fragment/CallCardFragment;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v5

    invoke-virtual {v5, v4}, Landroid/app/LoaderManager;->destroyLoader(I)V

    goto :goto_1
.end method

.method private queryForCrane()V
    .locals 8

    .prologue
    const/4 v4, 0x1

    .line 142
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/incallui/CallList;->getActiveCall()Lcom/android/incallui/Call;

    move-result-object v5

    if-eqz v5, :cond_2

    move v2, v4

    .line 143
    .local v2, "hasActiveCall":Z
    :goto_0
    const/4 v1, 0x0

    .line 144
    .local v1, "call":Lcom/android/incallui/Call;
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/incallui/CallList;->hasIncomingCall()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 145
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/incallui/CallList;->getIncomingCall()Lcom/android/incallui/Call;

    move-result-object v1

    .line 147
    :cond_0
    const/4 v3, 0x0

    .line 148
    .local v3, "msisdn":Ljava/lang/String;
    if-eqz v1, :cond_1

    .line 149
    invoke-virtual {v1}, Lcom/android/incallui/Call;->getNumber()Ljava/lang/String;

    move-result-object v3

    .line 150
    const-string v5, "CallCardCallPlusView"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "queryForCallPlus number : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, v4}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 152
    :cond_1
    if-eqz v3, :cond_3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_3

    .line 153
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 154
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v5, "ARG_MSISDN"

    invoke-virtual {v0, v5, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 155
    const-string v5, "ARG_COLUMNS"

    sget-object v6, Lcom/android/incallui/CallContentContractCrane;->COMPOSER_DATA:[Ljava/lang/String;

    invoke-virtual {v0, v5, v6}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    .line 156
    iget-object v5, p0, Lcom/android/incallui/fragment/view/CallCardCallPlusView;->mFragment:Lcom/android/incallui/fragment/CallCardFragment;

    invoke-virtual {v5}, Lcom/android/incallui/fragment/CallCardFragment;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v5

    invoke-virtual {v5, v4, v0, p0}, Landroid/app/LoaderManager;->restartLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/content/Loader;

    .line 161
    .end local v0    # "bundle":Landroid/os/Bundle;
    :goto_1
    return-void

    .line 142
    .end local v1    # "call":Lcom/android/incallui/Call;
    .end local v2    # "hasActiveCall":Z
    .end local v3    # "msisdn":Ljava/lang/String;
    :cond_2
    const/4 v2, 0x0

    goto :goto_0

    .line 159
    .restart local v1    # "call":Lcom/android/incallui/Call;
    .restart local v2    # "hasActiveCall":Z
    .restart local v3    # "msisdn":Ljava/lang/String;
    :cond_3
    iget-object v5, p0, Lcom/android/incallui/fragment/view/CallCardCallPlusView;->mFragment:Lcom/android/incallui/fragment/CallCardFragment;

    invoke-virtual {v5}, Lcom/android/incallui/fragment/CallCardFragment;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v5

    invoke-virtual {v5, v4}, Landroid/app/LoaderManager;->destroyLoader(I)V

    goto :goto_1
.end method

.method private setPrimary(Lcom/android/incallui/fragment/VoiceCallCardFragment;Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;)V
    .locals 0
    .param p1, "fragment"    # Lcom/android/incallui/fragment/VoiceCallCardFragment;
    .param p2, "entry"    # Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    .prologue
    .line 113
    return-void
.end method

.method private updateCallerInfoCardView(Landroid/database/Cursor;)V
    .locals 13
    .param p1, "data"    # Landroid/database/Cursor;

    .prologue
    const/4 v12, 0x4

    const/4 v11, 0x3

    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 209
    const-string v6, "CallCardCallPlusView"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "updateView data :"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7, v10}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 210
    if-eqz p1, :cond_0

    .line 211
    const-string v6, "CallCardCallPlusView"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "updateView data count  :"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7, v10}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 212
    :cond_0
    const/4 v3, 0x0

    .line 213
    .local v3, "fragment":Lcom/android/incallui/fragment/VoiceCallCardFragment;
    iget-object v6, p0, Lcom/android/incallui/fragment/view/CallCardCallPlusView;->mFragment:Lcom/android/incallui/fragment/CallCardFragment;

    instance-of v6, v6, Lcom/android/incallui/fragment/VoiceCallCardFragment;

    if-eqz v6, :cond_1

    .line 214
    iget-object v3, p0, Lcom/android/incallui/fragment/view/CallCardCallPlusView;->mFragment:Lcom/android/incallui/fragment/CallCardFragment;

    .end local v3    # "fragment":Lcom/android/incallui/fragment/VoiceCallCardFragment;
    check-cast v3, Lcom/android/incallui/fragment/VoiceCallCardFragment;

    .line 216
    .restart local v3    # "fragment":Lcom/android/incallui/fragment/VoiceCallCardFragment;
    :cond_1
    if-nez v3, :cond_3

    .line 284
    :cond_2
    :goto_0
    return-void

    .line 217
    :cond_3
    invoke-virtual {v3}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->inflateCallerInfoCardView()V

    .line 219
    invoke-virtual {v3}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->getCallerInfoCardView()Lcom/android/incallui/callerinfocard/CallerInfoCardView;

    move-result-object v1

    .line 221
    .local v1, "callerInfoCardView":Lcom/android/incallui/callerinfocard/CallerInfoCardView;
    if-eqz p1, :cond_7

    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v6

    if-eqz v6, :cond_7

    .line 222
    const-string v6, "CallCardCallPlusView"

    const-string v7, "CallPlus available ,incoming call"

    invoke-static {v6, v7, v10}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 223
    iput-boolean v10, p0, Lcom/android/incallui/fragment/view/CallCardCallPlusView;->mIsCallPlus:Z

    .line 224
    const-string v6, "ims_crane"

    invoke-static {v6}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 225
    invoke-interface {p1, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    iput v6, p0, Lcom/android/incallui/fragment/view/CallCardCallPlusView;->mImportance:I

    .line 226
    invoke-interface {p1, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/android/incallui/fragment/view/CallCardCallPlusView;->mSubject:Ljava/lang/String;

    .line 227
    const/4 v6, 0x2

    invoke-interface {p1, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/android/incallui/fragment/view/CallCardCallPlusView;->mLocation:Ljava/lang/String;

    .line 228
    invoke-interface {p1, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/android/incallui/fragment/view/CallCardCallPlusView;->mLocation_map:Ljava/lang/String;

    .line 229
    invoke-interface {p1, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/android/incallui/fragment/view/CallCardCallPlusView;->mBackground:Ljava/lang/String;

    .line 237
    :goto_1
    const-string v6, "CallCardCallPlusView"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "updateView mImportance :"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lcom/android/incallui/fragment/view/CallCardCallPlusView;->mImportance:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "mSubject "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/incallui/fragment/view/CallCardCallPlusView;->mSubject:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7, v10}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 238
    const-string v6, "CallCardCallPlusView"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "updateView mLocation :"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/incallui/fragment/view/CallCardCallPlusView;->mLocation:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "mLocation_map "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/incallui/fragment/view/CallCardCallPlusView;->mLocation_map:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "mBackground "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/incallui/fragment/view/CallCardCallPlusView;->mBackground:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7, v10}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 241
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v6

    const/4 v7, 0x0

    invoke-static {v6, v7, v9}, Lcom/android/incallui/util/InCallUtils;->getCallToDisplay(Lcom/android/incallui/CallList;Lcom/android/incallui/Call;Z)Lcom/android/incallui/Call;

    move-result-object v0

    .line 242
    .local v0, "call":Lcom/android/incallui/Call;
    if-eqz v0, :cond_2

    .line 243
    invoke-virtual {v3}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->getView()Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Lcom/android/incallui/ContactInfoCache;->getInstance(Landroid/content/Context;)Lcom/android/incallui/ContactInfoCache;

    move-result-object v6

    invoke-virtual {v0}, Lcom/android/incallui/Call;->getId()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/android/incallui/ContactInfoCache;->getInfo(Ljava/lang/String;)Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    move-result-object v2

    .line 244
    .local v2, "entry":Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;
    if-eqz v2, :cond_2

    .line 245
    iget-object v6, v2, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->photo:Landroid/graphics/drawable/Drawable;

    iget-boolean v7, v2, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->isPersonalPhotoAvailable:Z

    invoke-virtual {v3, v6, v7}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->setPrimaryImage(Landroid/graphics/drawable/Drawable;Z)V

    .line 246
    if-eqz v1, :cond_2

    .line 247
    invoke-virtual {v1}, Lcom/android/incallui/callerinfocard/CallerInfoCardView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    .line 248
    .local v4, "lpt":Landroid/view/ViewGroup$LayoutParams;
    invoke-virtual {v1}, Lcom/android/incallui/callerinfocard/CallerInfoCardView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 249
    .local v5, "mlpt":Landroid/view/ViewGroup$MarginLayoutParams;
    iget-object v6, p0, Lcom/android/incallui/fragment/view/CallCardCallPlusView;->mFragment:Lcom/android/incallui/fragment/CallCardFragment;

    invoke-virtual {v6}, Lcom/android/incallui/fragment/CallCardFragment;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0a043a

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v6

    float-to-int v6, v6

    iput v6, v4, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 250
    iget-object v6, p0, Lcom/android/incallui/fragment/view/CallCardCallPlusView;->mFragment:Lcom/android/incallui/fragment/CallCardFragment;

    invoke-virtual {v6}, Lcom/android/incallui/fragment/CallCardFragment;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0a043b

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v6

    float-to-int v6, v6

    iput v6, v5, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 251
    invoke-virtual {v1, v4}, Lcom/android/incallui/callerinfocard/CallerInfoCardView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 252
    invoke-virtual {v1, v5}, Lcom/android/incallui/callerinfocard/CallerInfoCardView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 253
    iget-boolean v6, p0, Lcom/android/incallui/fragment/view/CallCardCallPlusView;->mIsCallPlus:Z

    invoke-virtual {v1, v6}, Lcom/android/incallui/callerinfocard/CallerInfoCardView;->removeInfo(Z)V

    .line 254
    iget-object v6, p0, Lcom/android/incallui/fragment/view/CallCardCallPlusView;->mLocation:Ljava/lang/String;

    if-nez v6, :cond_5

    .line 255
    iget-boolean v6, p0, Lcom/android/incallui/fragment/view/CallCardCallPlusView;->mIsCallPlus:Z

    iget v7, p0, Lcom/android/incallui/fragment/view/CallCardCallPlusView;->mImportance:I

    invoke-virtual {v1, v6, v7}, Lcom/android/incallui/callerinfocard/CallerInfoCardView;->setCallPlusImportance(ZI)V

    .line 256
    iget-boolean v6, p0, Lcom/android/incallui/fragment/view/CallCardCallPlusView;->mIsCallPlus:Z

    iget-object v7, p0, Lcom/android/incallui/fragment/view/CallCardCallPlusView;->mSubject:Ljava/lang/String;

    invoke-virtual {v1, v6, v7}, Lcom/android/incallui/callerinfocard/CallerInfoCardView;->setCallPlusSubject(ZLjava/lang/String;)V

    .line 257
    iget-object v6, p0, Lcom/android/incallui/fragment/view/CallCardCallPlusView;->mLocation:Ljava/lang/String;

    invoke-virtual {v1, v9, v6}, Lcom/android/incallui/callerinfocard/CallerInfoCardView;->setCallPlusAddress(ZLjava/lang/String;)V

    .line 258
    iget-boolean v6, p0, Lcom/android/incallui/fragment/view/CallCardCallPlusView;->mIsCallPlus:Z

    iget-object v7, p0, Lcom/android/incallui/fragment/view/CallCardCallPlusView;->mLocation_map:Ljava/lang/String;

    invoke-virtual {v1, v6, v7, v9}, Lcom/android/incallui/callerinfocard/CallerInfoCardView;->setCallPlusMap(ZLjava/lang/String;Z)V

    .line 259
    iget-boolean v6, p0, Lcom/android/incallui/fragment/view/CallCardCallPlusView;->mIsCallPlus:Z

    iget-object v7, p0, Lcom/android/incallui/fragment/view/CallCardCallPlusView;->mBackground:Ljava/lang/String;

    invoke-virtual {v1, v6, v7, v10}, Lcom/android/incallui/callerinfocard/CallerInfoCardView;->setCallPlusMapImage(ZLjava/lang/String;Z)V

    goto/16 :goto_0

    .line 231
    .end local v0    # "call":Lcom/android/incallui/Call;
    .end local v2    # "entry":Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;
    .end local v4    # "lpt":Landroid/view/ViewGroup$LayoutParams;
    .end local v5    # "mlpt":Landroid/view/ViewGroup$MarginLayoutParams;
    :cond_4
    invoke-interface {p1, v11}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    iput v6, p0, Lcom/android/incallui/fragment/view/CallCardCallPlusView;->mImportance:I

    .line 232
    const/4 v6, 0x7

    invoke-interface {p1, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/android/incallui/fragment/view/CallCardCallPlusView;->mSubject:Ljava/lang/String;

    .line 233
    invoke-interface {p1, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/android/incallui/fragment/view/CallCardCallPlusView;->mLocation:Ljava/lang/String;

    .line 234
    const/4 v6, 0x5

    invoke-interface {p1, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/android/incallui/fragment/view/CallCardCallPlusView;->mLocation_map:Ljava/lang/String;

    .line 235
    const/4 v6, 0x6

    invoke-interface {p1, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/android/incallui/fragment/view/CallCardCallPlusView;->mBackground:Ljava/lang/String;

    goto/16 :goto_1

    .line 260
    .restart local v0    # "call":Lcom/android/incallui/Call;
    .restart local v2    # "entry":Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;
    .restart local v4    # "lpt":Landroid/view/ViewGroup$LayoutParams;
    .restart local v5    # "mlpt":Landroid/view/ViewGroup$MarginLayoutParams;
    :cond_5
    iget-object v6, p0, Lcom/android/incallui/fragment/view/CallCardCallPlusView;->mBackground:Ljava/lang/String;

    if-nez v6, :cond_6

    .line 261
    iget-boolean v6, p0, Lcom/android/incallui/fragment/view/CallCardCallPlusView;->mIsCallPlus:Z

    iget v7, p0, Lcom/android/incallui/fragment/view/CallCardCallPlusView;->mImportance:I

    invoke-virtual {v1, v6, v7}, Lcom/android/incallui/callerinfocard/CallerInfoCardView;->setCallPlusImportance(ZI)V

    .line 262
    iget-boolean v6, p0, Lcom/android/incallui/fragment/view/CallCardCallPlusView;->mIsCallPlus:Z

    iget-object v7, p0, Lcom/android/incallui/fragment/view/CallCardCallPlusView;->mSubject:Ljava/lang/String;

    invoke-virtual {v1, v6, v7}, Lcom/android/incallui/callerinfocard/CallerInfoCardView;->setCallPlusSubject(ZLjava/lang/String;)V

    .line 263
    iget-boolean v6, p0, Lcom/android/incallui/fragment/view/CallCardCallPlusView;->mIsCallPlus:Z

    iget-object v7, p0, Lcom/android/incallui/fragment/view/CallCardCallPlusView;->mLocation:Ljava/lang/String;

    invoke-virtual {v1, v6, v7}, Lcom/android/incallui/callerinfocard/CallerInfoCardView;->setCallPlusAddress(ZLjava/lang/String;)V

    .line 264
    iget-object v6, p0, Lcom/android/incallui/fragment/view/CallCardCallPlusView;->mBackground:Ljava/lang/String;

    invoke-virtual {v1, v9, v6, v9}, Lcom/android/incallui/callerinfocard/CallerInfoCardView;->setCallPlusMapImage(ZLjava/lang/String;Z)V

    .line 265
    iget-boolean v6, p0, Lcom/android/incallui/fragment/view/CallCardCallPlusView;->mIsCallPlus:Z

    iget-object v7, p0, Lcom/android/incallui/fragment/view/CallCardCallPlusView;->mLocation_map:Ljava/lang/String;

    invoke-virtual {v1, v6, v7, v10}, Lcom/android/incallui/callerinfocard/CallerInfoCardView;->setCallPlusMap(ZLjava/lang/String;Z)V

    goto/16 :goto_0

    .line 267
    :cond_6
    iget-boolean v6, p0, Lcom/android/incallui/fragment/view/CallCardCallPlusView;->mIsCallPlus:Z

    iget v7, p0, Lcom/android/incallui/fragment/view/CallCardCallPlusView;->mImportance:I

    invoke-virtual {v1, v6, v7}, Lcom/android/incallui/callerinfocard/CallerInfoCardView;->setCallPlusImportance(ZI)V

    .line 268
    iget-boolean v6, p0, Lcom/android/incallui/fragment/view/CallCardCallPlusView;->mIsCallPlus:Z

    iget-object v7, p0, Lcom/android/incallui/fragment/view/CallCardCallPlusView;->mSubject:Ljava/lang/String;

    invoke-virtual {v1, v6, v7}, Lcom/android/incallui/callerinfocard/CallerInfoCardView;->setCallPlusSubject(ZLjava/lang/String;)V

    .line 269
    iget-boolean v6, p0, Lcom/android/incallui/fragment/view/CallCardCallPlusView;->mIsCallPlus:Z

    iget-object v7, p0, Lcom/android/incallui/fragment/view/CallCardCallPlusView;->mLocation:Ljava/lang/String;

    invoke-virtual {v1, v6, v7}, Lcom/android/incallui/callerinfocard/CallerInfoCardView;->setCallPlusAddress(ZLjava/lang/String;)V

    .line 270
    iget-boolean v6, p0, Lcom/android/incallui/fragment/view/CallCardCallPlusView;->mIsCallPlus:Z

    iget-object v7, p0, Lcom/android/incallui/fragment/view/CallCardCallPlusView;->mBackground:Ljava/lang/String;

    invoke-virtual {v1, v6, v7, v9}, Lcom/android/incallui/callerinfocard/CallerInfoCardView;->setCallPlusMapImage(ZLjava/lang/String;Z)V

    .line 271
    iget-boolean v6, p0, Lcom/android/incallui/fragment/view/CallCardCallPlusView;->mIsCallPlus:Z

    iget-object v7, p0, Lcom/android/incallui/fragment/view/CallCardCallPlusView;->mLocation_map:Ljava/lang/String;

    invoke-virtual {v1, v6, v7, v9}, Lcom/android/incallui/callerinfocard/CallerInfoCardView;->setCallPlusMap(ZLjava/lang/String;Z)V

    goto/16 :goto_0

    .line 275
    .end local v0    # "call":Lcom/android/incallui/Call;
    .end local v2    # "entry":Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;
    .end local v4    # "lpt":Landroid/view/ViewGroup$LayoutParams;
    .end local v5    # "mlpt":Landroid/view/ViewGroup$MarginLayoutParams;
    :cond_7
    const-string v6, "CallCardCallPlusView"

    const-string v7, "CallPlus not available ,incoming call"

    invoke-static {v6, v7, v10}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 276
    iput-boolean v9, p0, Lcom/android/incallui/fragment/view/CallCardCallPlusView;->mIsCallPlus:Z

    .line 277
    iget-boolean v6, p0, Lcom/android/incallui/fragment/view/CallCardCallPlusView;->mIsCallPlus:Z

    iget v7, p0, Lcom/android/incallui/fragment/view/CallCardCallPlusView;->mImportance:I

    invoke-virtual {v1, v6, v7}, Lcom/android/incallui/callerinfocard/CallerInfoCardView;->setCallPlusImportance(ZI)V

    .line 278
    iget-boolean v6, p0, Lcom/android/incallui/fragment/view/CallCardCallPlusView;->mIsCallPlus:Z

    iget-object v7, p0, Lcom/android/incallui/fragment/view/CallCardCallPlusView;->mSubject:Ljava/lang/String;

    invoke-virtual {v1, v6, v7}, Lcom/android/incallui/callerinfocard/CallerInfoCardView;->setCallPlusSubject(ZLjava/lang/String;)V

    .line 279
    iget-boolean v6, p0, Lcom/android/incallui/fragment/view/CallCardCallPlusView;->mIsCallPlus:Z

    iget-object v7, p0, Lcom/android/incallui/fragment/view/CallCardCallPlusView;->mLocation:Ljava/lang/String;

    invoke-virtual {v1, v6, v7}, Lcom/android/incallui/callerinfocard/CallerInfoCardView;->setCallPlusAddress(ZLjava/lang/String;)V

    .line 280
    iget-boolean v6, p0, Lcom/android/incallui/fragment/view/CallCardCallPlusView;->mIsCallPlus:Z

    iget-object v7, p0, Lcom/android/incallui/fragment/view/CallCardCallPlusView;->mBackground:Ljava/lang/String;

    invoke-virtual {v1, v6, v7, v9}, Lcom/android/incallui/callerinfocard/CallerInfoCardView;->setCallPlusMapImage(ZLjava/lang/String;Z)V

    .line 281
    iget-boolean v6, p0, Lcom/android/incallui/fragment/view/CallCardCallPlusView;->mIsCallPlus:Z

    iget-object v7, p0, Lcom/android/incallui/fragment/view/CallCardCallPlusView;->mLocation_map:Ljava/lang/String;

    invoke-virtual {v1, v6, v7, v9}, Lcom/android/incallui/callerinfocard/CallerInfoCardView;->setCallPlusMap(ZLjava/lang/String;Z)V

    goto/16 :goto_0
.end method


# virtual methods
.method public animateForAnswerCall()V
    .locals 0

    .prologue
    .line 101
    return-void
.end method

.method public animateForSwap()V
    .locals 0

    .prologue
    .line 105
    return-void
.end method

.method public arrangePrimaryLayout()V
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, Lcom/android/incallui/fragment/view/CallCardCallPlusView;->mFragment:Lcom/android/incallui/fragment/CallCardFragment;

    instance-of v0, v0, Lcom/android/incallui/fragment/VoiceCallCardFragment;

    if-eqz v0, :cond_0

    .line 86
    iget-object v0, p0, Lcom/android/incallui/fragment/view/CallCardCallPlusView;->mFragment:Lcom/android/incallui/fragment/CallCardFragment;

    check-cast v0, Lcom/android/incallui/fragment/VoiceCallCardFragment;

    invoke-direct {p0, v0}, Lcom/android/incallui/fragment/view/CallCardCallPlusView;->arrangePrimaryLayout(Lcom/android/incallui/fragment/VoiceCallCardFragment;)V

    .line 88
    :cond_0
    return-void
.end method

.method public needToShowIncomingPhoto()Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    .line 287
    const-string v1, "ims_callplus"

    invoke-static {v1}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 288
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

    .line 289
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

    .line 290
    iget v1, p0, Lcom/android/incallui/fragment/view/CallCardCallPlusView;->mImportance:I

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/incallui/fragment/view/CallCardCallPlusView;->mSubject:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 291
    :cond_0
    const/4 v0, 0x0

    .line 294
    :cond_1
    return v0
.end method

.method public onCreateLoader(ILandroid/os/Bundle;)Landroid/content/Loader;
    .locals 13
    .param p1, "loaderID"    # I
    .param p2, "args"    # Landroid/os/Bundle;
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

    .prologue
    const/4 v4, 0x0

    .line 165
    const-string v0, "ARG_MSISDN"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 166
    .local v12, "msisdn":Ljava/lang/String;
    const-string v0, "ARG_COLUMNS"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 167
    .local v3, "columns":[Ljava/lang/String;
    packed-switch p1, :pswitch_data_0

    move-object v0, v4

    .line 180
    :goto_0
    return-object v0

    .line 169
    :pswitch_0
    const-string v0, "CallCardCallPlusView"

    const-string v1, "onCreateLoader CALLCONTENT_LOADER :"

    const/4 v5, 0x1

    invoke-static {v0, v1, v5}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 170
    const/4 v2, 0x0

    .line 171
    .local v2, "uri":Landroid/net/Uri;
    const-string v0, "ims_crane"

    invoke-static {v0}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 172
    sget-object v0, Lcom/android/incallui/CallContentContractCrane;->CALLCONTENT_CONTENT_URI:Landroid/net/Uri;

    invoke-static {v12}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 173
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

    .line 175
    :cond_0
    sget-object v0, Lcom/android/incallui/CallContentContract;->CALLCONTENT_CONTENT_URI:Landroid/net/Uri;

    invoke-static {v12}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 176
    new-instance v5, Landroid/content/CursorLoader;

    iget-object v0, p0, Lcom/android/incallui/fragment/view/CallCardCallPlusView;->mFragment:Lcom/android/incallui/fragment/CallCardFragment;

    invoke-virtual {v0}, Lcom/android/incallui/fragment/CallCardFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    const-string v9, "direction= 1"

    move-object v7, v2

    move-object v8, v3

    move-object v10, v4

    move-object v11, v4

    invoke-direct/range {v5 .. v11}, Landroid/content/CursorLoader;-><init>(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v5

    goto :goto_0

    .line 167
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public onLoadFinished(Landroid/content/Loader;Landroid/database/Cursor;)V
    .locals 1
    .param p2, "data"    # Landroid/database/Cursor;
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

    .prologue
    .line 186
    .local p1, "loader":Landroid/content/Loader;, "Landroid/content/Loader<Landroid/database/Cursor;>;"
    invoke-virtual {p1}, Landroid/content/Loader;->getId()I

    move-result v0

    .line 187
    .local v0, "id":I
    packed-switch v0, :pswitch_data_0

    .line 194
    :goto_0
    return-void

    .line 189
    :pswitch_0
    invoke-direct {p0, p2}, Lcom/android/incallui/fragment/view/CallCardCallPlusView;->updateCallerInfoCardView(Landroid/database/Cursor;)V

    goto :goto_0

    .line 187
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public bridge synthetic onLoadFinished(Landroid/content/Loader;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 44
    check-cast p2, Landroid/database/Cursor;

    invoke-virtual {p0, p1, p2}, Lcom/android/incallui/fragment/view/CallCardCallPlusView;->onLoadFinished(Landroid/content/Loader;Landroid/database/Cursor;)V

    return-void
.end method

.method public onLoaderReset(Landroid/content/Loader;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Loader",
            "<",
            "Landroid/database/Cursor;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 198
    .local p1, "loader":Landroid/content/Loader;, "Landroid/content/Loader<Landroid/database/Cursor;>;"
    invoke-virtual {p1}, Landroid/content/Loader;->getId()I

    move-result v0

    .line 199
    .local v0, "id":I
    packed-switch v0, :pswitch_data_0

    .line 205
    :goto_0
    return-void

    .line 201
    :pswitch_0
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/android/incallui/fragment/view/CallCardCallPlusView;->updateCallerInfoCardView(Landroid/database/Cursor;)V

    goto :goto_0

    .line 199
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 92
    const-string v0, "ims_crane"

    invoke-static {v0}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 93
    invoke-direct {p0}, Lcom/android/incallui/fragment/view/CallCardCallPlusView;->queryForCrane()V

    .line 97
    :cond_0
    :goto_0
    return-void

    .line 94
    :cond_1
    const-string v0, "ims_callplus"

    invoke-static {v0}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 95
    invoke-direct {p0}, Lcom/android/incallui/fragment/view/CallCardCallPlusView;->queryForCallPlus()V

    goto :goto_0
.end method

.method public onViewCreated(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 66
    iget-object v0, p0, Lcom/android/incallui/fragment/view/CallCardCallPlusView;->mFragment:Lcom/android/incallui/fragment/CallCardFragment;

    instance-of v0, v0, Lcom/android/incallui/fragment/VoiceCallCardFragment;

    if-eqz v0, :cond_0

    .line 67
    iget-object v0, p0, Lcom/android/incallui/fragment/view/CallCardCallPlusView;->mFragment:Lcom/android/incallui/fragment/CallCardFragment;

    check-cast v0, Lcom/android/incallui/fragment/VoiceCallCardFragment;

    invoke-direct {p0, v0, p1}, Lcom/android/incallui/fragment/view/CallCardCallPlusView;->onViewCreated(Lcom/android/incallui/fragment/VoiceCallCardFragment;Landroid/view/View;)V

    .line 69
    :cond_0
    return-void
.end method

.method public setCallState(I)V
    .locals 0
    .param p1, "state"    # I

    .prologue
    .line 74
    return-void
.end method

.method public setPrimary(Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;)V
    .locals 1
    .param p1, "entry"    # Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    .prologue
    .line 78
    iget-object v0, p0, Lcom/android/incallui/fragment/view/CallCardCallPlusView;->mFragment:Lcom/android/incallui/fragment/CallCardFragment;

    instance-of v0, v0, Lcom/android/incallui/fragment/VoiceCallCardFragment;

    if-eqz v0, :cond_0

    .line 79
    iget-object v0, p0, Lcom/android/incallui/fragment/view/CallCardCallPlusView;->mFragment:Lcom/android/incallui/fragment/CallCardFragment;

    check-cast v0, Lcom/android/incallui/fragment/VoiceCallCardFragment;

    invoke-direct {p0, v0, p1}, Lcom/android/incallui/fragment/view/CallCardCallPlusView;->setPrimary(Lcom/android/incallui/fragment/VoiceCallCardFragment;Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;)V

    .line 81
    :cond_0
    return-void
.end method
