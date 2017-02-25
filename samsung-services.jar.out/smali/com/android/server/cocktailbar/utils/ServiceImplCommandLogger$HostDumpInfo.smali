.class Lcom/android/server/cocktailbar/utils/ServiceImplCommandLogger$HostDumpInfo;
.super Ljava/lang/Object;
.source "ServiceImplCommandLogger.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/cocktailbar/utils/ServiceImplCommandLogger;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "HostDumpInfo"
.end annotation


# instance fields
.field mCommandHistory:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field mEndTime:Ljava/lang/String;

.field mStratTime:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/server/cocktailbar/utils/ServiceImplCommandLogger;


# direct methods
.method private constructor <init>(Lcom/android/server/cocktailbar/utils/ServiceImplCommandLogger;)V
    .locals 1

    iput-object p1, p0, Lcom/android/server/cocktailbar/utils/ServiceImplCommandLogger$HostDumpInfo;->this$0:Lcom/android/server/cocktailbar/utils/ServiceImplCommandLogger;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/cocktailbar/utils/ServiceImplCommandLogger$HostDumpInfo;->mCommandHistory:Ljava/util/ArrayList;

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/cocktailbar/utils/ServiceImplCommandLogger;Lcom/android/server/cocktailbar/utils/ServiceImplCommandLogger$HostDumpInfo;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/cocktailbar/utils/ServiceImplCommandLogger$HostDumpInfo;-><init>(Lcom/android/server/cocktailbar/utils/ServiceImplCommandLogger;)V

    return-void
.end method
