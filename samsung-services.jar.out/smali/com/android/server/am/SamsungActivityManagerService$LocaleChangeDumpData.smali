.class Lcom/android/server/am/SamsungActivityManagerService$LocaleChangeDumpData;
.super Ljava/lang/Object;
.source "SamsungActivityManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/SamsungActivityManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LocaleChangeDumpData"
.end annotation


# instance fields
.field public mCallstack:Ljava/lang/RuntimeException;

.field public mMsg:Ljava/lang/String;

.field public mSystemTimeMillis:J

.field public mTimeZone:Ljava/util/TimeZone;

.field final synthetic this$0:Lcom/android/server/am/SamsungActivityManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/am/SamsungActivityManagerService;JLjava/lang/String;)V
    .locals 2

    iput-object p1, p0, Lcom/android/server/am/SamsungActivityManagerService$LocaleChangeDumpData;->this$0:Lcom/android/server/am/SamsungActivityManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/server/am/SamsungActivityManagerService$LocaleChangeDumpData;->mSystemTimeMillis:J

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/SamsungActivityManagerService$LocaleChangeDumpData;->mCallstack:Ljava/lang/RuntimeException;

    invoke-virtual {p0, p2, p3, p4}, Lcom/android/server/am/SamsungActivityManagerService$LocaleChangeDumpData;->updateData(JLjava/lang/String;)V

    return-void
.end method


# virtual methods
.method public updateData(JLjava/lang/String;)V
    .locals 1

    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/am/SamsungActivityManagerService$LocaleChangeDumpData;->mTimeZone:Ljava/util/TimeZone;

    iput-wide p1, p0, Lcom/android/server/am/SamsungActivityManagerService$LocaleChangeDumpData;->mSystemTimeMillis:J

    iput-object p3, p0, Lcom/android/server/am/SamsungActivityManagerService$LocaleChangeDumpData;->mMsg:Ljava/lang/String;

    iget-object v0, p0, Lcom/android/server/am/SamsungActivityManagerService$LocaleChangeDumpData;->mCallstack:Ljava/lang/RuntimeException;

    invoke-virtual {v0}, Ljava/lang/RuntimeException;->fillInStackTrace()Ljava/lang/Throwable;

    return-void
.end method
