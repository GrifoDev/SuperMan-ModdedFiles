.class public final Landroid/content/om/OpenThemeConstants;
.super Ljava/lang/Object;
.source "OpenThemeConstants.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/content/om/OpenThemeConstants$1;
    }
.end annotation


# static fields
.field public static final ACTION_THEME_APPLY:Ljava/lang/String; = "com.samsung.android.theme.themecenter.THEME_APPLY"

.field public static final DATA_OVERLAY_DIR:Ljava/lang/String; = "/data/overlays"

.field public static final DEBUG_THEMES:Z = true

.field public static final IS_OVERLAY_THEMES_ENABLED:Z = true

.field public static final PATH_LOCAL_TEMP:Ljava/lang/String; = "/data/local/tmp"

.field public static final PATH_OVERLAY:Ljava/lang/String; = "/data/overlays"

.field public static final PATH_OVERLAY_CURRENT_STYLE:Ljava/lang/String; = "/data/overlays/currentstyle"

.field public static final PATH_THEME_PREFERENCES:Ljava/lang/String; = "/data/overlays/preferences/samsung.andorid.themes.component_preference.xml"

.field public static final PERMISSION_OVERLAY_COMPONENT:Ljava/lang/String; = "com.samsung.android.permission.SAMSUNG_OVERLAY_COMPONENT"

.field public static final PERMISSION_OVERLAY_LANGUAGE:Ljava/lang/String; = "com.samsung.android.permission.SAMSUNG_OVERLAY_LANGUAGE"

.field public static final PERMISSION_OVERLAY_THEME:Ljava/lang/String; = "com.samsung.android.permission.SAMSUNG_OVERLAY_THEME"

.field public static final PERMISSION_SAMSUNG_OVERLAY:Ljava/lang/String; = "com.samsung.android.permission.SAMSUNG_OVERLAY_"

.field public static final THEMECENTER_PACKAGE_NAME:Ljava/lang/String; = "com.samsung.android.themecenter"

.field public static final THEME_OVERLAY_DIR:Ljava/lang/String; = "/data/overlays/style"

