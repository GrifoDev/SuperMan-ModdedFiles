.class Lcom/android/contacts/common/util/StopWatch$NullStopWatch;
.super Lcom/android/contacts/common/util/StopWatch;
.source "StopWatch.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/common/util/StopWatch;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "NullStopWatch"
.end annotation


# static fields
.field public static final INSTANCE:Lcom/android/contacts/common/util/StopWatch$NullStopWatch;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 95
    new-instance v0, Lcom/android/contacts/common/util/StopWatch$NullStopWatch;

    invoke-direct {v0}, Lcom/android/contacts/common/util/StopWatch$NullStopWatch;-><init>()V

    sput-object v0, Lcom/android/contacts/common/util/StopWatch$NullStopWatch;->INSTANCE:Lcom/android/contacts/common/util/StopWatch$NullStopWatch;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 98
    invoke-direct {p0, v0, v0}, Lcom/android/contacts/common/util/StopWatch;-><init>(Ljava/lang/String;Lcom/android/contacts/common/util/StopWatch$1;)V

    .line 99
    return-void
.end method


# virtual methods
.method public lap(Ljava/lang/String;)V
    .locals 0
    .param p1, "lapLabel"    # Ljava/lang/String;

    .prologue
    .line 104
    return-void
.end method

.method public stopAndLog(Ljava/lang/String;I)V
    .locals 0
    .param p1, "TAG"    # Ljava/lang/String;
    .param p2, "timeThresholdToLog"    # I

    .prologue
    .line 109
    return-void
.end method
