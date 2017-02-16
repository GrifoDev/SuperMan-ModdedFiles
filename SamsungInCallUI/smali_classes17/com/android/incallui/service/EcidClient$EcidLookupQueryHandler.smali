.class Lcom/android/incallui/service/EcidClient$EcidLookupQueryHandler;
.super Landroid/content/AsyncQueryHandler;
.source "EcidClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/incallui/service/EcidClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "EcidLookupQueryHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/incallui/service/EcidClient;


# direct methods
.method public constructor <init>(Lcom/android/incallui/service/EcidClient;Landroid/content/ContentResolver;)V
    .locals 0
    .param p2, "cr"    # Landroid/content/ContentResolver;

    .prologue
    .line 64
    iput-object p1, p0, Lcom/android/incallui/service/EcidClient$EcidLookupQueryHandler;->this$0:Lcom/android/incallui/service/EcidClient;

    .line 65
    invoke-direct {p0, p2}, Landroid/content/AsyncQueryHandler;-><init>(Landroid/content/ContentResolver;)V

    .line 66
    return-void
.end method

.method private getFlag(Landroid/database/Cursor;I)Z
    .locals 2
    .param p1, "c"    # Landroid/database/Cursor;
    .param p2, "col"    # I

    .prologue
    .line 144
    const/4 v0, 0x0

    .line 145
    .local v0, "flag":I
    invoke-interface {p1, p2}, Landroid/database/Cursor;->isNull(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 147
    :try_start_0
    invoke-interface {p1, p2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 151
    :cond_0
    :goto_0
    if-eqz v0, :cond_1

    const/4 v1, 0x1

    :goto_1
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_1

    .line 148
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private getString(Landroid/database/Cursor;I)Ljava/lang/String;
    .locals 2
    .param p1, "c"    # Landroid/database/Cursor;
    .param p2, "col"    # I

    .prologue
    .line 138
    const/4 v0, 0x0

    .line 139
    .local v0, "s":Ljava/lang/String;
    invoke-interface {p1, p2}, Landroid/database/Cursor;->isNull(I)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-interface {p1, p2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 140
    :cond_0
    return-object v0
.end method


# virtual methods
.method protected onQueryComplete(ILjava/lang/Object;Landroid/database/Cursor;)V
    .locals 4
    .param p1, "token"    # I
    .param p2, "cookie"    # Ljava/lang/Object;
    .param p3, "cursor"    # Landroid/database/Cursor;

    .prologue
    const/4 v0, 0x0

    .line 72
    const-string v1, "Phone-ECID"

    const-string v2, "ECID content provider returned results"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 73
    iget-object v1, p0, Lcom/android/incallui/service/EcidClient$EcidLookupQueryHandler;->this$0:Lcom/android/incallui/service/EcidClient;

    # getter for: Lcom/android/incallui/service/EcidClient;->m_ownerCtx:Ljava/lang/ref/WeakReference;
    invoke-static {v1}, Lcom/android/incallui/service/EcidClient;->access$000(Lcom/android/incallui/service/EcidClient;)Ljava/lang/ref/WeakReference;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/incallui/service/EcidClient$EcidLookupQueryHandler;->this$0:Lcom/android/incallui/service/EcidClient;

    # getter for: Lcom/android/incallui/service/EcidClient;->m_ownerCtx:Ljava/lang/ref/WeakReference;
    invoke-static {v1}, Lcom/android/incallui/service/EcidClient;->access$000(Lcom/android/incallui/service/EcidClient;)Ljava/lang/ref/WeakReference;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Context;

    move-object v0, v1

    .line 74
    .local v0, "ctx":Landroid/content/Context;
    :cond_0
    if-nez v0, :cond_2

    .line 135
    :cond_1
    :goto_0
    return-void

    .line 79
    :cond_2
    iget-object v1, p0, Lcom/android/incallui/service/EcidClient$EcidLookupQueryHandler;->this$0:Lcom/android/incallui/service/EcidClient;

    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/android/incallui/service/EcidClient;->m_lookupCompleted:Z

    .line 81
    if-eqz p3, :cond_6

    invoke-interface {p3}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 82
    iget-object v1, p0, Lcom/android/incallui/service/EcidClient$EcidLookupQueryHandler;->this$0:Lcom/android/incallui/service/EcidClient;

    const-string v2, "cid_pNumber"

    invoke-interface {p3, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-direct {p0, p3, v2}, Lcom/android/incallui/service/EcidClient$EcidLookupQueryHandler;->getString(Landroid/database/Cursor;I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/android/incallui/service/EcidClient;->m_callerId:Ljava/lang/String;

    .line 83
    iget-object v1, p0, Lcom/android/incallui/service/EcidClient$EcidLookupQueryHandler;->this$0:Lcom/android/incallui/service/EcidClient;

    const-string v2, "cid_pName"

    invoke-interface {p3, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-direct {p0, p3, v2}, Lcom/android/incallui/service/EcidClient$EcidLookupQueryHandler;->getString(Landroid/database/Cursor;I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/android/incallui/service/EcidClient;->m_cname:Ljava/lang/String;

    .line 84
    iget-object v1, p0, Lcom/android/incallui/service/EcidClient$EcidLookupQueryHandler;->this$0:Lcom/android/incallui/service/EcidClient;

    const-string v2, "cid_pCompany"

    invoke-interface {p3, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-direct {p0, p3, v2}, Lcom/android/incallui/service/EcidClient$EcidLookupQueryHandler;->getString(Landroid/database/Cursor;I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/android/incallui/service/EcidClient;->m_bizName:Ljava/lang/String;

    .line 85
    iget-object v1, p0, Lcom/android/incallui/service/EcidClient$EcidLookupQueryHandler;->this$0:Lcom/android/incallui/service/EcidClient;

    const-string v2, "cid_pFirstName"

    invoke-interface {p3, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-direct {p0, p3, v2}, Lcom/android/incallui/service/EcidClient$EcidLookupQueryHandler;->getString(Landroid/database/Cursor;I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/android/incallui/service/EcidClient;->m_firstName:Ljava/lang/String;

    .line 86
    iget-object v1, p0, Lcom/android/incallui/service/EcidClient$EcidLookupQueryHandler;->this$0:Lcom/android/incallui/service/EcidClient;

    const-string v2, "cid_pLastName"

    invoke-interface {p3, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-direct {p0, p3, v2}, Lcom/android/incallui/service/EcidClient$EcidLookupQueryHandler;->getString(Landroid/database/Cursor;I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/android/incallui/service/EcidClient;->m_lastName:Ljava/lang/String;

    .line 87
    iget-object v1, p0, Lcom/android/incallui/service/EcidClient$EcidLookupQueryHandler;->this$0:Lcom/android/incallui/service/EcidClient;

    const-string v2, "cid_pCityName"

    invoke-interface {p3, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-direct {p0, p3, v2}, Lcom/android/incallui/service/EcidClient$EcidLookupQueryHandler;->getString(Landroid/database/Cursor;I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/android/incallui/service/EcidClient;->m_cityName:Ljava/lang/String;

    .line 88
    iget-object v1, p0, Lcom/android/incallui/service/EcidClient$EcidLookupQueryHandler;->this$0:Lcom/android/incallui/service/EcidClient;

    const-string v2, "cid_pStateName"

    invoke-interface {p3, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-direct {p0, p3, v2}, Lcom/android/incallui/service/EcidClient$EcidLookupQueryHandler;->getString(Landroid/database/Cursor;I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/android/incallui/service/EcidClient;->m_stateName:Ljava/lang/String;

    .line 89
    iget-object v1, p0, Lcom/android/incallui/service/EcidClient$EcidLookupQueryHandler;->this$0:Lcom/android/incallui/service/EcidClient;

    const-string v2, "cid_pStateAbbr"

    invoke-interface {p3, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-direct {p0, p3, v2}, Lcom/android/incallui/service/EcidClient$EcidLookupQueryHandler;->getString(Landroid/database/Cursor;I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/android/incallui/service/EcidClient;->m_stateAbbr:Ljava/lang/String;

    .line 90
    iget-object v1, p0, Lcom/android/incallui/service/EcidClient$EcidLookupQueryHandler;->this$0:Lcom/android/incallui/service/EcidClient;

    const-string v2, "cid_pCountryName"

    invoke-interface {p3, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-direct {p0, p3, v2}, Lcom/android/incallui/service/EcidClient$EcidLookupQueryHandler;->getString(Landroid/database/Cursor;I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/android/incallui/service/EcidClient;->m_countryName:Ljava/lang/String;

    .line 91
    const-string v1, "feature_vzw"

    invoke-static {v1}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "feature_att"

    invoke-static {v1}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 92
    :cond_3
    iget-object v1, p0, Lcom/android/incallui/service/EcidClient$EcidLookupQueryHandler;->this$0:Lcom/android/incallui/service/EcidClient;

    const-string v2, "cid_pImage"

    invoke-interface {p3, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-direct {p0, p3, v2}, Lcom/android/incallui/service/EcidClient$EcidLookupQueryHandler;->getString(Landroid/database/Cursor;I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/android/incallui/service/EcidClient;->m_urlPicture:Ljava/lang/String;

    .line 93
    iget-object v1, p0, Lcom/android/incallui/service/EcidClient$EcidLookupQueryHandler;->this$0:Lcom/android/incallui/service/EcidClient;

    iget-object v1, v1, Lcom/android/incallui/service/EcidClient;->m_urlPicture:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_4

    const-string v1, "Phone-ECID"

    const-string v2, "VZW Picture ME url is null"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 97
    :cond_4
    :goto_1
    iget-object v1, p0, Lcom/android/incallui/service/EcidClient$EcidLookupQueryHandler;->this$0:Lcom/android/incallui/service/EcidClient;

    const-string v2, "cid_bSameNetwork"

    invoke-interface {p3, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-direct {p0, p3, v2}, Lcom/android/incallui/service/EcidClient$EcidLookupQueryHandler;->getFlag(Landroid/database/Cursor;I)Z

    move-result v2

    iput-boolean v2, v1, Lcom/android/incallui/service/EcidClient;->m_bSameNetwork:Z

    .line 98
    iget-object v1, p0, Lcom/android/incallui/service/EcidClient$EcidLookupQueryHandler;->this$0:Lcom/android/incallui/service/EcidClient;

    const-string v2, "cid_bFriends"

    invoke-interface {p3, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-direct {p0, p3, v2}, Lcom/android/incallui/service/EcidClient$EcidLookupQueryHandler;->getFlag(Landroid/database/Cursor;I)Z

    move-result v2

    iput-boolean v2, v1, Lcom/android/incallui/service/EcidClient;->m_bFriends:Z

    .line 99
    iget-object v1, p0, Lcom/android/incallui/service/EcidClient$EcidLookupQueryHandler;->this$0:Lcom/android/incallui/service/EcidClient;

    const-string v2, "cid_bPreferCidImage"

    invoke-interface {p3, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-direct {p0, p3, v2}, Lcom/android/incallui/service/EcidClient$EcidLookupQueryHandler;->getFlag(Landroid/database/Cursor;I)Z

    move-result v2

    iput-boolean v2, v1, Lcom/android/incallui/service/EcidClient;->m_bPreferCidImage:Z

    .line 100
    iget-object v1, p0, Lcom/android/incallui/service/EcidClient$EcidLookupQueryHandler;->this$0:Lcom/android/incallui/service/EcidClient;

    const-string v2, "cid_pDisplayName"

    invoke-interface {p3, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-direct {p0, p3, v2}, Lcom/android/incallui/service/EcidClient$EcidLookupQueryHandler;->getString(Landroid/database/Cursor;I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/android/incallui/service/EcidClient;->m_displayName:Ljava/lang/String;

    .line 105
    iget-object v1, p0, Lcom/android/incallui/service/EcidClient$EcidLookupQueryHandler;->this$0:Lcom/android/incallui/service/EcidClient;

    iget-object v1, v1, Lcom/android/incallui/service/EcidClient;->m_displayName:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_8

    .line 106
    const-string v1, "Phone-ECID"

    const-string v2, "The ECID content provider returned a name"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 112
    :goto_2
    :try_start_0
    const-string v1, "feature_att"

    invoke-static {v1}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_5

    const-string v1, "feature_tmo"

    invoke-static {v1}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 113
    :cond_5
    iget-object v1, p0, Lcom/android/incallui/service/EcidClient$EcidLookupQueryHandler;->this$0:Lcom/android/incallui/service/EcidClient;

    iget-object v1, v1, Lcom/android/incallui/service/EcidClient;->m_urlPicture:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/android/incallui/service/EcidClient;->getImageAttOrTmo(Landroid/content/Context;Ljava/lang/String;)V

    .line 119
    :goto_3
    iget-object v1, p0, Lcom/android/incallui/service/EcidClient$EcidLookupQueryHandler;->this$0:Lcom/android/incallui/service/EcidClient;

    # getter for: Lcom/android/incallui/service/EcidClient;->m_listener:Lcom/android/incallui/service/EcidClient$Listener;
    invoke-static {v1}, Lcom/android/incallui/service/EcidClient;->access$100(Lcom/android/incallui/service/EcidClient;)Lcom/android/incallui/service/EcidClient$Listener;

    move-result-object v1

    if-eqz v1, :cond_6

    .line 121
    iget-object v1, p0, Lcom/android/incallui/service/EcidClient$EcidLookupQueryHandler;->this$0:Lcom/android/incallui/service/EcidClient;

    # getter for: Lcom/android/incallui/service/EcidClient;->m_listener:Lcom/android/incallui/service/EcidClient$Listener;
    invoke-static {v1}, Lcom/android/incallui/service/EcidClient;->access$100(Lcom/android/incallui/service/EcidClient;)Lcom/android/incallui/service/EcidClient$Listener;

    move-result-object v1

    iget-object v2, p0, Lcom/android/incallui/service/EcidClient$EcidLookupQueryHandler;->this$0:Lcom/android/incallui/service/EcidClient;

    # getter for: Lcom/android/incallui/service/EcidClient;->m_call:Lcom/android/incallui/Call;
    invoke-static {v2}, Lcom/android/incallui/service/EcidClient;->access$200(Lcom/android/incallui/service/EcidClient;)Lcom/android/incallui/Call;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/android/incallui/service/EcidClient$Listener;->onUpdate(Lcom/android/incallui/Call;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 132
    :cond_6
    :goto_4
    if-eqz p3, :cond_1

    .line 133
    invoke-interface {p3}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    .line 95
    :cond_7
    iget-object v1, p0, Lcom/android/incallui/service/EcidClient$EcidLookupQueryHandler;->this$0:Lcom/android/incallui/service/EcidClient;

    const-string v2, "cid_pLogo"

    invoke-interface {p3, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-direct {p0, p3, v2}, Lcom/android/incallui/service/EcidClient$EcidLookupQueryHandler;->getString(Landroid/database/Cursor;I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/android/incallui/service/EcidClient;->m_urlPicture:Ljava/lang/String;

    goto/16 :goto_1

    .line 108
    :cond_8
    const-string v1, "Phone-ECID"

    const-string v2, "The ECID content provider did not return a name"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 115
    :cond_9
    :try_start_1
    iget-object v1, p0, Lcom/android/incallui/service/EcidClient$EcidLookupQueryHandler;->this$0:Lcom/android/incallui/service/EcidClient;

    iget-object v2, p0, Lcom/android/incallui/service/EcidClient$EcidLookupQueryHandler;->this$0:Lcom/android/incallui/service/EcidClient;

    iget-object v3, p0, Lcom/android/incallui/service/EcidClient$EcidLookupQueryHandler;->this$0:Lcom/android/incallui/service/EcidClient;

    iget-object v3, v3, Lcom/android/incallui/service/EcidClient;->m_urlPicture:Ljava/lang/String;

    invoke-virtual {v2, v0, v3}, Lcom/android/incallui/service/EcidClient;->getImage(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v2

    iput-object v2, v1, Lcom/android/incallui/service/EcidClient;->m_picture:Landroid/graphics/Bitmap;

    .line 116
    iget-object v1, p0, Lcom/android/incallui/service/EcidClient$EcidLookupQueryHandler;->this$0:Lcom/android/incallui/service/EcidClient;

    const/4 v2, 0x0

    iput-object v2, v1, Lcom/android/incallui/service/EcidClient;->m_cachedPictureDrawable:Landroid/graphics/drawable/Drawable;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_3

    .line 124
    :catch_0
    move-exception v1

    goto :goto_4
.end method