.field public static final changeableApps:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static immortalApps:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static overlayTargetMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static protectedApps:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 9

    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    new-instance v0, Ljava/util/HashSet;

    const/16 v1, 0x36

    new-array v1, v1, [Ljava/lang/String;

    const-string/jumbo v2, "com.sec.android.app.desktoplauncher"

    aput-object v2, v1, v4

    const-string/jumbo v2, "com.sec.android.desktopmode.uiservice"

    aput-object v2, v1, v5

    const-string/jumbo v2, "com.sec.android.app.eventnotification"

    aput-object v2, v1, v6

    const-string/jumbo v2, "com.samsung.tmowfc.wfcpref"

    aput-object v2, v1, v7

    const-string/jumbo v2, "com.sec.android.app.launcher"

    aput-object v2, v1, v8

    const-string/jumbo v2, "com.sec.android.app.FlashBarService"

    const/4 v3, 0x5

    aput-object v2, v1, v3

    const-string/jumbo v2, "com.android.nfc"

    const/4 v3, 0x6

    aput-object v2, v1, v3

    const-string/jumbo v2, "com.samsung.felicalock"

    const/4 v3, 0x7

    aput-object v2, v1, v3

    const-string/jumbo v2, "com.samsung.app.highlightplayer"

    const/16 v3, 0x8

    aput-object v2, v1, v3

    const-string/jumbo v2, "com.android.apps.tag"

    const/16 v3, 0x9

    aput-object v2, v1, v3

    const-string/jumbo v2, "com.samsung.app.newtrim"

    const/16 v3, 0xa

    aput-object v2, v1, v3

    const-string/jumbo v2, "com.adnroid.dreams.phototable"

    const/16 v3, 0xb

    aput-object v2, v1, v3

    const-string/jumbo v2, "com.policydm"

    const/16 v3, 0xc

    aput-object v2, v1, v3

    const-string/jumbo v2, "com.samsung.android.securitylogagent"

    const/16 v3, 0xd

    aput-object v2, v1, v3

    const-string/jumbo v2, "com.sec.android.app.SecSetupWizard"

    const/16 v3, 0xe

    aput-object v2, v1, v3

    const-string/jumbo v2, "com.samsung.safetyinformation"

    const/16 v3, 0xf

    aput-object v2, v1, v3

    const-string/jumbo v2, "com.sec.app.samsungprinterservice"

    const/16 v3, 0x10

    aput-object v2, v1, v3

    const-string/jumbo v2, "com.samsung.spg"

    const/16 v3, 0x11

    aput-object v2, v1, v3

    const-string/jumbo v2, "com.sec.android.app.capabilitymanager"

    const/16 v3, 0x12

    aput-object v2, v1, v3

    const-string/jumbo v2, "com.sec.android.app.wallpaperchooser"

    const/16 v3, 0x13

    aput-object v2, v1, v3

    const-string/jumbo v2, "com.bst.airmessage"

    const/16 v3, 0x14

    aput-object v2, v1, v3

    const-string/jumbo v2, "com.sec.android.app.simsettingmgr"

    const/16 v3, 0x15

    aput-object v2, v1, v3

    const-string/jumbo v2, "com.sec.android.app.simcardmanagement"

    const/16 v3, 0x16

    aput-object v2, v1, v3

    const-string/jumbo v2, "com.sec.android.widgetapp.dualsimwidget"

    const/16 v3, 0x17

    aput-object v2, v1, v3

    const-string/jumbo v2, "com.sec.android.app.irsettings"

    const/16 v3, 0x18

    aput-object v2, v1, v3

    const-string/jumbo v2, "com.samsung.android.app.shareaccessibilitysettings"

    const/16 v3, 0x19

    aput-object v2, v1, v3

    const-string/jumbo v2, "com.google.android.marvin.talkback"

    const/16 v3, 0x1a

    aput-object v2, v1, v3

    const-string/jumbo v2, "com.samsung.android.SettingsReceiver"

    const/16 v3, 0x1b

    aput-object v2, v1, v3

    const-string/jumbo v2, "com.sec.android.app.popupuireceiver"

    const/16 v3, 0x1c

    aput-object v2, v1, v3

    const-string/jumbo v2, "com.sec.android.wallpapercropper2"

    const/16 v3, 0x1d

    aput-object v2, v1, v3

    const-string/jumbo v2, "com.samsung.android.MtpApplication"

    const/16 v3, 0x1e

    aput-object v2, v1, v3

    const-string/jumbo v2, "com.sec.android.app.soundalive"

    const/16 v3, 0x1f

    aput-object v2, v1, v3

    const-string/jumbo v2, "com.samsung.android.game.gametools"

    const/16 v3, 0x20

    aput-object v2, v1, v3

    const-string/jumbo v2, "com.samsung.android.app.galaxylabs"

    const/16 v3, 0x21

    aput-object v2, v1, v3

    const-string/jumbo v2, "com.sec.android.mimage.photoretouching"

    const/16 v3, 0x22

    aput-object v2, v1, v3

    const-string/jumbo v2, "com.sec.android.mimage.gear360editor"

    const/16 v3, 0x23

    aput-object v2, v1, v3

    const-string/jumbo v2, "com.android.providers.media"

    const/16 v3, 0x24

    aput-object v2, v1, v3

    const-string/jumbo v2, "com.samsung.android.slinkcloud"

    const/16 v3, 0x25

    aput-object v2, v1, v3

    const-string/jumbo v2, "com.sec.android.emergencylauncher"

    const/16 v3, 0x26

    aput-object v2, v1, v3

    const-string/jumbo v2, "com.samsung.android.app.dofviewer"

    const/16 v3, 0x27

    aput-object v2, v1, v3

    const-string/jumbo v2, "com.samsung.hongbaoassistant"

    const/16 v3, 0x28

    aput-object v2, v1, v3

    const-string/jumbo v2, "com.sec.android.app.firewall"

    const/16 v3, 0x29

    aput-object v2, v1, v3

    const-string/jumbo v2, "com.bst.spamcall"

    const/16 v3, 0x2a

    aput-object v2, v1, v3

    const-string/jumbo v2, "com.sec.app.screenrecorder"

    const/16 v3, 0x2b

    aput-object v2, v1, v3

    const-string/jumbo v2, "com.sec.android.app.wfdbroker"

    const/16 v3, 0x2c

    aput-object v2, v1, v3

    const-string/jumbo v2, "com.samsung.android.smartmirroring"

    const/16 v3, 0x2d

    aput-object v2, v1, v3

    const-string/jumbo v2, "com.samsung.android.mateagent"

    const/16 v3, 0x2e

    aput-object v2, v1, v3

    const-string/jumbo v2, "com.android.bluetooth"

    const/16 v3, 0x2f

    aput-object v2, v1, v3

    const-string/jumbo v2, "com.samsung.networkui"

    const/16 v3, 0x30

    aput-object v2, v1, v3

    const-string/jumbo v2, "com.samsung.theme"

    const/16 v3, 0x31

    aput-object v2, v1, v3

    const-string/jumbo v2, "com.samsung.winset"

    const/16 v3, 0x32

    aput-object v2, v1, v3

    const-string/jumbo v2, "com.samsung.advancedcalling"

    const/16 v3, 0x33

    aput-object v2, v1, v3

    const-string/jumbo v2, "com.android.certinstaller"

    const/16 v3, 0x34

    aput-object v2, v1, v3

    const-string/jumbo v2, "com.android.keychain"

    const/16 v3, 0x35

    aput-object v2, v1, v3

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    sput-object v0, Landroid/content/om/OpenThemeConstants;->changeableApps:Ljava/util/HashSet;

    new-instance v0, Landroid/content/om/OpenThemeConstants$1;

    invoke-direct {v0}, Landroid/content/om/OpenThemeConstants$1;-><init>()V

    sput-object v0, Landroid/content/om/OpenThemeConstants;->overlayTargetMap:Ljava/util/HashMap;

    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0x11

    new-array v1, v1, [Ljava/lang/String;

    const-string/jumbo v2, "com.android.systemui"

    aput-object v2, v1, v4

    const-string/jumbo v2, "com.samsung.android.themecenter"

    aput-object v2, v1, v5

    const-string/jumbo v2, "com.android.nfc"

    aput-object v2, v1, v6

    const-string/jumbo v2, "com.samsung.android.universalswitch"

    aput-object v2, v1, v7

    const-string/jumbo v2, "com.android.providers.media"

    aput-object v2, v1, v8

    const-string/jumbo v2, "com.android.incallui"

    const/4 v3, 0x5

    aput-object v2, v1, v3

    const-string/jumbo v2, "com.android.phone"

    const/4 v3, 0x6

    aput-object v2, v1, v3

    const-string/jumbo v2, "com.samsung.android.app.aodservice"

    const/4 v3, 0x7

    aput-object v2, v1, v3

    const-string/jumbo v2, "com.sec.android.app.launcher"

    const/16 v3, 0x8

    aput-object v2, v1, v3

    const-string/jumbo v2, "com.sec.android.app.safetyassurance"

    const/16 v3, 0x9

    aput-object v2, v1, v3

    const-string/jumbo v2, "com.samsung.android.incallui"

    const/16 v3, 0xa

    aput-object v2, v1, v3

    const-string/jumbo v2, "com.samsung.android.scloud"

    const/16 v3, 0xb

    aput-object v2, v1, v3

    const-string/jumbo v2, "com.sec.android.app.wfdbroker"

    const/16 v3, 0xc

    aput-object v2, v1, v3

    const-string/jumbo v2, "com.samsung.android.smartmirroring"

    const/16 v3, 0xd

    aput-object v2, v1, v3

    const-string/jumbo v2, "com.android.bluetooth"

    const/16 v3, 0xe

    aput-object v2, v1, v3

    const-string/jumbo v2, "com.samsung.android.mateagent"

    const/16 v3, 0xf

    aput-object v2, v1, v3

    const-string/jumbo v2, "com.samsung.android.messaging"

    const/16 v3, 0x10

    aput-object v2, v1, v3

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    sput-object v0, Landroid/content/om/OpenThemeConstants;->immortalApps:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    new-array v1, v5, [Ljava/lang/String;

    const-string/jumbo v2, "com.samsung.android.themecenter"

    aput-object v2, v1, v4

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    sput-object v0, Landroid/content/om/OpenThemeConstants;->protectedApps:Ljava/util/ArrayList;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
