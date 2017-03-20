.class public Lcom/android/incallui/service/EcidClient;
.super Ljava/lang/Object;
.source "EcidClient.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/incallui/service/EcidClient$Listener;,
        Lcom/android/incallui/service/EcidClient$EcidContentObserver;,
        Lcom/android/incallui/service/EcidClient$EcidLookupQueryHandler;
    }
.end annotation


# static fields
.field public static final CALLERID_LOOKUP_DATA_ACCESS_NOT_PERMITTED:I = 0x10

.field public static final CALLERID_LOOKUP_INCLUDING_CNAM:I = 0x8

.field public static final CALLERID_LOOKUP_INCOMING_CALL:I = 0x20

.field public static final CALLERID_LOOKUP_NETWORK_IS_OUTSIDE_NANP:I = 0x4

.field public static final CALLERID_LOOKUP_SYSTEM_PROVIDED_CID:I = 0x2

.field public static final CALLERID_LOOKUP_USER_PROVIDED_CID:I = 0x1

.field private static final DBG:Z = false

.field private static final ECID_AOSP_VERSION:Ljava/lang/String; = "1.4.4.0"

.field private static final LOOKUP_NFLAGS:I = 0x0

.field private static final LOOKUP_PCNAME:I = 0x1

.field private static final LOOKUP_URI_STRING:Ljava/lang/String; = "content://com.cequint.ecid/incalllookup"

.field private static final TAG:Ljava/lang/String; = "Phone-ECID"

.field private static ecidObserver:Lcom/android/incallui/service/EcidClient$EcidContentObserver;

.field private static mNameIDLogo:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/graphics/drawable/BitmapDrawable;",
            ">;"
        }
    .end annotation
.end field

.field private static m_IncomingCalls:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static m_contacts:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static m_lookupId:I

.field private static m_mapLookupsInProcess:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/incallui/service/EcidClient;",
            ">;"
        }
    .end annotation
.end field

.field static m_spr_mapEcidLogo:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field private static observerCr:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/content/ContentResolver;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private ecidLookupHandler:Lcom/android/incallui/service/EcidClient$EcidLookupQueryHandler;

.field public m_CallId:Ljava/lang/String;

.field public m_bFriends:Z

.field public m_bIncomingCall:Z

.field public m_bPreferCidImage:Z

.field public m_bSameNetwork:Z

.field public m_bizName:Ljava/lang/String;

.field public m_cachedPictureDrawable:Landroid/graphics/drawable/Drawable;

.field private m_call:Lcom/android/incallui/Call;

.field public m_callerId:Ljava/lang/String;

.field public m_cityName:Ljava/lang/String;

.field public m_cname:Ljava/lang/String;

.field public m_cnapDelivered:Z

.field public m_countryName:Ljava/lang/String;

.field public m_displayName:Ljava/lang/String;

.field public m_ecidPictureUsed:Z

.field public m_firstName:Ljava/lang/String;

.field public m_isCityIdCurrentlyDisplayed:Z

.field public m_isDisplayOneLine:Z

.field public m_lastName:Ljava/lang/String;

.field private m_listener:Lcom/android/incallui/service/EcidClient$Listener;

.field public m_lookupCompleted:Z

.field public m_nFlags:I

.field private m_ownerCtx:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field public m_phoneNumber:Ljava/lang/String;

.field public m_picture:Landroid/graphics/Bitmap;

.field public m_stateAbbr:Ljava/lang/String;

.field public m_stateName:Ljava/lang/String;

.field public m_tvOneLineDisplay:Landroid/widget/TextView;

.field public m_urlLogo:Ljava/lang/String;

.field public m_urlPicture:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 232
    const/4 v0, 0x0

    sput v0, Lcom/android/incallui/service/EcidClient;->m_lookupId:I

    .line 233
    const/4 v0, 0x0

    sput-object v0, Lcom/android/incallui/service/EcidClient;->ecidObserver:Lcom/android/incallui/service/EcidClient$EcidContentObserver;

    .line 271
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/incallui/service/EcidClient;->m_mapLookupsInProcess:Ljava/util/HashMap;

    .line 274
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/incallui/service/EcidClient;->m_spr_mapEcidLogo:Ljava/util/HashMap;

    .line 276
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/android/incallui/service/EcidClient;->m_IncomingCalls:Ljava/util/HashSet;

    .line 277
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/android/incallui/service/EcidClient;->m_contacts:Ljava/util/HashSet;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 243
    iput-boolean v0, p0, Lcom/android/incallui/service/EcidClient;->m_ecidPictureUsed:Z

    .line 260
    iput-object v1, p0, Lcom/android/incallui/service/EcidClient;->m_cachedPictureDrawable:Landroid/graphics/drawable/Drawable;

    .line 262
    iput-boolean v0, p0, Lcom/android/incallui/service/EcidClient;->m_isDisplayOneLine:Z

    .line 263
    iput-boolean v0, p0, Lcom/android/incallui/service/EcidClient;->m_isCityIdCurrentlyDisplayed:Z

    .line 264
    iput-object v1, p0, Lcom/android/incallui/service/EcidClient;->m_tvOneLineDisplay:Landroid/widget/TextView;

    .line 265
    iput-boolean v0, p0, Lcom/android/incallui/service/EcidClient;->m_bIncomingCall:Z

    .line 266
    iput-boolean v0, p0, Lcom/android/incallui/service/EcidClient;->m_cnapDelivered:Z

    .line 267
    iput-boolean v0, p0, Lcom/android/incallui/service/EcidClient;->m_lookupCompleted:Z

    return-void
.end method

.method static synthetic access$000(Lcom/android/incallui/service/EcidClient;)Ljava/lang/ref/WeakReference;
    .locals 1
    .param p0, "x0"    # Lcom/android/incallui/service/EcidClient;

    .prologue
    .line 43
    iget-object v0, p0, Lcom/android/incallui/service/EcidClient;->m_ownerCtx:Ljava/lang/ref/WeakReference;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/incallui/service/EcidClient;)Lcom/android/incallui/service/EcidClient$Listener;
    .locals 1
    .param p0, "x0"    # Lcom/android/incallui/service/EcidClient;

    .prologue
    .line 43
    iget-object v0, p0, Lcom/android/incallui/service/EcidClient;->m_listener:Lcom/android/incallui/service/EcidClient$Listener;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/incallui/service/EcidClient;)Lcom/android/incallui/Call;
    .locals 1
    .param p0, "x0"    # Lcom/android/incallui/service/EcidClient;

    .prologue
    .line 43
    iget-object v0, p0, Lcom/android/incallui/service/EcidClient;->m_call:Lcom/android/incallui/Call;

    return-object v0
