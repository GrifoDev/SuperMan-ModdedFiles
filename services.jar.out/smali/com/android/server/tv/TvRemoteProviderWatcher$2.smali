.class Lcom/android/server/tv/TvRemoteProviderWatcher$2;
.super Ljava/lang/Object;
.source "TvRemoteProviderWatcher.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/tv/TvRemoteProviderWatcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/tv/TvRemoteProviderWatcher;


# direct methods
.method constructor <init>(Lcom/android/server/tv/TvRemoteProviderWatcher;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/tv/TvRemoteProviderWatcher$2;->this$0:Lcom/android/server/tv/TvRemoteProviderWatcher;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/android/server/tv/TvRemoteProviderWatcher$2;->this$0:Lcom/android/server/tv/TvRemoteProviderWatcher;

    invoke-static {v0}, Lcom/android/server/tv/TvRemoteProviderWatcher;->-wrap0(Lcom/android/server/tv/TvRemoteProviderWatcher;)V

    return-void
.end method
