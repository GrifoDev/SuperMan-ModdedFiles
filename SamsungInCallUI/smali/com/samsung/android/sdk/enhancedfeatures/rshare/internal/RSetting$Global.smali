.class public final Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/RSetting$Global;
.super Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/RSetting$NameValueTable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/RSetting;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Global"
.end annotation


# static fields
.field public static final CHUNK_SIZE:Ljava/lang/String; = "chunk_size"

.field public static final CONTENT_URI:Landroid/net/Uri;

.field public static final DOWNLOAD_FOLDER:Ljava/lang/String; = "setting_download_folder"

.field public static final FEATURE_DEBUG_MODE:Ljava/lang/String; = "feature_debug_mode"

.field public static final FEATURE_FIRST_CHUNK_ENABLED:Ljava/lang/String; = "feature_first_chunk_enabled"

.field public static final FEATURE_MULTI_DOWNLOAD:Ljava/lang/String; = "feature_multi_download"

.field public static final FEATURE_SETTING_PERMISSION_CHECK:Ljava/lang/String; = "feature_setting_permission_check"

.field public static final FEATURE_TDK_LOG_ENABLED:Ljava/lang/String; = "feature_tdk_log_enabled"

.field public static final MULTI_UPLOAD_SIZE:Ljava/lang/String; = "multi_upload_size"

.field public static final NOTI_LED:Ljava/lang/String; = "setting_rshare_noti_led"

.field public static final NOTI_SCREEN_NONE:I = 0x0

.field public static final NOTI_SCREEN_OFF:Ljava/lang/String; = "setting_file_noti_screen_off"

.field public static final NOTI_SCREEN_ON:Ljava/lang/String; = "setting_file_noti_screen_on"

.field public static final NOTI_SCREEN_POPUP:I = 0x2

.field public static final NOTI_SCREEN_POPUP_WITH_PREVIEW:I = 0x3

.field public static final NOTI_SCREEN_STATUS_BAR:I = 0x1

.field public static final NOTI_SOUND:Ljava/lang/String; = "setting_rshare_noti_sound"

.field public static final NOTI_SOUND_WHISTLE:Ljava/lang/String; = "Whistle"

.field public static final NOTI_TIMESTAMP:Ljava/lang/String; = "setting_noti_timestamp"

.field public static final NOTI_VIBRATE:Ljava/lang/String; = "setting_rshare_noti_vibrate"

.field public static final RSHARE_PROP_SETTING_VERSION:Ljava/lang/String; = "rshare.setting_global_version"

.field public static final SEND_VIA_MMS:Ljava/lang/String; = "setting_send_via_mms"

.field private static sNameValueCache:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/RSetting$NameValueCache;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const-string v0, "content://com.samsung.android.coreapps.rshare.setting/global"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/RSetting$Global;->CONTENT_URI:Landroid/net/Uri;

    new-instance v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/RSetting$NameValueCache;

    sget-object v1, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/RSetting$Global;->CONTENT_URI:Landroid/net/Uri;

    const-string v2, "GET_global"

    const-string v3, "PUT_global"

    invoke-direct {v0, v1, v2, v3}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/RSetting$NameValueCache;-><init>(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/RSetting$Global;->sNameValueCache:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/RSetting$NameValueCache;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/RSetting$NameValueTable;-><init>()V

    return-void
.end method

.method public static getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    .locals 1

    invoke-static {p0, p1}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/RSetting$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :try_start_0
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    return v0

    :catch_0
    move-exception v0

    new-instance v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/RSetting$SettingNotFoundException;

    invoke-direct {v0, p1}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/RSetting$SettingNotFoundException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I
    .locals 1

    invoke-static {p0, p1}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/RSetting$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result p2

    :cond_0
    :goto_0
    return p2

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static getLong(Landroid/content/ContentResolver;Ljava/lang/String;)J
    .locals 2

    invoke-static {p0, p1}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/RSetting$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :try_start_0
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v0

    return-wide v0

    :catch_0
    move-exception v0

    new-instance v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/RSetting$SettingNotFoundException;

    invoke-direct {v0, p1}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/RSetting$SettingNotFoundException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J
    .locals 2

    invoke-static {p0, p1}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/RSetting$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide p2

    :cond_0
    :goto_0
    return-wide p2

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static final getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/RSetting$Global;->sNameValueCache:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/RSetting$NameValueCache;

    invoke-static {v0, p0, p1}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/RSetting$NameValueCache;->access$000(Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/RSetting$NameValueCache;Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z
    .locals 1

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/RSetting$Global;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static putLong(Landroid/content/ContentResolver;Ljava/lang/String;J)Z
    .locals 2

    invoke-static {p2, p3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/RSetting$Global;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    sget-object v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/RSetting$Global;->sNameValueCache:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/RSetting$NameValueCache;

    invoke-virtual {v0, p0, p1, p2}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/RSetting$NameValueCache;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static registerSettingChangeListener(Landroid/content/ContentResolver;Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/RSetting$OnSettingChangeListener;)V
    .locals 3

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "No looper in this thread"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/RSetting$Global$1;

    invoke-direct {v0, p0, p1, v1}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/RSetting$Global$1;-><init>(Landroid/content/ContentResolver;Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/RSetting$OnSettingChangeListener;Landroid/os/Handler;)V

    sget-object v1, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/RSetting$Global;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x1

    invoke-virtual {p0, v1, v2, v0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    sget-object v1, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/RSetting$Global;->sNameValueCache:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/RSetting$NameValueCache;

    invoke-static {v1}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/RSetting$NameValueCache;->access$100(Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/RSetting$NameValueCache;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public static unregisterSettingChangeListener(Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/RSetting$OnSettingChangeListener;)V
    .locals 3

    sget-object v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/RSetting$Global;->sNameValueCache:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/RSetting$NameValueCache;

    invoke-static {v0}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/RSetting$NameValueCache;->access$100(Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/RSetting$NameValueCache;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/RSetting$SettingContentObserver;

    iget-object v1, v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/RSetting$SettingContentObserver;->mListener:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/RSetting$OnSettingChangeListener;

    if-eqz v1, :cond_0

    invoke-virtual {v1, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/RSetting$Global;->sNameValueCache:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/RSetting$NameValueCache;

    invoke-static {v1}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/RSetting$NameValueCache;->access$100(Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/RSetting$NameValueCache;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    iget-object v1, v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/RSetting$SettingContentObserver;->mCr:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ContentResolver;

    if-nez v1, :cond_2

    :cond_1
    :goto_0
    return-void

    :cond_2
    invoke-virtual {v1, v0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    goto :goto_0
.end method
