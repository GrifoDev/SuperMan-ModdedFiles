.class public Lcom/android/incallui/service/vt/VideoCallOperator;
.super Ljava/lang/Object;
.source "VideoCallOperator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/incallui/service/vt/VideoCallOperator$SalesCode;
    }
.end annotation


# static fields
.field public static final ACG:I = 0xd0

.field public static final AIO:I = 0xfa

.field public static final ATT:I = 0x12b

.field public static final BMA:I = 0x12e

.field public static final BMC:I = 0x132

.field public static final BRI:I = 0x25a

.field public static final BST:I = 0xcd

.field public static final BWA:I = 0x134

.field public static final CHC:I = 0x1f9

.field public static final CHM:I = 0x1f5

.field public static final CHN:I = 0x1f7

.field public static final CHU:I = 0x1f8

.field public static final CRI:I = 0xd2

.field public static final CSP:I = 0xd4

.field public static final CTC:I = 0x1f6

.field public static final CWT:I = 0x25b

.field public static final DCM:I = 0x384

.field public static final ESK:I = 0x137

.field public static final FET:I = 0x25d

.field public static final FMC:I = 0x130

.field public static final GLW:I = 0x138

.field public static final INS:I = 0x2be

.field public static final INU:I = 0x2bd

.field public static final KDO:I = 0x136

.field public static final KOR_OPEN:I = 0x64

.field public static final KTT:I = 0x66

.field public static final LGU:I = 0x67

.field public static final LRA:I = 0xf9

.field public static final MTR:I = 0xcf

.field public static final OPEN:I = 0x0

.field public static final RWA:I = 0x131

.field public static final RWC:I = 0x12f

.field public static final SKT:I = 0x65

.field public static final SPR:I = 0xcb

.field public static final SWC:I = 0x2bf

.field public static final TEL:I = 0x321

.field public static final TFN:I = 0xd3

.field public static final TGY:I = 0x259

.field public static final TLP:I = 0x322

.field public static final TLS:I = 0x135

.field public static final TMB:I = 0xfb

.field public static final TMK:I = 0xfc

.field public static final TUR:I = 0x44c

.field public static final TWN:I = 0x25c

.field public static final USC:I = 0xfd

.field public static final VAU:I = 0x323

.field public static final VIA:I = 0x3e8

.field public static final VMC:I = 0x133

.field public static final VMU:I = 0xcc

.field public static final VTR:I = 0x12d

.field public static final VZW:I = 0xc9

.field public static final XAR:I = 0xd1

.field public static final XAS:I = 0xca

.field public static final ZZH:I = 0x25e

.field private static mOperator:I

