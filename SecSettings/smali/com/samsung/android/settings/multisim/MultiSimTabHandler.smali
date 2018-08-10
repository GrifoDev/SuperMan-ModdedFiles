.class public Lcom/samsung/android/settings/multisim/MultiSimTabHandler;
.super Ljava/lang/Object;
.source "MultiSimTabHandler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/settings/multisim/MultiSimTabHandler$1;,
        Lcom/samsung/android/settings/multisim/MultiSimTabHandler$2;
    }
.end annotation


# static fields
.field private static TAG:Ljava/lang/String;


# instance fields
.field public mSimSlot:I

.field public mSubId:J

.field private mTabHost:Landroid/widget/TabHost;

.field private tabInterface:Lcom/samsung/android/settings/multisim/MultiSimTabInterface;


# direct methods
.method static synthetic -get0()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/samsung/android/settings/multisim/MultiSimTabHandler;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get1(Lcom/samsung/android/settings/multisim/MultiSimTabHandler;)Landroid/widget/TabHost;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/multisim/MultiSimTabHandler;->mTabHost:Landroid/widget/TabHost;

    return-object v0
.end method

.method static synthetic -get2(Lcom/samsung/android/settings/multisim/MultiSimTabHandler;)Lcom/samsung/android/settings/multisim/MultiSimTabInterface;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/multisim/MultiSimTabHandler;->tabInterface:Lcom/samsung/android/settings/multisim/MultiSimTabInterface;

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 1

    const-string/jumbo v0, "MultiSimTabHandler"

    sput-object v0, Lcom/samsung/android/settings/multisim/MultiSimTabHandler;->TAG:Ljava/lang/String;

    return-void
.end method
