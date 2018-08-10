.class Lcom/android/server/am/SamsungActivityManagerService$LocaleChangedHistory$LocaleChangedEntry;
.super Ljava/lang/Object;
.source "SamsungActivityManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/SamsungActivityManagerService$LocaleChangedHistory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "LocaleChangedEntry"
.end annotation


# instance fields
.field final callstack:Ljava/lang/Throwable;

.field final message:Ljava/lang/String;

.field final systemTimeMillis:J

.field final timeZone:Ljava/util/TimeZone;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/am/SamsungActivityManagerService$LocaleChangedHistory$LocaleChangedEntry;->systemTimeMillis:J

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/SamsungActivityManagerService$LocaleChangedHistory$LocaleChangedEntry;->callstack:Ljava/lang/Throwable;

    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/am/SamsungActivityManagerService$LocaleChangedHistory$LocaleChangedEntry;->timeZone:Ljava/util/TimeZone;

    iput-object p1, p0, Lcom/android/server/am/SamsungActivityManagerService$LocaleChangedHistory$LocaleChangedEntry;->message:Ljava/lang/String;

    iget-object v0, p0, Lcom/android/server/am/SamsungActivityManagerService$LocaleChangedHistory$LocaleChangedEntry;->callstack:Ljava/lang/Throwable;

    invoke-virtual {v0}, Ljava/lang/Throwable;->fillInStackTrace()Ljava/lang/Throwable;

    return-void
.end method