.field private static mSalesCodeList:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/incallui/service/vt/VideoCallOperator;->mSalesCodeList:Ljava/util/HashMap;

    const/4 v0, 0x0

    sput v0, Lcom/android/incallui/service/vt/VideoCallOperator;->mOperator:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static createSalesCodeList()V
    .locals 7

    const/16 v6, 0x64

    const/16 v5, 0x67

    const/16 v4, 0x66

    const/16 v3, 0x65

    sget-object v0, Lcom/android/incallui/service/vt/VideoCallOperator;->mSalesCodeList:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/incallui/service/vt/VideoCallOperator;->mSalesCodeList:Ljava/util/HashMap;

    const-string v1, "OPEN"

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/incallui/service/vt/VideoCallOperator;->mSalesCodeList:Ljava/util/HashMap;

    const-string v1, "SKT"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/incallui/service/vt/VideoCallOperator;->mSalesCodeList:Ljava/util/HashMap;

    const-string v1, "SKC"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/incallui/service/vt/VideoCallOperator;->mSalesCodeList:Ljava/util/HashMap;

    const-string v1, "SKO"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/incallui/service/vt/VideoCallOperator;->mSalesCodeList:Ljava/util/HashMap;

    const-string v1, "KTT"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/incallui/service/vt/VideoCallOperator;->mSalesCodeList:Ljava/util/HashMap;

    const-string v1, "KTC"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/incallui/service/vt/VideoCallOperator;->mSalesCodeList:Ljava/util/HashMap;

    const-string v1, "KTO"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/incallui/service/vt/VideoCallOperator;->mSalesCodeList:Ljava/util/HashMap;

    const-string v1, "LGT"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/incallui/service/vt/VideoCallOperator;->mSalesCodeList:Ljava/util/HashMap;

    const-string v1, "LUC"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/incallui/service/vt/VideoCallOperator;->mSalesCodeList:Ljava/util/HashMap;

    const-string v1, "LUO"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/incallui/service/vt/VideoCallOperator;->mSalesCodeList:Ljava/util/HashMap;

    const-string v1, "ANY"

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/incallui/service/vt/VideoCallOperator;->mSalesCodeList:Ljava/util/HashMap;

    const-string v1, "KOO"

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/incallui/service/vt/VideoCallOperator;->mSalesCodeList:Ljava/util/HashMap;

    const-string v1, "XAS"

    const/16 v2, 0xca

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/incallui/service/vt/VideoCallOperator;->mSalesCodeList:Ljava/util/HashMap;

    const-string v1, "SPR"

    const/16 v2, 0xcb

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/incallui/service/vt/VideoCallOperator;->mSalesCodeList:Ljava/util/HashMap;

    const-string v1, "VZW"

    const/16 v2, 0xc9

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/incallui/service/vt/VideoCallOperator;->mSalesCodeList:Ljava/util/HashMap;

    const-string v1, "VMU"

    const/16 v2, 0xcc

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/incallui/service/vt/VideoCallOperator;->mSalesCodeList:Ljava/util/HashMap;

    const-string v1, "BST"

    const/16 v2, 0xcd

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/incallui/service/vt/VideoCallOperator;->mSalesCodeList:Ljava/util/HashMap;

    const-string v1, "USC"

    const/16 v2, 0xfd

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/incallui/service/vt/VideoCallOperator;->mSalesCodeList:Ljava/util/HashMap;

    const-string v1, "MTR"

    const/16 v2, 0xcf

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/incallui/service/vt/VideoCallOperator;->mSalesCodeList:Ljava/util/HashMap;

    const-string v1, "ACG"

    const/16 v2, 0xd0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/incallui/service/vt/VideoCallOperator;->mSalesCodeList:Ljava/util/HashMap;

    const-string v1, "XAR"

    const/16 v2, 0xd1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/incallui/service/vt/VideoCallOperator;->mSalesCodeList:Ljava/util/HashMap;

    const-string v1, "CRI"

    const/16 v2, 0xd2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/incallui/service/vt/VideoCallOperator;->mSalesCodeList:Ljava/util/HashMap;

    const-string v1, "TFN"

    const/16 v2, 0xd3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/incallui/service/vt/VideoCallOperator;->mSalesCodeList:Ljava/util/HashMap;

    const-string v1, "CSP"

    const/16 v2, 0xd4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/incallui/service/vt/VideoCallOperator;->mSalesCodeList:Ljava/util/HashMap;

    const-string v1, "LRA"

    const/16 v2, 0xf9

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/incallui/service/vt/VideoCallOperator;->mSalesCodeList:Ljava/util/HashMap;

    const-string v1, "ATT"

    const/16 v2, 0x12b

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/incallui/service/vt/VideoCallOperator;->mSalesCodeList:Ljava/util/HashMap;

    const-string v1, "AIO"

    const/16 v2, 0xfa

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/incallui/service/vt/VideoCallOperator;->mSalesCodeList:Ljava/util/HashMap;

    const-string v1, "TMB"

    const/16 v2, 0xfb

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/incallui/service/vt/VideoCallOperator;->mSalesCodeList:Ljava/util/HashMap;

    const-string v1, "TMK"

    const/16 v2, 0xfc

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/incallui/service/vt/VideoCallOperator;->mSalesCodeList:Ljava/util/HashMap;

    const-string v1, "VTR"

    const/16 v2, 0x12d

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/incallui/service/vt/VideoCallOperator;->mSalesCodeList:Ljava/util/HashMap;

    const-string v1, "BMA"

    const/16 v2, 0x12e

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/incallui/service/vt/VideoCallOperator;->mSalesCodeList:Ljava/util/HashMap;

    const-string v1, "RWC"

    const/16 v2, 0x12f

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/incallui/service/vt/VideoCallOperator;->mSalesCodeList:Ljava/util/HashMap;

    const-string v1, "FMC"

    const/16 v2, 0x130

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/incallui/service/vt/VideoCallOperator;->mSalesCodeList:Ljava/util/HashMap;

    const-string v1, "RWA"

    const/16 v2, 0x131

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/incallui/service/vt/VideoCallOperator;->mSalesCodeList:Ljava/util/HashMap;

    const-string v1, "BMC"

    const/16 v2, 0x132

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/incallui/service/vt/VideoCallOperator;->mSalesCodeList:Ljava/util/HashMap;

    const-string v1, "VMC"

    const/16 v2, 0x133

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/incallui/service/vt/VideoCallOperator;->mSalesCodeList:Ljava/util/HashMap;

    const-string v1, "BWA"

    const/16 v2, 0x134

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/incallui/service/vt/VideoCallOperator;->mSalesCodeList:Ljava/util/HashMap;

    const-string v1, "TLS"

    const/16 v2, 0x135

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/incallui/service/vt/VideoCallOperator;->mSalesCodeList:Ljava/util/HashMap;

    const-string v1, "KDO"

    const/16 v2, 0x136

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/incallui/service/vt/VideoCallOperator;->mSalesCodeList:Ljava/util/HashMap;

    const-string v1, "ESK"

    const/16 v2, 0x137

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/incallui/service/vt/VideoCallOperator;->mSalesCodeList:Ljava/util/HashMap;

    const-string v1, "GLW"

    const/16 v2, 0x138

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/incallui/service/vt/VideoCallOperator;->mSalesCodeList:Ljava/util/HashMap;

    const-string v1, "CHM"

    const/16 v2, 0x1f5

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/incallui/service/vt/VideoCallOperator;->mSalesCodeList:Ljava/util/HashMap;

    const-string v1, "CTC"

    const/16 v2, 0x1f6

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/incallui/service/vt/VideoCallOperator;->mSalesCodeList:Ljava/util/HashMap;

    const-string v1, "CHN"

    const/16 v2, 0x1f7

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/incallui/service/vt/VideoCallOperator;->mSalesCodeList:Ljava/util/HashMap;

    const-string v1, "CHU"

    const/16 v2, 0x1f8

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/incallui/service/vt/VideoCallOperator;->mSalesCodeList:Ljava/util/HashMap;

    const-string v1, "CHC"

    const/16 v2, 0x1f9

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/incallui/service/vt/VideoCallOperator;->mSalesCodeList:Ljava/util/HashMap;

    const-string v1, "TGY"

    const/16 v2, 0x259

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/incallui/service/vt/VideoCallOperator;->mSalesCodeList:Ljava/util/HashMap;

    const-string v1, "BRI"

    const/16 v2, 0x25a

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/incallui/service/vt/VideoCallOperator;->mSalesCodeList:Ljava/util/HashMap;

    const-string v1, "CWT"

    const/16 v2, 0x25b

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/incallui/service/vt/VideoCallOperator;->mSalesCodeList:Ljava/util/HashMap;

    const-string v1, "TWN"

    const/16 v2, 0x25c

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/incallui/service/vt/VideoCallOperator;->mSalesCodeList:Ljava/util/HashMap;

    const-string v1, "FET"

    const/16 v2, 0x25d

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/incallui/service/vt/VideoCallOperator;->mSalesCodeList:Ljava/util/HashMap;

    const-string v1, "ZZH"

    const/16 v2, 0x25e

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/incallui/service/vt/VideoCallOperator;->mSalesCodeList:Ljava/util/HashMap;

    const-string v1, "INU"

    const/16 v2, 0x2bd

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/incallui/service/vt/VideoCallOperator;->mSalesCodeList:Ljava/util/HashMap;

    const-string v1, "INS"

    const/16 v2, 0x2be

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/incallui/service/vt/VideoCallOperator;->mSalesCodeList:Ljava/util/HashMap;

    const-string v1, "SWC"

    const/16 v2, 0x2bf

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/incallui/service/vt/VideoCallOperator;->mSalesCodeList:Ljava/util/HashMap;

    const-string v1, "TEL"

    const/16 v2, 0x321

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/incallui/service/vt/VideoCallOperator;->mSalesCodeList:Ljava/util/HashMap;

    const-string v1, "TLP"

    const/16 v2, 0x322

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/incallui/service/vt/VideoCallOperator;->mSalesCodeList:Ljava/util/HashMap;

    const-string v1, "VAU"

    const/16 v2, 0x323

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/incallui/service/vt/VideoCallOperator;->mSalesCodeList:Ljava/util/HashMap;

    const-string v1, "DCM"

    const/16 v2, 0x384

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/incallui/service/vt/VideoCallOperator;->mSalesCodeList:Ljava/util/HashMap;

    const-string v1, "VIA"

    const/16 v2, 0x3e8

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/incallui/service/vt/VideoCallOperator;->mSalesCodeList:Ljava/util/HashMap;

    const-string v1, "TUR"

    const/16 v2, 0x44c

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method protected static isAus()Z
    .locals 2

    sget v0, Lcom/android/incallui/service/vt/VideoCallOperator;->mOperator:I

    const/16 v1, 0x320

    if-lt v0, v1, :cond_0

    sget v0, Lcom/android/incallui/service/vt/VideoCallOperator;->mOperator:I

    const/16 v1, 0x383

    if-gt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected static isCan()Z
    .locals 2

    sget v0, Lcom/android/incallui/service/vt/VideoCallOperator;->mOperator:I

    const/16 v1, 0x12c

    if-lt v0, v1, :cond_0

    sget v0, Lcom/android/incallui/service/vt/VideoCallOperator;->mOperator:I

    const/16 v1, 0x18f

    if-gt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected static isCan_BMA()Z
    .locals 2

    sget v0, Lcom/android/incallui/service/vt/VideoCallOperator;->mOperator:I

    const/16 v1, 0x12e

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected static isCan_BMC()Z
    .locals 2

    sget v0, Lcom/android/incallui/service/vt/VideoCallOperator;->mOperator:I

    const/16 v1, 0x132

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected static isCan_Cdma()Z
    .locals 2

    sget v0, Lcom/android/incallui/service/vt/VideoCallOperator;->mOperator:I

    const/16 v1, 0x15e

    if-lt v0, v1, :cond_0

    sget v0, Lcom/android/incallui/service/vt/VideoCallOperator;->mOperator:I

    const/16 v1, 0x18f

    if-gt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected static isCan_FMC()Z
    .locals 2

    sget v0, Lcom/android/incallui/service/vt/VideoCallOperator;->mOperator:I

    const/16 v1, 0x130

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected static isCan_Gsm()Z
    .locals 2

    sget v0, Lcom/android/incallui/service/vt/VideoCallOperator;->mOperator:I

    const/16 v1, 0x12c

    if-lt v0, v1, :cond_0

    sget v0, Lcom/android/incallui/service/vt/VideoCallOperator;->mOperator:I

    const/16 v1, 0x15d

    if-gt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected static isCan_RWA()Z
    .locals 2

    sget v0, Lcom/android/incallui/service/vt/VideoCallOperator;->mOperator:I

    const/16 v1, 0x131

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected static isCan_RWC()Z
    .locals 2

    sget v0, Lcom/android/incallui/service/vt/VideoCallOperator;->mOperator:I

    const/16 v1, 0x12f

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected static isCan_VMC()Z
    .locals 2

    sget v0, Lcom/android/incallui/service/vt/VideoCallOperator;->mOperator:I

    const/16 v1, 0x133

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected static isChn()Z
    .locals 2

    sget v0, Lcom/android/incallui/service/vt/VideoCallOperator;->mOperator:I

    const/16 v1, 0x1f4

    if-lt v0, v1, :cond_0

    sget v0, Lcom/android/incallui/service/vt/VideoCallOperator;->mOperator:I

    const/16 v1, 0x257

    if-gt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected static isChn_CMCC()Z
    .locals 2

    sget v0, Lcom/android/incallui/service/vt/VideoCallOperator;->mOperator:I

    const/16 v1, 0x1f5

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected static isHkTw()Z
    .locals 2

    sget v0, Lcom/android/incallui/service/vt/VideoCallOperator;->mOperator:I

    const/16 v1, 0x258

    if-lt v0, v1, :cond_0

    sget v0, Lcom/android/incallui/service/vt/VideoCallOperator;->mOperator:I

    const/16 v1, 0x2bb

    if-gt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected static isInd()Z
    .locals 2

    sget v0, Lcom/android/incallui/service/vt/VideoCallOperator;->mOperator:I

    const/16 v1, 0x2bc

    if-lt v0, v1, :cond_0

    sget v0, Lcom/android/incallui/service/vt/VideoCallOperator;->mOperator:I

    const/16 v1, 0x31f

    if-gt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected static isInd_INS()Z
    .locals 2

    sget v0, Lcom/android/incallui/service/vt/VideoCallOperator;->mOperator:I

    const/16 v1, 0x2be

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected static isInd_INU()Z
    .locals 2

    sget v0, Lcom/android/incallui/service/vt/VideoCallOperator;->mOperator:I

    const/16 v1, 0x2bd

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected static isInd_SWC()Z
    .locals 2

    sget v0, Lcom/android/incallui/service/vt/VideoCallOperator;->mOperator:I

    const/16 v1, 0x2bf

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected static isJpn()Z
    .locals 2

    sget v0, Lcom/android/incallui/service/vt/VideoCallOperator;->mOperator:I

    const/16 v1, 0x384

    if-lt v0, v1, :cond_0

    sget v0, Lcom/android/incallui/service/vt/VideoCallOperator;->mOperator:I

    const/16 v1, 0x3e7

    if-gt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected static isJpn_DCM()Z
    .locals 2

    sget v0, Lcom/android/incallui/service/vt/VideoCallOperator;->mOperator:I

    const/16 v1, 0x384

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected static isKor()Z
    .locals 2

    sget v0, Lcom/android/incallui/service/vt/VideoCallOperator;->mOperator:I

    const/16 v1, 0x64

    if-lt v0, v1, :cond_0

    sget v0, Lcom/android/incallui/service/vt/VideoCallOperator;->mOperator:I

    const/16 v1, 0xc7

    if-gt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected static isKor_KTT()Z
    .locals 2

    sget v0, Lcom/android/incallui/service/vt/VideoCallOperator;->mOperator:I

    const/16 v1, 0x66

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected static isKor_LGU()Z
    .locals 2

    sget v0, Lcom/android/incallui/service/vt/VideoCallOperator;->mOperator:I

    const/16 v1, 0x67

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected static isKor_Open()Z
    .locals 2

    sget v0, Lcom/android/incallui/service/vt/VideoCallOperator;->mOperator:I

    const/16 v1, 0x64

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected static isKor_SKT()Z
    .locals 2

    sget v0, Lcom/android/incallui/service/vt/VideoCallOperator;->mOperator:I

    const/16 v1, 0x65

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected static isTelstra()Z
    .locals 2

    sget v0, Lcom/android/incallui/service/vt/VideoCallOperator;->mOperator:I

    const/16 v1, 0x321

    if-eq v0, v1, :cond_0

    sget v0, Lcom/android/incallui/service/vt/VideoCallOperator;->mOperator:I

    const/16 v1, 0x322

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected static isUsa()Z
    .locals 2

    sget v0, Lcom/android/incallui/service/vt/VideoCallOperator;->mOperator:I

    const/16 v1, 0xc8

    if-lt v0, v1, :cond_0

    sget v0, Lcom/android/incallui/service/vt/VideoCallOperator;->mOperator:I

    const/16 v1, 0x12b

    if-gt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected static isUsa_ATT()Z
    .locals 2

    sget v0, Lcom/android/incallui/service/vt/VideoCallOperator;->mOperator:I

    const/16 v1, 0x12b

    if-eq v0, v1, :cond_0

    sget v0, Lcom/android/incallui/service/vt/VideoCallOperator;->mOperator:I

    const/16 v1, 0xfa

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected static isUsa_Cdma()Z
    .locals 2

    sget v0, Lcom/android/incallui/service/vt/VideoCallOperator;->mOperator:I

    const/16 v1, 0xc8

    if-lt v0, v1, :cond_0

    sget v0, Lcom/android/incallui/service/vt/VideoCallOperator;->mOperator:I

    const/16 v1, 0xf9

    if-gt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected static isUsa_Gsm()Z
    .locals 2

    sget v0, Lcom/android/incallui/service/vt/VideoCallOperator;->mOperator:I

    const/16 v1, 0xfa

    if-lt v0, v1, :cond_0

    sget v0, Lcom/android/incallui/service/vt/VideoCallOperator;->mOperator:I

    const/16 v1, 0x12b

    if-gt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected static isUsa_MPCS()Z
    .locals 2

    sget v0, Lcom/android/incallui/service/vt/VideoCallOperator;->mOperator:I

    const/16 v1, 0xcf

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected static isUsa_TMO()Z
    .locals 2

    sget v0, Lcom/android/incallui/service/vt/VideoCallOperator;->mOperator:I

    const/16 v1, 0xfb

    if-eq v0, v1, :cond_0

    sget v0, Lcom/android/incallui/service/vt/VideoCallOperator;->mOperator:I

    const/16 v1, 0xfc

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected static isUsa_USC()Z
    .locals 2

    sget v0, Lcom/android/incallui/service/vt/VideoCallOperator;->mOperator:I

    const/16 v1, 0xfd

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected static isUsa_VZW()Z
    .locals 2

    sget v0, Lcom/android/incallui/service/vt/VideoCallOperator;->mOperator:I

    const/16 v1, 0xc9

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected static set(Ljava/lang/String;)V
    .locals 1

    invoke-static {}, Lcom/android/incallui/service/vt/VideoCallOperator;->createSalesCodeList()V

    sget-object v0, Lcom/android/incallui/service/vt/VideoCallOperator;->mSalesCodeList:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/incallui/service/vt/VideoCallOperator;->mSalesCodeList:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sput v0, Lcom/android/incallui/service/vt/VideoCallOperator;->mOperator:I

    :cond_0
    return-void
.end method
