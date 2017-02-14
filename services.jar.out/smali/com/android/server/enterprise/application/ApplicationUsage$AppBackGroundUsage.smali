.class Lcom/android/server/enterprise/application/ApplicationUsage$AppBackGroundUsage;
.super Ljava/lang/Object;
.source "ApplicationUsage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/enterprise/application/ApplicationUsage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "AppBackGroundUsage"
.end annotation


# instance fields
.field appLastServiceStartTime:J

.field appLastServiceStopTime:J


# direct methods
.method private constructor <init>()V
    .locals 2

    const-wide/16 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide v0, p0, Lcom/android/server/enterprise/application/ApplicationUsage$AppBackGroundUsage;->appLastServiceStartTime:J

    iput-wide v0, p0, Lcom/android/server/enterprise/application/ApplicationUsage$AppBackGroundUsage;->appLastServiceStopTime:J

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/enterprise/application/ApplicationUsage$AppBackGroundUsage;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/enterprise/application/ApplicationUsage$AppBackGroundUsage;-><init>()V

    return-void
.end method
