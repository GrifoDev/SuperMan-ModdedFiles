.class public Lcom/android/systemui/statusbar/phone/taskbar/utils/DesktopModeSettingsUtil;
.super Ljava/lang/Object;
.source "DesktopModeSettingsUtil.java"


# static fields
.field public static final CONTENT_URI:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string/jumbo v0, "content://com.sec.android.desktopmode.uiservice.SettingsProvider/settings"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/statusbar/phone/taskbar/utils/DesktopModeSettingsUtil;->CONTENT_URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getSettings(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    new-instance v1, Landroid/os/Bundle;

    const/4 v3, 0x2

    invoke-direct {v1, v3}, Landroid/os/Bundle;-><init>(I)V

    const-string/jumbo v3, "key"

    invoke-virtual {v1, v3, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v3, "def"

    invoke-virtual {v1, v3, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    sget-object v3, Lcom/android/systemui/statusbar/phone/taskbar/utils/DesktopModeSettingsUtil;->CONTENT_URI:Landroid/net/Uri;

    const-string/jumbo v4, "getSettings"

    const/4 v5, 0x0

    invoke-virtual {p0, v3, v4, v5, v1}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v2, p1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    return-object v3

    :catch_0
    move-exception v0

    const-string/jumbo v3, "[DS] DesktopModeSettingsUtil"

    const-string/jumbo v4, "Failed to get settings"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    return-object p2
.end method
