.class Lcom/samsung/android/settings/nearby/NearbyEnabler$HandleServerName;
.super Ljava/lang/Object;
.source "NearbyEnabler.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/nearby/NearbyEnabler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "HandleServerName"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/nearby/NearbyEnabler;


# direct methods
.method private constructor <init>(Lcom/samsung/android/settings/nearby/NearbyEnabler;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/nearby/NearbyEnabler$HandleServerName;->this$0:Lcom/samsung/android/settings/nearby/NearbyEnabler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/android/settings/nearby/NearbyEnabler;Lcom/samsung/android/settings/nearby/NearbyEnabler$HandleServerName;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/nearby/NearbyEnabler$HandleServerName;-><init>(Lcom/samsung/android/settings/nearby/NearbyEnabler;)V

    return-void
.end method


# virtual methods
.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 7

    const/4 v6, 0x0

    invoke-static {}, Lcom/samsung/android/settings/nearby/NearbyEnabler;->-get3()Lcom/samsung/android/settings/nearby/IMediaServer;

    move-result-object v2

    if-eqz v2, :cond_0

    if-nez p2, :cond_1

    :cond_0
    return v6

    :cond_1
    instance-of v2, p2, Ljava/lang/String;

    if-eqz v2, :cond_0

    :try_start_0
    iget-object v2, p0, Lcom/samsung/android/settings/nearby/NearbyEnabler$HandleServerName;->this$0:Lcom/samsung/android/settings/nearby/NearbyEnabler;

    check-cast p2, Ljava/lang/String;

    invoke-static {v2, p2}, Lcom/samsung/android/settings/nearby/NearbyEnabler;->-wrap0(Lcom/samsung/android/settings/nearby/NearbyEnabler;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/samsung/android/settings/nearby/NearbyEnabler;->-get3()Lcom/samsung/android/settings/nearby/IMediaServer;

    move-result-object v2

    invoke-interface {v2, v0}, Lcom/samsung/android/settings/nearby/IMediaServer;->setMediaServerName(Ljava/lang/String;)Ljava/lang/String;

    const-string/jumbo v2, "*#@&*#"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    const-string/jumbo v2, "NearbyEnabler"

    const-string/jumbo v3, "HandleServerName"

    const-string/jumbo v4, "ACCESS_CONTROL: allow all"

    invoke-static {v2, v3, v4}, Lcom/samsung/android/settings/nearby/DLog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/samsung/android/settings/nearby/NearbyEnabler;->-get3()Lcom/samsung/android/settings/nearby/IMediaServer;

    move-result-object v2

    const-string/jumbo v3, "0"

    invoke-interface {v2, v3}, Lcom/samsung/android/settings/nearby/IMediaServer;->setContentAccessAllowed(Ljava/lang/String;)V

    :goto_0
    const/4 v2, 0x1

    return v2

    :cond_2
    const-string/jumbo v2, "NearbyEnabler"

    const-string/jumbo v3, "HandleServerName"

    const-string/jumbo v4, "ACCESS_CONTROL: only allowed device"

    invoke-static {v2, v3, v4}, Lcom/samsung/android/settings/nearby/DLog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/samsung/android/settings/nearby/NearbyEnabler;->-get3()Lcom/samsung/android/settings/nearby/IMediaServer;

    move-result-object v2

    const-string/jumbo v3, "1"

    invoke-interface {v2, v3}, Lcom/samsung/android/settings/nearby/IMediaServer;->setContentAccessAllowed(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    const-string/jumbo v2, "NearbyEnabler"

    const-string/jumbo v3, "HandleServerName"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Exception: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/samsung/android/settings/nearby/DLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return v6
.end method
