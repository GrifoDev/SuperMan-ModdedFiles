.class Lcom/android/server/enterprise/otp/RateCheck$RateData;
.super Ljava/lang/Object;
.source "RateCheck.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/enterprise/otp/RateCheck;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "RateData"
.end annotation


# instance fields
.field private caller:Ljava/lang/String;

.field private result:Z

.field private timestamp:J


# direct methods
.method static synthetic -get0(Lcom/android/server/enterprise/otp/RateCheck$RateData;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/server/enterprise/otp/RateCheck$RateData;->caller:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/server/enterprise/otp/RateCheck$RateData;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/enterprise/otp/RateCheck$RateData;->result:Z

    return v0
.end method

.method static synthetic -get2(Lcom/android/server/enterprise/otp/RateCheck$RateData;)J
    .locals 2

    iget-wide v0, p0, Lcom/android/server/enterprise/otp/RateCheck$RateData;->timestamp:J

    return-wide v0
.end method

.method public constructor <init>(Ljava/lang/String;IJZ)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/enterprise/otp/RateCheck$RateData;->caller:Ljava/lang/String;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/server/enterprise/otp/RateCheck$RateData;->timestamp:J

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/enterprise/otp/RateCheck$RateData;->result:Z

    iput-object p1, p0, Lcom/android/server/enterprise/otp/RateCheck$RateData;->caller:Ljava/lang/String;

    iput-wide p3, p0, Lcom/android/server/enterprise/otp/RateCheck$RateData;->timestamp:J

    iput-boolean p5, p0, Lcom/android/server/enterprise/otp/RateCheck$RateData;->result:Z

    return-void
.end method
