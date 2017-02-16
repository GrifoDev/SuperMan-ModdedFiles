.class public Lcom/sec/smartcard/pinservice/SmartCardPinManager;
.super Ljava/lang/Object;
.source "SmartCardPinManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/smartcard/pinservice/SmartCardPinManager$PinCallback;
    }
.end annotation


# static fields
.field private static final BIND_PIN_SERVICE:Ljava/lang/String; = "com.sec.smartcard.pinservice.action.BIND_SMART_CARD_PIN_SERVICE"

.field private static final CONTENT_URI:Landroid/net/Uri;

.field public static final LOCKSCREEN_TYPE_OTHER:Ljava/lang/String; = "Other"

.field public static final LOCKSCREEN_TYPE_SMARTCARD:Ljava/lang/String; = "Smartcard"

.field private static final PROVIDER_NAME:Ljava/lang/String; = "com.sec.smartcard.manager/smartcards"

.field private static final SAMSUNG_SC_PKG_PREFIX:Ljava/lang/String; = "com.sec.enterprise.mdm.sc."

.field private static final SMARTCARD_PROJECTION:[Ljava/lang/String;

.field private static final TAG:Ljava/lang/String; = "SmartCardPinManager"

.field private static final URL:Ljava/lang/String; = "content://com.sec.smartcard.manager/smartcards"

.field public static final VERIFY_PIN_CARDASSOCIATEERROR:I = 0x8

.field public static final VERIFY_PIN_CARDDISCONNECT:I = 0x6

.field public static final VERIFY_PIN_CARDERROR:I = 0x5

.field public static final VERIFY_PIN_CARDEXPIRED:I = 0x3

.field public static final VERIFY_PIN_CARDLOCKED:I = 0x2

.field public static final VERIFY_PIN_CONNECTIONERROR:I = 0x4

.field public static final VERIFY_PIN_FAIL:I = 0x1

.field public static final VERIFY_PIN_SUCCESS:I = 0x0

.field public static final VERIFY_PIN_USERCANCEL:I = 0x7

.field private static queue:Ljava/util/concurrent/BlockingQueue;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mIsCallbackCalled:Z

.field private mPin:[C

.field private mServiceConnectionProgress:Z

.field private mSmartCardPin:Lcom/sec/smartcard/pinservice/ISmartCardPinService;

.field private pinServiceConnection:Landroid/content/ServiceConnection;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const-string/jumbo v0, "content://com.sec.smartcard.manager/smartcards"

    .line 177
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/sec/smartcard/pinservice/SmartCardPinManager;->CONTENT_URI:Landroid/net/Uri;

    const/4 v0, 0x1

    .line 178
    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v2, "CardCUID"

    aput-object v2, v0, v1

    sput-object v0, Lcom/sec/smartcard/pinservice/SmartCardPinManager;->SMARTCARD_PROJECTION:[Ljava/lang/String;

    const/4 v0, 0x0

    .line 183
    sput-object v0, Lcom/sec/smartcard/pinservice/SmartCardPinManager;->queue:Ljava/util/concurrent/BlockingQueue;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/UserHandle;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 217
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 95
    iput-object v2, p0, Lcom/sec/smartcard/pinservice/SmartCardPinManager;->mContext:Landroid/content/Context;

    .line 96
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/smartcard/pinservice/SmartCardPinManager;->mServiceConnectionProgress:Z

    .line 185
    new-instance v0, Lcom/sec/smartcard/pinservice/SmartCardPinManager$1;

    invoke-direct {v0, p0}, Lcom/sec/smartcard/pinservice/SmartCardPinManager$1;-><init>(Lcom/sec/smartcard/pinservice/SmartCardPinManager;)V

    iput-object v0, p0, Lcom/sec/smartcard/pinservice/SmartCardPinManager;->pinServiceConnection:Landroid/content/ServiceConnection;

    const-string/jumbo v0, "SmartCardPinManager"

    const-string/jumbo v1, "SmartCardPinManager"

    .line 218
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 219
    iput-object p1, p0, Lcom/sec/smartcard/pinservice/SmartCardPinManager;->mContext:Landroid/content/Context;

    .line 220
    iput-object v2, p0, Lcom/sec/smartcard/pinservice/SmartCardPinManager;->mSmartCardPin:Lcom/sec/smartcard/pinservice/ISmartCardPinService;

    .line 221
    sput-object v2, Lcom/sec/smartcard/pinservice/SmartCardPinManager;->queue:Ljava/util/concurrent/BlockingQueue;

    .line 222
    invoke-direct {p0, p2}, Lcom/sec/smartcard/pinservice/SmartCardPinManager;->bindSmartCardPinService(Landroid/os/UserHandle;)V

    .line 224
    return-void
.end method

.method public constructor <init>(Landroid/os/IBinder;)V
    .locals 1

    .prologue
    .line 213
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 95
    iput-object v0, p0, Lcom/sec/smartcard/pinservice/SmartCardPinManager;->mContext:Landroid/content/Context;

    .line 96
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/smartcard/pinservice/SmartCardPinManager;->mServiceConnectionProgress:Z

    .line 185
    new-instance v0, Lcom/sec/smartcard/pinservice/SmartCardPinManager$1;

    invoke-direct {v0, p0}, Lcom/sec/smartcard/pinservice/SmartCardPinManager$1;-><init>(Lcom/sec/smartcard/pinservice/SmartCardPinManager;)V

    iput-object v0, p0, Lcom/sec/smartcard/pinservice/SmartCardPinManager;->pinServiceConnection:Landroid/content/ServiceConnection;

    .line 214
    invoke-static {p1}, Lcom/sec/smartcard/pinservice/ISmartCardPinService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/sec/smartcard/pinservice/ISmartCardPinService;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/smartcard/pinservice/SmartCardPinManager;->mSmartCardPin:Lcom/sec/smartcard/pinservice/ISmartCardPinService;

    .line 215
    return-void
.end method

.method public constructor <init>(Landroid/os/UserHandle;Landroid/content/Context;I)V
    .locals 3

    .prologue
    const/4 v0, 0x0

    const/4 v2, 0x0

    .line 226
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 95
    iput-object v2, p0, Lcom/sec/smartcard/pinservice/SmartCardPinManager;->mContext:Landroid/content/Context;

    .line 96
    iput-boolean v0, p0, Lcom/sec/smartcard/pinservice/SmartCardPinManager;->mServiceConnectionProgress:Z

    .line 185
    new-instance v0, Lcom/sec/smartcard/pinservice/SmartCardPinManager$1;

    invoke-direct {v0, p0}, Lcom/sec/smartcard/pinservice/SmartCardPinManager$1;-><init>(Lcom/sec/smartcard/pinservice/SmartCardPinManager;)V

    iput-object v0, p0, Lcom/sec/smartcard/pinservice/SmartCardPinManager;->pinServiceConnection:Landroid/content/ServiceConnection;

    const-string/jumbo v0, "SmartCardPinManager"

    const-string/jumbo v1, "SmartCardPinManager Sync"

    .line 227
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 228
    iput-object p2, p0, Lcom/sec/smartcard/pinservice/SmartCardPinManager;->mContext:Landroid/content/Context;

    .line 229
    iput-object v2, p0, Lcom/sec/smartcard/pinservice/SmartCardPinManager;->mSmartCardPin:Lcom/sec/smartcard/pinservice/ISmartCardPinService;

    .line 230
    if-eqz p3, :cond_0

    .line 235
    new-instance v0, Ljava/util/concurrent/ArrayBlockingQueue;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/ArrayBlockingQueue;-><init>(I)V

    sput-object v0, Lcom/sec/smartcard/pinservice/SmartCardPinManager;->queue:Ljava/util/concurrent/BlockingQueue;

    .line 237
    :goto_0
    return-void

    .line 231
    :cond_0
    sput-object v2, Lcom/sec/smartcard/pinservice/SmartCardPinManager;->queue:Ljava/util/concurrent/BlockingQueue;

    .line 232
    invoke-direct {p0, p1}, Lcom/sec/smartcard/pinservice/SmartCardPinManager;->bindSmartCardPinService(Landroid/os/UserHandle;)V

    goto :goto_0
.end method

.method static synthetic access$002(Lcom/sec/smartcard/pinservice/SmartCardPinManager;Lcom/sec/smartcard/pinservice/ISmartCardPinService;)Lcom/sec/smartcard/pinservice/ISmartCardPinService;
    .locals 0

    .prologue
    .line 88
    iput-object p1, p0, Lcom/sec/smartcard/pinservice/SmartCardPinManager;->mSmartCardPin:Lcom/sec/smartcard/pinservice/ISmartCardPinService;

    return-object p1
.end method

.method static synthetic access$102(Lcom/sec/smartcard/pinservice/SmartCardPinManager;Z)Z
    .locals 0

    .prologue
    .line 88
    iput-boolean p1, p0, Lcom/sec/smartcard/pinservice/SmartCardPinManager;->mServiceConnectionProgress:Z

    return p1
.end method

.method static synthetic access$200()Ljava/util/concurrent/BlockingQueue;
    .locals 1

    .prologue
    .line 88
    sget-object v0, Lcom/sec/smartcard/pinservice/SmartCardPinManager;->queue:Ljava/util/concurrent/BlockingQueue;

    return-object v0
.end method

.method static synthetic access$302(Lcom/sec/smartcard/pinservice/SmartCardPinManager;[C)[C
    .locals 0

    .prologue
    .line 88
    iput-object p1, p0, Lcom/sec/smartcard/pinservice/SmartCardPinManager;->mPin:[C

    return-object p1
.end method

.method static synthetic access$402(Lcom/sec/smartcard/pinservice/SmartCardPinManager;Z)Z
    .locals 0

    .prologue
    .line 88
    iput-boolean p1, p0, Lcom/sec/smartcard/pinservice/SmartCardPinManager;->mIsCallbackCalled:Z

    return p1
.end method

.method private bindSmartCardPinService(Landroid/os/UserHandle;)V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const-string/jumbo v0, "SmartCardPinManager"

    const-string/jumbo v1, "bindSmartCardPinService()"

    .line 595
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 597
    iget-object v0, p0, Lcom/sec/smartcard/pinservice/SmartCardPinManager;->mSmartCardPin:Lcom/sec/smartcard/pinservice/ISmartCardPinService;

    if-eqz v0, :cond_0

    .line 617
    :goto_0
    return-void

    :cond_0
    const-string/jumbo v0, "SmartCardPinManager"

    const-string/jumbo v1, "mSmartCardPin is null"

    .line 598
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 599
    iget-boolean v0, p0, Lcom/sec/smartcard/pinservice/SmartCardPinManager;->mServiceConnectionProgress:Z

    if-nez v0, :cond_1

    .line 603
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.sec.smartcard.pinservice.action.BIND_SMART_CARD_PIN_SERVICE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 604
    new-instance v1, Landroid/content/ComponentName;

    const-string/jumbo v2, "com.sec.smartcard.manager"

    const-string/jumbo v3, "com.sec.smartcard.pinservice.SmartCardService"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    const-string/jumbo v1, "SmartCardPinManager"

    const-string/jumbo v2, "binding to smartcard pin service"

    .line 605
    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 606
    if-nez p1, :cond_2

    .line 611
    iget-object v1, p0, Lcom/sec/smartcard/pinservice/SmartCardPinManager;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/sec/smartcard/pinservice/SmartCardPinManager;->pinServiceConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v1, v0, v2, v4}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 614
    :goto_1
    iput-boolean v4, p0, Lcom/sec/smartcard/pinservice/SmartCardPinManager;->mServiceConnectionProgress:Z

    goto :goto_0

    :cond_1
    const-string/jumbo v0, "SmartCardPinManager"

    const-string/jumbo v1, "binding to service is progress. new request to bind is ignored"

    .line 600
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 601
    return-void

    :cond_2
    const-string/jumbo v1, "SmartCardPinManager"

    .line 607
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "binding to smartcard pin service for a user handle: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 608
    iget-object v1, p0, Lcom/sec/smartcard/pinservice/SmartCardPinManager;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/sec/smartcard/pinservice/SmartCardPinManager;->pinServiceConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v1, v0, v2, v4, p1}, Landroid/content/Context;->bindServiceAsUser(Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)Z

    goto :goto_1
.end method

.method public static isCardRegistered(Landroid/content/Context;)Z
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/4 v3, 0x0

    .line 479
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "SmartCardPinManager"

    .line 480
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "context : "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v1, "SmartCardPinManager"

    .line 481
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "content resolver : "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 483
    sget-object v1, Lcom/sec/smartcard/pinservice/SmartCardPinManager;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/sec/smartcard/pinservice/SmartCardPinManager;->SMARTCARD_PROJECTION:[Ljava/lang/String;

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    const-string/jumbo v1, "SmartCardPinManager"

    .line 484
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "cursor : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v1, "SmartCardPinManager"

    .line 485
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "cursor.count : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 486
    if-nez v0, :cond_0

    move v0, v6

    .line 491
    :goto_0
    return v0

    .line 487
    :cond_0
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-gtz v0, :cond_1

    move v0, v6

    goto :goto_0

    .line 488
    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static isSmartCardAuthenticationInstalled()Z
    .locals 1

    .prologue
    .line 550
    const/4 v0, 0x0

    .line 551
    return v0
.end method

.method public static isSmartCardAuthenticationInstalled(Landroid/content/Context;)Z
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 556
    if-eqz p0, :cond_1

    .line 560
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getInstalledPackages(I)Ljava/util/List;

    move-result-object v0

    .line 561
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_2

    move v0, v1

    .line 574
    :goto_0
    return v0

    :cond_1
    const-string/jumbo v0, "SmartCardPinManager"

    const-string/jumbo v2, "context is null returning"

    .line 557
    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 558
    return v1

    .line 561
    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/PackageInfo;

    .line 567
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const-string/jumbo v4, "com.sec.smartcard.permission.SMARTCARD_ADAPTER"

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v4, v0}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "SmartCardPinManager"

    const-string/jumbo v1, "isSmartCardAuthenticationInstalled: True"

    .line 569
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 570
    const/4 v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public bindSmartCardPinService_Sync(Landroid/os/UserHandle;)V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const-string/jumbo v0, "SmartCardPinManager"

    const-string/jumbo v1, "bindSmartCardPinService_Sync()"

    .line 620
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 622
    iget-object v0, p0, Lcom/sec/smartcard/pinservice/SmartCardPinManager;->mSmartCardPin:Lcom/sec/smartcard/pinservice/ISmartCardPinService;

    if-eqz v0, :cond_0

    .line 650
    :goto_0
    return-void

    :cond_0
    const-string/jumbo v0, "SmartCardPinManager"

    const-string/jumbo v1, "mSmartCardPin is null"

    .line 623
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 624
    iget-boolean v0, p0, Lcom/sec/smartcard/pinservice/SmartCardPinManager;->mServiceConnectionProgress:Z

    if-nez v0, :cond_1

    const-string/jumbo v0, "SmartCardPinManager"

    const-string/jumbo v1, "binding to smartcard pin service"

    .line 629
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 630
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.sec.smartcard.pinservice.action.BIND_SMART_CARD_PIN_SERVICE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 631
    new-instance v1, Landroid/content/ComponentName;

    const-string/jumbo v2, "com.sec.smartcard.manager"

    const-string/jumbo v3, "com.sec.smartcard.pinservice.SmartCardService"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 632
    if-nez p1, :cond_2

    .line 637
    iget-object v1, p0, Lcom/sec/smartcard/pinservice/SmartCardPinManager;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/sec/smartcard/pinservice/SmartCardPinManager;->pinServiceConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v1, v0, v2, v4}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 640
    :goto_1
    iput-boolean v4, p0, Lcom/sec/smartcard/pinservice/SmartCardPinManager;->mServiceConnectionProgress:Z

    :try_start_0
    const-string/jumbo v0, "SmartCardPinManager"

    const-string/jumbo v1, "calling queue.take"

    .line 643
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 644
    sget-object v0, Lcom/sec/smartcard/pinservice/SmartCardPinManager;->queue:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v0}, Ljava/util/concurrent/BlockingQueue;->take()Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 647
    :catch_0
    move-exception v0

    .line 646
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    :cond_1
    const-string/jumbo v0, "SmartCardPinManager"

    const-string/jumbo v1, "binding to service is progress. new request to bind is ignored"

    .line 625
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 626
    return-void

    :cond_2
    const-string/jumbo v1, "SmartCardPinManager"

    .line 633
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "binding to smartcard pin service for a user handle: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 634
    iget-object v1, p0, Lcom/sec/smartcard/pinservice/SmartCardPinManager;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/sec/smartcard/pinservice/SmartCardPinManager;->pinServiceConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v1, v0, v2, v4, p1}, Landroid/content/Context;->bindServiceAsUser(Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)Z

    goto :goto_1
.end method

.method public getCardLoginAttemptRemain(Lcom/sec/smartcard/pinservice/ISmartCardInfoCallback;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 581
    iget-object v0, p0, Lcom/sec/smartcard/pinservice/SmartCardPinManager;->mSmartCardPin:Lcom/sec/smartcard/pinservice/ISmartCardPinService;

    if-nez v0, :cond_0

    const-string/jumbo v0, "SmartCardPinManager"

    const-string/jumbo v1, "unable to connect to smartcard pin service"

    .line 589
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 590
    new-instance v0, Ljava/lang/Exception;

    const-string/jumbo v1, "unable to connect to smartcard pin service"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    .line 583
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/sec/smartcard/pinservice/SmartCardPinManager;->mSmartCardPin:Lcom/sec/smartcard/pinservice/ISmartCardPinService;

    invoke-interface {v0, p1}, Lcom/sec/smartcard/pinservice/ISmartCardPinService;->getCardLoginAttemptRemain(Lcom/sec/smartcard/pinservice/ISmartCardInfoCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 592
    return-void

    .line 587
    :catch_0
    move-exception v0

    .line 585
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 586
    new-instance v1, Ljava/lang/Exception;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public getPin(Lcom/sec/smartcard/pinservice/SmartCardPinManager$PinCallback;)V
    .locals 2

    .prologue
    .line 292
    :try_start_0
    iget-object v0, p0, Lcom/sec/smartcard/pinservice/SmartCardPinManager;->mSmartCardPin:Lcom/sec/smartcard/pinservice/ISmartCardPinService;

    iget-object v1, p1, Lcom/sec/smartcard/pinservice/SmartCardPinManager$PinCallback;->mICallback:Lcom/sec/smartcard/pinservice/ISmartCardGetPinCallback;

    invoke-interface {v0, v1}, Lcom/sec/smartcard/pinservice/ISmartCardPinService;->getPin(Lcom/sec/smartcard/pinservice/ISmartCardGetPinCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 296
    :goto_0
    return-void

    .line 295
    :catch_0
    move-exception v0

    .line 294
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public declared-synchronized getPinSync()[C
    .locals 2

    .prologue
    monitor-enter p0

    .line 335
    :try_start_0
    new-instance v0, Landroid/os/ConditionVariable;

    invoke-direct {v0}, Landroid/os/ConditionVariable;-><init>()V

    const/4 v1, 0x0

    .line 336
    iput-object v1, p0, Lcom/sec/smartcard/pinservice/SmartCardPinManager;->mPin:[C

    .line 337
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/sec/smartcard/pinservice/SmartCardPinManager;->mIsCallbackCalled:Z

    .line 339
    new-instance v1, Lcom/sec/smartcard/pinservice/SmartCardPinManager$2;

    invoke-direct {v1, p0, v0}, Lcom/sec/smartcard/pinservice/SmartCardPinManager$2;-><init>(Lcom/sec/smartcard/pinservice/SmartCardPinManager;Landroid/os/ConditionVariable;)V

    invoke-virtual {p0, v1}, Lcom/sec/smartcard/pinservice/SmartCardPinManager;->getPin(Lcom/sec/smartcard/pinservice/SmartCardPinManager$PinCallback;)V

    .line 362
    iget-boolean v1, p0, Lcom/sec/smartcard/pinservice/SmartCardPinManager;->mIsCallbackCalled:Z

    if-eqz v1, :cond_0

    .line 365
    :goto_0
    iget-object v0, p0, Lcom/sec/smartcard/pinservice/SmartCardPinManager;->mPin:[C
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 363
    :cond_0
    :try_start_1
    invoke-virtual {v0}, Landroid/os/ConditionVariable;->block()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public isCardRegistered()Z
    .locals 3

    .prologue
    .line 497
    const/4 v1, 0x0

    .line 499
    iget-object v0, p0, Lcom/sec/smartcard/pinservice/SmartCardPinManager;->mSmartCardPin:Lcom/sec/smartcard/pinservice/ISmartCardPinService;

    if-nez v0, :cond_0

    const-string/jumbo v0, "SmartCardPinManager"

    const-string/jumbo v2, "unable to connect to smartcard pin service"

    .line 506
    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v1

    .line 509
    :goto_0
    return v0

    .line 501
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/sec/smartcard/pinservice/SmartCardPinManager;->mSmartCardPin:Lcom/sec/smartcard/pinservice/ISmartCardPinService;

    invoke-interface {v0}, Lcom/sec/smartcard/pinservice/ISmartCardPinService;->isCardRegistered()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_0

    .line 504
    :catch_0
    move-exception v0

    .line 503
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    move v0, v1

    .line 504
    goto :goto_0
.end method

.method public isDeviceConnectedWithCard()Z
    .locals 1

    .prologue
    .line 529
    const/4 v0, 0x1

    .line 530
    return v0
.end method

.method public isSmartCardAuthenticationAvailable()Z
    .locals 3

    .prologue
    .line 535
    const/4 v1, 0x0

    .line 536
    iget-object v0, p0, Lcom/sec/smartcard/pinservice/SmartCardPinManager;->mSmartCardPin:Lcom/sec/smartcard/pinservice/ISmartCardPinService;

    if-nez v0, :cond_0

    const-string/jumbo v0, "SmartCardPinManager"

    const-string/jumbo v2, "unable to connect to smartcard pin service"

    .line 543
    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v1

    .line 545
    :goto_0
    return v0

    .line 538
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/sec/smartcard/pinservice/SmartCardPinManager;->mSmartCardPin:Lcom/sec/smartcard/pinservice/ISmartCardPinService;

    invoke-interface {v0}, Lcom/sec/smartcard/pinservice/ISmartCardPinService;->isSmartCardAuthenticationAvailable()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_0

    .line 541
    :catch_0
    move-exception v0

    .line 540
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    move v0, v1

    .line 541
    goto :goto_0
.end method

.method public registerCard([CLcom/sec/smartcard/pinservice/ISmartCardRegisterCallback;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const-string/jumbo v0, "SmartCardPinManager"

    const-string/jumbo v1, "registerCard"

    .line 422
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 425
    iget-object v0, p0, Lcom/sec/smartcard/pinservice/SmartCardPinManager;->mSmartCardPin:Lcom/sec/smartcard/pinservice/ISmartCardPinService;

    if-nez v0, :cond_0

    const-string/jumbo v0, "SmartCardPinManager"

    const-string/jumbo v1, "unable to connect to smartcard pin service"

    .line 433
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 434
    new-instance v0, Ljava/lang/Exception;

    const-string/jumbo v1, "unable to connect to smartcard pin service"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    .line 427
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/sec/smartcard/pinservice/SmartCardPinManager;->mSmartCardPin:Lcom/sec/smartcard/pinservice/ISmartCardPinService;

    invoke-interface {v0, p1, p2}, Lcom/sec/smartcard/pinservice/ISmartCardPinService;->registerCard([CLcom/sec/smartcard/pinservice/ISmartCardRegisterCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 436
    return-void

    .line 431
    :catch_0
    move-exception v0

    .line 429
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 430
    new-instance v1, Ljava/lang/Exception;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public showCardNotRegisteredDialog()V
    .locals 2

    .prologue
    .line 513
    iget-object v0, p0, Lcom/sec/smartcard/pinservice/SmartCardPinManager;->mSmartCardPin:Lcom/sec/smartcard/pinservice/ISmartCardPinService;

    if-nez v0, :cond_0

    const-string/jumbo v0, "SmartCardPinManager"

    const-string/jumbo v1, "unable to connect to smartcard pin service"

    .line 520
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 523
    :goto_0
    return-void

    .line 515
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/sec/smartcard/pinservice/SmartCardPinManager;->mSmartCardPin:Lcom/sec/smartcard/pinservice/ISmartCardPinService;

    invoke-interface {v0}, Lcom/sec/smartcard/pinservice/ISmartCardPinService;->showCardNotRegisteredDialog()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 518
    :catch_0
    move-exception v0

    .line 517
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public unRegisterCard([CLcom/sec/smartcard/pinservice/ISmartCardRegisterCallback;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 461
    iget-object v0, p0, Lcom/sec/smartcard/pinservice/SmartCardPinManager;->mSmartCardPin:Lcom/sec/smartcard/pinservice/ISmartCardPinService;

    if-nez v0, :cond_0

    const-string/jumbo v0, "SmartCardPinManager"

    const-string/jumbo v1, "unable to connect to smartcard pin service"

    .line 469
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 470
    new-instance v0, Ljava/lang/Exception;

    const-string/jumbo v1, "unable to connect to smartcard pin service"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    .line 463
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/sec/smartcard/pinservice/SmartCardPinManager;->mSmartCardPin:Lcom/sec/smartcard/pinservice/ISmartCardPinService;

    invoke-interface {v0, p1, p2}, Lcom/sec/smartcard/pinservice/ISmartCardPinService;->unRegisterCard([CLcom/sec/smartcard/pinservice/ISmartCardRegisterCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 472
    return-void

    .line 467
    :catch_0
    move-exception v0

    .line 465
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 466
    new-instance v1, Ljava/lang/Exception;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public unbindSmartCardPinService()V
    .locals 2

    .prologue
    const-string/jumbo v0, "SmartCardPinManager"

    const-string/jumbo v1, "unbindSmartCardPinService()"

    .line 653
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v0, "SmartCardPinManager"

    const-string/jumbo v1, "unbinding to smartcard pin service "

    .line 655
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 656
    iget-object v0, p0, Lcom/sec/smartcard/pinservice/SmartCardPinManager;->mSmartCardPin:Lcom/sec/smartcard/pinservice/ISmartCardPinService;

    if-nez v0, :cond_0

    .line 660
    :goto_0
    return-void

    :cond_0
    const-string/jumbo v0, "SmartCardPinManager"

    const-string/jumbo v1, "mSmartCardPin is not null"

    .line 657
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 658
    iget-object v0, p0, Lcom/sec/smartcard/pinservice/SmartCardPinManager;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/sec/smartcard/pinservice/SmartCardPinManager;->pinServiceConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    goto :goto_0
.end method

.method public verifyCard([CLcom/sec/smartcard/pinservice/ISmartCardVerifyCallback;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const-string/jumbo v0, "SmartCardPinManager"

    const-string/jumbo v1, "verifyCard"

    .line 440
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 443
    iget-object v0, p0, Lcom/sec/smartcard/pinservice/SmartCardPinManager;->mSmartCardPin:Lcom/sec/smartcard/pinservice/ISmartCardPinService;

    if-nez v0, :cond_0

    const-string/jumbo v0, "SmartCardPinManager"

    const-string/jumbo v1, "unable to connect to smartcard pin service"

    .line 451
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 452
    new-instance v0, Ljava/lang/Exception;

    const-string/jumbo v1, "unable to connect to smartcard pin service"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    .line 445
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/sec/smartcard/pinservice/SmartCardPinManager;->mSmartCardPin:Lcom/sec/smartcard/pinservice/ISmartCardPinService;

    invoke-interface {v0, p1, p2}, Lcom/sec/smartcard/pinservice/ISmartCardPinService;->verifyCard([CLcom/sec/smartcard/pinservice/ISmartCardVerifyCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 454
    return-void

    .line 449
    :catch_0
    move-exception v0

    .line 447
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 448
    new-instance v1, Ljava/lang/Exception;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v1
.end method
