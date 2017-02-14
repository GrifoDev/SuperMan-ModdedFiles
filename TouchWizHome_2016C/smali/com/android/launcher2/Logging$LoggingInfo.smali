.class Lcom/android/launcher2/Logging$LoggingInfo;
.super Ljava/lang/Object;
.source "Logging.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher2/Logging;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "LoggingInfo"
.end annotation


# instance fields
.field private mExtras:Ljava/lang/String;

.field private mFeatures:Ljava/lang/String;

.field private mValues:J


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;J)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher2/Logging$LoggingInfo;->mFeatures:Ljava/lang/String;

    iput-object p2, p0, Lcom/android/launcher2/Logging$LoggingInfo;->mExtras:Ljava/lang/String;

    iput-wide p3, p0, Lcom/android/launcher2/Logging$LoggingInfo;->mValues:J

    return-void
.end method


# virtual methods
.method public getExtras()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher2/Logging$LoggingInfo;->mExtras:Ljava/lang/String;

    return-object v0
.end method

.method public getFeatures()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher2/Logging$LoggingInfo;->mFeatures:Ljava/lang/String;

    return-object v0
.end method

.method public getValues()J
    .locals 2

    iget-wide v0, p0, Lcom/android/launcher2/Logging$LoggingInfo;->mValues:J

    return-wide v0
.end method
