.class Landroid/net/util/MultinetworkPolicyTracker$SettingObserver;
.super Landroid/database/ContentObserver;
.source "MultinetworkPolicyTracker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/util/MultinetworkPolicyTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SettingObserver"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/net/util/MultinetworkPolicyTracker;


# direct methods
.method public constructor <init>(Landroid/net/util/MultinetworkPolicyTracker;)V
    .locals 1

    iput-object p1, p0, Landroid/net/util/MultinetworkPolicyTracker$SettingObserver;->this$0:Landroid/net/util/MultinetworkPolicyTracker;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 2

    invoke-static {}, Landroid/net/util/MultinetworkPolicyTracker;->-get0()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "Should never be reached."

    invoke-static {v0, v1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onChange(ZLandroid/net/Uri;)V
    .locals 3

    iget-object v0, p0, Landroid/net/util/MultinetworkPolicyTracker$SettingObserver;->this$0:Landroid/net/util/MultinetworkPolicyTracker;

    invoke-static {v0}, Landroid/net/util/MultinetworkPolicyTracker;->-get1(Landroid/net/util/MultinetworkPolicyTracker;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Landroid/net/util/MultinetworkPolicyTracker;->-get0()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Unexpected settings observation: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Landroid/net/util/MultinetworkPolicyTracker$SettingObserver;->this$0:Landroid/net/util/MultinetworkPolicyTracker;

    invoke-virtual {v0}, Landroid/net/util/MultinetworkPolicyTracker;->reevaluate()V

    return-void
.end method
