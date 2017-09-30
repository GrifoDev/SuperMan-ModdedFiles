.class public Lcom/android/incallui/remotecall/contact/RemoteContactInfoCache;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/android/incallui/remotecall/contact/RemoteContactsAsyncHelper$OnImageLoadCompleteListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/incallui/remotecall/contact/RemoteContactInfoCache$FindInfoCallback;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "ContactInfoCache"

.field private static final TOKEN_UPDATE_PHOTO_FOR_CALL_STATE:I

.field private static sCache:Lcom/android/incallui/remotecall/contact/RemoteContactInfoCache;


# instance fields
.field private final mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/android/incallui/remotecall/contact/RemoteContactInfoCache;->sCache:Lcom/android/incallui/remotecall/contact/RemoteContactInfoCache;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/incallui/remotecall/contact/RemoteContactInfoCache;->mContext:Landroid/content/Context;

    return-void
.end method

.method static synthetic access$000()Lcom/android/incallui/remotecall/contact/RemoteContactInfoCache;
    .locals 1

    sget-object v0, Lcom/android/incallui/remotecall/contact/RemoteContactInfoCache;->sCache:Lcom/android/incallui/remotecall/contact/RemoteContactInfoCache;

    return-object v0
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lcom/android/incallui/remotecall/contact/RemoteContactInfoCache;
    .locals 3

    const-class v1, Lcom/android/incallui/remotecall/contact/RemoteContactInfoCache;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/android/incallui/remotecall/contact/RemoteContactInfoCache;->sCache:Lcom/android/incallui/remotecall/contact/RemoteContactInfoCache;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/incallui/remotecall/contact/RemoteContactInfoCache;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/android/incallui/remotecall/contact/RemoteContactInfoCache;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/incallui/remotecall/contact/RemoteContactInfoCache;->sCache:Lcom/android/incallui/remotecall/contact/RemoteContactInfoCache;

    :cond_0
    sget-object v0, Lcom/android/incallui/remotecall/contact/RemoteContactInfoCache;->sCache:Lcom/android/incallui/remotecall/contact/RemoteContactInfoCache;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public onImageLoadComplete(ILandroid/graphics/drawable/Drawable;Ljava/lang/Object;)V
    .locals 3

    if-nez p3, :cond_0

    :goto_0
    return-void

    :cond_0
    const-string v0, "ContactInfoCache"

    const-string v1, "Image load complete with context: "

    invoke-static {v0, v1}, Lcom/android/incallui/remotecall/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    check-cast p3, Lcom/android/incallui/remotecall/remotecall/RemoteCall;

    if-eqz p2, :cond_1

    const-string v0, "ContactInfoCache"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "direct drawable: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/incallui/remotecall/utils/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p3, p2}, Lcom/android/incallui/remotecall/remotecall/RemoteCall;->setPhoto(Landroid/graphics/drawable/Drawable;)V

    invoke-static {}, Lcom/android/incallui/remotecall/remotecall/RemoteCallList;->getInstance()Lcom/android/incallui/remotecall/remotecall/RemoteCallList;

    move-result-object v0

    invoke-virtual {v0, p3}, Lcom/android/incallui/remotecall/remotecall/RemoteCallList;->onCallUpdated(Lcom/android/incallui/remotecall/remotecall/RemoteCall;)V

    goto :goto_0

    :cond_1
    const-string v0, "ContactInfoCache"

    const-string v1, "unknown photo"

    invoke-static {v0, v1}, Lcom/android/incallui/remotecall/utils/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-virtual {p3, v0}, Lcom/android/incallui/remotecall/remotecall/RemoteCall;->setPhoto(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method public startQuery(Lcom/android/incallui/remotecall/remotecall/RemoteCall;)Lcom/android/incallui/remotecall/contact/RemoteCallerInfo;
    .locals 2

    iget-object v0, p0, Lcom/android/incallui/remotecall/contact/RemoteContactInfoCache;->mContext:Landroid/content/Context;

    new-instance v1, Lcom/android/incallui/remotecall/contact/RemoteContactInfoCache$FindInfoCallback;

    invoke-direct {v1}, Lcom/android/incallui/remotecall/contact/RemoteContactInfoCache$FindInfoCallback;-><init>()V

    invoke-static {v0, p1, v1}, Lcom/android/incallui/remotecall/contact/RemoteCallerInfoUtils;->getCallerInfoForCall(Landroid/content/Context;Lcom/android/incallui/remotecall/remotecall/RemoteCall;Lcom/android/incallui/remotecall/contact/RemoteCallerInfoAsyncQuery$OnQueryCompleteListener;)Lcom/android/incallui/remotecall/contact/RemoteCallerInfo;

    move-result-object v0

    return-object v0
.end method