.end method

.method static synthetic access$300()Ljava/util/HashMap;
    .locals 1

    .prologue
    .line 43
    sget-object v0, Lcom/android/incallui/service/EcidClient;->m_mapLookupsInProcess:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$400(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Ljava/lang/String;

    .prologue
    .line 43
    invoke-static {p0}, Lcom/android/incallui/service/EcidClient;->normalizeNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$504()I
    .locals 1

    .prologue
    .line 43
    sget v0, Lcom/android/incallui/service/EcidClient;->m_lookupId:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/android/incallui/service/EcidClient;->m_lookupId:I

    return v0
.end method

.method static synthetic access$600(Lcom/android/incallui/service/EcidClient;ILjava/lang/String;Ljava/lang/String;ILandroid/content/Context;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/incallui/service/EcidClient;
    .param p1, "x1"    # I
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # Ljava/lang/String;
    .param p4, "x4"    # I
    .param p5, "x5"    # Landroid/content/Context;

    .prologue
    .line 43
    invoke-direct/range {p0 .. p5}, Lcom/android/incallui/service/EcidClient;->executeLookupQuery(ILjava/lang/String;Ljava/lang/String;ILandroid/content/Context;)V

    return-void
.end method

.method public static addContact(Ljava/lang/String;)V
    .locals 3
    .param p0, "callId"    # Ljava/lang/String;

    .prologue
    .line 292
    const-string v0, "Phone-ECID"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Contact: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 293
    sget-object v0, Lcom/android/incallui/service/EcidClient;->m_contacts:Ljava/util/HashSet;

    invoke-virtual {v0, p0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 294
    return-void
.end method

.method public static clearAllCalls()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 305
    const-string v1, "Phone-ECID"

    const-string v2, "clearAllCalls()..."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 306
    sget-object v1, Lcom/android/incallui/service/EcidClient;->m_IncomingCalls:Ljava/util/HashSet;

    invoke-virtual {v1}, Ljava/util/HashSet;->clear()V

    .line 307
    sget-object v1, Lcom/android/incallui/service/EcidClient;->m_contacts:Ljava/util/HashSet;

    invoke-virtual {v1}, Ljava/util/HashSet;->clear()V

    .line 309
    const-string v1, "feature_att"

    invoke-static {v1}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "feature_tmo"

    invoke-static {v1}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 310
    :cond_0
    const-class v2, Lcom/android/incallui/service/EcidClient;

    monitor-enter v2

    .line 311
    :try_start_0
    sget-object v1, Lcom/android/incallui/service/EcidClient;->mNameIDLogo:Ljava/lang/ref/WeakReference;

    if-eqz v1, :cond_1

    sget-object v1, Lcom/android/incallui/service/EcidClient;->mNameIDLogo:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 312
    sget-object v1, Lcom/android/incallui/service/EcidClient;->mNameIDLogo:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->clear()V

    .line 313
    const/4 v1, 0x0

    sput-object v1, Lcom/android/incallui/service/EcidClient;->mNameIDLogo:Ljava/lang/ref/WeakReference;

    .line 315
    :cond_1
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 318
    :cond_2
    sget-object v1, Lcom/android/incallui/service/EcidClient;->m_mapLookupsInProcess:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v0, "ecidRec":Lcom/android/incallui/service/EcidClient;
    :cond_3
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "ecidRec":Lcom/android/incallui/service/EcidClient;
    check-cast v0, Lcom/android/incallui/service/EcidClient;

    .line 319
    .restart local v0    # "ecidRec":Lcom/android/incallui/service/EcidClient;
    if-eqz v0, :cond_3

    .line 320
    iput-object v3, v0, Lcom/android/incallui/service/EcidClient;->m_listener:Lcom/android/incallui/service/EcidClient$Listener;

    .line 321
    iput-object v3, v0, Lcom/android/incallui/service/EcidClient;->m_ownerCtx:Ljava/lang/ref/WeakReference;

    .line 323
    const-string v2, "feature_att"

    invoke-static {v2}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_4

    const-string v2, "feature_tmo"

    invoke-static {v2}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 324
    :cond_4
    iget-object v2, v0, Lcom/android/incallui/service/EcidClient;->m_picture:Landroid/graphics/Bitmap;

    if-eqz v2, :cond_5

    .line 325
    iput-object v3, v0, Lcom/android/incallui/service/EcidClient;->m_picture:Landroid/graphics/Bitmap;

    .line 327
    :cond_5
    iget-object v2, v0, Lcom/android/incallui/service/EcidClient;->m_cachedPictureDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_3

    .line 328
    iget-object v2, v0, Lcom/android/incallui/service/EcidClient;->m_cachedPictureDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 329
    iput-object v3, v0, Lcom/android/incallui/service/EcidClient;->m_cachedPictureDrawable:Landroid/graphics/drawable/Drawable;

    goto :goto_0

    .line 315
    .end local v0    # "ecidRec":Lcom/android/incallui/service/EcidClient;
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    .line 334
    .restart local v0    # "ecidRec":Lcom/android/incallui/service/EcidClient;
    :cond_6
    sget-object v1, Lcom/android/incallui/service/EcidClient;->m_spr_mapEcidLogo:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    .line 335
    sget-object v1, Lcom/android/incallui/service/EcidClient;->m_mapLookupsInProcess:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    .line 336
    invoke-static {}, Lcom/android/incallui/service/EcidClient;->unRegisterObserverIfNeeded()V

    .line 337
    const-string v1, "Phone-ECID"

    const-string v2, "clearAllCalls()... done"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 338
    return-void
.end method

.method private static dbgDumpIncoming()V
    .locals 5

    .prologue
    .line 788
    sget-object v1, Lcom/android/incallui/service/EcidClient;->m_IncomingCalls:Ljava/util/HashSet;

    invoke-virtual {v1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v0, "id":Ljava/lang/String;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "id":Ljava/lang/String;
    check-cast v0, Ljava/lang/String;

    .line 789
    .restart local v0    # "id":Ljava/lang/String;
    const-string v2, "Phone-ECID"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Incoming call: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 791
    :cond_0
    return-void
.end method

.method private static dbgDumpPending()V
    .locals 5

    .prologue
    .line 779
    sget-object v3, Lcom/android/incallui/service/EcidClient;->m_mapLookupsInProcess:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    .line 780
    .local v1, "keys":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 781
    .local v0, "key":Ljava/lang/String;
    sget-object v4, Lcom/android/incallui/service/EcidClient;->m_mapLookupsInProcess:Ljava/util/HashMap;

    invoke-virtual {v4, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/incallui/service/EcidClient;

    .line 783
    .local v2, "thisObj":Lcom/android/incallui/service/EcidClient;
    invoke-direct {v2}, Lcom/android/incallui/service/EcidClient;->dbgLogData()V

    goto :goto_0

    .line 785
    .end local v0    # "key":Ljava/lang/String;
    .end local v2    # "thisObj":Lcom/android/incallui/service/EcidClient;
    :cond_0
    return-void
.end method

.method private dbgLogData()V
    .locals 0

    .prologue
    .line 776
    return-void
.end method

.method private static decodeBitmapFromUrl(Landroid/content/ContentResolver;Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 5
    .param p0, "cr"    # Landroid/content/ContentResolver;
    .param p1, "strImageUrl"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 609
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {p0, v4}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v2

    .line 610
    .local v2, "is":Ljava/io/InputStream;
    const/4 v1, 0x2

    .line 612
    .local v1, "inSampleSize":I
    new-instance v3, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v3}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 613
    .local v3, "options":Landroid/graphics/BitmapFactory$Options;
    iput v1, v3, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 615
    const/4 v4, 0x0

    invoke-static {v2, v4, v3}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 616
    .local v0, "image":Landroid/graphics/Bitmap;
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    .line 618
    return-object v0
.end method

.method private executeLookupQuery(ILjava/lang/String;Ljava/lang/String;ILandroid/content/Context;)V
    .locals 8
    .param p1, "id"    # I
    .param p2, "phoneNumber"    # Ljava/lang/String;
    .param p3, "pCnam"    # Ljava/lang/String;
    .param p4, "nFlags"    # I
    .param p5, "ctx"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x0

    .line 439
    iget-object v0, p0, Lcom/android/incallui/service/EcidClient;->ecidLookupHandler:Lcom/android/incallui/service/EcidClient$EcidLookupQueryHandler;

    if-nez v0, :cond_0

    .line 440
    new-instance v0, Lcom/android/incallui/service/EcidClient$EcidLookupQueryHandler;

    invoke-virtual {p5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/incallui/service/EcidClient$EcidLookupQueryHandler;-><init>(Lcom/android/incallui/service/EcidClient;Landroid/content/ContentResolver;)V

    iput-object v0, p0, Lcom/android/incallui/service/EcidClient;->ecidLookupHandler:Lcom/android/incallui/service/EcidClient$EcidLookupQueryHandler;

    .line 443
    :cond_0
    const/4 v0, 0x2

    new-array v6, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    aput-object p3, v6, v0

    const/4 v0, 0x1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v6, v0

    .line 444
    .local v6, "args":[Ljava/lang/String;
    iget-object v0, p0, Lcom/android/incallui/service/EcidClient;->ecidLookupHandler:Lcom/android/incallui/service/EcidClient$EcidLookupQueryHandler;

    const-string v1, "content://com.cequint.ecid/incalllookup"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    move v1, p1

    move-object v4, v2

    move-object v5, p2

    move-object v7, v2

    invoke-virtual/range {v0 .. v7}, Lcom/android/incallui/service/EcidClient$EcidLookupQueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 445
    return-void
.end method

.method public static getCityId(Lcom/android/incallui/Call;)Ljava/lang/String;
    .locals 3
    .param p0, "call"    # Lcom/android/incallui/Call;

    .prologue
    const/4 v1, 0x0

    .line 686
    if-nez p0, :cond_1

    .line 692
    :cond_0
    :goto_0
    return-object v1

    .line 688
    :cond_1
    invoke-virtual {p0}, Lcom/android/incallui/Call;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/incallui/service/EcidClient;->getClient(Ljava/lang/String;)Lcom/android/incallui/service/EcidClient;

    move-result-object v0

    .line 689
    .local v0, "ecidRec":Lcom/android/incallui/service/EcidClient;
    if-eqz v0, :cond_0

    .line 690
    invoke-direct {v0}, Lcom/android/incallui/service/EcidClient;->getCityStateString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method private getCityStateString()Ljava/lang/String;
    .locals 6

    .prologue
    .line 696
    const/4 v0, 0x0

    .line 697
    .local v0, "cityId":Ljava/lang/String;
    const/16 v2, 0x14

    .line 698
    .local v2, "maxLength":I
    const-string v3, "feature_vzw"

    invoke-static {v3}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 699
    const/16 v2, 0x12

    .line 701
    :cond_0
    iget-object v3, p0, Lcom/android/incallui/service/EcidClient;->m_cityName:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_3

    iget-object v3, p0, Lcom/android/incallui/service/EcidClient;->m_stateAbbr:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 702
    iget-object v1, p0, Lcom/android/incallui/service/EcidClient;->m_cityName:Ljava/lang/String;

    .line 703
    .local v1, "cityName":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    if-lt v3, v2, :cond_1

    .line 704
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v4, 0x0

    add-int/lit8 v5, v2, -0x3

    invoke-virtual {v1, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "..."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 706
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/incallui/service/EcidClient;->m_stateAbbr:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 716
    .end local v1    # "cityName":Ljava/lang/String;
    :cond_2
    :goto_0
    return-object v0

    .line 708
    :cond_3
    iget-object v3, p0, Lcom/android/incallui/service/EcidClient;->m_stateName:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 709
    iget-object v0, p0, Lcom/android/incallui/service/EcidClient;->m_stateName:Ljava/lang/String;

    goto :goto_0

    .line 711
    :cond_4
    iget-object v3, p0, Lcom/android/incallui/service/EcidClient;->m_countryName:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 712
    iget-object v0, p0, Lcom/android/incallui/service/EcidClient;->m_countryName:Ljava/lang/String;

    goto :goto_0
.end method

.method private static getClient(Ljava/lang/String;)Lcom/android/incallui/service/EcidClient;
    .locals 1
    .param p0, "id"    # Ljava/lang/String;

    .prologue
    .line 301
    sget-object v0, Lcom/android/incallui/service/EcidClient;->m_mapLookupsInProcess:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/service/EcidClient;

    return-object v0
.end method

.method public static getEcidLogoSpr(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 2
    .param p0, "phonenumber"    # Ljava/lang/String;

    .prologue
    .line 731
    sget-object v0, Lcom/android/incallui/service/EcidClient;->m_spr_mapEcidLogo:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 733
    sget-object v0, Lcom/android/incallui/service/EcidClient;->m_spr_mapEcidLogo:Ljava/util/HashMap;

    invoke-static {p0}, Lcom/android/incallui/service/EcidClient;->normalizeNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    .line 735
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static declared-synchronized getImageAttOrTmo(Landroid/content/Context;Ljava/lang/String;)V
    .locals 7
    .param p0, "ctx"    # Landroid/content/Context;
    .param p1, "strImageUrl"    # Ljava/lang/String;

    .prologue
    .line 564
    const-class v4, Lcom/android/incallui/service/EcidClient;

    monitor-enter v4

    :try_start_0
    sget-object v3, Lcom/android/incallui/service/EcidClient;->mNameIDLogo:Ljava/lang/ref/WeakReference;

    if-eqz v3, :cond_1

    sget-object v3, Lcom/android/incallui/service/EcidClient;->mNameIDLogo:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v3

    if-eqz v3, :cond_1

    .line 584
    :cond_0
    :goto_0
    monitor-exit v4

    return-void

    .line 569
    :cond_1
    :try_start_1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 570
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 571
    .local v0, "cr":Landroid/content/ContentResolver;
    invoke-static {v0, p1}, Lcom/android/incallui/service/EcidClient;->decodeBitmapFromUrl(Landroid/content/ContentResolver;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 572
    .local v2, "ecidLogo":Landroid/graphics/Bitmap;
    invoke-static {p0, v2}, Lcom/android/incallui/service/EcidClient;->getTranslucentEcidLogo(Landroid/content/Context;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 573
    if-eqz v2, :cond_0

    .line 574
    new-instance v3, Ljava/lang/ref/WeakReference;

    new-instance v5, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-direct {v5, v6, v2}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    invoke-direct {v3, v5}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    sput-object v3, Lcom/android/incallui/service/EcidClient;->mNameIDLogo:Ljava/lang/ref/WeakReference;
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 577
    .end local v0    # "cr":Landroid/content/ContentResolver;
    .end local v2    # "ecidLogo":Landroid/graphics/Bitmap;
    :catch_0
    move-exception v1

    .line 579
    .local v1, "e":Ljava/io/FileNotFoundException;
    :try_start_2
    const-string v3, "Phone-ECID"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getImageAttOrTmo: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 564
    .end local v1    # "e":Ljava/io/FileNotFoundException;
    :catchall_0
    move-exception v3

    monitor-exit v4

    throw v3

    .line 580
    :catch_1
    move-exception v1

    .line 582
    .local v1, "e":Ljava/io/IOException;
    :try_start_3
    const-string v3, "Phone-ECID"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getImageAttOrTmo: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0
.end method

.method private static getLogoSpr(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p0, "ctx"    # Landroid/content/Context;
    .param p1, "phoneNumber"    # Ljava/lang/String;
    .param p2, "strImageUrl"    # Ljava/lang/String;

    .prologue
    .line 741
    :try_start_0
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 742
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 743
    .local v0, "cr":Landroid/content/ContentResolver;
    invoke-static {v0, p2}, Lcom/android/incallui/service/EcidClient;->decodeBitmapFromUrl(Landroid/content/ContentResolver;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 744
    .local v2, "ecidLogo":Landroid/graphics/Bitmap;
    if-eqz v2, :cond_0

    .line 745
    sget-object v3, Lcom/android/incallui/service/EcidClient;->m_spr_mapEcidLogo:Ljava/util/HashMap;

    invoke-virtual {v3, p1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 755
    .end local v0    # "cr":Landroid/content/ContentResolver;
    .end local v2    # "ecidLogo":Landroid/graphics/Bitmap;
    :cond_0
    :goto_0
    return-void

    .line 748
    :catch_0
    move-exception v1

    .line 750
    .local v1, "e":Ljava/io/FileNotFoundException;
    const-string v3, "Phone-ECID"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getLogoSpr: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 751
    .end local v1    # "e":Ljava/io/FileNotFoundException;
    :catch_1
    move-exception v1

    .line 753
    .local v1, "e":Ljava/io/IOException;
    const-string v3, "Phone-ECID"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getLogoSpr: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private static getTranslucentEcidLogo(Landroid/content/Context;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 10
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "ecidImage"    # Landroid/graphics/Bitmap;

    .prologue
    const/4 v9, 0x0

    .line 622
    const/4 v4, 0x0

    .line 623
    .local v4, "translucentImage":Landroid/graphics/Bitmap;
    if-eqz p1, :cond_1

    .line 624
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 625
    .local v2, "resource":Landroid/content/res/Resources;
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v8

    invoke-static {v6, v7, v8}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 626
    const v3, 0x7f0200c6

    .line 627
    .local v3, "translucentDrawable":I
    const-string v6, "feature_spr"

    invoke-static {v6}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 628
    const v3, 0x7f0200c7

    .line 630
    :cond_0
    invoke-static {v2, v3}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v5

    .line 631
    .local v5, "transparentLayer":Landroid/graphics/Bitmap;
    const/4 v6, 0x2

    new-array v1, v6, [Landroid/graphics/drawable/Drawable;

    .line 632
    .local v1, "imgLayers":[Landroid/graphics/drawable/Drawable;
    new-instance v6, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v6, v2, p1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    aput-object v6, v1, v9

    .line 633
    const/4 v6, 0x1

    new-instance v7, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v7, v2, v5}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    aput-object v7, v1, v6

    .line 634
    new-instance v0, Landroid/graphics/drawable/LayerDrawable;

    invoke-direct {v0, v1}, Landroid/graphics/drawable/LayerDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    .line 635
    .local v0, "ecidLayerDrawbable":Landroid/graphics/drawable/LayerDrawable;
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    invoke-virtual {v0, v9, v9, v6, v7}, Landroid/graphics/drawable/LayerDrawable;->setBounds(IIII)V

    .line 636
    new-instance v6, Landroid/graphics/Canvas;

    invoke-direct {v6, v4}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {v0, v6}, Landroid/graphics/drawable/LayerDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 638
    .end local v0    # "ecidLayerDrawbable":Landroid/graphics/drawable/LayerDrawable;
    .end local v1    # "imgLayers":[Landroid/graphics/drawable/Drawable;
    .end local v2    # "resource":Landroid/content/res/Resources;
    .end local v3    # "translucentDrawable":I
    .end local v5    # "transparentLayer":Landroid/graphics/Bitmap;
    :cond_1
    return-object v4
.end method

.method public static hasCityId(Lcom/android/incallui/Call;)Z
    .locals 3
    .param p0, "call"    # Lcom/android/incallui/Call;

    .prologue
    const/4 v1, 0x0

    .line 668
    if-nez p0, :cond_1

    .line 674
    :cond_0
    :goto_0
    return v1

    .line 670
    :cond_1
    invoke-virtual {p0}, Lcom/android/incallui/Call;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/incallui/service/EcidClient;->getClient(Ljava/lang/String;)Lcom/android/incallui/service/EcidClient;

    move-result-object v0

    .line 671
    .local v0, "ecidRec":Lcom/android/incallui/service/EcidClient;
    if-eqz v0, :cond_0

    .line 672
    invoke-direct {v0}, Lcom/android/incallui/service/EcidClient;->hasCityOrState()Z

    move-result v1

    goto :goto_0
.end method

.method private hasCityOrState()Z
    .locals 1

    .prologue
    .line 678
    iget-object v0, p0, Lcom/android/incallui/service/EcidClient;->m_cityName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/service/EcidClient;->m_stateName:Ljava/lang/String;

    .line 679
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/service/EcidClient;->m_stateAbbr:Ljava/lang/String;

    .line 680
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/service/EcidClient;->m_countryName:Ljava/lang/String;

    .line 681
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static isContact(Ljava/lang/String;)Z
    .locals 1
    .param p0, "callId"    # Ljava/lang/String;

    .prologue
    .line 297
    sget-object v0, Lcom/android/incallui/service/EcidClient;->m_contacts:Ljava/util/HashSet;

    invoke-virtual {v0, p0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private static isIncoming(Ljava/lang/String;)Z
    .locals 1
    .param p0, "callId"    # Ljava/lang/String;

    .prologue
    .line 288
    sget-object v0, Lcom/android/incallui/service/EcidClient;->m_IncomingCalls:Ljava/util/HashSet;

    invoke-virtual {v0, p0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static newIncoming(Lcom/android/incallui/Call;)V
    .locals 2
    .param p0, "call"    # Lcom/android/incallui/Call;

    .prologue
    .line 281
    if-eqz p0, :cond_0

    .line 283
    sget-object v0, Lcom/android/incallui/service/EcidClient;->m_IncomingCalls:Ljava/util/HashSet;

    invoke-virtual {p0}, Lcom/android/incallui/Call;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 285
    :cond_0
    return-void
.end method

.method private static normalizeNumber(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "number"    # Ljava/lang/String;

    .prologue
    .line 213
    :try_start_0
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 214
    invoke-static {p0}, Landroid/telephony/PhoneNumberUtils;->extractNetworkPortion(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 215
    invoke-static {p0}, Landroid/telephony/PhoneNumberUtils;->stripSeparators(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 217
    const-string v0, "+"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    .line 218
    :cond_0
    const-string v0, "1"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object p0

    .line 223
    :cond_1
    :goto_0
    return-object p0

    .line 220
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static onCallStateChange(Lcom/android/incallui/Call;)V
    .locals 2
    .param p0, "call"    # Lcom/android/incallui/Call;

    .prologue
    .line 449
    if-eqz p0, :cond_0

    .line 450
    invoke-virtual {p0}, Lcom/android/incallui/Call;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/incallui/service/EcidClient;->getClient(Ljava/lang/String;)Lcom/android/incallui/service/EcidClient;

    move-result-object v0

    .line 451
    .local v0, "ecidRec":Lcom/android/incallui/service/EcidClient;
    if-eqz v0, :cond_0

    iget-object v1, v0, Lcom/android/incallui/service/EcidClient;->m_listener:Lcom/android/incallui/service/EcidClient$Listener;

    if-eqz v1, :cond_0

    .line 452
    iget-object v1, v0, Lcom/android/incallui/service/EcidClient;->m_listener:Lcom/android/incallui/service/EcidClient$Listener;

    invoke-interface {v1, p0}, Lcom/android/incallui/service/EcidClient$Listener;->onUpdate(Lcom/android/incallui/Call;)V

    .line 455
    .end local v0    # "ecidRec":Lcom/android/incallui/service/EcidClient;
    :cond_0
    return-void
.end method

.method public static startEcidLookupQuery(Lcom/android/incallui/Call;Landroid/content/Context;Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;Lcom/android/incallui/service/EcidClient$Listener;)V
    .locals 9
    .param p0, "call"    # Lcom/android/incallui/Call;
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "contactInfo"    # Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;
    .param p3, "listener"    # Lcom/android/incallui/service/EcidClient$Listener;

    .prologue
    const/4 v8, 0x1

    .line 341
    const-string v1, "Phone-ECID"

    const-string v5, "ECID AOSP VERSION: 1.4.4.0"

    invoke-static {v1, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 343
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 436
    :cond_0
    :goto_0
    return-void

    .line 351
    :cond_1
    invoke-virtual {p0}, Lcom/android/incallui/Call;->getNumber()Ljava/lang/String;

    move-result-object v2

    .line 353
    .local v2, "phoneNo":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 357
    if-eqz p2, :cond_2

    iget-boolean v1, p2, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->isVoiceMail:Z

    if-nez v1, :cond_0

    .line 363
    :cond_2
    invoke-virtual {p0}, Lcom/android/incallui/Call;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/incallui/service/EcidClient;->getClient(Ljava/lang/String;)Lcom/android/incallui/service/EcidClient;

    move-result-object v0

    .line 365
    .local v0, "ecidRec":Lcom/android/incallui/service/EcidClient;
    if-eqz v0, :cond_3

    .line 368
    iget-boolean v1, v0, Lcom/android/incallui/service/EcidClient;->m_cnapDelivered:Z

    if-nez v1, :cond_5

    invoke-virtual {p0}, Lcom/android/incallui/Call;->getCnapName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_5

    .line 393
    :cond_3
    const/4 v4, 0x0

    .line 394
    .local v4, "flags":I
    invoke-virtual {p0}, Lcom/android/incallui/Call;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/incallui/service/EcidClient;->isIncoming(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 395
    const-string v1, "Phone-ECID"

    const-string v5, "-is incoming"

    invoke-static {v1, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 396
    or-int/lit8 v4, v4, 0x20

    .line 397
    or-int/lit8 v4, v4, 0x2

    .line 402
    :goto_1
    new-instance v0, Lcom/android/incallui/service/EcidClient;

    .end local v0    # "ecidRec":Lcom/android/incallui/service/EcidClient;
    invoke-direct {v0}, Lcom/android/incallui/service/EcidClient;-><init>()V

    .line 403
    .restart local v0    # "ecidRec":Lcom/android/incallui/service/EcidClient;
    iput-object v2, v0, Lcom/android/incallui/service/EcidClient;->m_phoneNumber:Ljava/lang/String;

    .line 404
    iput-object p3, v0, Lcom/android/incallui/service/EcidClient;->m_listener:Lcom/android/incallui/service/EcidClient$Listener;

    .line 405
    iput-object p0, v0, Lcom/android/incallui/service/EcidClient;->m_call:Lcom/android/incallui/Call;

    .line 406
    invoke-virtual {p0}, Lcom/android/incallui/Call;->getId()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/incallui/service/EcidClient;->m_CallId:Ljava/lang/String;

    .line 407
    iput v4, v0, Lcom/android/incallui/service/EcidClient;->m_nFlags:I

    .line 408
    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v1, v0, Lcom/android/incallui/service/EcidClient;->m_ownerCtx:Ljava/lang/ref/WeakReference;

    .line 409
    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/android/incallui/service/EcidClient;->m_cnapDelivered:Z

    .line 411
    const-string v1, "Phone-ECID"

    const-string v5, "starting new lookup query"

    invoke-static {v1, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 412
    sget-object v5, Lcom/android/incallui/service/EcidClient;->m_mapLookupsInProcess:Ljava/util/HashMap;

    monitor-enter v5

    .line 413
    :try_start_0
    sget-object v1, Lcom/android/incallui/service/EcidClient;->m_mapLookupsInProcess:Ljava/util/HashMap;

    invoke-virtual {p0}, Lcom/android/incallui/Call;->getId()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 414
    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 416
    invoke-virtual {p0}, Lcom/android/incallui/Call;->getCnapName()Ljava/lang/String;

    move-result-object v3

    .line 418
    .local v3, "cnam":Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 419
    const/4 v3, 0x0

    .line 424
    :goto_2
    sget v1, Lcom/android/incallui/service/EcidClient;->m_lookupId:I

    add-int/lit8 v1, v1, 0x1

    sput v1, Lcom/android/incallui/service/EcidClient;->m_lookupId:I

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Lcom/android/incallui/service/EcidClient;->executeLookupQuery(ILjava/lang/String;Ljava/lang/String;ILandroid/content/Context;)V

    .line 425
    const-class v5, Lcom/android/incallui/service/EcidClient;

    monitor-enter v5

    .line 426
    :try_start_1
    sget-object v1, Lcom/android/incallui/service/EcidClient;->ecidObserver:Lcom/android/incallui/service/EcidClient$EcidContentObserver;

    if-nez v1, :cond_4

    .line 429
    new-instance v1, Lcom/android/incallui/service/EcidClient$EcidContentObserver;

    invoke-direct {v1}, Lcom/android/incallui/service/EcidClient$EcidContentObserver;-><init>()V

    sput-object v1, Lcom/android/incallui/service/EcidClient;->ecidObserver:Lcom/android/incallui/service/EcidClient$EcidContentObserver;

    .line 430
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    .line 431
    .local v6, "cr":Landroid/content/ContentResolver;
    const-string v1, "content://com.cequint.ecid/incalllookup"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v7, 0x1

    sget-object v8, Lcom/android/incallui/service/EcidClient;->ecidObserver:Lcom/android/incallui/service/EcidClient$EcidContentObserver;

    invoke-virtual {v6, v1, v7, v8}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 433
    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, v6}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    sput-object v1, Lcom/android/incallui/service/EcidClient;->observerCr:Ljava/lang/ref/WeakReference;

    .line 435
    .end local v6    # "cr":Landroid/content/ContentResolver;
    :cond_4
    monitor-exit v5

    goto/16 :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    .line 377
    .end local v3    # "cnam":Ljava/lang/String;
    .end local v4    # "flags":I
    :cond_5
    iget-object v1, v0, Lcom/android/incallui/service/EcidClient;->m_ownerCtx:Ljava/lang/ref/WeakReference;

    if-eqz v1, :cond_0

    iget-object v1, v0, Lcom/android/incallui/service/EcidClient;->m_ownerCtx:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    if-eq v1, p1, :cond_0

    .line 383
    iget-boolean v1, v0, Lcom/android/incallui/service/EcidClient;->m_lookupCompleted:Z

    if-eqz v1, :cond_3

    if-eqz p3, :cond_3

    .line 384
    invoke-interface {p3, p0}, Lcom/android/incallui/service/EcidClient$Listener;->onUpdate(Lcom/android/incallui/Call;)V

    goto/16 :goto_0

    .line 399
    .restart local v4    # "flags":I
    :cond_6
    or-int/lit8 v4, v4, 0x1

    goto/16 :goto_1

    .line 414
    :catchall_1
    move-exception v1

    :try_start_2
    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v1

    .line 421
    .restart local v3    # "cnam":Ljava/lang/String;
    :cond_7
    iput-boolean v8, v0, Lcom/android/incallui/service/EcidClient;->m_cnapDelivered:Z

    goto :goto_2
.end method

.method private static unRegisterObserverIfNeeded()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 534
    sget-object v1, Lcom/android/incallui/service/EcidClient;->m_mapLookupsInProcess:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    sget-object v1, Lcom/android/incallui/service/EcidClient;->ecidObserver:Lcom/android/incallui/service/EcidClient$EcidContentObserver;

    if-eqz v1, :cond_1

    sget-object v1, Lcom/android/incallui/service/EcidClient;->observerCr:Ljava/lang/ref/WeakReference;

    if-eqz v1, :cond_1

    .line 537
    sget-object v1, Lcom/android/incallui/service/EcidClient;->observerCr:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ContentResolver;

    .line 538
    .local v0, "cr":Landroid/content/ContentResolver;
    if-eqz v0, :cond_0

    sget-object v1, Lcom/android/incallui/service/EcidClient;->ecidObserver:Lcom/android/incallui/service/EcidClient$EcidContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 539
    :cond_0
    sput-object v2, Lcom/android/incallui/service/EcidClient;->observerCr:Ljava/lang/ref/WeakReference;

    .line 540
    sput-object v2, Lcom/android/incallui/service/EcidClient;->ecidObserver:Lcom/android/incallui/service/EcidClient$EcidContentObserver;

    .line 542
    :cond_1
    return-void
.end method

.method public static updateContactInfo(Lcom/android/incallui/Call;Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;)V
    .locals 2
    .param p0, "callInfo"    # Lcom/android/incallui/Call;
    .param p1, "entry"    # Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    .prologue
    .line 461
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 465
    :cond_0
    :goto_0
    return-void

    .line 463
    :cond_1
    invoke-virtual {p0}, Lcom/android/incallui/Call;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/incallui/service/EcidClient;->getClient(Ljava/lang/String;)Lcom/android/incallui/service/EcidClient;

    move-result-object v0

    .line 464
    .local v0, "ecidRec":Lcom/android/incallui/service/EcidClient;
    if-eqz v0, :cond_0

    invoke-virtual {v0, p0, p1}, Lcom/android/incallui/service/EcidClient;->doUpdateContactInfo(Lcom/android/incallui/Call;Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;)V

    goto :goto_0
.end method


# virtual methods
.method public canUpdateContactPhoto(Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;)Z
    .locals 4
    .param p1, "entry"    # Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 645
    iget-boolean v2, p0, Lcom/android/incallui/service/EcidClient;->m_bPreferCidImage:Z

    if-nez v2, :cond_1

    iget-object v2, p1, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->displayPhotoUri:Landroid/net/Uri;

    if-eqz v2, :cond_1

    .line 663
    :cond_0
    :goto_0
    return v1

    .line 650
    :cond_1
    const-string v2, "feature_att"

    invoke-static {v2}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "feature_tmo"

    invoke-static {v2}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "feature_spr"

    .line 651
    invoke-static {v2}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 652
    :cond_2
    iget-object v2, p0, Lcom/android/incallui/service/EcidClient;->m_urlPicture:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    :goto_1
    move v1, v0

    goto :goto_0

    :cond_3
    move v0, v1

    goto :goto_1

    .line 655
    :cond_4
    iget-object v2, p0, Lcom/android/incallui/service/EcidClient;->m_picture:Landroid/graphics/Bitmap;

    if-eqz v2, :cond_0

    .line 659
    iget-object v2, p0, Lcom/android/incallui/service/EcidClient;->m_cachedPictureDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/android/incallui/service/EcidClient;->m_cachedPictureDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v3, p1, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->photo:Landroid/graphics/drawable/Drawable;

    if-eq v2, v3, :cond_0

    :cond_5
    move v1, v0

    .line 663
    goto :goto_0
.end method

.method public doUpdateContactInfo(Lcom/android/incallui/Call;Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;)V
    .locals 5
    .param p1, "callInfo"    # Lcom/android/incallui/Call;
    .param p2, "entry"    # Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    .prologue
    const/4 v4, 0x1

    .line 471
    iget-object v1, p0, Lcom/android/incallui/service/EcidClient;->m_displayName:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {p1}, Lcom/android/incallui/Call;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/incallui/service/EcidClient;->isIncoming(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 474
    iget-object v1, p2, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->namePrimary:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p2, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->namePrimary:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/android/incallui/Call;->getCnapName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 475
    :cond_0
    invoke-virtual {p1}, Lcom/android/incallui/Call;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/incallui/service/EcidClient;->isContact(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_7

    .line 478
    iget-object v1, p0, Lcom/android/incallui/service/EcidClient;->m_displayName:Ljava/lang/String;

    iput-object v1, p2, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->namePrimary:Ljava/lang/String;

    .line 502
    :cond_1
    :goto_0
    const-string v1, "feature_att"

    invoke-static {v1}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "feature_vzw"

    .line 503
    invoke-static {v1}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "feature_tmo"

    .line 504
    invoke-static {v1}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "feature_usc"

    .line 505
    invoke-static {v1}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "feature_spr"

    .line 506
    invoke-static {v1}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 507
    :cond_2
    invoke-direct {p0}, Lcom/android/incallui/service/EcidClient;->getCityStateString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 508
    invoke-direct {p0}, Lcom/android/incallui/service/EcidClient;->getCityStateString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p2, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->location:Ljava/lang/String;

    .line 511
    :cond_3
    invoke-virtual {p0, p2}, Lcom/android/incallui/service/EcidClient;->canUpdateContactPhoto(Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;)Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-virtual {p1}, Lcom/android/incallui/Call;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/incallui/service/EcidClient;->isIncoming(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 513
    iget-object v1, p0, Lcom/android/incallui/service/EcidClient;->m_ownerCtx:Ljava/lang/ref/WeakReference;

    if-eqz v1, :cond_8

    iget-object v1, p0, Lcom/android/incallui/service/EcidClient;->m_ownerCtx:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Context;

    move-object v0, v1

    .line 514
    .local v0, "ctx":Landroid/content/Context;
    :goto_1
    if-eqz v0, :cond_6

    .line 516
    const-string v1, "feature_att"

    invoke-static {v1}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_4

    const-string v1, "feature_tmo"

    invoke-static {v1}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 517
    :cond_4
    sget-object v1, Lcom/android/incallui/service/EcidClient;->mNameIDLogo:Ljava/lang/ref/WeakReference;

    if-eqz v1, :cond_5

    sget-object v1, Lcom/android/incallui/service/EcidClient;->mNameIDLogo:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_5

    .line 518
    sget-object v1, Lcom/android/incallui/service/EcidClient;->mNameIDLogo:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/drawable/Drawable;

    iput-object v1, p2, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->photo:Landroid/graphics/drawable/Drawable;

    .line 519
    iput-boolean v4, p2, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->isPersonalPhotoAvailable:Z

    .line 528
    :cond_5
    :goto_2
    iput-boolean v4, p0, Lcom/android/incallui/service/EcidClient;->m_ecidPictureUsed:Z

    .line 531
    .end local v0    # "ctx":Landroid/content/Context;
    :cond_6
    return-void

    .line 480
    :cond_7
    iget-object v1, p2, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->namePrimary:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-boolean v1, p0, Lcom/android/incallui/service/EcidClient;->m_cnapDelivered:Z

    if-eqz v1, :cond_1

    .line 482
    iget-object v1, p2, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->namePrimary:Ljava/lang/String;

    const-string v2, "Unknown Name"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 483
    iget-object v1, p0, Lcom/android/incallui/service/EcidClient;->m_displayName:Ljava/lang/String;

    iput-object v1, p2, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->namePrimary:Ljava/lang/String;

    goto/16 :goto_0

    .line 513
    :cond_8
    const/4 v0, 0x0

    goto :goto_1

    .line 522
    .restart local v0    # "ctx":Landroid/content/Context;
    :cond_9
    iget-object v1, p0, Lcom/android/incallui/service/EcidClient;->m_picture:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_5

    .line 523
    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iget-object v3, p0, Lcom/android/incallui/service/EcidClient;->m_picture:Landroid/graphics/Bitmap;

    invoke-direct {v1, v2, v3}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    iput-object v1, p2, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->photo:Landroid/graphics/drawable/Drawable;

    .line 524
    iget-object v1, p2, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->photo:Landroid/graphics/drawable/Drawable;

    iput-object v1, p0, Lcom/android/incallui/service/EcidClient;->m_cachedPictureDrawable:Landroid/graphics/drawable/Drawable;

    .line 525
    iput-boolean v4, p2, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->isPersonalPhotoAvailable:Z

    goto :goto_2
.end method

.method public getImage(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 7
    .param p1, "ctx"    # Landroid/content/Context;
    .param p2, "strImageUrl"    # Ljava/lang/String;

    .prologue
    .line 547
    const/4 v3, 0x0

    .line 549
    .local v3, "pic":Landroid/graphics/Bitmap;
    :try_start_0
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 550
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 551
    .local v0, "cr":Landroid/content/ContentResolver;
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v2

    .line 552
    .local v2, "is":Ljava/io/InputStream;
    invoke-static {v2}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 558
    .end local v0    # "cr":Landroid/content/ContentResolver;
    .end local v2    # "is":Ljava/io/InputStream;
    :cond_0
    :goto_0
    return-object v3

    .line 554
    :catch_0
    move-exception v1

    .line 556
    .local v1, "e":Ljava/io/FileNotFoundException;
    const-string v4, "Phone-ECID"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getImage: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public declared-synchronized getImageSpr(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 7
    .param p1, "ctx"    # Landroid/content/Context;
    .param p2, "strImageUrl"    # Ljava/lang/String;

    .prologue
    .line 589
    monitor-enter p0

    const/4 v2, 0x0

    .line 591
    .local v2, "ecidLogo":Landroid/graphics/Bitmap;
    :try_start_0
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 592
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 593
    .local v0, "cr":Landroid/content/ContentResolver;
    invoke-static {v0, p2}, Lcom/android/incallui/service/EcidClient;->decodeBitmapFromUrl(Landroid/content/ContentResolver;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 594
    invoke-static {p1, v2}, Lcom/android/incallui/service/EcidClient;->getTranslucentEcidLogo(Landroid/content/Context;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 595
    if-eqz v2, :cond_0

    move-object v3, v2

    .line 605
    .end local v0    # "cr":Landroid/content/ContentResolver;
    .end local v2    # "ecidLogo":Landroid/graphics/Bitmap;
    .local v3, "ecidLogo":Landroid/graphics/Bitmap;
    :goto_0
    monitor-exit p0

    return-object v3

    .line 598
    .end local v3    # "ecidLogo":Landroid/graphics/Bitmap;
    .restart local v2    # "ecidLogo":Landroid/graphics/Bitmap;
    :catch_0
    move-exception v1

    .line 600
    .local v1, "e":Ljava/io/FileNotFoundException;
    :try_start_1
    const-string v4, "Phone-ECID"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getImageSpr: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .end local v1    # "e":Ljava/io/FileNotFoundException;
    :cond_0
    :goto_1
    move-object v3, v2

    .line 605
    .end local v2    # "ecidLogo":Landroid/graphics/Bitmap;
    .restart local v3    # "ecidLogo":Landroid/graphics/Bitmap;
    goto :goto_0

    .line 601
    .end local v3    # "ecidLogo":Landroid/graphics/Bitmap;
    .restart local v2    # "ecidLogo":Landroid/graphics/Bitmap;
    :catch_1
    move-exception v1

    .line 603
    .local v1, "e":Ljava/io/IOException;
    const-string v4, "Phone-ECID"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getImageSpr: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 589
    .end local v1    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 720
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 721
    .local v0, "sb":Ljava/lang/StringBuilder;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Ecid Record for: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/incallui/service/EcidClient;->m_phoneNumber:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "{"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "name:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/incallui/service/EcidClient;->m_displayName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 722
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ", cityid:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 723
    invoke-direct {p0}, Lcom/android/incallui/service/EcidClient;->getCityStateString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ", picture:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/incallui/service/EcidClient;->m_urlPicture:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 724
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "}"

    .line 725
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 727
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
