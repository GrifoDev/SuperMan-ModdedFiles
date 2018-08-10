.class Landroid/support/v7/media/SystemMediaRouteProvider$LegacyImpl;
.super Landroid/support/v7/media/SystemMediaRouteProvider;
.source "SystemMediaRouteProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/media/SystemMediaRouteProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "LegacyImpl"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v7/media/SystemMediaRouteProvider$LegacyImpl$DefaultRouteController;,
        Landroid/support/v7/media/SystemMediaRouteProvider$LegacyImpl$VolumeChangeReceiver;
    }
.end annotation


# static fields
.field private static final CONTROL_FILTERS:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/IntentFilter;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field final mAudioManager:Landroid/media/AudioManager;

.field mLastReportedVolume:I

.field private final mVolumeChangeReceiver:Landroid/support/v7/media/SystemMediaRouteProvider$LegacyImpl$VolumeChangeReceiver;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string/jumbo v1, "android.media.intent.category.LIVE_AUDIO"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addCategory(Ljava/lang/String;)V

    const-string/jumbo v1, "android.media.intent.category.LIVE_VIDEO"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addCategory(Ljava/lang/String;)V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    sput-object v1, Landroid/support/v7/media/SystemMediaRouteProvider$LegacyImpl;->CONTROL_FILTERS:Ljava/util/ArrayList;

    sget-object v1, Landroid/support/v7/media/SystemMediaRouteProvider$LegacyImpl;->CONTROL_FILTERS:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    invoke-direct {p0, p1}, Landroid/support/v7/media/SystemMediaRouteProvider;-><init>(Landroid/content/Context;)V

    const/4 v0, -0x1

    iput v0, p0, Landroid/support/v7/media/SystemMediaRouteProvider$LegacyImpl;->mLastReportedVolume:I

    const-string/jumbo v0, "audio"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Landroid/support/v7/media/SystemMediaRouteProvider$LegacyImpl;->mAudioManager:Landroid/media/AudioManager;

    new-instance v0, Landroid/support/v7/media/SystemMediaRouteProvider$LegacyImpl$VolumeChangeReceiver;

    invoke-direct {v0, p0}, Landroid/support/v7/media/SystemMediaRouteProvider$LegacyImpl$VolumeChangeReceiver;-><init>(Landroid/support/v7/media/SystemMediaRouteProvider$LegacyImpl;)V

    iput-object v0, p0, Landroid/support/v7/media/SystemMediaRouteProvider$LegacyImpl;->mVolumeChangeReceiver:Landroid/support/v7/media/SystemMediaRouteProvider$LegacyImpl$VolumeChangeReceiver;

    iget-object v0, p0, Landroid/support/v7/media/SystemMediaRouteProvider$LegacyImpl;->mVolumeChangeReceiver:Landroid/support/v7/media/SystemMediaRouteProvider$LegacyImpl$VolumeChangeReceiver;

    new-instance v1, Landroid/content/IntentFilter;

    const-string/jumbo v2, "android.media.VOLUME_CHANGED_ACTION"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    invoke-virtual {p0}, Landroid/support/v7/media/SystemMediaRouteProvider$LegacyImpl;->publishRoutes()V

    return-void
.end method


# virtual methods
.method public onCreateRouteController(Ljava/lang/String;)Landroid/support/v7/media/MediaRouteProvider$RouteController;
    .locals 1

    const-string/jumbo v0, "DEFAULT_ROUTE"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Landroid/support/v7/media/SystemMediaRouteProvider$LegacyImpl$DefaultRouteController;

    invoke-direct {v0, p0}, Landroid/support/v7/media/SystemMediaRouteProvider$LegacyImpl$DefaultRouteController;-><init>(Landroid/support/v7/media/SystemMediaRouteProvider$LegacyImpl;)V

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method publishRoutes()V
    .locals 8

    const/4 v7, 0x3

    invoke-virtual {p0}, Landroid/support/v7/media/SystemMediaRouteProvider$LegacyImpl;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    iget-object v4, p0, Landroid/support/v7/media/SystemMediaRouteProvider$LegacyImpl;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v4, v7}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    move-result v1

    iget-object v4, p0, Landroid/support/v7/media/SystemMediaRouteProvider$LegacyImpl;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v4, v7}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v4

    iput v4, p0, Landroid/support/v7/media/SystemMediaRouteProvider$LegacyImpl;->mLastReportedVolume:I

    new-instance v4, Landroid/support/v7/media/MediaRouteDescriptor$Builder;

    const-string/jumbo v5, "DEFAULT_ROUTE"

    sget v6, Landroid/support/v7/mediarouter/R$string;->mr_system_route_name:I

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Landroid/support/v7/media/MediaRouteDescriptor$Builder;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v5, Landroid/support/v7/media/SystemMediaRouteProvider$LegacyImpl;->CONTROL_FILTERS:Ljava/util/ArrayList;

    invoke-virtual {v4, v5}, Landroid/support/v7/media/MediaRouteDescriptor$Builder;->addControlFilters(Ljava/util/Collection;)Landroid/support/v7/media/MediaRouteDescriptor$Builder;

    move-result-object v4

    invoke-virtual {v4, v7}, Landroid/support/v7/media/MediaRouteDescriptor$Builder;->setPlaybackStream(I)Landroid/support/v7/media/MediaRouteDescriptor$Builder;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/support/v7/media/MediaRouteDescriptor$Builder;->setPlaybackType(I)Landroid/support/v7/media/MediaRouteDescriptor$Builder;

    move-result-object v4

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Landroid/support/v7/media/MediaRouteDescriptor$Builder;->setVolumeHandling(I)Landroid/support/v7/media/MediaRouteDescriptor$Builder;

    move-result-object v4

    invoke-virtual {v4, v1}, Landroid/support/v7/media/MediaRouteDescriptor$Builder;->setVolumeMax(I)Landroid/support/v7/media/MediaRouteDescriptor$Builder;

    move-result-object v4

    iget v5, p0, Landroid/support/v7/media/SystemMediaRouteProvider$LegacyImpl;->mLastReportedVolume:I

    invoke-virtual {v4, v5}, Landroid/support/v7/media/MediaRouteDescriptor$Builder;->setVolume(I)Landroid/support/v7/media/MediaRouteDescriptor$Builder;

    move-result-object v4

    invoke-virtual {v4}, Landroid/support/v7/media/MediaRouteDescriptor$Builder;->build()Landroid/support/v7/media/MediaRouteDescriptor;

    move-result-object v0

    new-instance v4, Landroid/support/v7/media/MediaRouteProviderDescriptor$Builder;

    invoke-direct {v4}, Landroid/support/v7/media/MediaRouteProviderDescriptor$Builder;-><init>()V

    invoke-virtual {v4, v0}, Landroid/support/v7/media/MediaRouteProviderDescriptor$Builder;->addRoute(Landroid/support/v7/media/MediaRouteDescriptor;)Landroid/support/v7/media/MediaRouteProviderDescriptor$Builder;

    move-result-object v4

    invoke-virtual {v4}, Landroid/support/v7/media/MediaRouteProviderDescriptor$Builder;->build()Landroid/support/v7/media/MediaRouteProviderDescriptor;

    move-result-object v2

    invoke-virtual {p0, v2}, Landroid/support/v7/media/SystemMediaRouteProvider$LegacyImpl;->setDescriptor(Landroid/support/v7/media/MediaRouteProviderDescriptor;)V

    return-void
.end method
