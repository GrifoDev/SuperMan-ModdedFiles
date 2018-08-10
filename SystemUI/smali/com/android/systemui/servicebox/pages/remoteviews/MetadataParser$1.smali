.class Lcom/android/systemui/servicebox/pages/remoteviews/MetadataParser$1;
.super Lcom/android/keyguard/KeyguardUpdateMonitorCallback;
.source "MetadataParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/servicebox/pages/remoteviews/MetadataParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/servicebox/pages/remoteviews/MetadataParser;


# direct methods
.method constructor <init>(Lcom/android/systemui/servicebox/pages/remoteviews/MetadataParser;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/servicebox/pages/remoteviews/MetadataParser$1;->this$0:Lcom/android/systemui/servicebox/pages/remoteviews/MetadataParser;

    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onPackageAdded(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/servicebox/pages/remoteviews/MetadataParser$1;->this$0:Lcom/android/systemui/servicebox/pages/remoteviews/MetadataParser;

    invoke-virtual {v0, p1}, Lcom/android/systemui/servicebox/pages/remoteviews/MetadataParser;->onPackageUpdated(Ljava/lang/String;)V

    return-void
.end method

.method public onPackageChanged(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/servicebox/pages/remoteviews/MetadataParser$1;->this$0:Lcom/android/systemui/servicebox/pages/remoteviews/MetadataParser;

    invoke-virtual {v0, p1}, Lcom/android/systemui/servicebox/pages/remoteviews/MetadataParser;->onPackageUpdated(Ljava/lang/String;)V

    return-void
.end method

.method public onPackageRemoved(Ljava/lang/String;Z)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/servicebox/pages/remoteviews/MetadataParser$1;->this$0:Lcom/android/systemui/servicebox/pages/remoteviews/MetadataParser;

    invoke-virtual {v0, p1}, Lcom/android/systemui/servicebox/pages/remoteviews/MetadataParser;->onPackageRemoved(Ljava/lang/String;)V

    return-void
.end method
