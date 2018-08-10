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
.field private static final CONTENT_URI:Landroid/net/Uri;

.field private static final SMARTCARD_PROJECTION:[Ljava/lang/String;

.field private static queue:Ljava/util/concurrent/BlockingQueue;


# instance fields
.field private mIsCallbackCalled:Z

.field private mPin:[C

.field private mServiceConnectionProgress:Z

.field private mSmartCardPin:Lcom/sec/smartcard/pinservice/ISmartCardPinService;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const-string/jumbo v0, "content://com.sec.smartcard.manager/smartcards"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/sec/smartcard/pinservice/SmartCardPinManager;->CONTENT_URI:Landroid/net/Uri;

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "CardCUID"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sput-object v0, Lcom/sec/smartcard/pinservice/SmartCardPinManager;->SMARTCARD_PROJECTION:[Ljava/lang/String;

    const/4 v0, 0x0

    sput-object v0, Lcom/sec/smartcard/pinservice/SmartCardPinManager;->queue:Ljava/util/concurrent/BlockingQueue;

    return-void
.end method

.method static synthetic access$002(Lcom/sec/smartcard/pinservice/SmartCardPinManager;Lcom/sec/smartcard/pinservice/ISmartCardPinService;)Lcom/sec/smartcard/pinservice/ISmartCardPinService;
    .locals 0

    iput-object p1, p0, Lcom/sec/smartcard/pinservice/SmartCardPinManager;->mSmartCardPin:Lcom/sec/smartcard/pinservice/ISmartCardPinService;

    return-object p1
.end method

.method static synthetic access$102(Lcom/sec/smartcard/pinservice/SmartCardPinManager;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/sec/smartcard/pinservice/SmartCardPinManager;->mServiceConnectionProgress:Z

    return p1
.end method

.method static synthetic access$200()Ljava/util/concurrent/BlockingQueue;
    .locals 1

    sget-object v0, Lcom/sec/smartcard/pinservice/SmartCardPinManager;->queue:Ljava/util/concurrent/BlockingQueue;

    return-object v0
.end method

.method static synthetic access$302(Lcom/sec/smartcard/pinservice/SmartCardPinManager;[C)[C
    .locals 0

    iput-object p1, p0, Lcom/sec/smartcard/pinservice/SmartCardPinManager;->mPin:[C

    return-object p1
.end method

.method static synthetic access$402(Lcom/sec/smartcard/pinservice/SmartCardPinManager;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/sec/smartcard/pinservice/SmartCardPinManager;->mIsCallbackCalled:Z

    return p1
.end method
