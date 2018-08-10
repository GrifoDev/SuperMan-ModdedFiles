.class Lcom/kddi/android/CpaNotiReceiver$NaviSettings;
.super Ljava/lang/Object;
.source "CpaNotiReceiver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kddi/android/CpaNotiReceiver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "NaviSettings"
.end annotation


# instance fields
.field public apn:Ljava/lang/String;

.field public authType:I

.field public dns1:Ljava/lang/String;

.field public dns2:Ljava/lang/String;

.field public password:Ljava/lang/String;

.field public proxyHost:Ljava/lang/String;

.field public proxyPort:Ljava/lang/String;

.field public userId:Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/kddi/android/CpaNotiReceiver$NaviSettings;)V
    .locals 0

    invoke-direct {p0}, Lcom/kddi/android/CpaNotiReceiver$NaviSettings;-><init>()V

    return-void
.end method
