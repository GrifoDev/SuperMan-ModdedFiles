.class Lcom/samsung/android/settings/nearby/NearbyEnabler$HandleShareContentType;
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
    name = "HandleShareContentType"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/nearby/NearbyEnabler;


# direct methods
.method private constructor <init>(Lcom/samsung/android/settings/nearby/NearbyEnabler;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/nearby/NearbyEnabler$HandleShareContentType;->this$0:Lcom/samsung/android/settings/nearby/NearbyEnabler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/android/settings/nearby/NearbyEnabler;Lcom/samsung/android/settings/nearby/NearbyEnabler$HandleShareContentType;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/nearby/NearbyEnabler$HandleShareContentType;-><init>(Lcom/samsung/android/settings/nearby/NearbyEnabler;)V

    return-void
.end method


# virtual methods
.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 11

    const/4 v10, 0x0

    invoke-static {}, Lcom/samsung/android/settings/nearby/NearbyEnabler;->-get3()Lcom/samsung/android/settings/nearby/IMediaServer;

    move-result-object v6

    if-eqz v6, :cond_0

    if-nez p2, :cond_1

    :cond_0
    return v10

    :cond_1
    instance-of v6, p2, Ljava/util/HashSet;

    if-eqz v6, :cond_0

    :try_start_0
    invoke-static {}, Lcom/samsung/android/settings/nearby/NearbyEnabler;->-get3()Lcom/samsung/android/settings/nearby/IMediaServer;

    move-result-object v6

    invoke-interface {v6}, Lcom/samsung/android/settings/nearby/IMediaServer;->getSharedMediaType()I

    move-result v3

    move-object v0, p2

    check-cast v0, Ljava/util/HashSet;

    move-object v5, v0

    const-string/jumbo v6, "0"

    invoke-virtual {v5, v6}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    const v6, 0xff00

    or-int/2addr v3, v6

    :goto_0
    const-string/jumbo v6, "1"

    invoke-virtual {v5, v6}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    const/high16 v6, 0xff0000

    or-int/2addr v3, v6

    :goto_1
    const-string/jumbo v6, "2"

    invoke-virtual {v5, v6}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    or-int/lit16 v3, v3, 0xff

    :goto_2
    invoke-static {}, Lcom/samsung/android/settings/nearby/NearbyEnabler;->-get3()Lcom/samsung/android/settings/nearby/IMediaServer;

    move-result-object v6

    invoke-interface {v6, v3}, Lcom/samsung/android/settings/nearby/IMediaServer;->setSharedMediaType(I)V

    const-string/jumbo v6, "NearbyEnabler"

    const-string/jumbo v7, "HandleShareContentType"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Photos/Videos/Music: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v7, v8}, Lcom/samsung/android/settings/nearby/DLog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v6, p0, Lcom/samsung/android/settings/nearby/NearbyEnabler$HandleShareContentType;->this$0:Lcom/samsung/android/settings/nearby/NearbyEnabler;

    invoke-static {v6}, Lcom/samsung/android/settings/nearby/NearbyEnabler;->-get2(Lcom/samsung/android/settings/nearby/NearbyEnabler;)Landroid/content/Context;

    move-result-object v6

    const-string/jumbo v7, "pref_allshare"

    const/4 v8, 0x4

    invoke-virtual {v6, v7, v8}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v4

    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string/jumbo v6, "TEMP_NEW"

    invoke-interface {v2, v6, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v6, 0x1

    return v6

    :cond_2
    const v6, -0xff01

    and-int/2addr v3, v6

    goto :goto_0

    :cond_3
    const v6, -0xff0001

    and-int/2addr v3, v6

    goto :goto_1

    :cond_4
    and-int/lit16 v3, v3, -0x100

    goto :goto_2

    :catch_0
    move-exception v1

    const-string/jumbo v6, "NearbyEnabler"

    const-string/jumbo v7, "HandleShareContentType"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Exception: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v7, v8}, Lcom/samsung/android/settings/nearby/DLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return v10
.end method
