.class Lcom/android/incallui/service/EcidClient$EcidLookupQueryHandler;
.super Landroid/content/AsyncQueryHandler;


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

    iput-object p1, p0, Lcom/android/incallui/service/EcidClient$EcidLookupQueryHandler;->this$0:Lcom/android/incallui/service/EcidClient;

    invoke-direct {p0, p2}, Landroid/content/AsyncQueryHandler;-><init>(Landroid/content/ContentResolver;)V

    return-void
.end method

.method private getFlag(Landroid/database/Cursor;I)Z
    .locals 2

    const/4 v0, 0x0

    invoke-interface {p1, p2}, Landroid/database/Cursor;->isNull(I)Z

    move-result v1

    if-nez v1, :cond_1

    :try_start_0
    invoke-interface {p1, p2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0

    :catch_0
    move-exception v1

    move v1, v0

    goto :goto_0

    :cond_1
    move v1, v0

    goto :goto_0
.end method

.method private getString(Landroid/database/Cursor;I)Ljava/lang/String;
    .locals 2

    const/4 v0, 0x0

    invoke-interface {p1, p2}, Landroid/database/Cursor;->isNull(I)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-interface {p1, p2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    :cond_0
    return-object v0
.end method


# virtual methods
.method protected onQueryComplete(ILjava/lang/Object;Landroid/database/Cursor;)V
    .locals 4

    const/4 v0, 0x0

    const-string v1, "Phone-ECID"

    const-string v2, "ECID content provider returned results"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/incallui/service/EcidClient$EcidLookupQueryHandler;->this$0:Lcom/android/incallui/service/EcidClient;

    invoke-static {v1}, Lcom/android/incallui/service/EcidClient;->access$000(Lcom/android/incallui/service/EcidClient;)Ljava/lang/ref/WeakReference;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/android/incallui/service/EcidClient$EcidLookupQueryHandler;->this$0:Lcom/android/incallui/service/EcidClient;

    invoke-static {v0}, Lcom/android/incallui/service/EcidClient;->access$000(Lcom/android/incallui/service/EcidClient;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    :cond_0
    if-nez v0, :cond_2

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-object v1, p0, Lcom/android/incallui/service/EcidClient$EcidLookupQueryHandler;->this$0:Lcom/android/incallui/service/EcidClient;

    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/android/incallui/service/EcidClient;->m_lookupCompleted:Z

    if-eqz p3, :cond_6

    invoke-interface {p3}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/android/incallui/service/EcidClient$EcidLookupQueryHandler;->this$0:Lcom/android/incallui/service/EcidClient;

    const-string v2, "cid_pNumber"

    invoke-interface {p3, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-direct {p0, p3, v2}, Lcom/android/incallui/service/EcidClient$EcidLookupQueryHandler;->getString(Landroid/database/Cursor;I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/android/incallui/service/EcidClient;->m_callerId:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/incallui/service/EcidClient$EcidLookupQueryHandler;->this$0:Lcom/android/incallui/service/EcidClient;

    const-string v2, "cid_pName"

    invoke-interface {p3, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-direct {p0, p3, v2}, Lcom/android/incallui/service/EcidClient$EcidLookupQueryHandler;->getString(Landroid/database/Cursor;I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/android/incallui/service/EcidClient;->m_cname:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/incallui/service/EcidClient$EcidLookupQueryHandler;->this$0:Lcom/android/incallui/service/EcidClient;

    const-string v2, "cid_pCompany"

    invoke-interface {p3, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-direct {p0, p3, v2}, Lcom/android/incallui/service/EcidClient$EcidLookupQueryHandler;->getString(Landroid/database/Cursor;I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/android/incallui/service/EcidClient;->m_bizName:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/incallui/service/EcidClient$EcidLookupQueryHandler;->this$0:Lcom/android/incallui/service/EcidClient;

    const-string v2, "cid_pFirstName"

    invoke-interface {p3, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-direct {p0, p3, v2}, Lcom/android/incallui/service/EcidClient$EcidLookupQueryHandler;->getString(Landroid/database/Cursor;I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/android/incallui/service/EcidClient;->m_firstName:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/incallui/service/EcidClient$EcidLookupQueryHandler;->this$0:Lcom/android/incallui/service/EcidClient;

    const-string v2, "cid_pLastName"

    invoke-interface {p3, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-direct {p0, p3, v2}, Lcom/android/incallui/service/EcidClient$EcidLookupQueryHandler;->getString(Landroid/database/Cursor;I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/android/incallui/service/EcidClient;->m_lastName:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/incallui/service/EcidClient$EcidLookupQueryHandler;->this$0:Lcom/android/incallui/service/EcidClient;

    const-string v2, "cid_pCityName"

    invoke-interface {p3, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-direct {p0, p3, v2}, Lcom/android/incallui/service/EcidClient$EcidLookupQueryHandler;->getString(Landroid/database/Cursor;I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/android/incallui/service/EcidClient;->m_cityName:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/incallui/service/EcidClient$EcidLookupQueryHandler;->this$0:Lcom/android/incallui/service/EcidClient;

    const-string v2, "cid_pStateName"

    invoke-interface {p3, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-direct {p0, p3, v2}, Lcom/android/incallui/service/EcidClient$EcidLookupQueryHandler;->getString(Landroid/database/Cursor;I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/android/incallui/service/EcidClient;->m_stateName:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/incallui/service/EcidClient$EcidLookupQueryHandler;->this$0:Lcom/android/incallui/service/EcidClient;

    const-string v2, "cid_pStateAbbr"

    invoke-interface {p3, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-direct {p0, p3, v2}, Lcom/android/incallui/service/EcidClient$EcidLookupQueryHandler;->getString(Landroid/database/Cursor;I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/android/incallui/service/EcidClient;->m_stateAbbr:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/incallui/service/EcidClient$EcidLookupQueryHandler;->this$0:Lcom/android/incallui/service/EcidClient;

    const-string v2, "cid_pCountryName"

    invoke-interface {p3, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-direct {p0, p3, v2}, Lcom/android/incallui/service/EcidClient$EcidLookupQueryHandler;->getString(Landroid/database/Cursor;I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/android/incallui/service/EcidClient;->m_countryName:Ljava/lang/String;

    const-string v1, "feature_vzw"

    invoke-static {v1}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "feature_att"

    invoke-static {v1}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7

    :cond_3
    iget-object v1, p0, Lcom/android/incallui/service/EcidClient$EcidLookupQueryHandler;->this$0:Lcom/android/incallui/service/EcidClient;

    const-string v2, "cid_pImage"

    invoke-interface {p3, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-direct {p0, p3, v2}, Lcom/android/incallui/service/EcidClient$EcidLookupQueryHandler;->getString(Landroid/database/Cursor;I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/android/incallui/service/EcidClient;->m_urlPicture:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/incallui/service/EcidClient$EcidLookupQueryHandler;->this$0:Lcom/android/incallui/service/EcidClient;

    iget-object v1, v1, Lcom/android/incallui/service/EcidClient;->m_urlPicture:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_4

    const-string v1, "Phone-ECID"

    const-string v2, "VZW Picture ME url is null"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    :goto_1
    iget-object v1, p0, Lcom/android/incallui/service/EcidClient$EcidLookupQueryHandler;->this$0:Lcom/android/incallui/service/EcidClient;

    const-string v2, "cid_bSameNetwork"

    invoke-interface {p3, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-direct {p0, p3, v2}, Lcom/android/incallui/service/EcidClient$EcidLookupQueryHandler;->getFlag(Landroid/database/Cursor;I)Z

    move-result v2

    iput-boolean v2, v1, Lcom/android/incallui/service/EcidClient;->m_bSameNetwork:Z

    iget-object v1, p0, Lcom/android/incallui/service/EcidClient$EcidLookupQueryHandler;->this$0:Lcom/android/incallui/service/EcidClient;

    const-string v2, "cid_bFriends"

    invoke-interface {p3, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-direct {p0, p3, v2}, Lcom/android/incallui/service/EcidClient$EcidLookupQueryHandler;->getFlag(Landroid/database/Cursor;I)Z

    move-result v2

    iput-boolean v2, v1, Lcom/android/incallui/service/EcidClient;->m_bFriends:Z

    iget-object v1, p0, Lcom/android/incallui/service/EcidClient$EcidLookupQueryHandler;->this$0:Lcom/android/incallui/service/EcidClient;

    const-string v2, "cid_bPreferCidImage"

    invoke-interface {p3, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-direct {p0, p3, v2}, Lcom/android/incallui/service/EcidClient$EcidLookupQueryHandler;->getFlag(Landroid/database/Cursor;I)Z

    move-result v2

    iput-boolean v2, v1, Lcom/android/incallui/service/EcidClient;->m_bPreferCidImage:Z

    iget-object v1, p0, Lcom/android/incallui/service/EcidClient$EcidLookupQueryHandler;->this$0:Lcom/android/incallui/service/EcidClient;

    const-string v2, "cid_pDisplayName"

    invoke-interface {p3, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-direct {p0, p3, v2}, Lcom/android/incallui/service/EcidClient$EcidLookupQueryHandler;->getString(Landroid/database/Cursor;I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/android/incallui/service/EcidClient;->m_displayName:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/incallui/service/EcidClient$EcidLookupQueryHandler;->this$0:Lcom/android/incallui/service/EcidClient;

    iget-object v1, v1, Lcom/android/incallui/service/EcidClient;->m_displayName:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_8

    const-string v1, "Phone-ECID"

    const-string v2, "The ECID content provider returned a name"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

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

    :cond_5
    iget-object v1, p0, Lcom/android/incallui/service/EcidClient$EcidLookupQueryHandler;->this$0:Lcom/android/incallui/service/EcidClient;

    iget-object v1, v1, Lcom/android/incallui/service/EcidClient;->m_urlPicture:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/android/incallui/service/EcidClient;->getImageAttOrTmo(Landroid/content/Context;Ljava/lang/String;)V

    :goto_3
    iget-object v0, p0, Lcom/android/incallui/service/EcidClient$EcidLookupQueryHandler;->this$0:Lcom/android/incallui/service/EcidClient;

    invoke-static {v0}, Lcom/android/incallui/service/EcidClient;->access$100(Lcom/android/incallui/service/EcidClient;)Lcom/android/incallui/service/EcidClient$Listener;

    move-result-object v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/android/incallui/service/EcidClient$EcidLookupQueryHandler;->this$0:Lcom/android/incallui/service/EcidClient;

    invoke-static {v0}, Lcom/android/incallui/service/EcidClient;->access$100(Lcom/android/incallui/service/EcidClient;)Lcom/android/incallui/service/EcidClient$Listener;

    move-result-object v0

    iget-object v1, p0, Lcom/android/incallui/service/EcidClient$EcidLookupQueryHandler;->this$0:Lcom/android/incallui/service/EcidClient;

    invoke-static {v1}, Lcom/android/incallui/service/EcidClient;->access$200(Lcom/android/incallui/service/EcidClient;)Lcom/android/incallui/Call;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/incallui/service/EcidClient$Listener;->onUpdate(Lcom/android/incallui/Call;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_6
    :goto_4
    if-eqz p3, :cond_1

    invoke-interface {p3}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    :cond_7
    iget-object v1, p0, Lcom/android/incallui/service/EcidClient$EcidLookupQueryHandler;->this$0:Lcom/android/incallui/service/EcidClient;

    const-string v2, "cid_pLogo"

    invoke-interface {p3, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-direct {p0, p3, v2}, Lcom/android/incallui/service/EcidClient$EcidLookupQueryHandler;->getString(Landroid/database/Cursor;I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/android/incallui/service/EcidClient;->m_urlPicture:Ljava/lang/String;

    goto/16 :goto_1

    :cond_8
    const-string v1, "Phone-ECID"

    const-string v2, "The ECID content provider did not return a name"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_9
    :try_start_1
    iget-object v1, p0, Lcom/android/incallui/service/EcidClient$EcidLookupQueryHandler;->this$0:Lcom/android/incallui/service/EcidClient;

    iget-object v2, p0, Lcom/android/incallui/service/EcidClient$EcidLookupQueryHandler;->this$0:Lcom/android/incallui/service/EcidClient;

    iget-object v3, p0, Lcom/android/incallui/service/EcidClient$EcidLookupQueryHandler;->this$0:Lcom/android/incallui/service/EcidClient;

    iget-object v3, v3, Lcom/android/incallui/service/EcidClient;->m_urlPicture:Ljava/lang/String;

    invoke-virtual {v2, v0, v3}, Lcom/android/incallui/service/EcidClient;->getImage(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, v1, Lcom/android/incallui/service/EcidClient;->m_picture:Landroid/graphics/Bitmap;

    iget-object v0, p0, Lcom/android/incallui/service/EcidClient$EcidLookupQueryHandler;->this$0:Lcom/android/incallui/service/EcidClient;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/android/incallui/service/EcidClient;->m_cachedPictureDrawable:Landroid/graphics/drawable/Drawable;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_3

    :catch_0
    move-exception v0

    goto :goto_4
.end method
