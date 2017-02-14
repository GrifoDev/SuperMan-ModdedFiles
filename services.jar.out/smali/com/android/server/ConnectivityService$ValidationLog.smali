.class Lcom/android/server/ConnectivityService$ValidationLog;
.super Ljava/lang/Object;
.source "ConnectivityService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/ConnectivityService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ValidationLog"
.end annotation


# instance fields
.field final mLog:Landroid/util/LocalLog$ReadOnlyLocalLog;

.field final mNetwork:Landroid/net/Network;

.field final mNetworkExtraInfo:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/net/Network;Ljava/lang/String;Landroid/util/LocalLog$ReadOnlyLocalLog;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/ConnectivityService$ValidationLog;->mNetwork:Landroid/net/Network;

    iput-object p2, p0, Lcom/android/server/ConnectivityService$ValidationLog;->mNetworkExtraInfo:Ljava/lang/String;

    iput-object p3, p0, Lcom/android/server/ConnectivityService$ValidationLog;->mLog:Landroid/util/LocalLog$ReadOnlyLocalLog;

    return-void
.end method
