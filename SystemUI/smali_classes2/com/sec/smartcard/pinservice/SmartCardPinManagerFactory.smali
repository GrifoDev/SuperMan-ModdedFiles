.class public Lcom/sec/smartcard/pinservice/SmartCardPinManagerFactory;
.super Ljava/lang/Object;
.source "SmartCardPinManagerFactory.java"


# static fields
.field private static mScPinMgrFactory:Lcom/sec/smartcard/pinservice/SmartCardPinManagerFactory;

.field private static mScPinMgrMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/sec/smartcard/pinservice/SmartCardPinManager;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/sec/smartcard/pinservice/SmartCardPinManagerFactory;->mScPinMgrFactory:Lcom/sec/smartcard/pinservice/SmartCardPinManagerFactory;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/sec/smartcard/pinservice/SmartCardPinManagerFactory;->mScPinMgrMap:Ljava/util/Map;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
